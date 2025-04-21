module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire x,y;
    wire [31:0]p;
    add16 a1(a[15:0],p[15:0],sub,sum[15:0],x);
    add16 a2(a[31:16],p[31:16],x,sum[31:16],y);
    assign p[31:0]= sub ? ~b :b ;
    assign sum[31:0]={sum[31:16],sum[15:0]};
endmodule
