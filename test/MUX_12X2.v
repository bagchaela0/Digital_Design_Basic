`timescale 1ns / 1ps
module MUX_12X2(
//port list
	y1,
	y2,
	gn1,
	gn2,
	c0_1,
	c1_1,
	c2_1,
	c3_1,
	c0_2,
	c1_2,
	c2_2,
	c3_2,
	a,
	b       
);

//port declaration
output y1;
output y2;
input gn1;
input gn2;
input c0_1;
input c1_1;
input c2_1;
input c3_1;
input c0_2;
input c1_2;
input c2_2;
input c3_2;
input a;
input b;

//wire signal
wire g1,g2,an,bn;
wire yy0,yy1,yy2,yy3,yy4,yy5,yy6,yy7;

//gn1,gn2,an,an
not (g1,gn1);
not (g2,gn2);
not (an,a);
not (bn,b);

//first level modeling(4input and gate)
and (yy0,g1,bn,an,c0_1);
and (yy1,g1,bn,a,c1_1);
and (yy2,g1,b,an,c2_1);
and (yy3,g1,b,a,c3_1);
and (yy4,c0_2,bn,an,g2);
and (yy5,c1_2,bn,a,g2);
and (yy6,c2_2,b,an,g2);
and (yy7,c3_2,b,a,g2);
	
//second level modeling(4input or gate)
or (y1,yy0,yy1,yy2,yy3);
or (y2,yy4,yy5,yy6,yy7);

endmodule
