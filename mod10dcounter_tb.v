module mod10dcounter_tb;
reg clk,rst;
wire [3:0]c;

mod10dcounter uut(.clk(clk),.rst(rst),.c(c));

initial
begin
clk=0;
rst=1; #15
rst=0;
#500 $finish;
end
always #25 clk=~clk;
endmodule
