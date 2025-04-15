module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    wire w,x,y,z;
    assign w=p2a&p2b;
    assign x=p2c&p2d;
    assign y=p1a&p1c&p1b;
    assign z=p1f&p1e&p1d;
    assign p1y=y|z;
    assign p2y=w|x;


endmodule
