nonmatching func_801B7B00, 0x244

glabel func_801B7B00
    /* 2EB88 801B7B00 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2EB8C 801B7B04 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2EB90 801B7B08 1080133C */  lui        $s3, %hi(D_800FF748)
    /* 2EB94 801B7B0C 48F77326 */  addiu      $s3, $s3, %lo(D_800FF748)
    /* 2EB98 801B7B10 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2EB9C 801B7B14 21880000 */  addu       $s1, $zero, $zero
    /* 2EBA0 801B7B18 1E80043C */  lui        $a0, %hi(D_801D94E8)
    /* 2EBA4 801B7B1C E8948424 */  addiu      $a0, $a0, %lo(D_801D94E8)
    /* 2EBA8 801B7B20 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 2EBAC 801B7B24 2800B4AF */  sw         $s4, 0x28($sp)
    /* 2EBB0 801B7B28 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2EBB4 801B7B2C 1800B0AF */  sw         $s0, 0x18($sp)
  .L801B7B30:
    /* 2EBB8 801B7B30 2C000324 */  addiu      $v1, $zero, 0x2C
    /* 2EBBC 801B7B34 2C008224 */  addiu      $v0, $a0, 0x2C
  .L801B7B38:
    /* 2EBC0 801B7B38 000040A0 */  sb         $zero, 0x0($v0)
    /* 2EBC4 801B7B3C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 2EBC8 801B7B40 FDFF6104 */  bgez       $v1, .L801B7B38
    /* 2EBCC 801B7B44 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 2EBD0 801B7B48 01003126 */  addiu      $s1, $s1, 0x1
    /* 2EBD4 801B7B4C 0400222A */  slti       $v0, $s1, 0x4
    /* 2EBD8 801B7B50 F7FF4014 */  bnez       $v0, .L801B7B30
    /* 2EBDC 801B7B54 2D008424 */   addiu     $a0, $a0, 0x2D
    /* 2EBE0 801B7B58 0174000C */  jal        func_8001D004
    /* 2EBE4 801B7B5C 34310424 */   addiu     $a0, $zero, 0x3134
    /* 2EBE8 801B7B60 21204000 */  addu       $a0, $v0, $zero
    /* 2EBEC 801B7B64 21880000 */  addu       $s1, $zero, $zero
    /* 2EBF0 801B7B68 0E001224 */  addiu      $s2, $zero, 0xE
    /* 2EBF4 801B7B6C 02000624 */  addiu      $a2, $zero, 0x2
  .L801B7B70:
    /* 2EBF8 801B7B70 21107102 */  addu       $v0, $s3, $s1
    /* 2EBFC 801B7B74 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2EC00 801B7B78 21084100 */  addu       $at, $v0, $at
    /* 2EC04 801B7B7C 50AB2290 */  lbu        $v0, -0x54B0($at)
    /* 2EC08 801B7B80 B0000724 */  addiu      $a3, $zero, 0xB0
    /* 2EC0C 801B7B84 C0800200 */  sll        $s0, $v0, 3
    /* 2EC10 801B7B88 21800202 */  addu       $s0, $s0, $v0
    /* 2EC14 801B7B8C 80801000 */  sll        $s0, $s0, 2
    /* 2EC18 801B7B90 21807002 */  addu       $s0, $s3, $s0
    /* 2EC1C 801B7B94 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2EC20 801B7B98 21080102 */  addu       $at, $s0, $at
    /* 2EC24 801B7B9C 268F2590 */  lbu        $a1, -0x70DA($at)
    /* 2EC28 801B7BA0 01003126 */  addiu      $s1, $s1, 0x1
    /* 2EC2C 801B7BA4 50A5060C */  jal        func_801A9540
    /* 2EC30 801B7BA8 1000B2AF */   sw        $s2, 0x10($sp)
    /* 2EC34 801B7BAC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2EC38 801B7BB0 21080102 */  addu       $at, $s0, $at
    /* 2EC3C 801B7BB4 2C8F2594 */  lhu        $a1, -0x70D4($at)
    /* 2EC40 801B7BB8 DAC0060C */  jal        func_801B0368
    /* 2EC44 801B7BBC 21204000 */   addu      $a0, $v0, $zero
    /* 2EC48 801B7BC0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2EC4C 801B7BC4 21080102 */  addu       $at, $s0, $at
    /* 2EC50 801B7BC8 2E8F2594 */  lhu        $a1, -0x70D2($at)
    /* 2EC54 801B7BCC DAC0060C */  jal        func_801B0368
    /* 2EC58 801B7BD0 21204000 */   addu      $a0, $v0, $zero
    /* 2EC5C 801B7BD4 21204000 */  addu       $a0, $v0, $zero
    /* 2EC60 801B7BD8 02000624 */  addiu      $a2, $zero, 0x2
    /* 2EC64 801B7BDC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2EC68 801B7BE0 21080102 */  addu       $at, $s0, $at
    /* 2EC6C 801B7BE4 338F2590 */  lbu        $a1, -0x70CD($at)
    /* 2EC70 801B7BE8 B0000724 */  addiu      $a3, $zero, 0xB0
    /* 2EC74 801B7BEC 50A5060C */  jal        func_801A9540
    /* 2EC78 801B7BF0 1000B2AF */   sw        $s2, 0x10($sp)
    /* 2EC7C 801B7BF4 21204000 */  addu       $a0, $v0, $zero
    /* 2EC80 801B7BF8 02000624 */  addiu      $a2, $zero, 0x2
    /* 2EC84 801B7BFC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2EC88 801B7C00 21080102 */  addu       $at, $s0, $at
    /* 2EC8C 801B7C04 348F2590 */  lbu        $a1, -0x70CC($at)
    /* 2EC90 801B7C08 B0000724 */  addiu      $a3, $zero, 0xB0
    /* 2EC94 801B7C0C 50A5060C */  jal        func_801A9540
    /* 2EC98 801B7C10 1000B2AF */   sw        $s2, 0x10($sp)
    /* 2EC9C 801B7C14 21204000 */  addu       $a0, $v0, $zero
    /* 2ECA0 801B7C18 0400222A */  slti       $v0, $s1, 0x4
    /* 2ECA4 801B7C1C D4FF4014 */  bnez       $v0, .L801B7B70
    /* 2ECA8 801B7C20 02000624 */   addiu     $a2, $zero, 0x2
    /* 2ECAC 801B7C24 21880000 */  addu       $s1, $zero, $zero
    /* 2ECB0 801B7C28 1C001424 */  addiu      $s4, $zero, 0x1C
    /* 2ECB4 801B7C2C 21900000 */  addu       $s2, $zero, $zero
  .L801B7C30:
    /* 2ECB8 801B7C30 21107102 */  addu       $v0, $s3, $s1
    /* 2ECBC 801B7C34 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2ECC0 801B7C38 21084100 */  addu       $at, $v0, $at
    /* 2ECC4 801B7C3C 50AB2290 */  lbu        $v0, -0x54B0($at)
    /* 2ECC8 801B7C40 1E80043C */  lui        $a0, %hi(D_801D94E8)
    /* 2ECCC 801B7C44 E8948424 */  addiu      $a0, $a0, %lo(D_801D94E8)
    /* 2ECD0 801B7C48 21806202 */  addu       $s0, $s3, $v0
    /* 2ECD4 801B7C4C 80AB0234 */  ori        $v0, $zero, 0xAB80
    /* 2ECD8 801B7C50 21800202 */  addu       $s0, $s0, $v0
    /* 2ECDC 801B7C54 00000392 */  lbu        $v1, 0x0($s0)
    /* 2ECE0 801B7C58 21204402 */  addu       $a0, $s2, $a0
    /* 2ECE4 801B7C5C C0100300 */  sll        $v0, $v1, 3
    /* 2ECE8 801B7C60 21104300 */  addu       $v0, $v0, $v1
    /* 2ECEC 801B7C64 80100200 */  sll        $v0, $v0, 2
    /* 2ECF0 801B7C68 21106202 */  addu       $v0, $s3, $v0
    /* 2ECF4 801B7C6C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2ECF8 801B7C70 21084100 */  addu       $at, $v0, $at
    /* 2ECFC 801B7C74 248F2790 */  lbu        $a3, -0x70DC($at)
    /* 2ED00 801B7C78 04000524 */  addiu      $a1, $zero, 0x4
    /* 2ED04 801B7C7C C000E630 */  andi       $a2, $a3, 0xC0
    /* 2ED08 801B7C80 3F00E730 */  andi       $a3, $a3, 0x3F
    /* 2ED0C 801B7C84 5AA4060C */  jal        func_801A9168
    /* 2ED10 801B7C88 0100E724 */   addiu     $a3, $a3, 0x1
    /* 2ED14 801B7C8C 09000324 */  addiu      $v1, $zero, 0x9
    /* 2ED18 801B7C90 000043A0 */  sb         $v1, 0x0($v0)
    /* 2ED1C 801B7C94 01004224 */  addiu      $v0, $v0, 0x1
    /* 2ED20 801B7C98 000054A0 */  sb         $s4, 0x0($v0)
    /* 2ED24 801B7C9C 01004224 */  addiu      $v0, $v0, 0x1
    /* 2ED28 801B7CA0 1E000324 */  addiu      $v1, $zero, 0x1E
    /* 2ED2C 801B7CA4 000043A0 */  sb         $v1, 0x0($v0)
    /* 2ED30 801B7CA8 00000492 */  lbu        $a0, 0x0($s0)
    /* 2ED34 801B7CAC 00000000 */  nop
    /* 2ED38 801B7CB0 C0180400 */  sll        $v1, $a0, 3
    /* 2ED3C 801B7CB4 21186400 */  addu       $v1, $v1, $a0
    /* 2ED40 801B7CB8 80180300 */  sll        $v1, $v1, 2
    /* 2ED44 801B7CBC 21186302 */  addu       $v1, $s3, $v1
    /* 2ED48 801B7CC0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2ED4C 801B7CC4 21086100 */  addu       $at, $v1, $at
    /* 2ED50 801B7CC8 258F2390 */  lbu        $v1, -0x70DB($at)
    /* 2ED54 801B7CCC 01004224 */  addiu      $v0, $v0, 0x1
    /* 2ED58 801B7CD0 000043A0 */  sb         $v1, 0x0($v0)
    /* 2ED5C 801B7CD4 01004224 */  addiu      $v0, $v0, 0x1
    /* 2ED60 801B7CD8 20000324 */  addiu      $v1, $zero, 0x20
    /* 2ED64 801B7CDC 000043A0 */  sb         $v1, 0x0($v0)
    /* 2ED68 801B7CE0 01004224 */  addiu      $v0, $v0, 0x1
    /* 2ED6C 801B7CE4 000054A0 */  sb         $s4, 0x0($v0)
    /* 2ED70 801B7CE8 00000492 */  lbu        $a0, 0x0($s0)
    /* 2ED74 801B7CEC 00000000 */  nop
    /* 2ED78 801B7CF0 C0180400 */  sll        $v1, $a0, 3
    /* 2ED7C 801B7CF4 21186400 */  addu       $v1, $v1, $a0
    /* 2ED80 801B7CF8 80180300 */  sll        $v1, $v1, 2
    /* 2ED84 801B7CFC 21186302 */  addu       $v1, $s3, $v1
    /* 2ED88 801B7D00 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2ED8C 801B7D04 21086100 */  addu       $at, $v1, $at
    /* 2ED90 801B7D08 258F2390 */  lbu        $v1, -0x70DB($at)
    /* 2ED94 801B7D0C 01003126 */  addiu      $s1, $s1, 0x1
    /* 2ED98 801B7D10 010043A0 */  sb         $v1, 0x1($v0)
    /* 2ED9C 801B7D14 0400222A */  slti       $v0, $s1, 0x4
    /* 2EDA0 801B7D18 C5FF4014 */  bnez       $v0, .L801B7C30
    /* 2EDA4 801B7D1C 2D005226 */   addiu     $s2, $s2, 0x2D
    /* 2EDA8 801B7D20 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 2EDAC 801B7D24 2800B48F */  lw         $s4, 0x28($sp)
    /* 2EDB0 801B7D28 2400B38F */  lw         $s3, 0x24($sp)
    /* 2EDB4 801B7D2C 2000B28F */  lw         $s2, 0x20($sp)
    /* 2EDB8 801B7D30 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2EDBC 801B7D34 1800B08F */  lw         $s0, 0x18($sp)
    /* 2EDC0 801B7D38 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2EDC4 801B7D3C 0800E003 */  jr         $ra
    /* 2EDC8 801B7D40 00000000 */   nop
endlabel func_801B7B00
