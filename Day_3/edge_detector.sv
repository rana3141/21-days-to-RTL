// Edge Detector

module day3 (input wire clk,
	input wire reset,
	input wire a_i,
	output wire rising_edge);

logic a_prev;
int count;
  
always @(posedge clk) begin
  if (reset) begin 
		a_prev <= 0;
  end 
  else begin
    //counter logic to count the number of edges
    if (rising_edge) begin
      count <= count+1;
    end
    a_prev <= a_i;
  end
end

// Rising edge when previous value = 0 and current value = 1
assign rising_edge  = ~a_prev & a_i;

endmodule : day3