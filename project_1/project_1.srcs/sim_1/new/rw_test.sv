`include "uvm_macros.svh"
import uvm_pkg::*;
//generare de stimuli

class rw_test extends uvm_test;

    `uvm_component_utils(rw_test)

    environment env;

    function new(input string name = "rw_test", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new

    virtual function void build_phase(uvm_phase phase);
        env = environment::type_id::create("env", this);
    endfunction : build_phase

    virtual function void connect_phase(uvm_phase phase);
        // Conexiunile între componente, dacă este cazul - nu este cazul
    endfunction : connect_phase



    // Task pentru scriere în memorie
    task writeMemory(int addr, int readdata);
        dist_mem_gen_rw_sequence writeSeq;
        writeSeq = dist_mem_gen_rw_sequence::type_id::create("writeSeq");

        // Setarea câmpurilor pentru scriere
        writeSeq.we = 1;
        writeSeq.qspo_ce = 0;
        writeSeq.qspo_rst = 0;
        writeSeq.qspo_srst = 0;
        writeSeq.a = addr;
        writeSeq.d = readdata;

        `uvm_info("WriteMemory Debug", $sformatf("Sending transaction: we=%0d, addr=%0h, data=%0h", writeSeq.we, writeSeq.a, writeSeq.d), UVM_LOW);

        writeSeq.start(env.agent.sequencer); //secventa trimite tranzactiile la sequencer
        
        
        `uvm_info("rw_test", $sformatf("Write issued: addr=%0h, data=%0h", addr, readdata), UVM_NONE);
    endtask : writeMemory

    // Task pentru citire sincronizată
    task readMemorySync(input int addr, output int readdata);
    // output data ca sa pot sa o vad in run_phase
    
        dist_mem_gen_rw_sequence readSeq;
        readSeq = dist_mem_gen_rw_sequence::type_id::create("readSeq");

        // Setarea câmpurilor pentru citire sincronizată
        readSeq.we = 0;
        readSeq.qspo_ce = 1;
        readSeq.qspo_rst = 0;
        readSeq.qspo_srst = 0;
        readSeq.a = addr;
        readSeq.d = env.agent.monitor.mem_intf.d; // Menține data anterioară

        readSeq.start(env.agent.sequencer);
        
         // Actualizare valoare citită
        //@(posedge env.agent.monitor.mem_intf.clk);
        readdata = env.agent.monitor.mem_intf.qspo; // Citire sincronă
    endtask : readMemorySync
    
    // Task pentru citire asincronă
    task readMemoryAsync(input int addr, output int readdata);
        dist_mem_gen_rw_sequence readSeq;
        readSeq = dist_mem_gen_rw_sequence::type_id::create("readSeq");
    
        // Setarea câmpurilor pentru citire asincronă
        readSeq.we = 0;
        readSeq.qspo_ce = 0; // Nu folosim control sincron
        readSeq.qspo_rst = 0;
        readSeq.qspo_srst = 0;
        readSeq.a = addr; // Setăm adresa
        readSeq.d = env.agent.monitor.mem_intf.d; // Menține data anterioară
    
        readSeq.start(env.agent.sequencer);
        
        // Așteptăm schimbarea adresei sau a semnalului SPO -  nu e nevoie ca se da
        // update instant
        // @(env.agent.monitor.mem_intf.a or env.agent.monitor.mem_intf.spo);
        `uvm_info("rw_test", $sformatf("Async Read Initiated: addr=%0h, SPO=%0h", addr, env.agent.monitor.mem_intf.spo), UVM_NONE);

        // Reținem valoarea citită în `readdata`
        readdata = env.agent.monitor.mem_intf.spo;
        
    endtask : readMemoryAsync

    // Task pentru reset sincron
    task resetSync();
        dist_mem_gen_rw_sequence resetSeq;
        resetSeq = dist_mem_gen_rw_sequence::type_id::create("resetSyncSeq");
    
        // Setarea câmpurilor pentru reset sincron
        resetSeq.we = 0;
        resetSeq.qspo_ce = 0;
        resetSeq.qspo_rst = 0;
        resetSeq.qspo_srst = 1; // Activează reset-ul sincron
        resetSeq.a = env.agent.monitor.mem_intf.a; // Menține adresa anterioară

        resetSeq.start(env.agent.sequencer);
    
        // Verificăm dacă `QSPO` este resetat la valoarea default
        //repeat(1) @(posedge env.agent.monitor.mem_intf.clk); // Așteptăm un ciclu de ceas
//        if (env.agent.monitor.mem_intf.qspo != 0) begin
//            `uvm_error("resetSync", $sformatf("Sync reset failed: QSPO=%0h (expected 0)", env.agent.monitor.mem_intf.qspo));
//        end 
//        else begin
//            `uvm_info("resetSync", "Synchronous reset applied successfully. QSPO=0", UVM_NONE);
//        end
    endtask : resetSync


    // Task pentru reset asincron
    task resetAsync();
        dist_mem_gen_rw_sequence resetSeq;
        resetSeq = dist_mem_gen_rw_sequence::type_id::create("resetAsyncSeq");
    
        // Setarea câmpurilor pentru reset asincron
        resetSeq.we = 0;
        resetSeq.qspo_ce = 0;
        resetSeq.qspo_rst = 1; // Activează reset-ul asincron
        resetSeq.qspo_srst = 0;
        resetSeq.a = env.agent.monitor.mem_intf.a; // Menține adresa anterioară
    
        resetSeq.start(env.agent.sequencer);
    
        // Verificăm dacă `QSPO` este resetat imediat
        //#1; // Așteptăm un timp minim
//        if (env.agent.monitor.mem_intf.qspo != 0) begin
//            `uvm_error("resetAsync", $sformatf("Async reset failed: QSPO=%0h (expected 0)", env.agent.monitor.mem_intf.qspo));
//        end else begin
//            `uvm_info("resetAsync", "Asynchronous reset applied successfully. QSPO=0", UVM_NONE);
//        end
    endtask : resetAsync


    
    
    
    virtual task run_phase(uvm_phase phase);
        int readdata = 0;
    
        phase.raise_objection(this);
    
    
        // Scriere
        writeMemory(6'h10, 16'h1234);
        #25 // pana la urm scriere mai sunt 25ns (de cand we trece in 0)
        writeMemory(6'h20, 16'h5678);
        #55
        writeMemory(6'h30, 16'h9ABC);
        repeat(4) @(posedge env.agent.monitor.mem_intf.clk); 
        writeMemory(6'h2, 16'h3);
        #15
        writeMemory(6'h20, 16'h3333);
        #15
        writeMemory(6'h30, 16'h0101);
        #15


        // Citire asincronă
        readMemoryAsync(6'h10, readdata);
        $display("Async Read Data after Write 1: %0h", readdata);
        #35
        readMemoryAsync(6'h20, readdata);
        $display("Async Read Data after Write 2: %0h", readdata);
        #20
        readMemoryAsync(6'h30, readdata);
        $display("Async Read Data after Write 3: %0h", readdata);
        #30
        readMemoryAsync(6'h10, readdata);
        $display("Async Read Data after Write 1: %0h", readdata);
        #45
        
        
        // Citire sincronă
        readMemorySync(6'h2, readdata);
        $display("Sync Read Data: %0h", readdata);
        #60
        readMemorySync(6'h20, readdata);
        $display("Sync Read Data: %0h", readdata);
        #55
        
        
        // Reset sincron
        resetSync();
        #40
        readMemorySync(6'h10, readdata);
        $display("Sync Read Data: %0h", readdata);
        #20
        resetSync();
        #10
        readMemorySync(6'h20, readdata);
        $display("Sync Read Data: %0h", readdata);
        #7
        
        
        //Reset asincron
        resetAsync();
        #13
        readMemorySync(6'h30, readdata);
        $display("Sync Read Data: %0h", readdata);
        
    
        phase.drop_objection(this);
    endtask : run_phase



endclass : rw_test
