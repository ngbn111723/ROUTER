`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2024 01:09:23 PM
// Design Name: 
// Module Name: router_test_top
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
interface router_io(input bit clock);
    logic reset_n;
    logic [15:0] din;
    logic [15:0] frame_n;
    logic [15:0] valid_n;
    logic [15:0] dout; 
    logic [15:0] frameo_n;
    logic [15:0] valido_n;
    logic [15:0] busy_n;
    clocking cb @(posedge clock);
        //default input #1ns output #1ns;
        output reset_n;
        output din;
        output frame_n;
        output valid_n;
        input dout; 
        input frameo_n;
        input valido_n;
        input busy_n;
    endclocking 
    modport TB(clocking cb, output reset_n);
endinterface

program automatic test (router_io rtr_io);
    bit[3:0] sa;
    bit[3:0] da;
    logic[7:0] payload[$];
    logic[7:0] pkt2cmp_payload[$];
    logic[7:0] temp;
    initial begin
        repeat (21) begin
        gen();
        reset();
        fork
            send();
            recv();
        join
        disable fork;
        end
//        send_addrs();
//        send_pad();
//        send_payload();
        //$monitor(rtr_io.dout);
        #1000 $stop;
    end
    task reset();
        rtr_io.TB.reset_n=0;
        rtr_io.frame_n = 65535;
        rtr_io.valid_n = 65535;
        #15;
        rtr_io.TB.reset_n=1;
        rtr_io.cb.din <=16'b0;
        #150;
        rtr_io.frame_n[sa] = 0;
    endtask 
    task gen();
        sa=3;
        da=7;
        payload.delete();
        repeat ($urandom_range(2,4))
            payload.push_back($urandom);
    endtask
    task send ();
        send_addrs();
        send_pad  ();
        send_payload();
    endtask
    task send_addrs();
         rtr_io.din[sa] =da[3];
        #5 rtr_io.din[sa] =da[2];
        #5 rtr_io.din[sa] =da[1];
        #5 rtr_io.din[sa] =da[0];
        
    endtask
    task send_pad ();
        //rtr.io.cb.valid_n <=1'b1;
        #30 rtr_io.din[sa]= 1'b1;
        rtr_io.valid_n[sa] =  0;
    endtask
    task send_payload(); 
        for (integer i =0; i<payload.size(); i=i+1) begin
            rtr_io.din[sa] =  payload[i][7];
           #10 rtr_io.din[sa] =  payload[i][6];
           #10 rtr_io.din[sa] =  payload[i][5];
           #10 rtr_io.din[sa] =  payload[i][4];
           #10 rtr_io.din[sa] =  payload[i][3];
           #10 rtr_io.din[sa] =  payload[i][2];
           #10 rtr_io.din[sa] =  payload[i][1];
           #10 rtr_io.din[sa] =  payload[i][0];
           #10;
           end              
    endtask
   function bit compare(logic[7:0] a[$], logic[7:0] b[$]);
//           $display(a);
//           $display(b);
        for (integer i =0; i<a.size(); i=i+1) begin
            if (a[i]==b[i])
              compare = 1'b1;
            else begin
              compare = 1'b0;
              break;
              end
      end
  endfunction
    task recv ();    
        get_payload();
        check();
    endtask 
    task check();
        if (compare (payload, pkt2cmp_payload )) $display ("PASS");
               else $display ("FAIL");
    endtask
    task get_payload();
        logic enable;
        pkt2cmp_payload.delete();
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
//           $display(payload);
//           $display(pkt2cmp_payload);
    endtask 
endprogram



module router_test_top();
    parameter simulation_cycle= 10;
    bit SystemClock;
    router_io top_io(SystemClock);
    test t (top_io);
    Router dut (
        .reset_n (top_io.reset_n), 
        .frame_n (top_io.frame_n), 
        .valid_n (top_io.valid_n), 
        .din     (top_io.din), 
        .clock   (top_io.clock), 
        .frameo_n(top_io.frameo_n), 
        .valido_n(top_io.valido_n), 
        .busy_n  (top_io.busy_n),
        .dout    (top_io.dout)
    );
    initial begin
        SystemClock=0;
        //$monitor ("State: %d, Address: %d, Access: %b, Din: %b", dut.Pin3.state, dut.Pin3.address, dut.fra_in3, dut.Pin3.data_in);
        forever begin
        #(simulation_cycle/2);
        SystemClock= ~SystemClock;
        end
        //$stop;
    end
endmodule



