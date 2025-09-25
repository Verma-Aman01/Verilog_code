module tb();
    reg[2:0] A,B;
    reg S;
    wire[2:0] Y;

    mux dut(
            .A(A),
            .B(B),
            .S(S),
            .Y(Y)
    );

    initial begin
      A <= 3'b000;
      B <= 3'b111;
      #100;

      S <= 1'b0;
      #100;

      S <= 1'b1;
      #100;
    end
    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end
endmodule