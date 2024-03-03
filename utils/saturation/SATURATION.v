/*
Módulo que realiza o controle de saturação de um registrador de 16 bits
*/
module SATURATION  #(parameter width = 4)
                    (input clk, input increase, input decrease, output reg[width:0] register);

    initial begin
        //Caso eu esteja usando 3 regs (exemplo), preciso colocar 1 bit 1 em 4 posições. Por isso o width+1
        register = {(width+1){1'b0}};
    end

    always @(posedge clk) begin
        // Se for incrementar e não estiver no limite superior
        if (increase & (register != {(width+1){1'b1}})) begin
            register = register + 1'b1;
        end
        // Se for decrementar e não estiver no limite inferior
        else if (decrease & (register != {(width+1){1'b0}})) begin
            register = register - 1'b1;
        end
        else begin
            register = register;
        end 
    end

endmodule
