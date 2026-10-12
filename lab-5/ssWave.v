module ssWave (out,ss,in,Clk);
	input in,Clk;
	output ss,out;
	wire a,b,c,d,Qss,QssInv;
	wire CLK,CLKInv,T0,T0Inv,T1,T1Inv,T2,T2Inv,a0,b0,c0,d0,e0,a1,b1,c1,d1,e1,a2,b2,c2,d2,e2;
	wire w,x,y,z;
	
	not (ss,in); //antistrefoume gia na xekinaei apo 1 kai oxi apo 0 to roloi
	nand (b,c,a);
	nand (c,b,Clk);
	nand (d,a,Clk);
	nand (a,d,ss);
	nand (Qss,c,QssInv);
	nand (QssInv,d,Qss);
	
	or (w,T0Inv,T1Inv,T2Inv,Qss); //edw vgainei to teliko CLK twn T flip flops
	and (CLK,Clk,w);
	
	not (CLKInv,CLK); // T flip flops
	pmos (a0,d0,CLK);
	nmos (a0,d0,CLKInv);
	pmos (a0,c0,CLKInv);
	nmos (a0,c0,CLK);
	not (b0,a0);
	not (c0,b0);
	pmos (d0,b0,CLKInv);
	nmos (d0,b0,CLK);
	pmos (d0,e0,CLK);
	nmos (d0,e0,CLKInv);
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
	
	and (x,T2Inv,T0Inv); //ylopoihsh kymatomorfhs
	and (y,T1,T0Inv);
	and (z,T2,T1Inv,T0);
	or (out,x,y,z);
endmodule