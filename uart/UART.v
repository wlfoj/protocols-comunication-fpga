/* Módulo UART que envia 8 bits
start bit é 0
stop bit é 1
1 bit para verificação de paridade
baud rate é 9600hz
*/
module UART(clk, rx, enable, data_to_send, data_recevied, tx);
	input rx, clk, enable;
	input [7:0] data_to_send;
	
	output tx;
	output [7:0] data_recevied;
	
	wire clk_9k6, concluded, error, done;
	
	
	
	
	baudRateGenerator gerador9k6(clk, 0, clk_9k6);
	UART_RX				receptor_uart(clk_9k6, rx, data_recevied, concluded, error);
	UART_TX				transmissor_uart(clk_9k6, data_to_send, enable, done, tx);

	
	
endmodule
