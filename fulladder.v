module fulladder(d1,d2,cin,sumout,cout);
	input d1,d2,cin;
	output sumout,cout;
	wire a1,a2,a3;
xor u1(a1,d1,d2);
and u2(a2,d1,d2);
and u3(a3,a1,cin);
or u4(cout,a2,a3);
xor u5(sumout,a1,cin);
endmodule
