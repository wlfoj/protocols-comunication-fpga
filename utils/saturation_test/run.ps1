# Compilo cada módulo
C:\iverilog\bin\iverilog.exe -o main MAIN.v DEBOUNCE.v SATURATION.v CONTROL_LED.v

# Vinculo os módulos ao arquivo de teste bench
C:\iverilog\bin\iverilog.exe -o dsn main_icarus_tb.v MAIN.v DEBOUNCE.v SATURATION.v CONTROL_LED.v

# Cria arquivo de teste vcd
C:\iverilog\bin\vvp.exe dsn

# Executa o arquivo e observo o waveform
C:\iverilog\bin\../gtkwave/bin/gtkwave.exe test.vcd
