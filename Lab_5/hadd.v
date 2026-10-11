module hadd (Sum,Cout,a,b);
	input a,b;
	output Sum,Cout;
	xor (Sum,a,b);
	and (Cout,a,b);
endmodule

// Simulation parameters in Verilog Formatalways
always
#200 a=~a;
#400 b=~b;

// Simulation parameters
// a CLK 1 1
// b CLK 2 2