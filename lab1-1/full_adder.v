`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:23:26 08/15/2015 
// Design Name: 
// Module Name:    full_adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module full_adder(x,y,cin,s,cout
    );

	input x,y,cin;
	output s,cout;
	
	
	reg s,cout;
	
	always@(x or y or cin)
	begin
		s=x^y^cin;
		cout=x & y | x & cin | y & cin;
	end
	
	
	

endmodule
