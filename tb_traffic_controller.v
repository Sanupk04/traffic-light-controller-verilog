`timescale 1ns / 1ps

module traffic_light_4way_tb;

    
    reg clk;
    reg reset;
    wire [2:0] ns_light;
    wire [2:0] ew_light;

    
    traffic_light_4way uut (
        .clk(clk),
        .reset(reset),
        .ns_light(ns_light),
        .ew_light(ew_light)
    );

   
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Toggle every 5 ns
    end

    // Test sequence
    initial begin
        reset = 1;
        #10;
        reset = 0;

        // Run for some time
        #300;
        $finish;
    end

    // Display monitor for console output
    initial begin
        $display("Time\tNS_light\tEW_light");
        $monitor("%0t\t%b\t%b", $time, ns_light, ew_light);
    end

    // Dump variables for waveform viewing
    initial begin
        $dumpfile("traffic_light_4way.vcd");   
        $dumpvars(0, traffic_light_4way_tb);   
    end

endmodule
