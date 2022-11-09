module one_hot_cnt (
output reg [7:0] out			, input wire	enable		, input wire	clk	, input wire	reset
);

always_ff @ (posedge clk) if (reset) begin
 
out <= 8'b0000_0001 ;
end else if (enable) begin
out <= {out[6],out[5],out[4],out[3],
out[2],out[1],out[0],out[7]};
end endmodule
