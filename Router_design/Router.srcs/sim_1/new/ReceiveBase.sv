`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2024 11:19:47 AM
// Design Name: 
// Module Name: ReceiveBase
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
`ifndef INC_RECEIVE_BASE_SV
`define INC_RECEIVE_BASE_SV

class ReceiveXactorBase;
  string   name;
  bit[3:0] da;
  byte     payload[];
  Packet   pkt2cmp;

  function new(string name = "ReceiveXactorBase");
    if (TRACE_ON)
      $display("[TRACE]%0d %s:new()", $time, name);
    this.name = name;
    pkt2cmp = new();
  endfunction

  virtual task recv();
    static int pkt_cnt = 0;
    if (TRACE_ON)
      $display("[TRACE]%0d %s:recv()", $time, name);
    get_payload();
    pkt2cmp.name = $psprintf("rcvdPkt[%0d]", pkt_cnt++);
    pkt2cmp.da = da;
    pkt2cmp.payload.delete();
    foreach(pkt2cmp_payload[i])
      pkt2cmp.payload.push_back(pkt2cmp_payload[i]);
  endtask

  virtual task get_payload();
    if (TRACE_ON)
      $display("[TRACE]%0d %s:get_payload()", $time, name);
    pkt2cmp_payload.delete();
    fork
      @(negedge router.cb.frameo_n[da]);
      begin
        repeat(1000) @(router.cb);
        $display("[ERROR]%0d Frame signal timed out!\n%m\n\n", $time);
        $finish;
      end
    join_any
    disable fork;
        
    while (!router.cb.frameo_n[da]) begin
      byte unsigned datum;
      for (int i=0; i<8; ) begin
        if (!router.cb.valido_n[da])
          datum[i++] = router.cb.dout[da];
        if (router.cb.frameo_n[da] && (i != 8)) begin
          $display("Error in output frame timing!");
          $finish;
        end
        @(router.cb);
      end
      pkt2cmp_payload.push_back(datum);
    end
  endtask

endclass
`endif
