module ALU3bit(out0,out1,out2,out3,A0,B0,A1,B1,A2,B2,op0,op1);
	input A0,B0,A1,B1,A2,B2,op0,op1;
	output out0,out1,out2,out3;
	wire op0inv,op1inv,z1,z2,z3;
	wire or0,and0,logic0,sum0,cout0,w1,w2,w3,w4,w5,w6,w7,w8;
	wire or1,and1,logic1,sum1,cout1,x1,x2,x3,x4,x5,x6,x7,x8;
	wire or2,and2,logic2,sum2,cout2,y1,y2,y3,y4,y5,y6,y7,y8;
	
	not (op0inv,op0); 
	not (op1inv,op1);

//ALU0	
	nor (w1,B0,op0);//Binv XOR
	and (w2,B0,op0);//Βinv=op0
	nor (w3,w2,w1);
	or (or0,A0,B0);//Logic OR
	and (and0,A0,B0);//Logic AND
	pmos (logic0,or0,op0);//OR-AND MUX
	nmos (logic0,or0,op0inv);
	pmos (logic0,and0,op0inv);
	nmos (logic0,and0,op0);
	nand (w4,A0,w3);//FULL ADDER
	or (w5,A0,w3);
	and (w6,w5,w4);
	nand (w7,w6,op0);//Cin0=op0
	or (w8,w6,op0);
	and (sum0,w7,w8);
	nand (cout0,w7,w4);
	pmos (out0,sum0,op1);//LOGIC-FA MUX
	nmos (out0,sum0,op1inv);
	pmos (out0,logic0,op1inv);
	nmos (out0,logic0,op1);
	
//ALU1	
	nor (x1,B1,op0);//Binv XOR
	and (x2,B1,op0);//Βinv=op0
	nor (x3,x2,x1);
	or (or1,A1,B1);//Logic OR
	and (and1,A1,B1);//Logic AND
	pmos (logic1,or1,op0);//OR-AND MUX
	nmos (logic1,or1,op0inv);
	pmos (logic1,and1,op0inv);
	nmos (logic1,and1,op0);
	nand (x4,A1,x3);//FULL ADDER
	or (x5,A1,x3);
	and (x6,x5,x4);
	nand (x7,x6,cout0);//Cin0=cout0
	or (x8,x6,cout0);
	and (sum1,x7,x8);
	nand (cout1,x7,x4);
	pmos (out1,sum1,op1);//LOGIC-FA MUX
	nmos (out1,sum1,op1inv);
	pmos (out1,logic1,op1inv);
	nmos (out1,logic1,op1);
	
//ALU2
	nor (y1,B2,op0);//Binv XOR
	and (y2,B2,op0);//Βinv=op0
	nor (y3,y2,y1);
	or (or2,A2,B2);//Logic OR
	and (and2,A2,B2);//Logic AND
	pmos (logic2,or2,op0);//OR-AND MUX
	nmos (logic2,or2,op0inv);
	pmos (logic2,and2,op0inv);
	nmos (logic2,and2,op0);
	nand (y4,A2,y3);//FULL ADDER
	or (y5,A2,y3);
	and (y6,y5,y4);
	nand (y7,y6,cout1);//Cin0=cout1
	or (y8,y6,cout1);
	and (sum2,y7,y8);
	nand (cout2,y7,y4);
	pmos (out2,sum2,op1);//LOGIC-FA MUX
	nmos (out2,sum2,op1inv);
	pmos (out2,logic2,op1inv);
	nmos (out2,logic2,op1);
	
//out3
	nor (z1,op0,cout2);
	and (z2,op0,cout2);
	nor (z3,z2,z1);
	and (out3,z3,op1inv);//X=op1inv
endmodule

// Simulation parameters in Verilog Format
always
#400 A0=~A0;
#200 B0=~B0;
#800 A1=~A1;
#400 B1=~B1;
#1600 A2=~A2;
#800 B2=~B2;
#3200 op0=~op0;
#6400 op1=~op1;

// Simulation parameters
// A0 CLK 2 2
// B0 CLK 1 1
// A1 CLK 4 4
// B1 CLK 2 2
// A2 CLK 8 8
// B2 CLK 4 4
// op0 CLK 16 16
// op1 CLK 32 32

