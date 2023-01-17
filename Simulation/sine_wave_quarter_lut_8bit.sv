module sine_wave_quarter_lut_8bit
(
	input logic [5:0] address,
	output logic [7:0] q
);

	always_comb
	begin
		case(address)
			   0: q = 8'h00;
			   1: q = 8'h02;
			   2: q = 8'h03;
			   3: q = 8'h05;
			   4: q = 8'h06;
			   5: q = 8'h08;
			   6: q = 8'h09;
			   7: q = 8'h0b;
			   8: q = 8'h0c;
			   9: q = 8'h0e;
			  10: q = 8'h10;
			  11: q = 8'h11;
			  12: q = 8'h13;
			  13: q = 8'h14;
			  14: q = 8'h16;
			  15: q = 8'h17;
			  16: q = 8'h18;
			  17: q = 8'h1a;
			  18: q = 8'h1b;
			  19: q = 8'h1d;
			  20: q = 8'h1e;
			  21: q = 8'h20;
			  22: q = 8'h21;
			  23: q = 8'h22;
			  24: q = 8'h24;
			  25: q = 8'h25;
			  26: q = 8'h26;
			  27: q = 8'h27;
			  28: q = 8'h29;
			  29: q = 8'h2a;
			  30: q = 8'h2b;
			  31: q = 8'h2c;
			  32: q = 8'h2d;
			  33: q = 8'h2e;
			  34: q = 8'h2f;
			  35: q = 8'h30;
			  36: q = 8'h31;
			  37: q = 8'h32;
			  38: q = 8'h33;
			  39: q = 8'h34;
			  40: q = 8'h35;
			  41: q = 8'h36;
			  42: q = 8'h37;
			  43: q = 8'h38;
			  44: q = 8'h38;
			  45: q = 8'h39;
			  46: q = 8'h3a;
			  47: q = 8'h3b;
			  48: q = 8'h3b;
			  49: q = 8'h3c;
			  50: q = 8'h3c;
			  51: q = 8'h3d;
			  52: q = 8'h3d;
			  53: q = 8'h3e;
			  54: q = 8'h3e;
			  55: q = 8'h3e;
			  56: q = 8'h3f;
			  57: q = 8'h3f;
			  58: q = 8'h3f;
			  59: q = 8'h40;
			  60: q = 8'h40;
			  61: q = 8'h40;
			  62: q = 8'h40;
			  63: q = 8'h40;
			  default : q = 8'h00;
		endcase
	end

endmodule
