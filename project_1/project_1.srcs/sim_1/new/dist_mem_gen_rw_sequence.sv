`include "uvm_macros.svh"
import uvm_pkg::*;
// genereaza una sau mai multe tranzactii

class dist_mem_gen_rw_sequence extends uvm_sequence #(dist_mem_gen_seq_items1);

    `uvm_object_utils(dist_mem_gen_rw_sequence)

    // Variabile pentru tranzacții
    // setate in rw_test inainte de asta writeSeq.start(env.agent.sequencer);
    bit we;               // Control pentru scriere
    bit qspo_ce;          // Control pentru citire sincronizată
    bit qspo_rst;         // Reset asincron
    bit qspo_srst;        // Reset sincron
    int a;                // Adresa de acces
    int d;                // Date pentru scriere

    function new(input string name = "dist_mem_gen_rw_sequence");
        super.new(name);
    endfunction : new

    virtual task body();
        dist_mem_gen_seq_items1 rw_item;
        rw_item = dist_mem_gen_seq_items1::type_id::create("rw_item");

        start_item(rw_item); // trimite catre sequencer
        
        // Inițializare comună pentru tranzacție din secventa
        // dupa start_item pentru ca campurile sa pot fi schimbate dupa notificare
        rw_item.a = a;
        rw_item.d = d;
        rw_item.we = we;
        rw_item.qspo_ce = qspo_ce;
        rw_item.qspo_rst = qspo_rst;
        rw_item.qspo_srst = qspo_srst;


        `uvm_info("dist_mem_gen_rw_sequence", $sformatf("Before finish_item: addr=%0h, data=%0h, we=%0h", a, d, we), UVM_NONE);

        
        finish_item(rw_item);
    endtask : body

endclass : dist_mem_gen_rw_sequence
