nonmatching func_800BF364, 0xEC

glabel func_800BF364
    /* AFB64 800BF364 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* AFB68 800BF368 2138C000 */  addu       $a3, $a2, $zero
    /* AFB6C 800BF36C 3000A68F */  lw         $a2, 0x30($sp)
    /* AFB70 800BF370 3400A88F */  lw         $t0, 0x34($sp)
    /* AFB74 800BF374 2148A000 */  addu       $t1, $a1, $zero
    /* AFB78 800BF378 FFFFC530 */  andi       $a1, $a2, 0xFFFF
    /* AFB7C 800BF37C FFFF0331 */  andi       $v1, $t0, 0xFFFF
    /* AFB80 800BF380 0400A314 */  bne        $a1, $v1, .L800BF394
    /* AFB84 800BF384 1800BFAF */   sw        $ra, 0x18($sp)
    /* AFB88 800BF388 40000324 */  addiu      $v1, $zero, 0x40
    /* AFB8C 800BF38C 05FD0208 */  j          .L800BF414
    /* AFB90 800BF390 2128C000 */   addu      $a1, $a2, $zero
  .L800BF394:
    /* AFB94 800BF394 2B106500 */  sltu       $v0, $v1, $a1
    /* AFB98 800BF398 0F004010 */  beqz       $v0, .L800BF3D8
    /* AFB9C 800BF39C 80110300 */   sll       $v0, $v1, 6
    /* AFBA0 800BF3A0 1A004500 */  div        $zero, $v0, $a1
    /* AFBA4 800BF3A4 0200A014 */  bnez       $a1, .L800BF3B0
    /* AFBA8 800BF3A8 00000000 */   nop
    /* AFBAC 800BF3AC 0D000700 */  break      7
  .L800BF3B0:
    /* AFBB0 800BF3B0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* AFBB4 800BF3B4 0400A114 */  bne        $a1, $at, .L800BF3C8
    /* AFBB8 800BF3B8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* AFBBC 800BF3BC 02004114 */  bne        $v0, $at, .L800BF3C8
    /* AFBC0 800BF3C0 00000000 */   nop
    /* AFBC4 800BF3C4 0D000600 */  break      6
  .L800BF3C8:
    /* AFBC8 800BF3C8 12100000 */  mflo       $v0
    /* AFBCC 800BF3CC 2128C000 */  addu       $a1, $a2, $zero
    /* AFBD0 800BF3D0 05FD0208 */  j          .L800BF414
    /* AFBD4 800BF3D4 21184000 */   addu      $v1, $v0, $zero
  .L800BF3D8:
    /* AFBD8 800BF3D8 80110500 */  sll        $v0, $a1, 6
    /* AFBDC 800BF3DC 1A004300 */  div        $zero, $v0, $v1
    /* AFBE0 800BF3E0 02006014 */  bnez       $v1, .L800BF3EC
    /* AFBE4 800BF3E4 00000000 */   nop
    /* AFBE8 800BF3E8 0D000700 */  break      7
  .L800BF3EC:
    /* AFBEC 800BF3EC FFFF0124 */  addiu      $at, $zero, -0x1
    /* AFBF0 800BF3F0 04006114 */  bne        $v1, $at, .L800BF404
    /* AFBF4 800BF3F4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* AFBF8 800BF3F8 02004114 */  bne        $v0, $at, .L800BF404
    /* AFBFC 800BF3FC 00000000 */   nop
    /* AFC00 800BF400 0D000600 */  break      6
  .L800BF404:
    /* AFC04 800BF404 12100000 */  mflo       $v0
    /* AFC08 800BF408 21280001 */  addu       $a1, $t0, $zero
    /* AFC0C 800BF40C 7F000324 */  addiu      $v1, $zero, 0x7F
    /* AFC10 800BF410 23186200 */  subu       $v1, $v1, $v0
  .L800BF414:
    /* AFC14 800BF414 FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* AFC18 800BF418 1000A2AF */  sw         $v0, 0x10($sp)
    /* AFC1C 800BF41C FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* AFC20 800BF420 002C0400 */  sll        $a1, $a0, 16
    /* AFC24 800BF424 00340900 */  sll        $a2, $t1, 16
    /* AFC28 800BF428 21000424 */  addiu      $a0, $zero, 0x21
    /* AFC2C 800BF42C 032C0500 */  sra        $a1, $a1, 16
    /* AFC30 800BF430 03340600 */  sra        $a2, $a2, 16
    /* AFC34 800BF434 FFFFE730 */  andi       $a3, $a3, 0xFFFF
    /* AFC38 800BF438 22FB020C */  jal        func_800BEC88
    /* AFC3C 800BF43C 1400A2AF */   sw        $v0, 0x14($sp)
    /* AFC40 800BF440 1800BF8F */  lw         $ra, 0x18($sp)
    /* AFC44 800BF444 2000BD27 */  addiu      $sp, $sp, 0x20
    /* AFC48 800BF448 0800E003 */  jr         $ra
    /* AFC4C 800BF44C 00000000 */   nop
endlabel func_800BF364
