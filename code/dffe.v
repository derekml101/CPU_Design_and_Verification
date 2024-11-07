module dffe (d, clk, clrn, e, q);
    input d, clk, clrn;
    input e;
    output reg q;
    always @ (posedge clk or negedge clrn) begin
        if (!clrn) q <= 0;
        else if (e) q <= d;
    end
endmodule