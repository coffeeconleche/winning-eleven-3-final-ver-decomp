nonmatching func_80193EA0, 0x78

glabel func_80193EA0
    /* AF28 80193EA0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* AF2C 80193EA4 1400B1AF */  sw         $s1, 0x14($sp)
    /* AF30 80193EA8 21880000 */  addu       $s1, $zero, $zero
    /* AF34 80193EAC 1800B2AF */  sw         $s2, 0x18($sp)
    /* AF38 80193EB0 5B001224 */  addiu      $s2, $zero, 0x5B
    /* AF3C 80193EB4 1000B0AF */  sw         $s0, 0x10($sp)
    /* AF40 80193EB8 21800000 */  addu       $s0, $zero, $zero
    /* AF44 80193EBC 1C00BFAF */  sw         $ra, 0x1C($sp)
  .L80193EC0:
    /* AF48 80193EC0 0174000C */  jal        func_8001D004
    /* AF4C 80193EC4 02500424 */   addiu     $a0, $zero, 0x5002
    /* AF50 80193EC8 03500424 */  addiu      $a0, $zero, 0x5003
    /* AF54 80193ECC 21100202 */  addu       $v0, $s0, $v0
    /* AF58 80193ED0 0174000C */  jal        func_8001D004
    /* AF5C 80193ED4 0A0052A0 */   sb        $s2, 0xA($v0)
    /* AF60 80193ED8 21100202 */  addu       $v0, $s0, $v0
    /* AF64 80193EDC 0A0052A0 */  sb         $s2, 0xA($v0)
    /* AF68 80193EE0 1D80013C */  lui        $at, %hi(D_801D7DA0)
    /* AF6C 80193EE4 21083100 */  addu       $at, $at, $s1
    /* AF70 80193EE8 A07D20A0 */  sb         $zero, %lo(D_801D7DA0)($at)
    /* AF74 80193EEC 01003126 */  addiu      $s1, $s1, 0x1
    /* AF78 80193EF0 0500222A */  slti       $v0, $s1, 0x5
    /* AF7C 80193EF4 F2FF4014 */  bnez       $v0, .L80193EC0
    /* AF80 80193EF8 0C001026 */   addiu     $s0, $s0, 0xC
    /* AF84 80193EFC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* AF88 80193F00 1800B28F */  lw         $s2, 0x18($sp)
    /* AF8C 80193F04 1400B18F */  lw         $s1, 0x14($sp)
    /* AF90 80193F08 1000B08F */  lw         $s0, 0x10($sp)
    /* AF94 80193F0C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* AF98 80193F10 0800E003 */  jr         $ra
    /* AF9C 80193F14 00000000 */   nop
endlabel func_80193EA0
