module tic_tac_toe_tb;

	wire [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,win;
	reg clk,rst,play;
	reg [3:0] pos_playX,pos_play0;

	tic_tac_toe A1 (clk,rst,play,pos_playX,pos_play0,pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,win);

	initial #1000 $finish;

	initial
	begin
	clk=1'b0;
	forever #5 clk = ~clk;
	end 

	initial
	begin
	$dumpfile("tic_tac_toe.vcd");
	$dumpvars(0,tic_tac_toe_tb);
	play = 0;
  	rst = 0;
  	#50
  	rst = 1;
  	#50
  	play = 1;
  	pos_playX = 5;
  	#50
  	play=0;
  	#50
  	play=1;
  	pos_play0 = 1;
  	#50
  	play=0;
  	#50
  	play=1;
  	pos_playX = 9;
  	#50
  	play=0;
  	#50
  	play=1;
  	pos_play0 = 2;
  	#50
  	play=0;
  	#50
  	play=1;
    pos_playX = 7;
    #50
    play=0;
    #50
    play=1;
  	pos_play0 = 3;  
  	#50
  	play=0; 
 	end

 endmodule