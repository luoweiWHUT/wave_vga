// Verilog netlist created by TD v5.0.30786
// Wed Feb 23 23:53:12 2022

`timescale 1ns / 1ps
module y_rom  // y_rom.v(14)
  (
  addra,
  clka,
  rsta,
  doa
  );

  input [9:0] addra;  // y_rom.v(18)
  input clka;  // y_rom.v(19)
  input rsta;  // y_rom.v(20)
  output [9:0] doa;  // y_rom.v(16)


  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();
  // address_offset=0;data_offset=0;depth=800;width=9;num_section=1;width_per_section=9;section_size=10;working_depth=1024;working_width=9;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("1"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("9"),
    .DATA_WIDTH_B("9"),
    .INITP_00(256'h01FE01FF00FF007F807FC03FC01FE01FF00FF807F803FC03FE01FE00FF00FF81),
    .INITP_01(256'hF00FF807FC03FC01FE01FF00FF807F803FC03FE01FF00FF00FF007F807FC03FC),
    .INITP_02(256'hC1F07C0F83E0F83E0F81F07C1F07C1F003FE01FE00FF007F807FC03FE01FE00F),
    .INITP_03(256'h000000000000000000000000000000000000000000000000000000002663739C),
    .INIT_00(256'h8C7C6C5C4C2C1C0C9C8C6C5C4C3C2C0C9C8C7C6C4C3C2C1C0C8C7C6C5C4C3C2C),
    .INIT_01(256'h7C6C4C3C2C1C0C8C7C6C5C4C2C1C0C9C8C6C5C4C3C2C0C9C8C7C6C4C3C2C1C0C),
    .INIT_02(256'h5C4C3C2C0C9C8C7C6C4C3C2C1C0C8C7C6C5C4C2C1C0C9C8C6C5C4C3C2C0C9C8C),
    .INIT_03(256'h3C2C1C0C9C7C6C5C4C3C1C0C9C8C7C5C4C3C2C1C0C8C7C6C5C4C2C1C0C9C8C6C),
    .INIT_04(256'h2C1C9C8C7C6C5C3C2C1C0C9C7C6C5C4C3C1C0C9C8C7C5C4C3C2C1C9C8C7C6C5C),
    .INIT_05(256'h0C9C8C7C5C4C3C2C1C9C8C7C6C5C3C2C1C0C9C7C6C5C4C3C1C0C9C8C7C5C4C3C),
    .INIT_06(256'h8C7C6C5C4C2C1C0C9C8C7C5C4C3C2C1C9C8C7C6C5C3C2C1C0C9C7C6C5C4C3C1C),
    .INIT_07(256'h7C6C4C3C2C1C0C8C7C6C5C4C2C1C0C9C8C6C5C4C3C2C0C9C8C7C6C4C3C2C1C0C),
    .INIT_08(256'h5C4C3C2C0C9C8C7C6C4C3C2C1C0C8C7C6C5C4C2C1C0C9C8C6C5C4C3C2C0C9C8C),
    .INIT_09(256'h4C2C1C0C9C8C6C5C4C3C2C0C9C8C7C6C4C3C2C1C0C8C7C6C5C4C2C1C0C9C8C6C),
    .INIT_0A(256'h6C7C9C0C1C2C3C5C6C7C8C9C1C2C3C4C5C7C8C9C0C1C3C4C5C6C7C9C0C1C2C3C),
    .INIT_0B(256'h8C9C0C2C3C4C5C6C8C9C0C1C2C4C5C6C7C8C0C1C2C3C4C6C7C8C9C0C2C3C4C5C),
    .INIT_0C(256'h0C1C2C3C5C6C7C8C9C1C2C3C4C5C7C8C9C0C1C3C4C5C6C7C9C0C1C2C3C5C6C7C),
    .INIT_0D(256'h2C3C4C5C6C8C9C0C1C2C4C5C6C7C8C0C1C2C3C4C6C7C8C9C0C2C3C4C5C6C8C9C),
    .INIT_0E(256'h3C5C6C7C8C9C1C2C3C4C5C7C8C9C0C1C3C4C5C6C7C9C0C1C2C3C5C6C7C8C9C1C),
    .INIT_0F(256'h5C6C8C9C0C1C2C4C5C6C7C8C0C1C2C3C4C6C7C8C9C0C2C3C4C5C6C8C9C0C1C2C),
    .INIT_10(256'h7C8C9C1C2C3C4C5C7C8C9C0C1C3C4C5C6C7C9C0C1C2C3C5C6C7C8C9C1C2C3C4C),
    .INIT_11(256'h9C0C1C2C4C5C6C7C8C0C1C2C3C4C6C7C8C9C0C2C3C4C5C6C8C9C0C1C2C4C5C6C),
    .INIT_12(256'h1C2C3C4C5C7C8C9C0C1C3C4C5C6C7C9C0C1C2C3C5C6C7C8C9C1C2C3C4C5C7C8C),
    .INIT_13(256'h2C4C5C6C7C8C0C1C2C3C4C6C7C8C9C0C2C3C4C5C6C8C9C0C1C2C4C5C6C7C8C0C),
    .INIT_14(256'h4C2C0C8C6C4C3C1C9C7C5C3C1C9C7C5C3C1C9C7C5C3C1C9C7C5C3C1C9C7C5C3C),
    .INIT_15(256'h7C5C3C1C9C7C5C3C1C9C7C5C4C2C0C8C6C4C2C0C8C6C4C2C0C8C6C4C2C0C8C6C),
    .INIT_16(256'h0C8C6C4C2C0C8C6C4C2C0C8C6C4C2C0C8C6C5C3C1C9C7C5C3C1C9C7C5C3C1C9C),
    .INIT_17(256'h3C1C9C7C5C3C1C9C7C5C3C1C9C7C5C3C1C9C7C5C3C1C9C7C6C4C2C0C8C6C4C2C),
    .INIT_18(256'h8C4C8C3C8C2C7C1C6C0C5C0C4C9C3C8C2C8C4C0C6C2C8C4C0C6C2C8C4C0C6C2C),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_800x10_sub_000000_000 (
    .addra({addra,3'b111}),
    .clka(clka),
    .dia(9'b000000000),
    .rsta(rsta),
    .doa(doa[8:0]));
  // address_offset=0;data_offset=9;depth=800;width=1;num_section=1;width_per_section=1;section_size=10;working_depth=1024;working_width=9;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("1"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("9"),
    .DATA_WIDTH_B("9"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0101010101010101010101010101010100000000000000000000000000000000),
    .INIT_01(256'h0101010101010101010101010101010000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000101),
    .INIT_03(256'h0000000000000000000000000101010101010101010101010101010101000000),
    .INIT_04(256'h0000000000000000000000010101010101010101010101010101010000000000),
    .INIT_05(256'h0101010101010101010000000000000000000000000000000000000000000000),
    .INIT_06(256'h0101010101010101000000000000000000000000000000000001010101010101),
    .INIT_07(256'h0000000000000000000000000000000000000000000000010101010101010101),
    .INIT_08(256'h0000000000010101010101010101010101010101010100000000000000000000),
    .INIT_09(256'h0000000001010101010101010101010101010101010000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000101010101010101010101010101010100000000),
    .INIT_0B(256'h0000000000000000000001010101010101010101010101010101010000000000),
    .INIT_0C(256'h0101010101010101010000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0101010101010100000000000000000000000000000000000101010101010101),
    .INIT_0E(256'h0000000000000000000000000000000000000000000001010101010101010101),
    .INIT_0F(256'h0000000001010101010101010101010101010101010000000000000000000000),
    .INIT_10(256'h0000000101010101010101010101010101010100000000000000000000000000),
    .INIT_11(256'h0100000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000001010101010101010101010101010101),
    .INIT_13(256'h0000000000000000000000000000000101010101010101010101010101010100),
    .INIT_14(256'h0101010000000000000000000001010101010101010101000000000000000000),
    .INIT_15(256'h0101010100000000000000000000000000000000000000000001010101010101),
    .INIT_16(256'h0000000000000101010101010101010100000000000000000000010101010101),
    .INIT_17(256'h0000000000000001010101010101010101000000000000000000000000000000),
    .INIT_18(256'h0000000101010100000000000000000001000000000000000000000101010101),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_800x10_sub_000000_009 (
    .addra({addra,3'b111}),
    .clka(clka),
    .dia({open_n114,open_n115,open_n116,open_n117,open_n118,open_n119,open_n120,open_n121,1'b0}),
    .rsta(rsta),
    .doa({open_n136,open_n137,open_n138,open_n139,open_n140,open_n141,open_n142,open_n143,doa[9]}));

endmodule 

