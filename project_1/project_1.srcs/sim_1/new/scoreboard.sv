`include "uvm_macros.svh"
import uvm_pkg::*;
//aici trebuie sa fac coverage ul?

`uvm_analysis_imp_decl(_monitor)

class scoreboard extends uvm_scoreboard;

    `uvm_component_utils(scoreboard)

    // Variabile
    virtual dist_mem_gen_intf1 mem_intf;
    logic [15:0] registerBank [0:63];  // 64 registre, fiecare de 16 biți

    // Monitor pentru analiză
    uvm_analysis_imp_monitor#(dist_mem_gen_seq_items1, scoreboard) monitor_analysis_port;
    // trimite tranzactiile dist_mem_gen_seq_items1 catre scoreboard

    function new(input string name = "", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new
    
    virtual function void build_phase(uvm_phase phase);
        monitor_analysis_port = new("monitor_analysis_port", this);
        
        uvm_config_db#(virtual dist_mem_gen_intf1)::get(null, "", "dist_mem_gen_intf1", mem_intf);
    
        for (int i = 0; i < 64; i++) begin
            registerBank[i] = 0;  // Setează valoarea implicită la 0
        end
    
    endfunction

    // este automat apelata de monitor prin mecanismul de analysis ports
    // numele este default
    virtual function void write_monitor(dist_mem_gen_seq_items1 monitor_item);
    // primeste tranzactiile trimise de monitor:
    // monitor_analysis_port.write(observed_item);
 
        // Scriere
        if (monitor_item.we == 1) begin
            // Validează adresa
            assert(monitor_item.a >= 0 && monitor_item.a < 64) 
                else `uvm_error("scoreboard", $sformatf("Invalid write address: %0h", monitor_item.a));
    
            // Validează datele
            assert(monitor_item.d >= 0 && monitor_item.d <= 16'hFFFF) 
                else `uvm_error("scoreboard", $sformatf("Invalid write data: %0h", monitor_item.d));
        
            registerBank[monitor_item.a] = monitor_item.d; // Actualizează
            `uvm_info("scoreboard", $sformatf("Write detected: addr=%0h, data=%0h", monitor_item.a, monitor_item.d), UVM_NONE);
        end 
       
    endfunction : write_monitor

    task verifySyncRead();
        int expected_data;
    
        forever begin
            // Așteaptă frontul pozitiv al ceasului
            @(posedge mem_intf.clk);
            
            // Verifică dacă semnalul qspo_ce este activ
            if (mem_intf.qspo_ce == 1) begin
                // Verifică dacă există o scriere activă
                if (mem_intf.we == 1) begin
                    `uvm_info("scoreboard", $sformatf("Sync read ignored: write in progress at addr=%0h", mem_intf.a), UVM_LOW);
                    continue; // Așteaptă scrierea completă
                end
                
                // Așteaptă propagarea datelor pe ieșirea qspo (un ciclu de ceas complet)
                @(posedge mem_intf.clk);
                
                // Verifică valoarea actuală din registerBank
                expected_data = registerBank[mem_intf.a];
               
                // Compară valoarea așteptată cu cea observată
                if (mem_intf.qspo !== expected_data) begin
                    // Dacă locația nu a fost scrisă, valoarea ar trebui să fie implicită (0)
                    if (expected_data === 0) begin
                        `uvm_error("scoreboard", $sformatf("Sync Read Mismatch: addr=%0h not written yet, expected=0, got=%0h", 
                            mem_intf.a, mem_intf.qspo));
                    end else begin
                        `uvm_error("scoreboard", $sformatf("Sync Read Mismatch: addr=%0h, expected=%0h, got=%0h", 
                            mem_intf.a, expected_data, mem_intf.qspo));
                    end
                end 
                else begin
                    if (expected_data === 0) begin
                        `uvm_info("scoreboard", $sformatf("Sync Read Match: addr=%0h not written yet, value=0", 
                            mem_intf.a), UVM_LOW);
                    end else begin
                        `uvm_info("scoreboard", $sformatf("Sync Read Match: addr=%0h, value=%0h", 
                            mem_intf.a, expected_data), UVM_NONE);
                    end
                end
            end 
            
        end
    endtask : verifySyncRead



    
    task verifyAsyncRead();
        int expected_data;
        
        forever begin
            @(mem_intf.a or mem_intf.spo); // Așteaptă schimbarea pe adresă sau spo
    
            // Verifică dacă există o scriere activă
            if (mem_intf.we == 1) begin
                `uvm_info("scoreboard", $sformatf("Async read ignored: write in progress at addr=%0h", mem_intf.a), UVM_LOW);
                continue; // Așteaptă scrierea completă
            end
    
            // Verifică valoarea actuală din registerBank
            expected_data = registerBank[mem_intf.a];
    
            // Compară valoarea așteptată cu cea observată
            if (mem_intf.spo !== expected_data) begin
                // Dacă locația nu a fost scrisă, valoarea ar trebui să fie implicită (0)
                if (expected_data === 0) begin
                    `uvm_error("scoreboard", $sformatf("Async Read Mismatch: addr=%0h not written yet, expected=0, got=%0h", 
                        mem_intf.a, mem_intf.spo));
                end else begin
                    `uvm_error("scoreboard", $sformatf("Async Read Mismatch: addr=%0h, expected=%0h, got=%0h", 
                        mem_intf.a, expected_data, mem_intf.spo));
                end
            end 
            else begin
                if (expected_data === 0) begin
                    `uvm_info("scoreboard", $sformatf("Async Read Match: addr=%0h not written yet, value=0", 
                        mem_intf.a), UVM_LOW);
                end else begin
                    `uvm_info("scoreboard", $sformatf("Async Read Match: addr=%0h, value=%0h", 
                        mem_intf.a, expected_data), UVM_NONE);
                end
            end
        
        end
    endtask : verifyAsyncRead






    task verifyResets();
        forever begin
        
            // Monitorizare reseturi
            @(posedge mem_intf.qspo_rst or posedge mem_intf.qspo_srst);
            
            // Verificare pentru reset asincron
            if (mem_intf.qspo_rst == 1) begin
                #1; // Așteptăm un delay minim pentru propagare și stabilitate
                if (mem_intf.qspo != 0) begin
                    `uvm_error("scoreboard", $sformatf("Asynchronous reset failed: QSPO=%0h (expected 0)", mem_intf.qspo));
                end 
                else begin
                    `uvm_info("scoreboard", "Asynchronous reset applied successfully. QSPO=0", UVM_NONE);
                end
            end
    
            // Verificare pentru reset sincron
            if (mem_intf.qspo_srst == 1) begin
                @(posedge mem_intf.clk); // Așteaptă primul posedge al clock-ului
                #1
                if (mem_intf.qspo != 0) begin
                    `uvm_error("scoreboard", $sformatf("Synchronous reset failed: QSPO=%0h (expected 0)", mem_intf.qspo));
                end else begin
                    `uvm_info("scoreboard", "Synchronous reset applied successfully. QSPO=0", UVM_NONE);
                end
            end 

        end
    endtask : verifyResets


    
    virtual task run_phase(uvm_phase phase);
        phase.raise_objection(this);
        
        fork
            verifyResets();     // Monitorizează reseturile
            verifySyncRead();   // Validează citirile sincronizate
            verifyAsyncRead();  // Validează citirile asincronizate
        join
        
        phase.drop_objection(this);
    endtask

endclass : scoreboard
