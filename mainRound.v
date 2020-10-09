module mainRound(message,key,out);

input [127:0]message,key;
output [127:0]out;

wire [127:0]o1,o2,o3;

subByte2 m1(message,o1);
shiftRows m2(o1,o2);
mixColumns m3(o2,o3);
addRoundkey m4(o3,key,out);

endmodule

