module top_module(clk, reset, in, out);
    input clk;
    input reset;    // Synchronous reset to state B
    input in;
    output out;//  
    reg out;

    parameter A=0;// Fill in state name declarations
    parameter B=1;

    reg present_state, next_state;

    always@(posedge clk)begin
        if(reset)
          present_state<=B;
        else
          present_state<=next_state;
    end
    always@(*)begin
        case(present_state)
            B:next_state=(in==0)?A:B;
            A:next_state=(in==0)?B:A;
        endcase
    end
    assign out=(present_state==B);
endmodule
