nonmatching func_8006A16C, 0x178

glabel func_8006A16C
    /* 5A96C 8006A16C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5A970 8006A170 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5A974 8006A174 99038590 */  lbu        $a1, 0x399($a0)
    /* 5A978 8006A178 00000000 */  nop
    /* 5A97C 8006A17C 0200A014 */  bnez       $a1, .L8006A188
    /* 5A980 8006A180 FFFF0624 */   addiu     $a2, $zero, -0x1
    /* 5A984 8006A184 01000624 */  addiu      $a2, $zero, 0x1
  .L8006A188:
    /* 5A988 8006A188 801F023C */  lui        $v0, (0x1F800009 >> 16)
    /* 5A98C 8006A18C 09004290 */  lbu        $v0, (0x1F800009 & 0xFFFF)($v0)
    /* 5A990 8006A190 00000000 */  nop
    /* 5A994 8006A194 2A004010 */  beqz       $v0, .L8006A240
    /* 5A998 8006A198 00000000 */   nop
    /* 5A99C 8006A19C 98038290 */  lbu        $v0, 0x398($a0)
    /* 5A9A0 8006A1A0 801F013C */  lui        $at, (0x1F8002FF >> 16)
    /* 5A9A4 8006A1A4 21084100 */  addu       $at, $v0, $at
    /* 5A9A8 8006A1A8 FF022390 */  lbu        $v1, (0x1F8002FF & 0xFFFF)($at)
    /* 5A9AC 8006A1AC 01000224 */  addiu      $v0, $zero, 0x1
    /* 5A9B0 8006A1B0 19006210 */  beq        $v1, $v0, .L8006A218
    /* 5A9B4 8006A1B4 02006228 */   slti      $v0, $v1, 0x2
    /* 5A9B8 8006A1B8 46004010 */  beqz       $v0, .L8006A2D4
    /* 5A9BC 8006A1BC 00000000 */   nop
    /* 5A9C0 8006A1C0 44006014 */  bnez       $v1, .L8006A2D4
    /* 5A9C4 8006A1C4 80100500 */   sll       $v0, $a1, 2
    /* 5A9C8 8006A1C8 801F043C */  lui        $a0, (0x1F8000F8 >> 16)
    /* 5A9CC 8006A1CC F8008484 */  lh         $a0, (0x1F8000F8 & 0xFFFF)($a0)
    /* 5A9D0 8006A1D0 801F013C */  lui        $at, (0x1F800314 >> 16)
    /* 5A9D4 8006A1D4 21084100 */  addu       $at, $v0, $at
    /* 5A9D8 8006A1D8 1403258C */  lw         $a1, (0x1F800314 & 0xFFFF)($at)
    /* 5A9DC 8006A1DC F969010C */  jal        func_8005A7E4
    /* 5A9E0 8006A1E0 14000624 */   addiu     $a2, $zero, 0x14
    /* 5A9E4 8006A1E4 801F043C */  lui        $a0, (0x1F8000FC >> 16)
    /* 5A9E8 8006A1E8 FC008484 */  lh         $a0, (0x1F8000FC & 0xFFFF)($a0)
    /* 5A9EC 8006A1EC 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 5A9F0 8006A1F0 F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 5A9F4 8006A1F4 801F013C */  lui        $at, (0x1F8000F8 >> 16)
    /* 5A9F8 8006A1F8 F80022A4 */  sh         $v0, (0x1F8000F8 & 0xFFFF)($at)
    /* 5A9FC 8006A1FC 06006584 */  lh         $a1, 0x6($v1)
    /* 5AA00 8006A200 DB69010C */  jal        func_8005A76C
    /* 5AA04 8006A204 01000624 */   addiu     $a2, $zero, 0x1
    /* 5AA08 8006A208 801F013C */  lui        $at, (0x1F8000FC >> 16)
    /* 5AA0C 8006A20C FC0022A4 */  sh         $v0, (0x1F8000FC & 0xFFFF)($at)
    /* 5AA10 8006A210 B5A80108 */  j          .L8006A2D4
    /* 5AA14 8006A214 00000000 */   nop
  .L8006A218:
    /* 5AA18 8006A218 80100500 */  sll        $v0, $a1, 2
    /* 5AA1C 8006A21C 801F043C */  lui        $a0, (0x1F8000F8 >> 16)
    /* 5AA20 8006A220 F8008484 */  lh         $a0, (0x1F8000F8 & 0xFFFF)($a0)
    /* 5AA24 8006A224 801F013C */  lui        $at, (0x1F800314 >> 16)
    /* 5AA28 8006A228 21084100 */  addu       $at, $v0, $at
    /* 5AA2C 8006A22C 1403258C */  lw         $a1, (0x1F800314 & 0xFFFF)($at)
    /* 5AA30 8006A230 F969010C */  jal        func_8005A7E4
    /* 5AA34 8006A234 0A000624 */   addiu     $a2, $zero, 0xA
    /* 5AA38 8006A238 B3A80108 */  j          .L8006A2CC
    /* 5AA3C 8006A23C 00000000 */   nop
  .L8006A240:
    /* 5AA40 8006A240 98038290 */  lbu        $v0, 0x398($a0)
    /* 5AA44 8006A244 02008394 */  lhu        $v1, 0x2($a0)
    /* 5AA48 8006A248 801F013C */  lui        $at, (0x1F8002FF >> 16)
    /* 5AA4C 8006A24C 21084100 */  addu       $at, $v0, $at
    /* 5AA50 8006A250 FF022590 */  lbu        $a1, (0x1F8002FF & 0xFFFF)($at)
    /* 5AA54 8006A254 801F013C */  lui        $at, (0x1F8000F8 >> 16)
    /* 5AA58 8006A258 F80023A4 */  sh         $v1, (0x1F8000F8 & 0xFFFF)($at)
    /* 5AA5C 8006A25C 99038290 */  lbu        $v0, 0x399($a0)
    /* 5AA60 8006A260 00240600 */  sll        $a0, $a2, 16
    /* 5AA64 8006A264 01004238 */  xori       $v0, $v0, 0x1
    /* 5AA68 8006A268 80100200 */  sll        $v0, $v0, 2
    /* 5AA6C 8006A26C 801F013C */  lui        $at, (0x1F800314 >> 16)
    /* 5AA70 8006A270 21084100 */  addu       $at, $v0, $at
    /* 5AA74 8006A274 1403278C */  lw         $a3, (0x1F800314 & 0xFFFF)($at)
    /* 5AA78 8006A278 03240400 */  sra        $a0, $a0, 16
    /* 5AA7C 8006A27C 18008700 */  mult       $a0, $a3
    /* 5AA80 8006A280 12300000 */  mflo       $a2
    /* 5AA84 8006A284 001C0300 */  sll        $v1, $v1, 16
    /* 5AA88 8006A288 031C0300 */  sra        $v1, $v1, 16
    /* 5AA8C 8006A28C 18008300 */  mult       $a0, $v1
    /* 5AA90 8006A290 02000224 */  addiu      $v0, $zero, 0x2
    /* 5AA94 8006A294 23104500 */  subu       $v0, $v0, $a1
    /* 5AA98 8006A298 40180200 */  sll        $v1, $v0, 1
    /* 5AA9C 8006A29C 21186200 */  addu       $v1, $v1, $v0
    /* 5AAA0 8006A2A0 001A0300 */  sll        $v1, $v1, 8
    /* 5AAA4 8006A2A4 00F5C224 */  addiu      $v0, $a2, -0xB00
    /* 5AAA8 8006A2A8 FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* 5AAAC 8006A2AC 23104300 */  subu       $v0, $v0, $v1
    /* 5AAB0 8006A2B0 12480000 */  mflo       $t1
    /* 5AAB4 8006A2B4 2A104900 */  slt        $v0, $v0, $t1
    /* 5AAB8 8006A2B8 06004010 */  beqz       $v0, .L8006A2D4
    /* 5AABC 8006A2BC 000B6224 */   addiu     $v0, $v1, 0xB00
    /* 5AAC0 8006A2C0 18004400 */  mult       $v0, $a0
    /* 5AAC4 8006A2C4 12400000 */  mflo       $t0
    /* 5AAC8 8006A2C8 2310E800 */  subu       $v0, $a3, $t0
  .L8006A2CC:
    /* 5AACC 8006A2CC 801F013C */  lui        $at, (0x1F8000F8 >> 16)
    /* 5AAD0 8006A2D0 F80022A4 */  sh         $v0, (0x1F8000F8 & 0xFFFF)($at)
  .L8006A2D4:
    /* 5AAD4 8006A2D4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5AAD8 8006A2D8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 5AADC 8006A2DC 0800E003 */  jr         $ra
    /* 5AAE0 8006A2E0 00000000 */   nop
endlabel func_8006A16C
