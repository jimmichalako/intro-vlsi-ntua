module ALU3bit(out0,out1,out2,out3,A0,A1,A2,B0,B1,B2,op0,op1);
	input A0,A1,A2,B0,B1,B2,op0,op1;
	output out0,out1,out2,out3;
	wire op0inv,op1inv;
	wire or0,and0,logic0,sum0,cout0,w1,w2,w3,w4,w5,w6,w7,w8;
	wire or1,and1,logic1,sum1,cout1,x1,x2,x3,x4,x5,x6,x7,x8;
	
	not (op0inv,op0); 
	not (op1inv,op1);
	
	//ALU0
	xor (w1,op0,B0);
	and (and0,A0,B0);
	or (or0,A0,B0);
	and (w2,op0inv,or0);
	and (w3,op0,and0);
	or (logic0,w2,w3);
	xor (w4,A0,w1);
	xor (sum0,w4,op0);
	and (w5,A0,w1);
	and (w6,op0,w4);
	or (cout0,w5,w6);
	and (w7,op1inv,sum0);
	and (w8,op1,logic0);
	or (out0,w7,w8);
endmodule