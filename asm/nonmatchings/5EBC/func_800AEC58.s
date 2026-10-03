nonmatching func_800AEC58, 0xD8

glabel func_800AEC58
    /* 9F458 800AEC58 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9F45C 800AEC5C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9F460 800AEC60 21908000 */  addu       $s2, $a0, $zero
    /* 9F464 800AEC64 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 9F468 800AEC68 0D80133C */  lui        $s3, %hi(D_800CEAC6)
    /* 9F46C 800AEC6C C6EA7326 */  addiu      $s3, $s3, %lo(D_800CEAC6)
    /* 9F470 800AEC70 2000BFAF */  sw         $ra, 0x20($sp)
    /* 9F474 800AEC74 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9F478 800AEC78 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9F47C 800AEC7C 00006292 */  lbu        $v0, 0x0($s3)
    /* 9F480 800AEC80 00000000 */  nop
    /* 9F484 800AEC84 0200422C */  sltiu      $v0, $v0, 0x2
    /* 9F488 800AEC88 09004014 */  bnez       $v0, .L800AECB0
    /* 9F48C 800AEC8C 2188A000 */   addu      $s1, $a1, $zero
    /* 9F490 800AEC90 0180043C */  lui        $a0, %hi(D_80014FD4)
    /* 9F494 800AEC94 D44F8424 */  addiu      $a0, $a0, %lo(D_80014FD4)
    /* 9F498 800AEC98 21284002 */  addu       $a1, $s2, $zero
    /* 9F49C 800AEC9C 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9F4A0 800AECA0 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9F4A4 800AECA4 00000000 */  nop
    /* 9F4A8 800AECA8 09F84000 */  jalr       $v0
    /* 9F4AC 800AECAC 21302002 */   addu      $a2, $s1, $zero
  .L800AECB0:
    /* 9F4B0 800AECB0 1C003026 */  addiu      $s0, $s1, 0x1C
    /* 9F4B4 800AECB4 21200002 */  addu       $a0, $s0, $zero
    /* 9F4B8 800AECB8 64BD020C */  jal        func_800AF590
    /* 9F4BC 800AECBC 21282002 */   addu      $a1, $s1, $zero
    /* 9F4C0 800AECC0 FF00043C */  lui        $a0, (0xFFFFFF >> 16)
    /* 9F4C4 800AECC4 FFFF8434 */  ori        $a0, $a0, (0xFFFFFF & 0xFFFF)
    /* 9F4C8 800AECC8 21280002 */  addu       $a1, $s0, $zero
    /* 9F4CC 800AECCC 40000624 */  addiu      $a2, $zero, 0x40
    /* 9F4D0 800AECD0 00FF033C */  lui        $v1, (0xFF000000 >> 16)
    /* 9F4D4 800AECD4 1C00228E */  lw         $v0, 0x1C($s1)
    /* 9F4D8 800AECD8 24204402 */  and        $a0, $s2, $a0
    /* 9F4DC 800AECDC 24104300 */  and        $v0, $v0, $v1
    /* 9F4E0 800AECE0 0D80033C */  lui        $v1, %hi(D_800CEABC)
    /* 9F4E4 800AECE4 BCEA638C */  lw         $v1, %lo(D_800CEABC)($v1)
    /* 9F4E8 800AECE8 25104400 */  or         $v0, $v0, $a0
    /* 9F4EC 800AECEC 1C0022AE */  sw         $v0, 0x1C($s1)
    /* 9F4F0 800AECF0 1800648C */  lw         $a0, 0x18($v1)
    /* 9F4F4 800AECF4 0800628C */  lw         $v0, 0x8($v1)
    /* 9F4F8 800AECF8 00000000 */  nop
    /* 9F4FC 800AECFC 09F84000 */  jalr       $v0
    /* 9F500 800AED00 21380000 */   addu      $a3, $zero, $zero
    /* 9F504 800AED04 0E006426 */  addiu      $a0, $s3, 0xE
    /* 9F508 800AED08 21282002 */  addu       $a1, $s1, $zero
    /* 9F50C 800AED0C 46C4020C */  jal        func_800B1118
    /* 9F510 800AED10 5C000624 */   addiu     $a2, $zero, 0x5C
    /* 9F514 800AED14 2000BF8F */  lw         $ra, 0x20($sp)
    /* 9F518 800AED18 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 9F51C 800AED1C 1800B28F */  lw         $s2, 0x18($sp)
    /* 9F520 800AED20 1400B18F */  lw         $s1, 0x14($sp)
    /* 9F524 800AED24 1000B08F */  lw         $s0, 0x10($sp)
    /* 9F528 800AED28 0800E003 */  jr         $ra
    /* 9F52C 800AED2C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800AEC58
