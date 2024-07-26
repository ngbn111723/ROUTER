`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2024 10:10:05 PM
// Design Name: 
// Module Name: DriverBaser
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
`ifndef INC_DRIVER_BASE_SV
`define INC_DRIVER_BASE_SV
`include "Packet.sv"
class DriverBase;
  virtual router_io rtr_io; // Interface signals for the driver
  string name;                 // Unique identifier for the driver
  bit[3:0] sa, da;             // Source and destination addresses
  logic[7:0] payload[$];       // Dynamic array for the packet payload
  Packet pkt2send;             // Stimulus packet object
  extern virtual task send ();
  extern virtual task send_addrs ();
  extern virtual task send_pad ();
  extern virtual task send_payload ();
endclass: DriverBase

task DriverBase :: send ();
        send_addrs();
        send_pad  ();
        send_payload();
endtask
task DriverBase ::send_addrs();
           this.rtr_io.din[this.sa] =this.da[3];
        #5 this.rtr_io.din[this.sa] =this.da[2];
        #5 this.rtr_io.din[this.sa] =this.da[1];
        #5 this.rtr_io.din[this.sa] =this.da[0];
        
    endtask
task DriverBase :: send_pad ();
        //rtr.io.cb.valid_n <=1'b1;
        #30 this.rtr_io.din[this.sa]= 1'b1;
        this.rtr_io.valid_n[this.sa]=  0;
    endtask
task DriverBase ::send_payload(); 
        @(negedge this.rtr_io.frameo_n[da])
        for (integer i =0; i<payload.size(); i=i+1) begin
            this.rtr_io.din[this.sa] =  this.payload[i][7];
           #10 this.rtr_io.din[this.sa] =  this.payload[i][6];
           #10 this.rtr_io.din[this.sa] =  this.payload[i][5];
           #10 this.rtr_io.din[this.sa] =  this.payload[i][4];
           #10 this.rtr_io.din[this.sa] =  this.payload[i][3];
           #10 this.rtr_io.din[this.sa] =  this.payload[i][2];
           #10 this.rtr_io.din[this.sa] =  this.payload[i][1];
           #10 this.rtr_io.din[this.sa] =  this.payload[i][0];
           #10;
           end              
endtask
`endif
