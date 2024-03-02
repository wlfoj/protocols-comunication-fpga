module NO_SATURATION(input clk, input increase, input decrease, output reg[15:0] register);

    initial begin
        register = 16'b0;
    end


    always @(posedge clk) begin
        if (increase) begin
            register = register + 1'b1;
        end

        else if (decrease) begin
            register = register - 1'b1;
        end
        else begin
            register = register;
        end
    end

endmodule