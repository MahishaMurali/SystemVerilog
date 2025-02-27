module parity_bits_module;
  bit parity;
  bit [7:0] a;
  function bit even_parity_gen( bit[7:0] a);
parity= ^a;
return parity;
endfunction
function bit odd_parity_gen( bit[7:0] a);
parity= ~^a;
return parity;
endfunction
    initial begin
     a=8'b10101010;
      parity=even_parity_gen(a);
      $display("a: %8b, partity: %0b", a, parity);
        parity=odd_parity_gen(a);
      $display("a: %8b, partity: %0b", a, parity);
    end
endmodule
