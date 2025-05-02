module top_module(
    input clk,
    input areset,    // Asynchronous reset to OFF
    input j,
    input k,
    output out); //  

    parameter OFF=0, ON=1; 
    reg state, next_state;
    
     // State flip-flops with asynchronous reset
    always @(posedge clk or posedge areset) begin
        if(areset)
          state<=OFF;
        else
          state<=next_state;
    end
    
    // State transition logic
    always @(*) begin
        case(state)
            OFF:next_state=(j==1)?ON:OFF;
            OFF:next_state=(j==0)?OFF:ON;
            ON:next_state=(k==1)?OFF:ON;
            ON:next_state=(k==0)?ON:OFF;
        endcase
    end

    // Output logic
    assign out = (state ==ON);

endmodule
