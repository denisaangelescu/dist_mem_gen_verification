`include "uvm_macros.svh"
// va genera/trimite stimuli (tranzactii abstracte) prin interfata la intrarile dut 

import uvm_pkg::*;

class dist_mem_gen_driver extends uvm_driver#(dist_mem_gen_seq_items1);
// # specifica tipul tranzactiilor procesate de driver
    
    `uvm_component_utils(dist_mem_gen_driver)
    
    function new(input string name = "", uvm_component parent = null);
        super.new(name,parent);
    endfunction : new
    
    virtual task run_phase(uvm_phase phase);
        dist_mem_gen_seq_items1 dist_mem_gen_item;
        // declarata aici si nu global pentru ca este vorba de o tranzactie noua mereu
        
        // punte catre interfata fizica din testbench
        virtual dist_mem_gen_intf1 mem_intf;
        uvm_config_db#(virtual dist_mem_gen_intf1)::get(null, "", "dist_mem_gen_intf1", mem_intf);
        
        forever begin // driver activ pe tot parcursul simularii 
            seq_item_port.get_next_item(dist_mem_gen_item); 
            // asteapta sa primeasca urmatoarea tranzactie de la secventa prin seq_item_port 
            // seq_item_port = conexiune secventa si driver
            // stocheaza tranzactia in dist_mem_gen_item
            
            `uvm_info("dist_mem_gen_driver", $sformatf("Received new item: %s", dist_mem_gen_item.convert2string()), UVM_NONE)
            // converteste tranzactia intr-un sir lizibil
            
            
            
            
            // Actualizează semnalele interfeței 
            // de sters actualizarile de mai jos - sunt redundante
            mem_intf.we = dist_mem_gen_item.we;
            mem_intf.qspo_ce = dist_mem_gen_item.qspo_ce;
            mem_intf.qspo_rst = dist_mem_gen_item.qspo_rst;
            mem_intf.qspo_srst = dist_mem_gen_item.qspo_srst;
            mem_intf.a = dist_mem_gen_item.a;
            mem_intf.d = dist_mem_gen_item.d;


            
            // ------- Scriere -------
            if (dist_mem_gen_item.we == 1) begin
                // Sincronizare pe posedge
                @(posedge mem_intf.clk);
                    `uvm_info("dist_mem_gen_driver", "CLK edge detected in driver.", UVM_NONE);
                    
                // Setează datele și adresa
                mem_intf.d = dist_mem_gen_item.d;
                mem_intf.a = dist_mem_gen_item.a;
    
                // Activează semnalul de scriere
                mem_intf.we = 1;
                
                // Se presupune ca intai fac si eu o scriere si pun astea la 0 ca sa nu apara cu x
                // sa le sterg cand fac cu random si coverage
                mem_intf.qspo_ce = 0;
                mem_intf.qspo_rst = 0;
                mem_intf.qspo_srst = 0;
    
                // Dezactivare după un ciclu de clock
                @(posedge mem_intf.clk);
                mem_intf.we = 0;
                // mem_intf.d = 16'd0;
    
                `uvm_info("dist_mem_gen_driver", "Write operation completed successfully.", UVM_NONE);
            end
            // Reset sincron - indiferent de qspo_ce
            else if (dist_mem_gen_item.qspo_srst == 1) begin
                @(posedge mem_intf.clk);
                mem_intf.qspo_srst = 1;
            
                // Așteaptă sincronizarea resetării
                @(posedge mem_intf.clk);
                mem_intf.qspo_srst = 0;
            
                `uvm_info("dist_mem_gen_driver", "Synchronous reset applied to QSPO.", UVM_NONE);
            end
            // Reset asincron - indiferent de qspo_ce
            else if (dist_mem_gen_item.qspo_rst == 1) begin
                mem_intf.qspo_rst = 1;
            
                // Resetul asincron este imediat
                #1; // Așteaptă un delay minim pentru a permite propagarea semnalului
                mem_intf.qspo_rst = 0;
            
                `uvm_info("dist_mem_gen_driver", "Asynchronous reset applied to QSPO.", UVM_NONE);
            end

            // Citire sincronizată (QSPO)
            else if (dist_mem_gen_item.qspo_ce == 1) begin
                @(posedge mem_intf.clk);
    
                // Setează adresa pentru citire 
                // driver ul transfera adresa de citire de la tranzactie catre DUT prin interfata
                mem_intf.a = dist_mem_gen_item.a;
                mem_intf.qspo_ce = 1;
    
                // Așteaptă un ciclu de clock pentru a primi datele
                @(posedge mem_intf.clk);
                // dupa ce citirea este finalizata, valoarea sincronizata
                // de la iesirea qspo a DUT este copiata in tranzactia curenta
                dist_mem_gen_item.qspo = mem_intf.qspo;
    
                // Dezactivează semnalul CE
                mem_intf.qspo_ce = 0;
    
                `uvm_info("dist_mem_gen_driver", $sformatf("Synchronous read data: %0h", dist_mem_gen_item.qspo), UVM_NONE);
            end
            // Citire asincronă (SPO)
            else begin
                // Setează adresa pentru citire
                mem_intf.a = dist_mem_gen_item.a;
               
                // Citește datele imediat
                dist_mem_gen_item.spo = mem_intf.spo;
    
                `uvm_info("dist_mem_gen_driver", $sformatf("Asynchronous read data: %0h", dist_mem_gen_item.spo), UVM_NONE);
            
            
            end
            
            
            
            
            
            seq_item_port.item_done(); 
            // semnaleaza secventei ca tranzactia a fost procesata de driver si poate continua cu urmatoarea
        end
    endtask: run_phase
    
endclass : dist_mem_gen_driver