module d_latch (c, d, q, qn);
    input c,d;
    output q, qn;

    wire r, s;
    nand nand1 (s, d, c);
    nand nadd2 (r, ~d, c);
    rs_latch rs (s, r, q, qn);
endmodule