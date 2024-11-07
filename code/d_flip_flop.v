module d_flip_flop (clk, d, q, qn);
    input clk, d;
    output q, qn;
    wire q0, qn0;
    wire clkn. clknn;
    not inv1 (clkn, clk);
    not inv2 (clknn, clkn);
    d_latch dlatch1 (clkn, d, q0, qn0);
    d_latch dlatch2 (clknn, q9, q, qn);
endmodule