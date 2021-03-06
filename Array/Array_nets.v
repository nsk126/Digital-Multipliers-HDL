/*
###############################################################
#  Generated by:      Cadence Innovus 17.13-s098_1
#  OS:                Linux x86_64(Host ID cadence)
#  Generated on:      Sat May  4 17:24:06 2019
#  Design:            Array
#  Command:           saveNetlist Array_nets.v
###############################################################
*/
// Generated by Cadence Genus(TM) Synthesis Solution 17.21-s010_1
// Generated on: May  4 2019 17:13:46 IST (May  4 2019 11:43:46 UTC)
// Verification Directory fv/Array 
module FA (
	sum, 
	carryo, 
	a, 
	b, 
	c);
   output sum;
   output carryo;
   input a;
   input b;
   input c;

   ADDFX1 g2 (.A(c),
	.B(a),
	.CI(b),
	.CO(carryo),
	.S(sum));
endmodule

module FA_1 (
	sum, 
	carryo, 
	a, 
	b, 
	c);
   output sum;
   output carryo;
   input a;
   input b;
   input c;

   ADDFX1 g2 (.A(a),
	.B(b),
	.CI(c),
	.CO(carryo),
	.S(sum));
endmodule

module FA_2 (
	sum, 
	carryo, 
	a, 
	b, 
	c);
   output sum;
   output carryo;
   input a;
   input b;
   input c;

   ADDFX1 g2 (.A(c),
	.B(a),
	.CI(b),
	.CO(carryo),
	.S(sum));
endmodule

module FA_3 (
	sum, 
	carryo, 
	a, 
	b, 
	c);
   output sum;
   output carryo;
   input a;
   input b;
   input c;

   ADDFX1 g2 (.A(a),
	.B(b),
	.CI(c),
	.CO(carryo),
	.S(sum));
endmodule

module FA_4 (
	sum, 
	carryo, 
	a, 
	b, 
	c);
   output sum;
   output carryo;
   input a;
   input b;
   input c;

   ADDFX1 g2 (.A(a),
	.B(b),
	.CI(c),
	.CO(carryo),
	.S(sum));
endmodule

module FA_5 (
	sum, 
	carryo, 
	a, 
	b, 
	c);
   output sum;
   output carryo;
   input a;
   input b;
   input c;

   ADDFX1 g2 (.A(c),
	.B(a),
	.CI(b),
	.CO(carryo),
	.S(sum));
endmodule

module FA_6 (
	sum, 
	carryo, 
	a, 
	b, 
	c);
   output sum;
   output carryo;
   input a;
   input b;
   input c;

   ADDFX1 g2 (.A(c),
	.B(a),
	.CI(b),
	.CO(carryo),
	.S(sum));
endmodule

module FA_7 (
	sum, 
	carryo, 
	a, 
	b, 
	c);
   output sum;
   output carryo;
   input a;
   input b;
   input c;

   ADDFX1 g2 (.A(a),
	.B(b),
	.CI(c),
	.CO(carryo),
	.S(sum));
endmodule

module HA (
	sum, 
	carryo, 
	a, 
	b);
   output sum;
   output carryo;
   input a;
   input b;

   ADDHXL g18 (.A(a),
	.B(b),
	.CO(carryo),
	.S(sum));
endmodule

module HA_1 (
	sum, 
	carryo, 
	a, 
	b);
   output sum;
   output carryo;
   input a;
   input b;

   ADDHXL g18 (.A(a),
	.B(b),
	.CO(carryo),
	.S(sum));
endmodule

module HA_2 (
	sum, 
	carryo, 
	a, 
	b);
   output sum;
   output carryo;
   input a;
   input b;

   ADDHXL g18 (.A(a),
	.B(b),
	.CO(carryo),
	.S(sum));
endmodule

module HA_3 (
	sum, 
	carryo, 
	a, 
	b);
   output sum;
   output carryo;
   input a;
   input b;

   ADDHXL g18 (.A(a),
	.B(b),
	.CO(carryo),
	.S(sum));
