module top_module ( input clk, input d, output q );
    wire x,y;
    my_dff m1(clk,d,x);
    my_dff m2(clk,x,y);
    my_dff m3(clk,y,q);
endmodule
