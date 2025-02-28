// Code your testbench here
// or browse Examples
class one;
  int data1;
 function new(int data1);
  this.data1=data1;
  endfunction
   function print();
    $display("class one: data1:%0d", data1);
  endfunction
endclass
class two extends one;
  int data2;
  function new(int data2,int data1);
    super.new(data1);
  this.data2=data2;
  endfunction
    function print();
      $display("class two : data2: %0d, data1: %0d",data2, data1);
  endfunction
endclass
module tb;
  one o;
  two t;
  initial begin
  o=new(5);
    t=new(4,3);
  $cast(t,o);
  t.print();
  o.print();
  end
endmodule
