module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum
);
    wire [99:0]w;
    genvar i;
    bcd_fadd f1(a[3:0],b[3:0],cin,w[0],sum[3:0]);
    generate
      for(i=4;i<400;i=i+4)begin:gen_blk
          bcd_fadd f2(a[i+3:i],b[i+3:i],w[i/4-1],w[i/4],sum[i+3:i]);
      end
    endgenerate
    assign cout=w[99];
endmodule
