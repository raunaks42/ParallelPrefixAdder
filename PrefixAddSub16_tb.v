module prefix_tb;
	reg [15:0] t_a,t_b;
	reg t_cin;
	wire [15:0] t_S;
	initial begin $dumpfile("testbench.vcd"); $dumpvars(0, prefix_tb); end
	addsub16 as16 (.a(t_a), .b(t_b), .cin(t_cin), .S(t_S));
	initial
	begin
		t_a [15:0] = 16'h0000; t_b [15:0] = 16'h0001; t_cin = 1'b0;
		#5
		t_a [15:0] = 16'h0069; t_b [15:0] = 16'h0069; t_cin = 1'b0;
		#5
		t_a [15:0] = 16'h0100; t_b [15:0] = 16'h0000; t_cin = 1'b0;
		#5
		t_a [15:0] = 16'h0110; t_b [15:0] = 16'h1001; t_cin = 1'b0;
		#5
		t_a [15:0] = 16'hffff; t_b [15:0] = 16'h0001; t_cin = 1'b0;
		#5
		t_a [15:0] = 16'h55aa; t_b [15:0] = 16'haa55; t_cin = 1'b0;
		#5
		t_a [15:0] = 16'h1010; t_b [15:0] = 16'h0101; t_cin = 1'b0;
		#5
		t_a [15:0] = 16'h0000; t_b [15:0] = 16'h0001; t_cin = 1'b0;
		#5
		t_a [15:0] = 16'h0000; t_b [15:0] = 16'h0001; t_cin = 1'b1;
		#5
		t_a [15:0] = 16'h0069; t_b [15:0] = 16'h0069; t_cin = 1'b1;
		#5
		t_a [15:0] = 16'h0100; t_b [15:0] = 16'h0000; t_cin = 1'b1;
		#5
		t_a [15:0] = 16'h0110; t_b [15:0] = 16'h1001; t_cin = 1'b1;
		#5
		t_a [15:0] = 16'hffff; t_b [15:0] = 16'h0001; t_cin = 1'b1;
		#5
		t_a [15:0] = 16'h55aa; t_b [15:0] = 16'haa55; t_cin = 1'b1;
		#5
		t_a [15:0] = 16'h1010; t_b [15:0] = 16'h0101; t_cin = 1'b1;
		#5
		t_a [15:0] = 16'h0000; t_b [15:0] = 16'h0001; t_cin = 1'b1;
	end
	initial
	begin
		$monitor ($time, “a = %h, b = %h, cin = %b, sum=%h”, t_a, t_b, t_cin, t_S);
	end
endmodule