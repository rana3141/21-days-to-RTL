// LFSR Testbench

module tb;

logic clk;
logic reset;
logic [3:0] lfsr_o;

lfsr dut(clk,reset,lfsr_o);

initial begin
	clk = 1;
	forever clk = ~clk;
end

initial begin
	reset = 1;
	@(posedge clk);
	reset = 0;
	for (int i=0;i<32;i++)
		@(posedge clk);
	$finish();

end

initial begin
    $dumpfile("fifo.vcd");
   $dumpvars(0, tb);
end

endmodule
