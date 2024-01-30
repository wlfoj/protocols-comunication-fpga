# Descrição do padrão de comunicação
# Diagrama geral da implementação
# Diagramas de máquina de estados (Se houver)
# Recursos utilizados
# Simulações realizados (Waveform)
As simulações foram feitas em IcarusVerilog, para o seguintes cenários:
- Envio de 47(hex) com a UART configurada em bit de paridade, 8 bit de dados, baud rate de 9600 
- Envio de 13(hex) e 22(hex), em sequência, com as mesmas configurações acima.
- Recebimento de 17(hex), com a mesma configuração de cima.

- Envio de 31(hex) com a UART configurada em bit de paridade, 5 bit de dados, baud rate de 115200
- Envio de 0(hex) e 31(hex), em sequência, com as mesmas configurações acima.
- Recebimento de 0(hex), com a mesma configuração de cima.

## OBS.
Usar o parameter e localparam para definir as flags da uart de forma que seja facil em código de se fazer, tornando o sistema robusta e adaptavel
- Se vai usar bit de paridade
- Se vai usar 1 ou 2 stop bits
- Qual tamanho dos dados enviados (5,6,7,8 bits) (dados)
- Qual o BaudRate utilizado (9600, 115200, 38400)
- Se uma transmissão é de 1 dado, 2 dados, 3 dados...

FAZER UMA VERSÃO COM O COMPORTAMENTAL E OUTRO COM O ESTRUTURAL




Código feito no Quartus e simulado com icarus verilog
Testado na prática entre a fpga e o raspberry pi pico