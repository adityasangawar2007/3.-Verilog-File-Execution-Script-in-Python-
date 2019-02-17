// EE271 Assignent 8  - NOTE - ALL Clear & Preset are active low functionality

//********************************	D-FF using behavioral	*************************************************************

module DFFBehavior(q,d,clk,clear,preset);
  
  output q;
  input d,clk,clear,preset;
  reg q;

always @(posedge clk)
	begin
		if(clear == 0 && preset == 0)
		q <= 1'b0;
	
		if(clear == 0 && preset == 1)
		q <= 1'b0;
		
		else if(clear == 1 && preset == 0)
		q <= 1'b1;
		
		else
		q <= d;
	end;

always @(negedge clk)
	begin
		if(clear == 0 && preset == 0)
		q <= 1'b0;
	
		if(clear == 0 && preset == 1)
		q <= 1'b0;
		
		else if(clear == 1 && preset == 0)
		q <= 1'b1;
		
		else
		q <= q;	
	end;
endmodule

//********************************	D-FF using Behavioral Simulation	*************************************************************

module D_FF_Behavior_Simulation;

  wire q;
  reg d,clk,clear,preset;
  reg q,clk;


DFFBehavior Inst1(q,d,clk,clear,preset);

initial begin
   $dumpfile ("waveform.vcd");
   $dumpvars (0);
   
	clk = 1'b0; 	
	forever	#10 clk = ~clk;
 $finish;
end

 initial begin

	$monitor($time," d=%b , clk=%b, clear=%b, preset=%b q=%b ", d,clk,clear,preset,q);

	#10; //clk=1 #10 Make changes here
	d = 1'b0;	clear = 1'b1;   preset = 1'b0;
	
	#10;	d = 1'b1;	clear = 1'b1;	preset = 1'b0;
	
	#10; //clk=1 #30 Make changes here
	d = 1'b0;	clear = 1'b1;	preset = 1'b1;
	
	#10; 
	d = 1'bx;	clear = 1'b0;	preset = 1'b0;

	#10; //clk=1 #50 Make changes here
	d = 1'b0;	clear = 1'b1;	preset = 1'b0;
	
	#10; 
	d = 1'b1;	clear = 1'b0;	preset = 1'b1;

	#10; //clk=1 #70 Make changes here
	d = 1'b1;	clear = 1'b1;	preset = 1'b1;

	#10;
 $finish;
 end  
endmodule

//***************************************************** 


