nonmatching func_8019DF70, 0x12C

glabel func_8019DF70
    /* 14FF8 8019DF70 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 14FFC 8019DF74 4800B0AF */  sw         $s0, 0x48($sp)
    /* 15000 8019DF78 21800000 */  addu       $s0, $zero, $zero
    /* 15004 8019DF7C 5000B2AF */  sw         $s2, 0x50($sp)
    /* 15008 8019DF80 21900000 */  addu       $s2, $zero, $zero
    /* 1500C 8019DF84 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 15010 8019DF88 01001524 */  addiu      $s5, $zero, 0x1
    /* 15014 8019DF8C 6400B7AF */  sw         $s7, 0x64($sp)
    /* 15018 8019DF90 18001724 */  addiu      $s7, $zero, 0x18
    /* 1501C 8019DF94 5800B4AF */  sw         $s4, 0x58($sp)
    /* 15020 8019DF98 00101424 */  addiu      $s4, $zero, 0x1000
    /* 15024 8019DF9C 5400B3AF */  sw         $s3, 0x54($sp)
    /* 15028 8019DFA0 80001324 */  addiu      $s3, $zero, 0x80
    /* 1502C 8019DFA4 6000B6AF */  sw         $s6, 0x60($sp)
    /* 15030 8019DFA8 02001624 */  addiu      $s6, $zero, 0x2
    /* 15034 8019DFAC 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 15038 8019DFB0 0F001124 */  addiu      $s1, $zero, 0xF
    /* 1503C 8019DFB4 6800BFAF */  sw         $ra, 0x68($sp)
  .L8019DFB8:
    /* 15040 8019DFB8 28001512 */  beq        $s0, $s5, .L8019E05C
    /* 15044 8019DFBC 04000224 */   addiu     $v0, $zero, 0x4
    /* 15048 8019DFC0 26000212 */  beq        $s0, $v0, .L8019E05C
    /* 1504C 8019DFC4 26004426 */   addiu     $a0, $s2, 0x26
    /* 15050 8019DFC8 18300526 */  addiu      $a1, $s0, 0x3018
    /* 15054 8019DFCC 21300000 */  addu       $a2, $zero, $zero
    /* 15058 8019DFD0 4F000724 */  addiu      $a3, $zero, 0x4F
    /* 1505C 8019DFD4 1000B1AF */  sw         $s1, 0x10($sp)
    /* 15060 8019DFD8 1400B7AF */  sw         $s7, 0x14($sp)
    /* 15064 8019DFDC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 15068 8019DFE0 1C00B4AF */  sw         $s4, 0x1C($sp)
    /* 1506C 8019DFE4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 15070 8019DFE8 2400A0AF */  sw         $zero, 0x24($sp)
    /* 15074 8019DFEC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 15078 8019DFF0 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 1507C 8019DFF4 3000B3AF */  sw         $s3, 0x30($sp)
    /* 15080 8019DFF8 3400B3AF */  sw         $s3, 0x34($sp)
    /* 15084 8019DFFC 3800A0AF */  sw         $zero, 0x38($sp)
    /* 15088 8019E000 3C00B6AF */  sw         $s6, 0x3C($sp)
    /* 1508C 8019E004 ED4F060C */  jal        func_80193FB4
    /* 15090 8019E008 4000B5AF */   sw        $s5, 0x40($sp)
    /* 15094 8019E00C 29004426 */  addiu      $a0, $s2, 0x29
    /* 15098 8019E010 1D300524 */  addiu      $a1, $zero, 0x301D
    /* 1509C 8019E014 21300000 */  addu       $a2, $zero, $zero
    /* 150A0 8019E018 4F000724 */  addiu      $a3, $zero, 0x4F
    /* 150A4 8019E01C 1000B1AF */  sw         $s1, 0x10($sp)
    /* 150A8 8019E020 1400B7AF */  sw         $s7, 0x14($sp)
    /* 150AC 8019E024 1800A0AF */  sw         $zero, 0x18($sp)
    /* 150B0 8019E028 1C00B4AF */  sw         $s4, 0x1C($sp)
    /* 150B4 8019E02C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 150B8 8019E030 2400A0AF */  sw         $zero, 0x24($sp)
    /* 150BC 8019E034 2800A0AF */  sw         $zero, 0x28($sp)
    /* 150C0 8019E038 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 150C4 8019E03C 3000B3AF */  sw         $s3, 0x30($sp)
    /* 150C8 8019E040 3400B3AF */  sw         $s3, 0x34($sp)
    /* 150CC 8019E044 3800A0AF */  sw         $zero, 0x38($sp)
    /* 150D0 8019E048 3C00B6AF */  sw         $s6, 0x3C($sp)
    /* 150D4 8019E04C ED4F060C */  jal        func_80193FB4
    /* 150D8 8019E050 4000B5AF */   sw        $s5, 0x40($sp)
    /* 150DC 8019E054 22003126 */  addiu      $s1, $s1, 0x22
    /* 150E0 8019E058 01005226 */  addiu      $s2, $s2, 0x1
  .L8019E05C:
    /* 150E4 8019E05C 01001026 */  addiu      $s0, $s0, 0x1
    /* 150E8 8019E060 0500022A */  slti       $v0, $s0, 0x5
    /* 150EC 8019E064 D4FF4014 */  bnez       $v0, .L8019DFB8
    /* 150F0 8019E068 00000000 */   nop
    /* 150F4 8019E06C 6800BF8F */  lw         $ra, 0x68($sp)
    /* 150F8 8019E070 6400B78F */  lw         $s7, 0x64($sp)
    /* 150FC 8019E074 6000B68F */  lw         $s6, 0x60($sp)
    /* 15100 8019E078 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 15104 8019E07C 5800B48F */  lw         $s4, 0x58($sp)
    /* 15108 8019E080 5400B38F */  lw         $s3, 0x54($sp)
    /* 1510C 8019E084 5000B28F */  lw         $s2, 0x50($sp)
    /* 15110 8019E088 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 15114 8019E08C 4800B08F */  lw         $s0, 0x48($sp)
    /* 15118 8019E090 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 1511C 8019E094 0800E003 */  jr         $ra
    /* 15120 8019E098 00000000 */   nop
endlabel func_8019DF70
