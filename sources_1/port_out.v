module port_out (frame_out, valid_out, data_out, din, fra_in, frame_in, valid_in, busy_n);
	
	input[15:0] din;
	input[15:0] frame_in;
	input[15:0] valid_in;
	input[15:0] fra_in;
	output reg frame_out;
	output reg valid_out;
	output reg data_out;
	output reg busy_n;
	
	
	always@(*) begin
		if (!frame_in[0]&&fra_in[0]&&!valid_in[0]) begin
			data_out= din[0];
			frame_out= frame_in[0];
			valid_out= valid_in[0];
			busy_n= !(frame_in[0]);
		end else 		
			if (!frame_in[1]&&fra_in[1]&&!valid_in[1]) begin
				data_out=  din[1];
				frame_out= frame_in[1];
				valid_out= valid_in[1];
				busy_n= !(frame_in[1]);
			end else
				if (!frame_in[2]&&fra_in[2]&&!valid_in[2]) begin
				data_out=  din[2];
				frame_out= frame_in[2];
				valid_out= valid_in[2];
				busy_n= !(frame_in[2]);
				end else
				if (!frame_in[3]&&fra_in[3]&&!valid_in[3]) begin
				data_out=  din[3];
				frame_out= frame_in[3];
				valid_out= valid_in[3];
				busy_n= !(frame_in[3]);
					end else
						if (!frame_in[4]&&fra_in[4]&&!valid_in[4]) begin
						data_out=  din[4];
						frame_out= frame_in[4];
						valid_out= valid_in[4];
						busy_n= !(frame_in[4]);
						end else
							if (!frame_in[5]&&fra_in[5]&&!valid_in[5]) begin
							data_out=  din[5];
							frame_out= frame_in[5];
							valid_out= valid_in[5];
							busy_n= !(frame_in[5]);
							end else
								if (!frame_in[6]&&fra_in[6]&&!valid_in[6]) begin
								data_out=  din[6];
								frame_out= frame_in[6];
								valid_out= valid_in[6];
								busy_n= !(frame_in[6]);
								end else 		
									if (!frame_in[7]&&fra_in[7]&&!valid_in[7]) begin
									data_out=  din[7];
									frame_out= frame_in[7];
									valid_out= valid_in[7];
									busy_n= !(frame_in[7]);
									end else
										if (!frame_in[8]&&fra_in[8]&&!valid_in[8]) begin
										data_out=  din[8];
										frame_out= frame_in[8];
										valid_out= valid_in[8];
										busy_n= !(frame_in[8]);
										end else
											if (!frame_in[9]&&fra_in[9]&&!valid_in[9]) begin
											data_out=  din[9];
											frame_out= frame_in[9];
											valid_out= valid_in[9];
											busy_n= !(frame_in[9]);
											end else
												if (!frame_in[10]&&fra_in[10]&&!valid_in[10]) begin
												data_out=  din[10];
												frame_out= frame_in[10];
												valid_out= valid_in[10];
												busy_n= !(frame_in[10]);
												end else
													if (!frame_in[11]&&fra_in[11]&&!valid_in[11]) begin
													data_out=  din[11];
													frame_out= frame_in[11];
													valid_out= valid_in[11];
													busy_n= !(frame_in[11]);
													end else
														if (!frame_in[12]&&fra_in[12]&&!valid_in[12]) begin
														data_out=  din[12];
														frame_out= frame_in[12];
														valid_out= valid_in[12];
														busy_n= !(frame_in[12]);
													end else
														if (!frame_in[13]&&fra_in[13]&&!valid_in[13]) begin
														data_out=  din[13];
														frame_out= frame_in[13];
														valid_out= valid_in[13];
														busy_n= !(frame_in[13]);
														end else
															if (!frame_in[14]&&fra_in[14]&&!valid_in[14]) begin
															data_out=  din[14];
															frame_out= frame_in[14];
															valid_out= valid_in[14];
															busy_n= !(frame_in[14]);
															end else 
																if (!frame_in[15]&&fra_in[15]&&!valid_in[15]) begin
																data_out=  din[15];
																frame_out= frame_in[15];
																valid_out= valid_in[15];
																busy_n= !(frame_in[15]);
																end else begin
																	frame_out=1;
																	valid_out=1;
																	data_out= 1'bz;
																	busy_n=0;
																end
	end
endmodule

