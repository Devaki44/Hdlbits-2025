module top_module (
    input clk,
    input aresetn,    // Asynchronous active-low reset
    input x,
    output z );
    
    parameter [1:0] A=2'b00,B=2'b01,C=2'b10;
    reg [1:0]state,next_state;
    
    always@(posedge clk or negedge aresetn)begin
        if(!aresetn)
          state<=A;
        else
          state<=next_state;
    end
    always@(*)begin
        case(state)
            A:next_state=(x==1)?B:A;
            B:next_state=(x==1)?B:C;
            C:next_state=(x==1)?B:A;
        endcase
    end
    assign z=(state==C & x==1);
        

endmodule
