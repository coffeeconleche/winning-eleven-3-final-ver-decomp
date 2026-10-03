nonmatching func_801A5FA4, 0x258

glabel func_801A5FA4
    /* 1D02C 801A5FA4 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 1D030 801A5FA8 21200000 */  addu       $a0, $zero, $zero
    /* 1D034 801A5FAC 4000BFAF */  sw         $ra, 0x40($sp)
    /* 1D038 801A5FB0 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 1D03C 801A5FB4 3800B4AF */  sw         $s4, 0x38($sp)
    /* 1D040 801A5FB8 3400B3AF */  sw         $s3, 0x34($sp)
    /* 1D044 801A5FBC 3000B2AF */  sw         $s2, 0x30($sp)
    /* 1D048 801A5FC0 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 1D04C 801A5FC4 A739060C */  jal        func_8018E69C
    /* 1D050 801A5FC8 2800B0AF */   sw        $s0, 0x28($sp)
    /* 1D054 801A5FCC 01000424 */  addiu      $a0, $zero, 0x1
    /* 1D058 801A5FD0 A739060C */  jal        func_8018E69C
    /* 1D05C 801A5FD4 21A04000 */   addu      $s4, $v0, $zero
    /* 1D060 801A5FD8 21A84000 */  addu       $s5, $v0, $zero
    /* 1D064 801A5FDC 1E80033C */  lui        $v1, %hi(D_801D8198)
    /* 1D068 801A5FE0 98816390 */  lbu        $v1, %lo(D_801D8198)($v1)
    /* 1D06C 801A5FE4 01000224 */  addiu      $v0, $zero, 0x1
    /* 1D070 801A5FE8 22006214 */  bne        $v1, $v0, .L801A6074
    /* 1D074 801A5FEC 801F133C */   lui       $s3, (0x1F80029D >> 16)
    /* 1D078 801A5FF0 1E80023C */  lui        $v0, %hi(D_801D819C)
    /* 1D07C 801A5FF4 9C814290 */  lbu        $v0, %lo(D_801D819C)($v0)
    /* 1D080 801A5FF8 00000000 */  nop
    /* 1D084 801A5FFC 07004014 */  bnez       $v0, .L801A601C
    /* 1D088 801A6000 00000000 */   nop
    /* 1D08C 801A6004 1E80043C */  lui        $a0, %hi(D_801D819A)
    /* 1D090 801A6008 9A818490 */  lbu        $a0, %lo(D_801D819A)($a0)
    /* 1D094 801A600C 3F97060C */  jal        func_801A5CFC
    /* 1D098 801A6010 21280000 */   addu      $a1, $zero, $zero
    /* 1D09C 801A6014 0C980608 */  j          .L801A6030
    /* 1D0A0 801A6018 21800000 */   addu      $s0, $zero, $zero
  .L801A601C:
    /* 1D0A4 801A601C 1E80043C */  lui        $a0, %hi(D_801D819A)
    /* 1D0A8 801A6020 9A818490 */  lbu        $a0, %lo(D_801D819A)($a0)
    /* 1D0AC 801A6024 E296060C */  jal        func_801A5B88
    /* 1D0B0 801A6028 21280000 */   addu      $a1, $zero, $zero
    /* 1D0B4 801A602C 21800000 */  addu       $s0, $zero, $zero
  .L801A6030:
    /* 1D0B8 801A6030 0F80123C */  lui        $s2, %hi(D_800F1018)
    /* 1D0BC 801A6034 18105226 */  addiu      $s2, $s2, %lo(D_800F1018)
    /* 1D0C0 801A6038 1E80113C */  lui        $s1, %hi(D_801D8078)
    /* 1D0C4 801A603C 78803126 */  addiu      $s1, $s1, %lo(D_801D8078)
    /* 1D0C8 801A6040 21202002 */  addu       $a0, $s1, $zero
  .L801A6044:
    /* 1D0CC 801A6044 21300000 */  addu       $a2, $zero, $zero
    /* 1D0D0 801A6048 24003126 */  addiu      $s1, $s1, 0x24
    /* 1D0D4 801A604C 9D026292 */  lbu        $v0, (0x1F80029D & 0xFFFF)($s3)
    /* 1D0D8 801A6050 01001026 */  addiu      $s0, $s0, 0x1
    /* 1D0DC 801A6054 80280200 */  sll        $a1, $v0, 2
    /* 1D0E0 801A6058 2128A200 */  addu       $a1, $a1, $v0
    /* 1D0E4 801A605C 80280500 */  sll        $a1, $a1, 2
    /* 1D0E8 801A6060 02CE020C */  jal        func_800B3808
    /* 1D0EC 801A6064 2128B200 */   addu      $a1, $a1, $s2
    /* 1D0F0 801A6068 0400022A */  slti       $v0, $s0, 0x4
    /* 1D0F4 801A606C F5FF4014 */  bnez       $v0, .L801A6044
    /* 1D0F8 801A6070 21202002 */   addu      $a0, $s1, $zero
  .L801A6074:
    /* 1D0FC 801A6074 1E80033C */  lui        $v1, %hi(D_801D8199)
    /* 1D100 801A6078 99816390 */  lbu        $v1, %lo(D_801D8199)($v1)
    /* 1D104 801A607C 01000224 */  addiu      $v0, $zero, 0x1
    /* 1D108 801A6080 22006214 */  bne        $v1, $v0, .L801A610C
    /* 1D10C 801A6084 00000000 */   nop
    /* 1D110 801A6088 1E80023C */  lui        $v0, %hi(D_801D819D)
    /* 1D114 801A608C 9D814290 */  lbu        $v0, %lo(D_801D819D)($v0)
    /* 1D118 801A6090 00000000 */  nop
    /* 1D11C 801A6094 07004014 */  bnez       $v0, .L801A60B4
    /* 1D120 801A6098 00000000 */   nop
    /* 1D124 801A609C 1E80043C */  lui        $a0, %hi(D_801D819B)
    /* 1D128 801A60A0 9B818490 */  lbu        $a0, %lo(D_801D819B)($a0)
    /* 1D12C 801A60A4 3F97060C */  jal        func_801A5CFC
    /* 1D130 801A60A8 01000524 */   addiu     $a1, $zero, 0x1
    /* 1D134 801A60AC 32980608 */  j          .L801A60C8
    /* 1D138 801A60B0 04001024 */   addiu     $s0, $zero, 0x4
  .L801A60B4:
    /* 1D13C 801A60B4 1E80043C */  lui        $a0, %hi(D_801D819B)
    /* 1D140 801A60B8 9B818490 */  lbu        $a0, %lo(D_801D819B)($a0)
    /* 1D144 801A60BC E296060C */  jal        func_801A5B88
    /* 1D148 801A60C0 01000524 */   addiu     $a1, $zero, 0x1
    /* 1D14C 801A60C4 04001024 */  addiu      $s0, $zero, 0x4
  .L801A60C8:
    /* 1D150 801A60C8 0F80123C */  lui        $s2, %hi(D_800F1018)
    /* 1D154 801A60CC 18105226 */  addiu      $s2, $s2, %lo(D_800F1018)
    /* 1D158 801A60D0 1E80113C */  lui        $s1, %hi(D_801D8108)
    /* 1D15C 801A60D4 08813126 */  addiu      $s1, $s1, %lo(D_801D8108)
    /* 1D160 801A60D8 21202002 */  addu       $a0, $s1, $zero
  .L801A60DC:
    /* 1D164 801A60DC 21300000 */  addu       $a2, $zero, $zero
    /* 1D168 801A60E0 24003126 */  addiu      $s1, $s1, 0x24
    /* 1D16C 801A60E4 9D026292 */  lbu        $v0, (0x1F80029D & 0xFFFF)($s3)
    /* 1D170 801A60E8 01001026 */  addiu      $s0, $s0, 0x1
    /* 1D174 801A60EC 80280200 */  sll        $a1, $v0, 2
    /* 1D178 801A60F0 2128A200 */  addu       $a1, $a1, $v0
    /* 1D17C 801A60F4 80280500 */  sll        $a1, $a1, 2
    /* 1D180 801A60F8 02CE020C */  jal        func_800B3808
    /* 1D184 801A60FC 2128B200 */   addu      $a1, $a1, $s2
    /* 1D188 801A6100 0800022A */  slti       $v0, $s0, 0x8
    /* 1D18C 801A6104 F5FF4014 */  bnez       $v0, .L801A60DC
    /* 1D190 801A6108 21202002 */   addu      $a0, $s1, $zero
  .L801A610C:
    /* 1D194 801A610C 01001024 */  addiu      $s0, $zero, 0x1
    /* 1D198 801A6110 FFFF1026 */  addiu      $s0, $s0, -0x1
  .L801A6114:
    /* 1D19C 801A6114 FFFF0106 */  bgez       $s0, .L801A6114
    /* 1D1A0 801A6118 FFFF1026 */   addiu     $s0, $s0, -0x1
    /* 1D1A4 801A611C 1E80023C */  lui        $v0, %hi(D_801D819E)
    /* 1D1A8 801A6120 9E814290 */  lbu        $v0, %lo(D_801D819E)($v0)
    /* 1D1AC 801A6124 01001024 */  addiu      $s0, $zero, 0x1
    /* 1D1B0 801A6128 13005014 */  bne        $v0, $s0, .L801A6178
    /* 1D1B4 801A612C 21200000 */   addu      $a0, $zero, $zero
    /* 1D1B8 801A6130 5AFF0524 */  addiu      $a1, $zero, -0xA6
    /* 1D1BC 801A6134 18000724 */  addiu      $a3, $zero, 0x18
    /* 1D1C0 801A6138 14000224 */  addiu      $v0, $zero, 0x14
    /* 1D1C4 801A613C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1D1C8 801A6140 30000224 */  addiu      $v0, $zero, 0x30
    /* 1D1CC 801A6144 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1D1D0 801A6148 80101400 */  sll        $v0, $s4, 2
    /* 1D1D4 801A614C 21105400 */  addu       $v0, $v0, $s4
    /* 1D1D8 801A6150 1E80063C */  lui        $a2, %hi(D_801D81A0)
    /* 1D1DC 801A6154 A081C690 */  lbu        $a2, %lo(D_801D81A0)($a2)
    /* 1D1E0 801A6158 80100200 */  sll        $v0, $v0, 2
    /* 1D1E4 801A615C 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1D1E8 801A6160 1D000224 */  addiu      $v0, $zero, 0x1D
    /* 1D1EC 801A6164 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 1D1F0 801A6168 9D000224 */  addiu      $v0, $zero, 0x9D
    /* 1D1F4 801A616C 2000A2AF */  sw         $v0, 0x20($sp)
    /* 1D1F8 801A6170 DE58060C */  jal        func_80196378
    /* 1D1FC 801A6174 2400B0AF */   sw        $s0, 0x24($sp)
  .L801A6178:
    /* 1D200 801A6178 1E80033C */  lui        $v1, %hi(D_801D819F)
    /* 1D204 801A617C 9F816390 */  lbu        $v1, %lo(D_801D819F)($v1)
    /* 1D208 801A6180 00000000 */  nop
    /* 1D20C 801A6184 13007014 */  bne        $v1, $s0, .L801A61D4
    /* 1D210 801A6188 21200000 */   addu      $a0, $zero, $zero
    /* 1D214 801A618C 5AFF0524 */  addiu      $a1, $zero, -0xA6
    /* 1D218 801A6190 18000724 */  addiu      $a3, $zero, 0x18
    /* 1D21C 801A6194 14000224 */  addiu      $v0, $zero, 0x14
    /* 1D220 801A6198 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1D224 801A619C 30000224 */  addiu      $v0, $zero, 0x30
    /* 1D228 801A61A0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1D22C 801A61A4 80101500 */  sll        $v0, $s5, 2
    /* 1D230 801A61A8 21105500 */  addu       $v0, $v0, $s5
    /* 1D234 801A61AC 1E80063C */  lui        $a2, %hi(D_801D81A1)
    /* 1D238 801A61B0 A181C690 */  lbu        $a2, %lo(D_801D81A1)($a2)
    /* 1D23C 801A61B4 80100200 */  sll        $v0, $v0, 2
    /* 1D240 801A61B8 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1D244 801A61BC 1D000224 */  addiu      $v0, $zero, 0x1D
    /* 1D248 801A61C0 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 1D24C 801A61C4 9D000224 */  addiu      $v0, $zero, 0x9D
    /* 1D250 801A61C8 2000A2AF */  sw         $v0, 0x20($sp)
    /* 1D254 801A61CC DE58060C */  jal        func_80196378
    /* 1D258 801A61D0 2400A3AF */   sw        $v1, 0x24($sp)
  .L801A61D4:
    /* 1D25C 801A61D4 4000BF8F */  lw         $ra, 0x40($sp)
    /* 1D260 801A61D8 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 1D264 801A61DC 3800B48F */  lw         $s4, 0x38($sp)
    /* 1D268 801A61E0 3400B38F */  lw         $s3, 0x34($sp)
    /* 1D26C 801A61E4 3000B28F */  lw         $s2, 0x30($sp)
    /* 1D270 801A61E8 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 1D274 801A61EC 2800B08F */  lw         $s0, 0x28($sp)
    /* 1D278 801A61F0 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 1D27C 801A61F4 0800E003 */  jr         $ra
    /* 1D280 801A61F8 00000000 */   nop
endlabel func_801A5FA4
