module subByte2(in,out);

input [127:0]in;
output [127:0]out;

wire [31:0]a,b,c,d;

subbyte m1(.i(in[127:96]),.o(a));
subbyte m2(.i(in[95:64]),.o(b));
subbyte m3(.i(in[63:32]),.o(c));
subbyte m4(.i(in[31:0]),.o(d));

assign out = {a,b,c,d};

endmodule
