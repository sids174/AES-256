module rcon(num,rcon);

input [3:0] num;
output [31:0] rcon;

reg [31:0] rcon;

always @(num) begin

   case(num)
         4'h0: rcon=32'h01_00_00_00;
         4'h1: rcon=32'h02_00_00_00;
         4'h2: rcon=32'h04_00_00_00;
         4'h3: rcon=32'h08_00_00_00;
         4'h4: rcon=32'h10_00_00_00;
         4'h5: rcon=32'h20_00_00_00;
         4'h6: rcon=32'h40_00_00_00;
         4'h7: rcon=32'h80_00_00_00;
         4'h8: rcon=32'h1b_00_00_00;
         4'h9: rcon=32'h36_00_00_00;
         default: rcon=32'h00_00_00_00;
   endcase

end

endmodule

