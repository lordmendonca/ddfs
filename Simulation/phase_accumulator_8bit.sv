module phase_accumulator_8bit
(
	input logic clk,
	input logic reset_n,
	input logic enable,
	input logic [7:0] ftw,
	output logic [7:0] q
);

	//logic [11:0] acc_output; 
	
	always_ff@(posedge clk)
	begin
	if(0 == reset_n)
		q <= '0;
		//acc_output <= '0;
	else if(enable)
		//q <= q + 1'b1;
		q <= q + ftw;
		//acc_output <= acc_output + ftw;
	end
	
	//assign q = {acc_output[11:4]};

endmodule
