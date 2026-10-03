nonmatching func_801929B4, 0x7C

glabel func_801929B4
    /* 9A3C 801929B4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9A40 801929B8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9A44 801929BC 21808000 */  addu       $s0, $a0, $zero
    /* 9A48 801929C0 1080043C */  lui        $a0, %hi(D_800FB568)
    /* 9A4C 801929C4 68B5848C */  lw         $a0, %lo(D_800FB568)($a0)
    /* 9A50 801929C8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 9A54 801929CC 92B3020C */  jal        func_800ACE48
    /* 9A58 801929D0 00000000 */   nop
    /* 9A5C 801929D4 1080043C */  lui        $a0, %hi(D_800FB56C)
    /* 9A60 801929D8 6CB5848C */  lw         $a0, %lo(D_800FB56C)($a0)
    /* 9A64 801929DC 92B3020C */  jal        func_800ACE48
    /* 9A68 801929E0 00000000 */   nop
    /* 9A6C 801929E4 1080043C */  lui        $a0, %hi(D_800FB570)
    /* 9A70 801929E8 70B5848C */  lw         $a0, %lo(D_800FB570)($a0)
    /* 9A74 801929EC 92B3020C */  jal        func_800ACE48
    /* 9A78 801929F0 00000000 */   nop
    /* 9A7C 801929F4 1080043C */  lui        $a0, %hi(D_800FB574)
    /* 9A80 801929F8 74B5848C */  lw         $a0, %lo(D_800FB574)($a0)
    /* 9A84 801929FC 92B3020C */  jal        func_800ACE48
    /* 9A88 80192A00 00000000 */   nop
  .L80192A04:
    /* 9A8C 80192A04 4E16030C */  jal        func_800C5938
    /* 9A90 80192A08 00211000 */   sll       $a0, $s0, 4
    /* 9A94 80192A0C FDFF4010 */  beqz       $v0, .L80192A04
    /* 9A98 80192A10 00000000 */   nop
    /* 9A9C 80192A14 1E80013C */  lui        $at, %hi(D_801D8A78)
    /* 9AA0 80192A18 788A20AC */  sw         $zero, %lo(D_801D8A78)($at)
    /* 9AA4 80192A1C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9AA8 80192A20 1000B08F */  lw         $s0, 0x10($sp)
    /* 9AAC 80192A24 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9AB0 80192A28 0800E003 */  jr         $ra
    /* 9AB4 80192A2C 00000000 */   nop
endlabel func_801929B4
