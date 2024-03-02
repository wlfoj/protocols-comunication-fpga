/*
Módulo que realiza o controle de saturação de um registrador de 16 bits
    
    led_g é acionado quando o reg está em seu valor máximo
    led_r é acionado quando o reg está em seu valor mínimo

*/
module CONTROL_LED #(parameter width = 4)
                    (input[width:0] regs, output led_r, output led_g);

    assign led_g = (regs == {(width + 1){1'b1}});
    assign led_r = (regs == {(width + 1){1'b0}});

endmodule
