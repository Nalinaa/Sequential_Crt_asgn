module Dfftb; 
  reg d, clk, rstn ; 
  wire q;
Dff uut (.d(d), .clk(clk), .rstn(rstn) ,.q(q)); initial
begin
$dumpfile("dumpDff.vcd");
$dumpvars(0,Dffftb); clk=0;
d = 0;
rstn = 1;
#5 rstn = 0;
#80 rstn = 1;
$monitor($time, "\tclk=%b\t ,rstn=%b\t, d=%b\t, q=%b",clk,rstn,d,q); #100 $finish;
end
always #5 clk = ~clk; always #30 d= ~d; endmodule


