`include "uvm_macros.svh"
import uvm_pkg::*;
// monitorizeaza iesirile de la dut si le duce in scoreboard 
// mai bine pus pe stimulii catre dut


covergroup cg_transactions(ref logic [5:0] a, ref logic [15:0] d, ref logic we, ref logic qspo_ce, ref logic qspo_rst, ref logic qspo_srst);
    coverpoint a {
        bins all_addresses = {[0:63]}; // Adrese accesate
    }
    coverpoint d {
        bins all_data = {[16'h0:16'hFFFF]}; // Datele scrise
    }
    coverpoint we {
        bins write_enable = {0, 1}; // Scriere activă/inactivă
    }
    coverpoint qspo_ce {
        bins sync_read_enable = {0, 1}; // Citire sincron activă/inactivă
    }
    coverpoint qspo_rst {
        bins async_reset = {0, 1}; // Reset asincron activ/inactiv
    }
    coverpoint qspo_srst {
        bins sync_reset = {0, 1}; // Reset sincron activ/inactiv
    }
    cross we, a; // Cross pentru scriere și adresă
endgroup




class dist_mem_gen_monitor extends uvm_monitor;

    `uvm_component_utils(dist_mem_gen_monitor)
    
    //trebuie sa trimita tranzactiile observate catre scoreboard prin uvm_analysis_port
    uvm_analysis_port #(dist_mem_gen_seq_items1) monitor_analysis_port;
    
    
    // Instanță a covergroup-ului
    cg_transactions my_cg;
    // Interfața pentru DUT - A virtual interface handle to the actual interface that this monitor is trying to monitor
    virtual dist_mem_gen_intf1 mem_intf;
        
    
    // Constructor
    function new(input string name = "", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new
    
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        monitor_analysis_port = new("monitor_analysis_port", this);
        
        
        
        // Inițializare instanță covergroup
        my_cg = new(mem_intf.a, mem_intf.d, mem_intf.we, mem_intf.qspo_ce, mem_intf.qspo_rst, mem_intf.qspo_srst);
    endfunction
    
    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        
        uvm_config_db#(virtual dist_mem_gen_intf1)::get(this, "", "dist_mem_gen_intf1", mem_intf);
        
    endfunction

    // Faza de rulare (capturarea tranzacțiilor)
    virtual task run_phase(uvm_phase phase);
       
        fork
            monitor_write();
            monitor_resets();
            monitor_sync_read();
            monitor_async_read();
        join
    endtask : run_phase

    // Monitorizează operațiile de scriere
    task monitor_write();
        forever begin
            dist_mem_gen_seq_items1 observed_item;
            
            repeat(1)@(posedge mem_intf.clk);
            if (mem_intf.we == 1) begin
                observed_item = dist_mem_gen_seq_items1::type_id::create("observed_item_write");
                observed_item.we = mem_intf.we;
                observed_item.d = mem_intf.d;
                observed_item.a = mem_intf.a;

                `uvm_info("dist_mem_gen_monitor", $sformatf("Write operation observed: Address=%0h, Data=%0h", observed_item.a, observed_item.d), UVM_NONE);
            
            
                // Capturăm datele în covergroup
                my_cg.sample();
            
            
            
                // trimit tranzactiile catre scoreboard
                monitor_analysis_port.write(observed_item);
            end
        end
    endtask : monitor_write

    // Monitorizează operațiile de citire sincronă (QSPO)
    task monitor_sync_read();
        forever begin
            dist_mem_gen_seq_items1 observed_item;
            
            @(posedge mem_intf.clk);
            if (mem_intf.qspo_ce) begin
                #5
                observed_item = dist_mem_gen_seq_items1::type_id::create("observed_item_sync_read");
                observed_item.qspo_ce = mem_intf.qspo_ce;
                observed_item.a = mem_intf.a;
                observed_item.qspo = mem_intf.qspo;

                `uvm_info("dist_mem_gen_monitor", $sformatf("Synchronous read operation observed: Address=%0h, Data=%0h", observed_item.a, observed_item.qspo), UVM_NONE);
                
                my_cg.sample();
                
                monitor_analysis_port.write(observed_item);
            end
        end
    endtask : monitor_sync_read

    // Monitorizează operațiile de citire asincronă (SPO)
    task monitor_async_read();
        dist_mem_gen_seq_items1 observed_item;
        
        forever begin
            @(mem_intf.a or mem_intf.spo); // Se declanșează la schimbarea adresei sau spo de la intf
            
           
            observed_item = dist_mem_gen_seq_items1::type_id::create("observed_item_async_read");
            observed_item.a = mem_intf.a;
            observed_item.spo = mem_intf.spo;

            `uvm_info("dist_mem_gen_monitor", $sformatf("Asynchronous read operation observed: Address=%0h, Data=%0h", observed_item.a, observed_item.spo), UVM_NONE);
            
            my_cg.sample();
            
            monitor_analysis_port.write(observed_item);
        end
    endtask : monitor_async_read

    // Monitorizează reseturile
    task monitor_resets();
        dist_mem_gen_seq_items1 observed_item;
        
        forever begin
            @(posedge mem_intf.qspo_rst or posedge mem_intf.qspo_srst);
            observed_item = dist_mem_gen_seq_items1::type_id::create("observed_item_reset");
            if (mem_intf.qspo_rst == 1) begin
                `uvm_info("dist_mem_gen_monitor", "Asynchronous reset observed.", UVM_NONE);
            end
            if (mem_intf.qspo_srst == 1) begin
                @(posedge mem_intf.clk);
                `uvm_info("dist_mem_gen_monitor", "Synchronous reset observed.", UVM_NONE);
            end
        
            my_cg.sample();
        
            monitor_analysis_port.write(observed_item);
        end
    endtask : monitor_resets
    
    
    
    
    virtual function void report_phase(uvm_phase phase); // extind report_phase
    // adaugata pentru coverage
        super.report_phase(phase);
    
        // Afișarea rezultatelor colectării de acoperire
        $display("Coverage Results in Monitor:");
//        my_cg.display();
        `uvm_info("COVERAGE_INFO", $sformatf("Coverage on my_cg=%d", my_cg.get_inst_coverage()), UVM_NONE)
    endfunction : report_phase


endclass : dist_mem_gen_monitor
