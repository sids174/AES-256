module KeyGenerate(keyI,keyO,num);

input [255:0]keyI;
input [3:0]num;
output [255:0]keyO;

wire [31:0]c1,c2,c3,c4,c5,c6,c7,c8,rot,sub,rc,sub2;

assign c1 = keyI[255:224];
assign c2 = keyI[223:192];
assign c3 = keyI[191:160];
assign c4 = keyI[159:128];
assign c5 = keyI[127:96];
assign c6 = keyI[95:64];
assign c7 = keyI[63:32];
assign c8 = keyI[31:0];


assign rot = {c8[23:0],c8[31:24]};
subbyte m1(rot,sub);
rcon m2(.num(num),.rcon(rc));

assign keyO[255:224] = c1 ^ sub ^ rc; 
assign keyO[223:192] = keyO[255:224] ^ c2;
assign keyO[191:160] = keyO[223:192] ^ c3; 
assign keyO[159:128] = keyO[191:160] ^ c4; 

subbyte m3(keyO[159:128],sub2);

assign keyO[127:96] = sub2 ^ c5;
assign keyO[95:64] = keyO[127:96] ^ c6;
assign keyO[63:32] = keyO[95:64] ^ c7;
assign keyO[31:0] = keyO[63:32] ^ c8;


endmodule
