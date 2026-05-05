module and_g(
   input a,b,
  output y,ybar
);
  assign y=a&b;

  assign ybar=~y;
endmodule
