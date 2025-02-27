
//always block always @()->always_comb, always_ff,always_latch
//always can be present in both testbench and DUT
//it can be synthesized
//comb-> sensitive to inputs; seq->sensitive to clk signal

`timescale 1ns/1ps
module tb();
reg clk,rst,clk2;
initial begin
clk=1'b0;
rst=1'b0;
end
always #5 clk=~clk;//100MHz
initial begin
clk2=1'b0;
end
always #10 clk2=~clk2; 
initial begin
#100;
$finish();
end
initial begin
$dumpfile("dump.vcd");
$dumpvars;
end
endmodule
//always usage
//start at 0th time and will execute the entire time duration unlike initial 
