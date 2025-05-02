module top_module(
    input clk,
    input areset,    // Asynchronous reset to state B
    input in,
    output out);//  

    parameter A=0, B=1; 
    reg state, next_state;

    always@(posedge clk or posedge areset)begin
        if(areset)
            state<=B;
        else
            state<=next_state;
    end
    always@(*)begin
        case(state)
            B:next_state=(in==0)?A:B;
            A:next_state=(in==0)?B:A;
        endcase
    end
    assign out=(state==B);
            
endmodule
