module winner_detector(pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,winner);

	input [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9;
	output [1:0] winner;

	wire [1:0] win1,win2,win3,win4,win5,win6,win7,win8;

	pos_win p1 (pos1,pos2,pos3,win1);
	pos_win p2 (pos4,pos5,pos6,win2);
	pos_win p3 (pos7,pos8,pos9,win3);

	pos_win p4 (pos1,pos4,pos7,win4);
	pos_win p5 (pos2,pos5,pos8,win5);
	pos_win p6 (pos3,pos6,pos9,win6);

	pos_win p7 (pos1,pos5,pos9,win7);
	pos_win p8 (pos3,pos5,pos7,win8);

	assign winner = win1 | win2 | win3 | win4 | win5 | win6 | win7 | win8;

endmodule