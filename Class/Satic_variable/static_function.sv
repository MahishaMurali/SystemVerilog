// Code your testbench here
// or browse Examples
class one;
  static int data1;
 function new(int data1);
  this.data1=data1;
  endfunction
 static function print();
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
  two t;
  initial begin
  t=new(4,3);
  one::print();
  end
endmodule

// static function can only access the static variable of the class.. the only difference is the class accessing the method need not have the class instance of its own 
// it can be accessed whith scopping operator 
