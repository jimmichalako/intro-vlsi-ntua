module DposEdge (Q,Qinv,D,Clk);
	input D,Clk;
	output Q,Qinv;
	wire a,b,c,d;
	nand (b,c,a);
	nand (c,b,Clk);
	nand (d,a,Clk);
	nand (a,d,D);
	nand (Q,c,Qinv);
	nand (Qinv,d,Q);
endmodule

// Simulation parameters in Verilog Format
always
#200 Clk=~Clk;
#400 D=~D;

// Simulation parameters
// Clk CLK 1 1
// D CLK 2 2

