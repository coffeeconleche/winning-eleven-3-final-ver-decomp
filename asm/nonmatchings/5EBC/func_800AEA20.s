nonmatching func_800AEA20, 0xAC

glabel func_800AEA20
    /* 9F220 800AEA20 0D80023C */  lui        $v0, %hi(D_800CEAC6)
    /* 9F224 800AEA24 C6EA4290 */  lbu        $v0, %lo(D_800CEAC6)($v0)
    /* 9F228 800AEA28 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9F22C 800AEA2C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9F230 800AEA30 21808000 */  addu       $s0, $a0, $zero
    /* 9F234 800AEA34 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9F238 800AEA38 2188A000 */  addu       $s1, $a1, $zero
    /* 9F23C 800AEA3C 0200422C */  sltiu      $v0, $v0, 0x2
    /* 9F240 800AEA40 09004014 */  bnez       $v0, .L800AEA68
    /* 9F244 800AEA44 1800BFAF */   sw        $ra, 0x18($sp)
    /* 9F248 800AEA48 0180043C */  lui        $a0, %hi(D_80014F90)
    /* 9F24C 800AEA4C 904F8424 */  addiu      $a0, $a0, %lo(D_80014F90)
    /* 9F250 800AEA50 21280002 */  addu       $a1, $s0, $zero
    /* 9F254 800AEA54 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9F258 800AEA58 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9F25C 800AEA5C 00000000 */  nop
    /* 9F260 800AEA60 09F84000 */  jalr       $v0
    /* 9F264 800AEA64 21302002 */   addu      $a2, $s1, $zero
  .L800AEA68:
    /* 9F268 800AEA68 0D80023C */  lui        $v0, %hi(D_800CEABC)
    /* 9F26C 800AEA6C BCEA428C */  lw         $v0, %lo(D_800CEABC)($v0)
    /* 9F270 800AEA70 21200002 */  addu       $a0, $s0, $zero
    /* 9F274 800AEA74 2C00428C */  lw         $v0, 0x2C($v0)
    /* 9F278 800AEA78 00000000 */  nop
    /* 9F27C 800AEA7C 09F84000 */  jalr       $v0
    /* 9F280 800AEA80 21282002 */   addu      $a1, $s1, $zero
    /* 9F284 800AEA84 FF00063C */  lui        $a2, (0xFFFFFF >> 16)
    /* 9F288 800AEA88 FFFFC634 */  ori        $a2, $a2, (0xFFFFFF & 0xFFFF)
    /* 9F28C 800AEA8C 21100002 */  addu       $v0, $s0, $zero
    /* 9F290 800AEA90 0D80053C */  lui        $a1, %hi(D_800CEB84)
    /* 9F294 800AEA94 84EBA524 */  addiu      $a1, $a1, %lo(D_800CEB84)
    /* 9F298 800AEA98 0D80033C */  lui        $v1, %hi(D_800CEB70)
    /* 9F29C 800AEA9C 70EB6324 */  addiu      $v1, $v1, %lo(D_800CEB70)
    /* 9F2A0 800AEAA0 24186600 */  and        $v1, $v1, $a2
    /* 9F2A4 800AEAA4 0004043C */  lui        $a0, (0x4000000 >> 16)
    /* 9F2A8 800AEAA8 25186400 */  or         $v1, $v1, $a0
    /* 9F2AC 800AEAAC 0000A3AC */  sw         $v1, 0x0($a1)
    /* 9F2B0 800AEAB0 2428A600 */  and        $a1, $a1, $a2
    /* 9F2B4 800AEAB4 000045AC */  sw         $a1, 0x0($v0)
    /* 9F2B8 800AEAB8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9F2BC 800AEABC 1400B18F */  lw         $s1, 0x14($sp)
    /* 9F2C0 800AEAC0 1000B08F */  lw         $s0, 0x10($sp)
    /* 9F2C4 800AEAC4 0800E003 */  jr         $ra
    /* 9F2C8 800AEAC8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800AEA20
