/*
Módulo que realiza o controle de saturação de um registrador de 16 bits
*/
module SATURATION #(parameter width = 4)
                    (input clk, input increase, input decrease, output reg[width:0] register);

    initial begin
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

        // if (increase) begin
        //     // Se já estiver no limite superior, não faça nada
        //     if (register == {(width){1'b1}}) begin
        //         register = register;
        //     end
        //     // Se ainda não estiver no limite superior, some 1 ao valor
        //     else begin
        //         register = register + 1'b1;
        //     end
        // end

        // else if (decrease) begin
        //     // Se já estiver no limite inferior, não faça nada
        //     if (register == 16'b0) begin
        //         register = 16'b0;
        //     end
        //     // Se ainda não estiver no limite inferior, subtrai 1 do valor
        //     else begin
        //         register = register - 1'b1;
        //     end
        // end
        // else begin
        //     register = register;
        // end
    end


endmodule
