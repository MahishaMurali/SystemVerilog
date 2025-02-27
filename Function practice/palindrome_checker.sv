module palindrome_checker;

    parameter int WIDTH = 8; // Define bit width (Soft-coded)
    bit [WIDTH-1:0] a;   // Input number
    bit result;          // Stores the result (1 = palindrome, 0 = not a palindrome)

    // Function to check if a binary number of any width is a palindrome
    function bit is_palindrome(bit [WIDTH-1:0] a);
        for (int i = 0; i < WIDTH/2; i++) begin // Soft-coded loop based on WIDTH
            if (a[i] != a[WIDTH-1 - i]) // Compare LSB with MSB
                return 0; // If any mismatch, it's not a palindrome
        end
        return 1; // If all bits match, it's a palindrome
    endfunction

    initial begin
        a = 8'b10011101; // Example palindrome input
        result = is_palindrome(a); // Call function

        // Display results
        $display("Input       : %0b", a);
        $display("Is Palindrome? : %b", result);
    end

endmodule
