`timescale 1ns / 1ps
module tb_mux_8x2 ();
// declaration stimulus signal
wire y1,y2;
reg in0,in1,in2,in3,in4,in5,in6,in7;
reg e1,e2;
reg sela,selb;

//DUT
mux_8x2 DUT(
	.y1(y1),
	.y2(y2),
	.in0(in0),
	.in1(in1),
	.in2(in2),
	.in3(in3),
	.in4(in4),
	.in5(in5),
	.in6(in7),
	.in7(in7),
	.e1(e1),
	.e2(e2),
	.sela(sela),
	.selb(selb)
);

task desplay;
	begin
		$display(
			"$time=%0d", $time,  "ns"
			,"y1 = ",y1
			,"y2 = ",y2
			,"in0 = ",in0
			,"in1 = ",in1
			,"in2 = ",in2
			,"in3 = ",in3
			,"in4 = ",in4
			,"in5 = ",in5
			,"in6 = ",in6
			,"in7 = ",in7
			,"sela = ",sela
			,"selb = ",selb
			,"e1 = ",e1
			,"e2 = ",e2
);
	end
endtask

//input stimulus
initial begin

	selb= 0; sela= 0; in0= 0; in1= 1; in2= 1; in3= 1;
	in4= 1; in5= 0; in6= 0; in7= 0; e1= 0; e2= 0; #10; display;

	selb= 0; sela= 1; in0= 1; in1= 0; in2= 1; in3= 1;
	in4= 0; in5= 1; in6= 0; in7= 0; e1= 0; e2= 0; #10; display;

	selb= 1; sela= 0; in0= 1; in1= 1; in2= 0; in3= 1;
	in4= 0; in5= 0; in6= 1; in7= 0; e1= 0; e2= 0; #10; display;

	selb= 1; sela= 1; in0= 1; in1= 1; in2= 1; in3= 0;
	in4= 0; in5= 0; in6= 0; in7= 1; e1= 0; e2= 0; #10; display;
	$finish;
	end
endmodule
