module DnegEdge (Q,D,Clk);
	input D,Clk;
	output Q;
	wire v,w,x,y,z,ClkInv;
	not (ClkInv,Clk);
	pmos (v,D,ClkInv);
	nmos (v,D,Clk);
	pmos (v,x,Clk);
	nmos (v,x,ClkInv);
	not (w,v);
	not (x,w);
	pmos (y,w,Clk);
	nmos (y,w,ClkInv);
	pmos (y,z,ClkInv);
	nmos (y,z,Clk);
	not (Q,y);
	not(z,Q);
endmodule

// Simulation parameters in Verilog Format
always
#200 Clk=~Clk;
#400 D=~D;

// Simulation parameters
// Clk CLK 1 1
// D CLK 2 2

