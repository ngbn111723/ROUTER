`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2024 12:00:09 PM
// Design Name: 
// Module Name: Receive
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

`ifndef INC_RECEIEVE_SV
`define INC_RECEIEVE_SV
`include "ReceieveBase.sv"
class Receieve extends ReceiveBase;
    pkt_mbox out_box;
    extern function new (string name, int port_id, pkt_mbox out_box);
    extern virtual task start ();
endclass 
`endif

