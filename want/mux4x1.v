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

assign out = sel1 ? (sel0 ? in3 : in2) : (sel0 ? in1 : in0);
endmodule
