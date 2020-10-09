module invSubByte2(in,out);

input [127:0]in;
output [127:0]out;

wire [31:0]a,b,c,d;

invSubByte m1(.i(in[127:96]),.o(a));
invSubByte m2(.i(in[95:64]),.o(b));
invSubByte m3(.i(in[63:32]),.o(c));
invSubByte m4(.i(in[31:0]),.o(d));

assign out = {a,b,c,d};


endmodule
