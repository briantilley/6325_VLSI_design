`timescale 1ns / 1ps

module decoder4_tb;
  
	// decoder inputs
	wire clk, sig, prgm;

	// decoder output
	wire out;

	// instantiate
	decoder4 uut (.out(out), .clk(clk), .sig(sig), .prgm(prgm));

	// initialize
	initial begin
		clk = 1; 
        sig = 0;
        prgm = 0;

        // Set PROGRAM and SIGNAL inputs
        #10 
        sig = 1;
        prgm = 1;

        // Wait for registers to be loaded
		#100;
	end

    // Clock generator
    always begin
       // Toggles clock every 5 ticks
       #5  clk = ~clk;
    end

	// Test
	//initial begin
		
        // Here test by changing SIGNAL input
        // and by changing PROGRAM input
		
	//end
endmodule