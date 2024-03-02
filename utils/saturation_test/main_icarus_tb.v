module test;
    reg btn1 = 1;
    reg btn2 = 0;
    reg clk = 0;

    wire led_r, led_g;

    integer i=0;// Variável para controle dos sinais de entrada gerados

    // Inserindo as formas de onda dos sinais de entrada
    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, test);

        /*== Loop para fazer o wave do botão de incremento ==*/ 
        for (i = 0; i<2;i++ ) begin
            # 5 btn1 = 0;
            # 10 btn1 = 1;
        end
        # 5 btn1 = 0;

        /*== Loop para fazer o wave do botão de decremento ==*/ 
        for (i = 0; i<3;i++ ) begin
            # 5 btn2 = 0;
            # 10 btn2 = 1;
        end

        /* Encerro a simulação no tempo 513 */
        # 513 $finish;
    end

    always #1 clk = ~clk;

    MAIN #(.width(1)) mod_main(clk, btn1, btn2, led_r, led_g);

    //wire [1:0] register;
    //SATURATION #(.width(1)) saturation(clk, btn1, btn2, register);

endmodule
