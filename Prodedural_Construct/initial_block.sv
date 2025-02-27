//types of DUT Signal Global(rst) data (a, data) control(read,write, enable) signal
//Usage of initial block
// Code your testbench here
// or browse Examples
`timescale 1ns/1ps //1ns-> time unit 1ps-> time precision
module tb();

reg clk,rst;
  reg [3:0] temp;
initial begin//global signal initalization 
clk=1'b0;
rst=1'b0;
end
 initial begin
 rst=1'b1;
   #10;
   rst=1'b0;
 end
initial begin//initalze value to the data signal
temp=4'b0010;
#10; //10 ns time unit
temp =4'b1111;
end
initial begin //waveform viewer
$dumpfile("dump.vcd");
$dumpvars;
end
initial begin //values of the variales to consol
  $monitor("Temp: %0d at time: %0t", temp,$time);
end
initial begin //stopping simulation
#200;
$finish();
end
endmodule
 //initial construct basically used to initalze data, specify waveform viewr, include displaing the values on consol statement
 //execute at the start of the simulation
 
