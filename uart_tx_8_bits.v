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
// CREATED		"Wed Jan 24 21:07:44 2024"

module uart_tx_8_bits(
	shift_load,
	clk,
	D3,
	D4,
	D7,
	D5,
	D6,
	en,
	D2,
	D1,
	D0,
	tx
);


input wire	shift_load;
input wire	clk;
input wire	D3;
input wire	D4;
input wire	D7;
input wire	D5;
input wire	D6;
input wire	en;
input wire	D2;
input wire	D1;
input wire	D0;
output reg	tx;

wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_3;
reg	DFF_inst27;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
reg	DFF_inst2;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_18;
reg	DFF_inst5;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_23;
reg	DFF_inst19;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_28;
reg	DFF_inst23;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
reg	DFF_inst;
wire	SYNTHESIZED_WIRE_35;
reg	DFF_inst1;





always@(posedge SYNTHESIZED_WIRE_38)
begin
	begin
	DFF_inst <= SYNTHESIZED_WIRE_1;
	end
end


always@(posedge SYNTHESIZED_WIRE_38)
begin
	begin
	DFF_inst1 <= SYNTHESIZED_WIRE_3;
	end
end

assign	SYNTHESIZED_WIRE_9 = shift_load & DFF_inst27;

assign	SYNTHESIZED_WIRE_10 = D7 & SYNTHESIZED_WIRE_39;

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_18 = SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_31 = SYNTHESIZED_WIRE_9 | SYNTHESIZED_WIRE_10;

assign	SYNTHESIZED_WIRE_1 = D0 & SYNTHESIZED_WIRE_39;

assign	SYNTHESIZED_WIRE_13 = shift_load & DFF_inst2;

assign	SYNTHESIZED_WIRE_14 = D3 & SYNTHESIZED_WIRE_39;

assign	SYNTHESIZED_WIRE_35 = SYNTHESIZED_WIRE_13 | SYNTHESIZED_WIRE_14;


always@(posedge SYNTHESIZED_WIRE_38)
begin
	begin
	DFF_inst19 <= SYNTHESIZED_WIRE_16;
	end
end


always@(posedge SYNTHESIZED_WIRE_38)
begin
	begin
	DFF_inst2 <= SYNTHESIZED_WIRE_18;
	end
end

assign	SYNTHESIZED_WIRE_20 = shift_load & DFF_inst5;

assign	SYNTHESIZED_WIRE_21 = D4 & SYNTHESIZED_WIRE_39;

assign	SYNTHESIZED_WIRE_16 = SYNTHESIZED_WIRE_20 | SYNTHESIZED_WIRE_21;


always@(posedge SYNTHESIZED_WIRE_38)
begin
	begin
	DFF_inst23 <= SYNTHESIZED_WIRE_23;
	end
end

assign	SYNTHESIZED_WIRE_25 = shift_load & DFF_inst19;

assign	SYNTHESIZED_WIRE_26 = D5 & SYNTHESIZED_WIRE_39;

assign	SYNTHESIZED_WIRE_23 = SYNTHESIZED_WIRE_25 | SYNTHESIZED_WIRE_26;


always@(posedge SYNTHESIZED_WIRE_38)
begin
	begin
	DFF_inst27 <= SYNTHESIZED_WIRE_28;
	end
end

assign	SYNTHESIZED_WIRE_32 = shift_load & DFF_inst23;

assign	SYNTHESIZED_WIRE_33 = D6 & SYNTHESIZED_WIRE_39;


always@(posedge SYNTHESIZED_WIRE_38)
begin
	begin
	tx <= SYNTHESIZED_WIRE_31;
	end
end

assign	SYNTHESIZED_WIRE_28 = SYNTHESIZED_WIRE_32 | SYNTHESIZED_WIRE_33;

assign	SYNTHESIZED_WIRE_38 = clk & en;

assign	SYNTHESIZED_WIRE_5 = shift_load & DFF_inst;


always@(posedge SYNTHESIZED_WIRE_38)
begin
	begin
	DFF_inst5 <= SYNTHESIZED_WIRE_35;
	end
end

assign	SYNTHESIZED_WIRE_39 =  ~shift_load;

assign	SYNTHESIZED_WIRE_6 = D1 & SYNTHESIZED_WIRE_39;

assign	SYNTHESIZED_WIRE_7 = shift_load & DFF_inst1;

assign	SYNTHESIZED_WIRE_8 = D2 & SYNTHESIZED_WIRE_39;


endmodule
