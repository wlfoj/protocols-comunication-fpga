/*
Em out tem-se o clock na frequência de 9600Hz
*/
module baudRateGenerator(clk_in, reset, clk_out);
	input clk_in;
	input reset;	
	
	reg [12:0]baud_Rate = 13'b1010001011000;
	reg [12:0]baudRateReg; 
		
	
	output clk_out;
	
	always @(posedge clk_in or negedge reset)
		 if (!reset) baudRateReg <= 13'b1;
		 
		 else if (clk_out) baudRateReg <= 13'b1;
				else baudRateReg <= baudRateReg + 1'b1;
				
	assign clk_out = (baudRateReg == baud_Rate);


	
endmodule
