module fadd (Sum,Cout,a,b,Cin);
	input a,b,Cin;
	output Sum,Cout;
	wire x,y,z;
	xor (x,a,b);
	xor (Sum,x,Cin);
	and (y,a,b);
	and (z,Cin,x);
	or (Cout,y,z);
endmodule

// Simulation parameters in Verilog Format
always
#200 a=~a;
#400 b=~b;
#800 Cin=~Cin;

// Simulation parameters
// a CLK 1 1
// b CLK 2 2
// Cin CLK 4 4