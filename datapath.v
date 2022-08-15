module datapath(
    input wire signed [7:0] accumulator,    
    input wire signed [7:0] Q,   
    input wire signed q0,       
    input wire signed [7:0] multiplicand,  
    output reg signed [7:0] accumulator_next,   
    output reg signed [7:0] next_Q, 
    output reg q0_next);
    
	wire [7:0] temp_addition_subtraction;  
	
	subractor myadd(Q[0], accumulator, multiplicand, temp_addition_subtraction);
	
		always @(*) begin	
		if(Q[0] == q0) begin
            q0_next = Q[0];
            next_Q = Q>>1;
            next_Q[7] = accumulator[0];
            
            accumulator_next = accumulator>>1;
            
			if (accumulator[7] == 1)
                accumulator_next[7] = 1;
		end

		else begin        
            q0_next = Q[0];
            next_Q = Q>>1;
            next_Q[7] = temp_addition_subtraction[0];
            
            accumulator_next = temp_addition_subtraction>>1;
            
			if (temp_addition_subtraction[7] == 1)
                accumulator_next[7] = 1;
		end			
end	
endmodule 
