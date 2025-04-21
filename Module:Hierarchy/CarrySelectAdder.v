module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire x,y,z;
    wire [31:16]p,q;
    add16 a1(a[15:0],b[15:0],1'b0,sum[15:0],x);
    add16 a2(a[31:16],b[31:16],1'b0,p[31:16],y);
    add16 a3(a[31:16],b[31:16],1'b1,q[31:16],z);
    assign sum[31:16]= x ? q[31:16] : p[31:16]; 
    assign sum[31:0]={sum[31:16],sum[15:0]};
endmodule
