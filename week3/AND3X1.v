// Name : Chaera Park
// Date Created : 20-sep-2024
// Version : 0.1
// Date Modifed :
// Module Name : 3 Input Positive AND Gate
// Description : out = in_A & in_B & in_C
//
//
//
//
//
//
//
//
//
//

`timescale 1ns / 1ps


module AND3X1
(
      //1. port list
       in_A,
       in_B,
       in_C,
       out_Y
);

//2.  port declaration
input in_A,in_B,in_C;
output out_Y;


//3. modeling(Gate Level Modeling)
//instantiate primitive gate
and and_1 (out_Y,in_A,in_B,in_C);

endmodule
