module power_of_2_checker;

    int num;
    bit result;

    // Function to check if a number is a power of 2
    function bit is_power_of_2(int x);
        return (x > 0) && ((x & (x - 1)) == 0);
    endfunction

    initial begin
        num = 8; // Test with different numbers
        result = is_power_of_2(num);

        $display("Number: %0d", num);
        $display("Is Power of 2? : %b", result);
    end

endmodule
