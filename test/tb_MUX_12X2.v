`timescale 1ns / 1ps
module tb_MUX_12X2(); //top module (no need port)

//declaration stimulus signal
wire out1;
wire out2;
reg e1gn;
reg e2gn;
reg in1c0;
reg in1c1;
reg in1c2;
reg in1c3;
reg in2c0;
reg in2c1;
reg in2c2;
reg in2c3;
reg sela;
reg selb;

//instantiation of DUT
MUX_12X2 DUT
(
	.y1(out1),
	.y2(out2),
	.gn1(e1gn),
	.gn2(e2gn),
	.c0_1(in1c0),
	.c1_1(in1c1),
	.c2_1(in1c2),
	.c3_1(in1c3),
	.c0_2(in2c0),
	.c1_2(in2c1),
	.c2_2(in2c2),
	.c3_2(in2c3),
	.a(sela),
	.b(selb)
);

task display;
	begin
	    $display
		(
			"$time=%0d", $time, "ns"
			," sela = ",sela
			," selb = ",selb
			," e1gn = ",e1gn
			," e2gn = ",e2gn
			," in1c0 = ",in1c0
			," in1c1 = ",in1c1
			," in1c2 = ",in1c2
			," in1c3 = ",in1c3
			," in2c0 = ",in2c0
			," in2c1 = ",in2c1
			," in2c2 = ",in2c2
			," in2c3 = ",in2c3
		);
	end
endtask

// Applying stimulus
initial begin
	
	//t=10, init(strobe release)
	selb= 0; sela= 0; in1c0=0; in1c1= 1; in1c2= 1; in1c3= 1; 
        in2c0= 1; in2c1= 0; in2c2= 0; in2c3= 0; e1gn= 0; e2gn= 0;  #10; display;
	//t=20
	selb= 0; sela= 1; in1c0= 1; in1c1= 0; in1c2= 1; in1c3= 1;
	in2c0= 0; in2c1= 1; in2c2= 0; in2c3= 0; e1gn= 0; e2gn= 0; #10; display;
	//t=30
	selb= 1; sela= 0; in1c0= 1; in1c1= 1; in1c2= 0; in1c3= 1;
	in2c0= 0; in2c1= 0; in2c2= 1; in2c3= 0; e1gn= 0; e2gn= 0;  #10; display;
	//t=40
	selb= 1; sela= 1; in1c0= 1; in1c1= 1; in1c2= 1; in1c3= 0;
	in2c0= 0; in2c1= 0; in2c2= 0; in2c3= 1; e1gn= 0; e2gn= 0; #10; display;

	$finish;
	end
endmodule










