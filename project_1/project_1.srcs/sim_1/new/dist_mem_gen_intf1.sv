interface dist_mem_gen_intf1();
// pot sa pun 0 sa plece de undeva
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

endinterface : dist_mem_gen_intf1