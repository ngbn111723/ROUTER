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
    bit[3:0] sa1;
    bit[3:0] da1;
    bit[3:0] sa2;
    bit[3:0] da2;
    bit[3:0] sa3;
    bit[3:0] da3;
    bit[3:0] sa4;
    bit[3:0] da4;
    bit[3:0] sa5;
    bit[3:0] da5;
    bit[3:0] sa6;
    bit[3:0] da6;
    bit[3:0] sa7;
    bit[3:0] da7;   
    bit[3:0] sa8;
    bit[3:0] da8;   
    bit[3:0] sa9;
    bit[3:0] da9;  
    bit[3:0] sa10;
    bit[3:0] da10;
    bit[3:0] sa11;
    bit[3:0] da11; 
    bit[3:0] sa12;
    bit[3:0] da12;  
    bit[3:0] sa13;
    bit[3:0] da13; 
    bit[3:0] sa14;
    bit[3:0] da14;   
    bit[3:0] sa15;
    bit[3:0] da15;
    
    logic[7:0] payload[$];
    logic[7:0] payload1[$];
    logic[7:0] payload2[$];
    logic[7:0] payload3[$];
    logic[7:0] payload4[$];
    logic[7:0] payload5[$];
    logic[7:0] payload6[$];
    logic[7:0] payload7[$];
    logic[7:0] payload8[$];
    logic[7:0] payload9[$];
    logic[7:0] payload10[$];
    logic[7:0] payload11[$];
    logic[7:0] payload12[$];
    logic[7:0] payload13[$];
    logic[7:0] payload14[$];
    logic[7:0] payload15[$];
    
    logic[7:0] pkt2cmp_payload_testcase1[$];
    logic[7:0] temp1;
    
    logic[7:0] pkt2cmp_payload_testcase2[$];
    logic[7:0] temp2;
    
    logic[7:0] pkt2cmp_payload_testcase3_1[$];
    logic[7:0] temp3;
    
    logic[7:0] pkt2cmp_payload_testcase3_2[$];
    logic[7:0] temp4;
    initial begin
        repeat (1) begin
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
        rtr_io.frame_n = 0;
        //rtr_io.frame_n = 65535;
        rtr_io.valid_n = 65535;
        rtr_io.din= 16'd0;
        #10;
        rtr_io.TB.reset_n=1;
        rtr_io.cb.din <=16'b0;
