nonmatching func_800AAA10, 0x6C

glabel func_800AAA10
    /* 9B210 800AAA10 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9B214 800AAA14 0F80043C */  lui        $a0, %hi(D_800F0F2C)
    /* 9B218 800AAA18 2C0F8424 */  addiu      $a0, $a0, %lo(D_800F0F2C)
    /* 9B21C 800AAA1C 03000234 */  ori        $v0, $zero, 0x3
    /* 9B220 800AAA20 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9B224 800AAA24 000082AC */  sw         $v0, 0x0($a0)
    /* 9B228 800AAA28 9E008297 */  lhu        $v0, %gp_rel(D_800E6B2A)($gp)
    /* 9B22C 800AAA2C 4000033C */  lui        $v1, (0x400000 >> 16)
    /* 9B230 800AAA30 FCFF83AC */  sw         $v1, -0x4($a0)
    /* 9B234 800AAA34 E0FC4224 */  addiu      $v0, $v0, -0x320
    /* 9B238 800AAA38 9E0082A7 */  sh         $v0, %gp_rel(D_800E6B2A)($gp)
    /* 9B23C 800AAA3C 00140200 */  sll        $v0, $v0, 16
    /* 9B240 800AAA40 02004104 */  bgez       $v0, .L800AAA4C
    /* 9B244 800AAA44 FCFF8424 */   addiu     $a0, $a0, -0x4
    /* 9B248 800AAA48 9E0080A7 */  sh         $zero, %gp_rel(D_800E6B2A)($gp)
  .L800AAA4C:
    /* 9B24C 800AAA4C 9E008297 */  lhu        $v0, %gp_rel(D_800E6B2A)($gp)
    /* 9B250 800AAA50 00000000 */  nop
    /* 9B254 800AAA54 0F80013C */  lui        $at, %hi(D_800F0F30)
    /* 9B258 800AAA58 300F22A4 */  sh         $v0, %lo(D_800F0F30)($at)
    /* 9B25C 800AAA5C 0F80013C */  lui        $at, %hi(D_800F0F32)
    /* 9B260 800AAA60 320F22A4 */  sh         $v0, %lo(D_800F0F32)($at)
    /* 9B264 800AAA64 2A11030C */  jal        func_800C44A8
    /* 9B268 800AAA68 00000000 */   nop
    /* 9B26C 800AAA6C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9B270 800AAA70 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9B274 800AAA74 0800E003 */  jr         $ra
    /* 9B278 800AAA78 00000000 */   nop
endlabel func_800AAA10
