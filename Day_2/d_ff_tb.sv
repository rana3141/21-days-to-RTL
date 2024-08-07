// D-flipflop testbench

module day2_tb ();

	logic clk;
	logic reset;
	logic d_i;
	logic q;

day2 Day2_d_ff (.clk(clk),
				.reset(reset),
				.d_i(d_i),
				.q(q));

// Generate clk
initial begin
	clk = 1'b1;
	forever #5 clk = ~clk;
end

// Stimulus
initial begin
    reset = 1'b1;
    d_i = 1'b0;
    @(posedge clk);
    reset = 1'b0;
    #8;
    d_i = 1'b1;
    @(posedge clk);
    @(posedge clk);
    d_i = 1'b0;
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    d_i = 1'b1;
    @(posedge clk);
    @(posedge clk);
    d_i = 1'b0;
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    d_i = 1'b0;
    @(posedge clk);
   	d_i = 1'b0;
    $finish();
end
  
initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
 end

endmodule