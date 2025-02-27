module reverse_bits_module;

  int min,max,val;
  task random_value_range(int min,int max,output int val);
    val= min+ ($urandom%(1+max-min));
   endtask

    initial begin
      min=5;max=100;
      repeat(10) begin
        random_value_range(min,max,val);
        $display("val     : %0d", val);
      end
    end
endmodule
