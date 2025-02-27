`timescale 1ns/1ps
module tb;
  int arr_u[5]='{1,2,3,4,5};
  int arr_r[5]='{5{1}};
  int arr_d[6]= '{ default:5};
  initial begin
    $display("arr_u: %0p", arr_u);
    $display("arr_r: %0p", arr_r);
    $display("arr_d: %0p", arr_d);
  end
