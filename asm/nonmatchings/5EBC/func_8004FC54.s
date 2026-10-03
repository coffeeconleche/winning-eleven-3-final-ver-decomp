nonmatching func_8004FC54, 0x8C

glabel func_8004FC54
    /* 40454 8004FC54 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 40458 8004FC58 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4045C 8004FC5C 21888000 */  addu       $s1, $a0, $zero
    /* 40460 8004FC60 1000B0AF */  sw         $s0, 0x10($sp)
    /* 40464 8004FC64 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 40468 8004FC68 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 4046C 8004FC6C 21180002 */  addu       $v1, $s0, $zero
    /* 40470 8004FC70 17000224 */  addiu      $v0, $zero, 0x17
    /* 40474 8004FC74 1800BFAF */  sw         $ra, 0x18($sp)
  .L8004FC78:
    /* 40478 8004FC78 000060A0 */  sb         $zero, 0x0($v1)
    /* 4047C 8004FC7C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 40480 8004FC80 FDFF4104 */  bgez       $v0, .L8004FC78
    /* 40484 8004FC84 E8036324 */   addiu     $v1, $v1, 0x3E8
    /* 40488 8004FC88 383F010C */  jal        func_8004FCE0
    /* 4048C 8004FC8C 00000000 */   nop
    /* 40490 8004FC90 453F010C */  jal        func_8004FD14
    /* 40494 8004FC94 FF002432 */   andi      $a0, $s1, 0xFF
    /* 40498 8004FC98 FF7F0224 */  addiu      $v0, $zero, 0x7FFF
    /* 4049C 8004FC9C 346600A2 */  sb         $zero, 0x6634($s0)
    /* 404A0 8004FCA0 5C6600A2 */  sb         $zero, 0x665C($s0)
    /* 404A4 8004FCA4 846600A2 */  sb         $zero, 0x6684($s0)
    /* 404A8 8004FCA8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 404AC 8004FCAC 21080102 */  addu       $at, $s0, $at
    /* 404B0 8004FCB0 21AC20A0 */  sb         $zero, -0x53DF($at)
    /* 404B4 8004FCB4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 404B8 8004FCB8 21080102 */  addu       $at, $s0, $at
    /* 404BC 8004FCBC 20AC20A0 */  sb         $zero, -0x53E0($at)
    /* 404C0 8004FCC0 801F013C */  lui        $at, (0x1F8002B8 >> 16)
    /* 404C4 8004FCC4 B80222A4 */  sh         $v0, (0x1F8002B8 & 0xFFFF)($at)
    /* 404C8 8004FCC8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 404CC 8004FCCC 1400B18F */  lw         $s1, 0x14($sp)
    /* 404D0 8004FCD0 1000B08F */  lw         $s0, 0x10($sp)
    /* 404D4 8004FCD4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 404D8 8004FCD8 0800E003 */  jr         $ra
    /* 404DC 8004FCDC 00000000 */   nop
endlabel func_8004FC54
