module tic_tac_toe(clk,rst,play,pos_playX,pos_play0,pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,win);

	input clk,rst,play;
	input [3:0] pos_playX,pos_play0;
	output [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,win;
	wire ill,nospc,playX_en,play0_en;
	wire [8:0] playX_pos_en,play0_pos_en;

	tic_tac_toe_cntrl T1 (clk,rst,play,ill,win,nospc,playX_en,play0_en);

	position_decoder PX (pos_playX,playX_en,playX_pos_en);
	position_decoder P0 (pos_play0,play0_en,play0_pos_en);

	pos_reg T2 (clk,rst,ill,playX_pos_en,play0_pos_en,pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9);

	no_space T3 (pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,nospc);
	// illegal_move T4 (pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,ill,playX_pos_en,play0_pos_en);

	winner_detector T5 (pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,win);

endmodule