module top_module (
    input clk,
    input reset,     // synchronous reset
    input w,
    output z);
    
    parameter  [2:0]A=3'b000,B=3'b001,C=3'b010,D=3'b011,E=3'b100,F=3'b101;
    reg[2:0]state,next_state;
    
    always@(posedge clk)begin
        if(reset)
          state<=A;
        else
          state<=next_state;
    end
    always@(*)begin
        case(state)
            A:next_state=(w==0)?B:A;
            B:next_state=(w==0)?C:D;
            C:next_state=(w==0)?E:D;
            D:next_state=(w==0)?F:A;
            E:next_state=(w==0)?E:D;
            F:next_state=(w==0)?C:D;
            default:next_state=A;
        endcase
    end
    assign z=(state==E | state==F);
endmodule
