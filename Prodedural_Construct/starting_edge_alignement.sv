`timescale 1ns/1ps
module tb();
reg clk,rst,clk50;
initial begin
clk=1'b0;
rst=1'b0;
clk50=1'b0;
end
always #5 clk=~clk;//100MHz
always begin
#5;
clk50=1'b1;
#10;
clk50=1'b0;
#5;
end

//always #10 clk2=~clk2; 
initial begin
#100;
$finish();
end
initial begin
$dumpfile("dump.vcd");
$dumpvars;
end
endmodule
