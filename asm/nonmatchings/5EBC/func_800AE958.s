nonmatching func_800AE958, 0xC8

glabel func_800AE958
    /* 9F158 800AE958 0D80023C */  lui        $v0, %hi(D_800CEAC6)
    /* 9F15C 800AE95C C6EA4290 */  lbu        $v0, %lo(D_800CEAC6)($v0)
    /* 9F160 800AE960 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9F164 800AE964 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9F168 800AE968 21808000 */  addu       $s0, $a0, $zero
    /* 9F16C 800AE96C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9F170 800AE970 2188A000 */  addu       $s1, $a1, $zero
    /* 9F174 800AE974 0200422C */  sltiu      $v0, $v0, 0x2
    /* 9F178 800AE978 08004014 */  bnez       $v0, .L800AE99C
    /* 9F17C 800AE97C 1800BFAF */   sw        $ra, 0x18($sp)
    /* 9F180 800AE980 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9F184 800AE984 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9F188 800AE988 0180043C */  lui        $a0, %hi(D_80014F78)
    /* 9F18C 800AE98C 784F8424 */  addiu      $a0, $a0, %lo(D_80014F78)
    /* 9F190 800AE990 21280002 */  addu       $a1, $s0, $zero
    /* 9F194 800AE994 09F84000 */  jalr       $v0
    /* 9F198 800AE998 21302002 */   addu      $a2, $s1, $zero
  .L800AE99C:
    /* 9F19C 800AE99C FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 9F1A0 800AE9A0 0D002012 */  beqz       $s1, .L800AE9D8
    /* 9F1A4 800AE9A4 FF00053C */   lui       $a1, (0xFFFFFF >> 16)
    /* 9F1A8 800AE9A8 FFFFA534 */  ori        $a1, $a1, (0xFFFFFF & 0xFFFF)
    /* 9F1AC 800AE9AC 00FF063C */  lui        $a2, (0xFF000000 >> 16)
  .L800AE9B0:
    /* 9F1B0 800AE9B0 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 9F1B4 800AE9B4 04000426 */  addiu      $a0, $s0, 0x4
    /* 9F1B8 800AE9B8 030000A2 */  sb         $zero, 0x3($s0)
    /* 9F1BC 800AE9BC 0000028E */  lw         $v0, 0x0($s0)
    /* 9F1C0 800AE9C0 24188500 */  and        $v1, $a0, $a1
    /* 9F1C4 800AE9C4 24104600 */  and        $v0, $v0, $a2
    /* 9F1C8 800AE9C8 25104300 */  or         $v0, $v0, $v1
    /* 9F1CC 800AE9CC 000002AE */  sw         $v0, 0x0($s0)
    /* 9F1D0 800AE9D0 F7FF2016 */  bnez       $s1, .L800AE9B0
    /* 9F1D4 800AE9D4 21808000 */   addu      $s0, $a0, $zero
  .L800AE9D8:
    /* 9F1D8 800AE9D8 FF00063C */  lui        $a2, (0xFFFFFF >> 16)
    /* 9F1DC 800AE9DC FFFFC634 */  ori        $a2, $a2, (0xFFFFFF & 0xFFFF)
    /* 9F1E0 800AE9E0 21100002 */  addu       $v0, $s0, $zero
    /* 9F1E4 800AE9E4 0D80053C */  lui        $a1, %hi(D_800CEB84)
    /* 9F1E8 800AE9E8 84EBA524 */  addiu      $a1, $a1, %lo(D_800CEB84)
    /* 9F1EC 800AE9EC 0D80033C */  lui        $v1, %hi(D_800CEB70)
    /* 9F1F0 800AE9F0 70EB6324 */  addiu      $v1, $v1, %lo(D_800CEB70)
    /* 9F1F4 800AE9F4 24186600 */  and        $v1, $v1, $a2
    /* 9F1F8 800AE9F8 0004043C */  lui        $a0, (0x4000000 >> 16)
    /* 9F1FC 800AE9FC 25186400 */  or         $v1, $v1, $a0
    /* 9F200 800AEA00 0000A3AC */  sw         $v1, 0x0($a1)
    /* 9F204 800AEA04 2428A600 */  and        $a1, $a1, $a2
    /* 9F208 800AEA08 000045AC */  sw         $a1, 0x0($v0)
    /* 9F20C 800AEA0C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9F210 800AEA10 1400B18F */  lw         $s1, 0x14($sp)
    /* 9F214 800AEA14 1000B08F */  lw         $s0, 0x10($sp)
    /* 9F218 800AEA18 0800E003 */  jr         $ra
    /* 9F21C 800AEA1C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800AE958
