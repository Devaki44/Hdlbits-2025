module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    always@(*)begin
        casez(in)
          4'b???1:pos=2'b00;
          4'b??10:pos=2'b01;
          4'b?100:pos=2'b10;
          4'b1000:pos=2'b11;
          default:pos=2'b00;
        endcase
    end
endmodule

//method2
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    always @(*) begin
    casez (in[3:0])
        4'bzzz1: pos = 2'b00;   // in[3:1] can be anything
        4'bzz1z: pos = 2'b01;
        4'bz1zz: pos = 2'b10;
        4'b1zzz: pos = 2'b11;
        default: pos = 2'b00;
    endcase
    end

endmodule


//method3
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    always @(*) begin
    casez (in[3:0])
        4'bzzz1: pos = 0;   // in[3:1] can be anything
        4'bzz1z: pos = 1;
        4'bz1zz: pos = 2;
        4'b1zzz: pos = 3;
        default: pos = 0;
    endcase
    end

endmodule


//method4
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    always @(*) begin
        if(in[0]==1'b1)
         pos=0;
        else if(in[1]==1'b1)
         pos=1;
        else if(in[2]==1'b1)
         pos=2;
        else if(in[3]==1'b1)
         pos=3;
        else 
           pos=0;
     end
endmodule
