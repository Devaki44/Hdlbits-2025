module top_module( 
    input [254:0] in,
    output [7:0] out );
    integer i;
    always@(*)begin
        out=1'b0;
        for(i=0;i<255;i++)begin
            if(in[i])
              out=out+8'b1;
            else
              out=out;
        end
    end

endmodule
