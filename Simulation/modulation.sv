module tbg #(parameter M = 521)
(
	input logic clk,
	input logic reset_n,
	output logic q
)

	localparam BITWIDTH = $clog2(M);
	
	logic [BITWIDTH:0] tbg_var = 0;
	
	always_ff@(posedge clk)
	if(0 == reset_n)
		tbg_var <= 0;
	else
		tbg_var <= (tbg_var + 1'b1) % M;
	
	assign q = (tbg_var == (M -1))? 1'b1 : 1'b0;

endmodule

module phase_acc
(
	input logic clk,
	input logic reset_n,
	input logic enable,
	input logic [15:0] ftw,
	output logic [15:0] q
)

	always_ff@(posedge clk)
	if(0 == reset_n)
		q <= 0;
	else if(enable)
		q <= q + ftw;

endmodule

