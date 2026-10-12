module Counter3Bit (T0,T0Inv,T1,T1Inv,T2,T2Inv,Clk);
	input Clk;
	output T0,T0Inv,T1,T1Inv,T2,T2Inv;
	wire a0,b0,c0,d0,e0,a1,b1,c1,d1,e1,a2,b2,c2,d2,e2,ClkInv;
	not (ClkInv,Clk);
	
	pmos (a0,d0,Clk);
	nmos (a0,d0,ClkInv);
	pmos (a0,c0,ClkInv);
	nmos (a0,c0,Clk);
	not (b0,a0);
	not (c0,b0);
	pmos (d0,b0,ClkInv);
	nmos (d0,b0,Clk);
	pmos (d0,e0,Clk);
	nmos (d0,e0,ClkInv);
	not (T0,d0);
	not (e0,T0);
	not (T0Inv,T0);
	
	pmos (a1,d1,T0);
	nmos (a1,d1,T0Inv);
	pmos (a1,c1,T0Inv);
	nmos (a1,c1,T0);
	not (b1,a1);
	not (c1,b1);
	pmos (d1,b1,T0Inv);
	nmos (d1,b1,T0);
	pmos (d1,e1,T0);
	nmos (d1,e1,T0Inv);
	not (T1,d1);
	not (e1,T1);
	not (T1Inv,T1);
	
	pmos (a2,d2,T1);
	nmos (a2,d2,T1Inv);
	pmos (a2,c2,T1Inv);
	nmos (a2,c2,T1);
	not (b2,a2);
	not (c2,b2);
	pmos (d2,b2,T1Inv);
	nmos (d2,b2,T1);
	pmos (d2,e2,T1);
	nmos (d2,e2,T1Inv);
	not (T2,d2);
	not (e2,T2);
	not (T2Inv,T2);
endmodule

// Simulation parameters in Verilog Format
always
#200 Clk=~Clk;

// Simulation parameters
// Clk CLK 1 1