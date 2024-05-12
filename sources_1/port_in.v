module port_in (data_out, reset, frame, valid, data_in, clk, request);

	output reg[15:0] data_out;
	// output[1:0] state_;
	// output[1:0] next_state_;
	// output [3:0] address_;
	// output [2:0] count_;
	output reg [3:0] request;
	input reset;
	input frame;
	input valid;
	input data_in;
	input clk;
	
	parameter[1:0] start= 0, header=1, pad=2, payload=3;
	reg[1:0] state, next_state;
	reg[2:0] count;
	reg dout;
	reg[3:0] address;
	wire din;
	
	assign din= data_in;
	
	//assign state_=state;
	//assign next_state_= next_state;
	//assign address_=address;
	//assign count_=count;
	

	always @(posedge clk) begin
		if (!reset) begin
				state=0;
			end
		else state= next_state;
	end
	
	always @(*) begin
		 case (state)
		 
			start: begin	
					 if (frame==0) begin
							next_state= header;
						end
					 else next_state= start;
					 end
					 
			header: 
				if (frame==1) next_state= start;
				else
					begin
						if (count<3) next_state= header;
						else
							if(valid==1) next_state= pad;
							else	next_state= payload;
					end
				
			pad: 			
				if (frame==1) next_state=start;
				else
					if (valid==0) next_state= payload;
					else next_state= pad;
				
			payload: 
				if (frame==1) next_state= start;
				else next_state= payload;
				
			default: next_state= start;
			
		endcase
	end
	
	always @(posedge clk) begin
		if (state==header) begin address= (address<<1)|{3'b0,din}; count= count +1'b1; end
		else count=0;
		if (state==start) address=0;
	end
	always @(*) begin
		case(state)
			start:  dout = 1'bz;
			header: dout = 1'bz;
			pad:    dout = 1'bz;
			payload: if (valid==1)
					dout= 1'bz;
				else dout= data_in;
			default: dout= 1'bz; 
	endcase
	end
	
	always @(*) begin
		if (state==payload||state==pad)
			case(address)
				4'b0000: 
					begin 
						data_out={15'bz,dout};
						request = 4'b0000;
					end
				4'b0001: 
					begin 
						data_out= {14'bz,dout,1'bz};
						request = 4'b0001;
					end
				4'b0010: 
					begin 
						data_out= {13'bz,dout,2'bz};
						request = 4'b0010;
					end
				4'b0011: 
					begin 
						data_out= {12'bz,dout,3'bz};
						request = 4'b0011;
					end
				4'b0100: 
					begin 
						data_out= {11'bz,dout,4'bz};
						request = 4'b0100;
					end
				4'b0101: 
					begin 
						data_out= {10'bz,dout,5'bz};
						request = 4'b0101;
					end
				4'b0110: 
					begin 
						data_out= {9'bz,dout,6'bz};
						request =4'b0110;
					end
				4'b0111: 
					begin 
						data_out= {8'bz,dout,7'bz};;
						request = 4'b0111;
					end
				4'b1000: 
					begin 
						data_out= {7'bz,dout,8'bz};
						request = 4'b1000;
					end
				4'b1001: 
					begin 
						data_out= {6'bz,dout,9'bz};
						request = 4'b1001;
					end
				4'b1010: 
					begin 
						data_out= {5'bz,dout,10'bz};
						request = 4'b1010;
					end
				4'b1011: 
					begin 
						data_out= {4'bz,dout,11'bz};
						request = 4'b1011;
					end
				4'b1100: 
					begin 
						data_out= {3'bz,dout,12'bz};
						request = 4'b1100;
					end
				4'b1101: 
					begin 
						data_out= {2'bz,dout,13'bz};
						request = 4'b1101;
					end
				4'b1110: 
					begin 
						data_out= {1'bz,dout,14'bz};
						request = 4'b1110;
					end
				4'b1111: 
					begin 
						data_out= {dout,15'bz};
						request = 4'b1111;
					end
				default:
					begin 
						data_out= 16'bz;
						request = 4'bz;
					end
				endcase
		else begin 
			data_out= 16'bz;
			request = 4'bz;
			end
	end
endmodule

