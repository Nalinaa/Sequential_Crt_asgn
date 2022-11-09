module dflipflop(d,clk,rstn,q); input d,clk,rstn; output reg q;
always@(posedge clk ) if(!rstn)
 

else endmodule
 
q<=0;

q
