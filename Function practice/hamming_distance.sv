module barrel_shifter_module;

    parameter int WIDTH = 8;  // Define bit width
    bit [WIDTH-1:0] d1,d2;
    int h_dist=0,result;
    // Function to perform hamming distance without using countones
 /* function int hamming_dist(bit [WIDTH-1:0] d1, d2);
    foreach(d1[i]) begin
      if(d1[i]!=d2[i])
      h_dist++;
    end
    return h_dist;
        
    endfunction*/
  //approch 2
   function int hamming_dist(bit [WIDTH-1:0] d1, d2);
        h_dist= $countones(d1^d2);
   return h_dist;
 endfunction

    initial begin
        d1= 8'b10101110;
        d2= 8'b10101011;
      result = hamming_dist(d1,d2);
      $display("Input1  %08b, Input2 : %08b", d1,d2);
      $display("Hamming distance : %0d",result);
    end

endmodule
///approch 2
