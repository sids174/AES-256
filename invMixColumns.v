module invMixColumns(in,out);

input [127:0]in;
output [127:0] out;

wire [31:0]c1,c2,c3,c4;

assign c1 = in[127:96]; 
assign c2 = in[95:64];
assign c3 = in[63:32];
assign c4 = in[31:0];




wire [7:0]o1,o2,o3,o4;

invGalois m1(c1[31:24],4'b1110,o1);
invGalois m2(c1[23:16],4'b1011,o2);
invGalois m3(c1[15:8],4'b1101,o3);
invGalois m4(c1[7:0],4'b1001,o4);

assign out[127:120] = o1 ^ o2 ^ o3 ^o4;


wire [7:0]o5,o6,o7,o8;

invGalois m5(c1[31:24],4'b1001,o5);
invGalois m6(c1[23:16],4'b1110,o6);
invGalois m7(c1[15:8],4'b1011,o7);
invGalois m8(c1[7:0],4'b1101,o8);

assign out[119:112] = o5 ^ o6 ^ o7 ^o8;

wire [7:0]o9,o10,o11,o12;

invGalois m9(c1[31:24],4'b1101,o9); 
invGalois m10(c1[23:16],4'b1001,o10);
invGalois m11(c1[15:8],4'b1110,o11);
invGalois m12(c1[7:0],4'b1011,o12);

assign out[111:104] = o9 ^ o10 ^ o11 ^o12;

wire [7:0]o13,o14,o15,o16;

invGalois m13(c1[31:24],4'b1011,o13);
invGalois m14(c1[23:16],4'b1101,o14);
invGalois m15(c1[15:8],4'b1001,o15);
invGalois m16(c1[7:0],4'b1110,o16);

assign out[103:96] = o13 ^ o14 ^ o15 ^o16;




wire [7:0]t1,t2,t3,t4;

invGalois m17(c2[31:24],4'b1110,t1);
invGalois m18(c2[23:16],4'b1011,t2);
invGalois m19(c2[15:8],4'b1101,t3);
invGalois m20(c2[7:0],4'b1001,t4);

assign out[95:88] = t1 ^ t2 ^ t3 ^t4;


wire [7:0]t5,t6,t7,t8;

invGalois m21(c2[31:24],4'b1001,t5);
invGalois m22(c2[23:16],4'b1110,t6);
invGalois m23(c2[15:8],4'b1011,t7);
invGalois m424(c2[7:0],4'b1101,t8);

assign out[87:80] = t5 ^ t6 ^ t7 ^t8;

wire [7:0]t9,t10,t11,t12;

invGalois m25(c2[31:24],4'b1101,t9); 
invGalois m26(c2[23:16],4'b1001,t10);
invGalois m27(c2[15:8],4'b1110,t11);
invGalois m28(c2[7:0],4'b1011,t12);

assign out[79:72] = t9 ^ t10 ^ t11 ^t12;

wire [7:0]t13,t14,t15,t16;

invGalois m29(c2[31:24],4'b1011,t13);
invGalois m30(c2[23:16],4'b1101,t14);
invGalois m31(c2[15:8],4'b1001,t15);
invGalois m32(c2[7:0],4'b1110,t16);

assign out[71:64] = t13 ^ t14 ^ t15 ^t16;



wire [7:0]w1,w2,w3,w4;

invGalois m33(c3[31:24],4'b1110,w1);
invGalois m34(c3[23:16],4'b1011,w2);
invGalois m35(c3[15:8],4'b1101,w3);
invGalois m36(c3[7:0],4'b1001,w4);

assign out[63:56] = w1 ^ w2 ^ w3 ^w4;


wire [7:0]w5,w6,w7,w8;

invGalois m37(c3[31:24],4'b1001,w5);
invGalois m38(c3[23:16],4'b1110,w6);
invGalois m39(c3[15:8],4'b1011,w7);
invGalois m40(c3[7:0],4'b1101,w8);

assign out[55:48] = w5 ^ w6 ^ w7 ^w8;

wire [7:0]w9,w10,w11,w12;

invGalois m41(c3[31:24],4'b1101,w9); 
invGalois m42(c3[23:16],4'b1001,w10);
invGalois m43(c3[15:8],4'b1110,w11);
invGalois m44(c3[7:0],4'b1011,w12);

assign out[47:40] = w9 ^ w10 ^ w11 ^w12;

wire [7:0]w13,w14,w15,w16;

invGalois m45(c3[31:24],4'b1011,w13);
invGalois m46(c3[23:16],4'b1101,w14);
invGalois m47(c3[15:8],4'b1001,w15);
invGalois m48(c3[7:0],4'b1110,w16);

assign out[39:32] = w13 ^ w14 ^ w15 ^w16;



wire [7:0]r1,r2,r3,r4;

invGalois m49(c4[31:24],4'b1110,r1);
invGalois m50(c4[23:16],4'b1011,r2);
invGalois m51(c4[15:8],4'b1101,r3);
invGalois m52(c4[7:0],4'b1001,r4);

assign out[31:24] = r1 ^ r2 ^ r3 ^r4;


wire [7:0]r5,r6,r7,r8;

invGalois m53(c4[31:24],4'b1001,r5);
invGalois m54(c4[23:16],4'b1110,r6);
invGalois m55(c4[15:8],4'b1011,r7);
invGalois m56(c4[7:0],4'b1101,r8);

assign out[23:16] = r5 ^ r6 ^ r7 ^r8;

wire [7:0]r9,r10,r11,r12;

invGalois m57(c4[31:24],4'b1101,r9); 
invGalois m58(c4[23:16],4'b1001,r10);
invGalois m59(c4[15:8],4'b1110,r11);
invGalois m60(c4[7:0],4'b1011,r12);

assign out[15:8] = r9 ^ r10 ^ r11 ^r12;

wire [7:0]r13,r14,r15,r16;

invGalois m61(c4[31:24],4'b1011,r13);
invGalois m62(c4[23:16],4'b1101,r14);
invGalois m63(c4[15:8],4'b1001,r15);
invGalois m64(c4[7:0],4'b1110,r16);

assign out[7:0] = r13 ^ r14 ^ r15 ^r16;

endmodule
