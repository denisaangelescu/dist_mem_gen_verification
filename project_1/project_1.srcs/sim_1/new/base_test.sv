`include "uvm_macros.svh"
import uvm_pkg::*;

class base_test extends uvm_test;
    
    `uvm_component_utils(base_test)
    
    environment env; // declara o instanta a clasei environment
    
    function new(input string name = "base_test", uvm_component parent = null);
        super.new(name, parent);
    endfunction
    
    virtual function void build_phase(uvm_phase phase); // folosita pentru sub-componente
        env = environment::type_id::create("env", this);
        // se creeaza o instanta dinamica a mediului environment folosind uvm_factory
        // numele instantei este "env", iar componenta parinte este testul curent this
    endfunction
    
    virtual function void connect_phase(uvm_phase phase);
    // conectarea tuturor sub-componentelor
    endfunction
    
    // run phase = faza activa in care logica testului se executa
    // este o metoda asincrona (task) si permite sincronizarea cu semnale (aici clk)
    virtual task run_phase(uvm_phase phase);
        virtual dist_mem_gen_intf1 mem_intf; //declararea interfetei virtuale
        // pentru ca driver-ul sa comunica cu DUT-ul
        dist_mem_gen_baseSequence baseSeq; // genereaza stimuli pentru testare
        
        uvm_config_db#(virtual dist_mem_gen_intf1)::get(null, "", "dist_mem_gen_intf1", mem_intf);
        //obtinerea interfetei din baza de date
        
        baseSeq = dist_mem_gen_baseSequence::type_id::create("dist_mem_gen_baseSequence");
        
        phase.raise_objection(this); // testul este activ
        
        // ------- functia 'main' a acestei componente -------
        
        // Resetare sincron pentru `qspo`
        mem_intf.qspo_srst = 1; // Activare reset sincron
        @(posedge mem_intf.clk); // Așteptare pe un ciclu de clock
        mem_intf.qspo_srst = 0; // Dezactivare reset sincron
        
        baseSeq.numberOfAccesses = 5;
        baseSeq.start(env.agent.sequencer); // pornirea secventei
        
        phase.drop_objection(this); // testul este terminat
        
        `uvm_info("base_test", "Test completed successfully.", UVM_NONE);

    endtask
    
endclass    