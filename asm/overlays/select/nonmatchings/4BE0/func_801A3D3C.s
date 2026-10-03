nonmatching func_801A3D3C, 0x1AC

glabel func_801A3D3C
    /* 1ADC4 801A3D3C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1ADC8 801A3D40 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1ADCC 801A3D44 21888000 */  addu       $s1, $a0, $zero
    /* 1ADD0 801A3D48 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1ADD4 801A3D4C 2190A000 */  addu       $s2, $a1, $zero
    /* 1ADD8 801A3D50 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1ADDC 801A3D54 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1ADE0 801A3D58 FF005032 */  andi       $s0, $s2, 0xFF
    /* 1ADE4 801A3D5C 00802232 */  andi       $v0, $s1, 0x8000
    /* 1ADE8 801A3D60 2400BFAF */  sw         $ra, 0x24($sp)
    /* 1ADEC 801A3D64 2000B4AF */  sw         $s4, 0x20($sp)
    /* 1ADF0 801A3D68 801F013C */  lui        $at, (0x1F8002DD >> 16)
    /* 1ADF4 801A3D6C 21080102 */  addu       $at, $s0, $at
    /* 1ADF8 801A3D70 DD023490 */  lbu        $s4, (0x1F8002DD & 0xFFFF)($at)
    /* 1ADFC 801A3D74 18004010 */  beqz       $v0, .L801A3DD8
    /* 1AE00 801A3D78 801F133C */   lui       $s3, (0x1F8002DD >> 16)
    /* 1AE04 801A3D7C 88AD020C */  jal        func_800AB620
    /* 1AE08 801A3D80 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 1AE0C 801A3D84 801F013C */  lui        $at, (0x1F8002DD >> 16)
    /* 1AE10 801A3D88 21080102 */  addu       $at, $s0, $at
    /* 1AE14 801A3D8C DD022590 */  lbu        $a1, (0x1F8002DD & 0xFFFF)($at)
    /* 1AE18 801A3D90 2EBA023C */  lui        $v0, (0xBA2E8BA3 >> 16)
    /* 1AE1C 801A3D94 A38B4234 */  ori        $v0, $v0, (0xBA2E8BA3 & 0xFFFF)
    /* 1AE20 801A3D98 FF00A430 */  andi       $a0, $a1, 0xFF
    /* 1AE24 801A3D9C 19008200 */  multu      $a0, $v0
    /* 1AE28 801A3DA0 10380000 */  mfhi       $a3
    /* 1AE2C 801A3DA4 C2180700 */  srl        $v1, $a3, 3
    /* 1AE30 801A3DA8 40100300 */  sll        $v0, $v1, 1
    /* 1AE34 801A3DAC 21104300 */  addu       $v0, $v0, $v1
    /* 1AE38 801A3DB0 80100200 */  sll        $v0, $v0, 2
    /* 1AE3C 801A3DB4 23104300 */  subu       $v0, $v0, $v1
    /* 1AE40 801A3DB8 23208200 */  subu       $a0, $a0, $v0
    /* 1AE44 801A3DBC FF008430 */  andi       $a0, $a0, 0xFF
    /* 1AE48 801A3DC0 02008014 */  bnez       $a0, .L801A3DCC
    /* 1AE4C 801A3DC4 FFFFA224 */   addiu     $v0, $a1, -0x1
    /* 1AE50 801A3DC8 0A00A224 */  addiu      $v0, $a1, 0xA
  .L801A3DCC:
    /* 1AE54 801A3DCC 801F013C */  lui        $at, (0x1F8002DD >> 16)
    /* 1AE58 801A3DD0 21080102 */  addu       $at, $s0, $at
    /* 1AE5C 801A3DD4 DD0222A0 */  sb         $v0, (0x1F8002DD & 0xFFFF)($at)
  .L801A3DD8:
    /* 1AE60 801A3DD8 00202232 */  andi       $v0, $s1, 0x2000
    /* 1AE64 801A3DDC 18004010 */  beqz       $v0, .L801A3E40
    /* 1AE68 801A3DE0 00102232 */   andi      $v0, $s1, 0x1000
    /* 1AE6C 801A3DE4 88AD020C */  jal        func_800AB620
    /* 1AE70 801A3DE8 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 1AE74 801A3DEC FF004232 */  andi       $v0, $s2, 0xFF
    /* 1AE78 801A3DF0 21306202 */  addu       $a2, $s3, $v0
    /* 1AE7C 801A3DF4 DD02C590 */  lbu        $a1, (0x1F8002DD & 0xFFFF)($a2)
    /* 1AE80 801A3DF8 2EBA023C */  lui        $v0, (0xBA2E8BA3 >> 16)
    /* 1AE84 801A3DFC A38B4234 */  ori        $v0, $v0, (0xBA2E8BA3 & 0xFFFF)
    /* 1AE88 801A3E00 FF00A430 */  andi       $a0, $a1, 0xFF
    /* 1AE8C 801A3E04 19008200 */  multu      $a0, $v0
    /* 1AE90 801A3E08 10380000 */  mfhi       $a3
    /* 1AE94 801A3E0C C2180700 */  srl        $v1, $a3, 3
    /* 1AE98 801A3E10 40100300 */  sll        $v0, $v1, 1
    /* 1AE9C 801A3E14 21104300 */  addu       $v0, $v0, $v1
    /* 1AEA0 801A3E18 80100200 */  sll        $v0, $v0, 2
    /* 1AEA4 801A3E1C 23104300 */  subu       $v0, $v0, $v1
    /* 1AEA8 801A3E20 23208200 */  subu       $a0, $a0, $v0
    /* 1AEAC 801A3E24 FF008430 */  andi       $a0, $a0, 0xFF
    /* 1AEB0 801A3E28 0A000224 */  addiu      $v0, $zero, 0xA
    /* 1AEB4 801A3E2C 02008214 */  bne        $a0, $v0, .L801A3E38
    /* 1AEB8 801A3E30 0100A224 */   addiu     $v0, $a1, 0x1
    /* 1AEBC 801A3E34 F6FFA224 */  addiu      $v0, $a1, -0xA
  .L801A3E38:
    /* 1AEC0 801A3E38 DD02C2A0 */  sb         $v0, (0x1F8002DD & 0xFFFF)($a2)
    /* 1AEC4 801A3E3C 00102232 */  andi       $v0, $s1, 0x1000
  .L801A3E40:
    /* 1AEC8 801A3E40 0D004010 */  beqz       $v0, .L801A3E78
    /* 1AECC 801A3E44 00402232 */   andi      $v0, $s1, 0x4000
    /* 1AED0 801A3E48 88AD020C */  jal        func_800AB620
    /* 1AED4 801A3E4C 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 1AED8 801A3E50 FF004232 */  andi       $v0, $s2, 0xFF
    /* 1AEDC 801A3E54 21206202 */  addu       $a0, $s3, $v0
    /* 1AEE0 801A3E58 DD028390 */  lbu        $v1, (0x1F8002DD & 0xFFFF)($a0)
    /* 1AEE4 801A3E5C 00000000 */  nop
    /* 1AEE8 801A3E60 0B00622C */  sltiu      $v0, $v1, 0xB
    /* 1AEEC 801A3E64 02004014 */  bnez       $v0, .L801A3E70
    /* 1AEF0 801A3E68 21006224 */   addiu     $v0, $v1, 0x21
    /* 1AEF4 801A3E6C F5FF6224 */  addiu      $v0, $v1, -0xB
  .L801A3E70:
    /* 1AEF8 801A3E70 DD0282A0 */  sb         $v0, (0x1F8002DD & 0xFFFF)($a0)
    /* 1AEFC 801A3E74 00402232 */  andi       $v0, $s1, 0x4000
  .L801A3E78:
    /* 1AF00 801A3E78 0D004010 */  beqz       $v0, .L801A3EB0
    /* 1AF04 801A3E7C FF004232 */   andi      $v0, $s2, 0xFF
    /* 1AF08 801A3E80 88AD020C */  jal        func_800AB620
    /* 1AF0C 801A3E84 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 1AF10 801A3E88 FF004232 */  andi       $v0, $s2, 0xFF
    /* 1AF14 801A3E8C 21206202 */  addu       $a0, $s3, $v0
    /* 1AF18 801A3E90 DD028390 */  lbu        $v1, (0x1F8002DD & 0xFFFF)($a0)
    /* 1AF1C 801A3E94 00000000 */  nop
    /* 1AF20 801A3E98 2100622C */  sltiu      $v0, $v1, 0x21
    /* 1AF24 801A3E9C 02004014 */  bnez       $v0, .L801A3EA8
    /* 1AF28 801A3EA0 0B006224 */   addiu     $v0, $v1, 0xB
    /* 1AF2C 801A3EA4 DFFF6224 */  addiu      $v0, $v1, -0x21
  .L801A3EA8:
    /* 1AF30 801A3EA8 DD0282A0 */  sb         $v0, (0x1F8002DD & 0xFFFF)($a0)
    /* 1AF34 801A3EAC FF004232 */  andi       $v0, $s2, 0xFF
  .L801A3EB0:
    /* 1AF38 801A3EB0 21106202 */  addu       $v0, $s3, $v0
    /* 1AF3C 801A3EB4 DD024290 */  lbu        $v0, (0x1F8002DD & 0xFFFF)($v0)
    /* 1AF40 801A3EB8 00000000 */  nop
    /* 1AF44 801A3EBC 26108202 */  xor        $v0, $s4, $v0
    /* 1AF48 801A3EC0 2B100200 */  sltu       $v0, $zero, $v0
    /* 1AF4C 801A3EC4 2400BF8F */  lw         $ra, 0x24($sp)
    /* 1AF50 801A3EC8 2000B48F */  lw         $s4, 0x20($sp)
    /* 1AF54 801A3ECC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1AF58 801A3ED0 1800B28F */  lw         $s2, 0x18($sp)
    /* 1AF5C 801A3ED4 1400B18F */  lw         $s1, 0x14($sp)
    /* 1AF60 801A3ED8 1000B08F */  lw         $s0, 0x10($sp)
    /* 1AF64 801A3EDC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1AF68 801A3EE0 0800E003 */  jr         $ra
    /* 1AF6C 801A3EE4 00000000 */   nop
endlabel func_801A3D3C
