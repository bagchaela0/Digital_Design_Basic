`timescale 1ns / 1ps
module mux4x1 (
		out,
		in0,
		in1,
		in2,
		in3,
		sel1,
		sel0
);

output out;
input in0,in1,in2,in3;
input sel1,sel0;

reg out;
always @(sel1,sel0,in0,in1,in2,in3)
	if ({sel1,sel0} == 2'b00)
	out <= in0;
	else if ({sel1,sel0} == 2'b01)
	out <= in1;
	else if ({sel1,sel0} == 2'b10)
	out <= in2;
//	else if ({sel1,sel0} == 2'b11)
	else out <= in3;
//	else
//	$display("Error!!");
endmodule
	
      

