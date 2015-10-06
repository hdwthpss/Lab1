`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:14:34 08/22/2015 
// Design Name: 
// Module Name:    decoder 
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
module decoder(in,en,d
    );
	input [1:0] in;
	input en;
	output [3:0] d;
	reg [3:0] d;
	always@(*)
		begin
			d[0]=((~in[0]) & (~in[1])) & en;
			d[1]=((in[0]) & (~in[1])) & en;
			d[2]=((~in[0]) & (in[1])) & en;
			d[3]=((in[0]) & (in[1])) & en;
		end
		
	
	
	
endmodule
