`include "uvm_macros.svh"
import uvm_pkg::*;

class dist_mem_gen_baseSequence extends uvm_sequence #(dist_mem_gen_seq_items1);
// generarea de stimuli sub forma de tranzactii
// = metoda primara de generare de stimuli
// # specifica tipul tranzactiei pe care secventa o va genera

    `uvm_object_utils(dist_mem_gen_baseSequence)
    
    dist_mem_gen_seq_items1 dist_mem_gen_item; //reprezinta o tranzactie
    int numberOfAccesses; // initiat manual sau inainte de rularea secventei
    
    function new(input string name = "dist_mem_gen_baseSequence");
        super.new(name);
    endfunction : new
    
    virtual task body(); 
    //este functia principala care defineste logica de generare a tranzactiilor intr-o secventa
    
        dist_mem_gen_item = dist_mem_gen_seq_items1::type_id::create("dist_mem_gen_item"); 
        // face parte din uvm_object deci nu are nevoie de parent (this)
        
        `uvm_info("dist_mem_gen_baseSequence", $sformatf("Going to generate %d dist_mem_gen sequence items", numberofAccesses), UVM_NONE)
        
        repeat(numberOfAccesses) begin
            start_item(dist_mem_gen_item); //semnaleaza driver-ul ca o noua tranzactie este pregatita pentru generare
            dist_mem_gen_item.randomize();
            finish_item(dist_mem_gen_item); // finalizeaza tranzactia, permitand driver-ului sa o proceseze       
        end
        
        `uvm_info("dist_mem_gen_baseSequence", $sformatf("Finished generating dist_mem_gen sequence items"), UVM_NONE)
    endtask : body

endclass