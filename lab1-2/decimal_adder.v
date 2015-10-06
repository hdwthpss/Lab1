`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:48:42 08/20/2015 
// Design Name: 
// Module Name:    decimal_adder 
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
module decimal_adder(a_in,b_in,s_out,c_out,c_in
    );
	input [3:0] a_in;
	input [3:0] b_in;
	input c_in;
	
	output [4:0] s_out;
	output c_out;
	
	reg [4:0] s_out;
	reg c_out;
	reg [4:0] temp_s;
	
	always@(*)
	begin
		temp_s=a_in+b_in;
		c_out=temp_s[4] | temp_s[3] & temp_s[2] | temp_s[3] & temp_s[1];
		
		if(c_out==1)
			s_out={temp_s[4],temp_s[3],temp_s[2],temp_s[1],temp_s[0]}+5'b00110;
		else
			s_out=temp_s;
	end
endmodule
