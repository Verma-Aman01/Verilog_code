module tb();
    reg Y0,Y1,Y2,Y3;
    wire A0,A1;

    encoder dut(    
            .A0(A0),
            .A1(A1),
            .Y0(Y0),
            .Y1(Y1),
            .Y2(Y2),
            .Y3(Y3)
    );

initial begin
  Y0 = 1'b1;
  Y1 = 1'b0;
  Y2 = 1'b0;
  Y3 = 1'b0;
  #50;

  Y0 = 1'b0;
  Y1 = 1'b1;
  Y2 = 1'b0;
  Y3 = 1'b0;
  #50;

  Y0 = 1'b0;
  Y1 = 1'b0;
  Y2 = 1'b1;
  Y3 = 1'b0;
  #50;

  Y0 = 1'b0;
  Y1 = 1'b0;
  Y2 = 1'b0;
  Y3 = 1'b1;
  #50;

end
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0);
end
endmodule