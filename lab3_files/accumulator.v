module accumulator( PHI, RST, A, CIN, SOUT, COUT);

input PHI;
input RST;
input [3:0] A;
input CIN;
output reg[3:0] SOUT;
output COUT;

wire [3:0] B;
wire [4:0] S;

assign B = SOUT;
assign COUT=S[4];
assign S = A+B+CIN;

always @(posedge PHI)
begin
   if(RST)
     SOUT <= 4'h0;
   else
     SOUT <= S[3:0];
end

endmodule




