module top_module (
    input [6:1] y,
    input w,
    output Y2,
    output Y4);
    reg[3:1]Y; 
    
    always@(*)begin
        case({y,w})
          6'b0000010:Y=3'b001;
          6'b0000011:Y=3'b000;
          6'b0000100:Y=3'b010;
          6'b0000101:Y=3'b011;
          6'b0001000:Y=3'b100;
          6'b0001001:Y=3'b011;
            
          6'b0010000:Y=3'b101;
          6'b0010001:Y=3'b000;
          6'b0100000:Y=3'b100;
          6'b0100001:Y=3'b011;
          6'b1000000:Y=3'b010;
          6'b1000001:Y=3'b011;
        endcase
    end
    assign Y2=y[1] & (~w);
    assign Y4=(y[2] & w) | (y[3] & w) | (y[5] & w) | (y[6] & w);


endmodule
