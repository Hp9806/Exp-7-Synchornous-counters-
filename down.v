module down(input CLK,input reset,output[0:3]counter);
reg[0:3]counter_down;
always@(posedge CLK or posedge reset)
begin 
if(reset)
counter_down<=4'd0;
else
counter_down<=counter_down-4'd1;
end
assign counter=counter_down;
endmodule