// Binary to One-hot

module day8#(parameter BIN_WIDTH=4,
		parameter ONE_HOT_WIDTH=8)(
		input wire [BIN_WIDTH-1:0] bin_i,
		output wire [ONE_HOT_WIDTH-1:0] one_hot_o);

assign one_hot_o = 1'b1 << bin_i;

endmodule : day8