module time_base_generation
#(parameter L = 521)
(
	input logic clk,
	input logic reset_n,
	output logic q
);

	localparam BITWIDTH = $clog2(L);

	logic [BITWIDTH-1:0] time_base = 0;

	always_ff@(posedge clk)
	begin
	if(0 == reset_n)
		time_base <= '0;
	else
		time_base <= (time_base + 1'b1) % L;
	end
	
	assign q = (time_base == (L - 1'b1))? 1'b1 : 1'b0;

endmodule
