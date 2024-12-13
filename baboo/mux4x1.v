`timescale 1ns/ 1ps
module mux4x1 (
		//port list
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
/*
reg out;
//always @(*)
always @(sel1,sel0,in0,in1,in2,in3)
	case ({sel1,sel0})
	2'd0 : out = in0;
	2'd1 : out = in1;
	2'd2 : out = in2;
	2'd3 : out = in3;
	default : $display("Error!!");
	endcase
*/

reg out;
always @(sel1,sel0,in0,in1,in2,in3)
//always @(*)
	if ({sel1,sel0} == 2'd0)
	out <= in0;
	else if ({sel1,sel0} == 2'd1)
	out <= in1;
	else if ({sel1,sel0} == 2'd2)
	out <= in2;
	else if ({sel1,sel0} == 2'd3)
	out <= in3;
	else
	$display("Error!!");
endmodule

