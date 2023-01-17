module ddfs
(
	input logic clk,
	input logic reset_n,
	output logic [15:0] q_ftw,
	output logic [7:0] q_lut_address,
	output logic [7:0] q
);
	
	localparam SYSTEM_FREQUENCY = 50000000;
	localparam SAMPLING_FREQUENCY = 96000;
	localparam CLOCK_TICKS = SYSTEM_FREQUENCY/SAMPLING_FREQUENCY;
	
	logic enable = 0;
	
	time_base_generation #(.L(CLOCK_TICKS + 1)) inst_0	(
																			.clk(clk),
																			.reset_n(reset_n),
																			.q(enable)
																		);
																	
	// fv[n] = f0 + Bn, B = deltaf/chirprate
	// FTW = (fv/fs) * 2^n;
	
	// f0 =  440Hz =>  FTW = 1.1733
	//Q8.8 representation
	localparam [15:0] ftw0 = 16'b0000000100101100;
	
	
	// delatf = 10Hz => FTW = 0.0267
	//Q8.8 representation
	localparam [15:0] ftwB = 16'b0000000000000111;
	
	//chirprate = 5ms => 200Hz
	localparam CHIRP_RATE = 200;
	localparam CHIRP_TICKS = SYSTEM_FREQUENCY/CHIRP_RATE;
	
	logic chirp_enable = 0;
	
	time_base_generation #(.L(CHIRP_TICKS)) inst_1	(
																			.clk(clk),
																			.reset_n(reset_n),
																			.q(chirp_enable)
																		);
	
	logic [15:0] ftwChirp = 0;
	
	always_ff@(posedge clk)
	if(0 == reset_n)
		ftwChirp <= ftw0;
	else if(chirp_enable)
		ftwChirp <= ftwChirp + ftwB;
		
	assign q_ftw = ftwChirp;
	
	logic [15:0] lut_address = 0;
	
	phase_accumulator_16bit	inst_2	(
													.clk(clk),
													.reset_n(reset_n),
													.enable(enable),
													.ftw(ftwChirp),
													.q(lut_address)
												);
	
	assign q_lut_address = lut_address[15:8];
	
	sine_wave_lut_8bit	inst_3	(
												.address(lut_address[15:8]),
												.q(q)
											);
											
endmodule
