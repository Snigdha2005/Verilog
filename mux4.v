module mux4(in0,in1,in2,in3,select1,select2,out);
	input in0,in1,in2,in3,select1,select2;
       output out;
	wire  w0,w1;
	mux2 a1(in0,in1,select1,w0);
	mux2 a2(in2,in3,select1,w1);
	mux2 output_1(w0,w1,select2,out);
endmodule
