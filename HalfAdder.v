//Design Half Adder
module halfadder(s,c,a,b);
    output s,c;
    input a,b;
   
    xor u1(s,a,b);
    and u2(c,a,b);

endmodule

