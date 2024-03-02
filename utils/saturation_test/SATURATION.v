/*
Módulo que realiza o controle de saturação de um registrador de 16 bits
*/
module SATURATION(input clk, input increase, input decrease, output reg[15:0] register);

    initial begin
        register = 16'b0;
    end

    always @(posedge clk) begin
        if (increase) begin
            // Se já estiver no limite superior, não faça nada
            if (register == 16'b1111111111111111) begin
                register = 16'b1111111111111111;
            end
            // Se ainda não estiver no limite superior, some 1 ao valor
            else begin
                register = register + 1'b1;
            end
        end

        else if (decrease) begin
            // Se já estiver no limite inferior, não faça nada
            if (register == 16'b0) begin
                register = 16'b0;
            end
            // Se ainda não estiver no limite inferior, subtrai 1 do valor
            else begin
                register = register - 1'b1;
            end
        end
        else begin
            register = register;
        end
    end


endmodule
