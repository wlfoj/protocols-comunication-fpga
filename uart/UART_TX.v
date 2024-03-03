/**Módulo responsável pela transmissão na UART
O canal Tx fica em nível alto quando não está transmitindo nada
O módulo faz o envio de 1 bytes
O start-bit é colocando um nível baixo no tx , após isso envia-se os dados
Após os 8 bits de dados, coloca-se 1 caso os dados enviados sejam pares e 0 se for impar e depois joga o end-bit que é o nível lógico em 1 tx
*/

module UART_TX(clk, data, en, done, tx);

	input clk; // clock
	input en;// Sinal que, em 1, irá habilitar o processo de transmissão.
	
	input [7:0]data;  // dados a serem transmitidos, está invertido para mandar primeiro o 15 (menos significativo)
	reg [7:0] buffer;
	output reg tx;  // pino de saída por onde trafegarão os bit em serial
	output reg done;
	
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
		done = 1'b0;
		tx = 1'b1;
		bit_parity = 1'b1;
		state <= IDLE;
	end
	

	always @ (posedge clk) begin
		// Se recebe o en, passa pro próximo estado
		case (state)
			// PARADO
			IDLE:
				begin
					done = 1'b0;
					//pos = 0;// Reinicia o indicador da posição p/ transmitir
					tx = 1'b1;
					if (en) begin
						buffer <= data;
						state = START;
					end
					else begin
						state = IDLE;
					end	
				end
			// COMEÇA A TRANSMISSÃO
			START:
				begin
					if (en) begin
						tx = 1'b0; //Informo o start-bit
						state = DATA;
					end
					else begin
						state = IDLE;
					end
				end
			// TRANSMITINDO OS DADOS
			DATA:
				begin
					if (en) begin
							tx = buffer[pos]; //
							pos = pos + 1;
							bit_parity = ~bit_parity;
							// Se encerrou a transmissão do primeiro byte
							if (pos == 0) begin // Supondo que é 0 quando reinicia os flip-flop, pq passou de 7 (supostamente deveria ser o 8)
								state = STOP;
							end
							// Se está no meio do processo de enviar algum byte
							else begin
								state = DATA;
							end
						end
					else begin
							state = IDLE;
					end	
				end
			// Enviando o bit de paridade
			PARITY: 
				begin
					tx = bit_parity;
					state = STOP;
				end
				
			// Encerrando a transmissão do byte
			STOP:
				begin
					tx = 1'b1;// Informe o stop-bit;//
					// Se ainda não terminei o segundo byte
					if (pos == 8) begin
						state = START;// Sem espera
					end
					// Se já encerrei todo o processo (2 bytes)
					else begin
						done = 1'b1;
						state = IDLE;
					end
				end
		endcase
	end

endmodule 
