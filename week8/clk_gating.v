`timescale 1ns / 1ps

module clk_gating (out_clk,in_clk, clk_en);

	input	wire in_clk;
	input	wire clk_en;
	output	wire out_clk;

	assign out_clk = in_clk & clk_en;

endmodule
