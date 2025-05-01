module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    wire [3:0] w;
    
    bcd_fadd u_bcd_fadd0(a[3:0],b[3:0],cin,w[0],sum[3:0]);

    generate
    	genvar i;
        for(i=1; i<4; i=i+1)begin:gen_bcd
            bcd_fadd u_bcd_fadd(a[4*i+3 : 4*i],b[4*i+3 : 4*i],w[i-1],w[i],sum[4*i+3 : 4*i]);	
    	end
    endgenerate

    assign cout = w[3];
    
endmodule
