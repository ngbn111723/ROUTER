module classifi ( fra_in0, fra_in1,fra_in2, fra_in3,fra_in4,fra_in5,fra_in6,fra_in7,
						fra_in8, fra_in9,fra_in10, fra_in11,fra_in12,fra_in13,fra_in14,fra_in15,
						request0, request1, request2, request3, request4, request5, request6, request7,
						request8, request9, request10, request11, request12, request13, request14, request15
);

							output[15:0] fra_in0;
							output[15:0] fra_in1;
							output[15:0] fra_in2;
							output[15:0] fra_in3;
							output[15:0] fra_in4;
							output[15:0] fra_in5;
							output[15:0] fra_in6;
							output[15:0] fra_in7;
							output[15:0] fra_in8;
							output[15:0] fra_in9;
							output[15:0] fra_in10;
							output[15:0] fra_in11;
							output[15:0] fra_in12;
							output[15:0] fra_in13;
							output[15:0] fra_in14;
							output[15:0] fra_in15;
							input[3:0] request0, request1, request2, request3, request4, request5, request6, request7;
							input[3:0] request8, request9, request10, request11, request12, request13, request14, request15;
							
assign fra_in0[0]  = (request0==4'b0000);
assign fra_in0[1]  = (request1==4'b0000);
assign fra_in0[2]  = (request2==4'b0000);
assign fra_in0[3]  = (request3==4'b0000);
assign fra_in0[4]  = (request4==4'b0000);
assign fra_in0[5]  = (request5==4'b0000);
assign fra_in0[6]  = (request6==4'b0000);
assign fra_in0[7]  = (request7==4'b0000);
assign fra_in0[8]  = (request8==4'b0000);
assign fra_in0[9]  = (request9==4'b0000);
assign fra_in0[10] = (request10==4'b0000);
assign fra_in0[11] = (request11==4'b0000);
assign fra_in0[12] = (request12==4'b0000);
assign fra_in0[13] = (request13==4'b0000);
assign fra_in0[14] = (request14==4'b0000);
assign fra_in0[15] = (request15==4'b0000);

assign fra_in1[0]  = (request0==4'b0001);
assign fra_in1[1]  = (request1==4'b0001);
assign fra_in1[2]  = (request2==4'b0001);
assign fra_in1[3]  = (request3==4'b0001);
assign fra_in1[4]  = (request4==4'b0001);
assign fra_in1[5]  = (request5==4'b0001);
assign fra_in1[6]  = (request6==4'b0001);
assign fra_in1[7]  = (request7==4'b0001);
assign fra_in1[8]  = (request8==4'b0001);
assign fra_in1[9]  = (request9==4'b0001);
assign fra_in1[10] = (request10==4'b0001);
assign fra_in1[11] = (request11==4'b0001);
assign fra_in1[12] = (request12==4'b0001);
assign fra_in1[13] = (request13==4'b0001);
assign fra_in1[14] = (request14==4'b0001);
assign fra_in1[15] = (request15==4'b0001);

assign fra_in2[0]  = (request0==4'b0010);
assign fra_in2[1]  = (request1==4'b0010);
assign fra_in2[2]  = (request2==4'b0010);
assign fra_in2[3]  = (request3==4'b0010);
assign fra_in2[4]  = (request4==4'b0010);
assign fra_in2[5]  = (request5==4'b0010);
assign fra_in2[6]  = (request6==4'b0010);
assign fra_in2[7]  = (request7==4'b0010);
assign fra_in2[8]  = (request8==4'b0010);
assign fra_in2[9]  = (request9==4'b0010);
assign fra_in2[10] = (request10==4'b0010);
assign fra_in2[11] = (request11==4'b0010); 
assign fra_in2[12] = (request12==4'b0010);
assign fra_in2[13] = (request13==4'b0010);
assign fra_in2[14] = (request14==4'b0010);
assign fra_in2[15] = (request15==4'b0010);

assign fra_in3[0]  = (request0==4'b0011) ;
assign fra_in3[1]  = (request1==4'b0011) ;
assign fra_in3[2]  = (request2==4'b0011);
assign fra_in3[3]  = (request3==4'b0011) ;
assign fra_in3[4]  = (request4==4'b0011); 
assign fra_in3[5]  = (request5==4'b0011) ;
assign fra_in3[6]  = (request6==4'b0011) ;
assign fra_in3[7]  = (request7==4'b0011) ;
assign fra_in3[8]  = (request8==4'b0011) ;
assign fra_in3[9]  = (request9==4'b0011) ;
assign fra_in3[10] = (request10==4'b0011);
assign fra_in3[11] = (request11==4'b0011) ;
assign fra_in3[12] = (request12==4'b0011) ;
assign fra_in3[13] = (request13==4'b0011) ;
assign fra_in3[14] = (request14==4'b0011) ;
assign fra_in3[15] = (request15==4'b0011) ;

assign fra_in4[0] = (request0==4'b0100);
assign fra_in4[1] = (request1==4'b0100) ;
assign fra_in4[2] = (request2==4'b0100);
assign fra_in4[3] = (request3==4'b0100);
assign fra_in4[4] = (request4==4'b0100) ;
assign fra_in4[5] = (request5==4'b0100) ; 
assign fra_in4[6] = (request6==4'b0100) ;
assign fra_in4[7] = (request7==4'b0100) ; 
assign fra_in4[8] = (request8==4'b0100) ;
assign fra_in4[9] = (request9==4'b0100) ;
assign fra_in4[10] = (request10==4'b0100);
assign fra_in4[11] = (request11==4'b0100) ;
assign fra_in4[12] = (request12==4'b0100); 
assign fra_in4[13] = (request13==4'b0100); 
assign fra_in4[14] = (request14==4'b0100);
assign fra_in4[15] = (request15==4'b0100);

assign fra_in5[0] = (request0==4'b0101)  ;
assign fra_in5[1] = (request1==4'b0101) ;
assign fra_in5[2] = (request2==4'b0101) ;
assign fra_in5[3] = (request3==4'b0101)  ;
assign fra_in5[4] = (request4==4'b0101);
assign fra_in5[5] = (request5==4'b0101)  ;
assign fra_in5[6] = (request6==4'b0101)  ;
assign fra_in5[7] = (request7==4'b0101) ;
assign fra_in5[8] = (request8==4'b0101)  ;
assign fra_in5[9] = (request9==4'b0101)  ;
assign fra_in5[10] = (request10==4'b0101) ;
assign fra_in5[11] = (request11==4'b0101) ;
assign fra_in5[12] = (request12==4'b0101) ;
assign fra_in5[13] = (request13==4'b0101) ;
assign fra_in5[14] = (request14==4'b0101) ;
assign fra_in5[15] = (request15==4'b0101) ;

assign fra_in6[0] = (request0==4'b0110) ;
assign fra_in6[1] = (request1==4'b0110) ;
assign fra_in6[2] = (request2==4'b0110) ;
assign fra_in6[3] = (request3==4'b0110) ;
assign fra_in6[4] = (request4==4'b0110)  ;
assign fra_in6[5] = (request5==4'b0110) ;
assign fra_in6[6] = (request6==4'b0110)  ;
assign fra_in6[7] = (request7==4'b0110)  ;
assign fra_in6[8] = (request8==4'b0110)  ;
assign fra_in6[9] = (request9==4'b0110)  ;
assign fra_in6[10] = (request10==4'b0110) ;
assign fra_in6[11] = (request11==4'b0110) ;
assign fra_in6[12] = (request12==4'b0110) ;
assign fra_in6[13] = (request13==4'b0110) ;
assign fra_in6[14] = (request14==4'b0110) ;
assign fra_in6[15] = (request15==4'b0110) ;

assign fra_in7[0] = (request0==4'b0111)  ;
assign fra_in7[1] = (request1==4'b0111)  ;
assign fra_in7[2] = (request2==4'b0111)  ;
assign fra_in7[3] = (request3==4'b0111)  ;
assign fra_in7[4] = (request4==4'b0111)  ;
assign fra_in7[5] = (request5==4'b0111)  ;
assign fra_in7[6] = (request6==4'b0111)  ;
assign fra_in7[7] = (request7==4'b0111) ;
assign fra_in7[8] = (request8==4'b0111)  ;
assign fra_in7[9] = (request9==4'b0111)  ;
assign fra_in7[10] = (request10==4'b0111);
assign fra_in7[11] = (request11==4'b0111) ;
assign fra_in7[12] = (request12==4'b0111) ;
assign fra_in7[13] = (request13==4'b0111) ;
assign fra_in7[14] = (request14==4'b0111) ;
assign fra_in7[15] = (request15==4'b0111);

assign fra_in8[0] = (request0==4'b1000)  ;
assign fra_in8[1] = (request1==4'b1000) ;
assign fra_in8[2] = (request2==4'b1000) ;
assign fra_in8[3] = (request3==4'b1000)  ;
assign fra_in8[4] = (request4==4'b1000)  ;
assign fra_in8[5] = (request5==4'b1000)  ;
assign fra_in8[6] = (request6==4'b1000)  ;
assign fra_in8[7] = (request7==4'b1000) ;
assign fra_in8[8] = (request8==4'b1000)  ;
assign fra_in8[9] = (request9==4'b1000)  ;
assign fra_in8[10] = (request10==4'b1000);
assign fra_in8[11] = (request11==4'b1000) ;
assign fra_in8[12] = (request12==4'b1000) ;
assign fra_in8[13] = (request13==4'b1000) ;
assign fra_in8[14] = (request14==4'b1000) ;
assign fra_in8[15] = (request15==4'b1000) ;

assign fra_in9[0] = (request0==4'b1001)  ;
assign fra_in9[1] = (request1==4'b1001)  ;
assign fra_in9[2] = (request2==4'b1001)  ;
assign fra_in9[3] = (request3==4'b1001)  ;
assign fra_in9[4] = (request4==4'b1001) ;
assign fra_in9[5] = (request5==4'b1001)  ;
assign fra_in9[6] = (request6==4'b1001)  ;
assign fra_in9[7] = (request7==4'b1001)  ;
assign fra_in9[8] = (request8==4'b1001)  ;
assign fra_in9[9] = (request9==4'b1001)  ;
assign fra_in9[10] = (request10==4'b1001) ;
assign fra_in9[11] = (request11==4'b1001) ;
assign fra_in9[12] = (request12==4'b1001) ;
assign fra_in9[13] = (request13==4'b1001) ;
assign fra_in9[14] = (request14==4'b1001) ;
assign fra_in9[15] = (request15==4'b1001) ;

assign fra_in10[0] = (request0==4'b1010)  ;
assign fra_in10[1] = (request1==4'b1010) ;
assign fra_in10[2] = (request2==4'b1010) ;
assign fra_in10[3] = (request3==4'b1010) ;
assign fra_in10[4] = (request4==4'b1010) ;
assign fra_in10[5] = (request5==4'b1010) ;
assign fra_in10[6] = (request6==4'b1010) ;
assign fra_in10[7] = (request7==4'b1010) ;
assign fra_in10[8] = (request8==4'b1010) ;
assign fra_in10[9] = (request9==4'b1010) ;
assign fra_in10[10] = (request10==4'b1010);
assign fra_in10[11] = (request11==4'b1010) ;
assign fra_in10[12] = (request12==4'b1010) ;
assign fra_in10[13] = (request13==4'b1010) ;
assign fra_in10[14] = (request14==4'b1010) ;
assign fra_in10[15] = (request15==4'b1010) ;

assign fra_in11[0] = (request0==4'b1011)  ;
assign fra_in11[1] = (request1==4'b1011)  ;
assign fra_in11[2] = (request2==4'b1011)  ;
assign fra_in11[3] = (request3==4'b1011)  ;
assign fra_in11[4] = (request4==4'b1011)  ;
assign fra_in11[5] = (request5==4'b1011)  ;
assign fra_in11[6] = (request6==4'b1011)  ;
assign fra_in11[7] = (request7==4'b1011)  ;
assign fra_in11[8] = (request8==4'b1011)  ;
assign fra_in11[9] = (request9==4'b1011)  ;
assign fra_in11[10] = (request10==4'b1011) ;
assign fra_in11[11] = (request11==4'b1011) ;
assign fra_in11[12] = (request12==4'b1011) ;
assign fra_in11[13] = (request13==4'b1011) ;
assign fra_in11[14] = (request14==4'b1011) ;
assign fra_in11[15] = (request15==4'b1011) ;

assign fra_in12[0] = (request0==4'b1100)  ;
assign fra_in12[1] = (request1==4'b1100)  ;
assign fra_in12[2] = (request2==4'b1100)  ;
assign fra_in12[3] = (request3==4'b1100)  ;
assign fra_in12[4] = (request4==4'b1100)  ;
assign fra_in12[5] = (request5==4'b1100)  ;
assign fra_in12[6] = (request6==4'b1100)  ;
assign fra_in12[7] = (request7==4'b1100)  ;
assign fra_in12[8] = (request8==4'b1100)  ;
assign fra_in12[9] = (request9==4'b1100)  ;
assign fra_in12[10] = (request10==4'b1100) ;
assign fra_in12[11] = (request11==4'b1100) ;
assign fra_in12[12] = (request12==4'b1100) ;
assign fra_in12[13] = (request13==4'b1100) ;
assign fra_in12[14] = (request14==4'b1100) ;
assign fra_in12[15] = (request15==4'b1100) ;

assign fra_in13[0] = (request0==4'b1101)  ;
assign fra_in13[1] = (request1==4'b1101)  ;
assign fra_in13[2] = (request2==4'b1101)  ;
assign fra_in13[3] = (request3==4'b1101)  ;
assign fra_in13[4] = (request4==4'b1101)  ;
assign fra_in13[5] = (request5==4'b1101)  ;
assign fra_in13[6] = (request6==4'b1101)  ;
assign fra_in13[7] = (request7==4'b1101)  ;
assign fra_in13[8] = (request8==4'b1101)  ;
assign fra_in13[9] = (request9==4'b1101)  ;
assign fra_in13[10] = (request10==4'b1101) ;
assign fra_in13[11] = (request11==4'b1101);
assign fra_in13[12] = (request12==4'b1101) ;
assign fra_in13[13] = (request13==4'b1101) ;
assign fra_in13[14] = (request14==4'b1101) ;
assign fra_in13[15] = (request15==4'b1101) ;

assign fra_in14[0] = (request0==4'b1110)  ;
assign fra_in14[1] = (request1==4'b1110)  ;
assign fra_in14[2] = (request2==4'b1110)  ;
assign fra_in14[3] = (request3==4'b1110)  ;
assign fra_in14[4] = (request4==4'b1110)  ;
assign fra_in14[5] = (request5==4'b1110)  ;
assign fra_in14[6] = (request6==4'b1110)  ;
assign fra_in14[7] = (request7==4'b1110)  ;
assign fra_in14[8] = (request8==4'b1110)  ;
assign fra_in14[9] = (request9==4'b1110)  ;
assign fra_in14[10] = (request10==4'b1110) ;
assign fra_in14[11] = (request11==4'b1110) ;
assign fra_in14[12] = (request12==4'b1110) ;
assign fra_in14[13] = (request13==4'b1110) ;
assign fra_in14[14] = (request14==4'b1110) ;
assign fra_in14[15] = (request15==4'b1110) ;

assign fra_in15[0] = (request0===4'b1111);
assign fra_in15[1] = (request1===4'b1111);
assign fra_in15[2] = (request2===4'b1111);
assign fra_in15[3] = (request3===4'b1111);
assign fra_in15[4] = (request4===4'b1111);
assign fra_in15[5] = (request5===4'b1111);
assign fra_in15[6] = (request6===4'b1111);
assign fra_in15[7] = (request7===4'b1111);
assign fra_in15[8] = (request8===4'b1111);
assign fra_in15[9] = (request9===4'b1111);
assign fra_in15[10] = (request10===4'b1111);
assign fra_in15[11] = (request11===4'b1111);
assign fra_in15[12] = (request12===4'b1111);
assign fra_in15[13] = (request13===4'b1111);
assign fra_in15[14] = (request14===4'b1111);
assign fra_in15[15] = (request15===4'b1111);
endmodule