module linear_lut_8bit
(
	input logic [7:0] address,
	output logic [7:0] q
);

	always_comb
	begin
		case(address)
		
			 0: q = 8'd0 ;
			 1: q = 8'd1 ;
			 2: q = 8'd2 ;
			 3: q = 8'd3 ;
			 4: q = 8'd4 ;
			 5: q = 8'd5 ;
			 6: q = 8'd6 ;
			 7: q = 8'd7 ;
			 8: q = 8'd8 ;
			 9: q = 8'd9 ;
			 10: q = 8'd10 ;
			 11: q = 8'd0 ;
			 12: q = 8'd1 ;
			 13: q = 8'd2 ;
			 14: q = 8'd3 ;
			 15: q = 8'd4 ;
			 16: q = 8'd5 ;
			 17: q = 8'd6 ;
			 18: q = 8'd7 ;
			 19: q = 8'd8 ;
			 20: q = 8'd9 ;
			 21: q = 8'd10 ;
			 22: q = 8'd0 ;
			 23: q = 8'd1 ;
			 24: q = 8'd2 ;
			 25: q = 8'd3 ;
			 26: q = 8'd4 ;
			 27: q = 8'd5 ;
			 28: q = 8'd6 ;
			 29: q = 8'd7 ;
			 30: q = 8'd8 ;
			 31: q = 8'd9 ;
			 32: q = 8'd10 ;
			 33: q = 8'd0 ;
			 34: q = 8'd1 ;
			 35: q = 8'd2 ;
			 36: q = 8'd3 ;
			 37: q = 8'd4 ;
			 38: q = 8'd5 ;
			 39: q = 8'd6 ;
			 40: q = 8'd7 ;
			 41: q = 8'd8 ;
			 42: q = 8'd9 ;
			 43: q = 8'd10 ;
			 44: q = 8'd0 ;
			 45: q = 8'd1 ;
			 46: q = 8'd2 ;
			 47: q = 8'd3 ;
			 48: q = 8'd4 ;
			 49: q = 8'd5 ;
			 50: q = 8'd6 ;
			 51: q = 8'd7 ;
			 52: q = 8'd8 ;
			 53: q = 8'd9 ;
			 54: q = 8'd10 ;
			 55: q = 8'd0 ;
			 56: q = 8'd1 ;
			 57: q = 8'd2 ;
			 58: q = 8'd3 ;
			 59: q = 8'd4 ;
			 60: q = 8'd5 ;
			 61: q = 8'd6 ;
			 62: q = 8'd7 ;
			 63: q = 8'd8 ;
			 64: q = 8'd9 ;
			 65: q = 8'd10 ;
			 66: q = 8'd0 ;
			 67: q = 8'd1 ;
			 68: q = 8'd2 ;
			 69: q = 8'd3 ;
			 70: q = 8'd4 ;
			 71: q = 8'd5 ;
			 72: q = 8'd6 ;
			 73: q = 8'd7 ;
			 74: q = 8'd8 ;
			 75: q = 8'd9 ;
			 76: q = 8'd10 ;
			 77: q = 8'd0 ;
			 78: q = 8'd1 ;
			 79: q = 8'd2 ;
			 80: q = 8'd3 ;
			 81: q = 8'd4 ;
			 82: q = 8'd5 ;
			 83: q = 8'd6 ;
			 84: q = 8'd7 ;
			 85: q = 8'd8 ;
			 86: q = 8'd9 ;
			 87: q = 8'd10 ;
			 88: q = 8'd0 ;
			 89: q = 8'd1 ;
			 90: q = 8'd2 ;
			 91: q = 8'd3 ;
			 92: q = 8'd4 ;
			 93: q = 8'd5 ;
			 94: q = 8'd6 ;
			 95: q = 8'd7 ;
			 96: q = 8'd8 ;
			 97: q = 8'd9 ;
			 98: q = 8'd10 ;
			 99: q = 8'd0 ;
			 100: q = 8'd1 ;
			 101: q = 8'd2 ;
			 102: q = 8'd3 ;
			 103: q = 8'd4 ;
			 104: q = 8'd5 ;
			 105: q = 8'd6 ;
			 106: q = 8'd7 ;
			 107: q = 8'd8 ;
			 108: q = 8'd9 ;
			 109: q = 8'd10 ;
			 110: q = 8'd0 ;
			 111: q = 8'd1 ;
			 112: q = 8'd2 ;
			 113: q = 8'd3 ;
			 114: q = 8'd4 ;
			 115: q = 8'd5 ;
			 116: q = 8'd6 ;
			 117: q = 8'd7 ;
			 118: q = 8'd8 ;
			 119: q = 8'd9 ;
			 120: q = 8'd10 ;
			 121: q = 8'd0 ;
			 122: q = 8'd1 ;
			 123: q = 8'd2 ;
			 124: q = 8'd3 ;
			 125: q = 8'd4 ;
			 126: q = 8'd5 ;
			 127: q = 8'd6 ;
			 128: q = 8'd7 ;
			 129: q = 8'd8 ;
			 130: q = 8'd9 ;
			 131: q = 8'd10 ;
			 132: q = 8'd0 ;
			 133: q = 8'd1 ;
			 134: q = 8'd2 ;
			 135: q = 8'd3 ;
			 136: q = 8'd4 ;
			 137: q = 8'd5 ;
			 138: q = 8'd6 ;
			 139: q = 8'd7 ;
			 140: q = 8'd8 ;
			 141: q = 8'd9 ;
			 142: q = 8'd10 ;
			 143: q = 8'd0 ;
			 144: q = 8'd1 ;
			 145: q = 8'd2 ;
			 146: q = 8'd3 ;
			 147: q = 8'd4 ;
			 148: q = 8'd5 ;
			 149: q = 8'd6 ;
			 150: q = 8'd7 ;
			 151: q = 8'd8 ;
			 152: q = 8'd9 ;
			 153: q = 8'd10 ;
			 154: q = 8'd0 ;
			 155: q = 8'd1 ;
			 156: q = 8'd2 ;
			 157: q = 8'd3 ;
			 158: q = 8'd4 ;
			 159: q = 8'd5 ;
			 160: q = 8'd6 ;
			 161: q = 8'd7 ;
			 162: q = 8'd8 ;
			 163: q = 8'd9 ;
			 164: q = 8'd10 ;
			 165: q = 8'd0 ;
			 166: q = 8'd1 ;
			 167: q = 8'd2 ;
			 168: q = 8'd3 ;
			 169: q = 8'd4 ;
			 170: q = 8'd5 ;
			 171: q = 8'd6 ;
			 172: q = 8'd7 ;
			 173: q = 8'd8 ;
			 174: q = 8'd9 ;
			 175: q = 8'd10 ;
			 176: q = 8'd0 ;
			 177: q = 8'd1 ;
			 178: q = 8'd2 ;
			 179: q = 8'd3 ;
			 180: q = 8'd4 ;
			 181: q = 8'd5 ;
			 182: q = 8'd6 ;
			 183: q = 8'd7 ;
			 184: q = 8'd8 ;
			 185: q = 8'd9 ;
			 186: q = 8'd10 ;
			 187: q = 8'd0 ;
			 188: q = 8'd1 ;
			 189: q = 8'd2 ;
			 190: q = 8'd3 ;
			 191: q = 8'd4 ;
			 192: q = 8'd5 ;
			 193: q = 8'd6 ;
			 194: q = 8'd7 ;
			 195: q = 8'd8 ;
			 196: q = 8'd9 ;
			 197: q = 8'd10 ;
			 198: q = 8'd0 ;
			 199: q = 8'd1 ;
			 200: q = 8'd2 ;
			 201: q = 8'd3 ;
			 202: q = 8'd4 ;
			 203: q = 8'd5 ;
			 204: q = 8'd6 ;
			 205: q = 8'd7 ;
			 206: q = 8'd8 ;
			 207: q = 8'd9 ;
			 208: q = 8'd10 ;
			 209: q = 8'd0 ;
			 210: q = 8'd1 ;
			 211: q = 8'd2 ;
			 212: q = 8'd3 ;
			 213: q = 8'd4 ;
			 214: q = 8'd5 ;
			 215: q = 8'd6 ;
			 216: q = 8'd7 ;
			 217: q = 8'd8 ;
			 218: q = 8'd9 ;
			 219: q = 8'd10 ;
			 220: q = 8'd0 ;
			 221: q = 8'd1 ;
			 222: q = 8'd2 ;
			 223: q = 8'd3 ;
			 224: q = 8'd4 ;
			 225: q = 8'd5 ;
			 226: q = 8'd6 ;
			 227: q = 8'd7 ;
			 228: q = 8'd8 ;
			 229: q = 8'd9 ;
			 230: q = 8'd10 ;
			 231: q = 8'd0 ;
			 232: q = 8'd1 ;
			 233: q = 8'd2 ;
			 234: q = 8'd3 ;
			 235: q = 8'd4 ;
			 236: q = 8'd5 ;
			 237: q = 8'd6 ;
			 238: q = 8'd7 ;
			 239: q = 8'd8 ;
			 240: q = 8'd9 ;
			 241: q = 8'd10 ;
			 242: q = 8'd0 ;
			 243: q = 8'd1 ;
			 244: q = 8'd2 ;
			 245: q = 8'd3 ;
			 246: q = 8'd4 ;
			 247: q = 8'd5 ;
			 248: q = 8'd6 ;
			 249: q = 8'd7 ;
			 250: q = 8'd8 ;
			 251: q = 8'd9 ;
			 252: q = 8'd10 ;
			 253: q = 8'd0 ;
			 254: q = 8'd1 ;
			 255: q = 8'd2 ;


		endcase
	end

endmodule