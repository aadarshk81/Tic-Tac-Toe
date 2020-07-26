module position_decoder(pos,enable,out);

	input [3:0] pos;
	input enable;
	output reg [8:0] out;

	always @ (*)
	begin
		case(pos)
			4'd1: 
			begin
				if(enable) out=9'b000000001;
				else out=9'd0;
			end
			4'd2: 
			begin
				if(enable) out=9'b000000010;
				else out=9'd0;
			end
			4'd3: 
			begin
				if(enable) out=9'b000000100;
				else out=9'd0;
			end
			4'd4: 
			begin
				if(enable) out=9'b000001000;
				else out=9'd0;
			end
			4'd5: 
			begin
				if(enable) out=9'b000010000;
				else out=9'd0;
			end
			4'd6: 
			begin
				if(enable) out=9'b000100000;
				else out=9'd0;
			end
			4'd7: 
			begin
				if(enable) out=9'b001000000;
				else out=9'd0;
			end
			4'd8: 
			begin
				if(enable) out=9'b010000000;
				else out=9'd0;
			end
			4'd9: 
			begin
				if(enable) out=9'b100000000;
				else out=9'd0;
			end

			default: out=9'b000000000;
		endcase
	end

endmodule