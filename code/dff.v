module dff (d, clk, clrn, q);
    input d, clk, clrn;
    output q;

    always @ (posedge clk or negedge clrn)
    begin
        if (!clrn) q <= 0;
        else q <= d;
    end
endmodule