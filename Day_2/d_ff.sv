// Synchronous d-flipflop

module day2(input logic clk,
			input logic reset,
			input logic d_i,
			output logic q);


always @(posedge clk) begin
	if (reset)
		q <= 0;
	else 
		q <= d_i;
end

endmodule


