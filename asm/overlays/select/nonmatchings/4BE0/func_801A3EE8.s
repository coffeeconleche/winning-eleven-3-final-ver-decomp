nonmatching func_801A3EE8, 0xF4

glabel func_801A3EE8
    /* 1AF70 801A3EE8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1AF74 801A3EEC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1AF78 801A3EF0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1AF7C 801A3EF4 2190A000 */  addu       $s2, $a1, $zero
    /* 1AF80 801A3EF8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1AF84 801A3EFC FF005132 */  andi       $s1, $s2, 0xFF
    /* 1AF88 801A3F00 2400BFAF */  sw         $ra, 0x24($sp)
    /* 1AF8C 801A3F04 2000B4AF */  sw         $s4, 0x20($sp)
    /* 1AF90 801A3F08 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1AF94 801A3F0C 801F013C */  lui        $at, (0x1F8002DD >> 16)
    /* 1AF98 801A3F10 21082102 */  addu       $at, $s1, $at
    /* 1AF9C 801A3F14 DD023390 */  lbu        $s3, (0x1F8002DD & 0xFFFF)($at)
    /* 1AFA0 801A3F18 628D060C */  jal        func_801A3588
    /* 1AFA4 801A3F1C 21808000 */   addu      $s0, $a0, $zero
    /* 1AFA8 801A3F20 00501032 */  andi       $s0, $s0, 0x5000
    /* 1AFAC 801A3F24 1E000012 */  beqz       $s0, .L801A3FA0
    /* 1AFB0 801A3F28 801F143C */   lui       $s4, (0x1F8002DD >> 16)
    /* 1AFB4 801A3F2C 01000224 */  addiu      $v0, $zero, 0x1
    /* 1AFB8 801A3F30 1B002212 */  beq        $s1, $v0, .L801A3FA0
    /* 1AFBC 801A3F34 0A000224 */   addiu     $v0, $zero, 0xA
    /* 1AFC0 801A3F38 1180033C */  lui        $v1, %hi(D_8010A322)
    /* 1AFC4 801A3F3C 22A36390 */  lbu        $v1, %lo(D_8010A322)($v1)
    /* 1AFC8 801A3F40 00000000 */  nop
    /* 1AFCC 801A3F44 17006214 */  bne        $v1, $v0, .L801A3FA4
    /* 1AFD0 801A3F48 FF004232 */   andi      $v0, $s2, 0xFF
    /* 1AFD4 801A3F4C 1E80013C */  lui        $at, %hi(D_801DA060)
    /* 1AFD8 801A3F50 60A020AC */  sw         $zero, %lo(D_801DA060)($at)
    /* 1AFDC 801A3F54 1E80013C */  lui        $at, %hi(D_801DA064)
    /* 1AFE0 801A3F58 64A020AC */  sw         $zero, %lo(D_801DA064)($at)
    /* 1AFE4 801A3F5C 88AD020C */  jal        func_800AB620
    /* 1AFE8 801A3F60 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 1AFEC 801A3F64 801F013C */  lui        $at, (0x1F8002DD >> 16)
    /* 1AFF0 801A3F68 21082102 */  addu       $at, $s1, $at
    /* 1AFF4 801A3F6C DD022390 */  lbu        $v1, (0x1F8002DD & 0xFFFF)($at)
    /* 1AFF8 801A3F70 28000224 */  addiu      $v0, $zero, 0x28
    /* 1AFFC 801A3F74 FF006430 */  andi       $a0, $v1, 0xFF
    /* 1B000 801A3F78 03008214 */  bne        $a0, $v0, .L801A3F88
    /* 1B004 801A3F7C 29000224 */   addiu     $v0, $zero, 0x29
    /* 1B008 801A3F80 E58F0608 */  j          .L801A3F94
    /* 1B00C 801A3F84 01006224 */   addiu     $v0, $v1, 0x1
  .L801A3F88:
    /* 1B010 801A3F88 06008214 */  bne        $a0, $v0, .L801A3FA4
    /* 1B014 801A3F8C FF004232 */   andi      $v0, $s2, 0xFF
    /* 1B018 801A3F90 FFFF6224 */  addiu      $v0, $v1, -0x1
  .L801A3F94:
    /* 1B01C 801A3F94 801F013C */  lui        $at, (0x1F8002DD >> 16)
    /* 1B020 801A3F98 21082102 */  addu       $at, $s1, $at
    /* 1B024 801A3F9C DD0222A0 */  sb         $v0, (0x1F8002DD & 0xFFFF)($at)
  .L801A3FA0:
    /* 1B028 801A3FA0 FF004232 */  andi       $v0, $s2, 0xFF
  .L801A3FA4:
    /* 1B02C 801A3FA4 21108202 */  addu       $v0, $s4, $v0
    /* 1B030 801A3FA8 DD024290 */  lbu        $v0, (0x1F8002DD & 0xFFFF)($v0)
    /* 1B034 801A3FAC 00000000 */  nop
    /* 1B038 801A3FB0 26106202 */  xor        $v0, $s3, $v0
    /* 1B03C 801A3FB4 2B100200 */  sltu       $v0, $zero, $v0
    /* 1B040 801A3FB8 2400BF8F */  lw         $ra, 0x24($sp)
    /* 1B044 801A3FBC 2000B48F */  lw         $s4, 0x20($sp)
    /* 1B048 801A3FC0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1B04C 801A3FC4 1800B28F */  lw         $s2, 0x18($sp)
    /* 1B050 801A3FC8 1400B18F */  lw         $s1, 0x14($sp)
    /* 1B054 801A3FCC 1000B08F */  lw         $s0, 0x10($sp)
    /* 1B058 801A3FD0 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1B05C 801A3FD4 0800E003 */  jr         $ra
    /* 1B060 801A3FD8 00000000 */   nop
endlabel func_801A3EE8
