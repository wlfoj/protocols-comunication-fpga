/*
Módulo que realiza o controle de saturação de um registrador de 16 bits
    
    led_g é acionado quando o reg está em seu valor máximo
    led_r é acionado quando o reg está em seu valor mínimo

*/
module CONTROL_LED(input[15:0] regs, output led_r, output led_g);

    assign led_g = (regs == 16'b1111111111111111);
    assign led_r = (regs == 16'b0);

endmodule
