`timescale 						1ns/1ps
`define HALF_CLOCK_PERIOD	10
`define RESET_PERIOD			100
`define SIM_DURATION			600000000

module chirp_tb();

	logic tb_clk = 0;
	logic tb_reset_n = 0;
	logic [15:0] tb_q_ftw = 0;
	logic [7:0] tb_lut_address = 0;
	logic [7:0] tb_q = 0;

	initial
	begin : clock_generation_process
		tb_clk = 1'b0;
		forever
		begin
			#`HALF_CLOCK_PERIOD tb_clk = ~tb_clk;
		end
	end : clock_generation_process

	initial
	begin : testbench_scheduler
		$display("Simulation starts ... ");
		#`RESET_PERIOD
		tb_reset_n = 1'b1;
		#`SIM_DURATION
		$stop();
	end : testbench_scheduler

	chirp dut_0	(
						.clk(tb_clk),
						.reset_n(tb_reset_n),
						.q_ftw(tb_q_ftw),
						.q_lut_address(tb_lut_address),
						.q(tb_q)
					);

endmodule
