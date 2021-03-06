module E1_Counter15(clk,rst,ud,c);
// ud - Up or Down, High if up. Low if down.

input clk,rst,ud;
output [3:0]c;

reg [3:0]c = 0;
always@(posedge(clk) or posedge(rst))
begin
	if(rst == 1)
		c<=0;
	else
		if(ud == 1) // Up
			if(c == 15)
				c<=0;
			else
				c<=c+1;
		else
			if(c == 0)
				c<=15;
			else
				c<=c-1;
end
endmodule