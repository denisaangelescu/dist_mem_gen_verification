`include "uvm_macros.svh"
import uvm_pkg::*;
// interactiune cu dut-ul

class dist_mem_gen_agent extends uvm_agent;

    `uvm_component_utils(dist_mem_gen_agent)
    
    //grupeaza driver, sequencer si monitor
    dist_mem_gen_monitor monitor;
    dist_mem_gen_driver driver; //primeste secventele de la sequencer si aplicarea pe DUT
    uvm_sequencer #(dist_mem_gen_seq_items1) sequencer; //trimite tranzactii generate de secventa catre driver
    
    function new(input string name = "", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new
    
    virtual function void build_phase(uvm_phase phase);
        sequencer = uvm_sequencer#(dist_mem_gen_seq_items1)::type_id::create("sequencer", this);
        driver    = dist_mem_gen_driver::type_id::create("driver", this);
        monitor   = dist_mem_gen_monitor::type_id::create("monitor", this);
    endfunction
    
    virtual function void connect_phase(uvm_phase phase);
        `uvm_info("AGENT_DEBUG", "Connections between driver, monitor and sequencer established.", UVM_LOW);

        driver.seq_item_port.connect(sequencer.seq_item_export);
        // se conecteaza portul prin care driver-ul primeste obiectele de secventa
        // de exportul prin care sequencer-ul trimite obiectele de secventa
    endfunction
    
endclass : dist_mem_gen_agent    