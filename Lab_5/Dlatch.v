module Dlatch (Q,Qinv,D,Clk);
	input D,Clk;
	output Q,Qinv;
	assign Dinv=~D;
	assign Q=~(Qinv|(Clk&Dinv));
	assign Qinv=~(Q|(Clk&D));
endmodule

// Simulation parameters in Verilog Format
always
#200 Clk=~Clk;
#400 D=~D;

// Simulation parameters
// Clk CLK 1 1
// D CLK 2 2

