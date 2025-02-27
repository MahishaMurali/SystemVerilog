module barrel_shifter_module;

    parameter int WIDTH = 8;  // Define bit width
    bit [WIDTH-1:0] data_in, data_out;
    int shift_amount;
    bit dir; // 0 for left shift, 1 for right shift

    // Function to perform barrel shift (Left or Right)
    function bit [WIDTH-1:0] barrel_shift(bit [WIDTH-1:0] data, int shift, bit dir);
        bit [WIDTH-1:0] result;
        if (dir == 0)  // Left shift (Rotate Left)
            result = (data << shift) | (data >> (WIDTH - shift));
        else  // Right shift (Rotate Right)
            result = (data >> shift) | (data << (WIDTH - shift));
        return result;
    endfunction

    initial begin
        data_in = 8'b10110011; // Example input
        shift_amount = 3;  // Number of positions to shift
        dir = 0; // 0 = Left shift, 1 = Right shift

        // Call function for left shift
        data_out = barrel_shift(data_in, shift_amount, dir);
        $display("Input      : %08b", data_in);
        $display("Shift Left : %08b (by %0d)", data_out, shift_amount);

        // Call function for right shift
        dir = 1;
        data_out = barrel_shift(data_in, shift_amount, dir);
        $display("Shift Right: %08b (by %0d)", data_out, shift_amount);
    end

endmodule
