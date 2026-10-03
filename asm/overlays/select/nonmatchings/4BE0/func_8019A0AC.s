nonmatching func_8019A0AC, 0xBC

glabel func_8019A0AC
    /* 11134 8019A0AC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 11138 8019A0B0 2400B5AF */  sw         $s5, 0x24($sp)
    /* 1113C 8019A0B4 1080153C */  lui        $s5, %hi(D_800FF748)
    /* 11140 8019A0B8 48F7B526 */  addiu      $s5, $s5, %lo(D_800FF748)
    /* 11144 8019A0BC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 11148 8019A0C0 01001124 */  addiu      $s1, $zero, 0x1
    /* 1114C 8019A0C4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 11150 8019A0C8 21900000 */  addu       $s2, $zero, $zero
    /* 11154 8019A0CC 2000B4AF */  sw         $s4, 0x20($sp)
    /* 11158 8019A0D0 A05F1424 */  addiu      $s4, $zero, 0x5FA0
    /* 1115C 8019A0D4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 11160 8019A0D8 885E1324 */  addiu      $s3, $zero, 0x5E88
    /* 11164 8019A0DC 2800BFAF */  sw         $ra, 0x28($sp)
    /* 11168 8019A0E0 1000B0AF */  sw         $s0, 0x10($sp)
  .L8019A0E4:
    /* 1116C 8019A0E4 00FE0524 */  addiu      $a1, $zero, -0x200
    /* 11170 8019A0E8 2110B302 */  addu       $v0, $s5, $s3
    /* 11174 8019A0EC 01005032 */  andi       $s0, $s2, 0x1
    /* 11178 8019A0F0 02000012 */  beqz       $s0, .L8019A0FC
    /* 1117C 8019A0F4 10004424 */   addiu     $a0, $v0, 0x10
    /* 11180 8019A0F8 00020524 */  addiu      $a1, $zero, 0x200
  .L8019A0FC:
    /* 11184 8019A0FC 653A060C */  jal        func_8018E994
    /* 11188 8019A100 20000624 */   addiu     $a2, $zero, 0x20
    /* 1118C 8019A104 24882202 */  and        $s1, $s1, $v0
    /* 11190 8019A108 00FE0524 */  addiu      $a1, $zero, -0x200
    /* 11194 8019A10C 2110B402 */  addu       $v0, $s5, $s4
    /* 11198 8019A110 02000012 */  beqz       $s0, .L8019A11C
    /* 1119C 8019A114 10004424 */   addiu     $a0, $v0, 0x10
    /* 111A0 8019A118 00020524 */  addiu      $a1, $zero, 0x200
  .L8019A11C:
    /* 111A4 8019A11C 653A060C */  jal        func_8018E994
    /* 111A8 8019A120 20000624 */   addiu     $a2, $zero, 0x20
    /* 111AC 8019A124 24882202 */  and        $s1, $s1, $v0
    /* 111B0 8019A128 28009426 */  addiu      $s4, $s4, 0x28
    /* 111B4 8019A12C 01005226 */  addiu      $s2, $s2, 0x1
    /* 111B8 8019A130 0700422A */  slti       $v0, $s2, 0x7
    /* 111BC 8019A134 EBFF4014 */  bnez       $v0, .L8019A0E4
    /* 111C0 8019A138 28007326 */   addiu     $s3, $s3, 0x28
    /* 111C4 8019A13C 21102002 */  addu       $v0, $s1, $zero
    /* 111C8 8019A140 2800BF8F */  lw         $ra, 0x28($sp)
    /* 111CC 8019A144 2400B58F */  lw         $s5, 0x24($sp)
    /* 111D0 8019A148 2000B48F */  lw         $s4, 0x20($sp)
    /* 111D4 8019A14C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 111D8 8019A150 1800B28F */  lw         $s2, 0x18($sp)
    /* 111DC 8019A154 1400B18F */  lw         $s1, 0x14($sp)
    /* 111E0 8019A158 1000B08F */  lw         $s0, 0x10($sp)
    /* 111E4 8019A15C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 111E8 8019A160 0800E003 */  jr         $ra
    /* 111EC 8019A164 00000000 */   nop
endlabel func_8019A0AC
