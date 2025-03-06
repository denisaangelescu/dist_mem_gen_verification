`include "uvm_macros.svh" // include macrocomenzi
import uvm_pkg::*; // include clase si faze

class environment extends uvm_env;

    `uvm_component_utils(environment) 
    // inregistreaza clasa in cadrul ierarhiei UVM
    // mereu sa apara asta cand extinde uvm
    // traieste pe tot parcursul simularii, de aceea am scris uvm_component_utils
    
    dist_mem_gen_agent agent;
    scoreboard sb; // Instanță pentru scoreboard
    
    function new(input string name = "env", uvm_component parent = null); // constructor
        super.new(name, parent); // apeleaza constructorul clasei de baza
    endfunction
    
    virtual function void build_phase( uvm_phase phase ); // folosita pentru sub-componente
        `uvm_info("DEBUG", "The build_phase of the environment was called", UVM_NONE)
        
        agent = dist_mem_gen_agent::type_id::create("agent", this);
        sb = scoreboard::type_id::create("sb", this);
    endfunction
    
    virtual function void connect_phase(uvm_phase phase);
        // Conectăm portul de analiză din monitor către scoreboard
        agent.monitor.monitor_analysis_port.connect(sb.monitor_analysis_port);
    endfunction : connect_phase
    
endclass : environment    