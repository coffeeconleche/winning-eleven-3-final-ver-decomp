nonmatching func_800AE49C, 0x98

glabel func_800AE49C
    /* 9EC9C 800AE49C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9ECA0 800AE4A0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9ECA4 800AE4A4 0D80113C */  lui        $s1, %hi(D_800CEAC6)
    /* 9ECA8 800AE4A8 C6EA3126 */  addiu      $s1, $s1, %lo(D_800CEAC6)
    /* 9ECAC 800AE4AC 1800BFAF */  sw         $ra, 0x18($sp)
    /* 9ECB0 800AE4B0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9ECB4 800AE4B4 00002292 */  lbu        $v0, 0x0($s1)
    /* 9ECB8 800AE4B8 00000000 */  nop
    /* 9ECBC 800AE4BC 0200422C */  sltiu      $v0, $v0, 0x2
    /* 9ECC0 800AE4C0 08004014 */  bnez       $v0, .L800AE4E4
    /* 9ECC4 800AE4C4 21808000 */   addu      $s0, $a0, $zero
    /* 9ECC8 800AE4C8 0180043C */  lui        $a0, %hi(D_80014EF0)
    /* 9ECCC 800AE4CC F04E8424 */  addiu      $a0, $a0, %lo(D_80014EF0)
    /* 9ECD0 800AE4D0 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9ECD4 800AE4D4 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9ECD8 800AE4D8 00000000 */  nop
    /* 9ECDC 800AE4DC 09F84000 */  jalr       $v0
    /* 9ECE0 800AE4E0 21280002 */   addu      $a1, $s0, $zero
  .L800AE4E4:
    /* 9ECE4 800AE4E4 04000016 */  bnez       $s0, .L800AE4F8
    /* 9ECE8 800AE4E8 6A002426 */   addiu     $a0, $s1, 0x6A
    /* 9ECEC 800AE4EC FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 9ECF0 800AE4F0 36C4020C */  jal        func_800B10D8
    /* 9ECF4 800AE4F4 14000624 */   addiu     $a2, $zero, 0x14
  .L800AE4F8:
    /* 9ECF8 800AE4F8 0003043C */  lui        $a0, (0x3000001 >> 16)
    /* 9ECFC 800AE4FC 0D80023C */  lui        $v0, %hi(D_800CEABC)
    /* 9ED00 800AE500 BCEA428C */  lw         $v0, %lo(D_800CEABC)($v0)
    /* 9ED04 800AE504 02000012 */  beqz       $s0, .L800AE510
    /* 9ED08 800AE508 01008434 */   ori       $a0, $a0, (0x3000001 & 0xFFFF)
    /* 9ED0C 800AE50C 0003043C */  lui        $a0, (0x3000000 >> 16)
  .L800AE510:
    /* 9ED10 800AE510 1000428C */  lw         $v0, 0x10($v0)
    /* 9ED14 800AE514 00000000 */  nop
    /* 9ED18 800AE518 09F84000 */  jalr       $v0
    /* 9ED1C 800AE51C 00000000 */   nop
    /* 9ED20 800AE520 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9ED24 800AE524 1400B18F */  lw         $s1, 0x14($sp)
    /* 9ED28 800AE528 1000B08F */  lw         $s0, 0x10($sp)
    /* 9ED2C 800AE52C 0800E003 */  jr         $ra
    /* 9ED30 800AE530 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800AE49C
