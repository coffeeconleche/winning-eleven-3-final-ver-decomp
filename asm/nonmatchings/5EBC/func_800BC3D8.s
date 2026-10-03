nonmatching func_800BC3D8, 0xFC

glabel func_800BC3D8
    /* ACBD8 800BC3D8 00240400 */  sll        $a0, $a0, 16
    /* ACBDC 800BC3DC 1180023C */  lui        $v0, %hi(D_8010C2A8)
    /* ACBE0 800BC3E0 A8C24224 */  addiu      $v0, $v0, %lo(D_8010C2A8)
    /* ACBE4 800BC3E4 83230400 */  sra        $a0, $a0, 14
    /* ACBE8 800BC3E8 21208200 */  addu       $a0, $a0, $v0
    /* ACBEC 800BC3EC 002C0500 */  sll        $a1, $a1, 16
    /* ACBF0 800BC3F0 032C0500 */  sra        $a1, $a1, 16
    /* ACBF4 800BC3F4 40300500 */  sll        $a2, $a1, 1
    /* ACBF8 800BC3F8 2130C500 */  addu       $a2, $a2, $a1
    /* ACBFC 800BC3FC 80300600 */  sll        $a2, $a2, 2
    /* ACC00 800BC400 2330C500 */  subu       $a2, $a2, $a1
    /* ACC04 800BC404 00310600 */  sll        $a2, $a2, 4
    /* ACC08 800BC408 0000878C */  lw         $a3, 0x0($a0)
    /* ACC0C 800BC40C 01000824 */  addiu      $t0, $zero, 0x1
    /* ACC10 800BC410 2138E600 */  addu       $a3, $a3, $a2
    /* ACC14 800BC414 2000E8A0 */  sb         $t0, 0x20($a3)
    /* ACC18 800BC418 2100E0A0 */  sb         $zero, 0x21($a3)
    /* ACC1C 800BC41C 0000838C */  lw         $v1, 0x0($a0)
    /* ACC20 800BC420 00000000 */  nop
    /* ACC24 800BC424 2118C300 */  addu       $v1, $a2, $v1
    /* ACC28 800BC428 9800628C */  lw         $v0, 0x98($v1)
    /* ACC2C 800BC42C FFFE0524 */  addiu      $a1, $zero, -0x101
    /* ACC30 800BC430 24104500 */  and        $v0, $v0, $a1
    /* ACC34 800BC434 980062AC */  sw         $v0, 0x98($v1)
    /* ACC38 800BC438 0000838C */  lw         $v1, 0x0($a0)
    /* ACC3C 800BC43C 00000000 */  nop
    /* ACC40 800BC440 2118C300 */  addu       $v1, $a2, $v1
    /* ACC44 800BC444 9800628C */  lw         $v0, 0x98($v1)
    /* ACC48 800BC448 F7FF0524 */  addiu      $a1, $zero, -0x9
    /* ACC4C 800BC44C 24104500 */  and        $v0, $v0, $a1
    /* ACC50 800BC450 980062AC */  sw         $v0, 0x98($v1)
    /* ACC54 800BC454 0000838C */  lw         $v1, 0x0($a0)
    /* ACC58 800BC458 00000000 */  nop
    /* ACC5C 800BC45C 2118C300 */  addu       $v1, $a2, $v1
    /* ACC60 800BC460 9800628C */  lw         $v0, 0x98($v1)
    /* ACC64 800BC464 FDFF0524 */  addiu      $a1, $zero, -0x3
    /* ACC68 800BC468 24104500 */  and        $v0, $v0, $a1
    /* ACC6C 800BC46C 980062AC */  sw         $v0, 0x98($v1)
    /* ACC70 800BC470 0000838C */  lw         $v1, 0x0($a0)
    /* ACC74 800BC474 00000000 */  nop
    /* ACC78 800BC478 2118C300 */  addu       $v1, $a2, $v1
    /* ACC7C 800BC47C 9800628C */  lw         $v0, 0x98($v1)
    /* ACC80 800BC480 FBFF0524 */  addiu      $a1, $zero, -0x5
    /* ACC84 800BC484 24104500 */  and        $v0, $v0, $a1
    /* ACC88 800BC488 980062AC */  sw         $v0, 0x98($v1)
    /* ACC8C 800BC48C 0000838C */  lw         $v1, 0x0($a0)
    /* ACC90 800BC490 00000000 */  nop
    /* ACC94 800BC494 2118C300 */  addu       $v1, $a2, $v1
    /* ACC98 800BC498 9800628C */  lw         $v0, 0x98($v1)
    /* ACC9C 800BC49C FFFD0524 */  addiu      $a1, $zero, -0x201
    /* ACCA0 800BC4A0 24104500 */  and        $v0, $v0, $a1
    /* ACCA4 800BC4A4 980062AC */  sw         $v0, 0x98($v1)
    /* ACCA8 800BC4A8 0400E28C */  lw         $v0, 0x4($a3)
    /* ACCAC 800BC4AC 1400E8A0 */  sb         $t0, 0x14($a3)
    /* ACCB0 800BC4B0 0000E2AC */  sw         $v0, 0x0($a3)
    /* ACCB4 800BC4B4 0000828C */  lw         $v0, 0x0($a0)
    /* ACCB8 800BC4B8 00000000 */  nop
    /* ACCBC 800BC4BC 2130C200 */  addu       $a2, $a2, $v0
    /* ACCC0 800BC4C0 9800C28C */  lw         $v0, 0x98($a2)
    /* ACCC4 800BC4C4 00000000 */  nop
    /* ACCC8 800BC4C8 01004234 */  ori        $v0, $v0, 0x1
    /* ACCCC 800BC4CC 0800E003 */  jr         $ra
    /* ACCD0 800BC4D0 9800C2AC */   sw        $v0, 0x98($a2)
endlabel func_800BC3D8
    /* ACCD4 800BC4D4 00000000 */  nop
