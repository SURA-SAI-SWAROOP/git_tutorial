module tb_and;
  reg a,b;
  wire y,ybar;

  and_g dut(.a(a),.b(b),.y(y),.ybar(ybar));

  initial begin
    a=0;b=0;
    #10;
    a=0;b=1;
    #10;
    a=1;b=0;
    #10;
    a=1;b=1;
    #10;
    $finish;
  end

  initial begin
    $monitor("a=%0b,b=%0b,y=%0b,ybar=%0b",a,b,y,ybar);
  end

  initial begin
    $recordfile("database.trn");
    $recordvars();
  end
endmodule
