`timescale 1ns / 1ps
module tb_mux4x1 (); //top module , no need port list

//declaration stimulus signal
wire out;
reg in0,in1,in2,in3;
reg sel1,sel0;

//instantiaiton of DUT
mux4x1 DUT (
		.out (out) ,
		.in0 (in0) ,
		.in1 (in1) ,
		.in2 (in2) ,
		.in3 (in3) ,
		.sel1(sel1),
		.sel0(sel0)
);

// task for repetitive 
task display;
begin
	$display (
			"$time=%0d","ns","$time"
			,"sel1= ",sel1
			,"sel0= ",sel0
			,"in0= ",in0
			,"in1= ",in1
			,"in2= ",in2
			,"in3= ",in3
			,"out= ",out
	);
end
endtask

//truth table
initial begin
	sel1=0;sel0=0;in0=1;in1=0;in2=0;in3=0;#10;display;
	sel1=0;sel0=1;in0=0;in1=1;in2=0;in3=0;#10;display;
	sel1=1;sel0=0;in0=0;in1=0;in2=1;in3=0;#10;display;
	sel1=1;sel0=1;in0=0;in1=0;in2=0;in3=1;#10;display;
end
endmodule
