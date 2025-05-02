module top_module (
    input clk,
    input resetn,   // synchronous reset
    input in,
    output out);
    reg [2:0]q;
    always@(posedge clk)begin
        if(resetn)begin
            out<=q[2];
            q[2]<=q[1];
            q[1]<=q[0];
            q[0]<=in;
        end
        else begin
          q[2:0]<=3'b000;
          out<=1'b0;
        end
    end

endmodule
