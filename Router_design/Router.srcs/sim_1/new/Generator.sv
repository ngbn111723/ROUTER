`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2024 04:33:32 PM
// Design Name: 
// Module Name: Generator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`ifndef INC_GENERATOR_SV
`define INC_GENERATOR_SV
class Generator;
  int run_for_n_packets;
  string name;  
  virtual router_io rtr_io;
  Packet  pkt2send;
  pkt_mbox out_box;
  
  extern function new(string name = "Generator", pkt_mbox out_box, int run_for_n_packets);
  extern virtual task gen ();
  extern virtual task start ();
endclass:Generator

function Generator :: new(string name = "Generator", pkt_mbox out_box, int run_for_n_packets);
    this.name = name;
    this.out_box = new();
    this.run_for_n_packets=run_for_n_packets;
    this.pkt2send= new();
endfunction

task Generator :: start ();
    for (integer i= 0 ;i< this.run_for_n_packets; i=i+1) begin
        gen();
        this.out_box.put(this.pkt2send);
    end
endtask

task Generator :: gen ();
    this.pkt2send.payload.delete();
        this.pkt2send.sa= 3;
        this.pkt2send.da= 7;
        repeat ($urandom_range(2,4)) begin
            this.pkt2send.payload.push_back($urandom);
    end
endtask
`endif
