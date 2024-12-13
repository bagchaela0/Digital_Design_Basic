`timescale 1ns / 1ps
module counter (
	//port list
	clk,
	rst_n,
	cnt
);

input wire clk;
input wire rst_n;
output reg [6:0] cnt;

//behviral modeling
always @(posedge clk, negedge rst_n) //reset = active low
begin
	if(rst_n == 0) //system - off
	begin
		cnt <= 7'b0;
	end
	else if (cnt < 100) //rst_n == 1, reset release
	begin
		cnt <= cnt + 1;
	end
end
endmodule


