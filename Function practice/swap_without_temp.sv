module swap_without_temp;
    int a, b;
    // Function to swap two 32-bit integers without a temporary variable
    function void swap(input inout int x, input inout int y);
        x = x ^ y; // Step 1: x = x XOR y
        y = x ^ y; // Step 2: y = x XOR y (now y = original x)
        x = x ^ y; // Step 3: x = x XOR y (now x = original y)
    endfunction

    initial begin
        a = 10;
        b = 20;

        $display("Before Swap: a = %0d, b = %0d", a, b);
        swap(a, b);
        $display("After Swap : a = %0d, b = %0d", a, b);
    end

endmodule
