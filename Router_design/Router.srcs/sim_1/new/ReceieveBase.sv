`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2024 11:24:08 AM
// Design Name: 
// Module Name: ReceieveBase
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
`ifndef INC_ReceiveBase_SV
`define INC_ReceiveBase_SV
class ReceiveBase;
  string   name;
  rand bit[3:0] da;
  Packet   pkt2cmp;
  virtual router_io rtr_io;;
    
  extern virtual task recv();
  extern virtual task get_payload();

endclass
task ReceiveBase :: recv();
    
    this.pkt2cmp.da = this.da;
    this.pkt2cmp.payload.delete();
    get_payload();
  endtask
  
task ReceiveBase :: get_payload();
    logic[7:0] temp;
    #50 
    while (!rtr_io.frameo_n[this.da]) begin
       temp[7]= rtr_io.dout[da];
       #10 temp[6]= rtr_io.dout[da];
       #10 temp[5]= rtr_io.dout[da];
       #10 temp[4]= rtr_io.dout[da];
       #10 temp[3]= rtr_io.dout[da];
       #10 temp[2]= rtr_io.dout[da];
       #10 temp[1]= rtr_io.dout[da];
       #10 temp[0]= rtr_io.dout[da];
       #10;
        pkt2cmp.payload.push_back(temp);       
        if (pkt2cmp.payload.size()==4) break;
    end
endtask 

class Receiever extends ReceiveBase;
    pkt_mbox out_box;
    extern function new (string name, int port_id, pkt_mbox out_box, virtual router_io rtr_io);
    extern virtual task start ();
endclass 

function Receiever :: new (string name, int port_id, pkt_mbox out_box, virtual router_io rtr_io);
    this.name= name;
    this.da= port_id;
    this.rtr_io= rtr_io;
    this.out_box= new();
    this.pkt2cmp= new();
endfunction 

task Receiever :: start();
    
    recv();
    
    this.out_box.try_put(this.pkt2cmp);
    
    
endtask
`endif
