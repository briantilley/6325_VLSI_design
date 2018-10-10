`timescale 1ns / 1ps

module decoder1024_tb;
  
	// decoder inputs
	reg clk, clr, sig, prgm;
	wire enable;

	// decoder output
	wire out;

    // program and signal sequences
    reg[1023:0] pattern = 1024'b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    reg[2049:0] seq = 2050'b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011;

    // "counter" to ensure we load the entire programmed pattern and do not overwrite it
    reg[1024:0] stop = 1025'b11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111;
    
    assign enable = stop[1024];

	// instantiate unit under test
	// decoder1024 uut (.out(out), .clk(clk), .clr(clr), .sig(sig), .prgm(prgm));

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
        
        prgm = pattern[1023];
        pattern = pattern << 1;
        stop = stop << 1;
	       
        sig = seq[2049];

        // Shift to the next bit in the sequence
        seq = seq << 1;
    end

    decoder1024 uut(.out(out), .clk(clk), .clr(clr), .sig(sig), .prgm(prgm), .enable(enable));


	// Test
	//initial begin
		
        // Here test by changing SIGNAL input
        // and by changing PROGRAM input
		
	//end
endmodule