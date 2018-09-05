`timescale 1ns / 1ps

module decoder4_tb;
  
	// decoder inputs
	reg clk, clr, sig, prgm;

	// decoder output
	wire out;

    // program and signal sequences
    reg[3:0] pattern = 4'b1010;
    reg[15:0] seq = 16'b1010000101000000;

    // "counter" to ensure we load the entire programmed pattern and do not overwrite it
    reg[3:0] stop = 4'b1111;

	// instantiate unit under test
	// decoder4 uut (.out(out), .clk(clk), .clr(clr), .sig(sig), .prgm(prgm));

	initial begin
        clk = 1; 
        clr = 1;

        // Wait for clear
        #10
        clr = 0;

        // Wait for registers to be loaded
        #20;
	end

    // Clock generator
    always begin
       // Toggles clock every 5 ticks
       #5  clk = ~clk;
    end

    // Load Sequence
    always @(negedge clk) begin
        // Load the bottom bit of the sequence
        if(stop[3] !== 0) begin
            prgm = pattern[3];
            pattern = pattern << 1;
            stop = stop << 1;
	    end
        sig = seq[15];

        // Shift to the next bit in the sequence
        seq = seq << 1;
    end

    decoder4 uut(.out(out), .clk(clk), .clr(clr), .sig(sig), .prgm(prgm));


	// Test
	//initial begin
		
        // Here test by changing SIGNAL input
        // and by changing PROGRAM input
		
	//end
endmodule
