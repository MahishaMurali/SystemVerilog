class constraint_prac;
  rand bit [3:0] x;
  constraint even { x[0]==0;}
endclass
module tb;
  constraint_prac cp;
initial begin
  cp=new();
  repeat(10) begin
  cp.randomize();
  $display( "x: %0d", cp.x);
  end
end
endmodule
