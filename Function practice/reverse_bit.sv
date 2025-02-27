module reverse_bits_module;

    bit [7:0] input_signal, reversed_signal;

    // Function to reverse the bits of an 8-bit input
   function bit [7:0] reverse_bits(bit [7:0] data);
     bit [0:7] result;//=8'b00000000;
    int k = 7;
     foreach (data[i]) begin //in for-each the i value is determined by the left most position index
        result[k] = data[i]; // Assign bits in reverse order
        k--;
    end
    return result;
endfunction

    initial begin
        input_signal = 8'b10110111;  // Example input
        reversed_signal = reverse_bits(input_signal); // Call function

        $display("Input     : %0b", input_signal);
        $display("Reversed  : %0b", reversed_signal);
    end
endmodule
//alternative
/*module reverse_bits_module;

  bit [7:0] input_signal;
  bit [0:7] reversed_signal;
    initial begin
        input_signal = 8'b10110111;  // Example input
        reversed_signal =input_signal; // Call function
        $display("Input     : %0b", input_signal);
        $display("Reversed  : %0b", reversed_signal);
    end
endmodule
*/
