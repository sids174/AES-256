module invMainRound(message,key,out);

input [127:0]message,key;
output [127:0]out;

wire [127:0]o1,o2,o3;

invSubByte2 m1(message,o1);
invShiftRows m2(o1,o2);

addRoundkey m4(o2,key,o3);
invMixColumns m3(o3,out);


endmodule
