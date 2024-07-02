module mod10dcounter(
input clk,rst,
output reg [3:0]c);

always@(posedge clk or posedge rst) begin
if (rst)
c<=4'b1001;
else if (c==4'b0000)
c<=4'b1001;
else
c<=c-1;
end
endmodule
