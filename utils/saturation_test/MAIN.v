/* 
Módulo para realizar a saturação de um reg de 16 bits e acionar leds quando estiver nos extremos
*/
module MAIN(input clk, input btn1, input btn2, output led_r, output led_g);

    wire pulse_increase, pulse_decrease;

    wire[15:0] regs_w;

    DEBOUNCE debounce_increase_btn(clk, btn1, pulse_increase);
    DEBOUNCE debounce_decrease_btn(clk, btn2, pulse_decrease);

    SATURATION saturation(clk, pulse_increase, pulse_decrease, regs_w);

    CONTROL_LED control_output(regs_w, led_r, led_g);

endmodule