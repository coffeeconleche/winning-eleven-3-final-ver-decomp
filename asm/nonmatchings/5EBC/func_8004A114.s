nonmatching func_8004A114, 0x1BC

glabel func_8004A114
    /* 3A914 8004A114 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3A918 8004A118 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3A91C 8004A11C 21808000 */  addu       $s0, $a0, $zero
    /* 3A920 8004A120 1800BFAF */  sw         $ra, 0x18($sp)
    /* 3A924 8004A124 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3A928 8004A128 02000486 */  lh         $a0, 0x2($s0)
    /* 3A92C 8004A12C 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 3A930 8004A130 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 3A934 8004A134 06000586 */  lh         $a1, 0x6($s0)
    /* 3A938 8004A138 02004684 */  lh         $a2, 0x2($v0)
    /* 3A93C 8004A13C 06004784 */  lh         $a3, 0x6($v0)
    /* 3A940 8004A140 DB6C010C */  jal        func_8005B36C
    /* 3A944 8004A144 801F113C */   lui       $s1, (0x1F800022 >> 16)
    /* 3A948 8004A148 AB030492 */  lbu        $a0, 0x3AB($s0)
    /* 3A94C 8004A14C 21384000 */  addu       $a3, $v0, $zero
    /* 3A950 8004A150 23188700 */  subu       $v1, $a0, $a3
    /* 3A954 8004A154 FF006230 */  andi       $v0, $v1, 0xFF
    /* 3A958 8004A158 8100422C */  sltiu      $v0, $v0, 0x81
    /* 3A95C 8004A15C 02004014 */  bnez       $v0, .L8004A168
    /* 3A960 8004A160 00000000 */   nop
    /* 3A964 8004A164 2318E400 */  subu       $v1, $a3, $a0
  .L8004A168:
    /* 3A968 8004A168 A9022292 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($s1)
    /* 3A96C 8004A16C 00000000 */  nop
    /* 3A970 8004A170 0D004010 */  beqz       $v0, .L8004A1A8
    /* 3A974 8004A174 FF006230 */   andi      $v0, $v1, 0xFF
    /* 3A978 8004A178 2100422C */  sltiu      $v0, $v0, 0x21
    /* 3A97C 8004A17C 0A004014 */  bnez       $v0, .L8004A1A8
    /* 3A980 8004A180 00000000 */   nop
    /* 3A984 8004A184 98030292 */  lbu        $v0, 0x398($s0)
    /* 3A988 8004A188 D4030396 */  lhu        $v1, 0x3D4($s0)
    /* 3A98C 8004A18C 40100200 */  sll        $v0, $v0, 1
    /* 3A990 8004A190 21105100 */  addu       $v0, $v0, $s1
    /* 3A994 8004A194 22004294 */  lhu        $v0, (0x1F800022 & 0xFFFF)($v0)
    /* 3A998 8004A198 00000000 */  nop
    /* 3A99C 8004A19C 24104300 */  and        $v0, $v0, $v1
    /* 3A9A0 8004A1A0 11004010 */  beqz       $v0, .L8004A1E8
    /* 3A9A4 8004A1A4 06000224 */   addiu     $v0, $zero, 0x6
  .L8004A1A8:
    /* 3A9A8 8004A1A8 97030392 */  lbu        $v1, 0x397($s0)
    /* 3A9AC 8004A1AC 01000224 */  addiu      $v0, $zero, 0x1
    /* 3A9B0 8004A1B0 0B006210 */  beq        $v1, $v0, .L8004A1E0
    /* 3A9B4 8004A1B4 21200002 */   addu      $a0, $s0, $zero
    /* 3A9B8 8004A1B8 90030692 */  lbu        $a2, 0x390($s0)
    /* 3A9BC 8004A1BC 9E6E010C */  jal        func_8005BA78
    /* 3A9C0 8004A1C0 26000524 */   addiu     $a1, $zero, 0x26
    /* 3A9C4 8004A1C4 A4030392 */  lbu        $v1, 0x3A4($s0)
    /* 3A9C8 8004A1C8 01000224 */  addiu      $v0, $zero, 0x1
    /* 3A9CC 8004A1CC 960302A2 */  sb         $v0, 0x396($s0)
    /* 3A9D0 8004A1D0 970302A2 */  sb         $v0, 0x397($s0)
    /* 3A9D4 8004A1D4 06000224 */  addiu      $v0, $zero, 0x6
    /* 3A9D8 8004A1D8 D00302A2 */  sb         $v0, 0x3D0($s0)
    /* 3A9DC 8004A1DC AA0303A2 */  sb         $v1, 0x3AA($s0)
  .L8004A1E0:
    /* 3A9E0 8004A1E0 AE280108 */  j          .L8004A2B8
    /* 3A9E4 8004A1E4 21100000 */   addu      $v0, $zero, $zero
  .L8004A1E8:
    /* 3A9E8 8004A1E8 97030392 */  lbu        $v1, 0x397($s0)
    /* 3A9EC 8004A1EC 00000000 */  nop
    /* 3A9F0 8004A1F0 30006210 */  beq        $v1, $v0, .L8004A2B4
    /* 3A9F4 8004A1F4 1B000224 */   addiu     $v0, $zero, 0x1B
    /* 3A9F8 8004A1F8 8E030396 */  lhu        $v1, 0x38E($s0)
    /* 3A9FC 8004A1FC 00000000 */  nop
    /* 3AA00 8004A200 1E006214 */  bne        $v1, $v0, .L8004A27C
    /* 3AA04 8004A204 21200002 */   addu      $a0, $s0, $zero
    /* 3AA08 8004A208 AB030292 */  lbu        $v0, 0x3AB($s0)
    /* 3AA0C 8004A20C AC030392 */  lbu        $v1, 0x3AC($s0)
    /* 3AA10 8004A210 23104700 */  subu       $v0, $v0, $a3
    /* 3AA14 8004A214 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3AA18 8004A218 8100422C */  sltiu      $v0, $v0, 0x81
    /* 3AA1C 8004A21C 05004010 */  beqz       $v0, .L8004A234
    /* 3AA20 8004A220 01000224 */   addiu     $v0, $zero, 0x1
    /* 3AA24 8004A224 05006214 */  bne        $v1, $v0, .L8004A23C
    /* 3AA28 8004A228 02000224 */   addiu     $v0, $zero, 0x2
    /* 3AA2C 8004A22C A8280108 */  j          .L8004A2A0
    /* 3AA30 8004A230 00000000 */   nop
  .L8004A234:
    /* 3AA34 8004A234 1A006010 */  beqz       $v1, .L8004A2A0
    /* 3AA38 8004A238 02000224 */   addiu     $v0, $zero, 0x2
  .L8004A23C:
    /* 3AA3C 8004A23C 90030492 */  lbu        $a0, 0x390($s0)
    /* 3AA40 8004A240 AC030292 */  lbu        $v0, 0x3AC($s0)
    /* 3AA44 8004A244 07008324 */  addiu      $v1, $a0, 0x7
    /* 3AA48 8004A248 21306000 */  addu       $a2, $v1, $zero
    /* 3AA4C 8004A24C 01004238 */  xori       $v0, $v0, 0x1
    /* 3AA50 8004A250 02006104 */  bgez       $v1, .L8004A25C
    /* 3AA54 8004A254 AC0302A2 */   sb        $v0, 0x3AC($s0)
    /* 3AA58 8004A258 16008624 */  addiu      $a2, $a0, 0x16
  .L8004A25C:
    /* 3AA5C 8004A25C 21200002 */  addu       $a0, $s0, $zero
    /* 3AA60 8004A260 1B000524 */  addiu      $a1, $zero, 0x1B
    /* 3AA64 8004A264 F001C630 */  andi       $a2, $a2, 0x1F0
    /* 3AA68 8004A268 23306600 */  subu       $a2, $v1, $a2
    /* 3AA6C 8004A26C 8C6E010C */  jal        func_8005BA30
    /* 3AA70 8004A270 FF00C630 */   andi      $a2, $a2, 0xFF
    /* 3AA74 8004A274 A8280108 */  j          .L8004A2A0
    /* 3AA78 8004A278 02000224 */   addiu     $v0, $zero, 0x2
  .L8004A27C:
    /* 3AA7C 8004A27C 1B000524 */  addiu      $a1, $zero, 0x1B
    /* 3AA80 8004A280 AB030292 */  lbu        $v0, 0x3AB($s0)
    /* 3AA84 8004A284 90030692 */  lbu        $a2, 0x390($s0)
    /* 3AA88 8004A288 23104700 */  subu       $v0, $v0, $a3
    /* 3AA8C 8004A28C FF004230 */  andi       $v0, $v0, 0xFF
    /* 3AA90 8004A290 8100422C */  sltiu      $v0, $v0, 0x81
    /* 3AA94 8004A294 9E6E010C */  jal        func_8005BA78
    /* 3AA98 8004A298 AC0302A2 */   sb        $v0, 0x3AC($s0)
    /* 3AA9C 8004A29C 02000224 */  addiu      $v0, $zero, 0x2
  .L8004A2A0:
    /* 3AAA0 8004A2A0 D00302A2 */  sb         $v0, 0x3D0($s0)
    /* 3AAA4 8004A2A4 01000224 */  addiu      $v0, $zero, 0x1
    /* 3AAA8 8004A2A8 960302A2 */  sb         $v0, 0x396($s0)
    /* 3AAAC 8004A2AC 06000224 */  addiu      $v0, $zero, 0x6
    /* 3AAB0 8004A2B0 970302A2 */  sb         $v0, 0x397($s0)
  .L8004A2B4:
    /* 3AAB4 8004A2B4 01000224 */  addiu      $v0, $zero, 0x1
  .L8004A2B8:
    /* 3AAB8 8004A2B8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3AABC 8004A2BC 1400B18F */  lw         $s1, 0x14($sp)
    /* 3AAC0 8004A2C0 1000B08F */  lw         $s0, 0x10($sp)
    /* 3AAC4 8004A2C4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3AAC8 8004A2C8 0800E003 */  jr         $ra
    /* 3AACC 8004A2CC 00000000 */   nop
endlabel func_8004A114
