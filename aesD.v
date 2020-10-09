module aesD(message,key,out);

input [127:0]message;
input [255:0]key;
output [127:0]out;

wire [127:0]key0,key1,key2,key3,key4,key5,key6,key7,key8,key9,key10,key11,key12,key13,key14;
wire [255:0]key23,key45,key67,key89,key1011,key1213,key1415;
wire [127:0]out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13;

assign key0 = key[255:128];
assign key1 = key[127:0];

KeyGenerate m1(key,key23,4'h0);
assign key2 = key23[255:128];
assign key3 = key23[127:0];

KeyGenerate m2(key23,key45,4'h1);
assign key4 = key45[255:128];
assign key5 = key45[127:0];

KeyGenerate m3(key45,key67,4'h2);
assign key6 = key67[255:128];
assign key7 = key67[127:0];

KeyGenerate m4(key67,key89,4'h3);
assign key8 = key89[255:128];
assign key9 = key89[127:0];

KeyGenerate m5(key89,key1011,4'h4);
assign key10 = key1011[255:128];
assign key11 = key1011[127:0];

KeyGenerate m6(key1011,key1213,4'h5);
assign key12 = key1213[255:128];
assign key13 = key1213[127:0];

KeyGenerate m7(key1213,key1415,4'h6);
assign key14 = key1415[255:128];


initialRound m8 (message,key14,out0);
invMainRound m9 (out0,key13,out1);
invMainRound m10 (out1,key12,out2);
invMainRound m11 (out2,key11,out3);
invMainRound m12 (out3,key10,out4);
invMainRound m13 (out4,key9,out5);
invMainRound m14 (out5,key8,out6);
invMainRound m15 (out6,key7,out7);
invMainRound m16 (out7,key6,out8);
invMainRound m17 (out8,key5,out9);
invMainRound m18 (out9,key4,out10);
invMainRound m19 (out10,key3,out11);
invMainRound m20 (out11,key2,out12);
invMainRound m21 (out12,key1,out13);
invLastRound m22 (out13,key0,out);


endmodule