//        #150;
//        rtr_io.frame_n = 0;
    endtask 
    task gen();
        sa=0;
        da=0;
        payload.delete();
        //repeat ($urandom_range(2,4))
        repeat (4) payload.push_back($urandom);
            
        sa1=1;
        da1=3;
        payload1.delete();
        //repeat ($urandom_range(2,4))
        repeat (4) payload1.push_back($urandom);
            
        sa2=2;
        da2=3;
        payload2.delete();
        //repeat ($urandom_range(2,4))
        repeat (4) payload2.push_back($urandom);
        
        sa3=3;
        da3=3;
        payload3.delete();
        //repeat ($urandom_range(2,4))
        repeat (4) payload3.push_back($urandom);
        
        sa4=4;
        da4=3;
        payload4.delete();
        //repeat ($urandom_range(2,4))
        repeat (4) payload4.push_back($urandom);
        
        sa5=5;
        da5=3;
        payload5.delete();
        //repeat ($urandom_range(2,4))
        repeat (4) payload5.push_back($urandom);
        
        sa6=6;
        da6=3;
        payload6.delete();
        //repeat ($urandom_range(2,4))
        repeat (4) payload6.push_back($urandom);
        
        sa7=7;
        da7=3;
        payload7.delete();
        //repeat ($urandom_range(2,4))
        repeat (4) payload7.push_back($urandom);
        
        sa8=8;
        da8=3;
        payload8.delete();
        //repeat ($urandom_range(2,4))
        repeat (4) payload8.push_back($urandom);
            
        sa9=9;
        da9=3;
        payload9.delete();
        //repeat ($urandom_range(2,4))
        repeat (4) payload9.push_back($urandom);
            
        sa10=10;
        da10=3;
        payload10.delete();
        //repeat ($urandom_range(2,4))
        repeat (4) payload10.push_back($urandom);
        
        sa11=11;
        da11=11;
        payload11.delete();
        //repeat ($urandom_range(2,4))
        repeat (4) payload11.push_back($urandom);
        
        sa12=12;
        da12=12;
        payload12.delete();
        //repeat ($urandom_range(2,4))
        repeat (4) payload12.push_back($urandom);
        
        sa13=13;
        da13=13;
        payload13.delete();
        //repeat ($urandom_range(2,4))
        repeat (4) payload13.push_back($urandom);
        
        sa14=14;
        da14=15;
        payload14.delete();
        //repeat ($urandom_range(2,4))
        repeat (4) payload14.push_back($urandom);
        
        sa15=15;
        da15=14;
        payload15.delete();
        //repeat ($urandom_range(2,4))
        repeat (4) payload15.push_back($urandom);
    endtask
    task send ();
        send_addrs();
        send_pad  ();
        send_payload();
    endtask
    task send_addrs();
        
           rtr_io.din[sa]   =da[3];
           rtr_io.din[sa1]  =da1[3];
           rtr_io.din[sa2]  =da2[3];
           rtr_io.din[sa3]  =da3[3];
           rtr_io.din[sa4]  =da4[3];
           rtr_io.din[sa5]  =da5[3];
           rtr_io.din[sa6]  =da6[3];
           rtr_io.din[sa7]  =da7[3];
           rtr_io.din[sa8]  =da8[3];
           rtr_io.din[sa9]  =da9[3];
           rtr_io.din[sa10] =da10[3];
           rtr_io.din[sa11] =da11[3];
           rtr_io.din[sa12] =da12[3];
           rtr_io.din[sa13] =da13[3];
           rtr_io.din[sa14] =da14[3];
           rtr_io.din[sa15] =da15[3];
           
           
        #10 rtr_io.din[sa]  =da[2];
           rtr_io.din[sa1] =da1[2];
           rtr_io.din[sa2] =da2[2];
           rtr_io.din[sa3] =da3[2];
           rtr_io.din[sa4] =da4[2];
           rtr_io.din[sa5] =da5[2];
           rtr_io.din[sa6] =da6[2];
           rtr_io.din[sa7] =da7[2];
           rtr_io.din[sa8]  =da8[2];
           rtr_io.din[sa9]  =da9[2];
           rtr_io.din[sa10] =da10[2];
           rtr_io.din[sa11] =da11[2];
           rtr_io.din[sa12] =da12[2];
           rtr_io.din[sa13] =da13[2];
           rtr_io.din[sa14] =da14[2];
           rtr_io.din[sa15] =da15[2];
           
        #10 rtr_io.din[sa]  =da[1];
           rtr_io.din[sa1] =da1[1];
           rtr_io.din[sa2] =da2[1];
           rtr_io.din[sa3] =da3[1];
           rtr_io.din[sa4] =da4[1];
           rtr_io.din[sa5] =da5[1];
           rtr_io.din[sa6] =da6[1];
           rtr_io.din[sa7] =da7[1];
           rtr_io.din[sa8]  =da8[1];
           rtr_io.din[sa9]  =da9[1];
           rtr_io.din[sa10] =da10[1];
           rtr_io.din[sa11] =da11[1];
           rtr_io.din[sa12] =da12[1];
           rtr_io.din[sa13] =da13[1];
           rtr_io.din[sa14] =da14[1];
           rtr_io.din[sa15] =da15[1];
        
        #10 rtr_io.din[sa]  =da[0];
           rtr_io.din[sa1] =da1[0];
           rtr_io.din[sa2] =da2[0];
           rtr_io.din[sa3] =da3[0];
           rtr_io.din[sa4] =da4[0];
           rtr_io.din[sa5] =da5[0];
           rtr_io.din[sa6] =da6[0];
           rtr_io.din[sa7] =da7[0];
           rtr_io.din[sa8]  =da8[0];
           rtr_io.din[sa9]  =da9[0];
           rtr_io.din[sa10] =da10[0];
           rtr_io.din[sa11] =da11[0];
           rtr_io.din[sa12] =da12[0];
           rtr_io.din[sa13] =da13[0];
           rtr_io.din[sa14] =da14[0];
           rtr_io.din[sa15] =da15[0];
           
        #10;
        
    endtask
    task send_pad ();
        
        rtr_io.valid_n= 15'd0;
    endtask
    task send_payload(); 
        for (integer i =0; i<payload.size(); i=i+1) begin
            
            rtr_io.din[sa] =  payload[i][7];
            rtr_io.din[sa1] =  payload1[i][7];
            rtr_io.din[sa2] =  payload2[i][7];
            rtr_io.din[sa3] =  payload3[i][7];
            rtr_io.din[sa4] =  payload4[i][7];
            rtr_io.din[sa5] =  payload5[i][7];
            rtr_io.din[sa6] =  payload6[i][7];
            rtr_io.din[sa7] =  payload7[i][7];
            rtr_io.din[sa8] =  payload8[i][7];
            rtr_io.din[sa9] =  payload9[i][7];
            rtr_io.din[sa10] =  payload10[i][7];
            rtr_io.din[sa11] =  payload11[i][7];
            rtr_io.din[sa12] =  payload12[i][7];
            rtr_io.din[sa13] =  payload13[i][7];
            rtr_io.din[sa14] =  payload14[i][7];
            rtr_io.din[sa15] =  payload15[i][7];
           
           #10 rtr_io.din[sa] =  payload[i][6];
               rtr_io.din[sa1] =  payload1[i][6];
               rtr_io.din[sa2] =  payload2[i][6];
               rtr_io.din[sa3] =  payload3[i][6];
               rtr_io.din[sa4] =  payload4[i][6];
               rtr_io.din[sa5] =  payload5[i][6];
               rtr_io.din[sa6] =  payload6[i][6];
               rtr_io.din[sa7] =  payload7[i][6];
               rtr_io.din[sa8] =  payload8[i][6];
               rtr_io.din[sa9] =  payload9[i][6];
               rtr_io.din[sa10] =  payload10[i][6];
               rtr_io.din[sa11] =  payload11[i][6];
               rtr_io.din[sa12] =  payload12[i][6];
               rtr_io.din[sa13] =  payload13[i][6];
               rtr_io.din[sa14] =  payload14[i][6];
               rtr_io.din[sa15] =  payload15[i][6];
               
           #10 rtr_io.din[sa] =  payload[i][5];
               rtr_io.din[sa1] =  payload1[i][5];
               rtr_io.din[sa2] =  payload2[i][5];
               rtr_io.din[sa3] =  payload3[i][5];
               rtr_io.din[sa4] =  payload4[i][5];
               rtr_io.din[sa5] =  payload5[i][5];
               rtr_io.din[sa6] =  payload6[i][5];
               rtr_io.din[sa7] =  payload7[i][5];
               rtr_io.din[sa8] =  payload8[i][5];
               rtr_io.din[sa9] =  payload9[i][5];
               rtr_io.din[sa10] =  payload10[i][5];
               rtr_io.din[sa11] =  payload11[i][5];
               rtr_io.din[sa12] =  payload12[i][5];
               rtr_io.din[sa13] =  payload13[i][5];
               rtr_io.din[sa14] =  payload14[i][5];
               rtr_io.din[sa15] =  payload15[i][5];
           
           #10 rtr_io.din[sa]  =  payload[i][4];
               rtr_io.din[sa1] =  payload1[i][4];
               rtr_io.din[sa2] =  payload2[i][4];
               rtr_io.din[sa3] =  payload3[i][4];
               rtr_io.din[sa4] =  payload4[i][4];
               rtr_io.din[sa5] =  payload5[i][4];
               rtr_io.din[sa6] =  payload6[i][4];
               rtr_io.din[sa7] =  payload7[i][4];
               rtr_io.din[sa8] =  payload8[i][4];
               rtr_io.din[sa9] =  payload9[i][4];
               rtr_io.din[sa10] =  payload10[i][4];
               rtr_io.din[sa11] =  payload11[i][4];
               rtr_io.din[sa12] =  payload12[i][4];
               rtr_io.din[sa13] =  payload13[i][4];
               rtr_io.din[sa14] =  payload14[i][4];
               rtr_io.din[sa15] =  payload15[i][4];
           
           #10 rtr_io.din[sa] =  payload[i][3];
               rtr_io.din[sa1] =  payload1[i][3];
               rtr_io.din[sa2] =  payload2[i][3];
               rtr_io.din[sa3] =  payload3[i][3];
               rtr_io.din[sa4] =  payload4[i][3];
               rtr_io.din[sa5] =  payload5[i][3];
               rtr_io.din[sa6] =  payload6[i][3];
               rtr_io.din[sa7] =  payload7[i][3];
               rtr_io.din[sa8] =  payload8[i][3];
               rtr_io.din[sa9] =  payload9[i][3];
               rtr_io.din[sa10] =  payload10[i][3];
               rtr_io.din[sa11] =  payload11[i][3];
               rtr_io.din[sa12] =  payload12[i][3];
               rtr_io.din[sa13] =  payload13[i][3];
               rtr_io.din[sa14] =  payload14[i][3];
               rtr_io.din[sa15] =  payload15[i][3];
           
           #10 rtr_io.din[sa] =  payload[i][2];
               rtr_io.din[sa1] =  payload1[i][2];
               rtr_io.din[sa2] =  payload2[i][2];
               rtr_io.din[sa3] =  payload3[i][2];
               rtr_io.din[sa4] =  payload4[i][2];
               rtr_io.din[sa5] =  payload5[i][2];
               rtr_io.din[sa6] =  payload6[i][2];
               rtr_io.din[sa7] =  payload7[i][2];
               rtr_io.din[sa8] =  payload8[i][2];
               rtr_io.din[sa9] =  payload9[i][2];
               rtr_io.din[sa10] =  payload10[i][2];
               rtr_io.din[sa11] =  payload11[i][2];
               rtr_io.din[sa12] =  payload12[i][2];
               rtr_io.din[sa13] =  payload13[i][2];
               rtr_io.din[sa14] =  payload14[i][2];
               rtr_io.din[sa15] =  payload15[i][2];
           
           #10 rtr_io.din[sa] =  payload[i][1];
               rtr_io.din[sa1] =  payload1[i][1];
               rtr_io.din[sa2] =  payload2[i][1];
               rtr_io.din[sa3] =  payload3[i][1];
               rtr_io.din[sa4] =  payload4[i][1];
               rtr_io.din[sa5] =  payload5[i][1];
               rtr_io.din[sa6] =  payload6[i][1];
               rtr_io.din[sa7] =  payload7[i][1];
               rtr_io.din[sa8] =  payload8[i][1];
               rtr_io.din[sa9] =  payload9[i][1];
               rtr_io.din[sa10] =  payload10[i][1];
               rtr_io.din[sa11] =  payload11[i][1];
               rtr_io.din[sa12] =  payload12[i][1];
               rtr_io.din[sa13] =  payload13[i][1];
               rtr_io.din[sa14] =  payload14[i][1];
               rtr_io.din[sa15] =  payload15[i][1];
           
           #10 rtr_io.din[sa] =  payload[i][0];
               rtr_io.din[sa1] =  payload1[i][0];
               rtr_io.din[sa2] =  payload2[i][0];
               rtr_io.din[sa3] =  payload3[i][0];
               rtr_io.din[sa4] =  payload4[i][0];
               rtr_io.din[sa5] =  payload5[i][0];
               rtr_io.din[sa6] =  payload6[i][0];
               rtr_io.din[sa7] =  payload7[i][0];
               rtr_io.din[sa8] =  payload8[i][0];
               rtr_io.din[sa9] =  payload9[i][0];
               rtr_io.din[sa10] =  payload10[i][0];
               rtr_io.din[sa11] =  payload11[i][0];
               rtr_io.din[sa12] =  payload12[i][0];
               rtr_io.din[sa13] =  payload13[i][0];
               rtr_io.din[sa14] =  payload14[i][0];
               rtr_io.din[sa15] =  payload15[i][0];
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
        if (compare (payload, pkt2cmp_payload_testcase1)) $display ("PASS TESTCASE 1");
               else $display ("FAIL TESTCASE 1");
        if (compare (payload1, pkt2cmp_payload_testcase2)) $display ("PASS TESTCASE 2");
               else $display ("FAIL TESTCASE 2");
       if (compare (payload15, pkt2cmp_payload_testcase3_1)&&compare (payload14, pkt2cmp_payload_testcase3_2)) $display ("PASS TESTCASE 3");
               else $display ("FAIL TESTCASE 3");
    endtask
    task get_payload();
        logic enable;
        pkt2cmp_payload_testcase1.delete();
        pkt2cmp_payload_testcase2.delete();

        @(negedge rtr_io.frameo_n[da])
        begin
            for (integer i =0; i<4; i=i+1) begin
                   temp1[7]= rtr_io.dout[da];
                   temp2[7]= rtr_io.dout[3];
                   temp3[7]= rtr_io.dout[14];
                   temp4[7]= rtr_io.dout[15];
               #10 temp1[6]= rtr_io.dout[da];
                   temp2[6]= rtr_io.dout[3];
                   temp3[6]= rtr_io.dout[14];
                   temp4[6]= rtr_io.dout[15];
               #10 temp1[5]= rtr_io.dout[da];
                   temp2[5]= rtr_io.dout[3];
                   temp3[5]= rtr_io.dout[14];
                   temp4[5]= rtr_io.dout[15];
               #10 temp1[4]= rtr_io.dout[da];
                   temp2[4]= rtr_io.dout[3];
                   temp3[4]= rtr_io.dout[14];
                   temp4[4]= rtr_io.dout[15];
               #10 temp1[3]= rtr_io.dout[da];
                   temp2[3]= rtr_io.dout[3];
                   temp3[3]= rtr_io.dout[14];
                   temp4[3]= rtr_io.dout[15];
               #10 temp1[2]= rtr_io.dout[da];
                   temp2[2]= rtr_io.dout[3];
                   temp3[2]= rtr_io.dout[14];
                   temp4[2]= rtr_io.dout[15];
               #10 temp1[1]= rtr_io.dout[da];
                   temp2[1]= rtr_io.dout[3];
                   temp3[1]= rtr_io.dout[14];
                   temp4[1]= rtr_io.dout[15];
               #10 temp1[0]= rtr_io.dout[da];
                   temp2[0]= rtr_io.dout[3];
                   temp3[0]= rtr_io.dout[14];
                   temp4[0]= rtr_io.dout[15];
               #10;
               pkt2cmp_payload_testcase1.push_back(temp1);
               pkt2cmp_payload_testcase2.push_back(temp2);
               pkt2cmp_payload_testcase3_1.push_back(temp3);
               pkt2cmp_payload_testcase3_2.push_back(temp4);
           end
           end 
//           $display(payload);
//           $display(pkt2cmp_payload_testcase1);
//           $display(payload1);
//           $display(pkt2cmp_payload_testcase2);
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



