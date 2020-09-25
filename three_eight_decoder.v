`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:39:54 09/02/2020 
// Design Name: 
// Module Name:    three_eight_decoder 
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
module three_eight_decoder(
  y0,y1,y2,y3,y4,y5,y6,y7,
  i0,i1,i2,
  en
    );

input i0,i1,i2,en;
output y0,y1,y2,y3,y4,y5,y6,y7;

wire i0_,i1_i2_;

not(i0_,i0);
not(i1_,i1);
not(i2_,i2);


and(y0, i2_,i1_,i0_,en);
and(y1, i2_,i1_,i0,en);
and(y2, i2_,i1,i0_,en);
and(y3, i2_,i1,i0,en);

and(y4, i2,i1_,i0_,en);
and(y5, i2,i1_,i0,en);
and(y6, i2,i1,i0_,en);
and(y7, i2,i1,i0,en);



endmodule
