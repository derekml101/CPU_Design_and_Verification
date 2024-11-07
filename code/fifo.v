module fifo (clk, clrn, read, write, data_in, data_out, ready, overflow);
    input clk, clrn;
    input read;
    input write;
    input [7:0] data_in;
    output [7:0] data_out;
    output ready;
    output reg overflow;
    reg [7:0] fifo_buff [7:0];
    reg [2:0] write_pointer;
    reg [2:0] read_pointer;

    always @ (posedge clk or negedge clrn) begin
        if(!clrn) begin
            write_pointer <= 0;
            read_pointer <= 0;
            overflow <= 0;
        end else begin
            if (write) begin
                if ((write_pointer + 3'b1) != read_pointer) begin
                    fifo_buff[write_pointer] <= data_in;
                    write_pointer <= write_pointer + 3'b1;
                end else begin
                    overflow <= 1;
                end 
            end
            if (read && ready) begin
                read_pointer <= read_pointer + 3'd1;
                overflow <= 0;
            end
        end
    end
    assign ready = (write_pointer != read_pointer);
    assign data_out = fifo_buff[read_pointer];
endmodule