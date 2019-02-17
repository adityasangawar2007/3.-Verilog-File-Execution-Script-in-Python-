`timescale 1ns/1ns

module CarrySelect(ope1, ope2, addsub, sum, cout, clock, start, reset, overf); 

input [63:0] ope1, ope2;
wire [63:0] temp_ope1, temp_ope2;
reg [63:0] q1, q2;
input clock, start, reset;
input addsub;
output [63:0] sum;
output reg overf;
wire [63:0] sum1;
wire [63:0] sum2;
output  cout;
wire [6:0] cout_int;
wire [6:0] cout_int_zero;
wire [6:0] cout_int_one; 

wire overfwire;
wire overf1,overf2,sumcompliment,opecompliment1,opecompliment2;


assign overfwire = overf;

always @(posedge clock or negedge reset)

begin

if(!reset)
begin
q1[63:0]<= 0;
q2[63:0]<= 0;
overf<=0;
end

	else if (start)
	begin
	q1[63:0]<= ope1[63:0];
	q2[63:0]<= ope2[63:0];
	end
end


//Having a+b and a-b options  

//xor U3(out2,in1,in2,in3);

xor U0(temp_ope1[0] ,q1[0],addsub);
xor U1(temp_ope1[1] ,q1[1],addsub);
xor U2(temp_ope1[2] ,q1[2],addsub);
xor U3(temp_ope1[3] ,q1[3],addsub);
xor U4(temp_ope1[4] ,q1[4],addsub);
xor U5(temp_ope1[5] ,q1[5],addsub);
xor U6(temp_ope1[6] ,q1[6],addsub);
xor U7(temp_ope1[7] ,q1[7],addsub);

xor U8(temp_ope1[8] ,q1[8],addsub);
xor U9(temp_ope1[9] ,q1[9],addsub);
xor U10(temp_ope1[10] ,q1[10],addsub);
xor U11(temp_ope1[11] ,q1[11],addsub);
xor U12(temp_ope1[12] ,q1[12],addsub);
xor U13(temp_ope1[13] ,q1[13],addsub);
xor U14(temp_ope1[14] ,q1[14],addsub);
xor U15(temp_ope1[15] ,q1[15],addsub);

xor U16(temp_ope1[16] ,q1[16],addsub);
xor U17(temp_ope1[17] ,q1[17],addsub);
xor U18(temp_ope1[18] ,q1[18],addsub);
xor U19(temp_ope1[19] ,q1[19],addsub);
xor U20(temp_ope1[20] ,q1[20],addsub);
xor U21(temp_ope1[21] ,q1[21],addsub);
xor U22(temp_ope1[22] ,q1[22],addsub);
xor U23(temp_ope1[23] ,q1[23],addsub);

xor U24(temp_ope1[24] ,q1[24],addsub);
xor U25(temp_ope1[25] ,q1[25],addsub);
xor U26(temp_ope1[26] ,q1[26],addsub);
xor U27(temp_ope1[27] ,q1[27],addsub);
xor U28(temp_ope1[28] ,q1[28],addsub);
xor U29(temp_ope1[29] ,q1[29],addsub);
xor U30(temp_ope1[30] ,q1[30],addsub);
xor U31(temp_ope1[31] ,q1[31],addsub);

xor U32(temp_ope1[32] ,q1[32],addsub);
xor U33(temp_ope1[33] ,q1[33],addsub);
xor U34(temp_ope1[34] ,q1[34],addsub);
xor U35(temp_ope1[35] ,q1[35],addsub);
xor U36(temp_ope1[36] ,q1[36],addsub);
xor U37(temp_ope1[37] ,q1[37],addsub);
xor U38(temp_ope1[38] ,q1[38],addsub);
xor U39(temp_ope1[39] ,q1[39],addsub);

xor U40(temp_ope1[40] ,q1[40],addsub);
xor U41(temp_ope1[41] ,q1[41],addsub);
xor U42(temp_ope1[42] ,q1[42],addsub);
xor U43(temp_ope1[43] ,q1[43],addsub);
xor U44(temp_ope1[44] ,q1[44],addsub);
xor U45(temp_ope1[45] ,q1[45],addsub);
xor U46(temp_ope1[46] ,q1[46],addsub);
xor U47(temp_ope1[47] ,q1[47],addsub);

xor U48(temp_ope1[48] ,q1[48],addsub);
xor U49(temp_ope1[49] ,q1[49],addsub);
xor U50(temp_ope1[50] ,q1[50],addsub);
xor U51(temp_ope1[51] ,q1[51],addsub);
xor U52(temp_ope1[52] ,q1[52],addsub);
xor U53(temp_ope1[53] ,q1[53],addsub);
xor U54(temp_ope1[54] ,q1[54],addsub);
xor U55(temp_ope1[55] ,q1[55],addsub);

xor U56(temp_ope1[56] ,q1[56],addsub);
xor U57(temp_ope1[57] ,q1[57],addsub);
xor U58(temp_ope1[58] ,q1[58],addsub);
xor U59(temp_ope1[59] ,q1[59],addsub);
xor U60(temp_ope1[60] ,q1[60],addsub);
xor U61(temp_ope1[61] ,q1[61],addsub);
xor U62(temp_ope1[62] ,q1[62],addsub);
xor U63(temp_ope1[63] ,q1[63],addsub);

//************ second operand ************

//xor U3(out2,in1,in2,in3);

xor UU0(temp_ope2[0] ,q2[0],addsub);
xor UU1(temp_ope2[1] ,q2[1],addsub);
xor UU2(temp_ope2[2] ,q2[2],addsub);
xor UU3(temp_ope2[3] ,q2[3],addsub);
xor UU4(temp_ope2[4] ,q2[4],addsub);
xor UU5(temp_ope2[5] ,q2[5],addsub);
xor UU6(temp_ope2[6] ,q2[6],addsub);
xor UU7(temp_ope2[7] ,q2[7],addsub);

xor UU8(temp_ope2[8] ,q2[8],addsub);
xor UU9(temp_ope2[9] ,q2[9],addsub);
xor UU10(temp_ope2[10] ,q2[10],addsub);
xor UU11(temp_ope2[11] ,q2[11],addsub);
xor UU12(temp_ope2[12] ,q2[12],addsub);
xor UU13(temp_ope2[13] ,q2[13],addsub);
xor UU14(temp_ope2[14] ,q2[14],addsub);
xor UU15(temp_ope2[15] ,q2[15],addsub);

xor UU16(temp_ope2[16] ,q2[16],addsub);
xor UU17(temp_ope2[17] ,q2[17],addsub);
xor UU18(temp_ope2[18] ,q2[18],addsub);
xor UU19(temp_ope2[19] ,q2[19],addsub);
xor UU20(temp_ope2[20] ,q2[20],addsub);
xor UU21(temp_ope2[21] ,q2[21],addsub);
xor UU22(temp_ope2[22] ,q2[22],addsub);
xor UU23(temp_ope2[23] ,q2[23],addsub);

xor UU24(temp_ope2[24] ,q2[24],addsub);
xor UU25(temp_ope2[25] ,q2[25],addsub);
xor UU26(temp_ope2[26] ,q2[26],addsub);
xor UU27(temp_ope2[27] ,q2[27],addsub);
xor UU28(temp_ope2[28] ,q2[28],addsub);
xor UU29(temp_ope2[29] ,q2[29],addsub);
xor UU30(temp_ope2[30] ,q2[30],addsub);
xor UU31(temp_ope2[31] ,q2[31],addsub);

xor UU32(temp_ope2[32] ,q2[32],addsub);
xor UU33(temp_ope2[33] ,q2[33],addsub);
xor UU34(temp_ope2[34] ,q2[34],addsub);
xor UU35(temp_ope2[35] ,q2[35],addsub);
xor UU36(temp_ope2[36] ,q2[36],addsub);
xor UU37(temp_ope2[37] ,q2[37],addsub);
xor UU38(temp_ope2[38] ,q2[38],addsub);
xor UU39(temp_ope2[39] ,q2[39],addsub);

xor UU40(temp_ope2[40] ,q2[40],addsub);
xor UU41(temp_ope2[41] ,q2[41],addsub);
xor UU42(temp_ope2[42] ,q2[42],addsub);
xor UU43(temp_ope2[43] ,q2[43],addsub);
xor UU44(temp_ope2[44] ,q2[44],addsub);
xor UU45(temp_ope2[45] ,q2[45],addsub);
xor UU46(temp_ope2[46] ,q2[46],addsub);
xor UU47(temp_ope2[47] ,q2[47],addsub);

xor UU48(temp_ope2[48] ,q2[48],addsub);
xor UU49(temp_ope2[49] ,q2[49],addsub);
xor UU50(temp_ope2[50] ,q2[50],addsub);
xor UU51(temp_ope2[51] ,q2[51],addsub);
xor UU52(temp_ope2[52] ,q2[52],addsub);
xor UU53(temp_ope2[53] ,q2[53],addsub);
xor UU54(temp_ope2[54] ,q2[54],addsub);
xor UU55(temp_ope2[55] ,q2[55],addsub);

xor UU56(temp_ope2[56] ,q2[56],addsub);
xor UU57(temp_ope2[57] ,q2[57],addsub);
xor UU58(temp_ope2[58] ,q2[58],addsub);
xor UU59(temp_ope2[59] ,q2[59],addsub);
xor UU60(temp_ope2[60] ,q2[60],addsub);
xor UU61(temp_ope2[61] ,q2[61],addsub);
xor UU62(temp_ope2[62] ,q2[62],addsub);
xor UU63(temp_ope2[63] ,q2[63],addsub);

RippleCarryAdder RA1 (temp_ope1[7:0], temp_ope2[7:0], addsub, sum[7:0], cout_int[0]);
RippleCarryAdder RA2 (temp_ope1[15:8], temp_ope2[15:8], 1'b0, sum2[15:8], cout_int_zero[0]);
RippleCarryAdder RA3 (temp_ope1[15:8], temp_ope2[15:8], 1'b1, sum1[15:8], cout_int_one[0]);

RippleCarryAdder RA4 (temp_ope1[23:16], temp_ope2[23:16], 1'b0, sum2[23:16], cout_int_zero[1]);
RippleCarryAdder RA5 (temp_ope1[23:16], temp_ope2[23:16], 1'b1, sum1[23:16], cout_int_one[1]);

RippleCarryAdder RA6 (temp_ope1[31:24], temp_ope2[31:24], 1'b0, sum2[31:24], cout_int_zero[2]);
RippleCarryAdder RA7 (temp_ope1[31:24], temp_ope2[31:24], 1'b1, sum1[31:24], cout_int_one[2]);

RippleCarryAdder RA8 (temp_ope1[39:32], temp_ope2[39:32], 1'b0, sum2[39:32], cout_int_zero[3]);
RippleCarryAdder RA9 (temp_ope1[39:32], temp_ope2[39:32], 1'b1, sum1[39:32], cout_int_one[3]);

RippleCarryAdder RA10 (temp_ope1[47:40], temp_ope2[47:40], 1'b0, sum2[47:40], cout_int_zero[4]);
RippleCarryAdder RA11 (temp_ope1[47:40], temp_ope2[47:40], 1'b1, sum1[47:40], cout_int_one[4]);

RippleCarryAdder RA12 (temp_ope1[55:48], temp_ope2[55:48], 1'b0, sum2[55:48], cout_int_zero[5]);
RippleCarryAdder RA13 (temp_ope1[55:48], temp_ope2[55:48], 1'b1, sum1[55:48], cout_int_one[5]);

RippleCarryAdder RA14 (temp_ope1[63:56], temp_ope2[63:56], 1'b0, sum2[63:56], cout_int_zero[6]);
RippleCarryAdder RA15 (temp_ope1[63:56], temp_ope2[63:56], 1'b1, sum1[63:56], cout_int_one[6]);

assign sum[8]  = cout_int[0] ? sum1[8]:  sum2[8];
assign sum[9]  = cout_int[0] ? sum1[9]:  sum2[9];
assign sum[10] = cout_int[0] ? sum1[10]: sum2[10];
assign sum[11] = cout_int[0] ? sum1[11]: sum2[11];
assign sum[12] = cout_int[0] ? sum1[12]: sum2[12];
assign sum[13] = cout_int[0] ? sum1[13]: sum2[13];
assign sum[14] = cout_int[0] ? sum1[14]: sum2[14];
assign sum[15] = cout_int[0] ? sum1[15]: sum2[15];
assign cout_int[1] = cout_int[0] ? cout_int_zero[0]: cout_int_one[0];

assign sum[16] = cout_int[1] ? sum1[16]: sum2[16];
assign sum[17] = cout_int[1] ? sum1[17]: sum2[17];
assign sum[18] = cout_int[1] ? sum1[18]: sum2[18];
assign sum[19] = cout_int[1] ? sum1[19]: sum2[19];
assign sum[20] = cout_int[1] ? sum1[20]: sum2[20];
assign sum[21] = cout_int[1] ? sum1[21]: sum2[21];
assign sum[22] = cout_int[1] ? sum1[22]: sum2[22];
assign sum[23] = cout_int[1] ? sum1[23]: sum2[23];
assign cout_int[2] = cout_int[1] ? cout_int_zero[1]: cout_int_one[1];

assign sum[24] = cout_int[2] ? sum1[24]: sum2[24];
assign sum[25] = cout_int[2] ? sum1[25]: sum2[25];
assign sum[26] = cout_int[2] ? sum1[26]: sum2[26];
assign sum[27] = cout_int[2] ? sum1[27]: sum2[27];
assign sum[28] = cout_int[2] ? sum1[28]: sum2[28];
assign sum[29] = cout_int[2] ? sum1[29]: sum2[29];
assign sum[30] = cout_int[2] ? sum1[30]: sum2[30];
assign sum[31] = cout_int[2] ? sum1[31]: sum2[31];
assign cout_int[3] = cout_int[2] ? cout_int_zero[2]: cout_int_one[2];

assign sum[32] = cout_int[3] ? sum1[32]: sum2[32];
assign sum[33] = cout_int[3] ? sum1[33]: sum2[33];
assign sum[34] = cout_int[3] ? sum1[34]: sum2[34];
assign sum[35] = cout_int[3] ? sum1[35]: sum2[35];
assign sum[36] = cout_int[3] ? sum1[36]: sum2[36];
assign sum[37] = cout_int[3] ? sum1[37]: sum2[37];
assign sum[38] = cout_int[3] ? sum1[38]: sum2[38];
assign sum[39] = cout_int[3] ? sum1[39]: sum2[39];
assign cout_int[4] = cout_int[3] ? cout_int_zero[3]: cout_int_one[3];

assign sum[40] = cout_int[4] ? sum1[40]: sum2[40];
assign sum[41] = cout_int[4] ? sum1[41]: sum2[41];
assign sum[42] = cout_int[4] ? sum1[42]: sum2[42];
assign sum[43] = cout_int[4] ? sum1[43]: sum2[43];
assign sum[44] = cout_int[4] ? sum1[44]: sum2[44];
assign sum[45] = cout_int[4] ? sum1[45]: sum2[45];
assign sum[46] = cout_int[4] ? sum1[46]: sum2[46];
assign sum[47] = cout_int[4] ? sum1[47]: sum2[47];
assign cout_int[5] = cout_int[4] ? cout_int_zero[4]: cout_int_one[4];

assign sum[48] = cout_int[5] ? sum1[48]: sum2[48];
assign sum[49] = cout_int[5] ? sum1[49]: sum2[49];
assign sum[50] = cout_int[5] ? sum1[50]: sum2[50];
assign sum[51] = cout_int[5] ? sum1[51]: sum2[51];
assign sum[52] = cout_int[5] ? sum1[52]: sum2[52];
assign sum[53] = cout_int[5] ? sum1[53]: sum2[53];
assign sum[54] = cout_int[5] ? sum1[54]: sum2[54];
assign sum[55] = cout_int[5] ? sum1[55]: sum2[55];
assign cout_int[6] = cout_int[5] ? cout_int_zero[5]: cout_int_one[5];

assign sum[56] = cout_int[6] ? sum1[56]: sum2[56];
assign sum[57] = cout_int[6] ? sum1[57]: sum2[57];
assign sum[58] = cout_int[6] ? sum1[58]: sum2[58];
assign sum[59] = cout_int[6] ? sum1[59]: sum2[59];
assign sum[60] = cout_int[6] ? sum1[60]: sum2[60];
assign sum[61] = cout_int[6] ? sum1[61]: sum2[61];
assign sum[62] = cout_int[6] ? sum1[62]: sum2[62];
assign sum[63] = cout_int[6] ? sum1[63]: sum2[63];
assign cout = cout_int[6] ? cout_int_zero[6]: cout_int_one[6];

and overflow1(overf1, sumcompliment ,ope1[63],ope2[63]);
and overflow2(overf2, sumcompliment ,ope1[63],ope2[63]);
or overflow3(overfwire, overf1 ,overf2);

not n1(sumcompliment, sum[63]);
not n2(opecompliment1, ope1[63]);
not n3(opecompliment2, ope2[63]);



endmodule

//************************************************************************************************

module RippleCarryAdder(a, b, addsub, sum, cout);
input [7:0] a,b;
input addsub;
output [7:0] sum;
output cout;
wire [6:0] c;

fulladder fa0 (.a(a[0]), .b(b[0]), .addsub(addsub),  .sum(sum[0]), .cout(c[0]));
fulladder fa1 (.a(a[1]), .b(b[1]), .addsub(c[0]), .sum(sum[1]), .cout(c[1]));
fulladder fa2 (.a(a[2]), .b(b[2]), .addsub(c[1]), .sum(sum[2]), .cout(c[2]));
fulladder fa3 (.a(a[3]), .b(b[3]), .addsub(c[2]), .sum(sum[3]), .cout(c[3]));
fulladder fa4 (.a(a[4]), .b(b[4]), .addsub(c[3]), .sum(sum[4]), .cout(c[4]));
fulladder fa5 (.a(a[5]), .b(b[5]), .addsub(c[4]), .sum(sum[5]), .cout(c[5]));
fulladder fa6 (.a(a[6]), .b(b[6]), .addsub(c[5]), .sum(sum[6]), .cout(c[6]));
fulladder fa7 (.a(a[7]), .b(b[7]), .addsub(c[6]), .sum(sum[7]), .cout(cout));

// cout(cout) will go to MUX series to select SUM and Carry from Block 1
endmodule


//************************************************************************************************

module fulladder(a, b, addsub, sum, cout);

input a, b, addsub;
output sum, cout; 
wire x,y,z;

	assign x= a ^ b;
	assign sum=x  ^ addsub;
	assign y= x & addsub;
	assign z= a & b;
	assign cout = y | z;

endmodule


//*************** TestBench Carry Select Adder *************************************************
 

module CarrySelectTB();


reg [63:0] a,b;
reg addsub, start=1'b0, reset=1'b0;
wire [63:0] sum; 
wire cout;
reg clock=1'b1;
wire overf;
always #1 clock=~clock;

CarrySelect inst1(a, b, addsub, sum, cout, clock, start, reset , overf);



initial begin
	$dumpfile ("ripple.vcd");
	$dumpvars (0);
$monitor("a=%d, b=%d , addsub=%d , sum=%d, cout=%d", a, b, addsub, sum, cout);
  
	a = 64'hffff_ffff_ffff_ffff;	b = 64'hf000_0000_1000_0001;	addsub = 1'b0; reset = 1'b0; start = 1'b0;
	#1 start = 1'b1; #1 start = 1'b0; #1 start = 1'b1; #1 start = 1'b0;	
	#1 reset = 1'b1; #1 reset = 1'b1; #1 reset = 1'b1;
	#5;
	
	a = 64'hFFFF_FFFF_FFFF_FFFF;	b = 64'hFFFF_FFFF_FFFF_FFFF;	addsub = 1'b0; reset = 1'b1; start = 1'b1;
	#1 start = 1'b1; #1 start = 1'b0; #1 start = 1'b1; #1 start = 1'b0;	
	#5;
	
	a = 64'h0000_0000_ffff_ffff;	b = 64'h0000_0000_1000_0001;	addsub = 1'b1; reset = 1'b1; start = 1'b1;
	#1 start = 1'b1; #1 start = 1'b0; #1 start = 1'b0;
	#5;

	a = 64'h0000_0000_ffff_ffff;	b = 64'h0000_0000_0000_0001;	addsub = 1'b1; reset = 1'b1; start = 1'b1;
	#1 start = 1'b1; #1 start = 1'b0; #1 start = 1'b1; #1 start = 1'b0;	
	#5;

	a = 64'h0010_0000_abcd_ffff;	b = 64'h0000_0000_0000_0001;	addsub = 1'b1; reset = 1'b1; start = 1'b1;
	#1 start = 1'b1; #1 start = 1'b0; #1 start = 1'b1; #1 start = 1'b0;	
	#5;

/*
a = 64'hffff_0000_ffdf_ffff;	b = 64'h888f_ffff_ffff_ffff;	addsub = 1'b0; reset = 1'b0; start = 1'b1;

	#12;

	a = 64'hffff_aaaa_ffff_ffff;	b = 64'hffff_ffff_ffff_ffff;	addsub = 1'b0; reset = 1'b1; start = 1'b1;

	#10;

FFFF_FFFF_FFFF_FFFF	FFFFFFFFFFFFFFFF
00000000FFFFFFFF	0000000000000001
FFFFAAAAFFFFFFFF	5432123445789622
00000000aaa77704	0099330022002233

*/


 $finish();	
end

endmodule






