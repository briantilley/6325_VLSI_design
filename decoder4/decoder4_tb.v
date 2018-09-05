`timescale 1ns / 1ps

module decoder4_tb;
  
	// decoder inputs
	reg clk, clr, sig, prgm;
	wire enable;

	// decoder output
	wire out;

    // program and signal sequences
    reg[3:0] pattern = 4'b1010;
    reg[15:0] seq = 16'b0101000101000000;

    // "counter" to ensure we load the entire programmed pattern and do not overwrite it
    reg[4:0] stop = 5'b11111;
    
    assign enable = stop[4];
    

	// instantiate unit under test
	// decoder4 uut (.out(out), .clk(clk), .clr(clr), .sig(sig), .prgm(prgm));

	initial begin
        clk = 1; 
        clr = 1;

        // Wait for clear
        #5
        clr = 0;
        
        // Wait for registers to be loaded
        #50;
	end

    always begin
       // Toggles clock every 5 ticks
    // Clock generator
       #5  clk = ~clk;
    end

    // Load Sequence
    always @(posedge clk) begin
        // Load the bottom bit of the sequence
        
        prgm = pattern[3];
        pattern = pattern << 1;
        stop = stop << 1;
	       
        sig = seq[15];

        // Shift to the next bit in the sequence
        seq = seq << 1;
    end

    decoder4 uut(.out(out), .clk(clk), .clr(clr), .sig(sig), .prgm(prgm), .enable(enable));


	// Test
	//initial begin
		
        // Here test by changing SIGNAL input
        // and by changing PROGRAM input
		
	//end
endmodule
