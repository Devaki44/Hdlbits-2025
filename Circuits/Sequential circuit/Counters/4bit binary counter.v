module top_module (
    input clk,
    input reset,      // Synchronous active-high reset
    output [3:0] q);
    always@(posedge clk)begin
       
        if(reset)
          q<=4'b0000;
        else
          q<=q+1'b1;
    end

endmodule




//method1
module top_module (
    input clk,
    input reset,      // Synchronous active-high reset
    output [3:0] q);
  
    always@(posedge clk)begin
        q<=4'b0000;
        if(reset)
          q<=4'b0000;
        else
          q<=q+4'b0001;
    end

endmodule
