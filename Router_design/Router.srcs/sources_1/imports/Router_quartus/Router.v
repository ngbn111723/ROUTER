`timescale 1ns / 1ps
module Router (reset_n, frame_n, valid_n, din, clock, frameo_n, valido_n, busy_n ,dout);

	input         reset_n;
	input[15:0]   frame_n;
	input[15:0]   valid_n;
	input[15:0]   din;
	input   		  clock;
	output[15:0]  frameo_n;
	output[15:0]  valido_n;
	output[15:0]  busy_n;
	output[15:0]  dout;
	
	wire[15:0] dout0, dout1,  dout2, dout3, dout4, dout5,  dout6, dout7;
	wire[15:0] dout8, dout9,  dout10, dout11, dout12, dout13,  dout14, dout15;
	wire[15:0] di0, di1,  di2, di3, di4, di5, di6, di7;
	wire[15:0] di8, di9,  di10, di11, di12, di13, di14, di15;
	wire[3:0]  request0, request1, request2, request3, request4, request5, request6, request7;
	wire[3:0]  request8, request9, request10, request11, request12, request13, request14, request15;
	wire[15:0] fra_in0, fra_in1, fra_in2, fra_in3, fra_in4, fra_in5, fra_in6, fra_in7;
	wire[15:0] fra_in8, fra_in9, fra_in10, fra_in11, fra_in12, fra_in13, fra_in14, fra_in15;
	
	//(data_out, reset, frame, valid, data_in, clk, request);
	port_in Pin0  (dout0, reset_n, frame_n[0],   valid_n[0],  din[0],  clock, request0);
	port_in Pin1  (dout1, reset_n, frame_n[1],   valid_n[1],  din[1],  clock, request1);
	port_in Pin2  (dout2, reset_n, frame_n[2],   valid_n[2],  din[2],  clock, request2);
	port_in Pin3  (dout3, reset_n, frame_n[3],   valid_n[3],  din[3],  clock, request3);
	port_in Pin4  (dout4, reset_n, frame_n[4],   valid_n[4],  din[4],  clock, request4);
	port_in Pin5  (dout5, reset_n, frame_n[5],   valid_n[5],  din[5],  clock, request5);
	port_in Pin6  (dout6, reset_n, frame_n[6],   valid_n[6],  din[6],  clock, request6);
	port_in Pin7  (dout7, reset_n, frame_n[7],   valid_n[7],  din[7],  clock, request7);
	port_in Pin8  (dout8, reset_n, frame_n[8],   valid_n[8],  din[8],  clock, request8);
	port_in Pin9  (dout9, reset_n, frame_n[9],   valid_n[9],  din[9],  clock, request9);
	port_in Pin10 (dout10, reset_n, frame_n[10], valid_n[10], din[10], clock, request10);
	port_in Pin11 (dout11, reset_n, frame_n[11], valid_n[11], din[11], clock, request11);
	port_in Pin12 (dout12, reset_n, frame_n[12], valid_n[12], din[12], clock, request12);
	port_in Pin13 (dout13, reset_n, frame_n[13], valid_n[13], din[13], clock, request13);
	port_in Pin14 (dout14, reset_n, frame_n[14], valid_n[14], din[14], clock, request14);
	port_in Pin15 (dout15, reset_n, frame_n[15], valid_n[15], din[15], clock, request15);

	assign di0 = {dout15[0], dout14[0],  dout13[0], dout12[0], dout11[0], dout10[0],  dout9[0], dout8[0], 
	dout7[0], dout6[0],  dout5[0], dout4[0], dout3[0], dout2[0],  dout1[0], dout0[0]};
	
	assign di1 = {dout15[1], dout14[1],  dout13[1], dout12[1], dout11[1], dout10[1],  dout9[1], dout8[1], 
	dout7[1], dout6[1],  dout5[1], dout4[1], dout3[1], dout2[1],  dout1[1], dout0[1]};
	
	assign di2 = {dout15[2], dout14[2],  dout13[2], dout12[2], dout11[2], dout10[2],  dout9[2], dout8[2], 
	dout7[2], dout6[2],  dout5[2], dout4[2], dout3[2], dout2[2],  dout1[2], dout0[2]};

	
	assign di3 = {dout15[3], dout14[3],  dout13[3], dout12[3], dout11[3], dout10[3],  dout9[3], dout8[3], 
	dout7[3], dout6[3],  dout5[3], dout4[3], dout3[3], dout2[3],  dout1[3], dout0[3]};	
	
	assign di4 = {dout15[4], dout14[4],  dout13[4], dout12[4], dout11[4], dout10[4],  dout9[4], dout8[4], 
	dout7[4], dout6[4],  dout5[4], dout4[4], dout3[4], dout2[4],  dout1[4], dout0[4]};

	assign di5 = {dout15[5], dout14[5],  dout13[5], dout12[5], dout11[5], dout10[5],  dout9[5], dout8[5], 
	dout7[5], dout6[5],  dout5[5], dout4[5], dout3[5], dout2[5],  dout1[5], dout0[5]};

	assign di6 = {dout15[6], dout14[6],  dout13[6], dout12[6], dout11[6], dout10[6],  dout9[6], dout8[6], 
	dout7[6], dout6[6],  dout5[6], dout4[6], dout3[6], dout2[6],  dout1[6], dout0[6]};
	
	assign di7 = {dout15[7], dout14[7],  dout13[7], dout12[7], dout11[7], dout10[7],  dout9[7], dout8[7], 
	dout7[7], dout6[7],  dout5[7], dout4[7], dout3[7], dout2[7],  dout1[7], dout0[7]};
	
	assign di8 = {dout15[8], dout14[8],  dout13[8], dout12[8], dout11[8], dout10[8],  dout9[8], dout8[8], 
	dout7[8], dout6[8],  dout5[8], dout4[8], dout3[8], dout2[8],  dout1[8], dout0[8]};
	
	assign di9 = {dout15[9], dout14[9],  dout13[9], dout12[9], dout11[9], dout10[9],  dout9[9], dout8[9], 
	dout7[9], dout6[9],  dout5[9], dout4[9], dout3[9], dout2[9],  dout1[9], dout0[9]};	
	
	assign di10 = {dout15[10], dout14[10],  dout13[10], dout12[10], dout11[10], dout10[10],  dout9[10], dout8[10], 
	dout7[10], dout6[10],  dout5[10], dout4[10], dout3[10], dout2[10],  dout1[10], dout0[10]};

	assign di11 = {dout15[11], dout14[11],  dout13[11], dout12[11], dout11[11], dout10[11],  dout9[11], dout8[11], 
	dout7[11], dout6[11],  dout5[11], dout4[11], dout3[11], dout2[11],  dout1[11], dout0[11]};
	
	assign di12 = {dout15[12], dout14[12],  dout13[12], dout12[12], dout11[12], dout10[12],  dout9[12], dout8[12], 
	dout7[12], dout6[12],  dout5[12], dout4[11], dout3[11], dout2[12],  dout1[12], dout0[12]};

	
	assign di13 = {dout15[13], dout14[13],  dout13[13], dout12[13], dout11[13], dout10[13],  dout9[13], dout8[13], 
	dout7[13], dout6[13],  dout5[13], dout4[13], dout3[13], dout2[13],  dout1[13], dout0[13]};	
	
	assign di14 = {dout15[14], dout14[14],  dout13[14], dout12[14], dout11[14], dout10[14],  dout9[14], dout8[14], 
	dout7[14], dout6[14],  dout5[14], dout4[14], dout3[14], dout2[14],  dout1[14], dout0[14]};

	assign di15 = {dout15[15], dout14[15],  dout13[15], dout12[15], dout11[15], dout10[15],  dout9[15], dout8[15], 
	dout7[15], dout6[15],  dout5[15], dout4[15], dout3[15], dout2[15],  dout1[15], dout0[15]};
	
	
	classifi classi (fra_in0, fra_in1,fra_in2, fra_in3,fra_in4,fra_in5,fra_in6,fra_in7,
						fra_in8, fra_in9,fra_in10, fra_in11,fra_in12,fra_in13,fra_in14,fra_in15,
						request0, request1, request2, request3, request4, request5, request6, request7,
						request8, request9, request10, request11, request12, request13, request14, request15);
	
	port_out Pout0 (frameo_n[0], valido_n[0], dout[0], di0, fra_in0, frame_n, valid_n, busy_n[0]);
	port_out Pout1 (frameo_n[1], valido_n[1], dout[1], di1, fra_in1, frame_n, valid_n, busy_n[1]);
	port_out Pout2 (frameo_n[2], valido_n[2], dout[2], di2, fra_in2, frame_n, valid_n, busy_n[2]);
	port_out Pout3 (frameo_n[3], valido_n[3], dout[3], di3, fra_in3, frame_n, valid_n, busy_n[3]);
	port_out Pout4 (frameo_n[4], valido_n[4], dout[4], di4, fra_in4, frame_n, valid_n, busy_n[4]);
	port_out Pout5 (frameo_n[5], valido_n[5], dout[5], di5, fra_in5, frame_n, valid_n, busy_n[5]);
	port_out Pout6 (frameo_n[6], valido_n[6], dout[6], di6, fra_in6, frame_n, valid_n, busy_n[6]);
	port_out Pout7 (frameo_n[7], valido_n[7], dout[7], di7, fra_in7, frame_n, valid_n, busy_n[7]);
	port_out Pout8 (frameo_n[8], valido_n[8], dout[8], di8, fra_in8, frame_n, valid_n, busy_n[8]);
	port_out Pout9 (frameo_n[9], valido_n[9], dout[9], di9, fra_in9, frame_n, valid_n, busy_n[9]);
	port_out Pout10 (frameo_n[10], valido_n[10], dout[10], di10, fra_in10, frame_n, valid_n, busy_n[10]);
	port_out Pout11 (frameo_n[11], valido_n[11], dout[11], di11, fra_in11, frame_n, valid_n, busy_n[11]);
	port_out Pout12 (frameo_n[12], valido_n[12], dout[12], di12, fra_in12, frame_n, valid_n, busy_n[12]);
	port_out Pout13 (frameo_n[13], valido_n[13], dout[13], di13, fra_in13, frame_n, valid_n, busy_n[13]);
	port_out Pout14 (frameo_n[14], valido_n[14], dout[14], di14, fra_in14, frame_n, valid_n, busy_n[14]);
	port_out Pout15 (frameo_n[15], valido_n[15], dout[15], di15, fra_in15, frame_n, valid_n, busy_n[15]);
	
endmodule












