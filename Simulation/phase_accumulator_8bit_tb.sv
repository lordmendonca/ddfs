`timescale 						1ns/1ps
`define HALF_CLOCK_PERIOD	10
`define RESET_PERIOD			100
`define SIM_DURATION			25000

module phase_accumulator_8bit_tb();

	logic tb_clk = 0;
	logic tb_reset_n = 0;
	logic tb_enable = 0;
	logic [7:0] tb_q;

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

	phase_accumulator_8bit dut_0	(
												.clk(tb_clk),
												.reset_n(tb_reset_n),
												.enable(tb_enable),
												.q(tb_q)
											);

	
endmodule
