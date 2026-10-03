nonmatching func_8019E09C, 0x134

glabel func_8019E09C
    /* 15124 8019E09C 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 15128 8019E0A0 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 1512C 8019E0A4 21880000 */  addu       $s1, $zero, $zero
    /* 15130 8019E0A8 6400B7AF */  sw         $s7, 0x64($sp)
    /* 15134 8019E0AC 1B001724 */  addiu      $s7, $zero, 0x1B
    /* 15138 8019E0B0 5800B4AF */  sw         $s4, 0x58($sp)
    /* 1513C 8019E0B4 00101424 */  addiu      $s4, $zero, 0x1000
    /* 15140 8019E0B8 5400B3AF */  sw         $s3, 0x54($sp)
    /* 15144 8019E0BC 80001324 */  addiu      $s3, $zero, 0x80
    /* 15148 8019E0C0 6000B6AF */  sw         $s6, 0x60($sp)
    /* 1514C 8019E0C4 02001624 */  addiu      $s6, $zero, 0x2
    /* 15150 8019E0C8 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 15154 8019E0CC 01001524 */  addiu      $s5, $zero, 0x1
    /* 15158 8019E0D0 5000B2AF */  sw         $s2, 0x50($sp)
    /* 1515C 8019E0D4 21900000 */  addu       $s2, $zero, $zero
    /* 15160 8019E0D8 6800BFAF */  sw         $ra, 0x68($sp)
    /* 15164 8019E0DC 4800B0AF */  sw         $s0, 0x48($sp)
  .L8019E0E0:
    /* 15168 8019E0E0 38303026 */  addiu      $s0, $s1, 0x3038
    /* 1516C 8019E0E4 0174000C */  jal        func_8001D004
    /* 15170 8019E0E8 FFFF0432 */   andi      $a0, $s0, 0xFFFF
    /* 15174 8019E0EC 26002426 */  addiu      $a0, $s1, 0x26
    /* 15178 8019E0F0 FFFF0532 */  andi       $a1, $s0, 0xFFFF
    /* 1517C 8019E0F4 21300000 */  addu       $a2, $zero, $zero
    /* 15180 8019E0F8 01004290 */  lbu        $v0, 0x1($v0)
    /* 15184 8019E0FC 98000724 */  addiu      $a3, $zero, 0x98
    /* 15188 8019E100 1000B2AF */  sw         $s2, 0x10($sp)
    /* 1518C 8019E104 1400B7AF */  sw         $s7, 0x14($sp)
    /* 15190 8019E108 1800A0AF */  sw         $zero, 0x18($sp)
    /* 15194 8019E10C 1C00B4AF */  sw         $s4, 0x1C($sp)
    /* 15198 8019E110 2000B4AF */  sw         $s4, 0x20($sp)
    /* 1519C 8019E114 2400A0AF */  sw         $zero, 0x24($sp)
    /* 151A0 8019E118 2800A0AF */  sw         $zero, 0x28($sp)
    /* 151A4 8019E11C 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 151A8 8019E120 3000B3AF */  sw         $s3, 0x30($sp)
    /* 151AC 8019E124 3400B3AF */  sw         $s3, 0x34($sp)
    /* 151B0 8019E128 3800A0AF */  sw         $zero, 0x38($sp)
    /* 151B4 8019E12C 3C00B6AF */  sw         $s6, 0x3C($sp)
    /* 151B8 8019E130 4000B5AF */  sw         $s5, 0x40($sp)
    /* 151BC 8019E134 2338E200 */  subu       $a3, $a3, $v0
    /* 151C0 8019E138 C2170700 */  srl        $v0, $a3, 31
    /* 151C4 8019E13C 2138E200 */  addu       $a3, $a3, $v0
    /* 151C8 8019E140 ED4F060C */  jal        func_80193FB4
    /* 151CC 8019E144 43380700 */   sra       $a3, $a3, 1
    /* 151D0 8019E148 2C002426 */  addiu      $a0, $s1, 0x2C
    /* 151D4 8019E14C 3F300524 */  addiu      $a1, $zero, 0x303F
    /* 151D8 8019E150 21300000 */  addu       $a2, $zero, $zero
    /* 151DC 8019E154 21380000 */  addu       $a3, $zero, $zero
    /* 151E0 8019E158 1000B2AF */  sw         $s2, 0x10($sp)
    /* 151E4 8019E15C 1400B7AF */  sw         $s7, 0x14($sp)
    /* 151E8 8019E160 1800A0AF */  sw         $zero, 0x18($sp)
    /* 151EC 8019E164 1C00B4AF */  sw         $s4, 0x1C($sp)
    /* 151F0 8019E168 2000B4AF */  sw         $s4, 0x20($sp)
    /* 151F4 8019E16C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 151F8 8019E170 2800A0AF */  sw         $zero, 0x28($sp)
    /* 151FC 8019E174 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 15200 8019E178 3000B3AF */  sw         $s3, 0x30($sp)
    /* 15204 8019E17C 3400B3AF */  sw         $s3, 0x34($sp)
    /* 15208 8019E180 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1520C 8019E184 3C00B6AF */  sw         $s6, 0x3C($sp)
    /* 15210 8019E188 ED4F060C */  jal        func_80193FB4
    /* 15214 8019E18C 4000B5AF */   sw        $s5, 0x40($sp)
    /* 15218 8019E190 01003126 */  addiu      $s1, $s1, 0x1
    /* 1521C 8019E194 0600222A */  slti       $v0, $s1, 0x6
    /* 15220 8019E198 D1FF4014 */  bnez       $v0, .L8019E0E0
    /* 15224 8019E19C 14005226 */   addiu     $s2, $s2, 0x14
    /* 15228 8019E1A0 6800BF8F */  lw         $ra, 0x68($sp)
    /* 1522C 8019E1A4 6400B78F */  lw         $s7, 0x64($sp)
    /* 15230 8019E1A8 6000B68F */  lw         $s6, 0x60($sp)
    /* 15234 8019E1AC 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 15238 8019E1B0 5800B48F */  lw         $s4, 0x58($sp)
    /* 1523C 8019E1B4 5400B38F */  lw         $s3, 0x54($sp)
    /* 15240 8019E1B8 5000B28F */  lw         $s2, 0x50($sp)
    /* 15244 8019E1BC 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 15248 8019E1C0 4800B08F */  lw         $s0, 0x48($sp)
    /* 1524C 8019E1C4 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 15250 8019E1C8 0800E003 */  jr         $ra
    /* 15254 8019E1CC 00000000 */   nop
endlabel func_8019E09C
