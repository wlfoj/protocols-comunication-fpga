module NO_SATURATION  #(parameter width = 4)
                        (input clk, input increase, input decrease, output reg[width:0] register);

    initial begin
        //Caso eu esteja usando 3 regs (exemplo), preciso colocar 1 bit 1 em 4 posições. Por isso o width+1
        register = {(width+1){1'b0}};
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