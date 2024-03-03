module UART_RX(clk, rx, data, concluded, error);

	input clk; // clock
	//input en;// Sinal que, em 1, irá habilitar o processo de recepçao.
	input rx;		// sinal vindo do pc	
	
	output reg concluded, error;// Sinal para informar que recebi 1 byte e se houve erro de paridade respectivamente
	
	output reg [7:0]data;           //registrador de dados que enviará os dados recebidos para o decodificador           		//buffer temporário para receber os dados
	
	// Para lógica de estados
	reg [2:0] state;
	reg bit_parity;
	//
	parameter IDLE = 3'b000;
	parameter START= 3'b001;
	parameter DATA = 3'b010;
	parameter PARITY = 3'b011;
	parameter STOP = 3'b100;

	reg [2:0] pos = 3'b000;// Indica qual o bit do array será transmitido
	// Só para iniciar em espera
	initial begin
		concluded = 1'b0;
		bit_parity = 1'b1;
		state <= START;
	end
	
	
	always @ (posedge clk) begin
		case (state)
			// Fica esperando o sinal de start
			START:
				begin
					concluded = 1'b0;
					error = 0;
					if(rx) begin// Nao recebi o start-bit
						state = START;
					end
					else// Recebi o start-bit
						state = DATA;
				end
				//
			DATA:
				begin
					data[pos] = rx;
					pos = pos + 1;
					bit_parity = ~bit_parity;
					if(pos == 0) begin// Acabou a recepção do byte
						state = STOP;
					end
					else begin
						state = DATA;
					end	
				end
			//
			PARITY:
				begin
					// Se estiver tudo certo
					if (bit_parity == rx) begin
						error = 0;
					end
					//
					else begin
						error = 1;
						data = 0;// Joga fora os dados recebidos 
					end
					state = STOP;
				end
			//
			STOP:
				begin
					if(rx) begin// Nao recebi o start-bit
						concluded = 1'b1; // Informa 
					end	
					else begin
						concluded = 1'b1
						error = 1;
						data = 0;// Joga fora os dados recebidos 
					end
					state = START;
				end
		endcase
	end
	
endmodule
