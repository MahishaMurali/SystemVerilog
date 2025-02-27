// Code your testbench here
// or browse Examples
module tb;
  
  int arr1[10];
  bit arr2[10], arr3[10];///0-9
  int i =0,j=0;
 
  
initial begin
    
    for(i= 0; i< 10; i++) begin
      arr1[i] = i;    
    end
    arr2=arr1;
    
  $display("arr1 : %0p, arr2: %0p", arr1,arr2);
    
    
  end
  
  
  
/*
  initial begin
    
    foreach(arr2[j]) begin //0---9
    arr2[j] = 5;
      $display("%0d", arr2[j]);
  end
    
  end

  initial begin
    
    repeat(10) begin
      arr3[j] = j;
      j++;
    end
    
    $display("arr3 : %0p",arr3);
    
  end
  
  */
  
endmodule
