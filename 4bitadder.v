module bit4adder(a0,b0,a1,b1,a2,b2,a3,b3,c0,c1,c2,c3,c4,sum0,sum1,sum2,sum3);
input a0,b0,a1,b1,a2,b2,a3,b3,c0;
output sum0,sum1,sum2,sum3,c4;
output c1,c2,c3;
fulladder fa1(a0,b0,c0,sum0,c1);
fulladder fa2(a1,b1,c1,sum1,c3);
fulladder fa3(a2,b2,c2,sum2,c3);
fulladder fa4(a3,b3,c3,sum3,c4);
endmodule
