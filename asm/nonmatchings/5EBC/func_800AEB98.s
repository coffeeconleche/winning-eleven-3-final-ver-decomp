nonmatching func_800AEB98, 0xC0

glabel func_800AEB98
    /* 9F398 800AEB98 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9F39C 800AEB9C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9F3A0 800AEBA0 0D80123C */  lui        $s2, %hi(D_800CEAC6)
    /* 9F3A4 800AEBA4 C6EA5226 */  addiu      $s2, $s2, %lo(D_800CEAC6)
    /* 9F3A8 800AEBA8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 9F3AC 800AEBAC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9F3B0 800AEBB0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9F3B4 800AEBB4 00004292 */  lbu        $v0, 0x0($s2)
    /* 9F3B8 800AEBB8 00000000 */  nop
    /* 9F3BC 800AEBBC 0200422C */  sltiu      $v0, $v0, 0x2
    /* 9F3C0 800AEBC0 08004014 */  bnez       $v0, .L800AEBE4
    /* 9F3C4 800AEBC4 21888000 */   addu      $s1, $a0, $zero
    /* 9F3C8 800AEBC8 0180043C */  lui        $a0, %hi(D_80014FBC)
    /* 9F3CC 800AEBCC BC4F8424 */  addiu      $a0, $a0, %lo(D_80014FBC)
    /* 9F3D0 800AEBD0 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9F3D4 800AEBD4 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9F3D8 800AEBD8 00000000 */  nop
    /* 9F3DC 800AEBDC 09F84000 */  jalr       $v0
    /* 9F3E0 800AEBE0 21282002 */   addu      $a1, $s1, $zero
  .L800AEBE4:
    /* 9F3E4 800AEBE4 1C003026 */  addiu      $s0, $s1, 0x1C
    /* 9F3E8 800AEBE8 21200002 */  addu       $a0, $s0, $zero
    /* 9F3EC 800AEBEC 64BD020C */  jal        func_800AF590
    /* 9F3F0 800AEBF0 21282002 */   addu      $a1, $s1, $zero
    /* 9F3F4 800AEBF4 FF00043C */  lui        $a0, (0xFFFFFF >> 16)
    /* 9F3F8 800AEBF8 FFFF8434 */  ori        $a0, $a0, (0xFFFFFF & 0xFFFF)
    /* 9F3FC 800AEBFC 21280002 */  addu       $a1, $s0, $zero
    /* 9F400 800AEC00 40000624 */  addiu      $a2, $zero, 0x40
    /* 9F404 800AEC04 1C00228E */  lw         $v0, 0x1C($s1)
    /* 9F408 800AEC08 0D80033C */  lui        $v1, %hi(D_800CEABC)
    /* 9F40C 800AEC0C BCEA638C */  lw         $v1, %lo(D_800CEABC)($v1)
    /* 9F410 800AEC10 25104400 */  or         $v0, $v0, $a0
    /* 9F414 800AEC14 1C0022AE */  sw         $v0, 0x1C($s1)
    /* 9F418 800AEC18 1800648C */  lw         $a0, 0x18($v1)
    /* 9F41C 800AEC1C 0800628C */  lw         $v0, 0x8($v1)
    /* 9F420 800AEC20 00000000 */  nop
    /* 9F424 800AEC24 09F84000 */  jalr       $v0
    /* 9F428 800AEC28 21380000 */   addu      $a3, $zero, $zero
    /* 9F42C 800AEC2C 0E004426 */  addiu      $a0, $s2, 0xE
    /* 9F430 800AEC30 21282002 */  addu       $a1, $s1, $zero
    /* 9F434 800AEC34 46C4020C */  jal        func_800B1118
    /* 9F438 800AEC38 5C000624 */   addiu     $a2, $zero, 0x5C
    /* 9F43C 800AEC3C 21102002 */  addu       $v0, $s1, $zero
    /* 9F440 800AEC40 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 9F444 800AEC44 1800B28F */  lw         $s2, 0x18($sp)
    /* 9F448 800AEC48 1400B18F */  lw         $s1, 0x14($sp)
    /* 9F44C 800AEC4C 1000B08F */  lw         $s0, 0x10($sp)
    /* 9F450 800AEC50 0800E003 */  jr         $ra
    /* 9F454 800AEC54 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800AEB98
