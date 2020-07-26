module pos_win(pos1,pos2,pos3,winner);

	input [1:0] pos1,pos2,pos3;
	output [1:0] winner;

	wire [1:0] temp1,temp2,temp3;

	assign temp1[0] = !(pos1[0]^pos2[0]);
	assign temp1[1] = !(pos1[1]^pos2[1]);
	assign temp2[0] = !(pos2[0]^pos3[0]);
	assign temp2[1] = !(pos2[1]^pos3[1]);

	assign temp3[0] = temp1[0] && temp2[0];
	assign temp3[1] = temp1[1] && temp2[1];

	assign temp4 = pos1[0] || pos1[1];

	assign winner[0] = (temp4 && temp3[0] && temp3[1]) && pos1[0];
	assign winner[1] = (temp4 && temp3[0] && temp3[1]) && pos1[1];

endmodule