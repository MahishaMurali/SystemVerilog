class range_prac;
  rand bit [7:0] x;
  constraint even { x>50; x<200;}
endclass
module tb;
  range_prac cp;
initial begin
  cp=new();
  repeat(10) begin
  cp.randomize();
  $display( "x: %0d", cp.x);
  end
end
endmodule
