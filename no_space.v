module no_space(pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,nospc);

	input [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9;
	output nospc;
	wire temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8,temp9;

	assign temp1= pos1[0] || pos1[1];
	assign temp2= pos2[0] || pos2[1];
	assign temp3= pos3[0] || pos3[1];
	assign temp4= pos4[0] || pos4[1];
	assign temp5= pos5[0] || pos5[1];
	assign temp6= pos6[0] || pos6[1];
	assign temp7= pos7[0] || pos7[1];
	assign temp8= pos8[0] || pos8[1];
	assign temp9= pos9[0] || pos9[1];

	assign nospc= temp1 && temp2 && temp3 && temp4 && temp5 && temp6 && temp7 && temp8 && temp9;

endmodule



