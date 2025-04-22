module top_module( 
    input [99:0] in,
    output [99:0] out
);
    integer i;
    always@(*)begin
        for(i=0;i<$bits(out);i=i+1)
            out[i]=in[$bits(out)-i-1];
    end
endmodule


//method2
module top_module( 
    input [99:0] in,
    output [99:0] out
);
    integer i;
    always@(*)begin
        for(i=0;i<100;i=i+1)
            out[i]=in[100-i-1];
    end
endmodule



//method3
module top_module( 
    input [99:0] in,
    output [99:0] out
);
    integer i;
    always@(*)begin
        for(i=0;i<100;i=i+1)
            out[99-i]=in[i];
    end
endmodule
