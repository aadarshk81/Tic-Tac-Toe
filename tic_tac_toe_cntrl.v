module tic_tac_toe_cntrl(clk,rst,play,ill,win,nospc,playX_en,play0_en);

	input clk,rst,play,ill,nospc;
	input [1:0] win;
	output reg playX_en,play0_en;

	reg [1:0] cs,ns;
	parameter IDLE=2'b00, PLAYX=2'b01, PLAY0=2'b10, GO=2'b11;

	always @ (posedge clk, negedge rst)
	begin
		if(!rst)
		cs<=IDLE;
		else
		cs<=ns;
	end

	always @ (play,ill,nospc,win)
	begin
		case(cs)
			IDLE:
			begin
				playX_en=1'b0;
				play0_en=1'b0;
				if(play)
				ns=PLAYX;
				else
				ns=IDLE;
			end

			PLAYX:
			begin
				playX_en=1'b1;
				play0_en=1'b0;
				if((play==1'b1) &&  (nospc==1'b0) && (win==2'b00))
				begin
				ns=PLAY0;
				end
				else if(nospc)
				begin
				ns=GO;
				end
				else if(win==2'b01 || win==2'b10)
				begin
				ns=GO;
				end
				else
				ns=PLAYX;
			end

			PLAY0:
			begin
				playX_en=1'b0;
				play0_en=1'b1;
				if((play==1'b1) &&  (nospc==1'b0) && (win==2'b00))
				begin
				ns=PLAYX;
				end
				else if(nospc)
				begin
				ns=GO;
				end
				else if(win==2'b01 || win==2'b10)
				begin
				ns=GO;
				end
				else
				ns=PLAY0;
			end

			GO:
			begin
				playX_en=1'b0;
				play0_en=1'b0;
				ns=IDLE;
			end

			default:
			begin
				ns=IDLE;
				playX_en=1'b0;
				play0_en=1'b0;
			end
		endcase
	end

endmodule
