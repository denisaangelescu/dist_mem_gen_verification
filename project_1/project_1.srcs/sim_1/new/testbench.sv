`timescale 1ns / 1ps

`include "uvm_macros.svh"
`include "includes.sv"
import uvm_pkg::*; // neaparat

module testbench();

// Input
logic [5:0]   a;          
logic [15:0]  d;          
logic         clk;        
logic         we;         
logic         qspo_ce;    
logic         qspo_rst;   
logic         qspo_srst;  

// Output
logic [15:0]  spo;        
logic [15:0]  qspo;       

// ------- DUT instantiere ------- //
dist_mem_gen_wrapper dut_inst(.*);

// ------- Interfete instantiere -------- //
dist_mem_gen_intf1 mem_intf();

// ------- Clock generare ------- //
initial begin
    clk = 0;
    forever #10 clk = ~clk;
end

// ------- Asignare semnale pentru interfata ------- //
// Output
assign mem_intf.spo = spo;
assign mem_intf.qspo = qspo;
// Input
assign a = mem_intf.a;
assign d = mem_intf.d;
assign we = mem_intf.we;
assign qspo_ce = mem_intf.qspo_ce;
assign qspo_rst = mem_intf.qspo_rst;
assign qspo_srst = mem_intf.qspo_srst;
// Clock este ca un output pentru ca este generat mai sus
assign mem_intf.clk = clk;

// -------- Testare -------//
initial begin
    uvm_config_db#(virtual dist_mem_gen_intf1)::set(null, "", "dist_mem_gen_intf1", mem_intf);
    // uvm_config_db este o clasa folosita pentru a stoca si accesa valori 
    // intr-o baza de date globala de configurare. ea este folosita pentru a transmite informatii
    // intre componentele din diferite niveluri ale ierarhiei
    // tipul de data este o interfata virtuala de tipul dist_mem_gen_intf1
    // set este o metoda statica care introduce o valoare (scope, inst_name, field_name, value)
    // null inseamna ca valoarea este accesibila pentru toate componentele UVM
    
    fork
        begin
            //run_test("base_test"); // initiaza executia testului
            //porneste si coordoneaza toate fazele UVM (build, connect, run etc)
            run_test("rw_test");
        end
        begin
            automatic int clkLimit = 100;
            repeat(clkLimit) @(posedge mem_intf.clk);
            `uvm_fatal("SIM_END", $sformatf("Reached the simulation limit of %0d clk cycles", clkLimit))
        end
    join_any
end


    

endmodule
