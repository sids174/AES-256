module subbyte(i,o);

input [31:0]i;
output [31:0]o;

wire [7:0]a,b,c,d;

sbox m1(.in(i[31:24]),.out(a));
sbox m2(.in(i[23:16]),.out(b));
sbox m3(.in(i[15:8]),.out(c));
sbox m4(.in(i[7:0]),.out(d));

assign o = {a,b,c,d};

endmodule
