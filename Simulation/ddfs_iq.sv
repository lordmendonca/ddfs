module ddfs_iq
(
	input logic clk,
	input logic reset_n,
	output logic [7:0] q_ftw,
	output logic [7:0] lut_address,
	output logic [7:0] q_sin,
	output logic [7:0] q_cos
);

	logic enable;
	
	time_base_generation #(.L(521)) inst_0 	( .clk(clk), .reset_n(reset_n), .q(enable));							

	logic [7:0] ftw;
	
	assign ftw = 8'b00000001;
	assign q_ftw = ftw;
	
	logic [7:0] lut_quaddress;
	
	phase_accumulator_8bit inst_2	(.clk(clk), .reset_n(reset_n), .enable(enable), .ftw(ftw), .q(lut_quaddress));
	
	assign lut_address = (lut_quaddress < 64)? lut_quaddress[5:0] :
								(lut_quaddress < 128)? (63 - lut_quaddress[5:0]) :
								(lut_quaddress < 192)? lut_quaddress[5:0] : (63 - lut_quaddress[5:0]);
								
	logic [7:0] q;
	
	sine_wave_lut_8bit inst_3	(.address(lut_address), .q(q));
	
	assign q_sin = (lut_quaddress < 128)? q : -q;
	
	logic [7:0] q_1;
	logic [7:0] lut_address_cos;
	
	assign lut_address_cos = 63 - lut_address[5:0];
	
	sine_wave_lut_8bit inst_4	(.address(lut_address_cos), .q(q_1));

	assign q_cos = (lut_quaddress < 64 || lut_quaddress > 192)? q_1 : -q_1;
											
endmodule
