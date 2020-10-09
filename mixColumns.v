module mixColumns(in,out);

input [127:0]in;
output [127:0] out;

wire [31:0]c1,c2,c3,c4;

assign c1 = in[127:96]; 
assign c2 = in[95:64];
assign c3 = in[63:32];
assign c4 = in[31:0];




wire [7:0]o1,o2,o3,o4;

galois m1(c1[31:24],2'b10,o1);
galois m2(c1[23:16],2'b11,o2);
galois m3(c1[15:8],2'b01,o3);
galois m4(c1[7:0],2'b01,o4);

assign out[127:120] = o1 ^ o2 ^ o3 ^o4;


wire [7:0]o5,o6,o7,o8;

galois m5(c1[31:24],2'b01,o5);
galois m6(c1[23:16],2'b10,o6);
galois m7(c1[15:8],2'b11,o7);
galois m8(c1[7:0],2'b01,o8);

assign out[119:112] = o5 ^ o6 ^ o7 ^o8;

wire [7:0]o9,o10,o11,o12;

galois m9(c1[31:24],2'b01,o9); 
galois m10(c1[23:16],2'b01,o10);
galois m11(c1[15:8],2'b10,o11);
galois m12(c1[7:0],2'b11,o12);

assign out[111:104] = o9 ^ o10 ^ o11 ^o12;

wire [7:0]o13,o14,o15,o16;

galois m13(c1[31:24],2'b11,o13);
galois m14(c1[23:16],2'b01,o14);
galois m15(c1[15:8],2'b01,o15);
galois m16(c1[7:0],2'b10,o16);

assign out[103:96] = o13 ^ o14 ^ o15 ^o16;




wire [7:0]t1,t2,t3,t4;

galois m17(c2[31:24],2'b10,t1);
galois m18(c2[23:16],2'b11,t2);
galois m19(c2[15:8],2'b01,t3);
galois m20(c2[7:0],2'b01,t4);

assign out[95:88] = t1 ^ t2 ^ t3 ^t4;


wire [7:0]t5,t6,t7,t8;

galois m21(c2[31:24],2'b01,t5);
galois m22(c2[23:16],2'b10,t6);
galois m23(c2[15:8],2'b11,t7);
galois m424(c2[7:0],2'b01,t8);

assign out[87:80] = t5 ^ t6 ^ t7 ^t8;

wire [7:0]t9,t10,t11,t12;

galois m25(c2[31:24],2'b01,t9); 
galois m26(c2[23:16],2'b01,t10);
galois m27(c2[15:8],2'b10,t11);
galois m28(c2[7:0],2'b11,t12);

assign out[79:72] = t9 ^ t10 ^ t11 ^t12;

wire [7:0]t13,t14,t15,t16;

galois m29(c2[31:24],2'b11,t13);
galois m30(c2[23:16],2'b01,t14);
galois m31(c2[15:8],2'b01,t15);
galois m32(c2[7:0],2'b10,t16);

assign out[71:64] = t13 ^ t14 ^ t15 ^t16;



wire [7:0]w1,w2,w3,w4;

galois m33(c3[31:24],2'b10,w1);
galois m34(c3[23:16],2'b11,w2);
galois m35(c3[15:8],2'b01,w3);
galois m36(c3[7:0],2'b01,w4);

assign out[63:56] = w1 ^ w2 ^ w3 ^w4;


wire [7:0]w5,w6,w7,w8;

galois m37(c3[31:24],2'b01,w5);
galois m38(c3[23:16],2'b10,w6);
galois m39(c3[15:8],2'b11,w7);
galois m40(c3[7:0],2'b01,w8);

assign out[55:48] = w5 ^ w6 ^ w7 ^w8;

wire [7:0]w9,w10,w11,w12;

galois m41(c3[31:24],2'b01,w9); 
galois m42(c3[23:16],2'b01,w10);
galois m43(c3[15:8],2'b10,w11);
galois m44(c3[7:0],2'b11,w12);

assign out[47:40] = w9 ^ w10 ^ w11 ^w12;

wire [7:0]w13,w14,w15,w16;

galois m45(c3[31:24],2'b11,w13);
galois m46(c3[23:16],2'b01,w14);
galois m47(c3[15:8],2'b01,w15);
galois m48(c3[7:0],2'b10,w16);

assign out[39:32] = w13 ^ w14 ^ w15 ^w16;



wire [7:0]r1,r2,r3,r4;

galois m49(c4[31:24],2'b10,r1);
galois m50(c4[23:16],2'b11,r2);
galois m51(c4[15:8],2'b01,r3);
galois m52(c4[7:0],2'b01,r4);

assign out[31:24] = r1 ^ r2 ^ r3 ^r4;


wire [7:0]r5,r6,r7,r8;

galois m53(c4[31:24],2'b01,r5);
galois m54(c4[23:16],2'b10,r6);
galois m55(c4[15:8],2'b11,r7);
galois m56(c4[7:0],2'b01,r8);

assign out[23:16] = r5 ^ r6 ^ r7 ^r8;

wire [7:0]r9,r10,r11,r12;

galois m57(c4[31:24],2'b01,r9); 
galois m58(c4[23:16],2'b01,r10);
galois m59(c4[15:8],2'b10,r11);
galois m60(c4[7:0],2'b11,r12);

assign out[15:8] = r9 ^ r10 ^ r11 ^r12;

wire [7:0]r13,r14,r15,r16;

galois m61(c4[31:24],2'b11,r13);
galois m62(c4[23:16],2'b01,r14);
galois m63(c4[15:8],2'b01,r15);
galois m64(c4[7:0],2'b10,r16);

assign out[7:0] = r13 ^ r14 ^ r15 ^r16;

endmodule
