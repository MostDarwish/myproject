module counter_tb;

    // Inputs
    reg clk;
    reg reset;

    // Outputs
    wire [3:0] count;

    // Instantiate the Unit Under Test (UUT)
    counter uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // Clock Generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns period (100 MHz)
    end

    // Stimulus Block
    initial begin
        // Initialize Inputs
        reset = 0;

        // Wait for 20 ns
        #20;

        // Apply Reset
        reset = 1;
        #10;
        reset = 0;

        // Wait for the counter to run for some time
        #100;

        // Apply Reset again
        reset = 1;
        #10;
        reset = 0;

        // Wait to observe a few more cycles
        #100;

        // End simulation
        $stop;
    end

endmodule
