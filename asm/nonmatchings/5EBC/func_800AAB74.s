nonmatching func_800AAB74, 0xB0

glabel func_800AAB74
    /* 9B374 800AAB74 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 9B378 800AAB78 17F48224 */  addiu      $v0, $a0, -0xBE9
    /* 9B37C 800AAB7C FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 9B380 800AAB80 CF07422C */  sltiu      $v0, $v0, 0x7CF
    /* 9B384 800AAB84 13004010 */  beqz       $v0, .L800AABD4
    /* 9B388 800AAB88 21188000 */   addu      $v1, $a0, $zero
    /* 9B38C 800AAB8C FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* 9B390 800AAB90 0E008287 */  lh         $v0, %gp_rel(D_800E6A9A)($gp)
    /* 9B394 800AAB94 18F46324 */  addiu      $v1, $v1, -0xBE8
    /* 9B398 800AAB98 40200200 */  sll        $a0, $v0, 1
    /* 9B39C 800AAB9C 01004224 */  addiu      $v0, $v0, 0x1
    /* 9B3A0 800AABA0 0E0082A7 */  sh         $v0, %gp_rel(D_800E6A9A)($gp)
    /* 9B3A4 800AABA4 00140200 */  sll        $v0, $v0, 16
    /* 9B3A8 800AABA8 03140200 */  sra        $v0, $v0, 16
    /* 9B3AC 800AABAC 20004228 */  slti       $v0, $v0, 0x20
    /* 9B3B0 800AABB0 0D80013C */  lui        $at, %hi(D_800CE7B8)
    /* 9B3B4 800AABB4 B8E72124 */  addiu      $at, $at, %lo(D_800CE7B8)
    /* 9B3B8 800AABB8 21082400 */  addu       $at, $at, $a0
    /* 9B3BC 800AABBC 000023A4 */  sh         $v1, 0x0($at)
    /* 9B3C0 800AABC0 15004014 */  bnez       $v0, .L800AAC18
    /* 9B3C4 800AABC4 00000000 */   nop
    /* 9B3C8 800AABC8 0E0080A7 */  sh         $zero, %gp_rel(D_800E6A9A)($gp)
    /* 9B3CC 800AABCC 06AB0208 */  j          .L800AAC18
    /* 9B3D0 800AABD0 00000000 */   nop
  .L800AABD4:
    /* 9B3D4 800AABD4 47EC8224 */  addiu      $v0, $a0, -0x13B9
    /* 9B3D8 800AABD8 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 9B3DC 800AABDC 6201422C */  sltiu      $v0, $v0, 0x162
    /* 9B3E0 800AABE0 05004010 */  beqz       $v0, .L800AABF8
    /* 9B3E4 800AABE4 FFFF6230 */   andi      $v0, $v1, 0xFFFF
    /* 9B3E8 800AABE8 18F44224 */  addiu      $v0, $v0, -0xBE8
    /* 9B3EC 800AABEC 040082A7 */  sh         $v0, %gp_rel(D_800E6A90)($gp)
    /* 9B3F0 800AABF0 06AB0208 */  j          .L800AAC18
    /* 9B3F4 800AABF4 00000000 */   nop
  .L800AABF8:
    /* 9B3F8 800AABF8 5FE88224 */  addiu      $v0, $a0, -0x17A1
    /* 9B3FC 800AABFC FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 9B400 800AAC00 0700422C */  sltiu      $v0, $v0, 0x7
    /* 9B404 800AAC04 04004010 */  beqz       $v0, .L800AAC18
    /* 9B408 800AAC08 00000000 */   nop
    /* 9B40C 800AAC0C FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 9B410 800AAC10 18F44224 */  addiu      $v0, $v0, -0xBE8
    /* 9B414 800AAC14 080082AF */  sw         $v0, %gp_rel(D_800E6A94)($gp)
  .L800AAC18:
    /* 9B418 800AAC18 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 9B41C 800AAC1C 0800E003 */  jr         $ra
    /* 9B420 800AAC20 00000000 */   nop
endlabel func_800AAB74
