nonmatching func_800BBB68, 0x98

glabel func_800BBB68
    /* AC368 800BBB68 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* AC36C 800BBB6C 1800B2AF */  sw         $s2, 0x18($sp)
    /* AC370 800BBB70 00940400 */  sll        $s2, $a0, 16
    /* AC374 800BBB74 1180023C */  lui        $v0, %hi(D_8010C2A8)
    /* AC378 800BBB78 A8C24224 */  addiu      $v0, $v0, %lo(D_8010C2A8)
    /* AC37C 800BBB7C 83931200 */  sra        $s2, $s2, 14
    /* AC380 800BBB80 21904202 */  addu       $s2, $s2, $v0
    /* AC384 800BBB84 00140500 */  sll        $v0, $a1, 16
    /* AC388 800BBB88 03140200 */  sra        $v0, $v0, 16
    /* AC38C 800BBB8C 1000B0AF */  sw         $s0, 0x10($sp)
    /* AC390 800BBB90 40800200 */  sll        $s0, $v0, 1
    /* AC394 800BBB94 21800202 */  addu       $s0, $s0, $v0
    /* AC398 800BBB98 80801000 */  sll        $s0, $s0, 2
    /* AC39C 800BBB9C 23800202 */  subu       $s0, $s0, $v0
    /* AC3A0 800BBBA0 00811000 */  sll        $s0, $s0, 4
    /* AC3A4 800BBBA4 002A0500 */  sll        $a1, $a1, 8
    /* AC3A8 800BBBA8 25208500 */  or         $a0, $a0, $a1
    /* AC3AC 800BBBAC 00240400 */  sll        $a0, $a0, 16
    /* AC3B0 800BBBB0 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* AC3B4 800BBBB4 1400B1AF */  sw         $s1, 0x14($sp)
    /* AC3B8 800BBBB8 0000518E */  lw         $s1, 0x0($s2)
    /* AC3BC 800BBBBC 03240400 */  sra        $a0, $a0, 16
    /* AC3C0 800BBBC0 4C02030C */  jal        func_800C0930
    /* AC3C4 800BBBC4 21883002 */   addu      $s1, $s1, $s0
    /* AC3C8 800BBBC8 140020A2 */  sb         $zero, 0x14($s1)
    /* AC3CC 800BBBCC 0000428E */  lw         $v0, 0x0($s2)
    /* AC3D0 800BBBD0 00000000 */  nop
    /* AC3D4 800BBBD4 21800202 */  addu       $s0, $s0, $v0
    /* AC3D8 800BBBD8 9800028E */  lw         $v0, 0x98($s0)
    /* AC3DC 800BBBDC FDFF0324 */  addiu      $v1, $zero, -0x3
    /* AC3E0 800BBBE0 24104300 */  and        $v0, $v0, $v1
    /* AC3E4 800BBBE4 980002AE */  sw         $v0, 0x98($s0)
    /* AC3E8 800BBBE8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* AC3EC 800BBBEC 1800B28F */  lw         $s2, 0x18($sp)
    /* AC3F0 800BBBF0 1400B18F */  lw         $s1, 0x14($sp)
    /* AC3F4 800BBBF4 1000B08F */  lw         $s0, 0x10($sp)
    /* AC3F8 800BBBF8 0800E003 */  jr         $ra
    /* AC3FC 800BBBFC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800BBB68
    /* AC400 800BBC00 00000000 */  nop
    /* AC404 800BBC04 00000000 */  nop
