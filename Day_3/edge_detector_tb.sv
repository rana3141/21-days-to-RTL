//Edge detector testbench

module day3_tb();

	logic clk;
	logic reset;
	logic a_i;
	logic rising_edge;
	logic falling_edge;

day3 day3_edge_det(.clk(clk),
			.reset(reset),
			.a_i(a_i),
			.rising_edge(rising_edge),
			.falling_edge(falling_edge)
			);

// Generate clock
initial begin
	clk = 1'b1;
	forever #5 clk = ~clk;
end

// Stimulus
initial begin
	reset <= 1'b1;
    a_i <= 1'b1;
    @(posedge clk);
    reset <= 1'b0;
    @(posedge clk);
    for (int i=0; i<32; i++) begin
    	a_i <= $random%2;
    	@(posedge clk);
    end
    $finish()
end

// To generate waveforms in Questasim simulator  
initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
 end

endmodule : day3_tb