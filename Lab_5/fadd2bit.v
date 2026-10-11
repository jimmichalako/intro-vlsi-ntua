module fadd2bit (S0,S1,S2,C0,A0,A1,B0,B1,Cin);
	input A0,A1,B0,B1,Cin;
	output S0,S1,S2;
	wire x,y,z,u,v,w,C0;
	xor (x,A0,B0);
	and (y,A0,B0);
	xor (S0,x,Cin);
	and (z,x,Cin);
	or (C0,z,y);
	xor (u,A1,B1);
	and (v,A1,B1);
	xor (S1,u,C0);
	and (w,u,C0);
	or (S2,w,v);
endmodule

// Simulation parameters in Verilog Formatalways
#200 A0=~A0;
#400 A1=~A1;
#800 B0=~B0;
#1600 B1=~B1;
#3200 Cin=~Cin;

// Simulation parameters
// A0 CLK 1 1
// A1 CLK 2 2
// B0 CLK 4 4
// B1 CLK 8 8
// Cin CLK 16 16

