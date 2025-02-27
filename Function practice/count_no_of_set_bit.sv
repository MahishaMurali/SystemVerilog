module count_set_bits;
  logic [3:0] data,temp;
    int count;

    initial begin
        data = 4'b1011;
        count = 0;
        //approch 1
        // Bitwise shift method
        temp = data;
        while (temp != 0) begin
            count += temp & 1; // Add 1 if the LSB is set
            temp = temp >> 1;  // Right shift by 1
        end

        $display("Input: %b, Set Bits: %0d", data, count);
    end
  //approch 2
  initial begin
a=4'b1011;
foreach(i) begin
if(a[i]%10==1)begin
count+=1;
end
end
$display("count: %0d", count);
end
endmodule
