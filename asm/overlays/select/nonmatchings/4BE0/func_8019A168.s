nonmatching func_8019A168, 0x138

glabel func_8019A168
    /* 111F0 8019A168 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 111F4 8019A16C 4800B0AF */  sw         $s0, 0x48($sp)
    /* 111F8 8019A170 21800000 */  addu       $s0, $zero, $zero
    /* 111FC 8019A174 6800BEAF */  sw         $fp, 0x68($sp)
    /* 11200 8019A178 18001E24 */  addiu      $fp, $zero, 0x18
    /* 11204 8019A17C 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 11208 8019A180 00101524 */  addiu      $s5, $zero, 0x1000
    /* 1120C 8019A184 5800B4AF */  sw         $s4, 0x58($sp)
    /* 11210 8019A188 80001424 */  addiu      $s4, $zero, 0x80
    /* 11214 8019A18C 6400B7AF */  sw         $s7, 0x64($sp)
    /* 11218 8019A190 03001724 */  addiu      $s7, $zero, 0x3
    /* 1121C 8019A194 6000B6AF */  sw         $s6, 0x60($sp)
    /* 11220 8019A198 01001624 */  addiu      $s6, $zero, 0x1
    /* 11224 8019A19C 5000B2AF */  sw         $s2, 0x50($sp)
    /* 11228 8019A1A0 C8FF1224 */  addiu      $s2, $zero, -0x38
    /* 1122C 8019A1A4 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 11230 8019A1A8 21880000 */  addu       $s1, $zero, $zero
    /* 11234 8019A1AC 6C00BFAF */  sw         $ra, 0x6C($sp)
    /* 11238 8019A1B0 5400B3AF */  sw         $s3, 0x54($sp)
  .L8019A1B4:
    /* 1123C 8019A1B4 00FE0724 */  addiu      $a3, $zero, -0x200
    /* 11240 8019A1B8 13000426 */  addiu      $a0, $s0, 0x13
    /* 11244 8019A1BC 01001332 */  andi       $s3, $s0, 0x1
    /* 11248 8019A1C0 02006012 */  beqz       $s3, .L8019A1CC
    /* 1124C 8019A1C4 18300526 */   addiu     $a1, $s0, 0x3018
    /* 11250 8019A1C8 00020724 */  addiu      $a3, $zero, 0x200
  .L8019A1CC:
    /* 11254 8019A1CC 21300000 */  addu       $a2, $zero, $zero
    /* 11258 8019A1D0 1000B1AF */  sw         $s1, 0x10($sp)
    /* 1125C 8019A1D4 1400BEAF */  sw         $fp, 0x14($sp)
    /* 11260 8019A1D8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 11264 8019A1DC 1C00B5AF */  sw         $s5, 0x1C($sp)
    /* 11268 8019A1E0 2000B5AF */  sw         $s5, 0x20($sp)
    /* 1126C 8019A1E4 2400A0AF */  sw         $zero, 0x24($sp)
    /* 11270 8019A1E8 2800B2AF */  sw         $s2, 0x28($sp)
    /* 11274 8019A1EC 2C00B4AF */  sw         $s4, 0x2C($sp)
    /* 11278 8019A1F0 3000B4AF */  sw         $s4, 0x30($sp)
    /* 1127C 8019A1F4 3400B4AF */  sw         $s4, 0x34($sp)
    /* 11280 8019A1F8 3800A0AF */  sw         $zero, 0x38($sp)
    /* 11284 8019A1FC 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 11288 8019A200 ED4F060C */  jal        func_80193FB4
    /* 1128C 8019A204 4000B6AF */   sw        $s6, 0x40($sp)
    /* 11290 8019A208 00FE0724 */  addiu      $a3, $zero, -0x200
    /* 11294 8019A20C 02006012 */  beqz       $s3, .L8019A218
    /* 11298 8019A210 18000426 */   addiu     $a0, $s0, 0x18
    /* 1129C 8019A214 00020724 */  addiu      $a3, $zero, 0x200
  .L8019A218:
    /* 112A0 8019A218 1D300524 */  addiu      $a1, $zero, 0x301D
    /* 112A4 8019A21C 0040063C */  lui        $a2, (0x40000000 >> 16)
    /* 112A8 8019A220 1000B1AF */  sw         $s1, 0x10($sp)
    /* 112AC 8019A224 1400BEAF */  sw         $fp, 0x14($sp)
    /* 112B0 8019A228 1800A0AF */  sw         $zero, 0x18($sp)
    /* 112B4 8019A22C 1C00B5AF */  sw         $s5, 0x1C($sp)
    /* 112B8 8019A230 2000B5AF */  sw         $s5, 0x20($sp)
    /* 112BC 8019A234 2400A0AF */  sw         $zero, 0x24($sp)
    /* 112C0 8019A238 2800B2AF */  sw         $s2, 0x28($sp)
    /* 112C4 8019A23C 2C00B4AF */  sw         $s4, 0x2C($sp)
    /* 112C8 8019A240 3000B4AF */  sw         $s4, 0x30($sp)
    /* 112CC 8019A244 3400B4AF */  sw         $s4, 0x34($sp)
    /* 112D0 8019A248 3800A0AF */  sw         $zero, 0x38($sp)
    /* 112D4 8019A24C 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 112D8 8019A250 ED4F060C */  jal        func_80193FB4
    /* 112DC 8019A254 4000B6AF */   sw        $s6, 0x40($sp)
    /* 112E0 8019A258 18005226 */  addiu      $s2, $s2, 0x18
    /* 112E4 8019A25C 01001026 */  addiu      $s0, $s0, 0x1
    /* 112E8 8019A260 0500022A */  slti       $v0, $s0, 0x5
    /* 112EC 8019A264 D3FF4014 */  bnez       $v0, .L8019A1B4
    /* 112F0 8019A268 18003126 */   addiu     $s1, $s1, 0x18
    /* 112F4 8019A26C 6C00BF8F */  lw         $ra, 0x6C($sp)
    /* 112F8 8019A270 6800BE8F */  lw         $fp, 0x68($sp)
    /* 112FC 8019A274 6400B78F */  lw         $s7, 0x64($sp)
    /* 11300 8019A278 6000B68F */  lw         $s6, 0x60($sp)
    /* 11304 8019A27C 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 11308 8019A280 5800B48F */  lw         $s4, 0x58($sp)
    /* 1130C 8019A284 5400B38F */  lw         $s3, 0x54($sp)
    /* 11310 8019A288 5000B28F */  lw         $s2, 0x50($sp)
    /* 11314 8019A28C 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 11318 8019A290 4800B08F */  lw         $s0, 0x48($sp)
    /* 1131C 8019A294 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 11320 8019A298 0800E003 */  jr         $ra
    /* 11324 8019A29C 00000000 */   nop
endlabel func_8019A168
