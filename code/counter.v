module time_counter_verilog (enable, clk, mu_counter);
    input enable;
    input clk;
    output [3:0] my_counter;
    reg [3:0] my_counter = 0;

    always @ (posedge clk) begin
       if (enable)
            my_counter <= my_counter + 4'h1; 
    end
endmodule