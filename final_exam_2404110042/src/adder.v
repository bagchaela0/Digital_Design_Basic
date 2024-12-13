`timescale 1ns / 1ps
module adder ( 
		//port list
		clk,
		rst_n,
		in1,
		in2,
		in3,
		in4,
		out
);

//port declaration
input wire clk;
input wire rst_n;
input wire [13:0] in1;
input wire [13:0] in2;
input wire [13:0] in3;
input wire [13:0] in4;
output reg [14:0] out;

always @(posedge clk, negedge rst_n)
begin
	if (~rst_n)
	begin
	out <= 14'd0000;
	end
	else 
	begin
	#4;
	out <= {1'b0,in1} + {1'b0,in2} + {1'b0,in3} + {1'b0,in4};
	end
end
endmodule
