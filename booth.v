module booth(
    input signed[7:0] multiplier, multiplicand,
    output signed [15:0] product);

	wire signed [7:0] Q[0:6];  
	wire signed [7:0] acc[0:7]; 
	wire signed[7:0] q0;
	wire qout;
	
	assign acc[0] = 8'b00000000;   
	
	datapath step1(acc[0], multiplier, 1'b0, multiplicand, acc[1],        Q[0],         q0[1]);
	datapath step2(acc[1], Q[0],      q0[1], multiplicand, acc[2],        Q[1],         q0[2]);
	datapath step3(acc[2], Q[1],      q0[2], multiplicand, acc[3],        Q[2],         q0[3]);
	datapath step4(acc[3], Q[2],      q0[3], multiplicand, acc[4],        Q[3],         q0[4]);
	datapath step5(acc[4], Q[3],      q0[4], multiplicand, acc[5],        Q[4],         q0[5]);
	datapath step6(acc[5], Q[4],      q0[5], multiplicand, acc[6],        Q[5],         q0[6]);
	datapath step7(acc[6], Q[5],      q0[6], multiplicand, acc[7],        Q[6],         q0[7]);
	datapath step8(acc[7], Q[6],      q0[7], multiplicand, product[15:8], product[7:0], qout);
	
	 
endmodule