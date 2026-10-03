nonmatching func_800BCA78, 0x180

glabel func_800BCA78
    /* AD278 800BCA78 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AD27C 800BCA7C 00440400 */  sll        $t0, $a0, 16
    /* AD280 800BCA80 1180023C */  lui        $v0, %hi(D_8010C2A8)
    /* AD284 800BCA84 A8C24224 */  addiu      $v0, $v0, %lo(D_8010C2A8)
    /* AD288 800BCA88 83430800 */  sra        $t0, $t0, 14
    /* AD28C 800BCA8C 21400201 */  addu       $t0, $t0, $v0
    /* AD290 800BCA90 00140500 */  sll        $v0, $a1, 16
    /* AD294 800BCA94 03140200 */  sra        $v0, $v0, 16
    /* AD298 800BCA98 40180200 */  sll        $v1, $v0, 1
    /* AD29C 800BCA9C 21186200 */  addu       $v1, $v1, $v0
    /* AD2A0 800BCAA0 80180300 */  sll        $v1, $v1, 2
    /* AD2A4 800BCAA4 23186200 */  subu       $v1, $v1, $v0
    /* AD2A8 800BCAA8 1400BFAF */  sw         $ra, 0x14($sp)
    /* AD2AC 800BCAAC 1000B0AF */  sw         $s0, 0x10($sp)
    /* AD2B0 800BCAB0 0000028D */  lw         $v0, 0x0($t0)
    /* AD2B4 800BCAB4 00190300 */  sll        $v1, $v1, 4
    /* AD2B8 800BCAB8 21804300 */  addu       $s0, $v0, $v1
    /* AD2BC 800BCABC 9800028E */  lw         $v0, 0x98($s0)
    /* AD2C0 800BCAC0 FEFF0624 */  addiu      $a2, $zero, -0x2
    /* AD2C4 800BCAC4 24104600 */  and        $v0, $v0, $a2
    /* AD2C8 800BCAC8 980002AE */  sw         $v0, 0x98($s0)
    /* AD2CC 800BCACC 0000068D */  lw         $a2, 0x0($t0)
    /* AD2D0 800BCAD0 00000000 */  nop
    /* AD2D4 800BCAD4 21306600 */  addu       $a2, $v1, $a2
    /* AD2D8 800BCAD8 9800C28C */  lw         $v0, 0x98($a2)
    /* AD2DC 800BCADC FDFF0724 */  addiu      $a3, $zero, -0x3
    /* AD2E0 800BCAE0 24104700 */  and        $v0, $v0, $a3
    /* AD2E4 800BCAE4 9800C2AC */  sw         $v0, 0x98($a2)
    /* AD2E8 800BCAE8 0000068D */  lw         $a2, 0x0($t0)
    /* AD2EC 800BCAEC 002A0500 */  sll        $a1, $a1, 8
    /* AD2F0 800BCAF0 21306600 */  addu       $a2, $v1, $a2
    /* AD2F4 800BCAF4 9800C28C */  lw         $v0, 0x98($a2)
    /* AD2F8 800BCAF8 F7FF0724 */  addiu      $a3, $zero, -0x9
    /* AD2FC 800BCAFC 24104700 */  and        $v0, $v0, $a3
    /* AD300 800BCB00 9800C2AC */  sw         $v0, 0x98($a2)
    /* AD304 800BCB04 0000068D */  lw         $a2, 0x0($t0)
    /* AD308 800BCB08 25208500 */  or         $a0, $a0, $a1
    /* AD30C 800BCB0C 21306600 */  addu       $a2, $v1, $a2
    /* AD310 800BCB10 9800C28C */  lw         $v0, 0x98($a2)
    /* AD314 800BCB14 FFFB0724 */  addiu      $a3, $zero, -0x401
    /* AD318 800BCB18 24104700 */  and        $v0, $v0, $a3
    /* AD31C 800BCB1C 9800C2AC */  sw         $v0, 0x98($a2)
    /* AD320 800BCB20 0000028D */  lw         $v0, 0x0($t0)
    /* AD324 800BCB24 00240400 */  sll        $a0, $a0, 16
    /* AD328 800BCB28 21186200 */  addu       $v1, $v1, $v0
    /* AD32C 800BCB2C 9800628C */  lw         $v0, 0x98($v1)
    /* AD330 800BCB30 03240400 */  sra        $a0, $a0, 16
    /* AD334 800BCB34 04004234 */  ori        $v0, $v0, 0x4
    /* AD338 800BCB38 4C02030C */  jal        func_800C0930
    /* AD33C 800BCB3C 980062AC */   sw        $v0, 0x98($v1)
    /* AD340 800BCB40 26F9020C */  jal        func_800BE498
    /* AD344 800BCB44 00000000 */   nop
    /* AD348 800BCB48 21380000 */  addu       $a3, $zero, $zero
    /* AD34C 800BCB4C 40000A24 */  addiu      $t2, $zero, 0x40
    /* AD350 800BCB50 7F000924 */  addiu      $t1, $zero, 0x7F
    /* AD354 800BCB54 8400028E */  lw         $v0, 0x84($s0)
    /* AD358 800BCB58 8C00038E */  lw         $v1, 0x8C($s0)
    /* AD35C 800BCB5C 56000496 */  lhu        $a0, 0x56($s0)
    /* AD360 800BCB60 0400058E */  lw         $a1, 0x4($s0)
    /* AD364 800BCB64 0400068E */  lw         $a2, 0x4($s0)
    /* AD368 800BCB68 21400002 */  addu       $t0, $s0, $zero
    /* AD36C 800BCB6C 140000A2 */  sb         $zero, 0x14($s0)
    /* AD370 800BCB70 880000AE */  sw         $zero, 0x88($s0)
    /* AD374 800BCB74 1C0000A2 */  sb         $zero, 0x1C($s0)
    /* AD378 800BCB78 180000A2 */  sb         $zero, 0x18($s0)
    /* AD37C 800BCB7C 190000A2 */  sb         $zero, 0x19($s0)
    /* AD380 800BCB80 1E0000A2 */  sb         $zero, 0x1E($s0)
    /* AD384 800BCB84 1A0000A2 */  sb         $zero, 0x1A($s0)
    /* AD388 800BCB88 1B0000A2 */  sb         $zero, 0x1B($s0)
    /* AD38C 800BCB8C 1F0000A2 */  sb         $zero, 0x1F($s0)
    /* AD390 800BCB90 170000A2 */  sb         $zero, 0x17($s0)
    /* AD394 800BCB94 210000A2 */  sb         $zero, 0x21($s0)
    /* AD398 800BCB98 1C0000A2 */  sb         $zero, 0x1C($s0)
    /* AD39C 800BCB9C 1D0000A2 */  sb         $zero, 0x1D($s0)
    /* AD3A0 800BCBA0 150000A2 */  sb         $zero, 0x15($s0)
    /* AD3A4 800BCBA4 160000A2 */  sb         $zero, 0x16($s0)
    /* AD3A8 800BCBA8 900002AE */  sw         $v0, 0x90($s0)
    /* AD3AC 800BCBAC 940003AE */  sw         $v1, 0x94($s0)
    /* AD3B0 800BCBB0 540004A6 */  sh         $a0, 0x54($s0)
    /* AD3B4 800BCBB4 000005AE */  sw         $a1, 0x0($s0)
    /* AD3B8 800BCBB8 080006AE */  sw         $a2, 0x8($s0)
  .L800BCBBC:
    /* AD3BC 800BCBBC 21100702 */  addu       $v0, $s0, $a3
    /* AD3C0 800BCBC0 370047A0 */  sb         $a3, 0x37($v0)
    /* AD3C4 800BCBC4 27004AA0 */  sb         $t2, 0x27($v0)
    /* AD3C8 800BCBC8 600009A5 */  sh         $t1, 0x60($t0)
    /* AD3CC 800BCBCC 0100E724 */  addiu      $a3, $a3, 0x1
    /* AD3D0 800BCBD0 1000E228 */  slti       $v0, $a3, 0x10
    /* AD3D4 800BCBD4 F9FF4014 */  bnez       $v0, .L800BCBBC
    /* AD3D8 800BCBD8 02000825 */   addiu     $t0, $t0, 0x2
    /* AD3DC 800BCBDC 7F000224 */  addiu      $v0, $zero, 0x7F
    /* AD3E0 800BCBE0 5C0002A6 */  sh         $v0, 0x5C($s0)
    /* AD3E4 800BCBE4 5E0002A6 */  sh         $v0, 0x5E($s0)
    /* AD3E8 800BCBE8 1400BF8F */  lw         $ra, 0x14($sp)
    /* AD3EC 800BCBEC 1000B08F */  lw         $s0, 0x10($sp)
    /* AD3F0 800BCBF0 0800E003 */  jr         $ra
    /* AD3F4 800BCBF4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800BCA78
