`timescale 1ns / 1ps
module mux_8x2(
	//port list
	y1,
	y2,
	in0,
	in1,
	in2,
	in3,
	in4,
	in5,
	in6,
	in7,
	selb,
	sela,
	e1,
	e2
);

//port declaration 
output y1,y2;
input in0,in1,in2,in3,in4,in5,in6,in7;
input sela,selb;
input e1,e2;

//selan,selbn,e1,e2,yy0,yy1,yy2,yy3,yy4,yy5,yy6,yy7
reg selan,selbn;
reg e1n,e2n;
wire yy0,yy1,yy2,yy3,yy4,yy5,yy6,yy7;

//selan,selbn,e1,e2
not (sela,selan);
not (selb,selbn);
not (e1,e1n);
not (e2,e2n);

//first modeling (4-input and gate)
and (yy0,e1,selbn,selan,in0);
and (yy1,e1,selbn,sela,in1);
and (yy2,e1,selb,selan,in2);
and (yy3,e1,selb,sela,in3);
and (yy4,e2,selbn,selan,in4);
and (yy5,e2,selbn,sela,in5);
and (yy6,e2,selb,selan,i6);
and (yy7,e2,selb,sela,i7);

//second modeling(4-input or gate)
or (y1,yy0,yy1,yy2,yy3);
or (y2,yy4,yy5,yy6,yy7);

endmodule
