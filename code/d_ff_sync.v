module d_ff_sync (d, clk, clrn, q);
    input d, clk, clrn;
    output reg q;
    always @ (posedge clk) begin
        if (!clrn) q <= 0;
        else q <= d;
    end
endmodule