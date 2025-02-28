class constraint_prac;
  rand bit [3:0] x;
  constraint op { x==4'h1 || x==4'h3 || x==4'h5 || x==4'hf;}
endclass
module tb;
  constraint_prac cp;
initial begin
  cp=new();
  repeat(10) begin
  cp.randomize();
    $display( "x: %0h", cp.x);
  end
end
endmodule
