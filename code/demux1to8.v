module demux1to8 (s, y, a);

    input [2:0] s;
    input y;
    output [7:0] a;

    assign a = (1 << s) & {8{y}};

endmodule