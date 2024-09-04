// Linear Feedback Shift Register (LFSR)
// Bit 1 and bit 3 is xored to get bit 0

module lfsr (input clk,
			input reset,
			output wire [3:0] lfsr_o);

reg [3:0] lfsr_ff; 
reg [3:0] nxt_lfsr;

always @(posedge clk) begin
	if (reset) 
		lfsr_ff <= 0;
	else 
		lfsr_ff <= nxt_lfsr;
end

assign nxt_lfsr = {lfsr_ff[2:0], lfsr_ff[1] ^ lfsr_ff[3]};

assign lfsr_o = lfsr_ff;

endmodule : lfsr