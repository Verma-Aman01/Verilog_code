module mux(A,B,S,Y);
    input S;
    input[2:0] A,B;
    output [2:0]Y;

    assign Y = (S==1'b0) ? A :B;

endmodule