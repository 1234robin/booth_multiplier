
module subractor(
    input wire cin,
    input wire [7:0] i0,i1,
    output wire [7:0] sum);

	wire cout;
	wire [7:0] temp;
	wire [7:0] int_ip; 
    xor_gate x0 (i1[0], cin, int_ip[0]);
    xor_gate x1 (i1[1], cin, int_ip[1]);
    xor_gate x2 (i1[2], cin, int_ip[2]);
    xor_gate x3 (i1[3], cin, int_ip[3]);
    xor_gate x4 (i1[4], cin, int_ip[4]);
    xor_gate x5 (i1[5], cin, int_ip[5]);
    xor_gate x6 (i1[6], cin, int_ip[6]);
    xor_gate x7 (i1[7], cin, int_ip[7]);
    
    
	full_adder full_adder1(i0[0], int_ip[0], cin,     sum[0], temp[0]);
	full_adder full_adder2(i0[1], int_ip[1], temp[0], sum[1], temp[1]);
	full_adder full_adder3(i0[2], int_ip[2], temp[1], sum[2], temp[2]);
	full_adder full_adder4(i0[3], int_ip[3], temp[2], sum[3], temp[3]);
	full_adder full_adder5(i0[4], int_ip[4], temp[3], sum[4], temp[4]);
	full_adder full_adder6(i0[5], int_ip[5], temp[4], sum[5], temp[5]);
	full_adder full_adder7(i0[6], int_ip[6], temp[5], sum[6], temp[6]);
	full_adder full_adder8(i0[7], int_ip[7], temp[6], sum[7], cout);
	
endmodule



 
