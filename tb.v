module tb;
wire signed [15:0] y;
reg signed [7:0] a,b;


booth my_booth(.multiplier(a),.multiplicand(b),.product(y));


initial begin
$monitor($time,"       ",a," *",b," = ", y);

b = 8'b1;
a = 8'b1;

#10

a = 8'b11111110;
b = 8'b10110000;

#10

a = 8'b1011111;
b = 8'b1010100;

#10

a = 8'b011;
b = 8'b00011;

#10  

a = 8'b00011100;
b = 8'b010101;

#10

a = 8'b1011110;
b = 8'b101011;

#10

a = 8'b011001;
b = 8'b101100;

#10
a = 8'b10101;
b = 8'b10001111;

end
endmodule