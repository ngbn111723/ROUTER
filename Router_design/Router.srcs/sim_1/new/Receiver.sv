`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2024 06:44:55 PM
// Design Name: 
// Module Name: Receiver
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
`ifndef INC_RECEIVER_BASE_SV

class ReceiverBase;
  virtual router_io rtr_io;
  string   name;
  bit[3:0] da;
  logic[7:0] payload[$]; 
  Packet   pkt2cmp;

  extern virtual task get_payload ();

endclass

task ReceiverBase :: get_payload ();
        pkt2cmp_payload.delete();
        logic[7:0] temp;
        @(negedge rtr_io.frameo_n[da])
        begin
            for (integer i =0; i<payload.size(); i=i+1) begin
               #10 temp[7]= rtr_io.dout[da];
               #10 temp[6]= rtr_io.dout[da];
               #10 temp[5]= rtr_io.dout[da];
               #10 temp[4]= rtr_io.dout[da];
               #10 temp[3]= rtr_io.dout[da];
               #10 temp[2]= rtr_io.dout[da];
               #10 temp[1]= rtr_io.dout[da];
               #10 temp[0]= rtr_io.dout[da];
               pkt2cmp_payload.push_back(temp);
           end
           end 
endtask
`endif
