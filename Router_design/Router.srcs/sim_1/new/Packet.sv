`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2024 07:04:17 PM
// Design Name: 
// Module Name: Packet
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

`ifndef INC_PACKET_SV
`define INC_PACKET_SV
class Packet;
  rand bit [3:0] sa, da;
  rand logic [7:0] payload[$];
  string name;
  constraint packet_constraint {
    sa inside {[0:15]};
    da inside {[0:15]};
    payload.size >=2;
    payload.size <=4;
  }
  
  extern function new(string name= "Packet");
  extern function bit compare (Packet pkt2cmp, ref string message);
  extern function void display (string prefix = "NOTE");
endclass : Packet


function Packet::new(string name);
    this.name =  name;
endfunction: new

function bit Packet::compare(Packet pkt2cmp, ref string message);
    integer  a, b;

    for (integer i = 0; i < this.payload.size(); i = i + 1) begin
        a= this.payload[i];
        b= pkt2cmp.payload[i];
        if (a == b) begin
            message = "PASS";
            compare = 1'b1;
        end
        else begin 
            compare = 1'b0; 
            message = $sformatf("Fail at index %d: this %d, pkt2cmp %d", i, this.payload[i], pkt2cmp.payload[i]); 
            break;
            end
    end
endfunction: compare


function Packet::display (string prefix = "NOTE");
    $display (prefix);
    for (integer i =0; i<this.payload.size(); i=i+1)
        $display(this.payload[i]);
endfunction : display
`endif


