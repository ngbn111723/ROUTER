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
    `include "Packet.sv"
    `include "Driver.sv"
    `include "Generator.sv"
    `include "ReceieveBase.sv"
    `include "Scoreboard.sv"
    int  run_for_n_packets=1;
    logic[7:0] temp;
    pkt_mbox out_box;
    pkt_mbox in_box;
    semaphore sem[];
    Driver drvr[];
    Receiever rcvr[];
    Scoreboard sb;
    Generator gen;
    initial begin
        reset();
        gen= new("Gen",out_box, run_for_n_packets);
        gen.start();
        sem= new [16];
        drvr= new[16];
        rcvr= new[16];
        foreach (sem[i])  sem[i]=new(1);
        foreach (drvr[i]) drvr[i]= new($sformatf("drvr[%0d]",i), i, sem, gen.out_box, in_box, rtr_io);
        foreach (rcvr[i]) rcvr[i]= new($sformatf("rcvr[%0d]",i), i, out_box, rtr_io);
        fork
            drvr[3].start();
            rcvr[7].start();
        join
        sb= new("Scoreboard", drvr[3].out_box, rcvr[7].out_box);
        sb.start();
        wait (sb.DONE.triggered);
//        drvr[3].out_box.get(packet);
//        $display(packet.payload);
       #200 $stop;
        end
    task reset();
        rtr_io.TB.reset_n=0;
        rtr_io.frame_n = 65535;
        rtr_io.valid_n = 65535;
        #15;
        rtr_io.TB.reset_n=1;
        rtr_io.cb.din <=16'b0;
        #150;
        rtr_io.frame_n = 0;
    endtask 

endprogram
module Router_tb2();
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
        forever begin
        #(simulation_cycle/2);
        SystemClock= ~SystemClock;
        end
    end
endmodule



