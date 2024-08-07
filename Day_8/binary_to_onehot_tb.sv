// Binary to one hot testbench

module day8_tb();

localparam BIN_W = 4;
localparam ONE_HOT_W = 16;

logic [BIN_W-1:0] bin_i;
logic [ONE_HOT_W-1:0] one_hot_o;

day8 #(BIN_W, ONE_HOT_W) day8_bin_onehot(.bin_i(bin_i),
						.one_hot_o(one_hot_o));

initial begin
    for(int i=0; i<32; i=i+1) begin
    	bin_i = $urandom_range(0, 4'hF);
    	#5;
    end
    $finish();
end

// To generate waveforms in the simulator
initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
end

endmodule : day8_tb