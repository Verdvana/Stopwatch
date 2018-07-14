module clock(
              input clk, 
              input pause, rst,
              output reg clk_1hz 
); 

reg  [24:0]  cnt;  
always@(posedge clk or negedge pause ) 
begin  
  if(!pause)  
    cnt<=24'd0;  
  else if(cnt==250000)
    begin   
	   cnt<=24'd0;   
		clk_1hz<=~clk_1hz;   //半秒反转一次 一秒一个上升沿
		end  
  else   
    cnt<=cnt+1; 
end 
endmodule 



module cnt10(
             input pause,clk, rst,
             output reg [3:0] cnt,
             output reg out
); 
always@(posedge clk or negedge rst) 
begin  
  if(!rst)   
    cnt<=4'b000; 
  else if(cnt==4'd9)   
    begin cnt<=4'b000; out<=1'b1; end
  else   
    begin cnt<=cnt+1; out<=1'b0; end
end 
endmodule 


module cnt60(
input pause,clk, rst,
output reg [3:0] cnt,
output reg out
); 
always@(posedge clk or negedge rst) 
begin  
  if(!rst)   
    cnt<=4'b000; 
  else if(cnt==4'd9)   
    begin cnt<=4'b000; out<=1'b1; end  
  else   
    begin cnt<=cnt+1; out<=1'b0; end 
end 
endmodule 

module cnt600(
input pause,clk, rst,
output reg [3:0] cnt,
output reg out
); 
always@(posedge clk or negedge rst) 
begin  
  if(!rst)   
    cnt<=4'b000; 
  else if(cnt==4'd9)   
    begin cnt<=4'b000; out<=1'b1; end  
  else   
    begin cnt<=cnt+1; out<=1'b0; end 
end 
endmodule



module cnt3600(
input pause,clk,rst,
output reg [3:0] cnt,
output reg out
); 
always@(posedge clk or negedge rst) 
begin  
  if(!rst)   
    cnt<=4'b000; 
  else if(cnt==4'd5)   
    begin cnt<=4'b000; out<=1'b1; end  
  else   
    begin cnt<=cnt+1; out<=1'b0; end 
end 
endmodule


module cnt36000(
input pause,clk, rst,
output reg [3:0] cnt,
output reg out
); 
always@(posedge clk or negedge rst) 
begin  
  if(!rst)   
    cnt<=4'b000; 
  else if(cnt==4'd9)   
    begin cnt<=4'b000; out<=1'b1; end  
  else   
    begin cnt<=cnt+1; out<=1'b0; end 
end 
endmodule



module cnt21600(
input pause,clk,rst,
output reg [3:0] cnt,
output reg out
); 
always@(posedge clk or negedge rst) 
begin  
  if(!rst)   
    cnt<=4'b000; 
  else if(cnt==4'd5)   
    begin cnt<=4'b000; out<=1'b1; end  
  else   
    begin cnt<=cnt+1; out<=1'b0; end 
end 
endmodule




module segment0(
input        [3:0] cnt, 
output  reg  [6:0] HEX0
);
assign  scan=4'b0001; 
always@(cnt) 
begin   
  case(cnt)   
    4'b0001:HEX0= 7'b1111001;	   // ---t---- 
	 4'b0010:HEX0= 7'b0100100; 	// |	  |
	 4'b0011:HEX0= 7'b0110000; 	// lt	 rt 
	 4'b0100:HEX0= 7'b0011001; 	// |	  |
	 4'b0101:HEX0= 7'b0010010; 	// ---m----
	 4'b0110:HEX0= 7'b0000010; 	// |	  |
	 4'b0111:HEX0= 7'b1111000; 	// lb	 rb
	 4'b1000:HEX0= 7'b0000000; 	// |	  |
	 4'b1001:HEX0= 7'b0011000; 	// ---b----
	 4'b1010:HEX0= 7'b1000000;
	 default:HEX0= 7'b1000000;  
  endcase 
 end 
endmodule 


module segment1(
input        [3:0] cnt, 
output  reg  [6:0] HEX1
);
assign  scan=4'b0001; 
always@(cnt) 
begin   
  case(cnt)   
    4'b0001:HEX1= 7'b1111001;	   // ---t---- 
	 4'b0010:HEX1= 7'b0100100; 	// |	  |
	 4'b0011:HEX1= 7'b0110000; 	// lt	 rt 
	 4'b0100:HEX1= 7'b0011001; 	// |	  |
	 4'b0101:HEX1= 7'b0010010; 	// ---m----
	 4'b0110:HEX1= 7'b0000010; 	// |	  |
	 4'b0111:HEX1= 7'b1111000; 	// lb	 rb
	 4'b1000:HEX1= 7'b0000000; 	// |	  |
	 4'b1001:HEX1= 7'b0011000; 	// ---b----
	 4'b1010:HEX1= 7'b1000000;
	 default:HEX1= 7'b1000000;  
  endcase 
 end 
endmodule 



module segment2(
input        [3:0] cnt, 
output  reg  [6:0] HEX0
);
assign  scan=4'b0001; 
always@(cnt) 
begin   
  case(cnt)   
    4'b0001:HEX0= 7'b1111001;	   // ---t---- 
	 4'b0010:HEX0= 7'b0100100; 	// |	  |
	 4'b0011:HEX0= 7'b0110000; 	// lt	 rt 
	 4'b0100:HEX0= 7'b0011001; 	// |	  |
	 4'b0101:HEX0= 7'b0010010; 	// ---m----
	 4'b0110:HEX0= 7'b0000010; 	// |	  |
	 4'b0111:HEX0= 7'b1111000; 	// lb	 rb
	 4'b1000:HEX0= 7'b0000000; 	// |	  |
	 4'b1001:HEX0= 7'b0011000; 	// ---b----
	 4'b1010:HEX0= 7'b1000000;
	 default:HEX0= 7'b1000000;  
  endcase 
 end 
endmodule 


module segment3(
input        [3:0] cnt, 
output  reg  [6:0] HEX1
);
assign  scan=4'b0001; 
always@(cnt) 
begin   
  case(cnt)   
    4'b0001:HEX1= 7'b1111001;	   // ---t---- 
	 4'b0010:HEX1= 7'b0100100; 	// |	  |
	 4'b0011:HEX1= 7'b0110000; 	// lt	 rt 
	 4'b0100:HEX1= 7'b0011001; 	// |	  |
	 4'b0101:HEX1= 7'b0010010; 	// ---m----
	 4'b0110:HEX1= 7'b0000010; 	// |	  |
	 4'b0111:HEX1= 7'b1111000; 	// lb	 rb
	 4'b1000:HEX1= 7'b0000000; 	// |	  |
	 4'b1001:HEX1= 7'b0011000; 	// ---b----
	 4'b1010:HEX1= 7'b1000000;
	 default:HEX1= 7'b1000000;  
  endcase 
 end 
endmodule



module segment4(
input        [3:0] cnt, 
output  reg  [6:0] HEX0
);
assign  scan=4'b0001; 
always@(cnt) 
begin   
  case(cnt)   
    4'b0001:HEX0= 7'b1111001;	   // ---t---- 
	 4'b0010:HEX0= 7'b0100100; 	// |	  |
	 4'b0011:HEX0= 7'b0110000; 	// lt	 rt 
	 4'b0100:HEX0= 7'b0011001; 	// |	  |
	 4'b0101:HEX0= 7'b0010010; 	// ---m----
	 4'b0110:HEX0= 7'b0000010; 	// |	  |
	 4'b0111:HEX0= 7'b1111000; 	// lb	 rb
	 4'b1000:HEX0= 7'b0000000; 	// |	  |
	 4'b1001:HEX0= 7'b0011000; 	// ---b----
	 4'b1010:HEX0= 7'b1000000;
	 default:HEX0= 7'b1000000;  
  endcase 
 end 
endmodule 


module segment5(
input        [3:0] cnt, 
output  reg  [6:0] HEX1
);
assign  scan=4'b0001; 
always@(cnt) 
begin   
  case(cnt)   
    4'b0001:HEX1= 7'b1111001;	   // ---t---- 
	 4'b0010:HEX1= 7'b0100100; 	// |	  |
	 4'b0011:HEX1= 7'b0110000; 	// lt	 rt 
	 4'b0100:HEX1= 7'b0011001; 	// |	  |
	 4'b0101:HEX1= 7'b0010010; 	// ---m----
	 4'b0110:HEX1= 7'b0000010; 	// |	  |
	 4'b0111:HEX1= 7'b1111000; 	// lb	 rb
	 4'b1000:HEX1= 7'b0000000; 	// |	  |
	 4'b1001:HEX1= 7'b0011000; 	// ---b----
	 4'b1010:HEX1= 7'b1000000;
	 default:HEX1= 7'b1000000;  
  endcase 
 end 
endmodule