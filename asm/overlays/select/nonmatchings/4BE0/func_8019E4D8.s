nonmatching func_8019E4D8, 0xA8

glabel func_8019E4D8
    /* 15560 8019E4D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 15564 8019E4DC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 15568 8019E4E0 4C8E060C */  jal        func_801A3930
    /* 1556C 8019E4E4 1000B0AF */   sw        $s0, 0x10($sp)
    /* 15570 8019E4E8 1E80023C */  lui        $v0, %hi(D_801D8DF5)
    /* 15574 8019E4EC F58D4290 */  lbu        $v0, %lo(D_801D8DF5)($v0)
    /* 15578 8019E4F0 1E80033C */  lui        $v1, %hi(D_801D8DF6)
    /* 1557C 8019E4F4 F68D6390 */  lbu        $v1, %lo(D_801D8DF6)($v1)
    /* 15580 8019E4F8 1180013C */  lui        $at, %hi(D_8010A5A9)
    /* 15584 8019E4FC A9A522A0 */  sb         $v0, %lo(D_8010A5A9)($at)
    /* 15588 8019E500 1E80023C */  lui        $v0, %hi(D_801D8DF9)
    /* 1558C 8019E504 F98D4290 */  lbu        $v0, %lo(D_801D8DF9)($v0)
    /* 15590 8019E508 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 15594 8019E50C 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 15598 8019E510 1180013C */  lui        $at, %hi(D_8010A5A8)
    /* 1559C 8019E514 A8A523A0 */  sb         $v1, %lo(D_8010A5A8)($at)
    /* 155A0 8019E518 02004014 */  bnez       $v0, .L8019E524
    /* 155A4 8019E51C C7000224 */   addiu     $v0, $zero, 0xC7
    /* 155A8 8019E520 86000224 */  addiu      $v0, $zero, 0x86
  .L8019E524:
    /* 155AC 8019E524 1180013C */  lui        $at, %hi(D_80108667)
    /* 155B0 8019E528 678622A0 */  sb         $v0, %lo(D_80108667)($at)
    /* 155B4 8019E52C 1E80023C */  lui        $v0, %hi(D_801D8DF7)
    /* 155B8 8019E530 F78D4290 */  lbu        $v0, %lo(D_801D8DF7)($v0)
    /* 155BC 8019E534 1E80033C */  lui        $v1, %hi(D_801D8DFA)
    /* 155C0 8019E538 FA8D6390 */  lbu        $v1, %lo(D_801D8DFA)($v1)
    /* 155C4 8019E53C 1E80043C */  lui        $a0, %hi(D_801D8DF4)
    /* 155C8 8019E540 F48D8490 */  lbu        $a0, %lo(D_801D8DF4)($a0)
    /* 155CC 8019E544 0100013C */  lui        $at, (0x10000 >> 16)
    /* 155D0 8019E548 21080102 */  addu       $at, $s0, $at
    /* 155D4 8019E54C 208F22A0 */  sb         $v0, -0x70E0($at)
    /* 155D8 8019E550 0100013C */  lui        $at, (0x10000 >> 16)
    /* 155DC 8019E554 21080102 */  addu       $at, $s0, $at
    /* 155E0 8019E558 218F23A0 */  sb         $v1, -0x70DF($at)
    /* 155E4 8019E55C CB8D060C */  jal        func_801A372C
    /* 155E8 8019E560 00000000 */   nop
    /* 155EC 8019E564 775C000C */  jal        func_800171DC
    /* 155F0 8019E568 00000000 */   nop
    /* 155F4 8019E56C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 155F8 8019E570 1000B08F */  lw         $s0, 0x10($sp)
    /* 155FC 8019E574 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 15600 8019E578 0800E003 */  jr         $ra
    /* 15604 8019E57C 00000000 */   nop
endlabel func_8019E4D8
