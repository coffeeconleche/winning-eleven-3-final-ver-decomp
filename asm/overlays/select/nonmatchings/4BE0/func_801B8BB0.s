nonmatching func_801B8BB0, 0xB8

glabel func_801B8BB0
    /* 2FC38 801B8BB0 1180023C */  lui        $v0, %hi(D_80108668)
    /* 2FC3C 801B8BB4 68864290 */  lbu        $v0, %lo(D_80108668)($v0)
    /* 2FC40 801B8BB8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2FC44 801B8BBC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2FC48 801B8BC0 21908000 */  addu       $s2, $a0, $zero
    /* 2FC4C 801B8BC4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2FC50 801B8BC8 2198A000 */  addu       $s3, $a1, $zero
    /* 2FC54 801B8BCC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2FC58 801B8BD0 21800000 */  addu       $s0, $zero, $zero
    /* 2FC5C 801B8BD4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2FC60 801B8BD8 1080113C */  lui        $s1, %hi(D_800FF748)
    /* 2FC64 801B8BDC 48F73126 */  addiu      $s1, $s1, %lo(D_800FF748)
    /* 2FC68 801B8BE0 2400BFAF */  sw         $ra, 0x24($sp)
    /* 2FC6C 801B8BE4 17004010 */  beqz       $v0, .L801B8C44
    /* 2FC70 801B8BE8 2000B4AF */   sw        $s4, 0x20($sp)
    /* 2FC74 801B8BEC 1980143C */  lui        $s4, %hi(D_8018B1F0)
    /* 2FC78 801B8BF0 F0B19426 */  addiu      $s4, $s4, %lo(D_8018B1F0)
    /* 2FC7C 801B8BF4 FF000332 */  andi       $v1, $s0, 0xFF
  .L801B8BF8:
    /* 2FC80 801B8BF8 01001026 */  addiu      $s0, $s0, 0x1
    /* 2FC84 801B8BFC 80180300 */  sll        $v1, $v1, 2
    /* 2FC88 801B8C00 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2FC8C 801B8C04 21082102 */  addu       $at, $s1, $at
    /* 2FC90 801B8C08 208F2290 */  lbu        $v0, -0x70E0($at)
    /* 2FC94 801B8C0C FF004532 */  andi       $a1, $s2, 0xFF
    /* 2FC98 801B8C10 80110200 */  sll        $v0, $v0, 6
    /* 2FC9C 801B8C14 21105400 */  addu       $v0, $v0, $s4
    /* 2FCA0 801B8C18 21186200 */  addu       $v1, $v1, $v0
    /* 2FCA4 801B8C1C 0000648C */  lw         $a0, 0x0($v1)
    /* 2FCA8 801B8C20 1AE3060C */  jal        func_801B8C68
    /* 2FCAC 801B8C24 FF006632 */   andi      $a2, $s3, 0xFF
    /* 2FCB0 801B8C28 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2FCB4 801B8C2C 21082102 */  addu       $at, $s1, $at
    /* 2FCB8 801B8C30 208F2390 */  lbu        $v1, -0x70E0($at)
    /* 2FCBC 801B8C34 FF000232 */  andi       $v0, $s0, 0xFF
    /* 2FCC0 801B8C38 2B104300 */  sltu       $v0, $v0, $v1
    /* 2FCC4 801B8C3C EEFF4014 */  bnez       $v0, .L801B8BF8
    /* 2FCC8 801B8C40 FF000332 */   andi      $v1, $s0, 0xFF
  .L801B8C44:
    /* 2FCCC 801B8C44 2400BF8F */  lw         $ra, 0x24($sp)
    /* 2FCD0 801B8C48 2000B48F */  lw         $s4, 0x20($sp)
    /* 2FCD4 801B8C4C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2FCD8 801B8C50 1800B28F */  lw         $s2, 0x18($sp)
    /* 2FCDC 801B8C54 1400B18F */  lw         $s1, 0x14($sp)
    /* 2FCE0 801B8C58 1000B08F */  lw         $s0, 0x10($sp)
    /* 2FCE4 801B8C5C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2FCE8 801B8C60 0800E003 */  jr         $ra
    /* 2FCEC 801B8C64 00000000 */   nop
endlabel func_801B8BB0
