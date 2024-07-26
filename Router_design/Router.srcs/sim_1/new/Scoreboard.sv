`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2024 02:28:30 PM
// Design Name: 
// Module Name: Scoreboard
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
`ifndef INC_Scoreboard_SV
`define INC_Scoreboarde_SV
`include "Packet.sv"
typedef mailbox #(Packet) pkt_mbox;
class Scoreboard;
  string  name;
  event   DONE;
  Packet  pkt2send, pkt2cmp;
  mailbox driver_mbox, receiver_mbox;
  
  extern function new(string name, pkt_mbox driver_mbox, pkt_mbox receiver_mbox);
  extern virtual task start();
  extern virtual task check();
endclass
function Scoreboard ::  new(string name, pkt_mbox driver_mbox, pkt_mbox receiver_mbox); 
    this.name = name;
    if (driver_mbox == null) driver_mbox = new();
    this.driver_mbox = driver_mbox;
    if (receiver_mbox == null) receiver_mbox = new();
    this.receiver_mbox = receiver_mbox;
  endfunction
task Scoreboard:: start();
    while (driver_mbox.try_get(pkt2send))
        check();
  endtask

task Scoreboard:: check();
    string mss;
    receiver_mbox.try_get(pkt2cmp);
    pkt2send.compare(pkt2cmp, mss);
    $display(mss);
  endtask


`endif
