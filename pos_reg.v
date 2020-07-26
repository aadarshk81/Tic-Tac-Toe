module pos_reg(clk,rst,ill,playX_pos_en,play0_pos_en,pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9);

	input clk,rst,ill;
	input [8:0] playX_pos_en,play0_pos_en;
	output reg [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9;

	always @ (posedge clk, negedge rst)
	begin
		if(!rst)
		pos1 <= 2'b00;
		else
		begin
			if(ill) pos1 <= pos1;
			else if(playX_pos_en[0]) pos1 <= 2'b01;
			else if(play0_pos_en[0]) pos1 <= 2'b10;
			else pos1 <= pos1;
		end
	end

	always @ (posedge clk, negedge rst)
	begin
		if(!rst)
		pos2 <= 2'b00;
		else
		begin
			if(ill) pos2 <= pos2;
			else if(playX_pos_en[1]) pos2 <= 2'b01;
			else if(play0_pos_en[1]) pos2 <= 2'b10;
			else pos2 <= pos2;
		end
	end

	always @ (posedge clk, negedge rst)
	begin
		if(!rst)
		pos3 <= 2'b00;
		else
		begin
			if(ill) pos3 <= pos3;
			else if(playX_pos_en[2]) pos3 <= 2'b01;
			else if(play0_pos_en[2]) pos3 <= 2'b10;
			else pos3 <= pos3;
		end
	end

	always @ (posedge clk, negedge rst)
	begin
		if(!rst)
		pos4 <= 2'b00;
		else
		begin
			if(ill) pos4 <= pos4;
			else if(playX_pos_en[3]) pos4 <= 2'b01;
			else if(play0_pos_en[3]) pos4 <= 2'b10;
			else pos4 <= pos4;
		end
	end

	always @ (posedge clk, negedge rst)
	begin
		if(!rst)
		pos5 <= 2'b00;
		else
		begin
			if(ill) pos1 <= pos5;
			else if(playX_pos_en[4]) pos5 <= 2'b01;
			else if(play0_pos_en[4]) pos5 <= 2'b10;
			else pos5 <= pos5;
		end
	end

	always @ (posedge clk, negedge rst)
	begin
		if(!rst)
		pos6 <= 2'b00;
		else
		begin
			if(ill) pos6 <= pos6;
			else if(playX_pos_en[5]) pos6 <= 2'b01;
			else if(play0_pos_en[5]) pos6 <= 2'b10;
			else pos6 <= pos6;
		end
	end

	always @ (posedge clk, negedge rst)
	begin
		if(!rst)
		pos7 <= 2'b00;
		else
		begin
			if(ill) pos7 <= pos7;
			else if(playX_pos_en[6]) pos7 <= 2'b01;
			else if(play0_pos_en[6]) pos7 <= 2'b10;
			else pos7 <= pos7;
		end
	end

	always @ (posedge clk, negedge rst)
	begin
		if(!rst)
		pos8 <= 2'b00;
		else
		begin
			if(ill) pos8 <= pos8;
			else if(playX_pos_en[7]) pos8 <= 2'b01;
			else if(play0_pos_en[7]) pos8 <= 2'b10;
			else pos8 <= pos8;
		end
	end

	always @ (posedge clk, negedge rst)
	begin
		if(!rst)
		pos9 <= 2'b00;
		else
		begin
			if(ill) pos9 <= pos9;
			else if(playX_pos_en[8]) pos9 <= 2'b01;
			else if(play0_pos_en[8]) pos9 <= 2'b10;
			else pos9 <= pos9;
		end
	end

endmodule