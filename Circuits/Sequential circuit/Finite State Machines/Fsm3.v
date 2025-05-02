module top_module(
    input clk,
    input in,
    input areset,
    output out);
    
    parameter A=2'b00;
    parameter B=2'b01;
    parameter C=2'b10;
    parameter D=2'b11;
    reg [1:0]state,next_state;
    
     // State flip-flops with asynchronous reset
    always@(posedge clk or posedge areset)begin
        if(areset)
           state<=A;
        else
            state<=next_state;
    end

    // State transition logic
    always@(*)begin
        case(state)
            A:next_state=(in==0)?A:B;
            B:next_state=(in==0)?C:B;
            C:next_state=(in==0)?A:D;
            D:next_state=(in==0)?C:B;
        endcase
    end
    // Output logic
    assign out=(state==D);

endmodule
