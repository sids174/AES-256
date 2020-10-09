module main(message,key,final_output1,final_output2);

input [127:0]message;
input [255:0]key;
output [127:0]final_output1,final_output2;

wire [127:0]out,out1;

aesE m1(message,key,out);

assign final_output1 = out;

aesD m2(out,key,out1);

assign final_output2 = out1;

endmodule
