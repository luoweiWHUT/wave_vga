/************************************************************\
 **  Copyright (c) 2011-2021 Anlogic, Inc.
 **  All Right Reserved.
\************************************************************/
/************************************************************\
 ** Log	:	This file is generated by Anlogic IP Generator.
 ** File	:	E:/TD/vga_wave/al_ip/y_rom.v
 ** Date	:	2022 02 23
 ** TD version	:	5.0.30786
\************************************************************/

`timescale 1ns / 1ps

module y_rom ( doa, addra, clka, rsta );

	output [9:0] doa;

	input  [9:0] addra;
	input  clka;
	input  rsta;




	EG_LOGIC_BRAM #( .DATA_WIDTH_A(10),
				.ADDR_WIDTH_A(10),
				.DATA_DEPTH_A(800),
				.DATA_WIDTH_B(10),
				.ADDR_WIDTH_B(10),
				.DATA_DEPTH_B(800),
				.MODE("SP"),
				.REGMODE_A("NOREG"),
				.IMPLEMENT("9K"),
				.DEBUGGABLE("NO"),
				.PACKABLE("NO"),
				.INIT_FILE("../../../mif_coe/xy.mif"),
				.FILL_ALL("NONE"))
			inst(
				.dia({10{1'b0}}),
				.dib({10{1'b0}}),
				.addra(addra),
				.addrb({10{1'b0}}),
				.cea(1'b1),
				.ceb(1'b0),
				.ocea(1'b0),
				.oceb(1'b0),
				.clka(clka),
				.clkb(1'b0),
				.wea(1'b0),
				.web(1'b0),
				.bea(1'b0),
				.beb(1'b0),
				.rsta(rsta),
				.rstb(1'b0),
				.doa(doa),
				.dob());


endmodule