module initialRound(message,key,out);

input [127:0] message,key;
output [127:0] out;

addRoundkey m1(message,key,out);

endmodule