endmodule

module Array (
	a, 
	b, 
	op);
   input [3:0] a;
   input [3:0] b;
   output [7:0] op;

   // Internal wires
   wire [3:0] a1b;
   wire [3:0] a2b;
   wire [23:0] w;
   wire [3:0] a3b;
   wire [3:0] a0b;

   FA FA_a1 (.sum(w[2]),
	.carryo(w[3]),
	.a(a1b[1]),
	.b(a2b[0]),
	.c(w[1]));
   FA_1 FA_a2 (.sum(w[4]),
	.carryo(w[5]),
	.a(a2b[1]),
	.b(a3b[0]),
	.c(w[3]));
   FA_2 FA_a3 (.sum(w[10]),
	.carryo(w[11]),
	.a(a1b[2]),
	.b(w[4]),
	.c(w[9]));
   FA_3 FA_a4 (.sum(w[12]),
	.carryo(w[13]),
	.a(a2b[2]),
	.b(w[6]),
	.c(w[11]));
   FA_4 FA_a5 (.sum(w[14]),
	.carryo(w[15]),
	.a(a3b[2]),
	.b(w[7]),
	.c(w[13]));
   FA_5 FA_a6 (.sum(op[4]),
	.carryo(w[19]),
	.a(a1b[3]),
	.b(w[12]),
	.c(w[17]));
   FA_6 FA_a7 (.sum(op[5]),
	.carryo(w[21]),
	.a(a2b[3]),
	.b(w[14]),
	.c(w[19]));
   FA_7 FA_a8 (.sum(op[6]),
	.carryo(op[7]),
	.a(a3b[3]),
	.b(w[15]),
	.c(w[21]));
   HA HA_a1 (.sum(op[1]),
	.carryo(w[1]),
	.a(a1b[0]),
	.b(a0b[1]));
   HA_1 HA_a2 (.sum(w[6]),
	.carryo(w[7]),
	.a(a3b[1]),
	.b(w[5]));
   HA_2 HA_a3 (.sum(op[2]),
	.carryo(w[9]),
	.a(a0b[2]),
	.b(w[2]));
   HA_3 HA_a4 (.sum(op[3]),
	.carryo(w[17]),
	.a(a0b[3]),
	.b(w[10]));
   AND2X1 g113 (.A(b[2]),
	.B(a[1]),
	.Y(a1b[2]));
   AND2X1 g114 (.A(b[0]),
	.B(a[1]),
	.Y(a1b[0]));
   AND2X1 g115 (.A(b[0]),
	.B(a[3]),
	.Y(a3b[0]));
   AND2X1 g116 (.A(b[3]),
	.B(a[2]),
	.Y(a2b[3]));
   AND2XL g117 (.A(b[0]),
	.B(a[0]),
	.Y(op[0]));
   AND2X1 g118 (.A(b[2]),
	.B(a[2]),
	.Y(a2b[2]));
   AND2X1 g119 (.A(b[2]),
	.B(a[3]),
	.Y(a3b[2]));
   AND2X1 g120 (.A(b[1]),
	.B(a[0]),
	.Y(a0b[1]));
   AND2X1 g121 (.A(b[1]),
	.B(a[1]),
	.Y(a1b[1]));
   AND2X1 g122 (.A(b[3]),
	.B(a[1]),
	.Y(a1b[3]));
   AND2X1 g123 (.A(b[0]),
	.B(a[2]),
	.Y(a2b[0]));
   AND2X1 g124 (.A(b[2]),
	.B(a[0]),
	.Y(a0b[2]));
   AND2X1 g125 (.A(b[3]),
	.B(a[0]),
	.Y(a0b[3]));
   AND2X1 g126 (.A(b[3]),
	.B(a[3]),
	.Y(a3b[3]));
   AND2X1 g127 (.A(b[1]),
	.B(a[2]),
	.Y(a2b[1]));
   AND2X1 g128 (.A(b[1]),
	.B(a[3]),
	.Y(a3b[1]));
endmodule

