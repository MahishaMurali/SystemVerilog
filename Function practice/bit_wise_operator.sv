module reverse_bits_module;
  bit [7:0] a,b,result;
  task bit_wise(bit [7:0] a,b,output bit [7:0] result);
  result=a^b;// output width of bitwise is equal to the width of inputs
  endtask
    initial begin
     a=8'b10101010;
     b=8'b11110000; 
      bit_wise(a,b,result);
               $display("a: %8b, b: %0b, result: %0b", a, b, result);
    end
endmodule
