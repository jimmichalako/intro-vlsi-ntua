module Tff (T,Clk);
	input Clk;
	output T;
	wire a,b,c,d,e,ClkInv;
	not (ClkInv,Clk);
	pmos (a,d,Clk);
	nmos (a,d,ClkInv);
	pmos (a,c,ClkInv);
	nmos (a,c,Clk);
	not (b,a);
	not (c,b);
	pmos (d,b,ClkInv);
	nmos (d,b,Clk);
	pmos (d,e,Clk);
	nmos (d,e,ClkInv);
	not (T,d);
	not (e,T);
endmodule

// Simulation parameters in Verilog Format
always
#200 Clk=~Clk;

// Simulation parameters
// Clk CLK 1 1

