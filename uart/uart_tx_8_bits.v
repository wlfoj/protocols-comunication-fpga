// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Wed Jan 24 22:27:01 2024"

module uart_tx_8_bits(
	shift_load,
	clk,
	en,
	D7,
	D6,
	D5,
	D4,
	D3,
	D2,
	D1,
	D0,
	tx
);


input wire	shift_load;
input wire	clk;
input wire	en;
input wire	D7;
input wire	D6;
input wire	D5;
input wire	D4;
input wire	D3;
input wire	D2;
input wire	D1;
input wire	D0;
output reg	tx;

wire	SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_47;
wire	SYNTHESIZED_WIRE_2;
reg	DFF_inst27;
wire	SYNTHESIZED_WIRE_48;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
reg	DFF_inst2;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_19;
reg	DFF_inst5;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_25;
reg	DFF_inst19;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_31;
reg	DFF_inst23;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
reg	DFF_instk;
wire	SYNTHESIZED_WIRE_40;
reg	DFF_inst1;
wire	SYNTHESIZED_WIRE_45;

assign	SYNTHESIZED_WIRE_46 = 1;





always@(posedge SYNTHESIZED_WIRE_47 or negedge SYNTHESIZED_WIRE_46)
begin
if (!SYNTHESIZED_WIRE_46)
	begin
	DFF_inst1 <= 0;
	end
else
	begin
	DFF_inst1 <= SYNTHESIZED_WIRE_2;
	end
end

assign	SYNTHESIZED_WIRE_8 = shift_load & DFF_inst27;

assign	SYNTHESIZED_WIRE_9 = D0 & SYNTHESIZED_WIRE_48;

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_19 = SYNTHESIZED_WIRE_6 | SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_35 = SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_45 = D7 & SYNTHESIZED_WIRE_48;

assign	SYNTHESIZED_WIRE_12 = shift_load & DFF_inst2;

assign	SYNTHESIZED_WIRE_13 = D4 & SYNTHESIZED_WIRE_48;

assign	SYNTHESIZED_WIRE_40 = SYNTHESIZED_WIRE_12 | SYNTHESIZED_WIRE_13;


always@(posedge SYNTHESIZED_WIRE_47 or negedge SYNTHESIZED_WIRE_46)
begin
if (!SYNTHESIZED_WIRE_46)
	begin
	DFF_inst19 <= 0;
	end
else
	begin
	DFF_inst19 <= SYNTHESIZED_WIRE_16;
	end
end


always@(posedge SYNTHESIZED_WIRE_47 or negedge SYNTHESIZED_WIRE_46)
begin
if (!SYNTHESIZED_WIRE_46)
	begin
	DFF_inst2 <= 0;
	end
else
	begin
	DFF_inst2 <= SYNTHESIZED_WIRE_19;
	end
end

assign	SYNTHESIZED_WIRE_21 = shift_load & DFF_inst5;

assign	SYNTHESIZED_WIRE_22 = D3 & SYNTHESIZED_WIRE_48;

assign	SYNTHESIZED_WIRE_16 = SYNTHESIZED_WIRE_21 | SYNTHESIZED_WIRE_22;


always@(posedge SYNTHESIZED_WIRE_47 or negedge SYNTHESIZED_WIRE_46)
begin
if (!SYNTHESIZED_WIRE_46)
	begin
	DFF_inst23 <= 0;
	end
else
	begin
	DFF_inst23 <= SYNTHESIZED_WIRE_25;
	end
end

assign	SYNTHESIZED_WIRE_27 = shift_load & DFF_inst19;

assign	SYNTHESIZED_WIRE_28 = D2 & SYNTHESIZED_WIRE_48;

assign	SYNTHESIZED_WIRE_25 = SYNTHESIZED_WIRE_27 | SYNTHESIZED_WIRE_28;


always@(posedge SYNTHESIZED_WIRE_47 or negedge SYNTHESIZED_WIRE_46)
begin
if (!SYNTHESIZED_WIRE_46)
	begin
	DFF_inst27 <= 0;
	end
else
	begin
	DFF_inst27 <= SYNTHESIZED_WIRE_31;
	end
end

assign	SYNTHESIZED_WIRE_36 = shift_load & DFF_inst23;

assign	SYNTHESIZED_WIRE_37 = D1 & SYNTHESIZED_WIRE_48;


always@(posedge SYNTHESIZED_WIRE_47 or negedge SYNTHESIZED_WIRE_46)
begin
if (!SYNTHESIZED_WIRE_46)
	begin
	tx <= 0;
	end
else
	begin
	tx <= SYNTHESIZED_WIRE_35;
	end
end

assign	SYNTHESIZED_WIRE_31 = SYNTHESIZED_WIRE_36 | SYNTHESIZED_WIRE_37;

assign	SYNTHESIZED_WIRE_47 = clk & en;

assign	SYNTHESIZED_WIRE_4 = shift_load & DFF_instk;


always@(posedge SYNTHESIZED_WIRE_47 or negedge SYNTHESIZED_WIRE_46)
begin
if (!SYNTHESIZED_WIRE_46)
	begin
	DFF_inst5 <= 0;
	end
else
	begin
	DFF_inst5 <= SYNTHESIZED_WIRE_40;
	end
end

assign	SYNTHESIZED_WIRE_48 =  ~shift_load;

assign	SYNTHESIZED_WIRE_5 = D6 & SYNTHESIZED_WIRE_48;

assign	SYNTHESIZED_WIRE_6 = shift_load & DFF_inst1;

assign	SYNTHESIZED_WIRE_7 = D5 & SYNTHESIZED_WIRE_48;


always@(posedge SYNTHESIZED_WIRE_47 or negedge SYNTHESIZED_WIRE_46)
begin
if (!SYNTHESIZED_WIRE_46)
	begin
	DFF_instk <= 0;
	end
else
	begin
	DFF_instk <= SYNTHESIZED_WIRE_45;
	end
end


endmodule
