`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2024 10:15:08 PM
// Design Name: 
// Module Name: Driver
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

`ifndef INC_DRIVER_SV
`define INC_DRIVER_SV
`include "DriverBaser.sv"


class Driver extends DriverBase;
    pkt_mbox in_box;
    pkt_mbox out_box;
    semaphore sem[];
    extern function new(string name, int port_id, semaphore sem[], pkt_mbox in_box, pkt_mbox out_box, virtual router_io rtr_io);
    extern virtual task start ();
endclass

function Driver :: new (string name, int port_id, semaphore sem[], pkt_mbox in_box, pkt_mbox out_box, virtual router_io rtr_io);
    this.name= name;
    this.sa= port_id;
    this.sem=sem;
    this.rtr_io= rtr_io;
    this.pkt2send=new();
    this.in_box=new();
    this.in_box= in_box;
    this.out_box= new();
endfunction
task Driver :: start ();
    if (this.in_box.try_get(this.pkt2send)) begin;   
        if (this.pkt2send.sa == this.sa) begin;
            this.da = this.pkt2send.da;
            this.payload = this.pkt2send.payload;
            this.sem[this.da].get(1);
            this.send();
            this.out_box.put(this.pkt2send);
            this.sem[this.da].put(1);
            end
     else this.in_box.put(this.pkt2send);
     end
endtask: start
`endif

