nonmatching func_8009E2A4, 0x74

glabel func_8009E2A4
    /* 8EAA4 8009E2A4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8EAA8 8009E2A8 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* 8EAAC 8009E2AC 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* 8EAB0 8009E2B0 03000224 */  addiu      $v0, $zero, 0x3
    /* 8EAB4 8009E2B4 0D006210 */  beq        $v1, $v0, .L8009E2EC
    /* 8EAB8 8009E2B8 1000BFAF */   sw        $ra, 0x10($sp)
    /* 8EABC 8009E2BC 04006228 */  slti       $v0, $v1, 0x4
    /* 8EAC0 8009E2C0 05004010 */  beqz       $v0, .L8009E2D8
    /* 8EAC4 8009E2C4 02000224 */   addiu     $v0, $zero, 0x2
    /* 8EAC8 8009E2C8 09006210 */  beq        $v1, $v0, .L8009E2F0
    /* 8EACC 8009E2CC 02000224 */   addiu     $v0, $zero, 0x2
    /* 8EAD0 8009E2D0 BF780208 */  j          .L8009E2FC
    /* 8EAD4 8009E2D4 0C000224 */   addiu     $v0, $zero, 0xC
  .L8009E2D8:
    /* 8EAD8 8009E2D8 04000224 */  addiu      $v0, $zero, 0x4
    /* 8EADC 8009E2DC 04006210 */  beq        $v1, $v0, .L8009E2F0
    /* 8EAE0 8009E2E0 01000224 */   addiu     $v0, $zero, 0x1
    /* 8EAE4 8009E2E4 BF780208 */  j          .L8009E2FC
    /* 8EAE8 8009E2E8 0C000224 */   addiu     $v0, $zero, 0xC
  .L8009E2EC:
    /* 8EAEC 8009E2EC 03000224 */  addiu      $v0, $zero, 0x3
  .L8009E2F0:
    /* 8EAF0 8009E2F0 E20382A0 */  sb         $v0, 0x3E2($a0)
    /* 8EAF4 8009E2F4 C2780208 */  j          .L8009E308
    /* 8EAF8 8009E2F8 E30380A0 */   sb        $zero, 0x3E3($a0)
  .L8009E2FC:
    /* 8EAFC 8009E2FC E20382A0 */  sb         $v0, 0x3E2($a0)
    /* 8EB00 8009E300 3077020C */  jal        func_8009DCC0
    /* 8EB04 8009E304 E30380A0 */   sb        $zero, 0x3E3($a0)
  .L8009E308:
    /* 8EB08 8009E308 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8EB0C 8009E30C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8EB10 8009E310 0800E003 */  jr         $ra
    /* 8EB14 8009E314 00000000 */   nop
endlabel func_8009E2A4
