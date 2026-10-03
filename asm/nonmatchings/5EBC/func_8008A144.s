nonmatching func_8008A144, 0xFC

glabel func_8008A144
    /* 7A944 8008A144 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 7A948 8008A148 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7A94C 8008A14C 21808000 */  addu       $s0, $a0, $zero
    /* 7A950 8008A150 1400BFAF */  sw         $ra, 0x14($sp)
    /* 7A954 8008A154 8D030492 */  lbu        $a0, 0x38D($s0)
    /* 7A958 8008A158 8C73010C */  jal        func_8005CE30
    /* 7A95C 8008A15C 00000000 */   nop
    /* 7A960 8008A160 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7A964 8008A164 AAAA033C */  lui        $v1, (0xAAAAAAAB >> 16)
    /* 7A968 8008A168 ABAA6334 */  ori        $v1, $v1, (0xAAAAAAAB & 0xFFFF)
    /* 7A96C 8008A16C 19004300 */  multu      $v0, $v1
    /* 7A970 8008A170 21300000 */  addu       $a2, $zero, $zero
    /* 7A974 8008A174 21380000 */  addu       $a3, $zero, $zero
    /* 7A978 8008A178 1080053C */  lui        $a1, %hi(D_800FF748)
    /* 7A97C 8008A17C 48F7A524 */  addiu      $a1, $a1, %lo(D_800FF748)
    /* 7A980 8008A180 10400000 */  mfhi       $t0
    /* 7A984 8008A184 02210800 */  srl        $a0, $t0, 4
    /* 7A988 8008A188 40180400 */  sll        $v1, $a0, 1
    /* 7A98C 8008A18C 21186400 */  addu       $v1, $v1, $a0
    /* 7A990 8008A190 C0180300 */  sll        $v1, $v1, 3
    /* 7A994 8008A194 23104300 */  subu       $v0, $v0, $v1
    /* 7A998 8008A198 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7A99C 8008A19C 40190200 */  sll        $v1, $v0, 5
    /* 7A9A0 8008A1A0 23186200 */  subu       $v1, $v1, $v0
    /* 7A9A4 8008A1A4 80180300 */  sll        $v1, $v1, 2
    /* 7A9A8 8008A1A8 21186200 */  addu       $v1, $v1, $v0
    /* 7A9AC 8008A1AC C0180300 */  sll        $v1, $v1, 3
    /* 7A9B0 8008A1B0 21286500 */  addu       $a1, $v1, $a1
    /* 7A9B4 8008A1B4 0200A424 */  addiu      $a0, $a1, 0x2
  .L8008A1B8:
    /* 7A9B8 8008A1B8 0000A290 */  lbu        $v0, 0x0($a1)
    /* 7A9BC 8008A1BC 00000000 */  nop
    /* 7A9C0 8008A1C0 14004010 */  beqz       $v0, .L8008A214
    /* 7A9C4 8008A1C4 00000000 */   nop
    /* 7A9C8 8008A1C8 99030292 */  lbu        $v0, 0x399($s0)
    /* 7A9CC 8008A1CC 00000000 */  nop
    /* 7A9D0 8008A1D0 09004014 */  bnez       $v0, .L8008A1F8
    /* 7A9D4 8008A1D4 00000000 */   nop
    /* 7A9D8 8008A1D8 02000286 */  lh         $v0, 0x2($s0)
    /* 7A9DC 8008A1DC 00008384 */  lh         $v1, 0x0($a0)
    /* 7A9E0 8008A1E0 80FF4224 */  addiu      $v0, $v0, -0x80
    /* 7A9E4 8008A1E4 2A104300 */  slt        $v0, $v0, $v1
    /* 7A9E8 8008A1E8 0A004010 */  beqz       $v0, .L8008A214
    /* 7A9EC 8008A1EC 00000000 */   nop
    /* 7A9F0 8008A1F0 85280208 */  j          .L8008A214
    /* 7A9F4 8008A1F4 0100C624 */   addiu     $a2, $a2, 0x1
  .L8008A1F8:
    /* 7A9F8 8008A1F8 02000286 */  lh         $v0, 0x2($s0)
    /* 7A9FC 8008A1FC 00008384 */  lh         $v1, 0x0($a0)
    /* 7AA00 8008A200 80004224 */  addiu      $v0, $v0, 0x80
    /* 7AA04 8008A204 2A186200 */  slt        $v1, $v1, $v0
    /* 7AA08 8008A208 02006010 */  beqz       $v1, .L8008A214
    /* 7AA0C 8008A20C 00000000 */   nop
    /* 7AA10 8008A210 0100C624 */  addiu      $a2, $a2, 0x1
  .L8008A214:
    /* 7AA14 8008A214 0100E724 */  addiu      $a3, $a3, 0x1
    /* 7AA18 8008A218 E8038424 */  addiu      $a0, $a0, 0x3E8
    /* 7AA1C 8008A21C 0B00E228 */  slti       $v0, $a3, 0xB
    /* 7AA20 8008A220 E5FF4014 */  bnez       $v0, .L8008A1B8
    /* 7AA24 8008A224 E803A524 */   addiu     $a1, $a1, 0x3E8
    /* 7AA28 8008A228 0200C228 */  slti       $v0, $a2, 0x2
    /* 7AA2C 8008A22C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 7AA30 8008A230 1000B08F */  lw         $s0, 0x10($sp)
    /* 7AA34 8008A234 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 7AA38 8008A238 0800E003 */  jr         $ra
    /* 7AA3C 8008A23C 00000000 */   nop
endlabel func_8008A144
