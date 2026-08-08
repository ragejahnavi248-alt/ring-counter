`timescale 1ns/1ps

module ring_counter_tb;

reg clk;
reg rst;

wire [3:0] q;


ring_counter uut(
    .clk(clk),
    .rst(rst),
    .q(q)
);


always #5 clk = ~clk;


initial
begin

    $dumpfile("waveform.vcd");
    $dumpvars(0,ring_counter_tb);


    clk = 0;
    rst = 1;

    #10;

    rst = 0;

    #50;

    $finish;

end


initial
begin

    $monitor("Time=%0t Reset=%b Output=%b",
              $time,rst,q);

end

endmodule