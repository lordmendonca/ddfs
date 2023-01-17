module phase_accumulator_16bit
(
	input logic clk,
	input logic reset_n,
	input logic enable,
	input logic [15:0] ftw,
	output logic [15:0] q
);
	
	always_ff@(posedge clk)
	begin
	if(0 == reset_n)
		q <= 0;
	else if(enable)
		q <= q + ftw;
	end

endmodule
