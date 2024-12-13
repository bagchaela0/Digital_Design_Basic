`timescale 1ns / 1ps
module tb_sn54ls32 ();

wire o_1Y,o_2Y,o_3Y,o_4Y;
reg i_1A,i_1B,i_2A,i_2B,i_3A,i_3B,i_4A,i_4B;

SN54LS32 DUT
(
	.o_1Y(o_1Y),
	.o_2Y(o_2Y),
	.o_3Y(o_3Y),
	.o_4Y(o_4Y),
	.i_1A(i_1A),
	.i_1B(i_1B),
	.i_2A(i_2A),
	.i_2B(i_2B),
	.i_3A(i_3A),
	.i_3B(i_3B),
	.i_4A(i_4A),
	.i_4B(i_4B)

);

task display;
	begin
	$display
	(
		"$time=%0d",$time,"ns"
		,"o_1Y= ",o_1Y
		,"o_2Y= ",o_2Y
		,"o_3Y= ",o_3Y
		,"o_4Y= ",o_4Y
		,"i_1A= ",i_1A
		,"i_1B= ",i_1B
		,"i_2A= ",i_2A
		,"i_2B= ",i_2B
		,"i_3A= ",i_3A
		,"i_3B= ",i_3B
		,"i_4A= ",i_4A
		,"i_4B= ",i_4B
	);
       end
endtask

initial begin

	i_1A=1; i_1B=1; i_2A=1; i_2B=1; i_3A=1; i_3B=1; i_4A=1; i_4B=1; #10; display;
	i_1A=1; i_1B=0; i_2A=1; i_2B=0; i_3A=1; i_3B=0; i_4A=1; i_4B=0; #10; display;
	i_1A=0; i_1B=1; i_2A=0; i_2B=1; i_3A=0; i_3B=1; i_4A=0; i_4B=1; #10; display;
	i_1A=0; i_1B=0; i_2A=0; i_2B=0; i_3A=0; i_3B=0; i_4A=0; i_4B=0; #10; display;

	$finish;
	end

endmodule
