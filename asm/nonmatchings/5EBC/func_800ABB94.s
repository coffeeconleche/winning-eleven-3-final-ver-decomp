nonmatching func_800ABB94, 0xA0

glabel func_800ABB94
    /* 9C394 800ABB94 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9C398 800ABB98 1000BFAF */  sw         $ra, 0x10($sp)
  .L800ABB9C:
    /* 9C39C 800ABB9C 4A008297 */  lhu        $v0, %gp_rel(D_800E6AD6)($gp)
    /* 9C3A0 800ABBA0 00000000 */  nop
    /* 9C3A4 800ABBA4 F1FF4224 */  addiu      $v0, $v0, -0xF
    /* 9C3A8 800ABBA8 21204000 */  addu       $a0, $v0, $zero
    /* 9C3AC 800ABBAC 4A0082A7 */  sh         $v0, %gp_rel(D_800E6AD6)($gp)
    /* 9C3B0 800ABBB0 00140200 */  sll        $v0, $v0, 16
    /* 9C3B4 800ABBB4 031C0200 */  sra        $v1, $v0, 16
    /* 9C3B8 800ABBB8 0900601C */  bgtz       $v1, .L800ABBE0
    /* 9C3BC 800ABBBC 00000000 */   nop
    /* 9C3C0 800ABBC0 500080A7 */  sh         $zero, %gp_rel(D_800E6ADC)($gp)
    /* 9C3C4 800ABBC4 4A0080A7 */  sh         $zero, %gp_rel(D_800E6AD6)($gp)
    /* 9C3C8 800ABBC8 7AA5020C */  jal        func_800A95E8
    /* 9C3CC 800ABBCC 00000000 */   nop
    /* 9C3D0 800ABBD0 C00080A7 */  sh         $zero, %gp_rel(D_800E6B4C)($gp)
    /* 9C3D4 800ABBD4 EA0080A7 */  sh         $zero, %gp_rel(D_800E6B76)($gp)
    /* 9C3D8 800ABBD8 09AF0208 */  j          .L800ABC24
    /* 9C3DC 800ABBDC 00000000 */   nop
  .L800ABBE0:
    /* 9C3E0 800ABBE0 E0008287 */  lh         $v0, %gp_rel(D_800E6B6C)($gp)
    /* 9C3E4 800ABBE4 00000000 */  nop
    /* 9C3E8 800ABBE8 18006200 */  mult       $v1, $v0
    /* 9C3EC 800ABBEC 500084A7 */  sh         $a0, %gp_rel(D_800E6ADC)($gp)
    /* 9C3F0 800ABBF0 12180000 */  mflo       $v1
    /* 9C3F4 800ABBF4 02006104 */  bgez       $v1, .L800ABC00
    /* 9C3F8 800ABBF8 21106000 */   addu      $v0, $v1, $zero
    /* 9C3FC 800ABBFC 7F006224 */  addiu      $v0, $v1, 0x7F
  .L800ABC00:
    /* 9C400 800ABC00 40120200 */  sll        $v0, $v0, 9
    /* 9C404 800ABC04 032C0200 */  sra        $a1, $v0, 16
    /* 9C408 800ABC08 21200000 */  addu       $a0, $zero, $zero
    /* 9C40C 800ABC0C 16F3020C */  jal        func_800BCC58
    /* 9C410 800ABC10 2130A000 */   addu      $a2, $a1, $zero
    /* 9C414 800ABC14 46E9020C */  jal        func_800BA518
    /* 9C418 800ABC18 21200000 */   addu      $a0, $zero, $zero
    /* 9C41C 800ABC1C E7AE0208 */  j          .L800ABB9C
    /* 9C420 800ABC20 00000000 */   nop
  .L800ABC24:
    /* 9C424 800ABC24 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9C428 800ABC28 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9C42C 800ABC2C 0800E003 */  jr         $ra
    /* 9C430 800ABC30 00000000 */   nop
endlabel func_800ABB94
