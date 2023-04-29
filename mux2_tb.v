module tb_mux;
	reg data_in_0;
	reg data_in_1;
	reg sel;
	wire data_out;
	mux2 namexyz(data_in_0,data_in_1,sel,data_out);
	initial
	begin
		$dumpfile("mux_out.vcd");
		$dumpvars(0,tb_mux);
		data_in_0=0;
		data_in_1=0;
		sel=0;
		#50;

		data_in_0=0;	data_in_1=0;	sel=1;	#10;
		data_in_0=0;	data_in_1=1;	sel=0;	#10;
		data_in_0=0;	data_in_1=1;	sel=1;	#10;
		data_in_0=1;	data_in_1=0;	sel=0;	#10;
		data_in_0=1;	data_in_1=0;	sel=1;	#10;
		data_in_0=1;	data_in_1=1;	sel=0;	#10;
		data_in_0=1;	data_in_1=1;	sel=1;	#10;
	end
	endmodule
