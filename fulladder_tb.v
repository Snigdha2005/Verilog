module tb_fulladder;
reg d0,d1,cin0;
wire sumout0,cout0;
fulladder adder2 (d0,d1,cin0,sumout0,cout0);
initial
begin
	$dumpfile("fulladder_out.vcd");
	$dumpvars(0,tb_fulladder);

	d0=0;
	d1=0;
	cin0=0;
	#10;
	d0=0;	d1=0;	cin0=1;	#5;
	d0=0;	d1=1;	cin0=0;	#5;
	d0=0;	d1=1;	cin0=1;	#5;
	d0=1;	d1=0;	cin0=0;	#5;
	d0=1;	d1=0;	cin0=1;	#5;
	d0=1;	d1=1;	cin0=0;	#5;
	d0=1;	d1=1;	cin0=1;	#5;
end
endmodule
