nonmatching func_800AE8A0, 0xB8

glabel func_800AE8A0
    /* 9F0A0 800AE8A0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9F0A4 800AE8A4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9F0A8 800AE8A8 21808000 */  addu       $s0, $a0, $zero
    /* 9F0AC 800AE8AC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9F0B0 800AE8B0 2190A000 */  addu       $s2, $a1, $zero
    /* 9F0B4 800AE8B4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9F0B8 800AE8B8 2188C000 */  addu       $s1, $a2, $zero
    /* 9F0BC 800AE8BC 0180043C */  lui        $a0, %hi(D_80014F6C)
    /* 9F0C0 800AE8C0 6C4F8424 */  addiu      $a0, $a0, %lo(D_80014F6C)
    /* 9F0C4 800AE8C4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 9F0C8 800AE8C8 67B9020C */  jal        func_800AE59C
    /* 9F0CC 800AE8CC 21280002 */   addu      $a1, $s0, $zero
    /* 9F0D0 800AE8D0 04000286 */  lh         $v0, 0x4($s0)
    /* 9F0D4 800AE8D4 00000000 */  nop
    /* 9F0D8 800AE8D8 19004010 */  beqz       $v0, .L800AE940
    /* 9F0DC 800AE8DC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 9F0E0 800AE8E0 06000286 */  lh         $v0, 0x6($s0)
    /* 9F0E4 800AE8E4 00000000 */  nop
    /* 9F0E8 800AE8E8 03004014 */  bnez       $v0, .L800AE8F8
    /* 9F0EC 800AE8EC 00141100 */   sll       $v0, $s1, 16
    /* 9F0F0 800AE8F0 50BA0208 */  j          .L800AE940
    /* 9F0F4 800AE8F4 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800AE8F8:
    /* 9F0F8 800AE8F8 0D80033C */  lui        $v1, %hi(D_800CEB64)
    /* 9F0FC 800AE8FC 64EB6324 */  addiu      $v1, $v1, %lo(D_800CEB64)
    /* 9F100 800AE900 FFFF4432 */  andi       $a0, $s2, 0xFFFF
    /* 9F104 800AE904 25104400 */  or         $v0, $v0, $a0
    /* 9F108 800AE908 0000058E */  lw         $a1, 0x0($s0)
    /* 9F10C 800AE90C 0D80073C */  lui        $a3, %hi(D_800CEABC)
    /* 9F110 800AE910 BCEAE78C */  lw         $a3, %lo(D_800CEABC)($a3)
    /* 9F114 800AE914 14000624 */  addiu      $a2, $zero, 0x14
    /* 9F118 800AE918 040062AC */  sw         $v0, 0x4($v1)
    /* 9F11C 800AE91C 000065AC */  sw         $a1, 0x0($v1)
    /* 9F120 800AE920 0400028E */  lw         $v0, 0x4($s0)
    /* 9F124 800AE924 F8FF6524 */  addiu      $a1, $v1, -0x8
    /* 9F128 800AE928 080062AC */  sw         $v0, 0x8($v1)
    /* 9F12C 800AE92C 1800E48C */  lw         $a0, 0x18($a3)
    /* 9F130 800AE930 0800E28C */  lw         $v0, 0x8($a3)
    /* 9F134 800AE934 00000000 */  nop
    /* 9F138 800AE938 09F84000 */  jalr       $v0
    /* 9F13C 800AE93C 21380000 */   addu      $a3, $zero, $zero
  .L800AE940:
    /* 9F140 800AE940 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 9F144 800AE944 1800B28F */  lw         $s2, 0x18($sp)
    /* 9F148 800AE948 1400B18F */  lw         $s1, 0x14($sp)
    /* 9F14C 800AE94C 1000B08F */  lw         $s0, 0x10($sp)
    /* 9F150 800AE950 0800E003 */  jr         $ra
    /* 9F154 800AE954 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800AE8A0
