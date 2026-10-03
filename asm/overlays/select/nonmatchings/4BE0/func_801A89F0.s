nonmatching func_801A89F0, 0x2E0

glabel func_801A89F0
    /* 1FA78 801A89F0 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 1FA7C 801A89F4 3800B4AF */  sw         $s4, 0x38($sp)
    /* 1FA80 801A89F8 21A0E000 */  addu       $s4, $a3, $zero
    /* 1FA84 801A89FC 6400A793 */  lbu        $a3, 0x64($sp)
    /* 1FA88 801A8A00 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 1FA8C 801A8A04 21888000 */  addu       $s1, $a0, $zero
    /* 1FA90 801A8A08 4800BEAF */  sw         $fp, 0x48($sp)
    /* 1FA94 801A8A0C 21F0A000 */  addu       $fp, $a1, $zero
    /* 1FA98 801A8A10 4400B7AF */  sw         $s7, 0x44($sp)
    /* 1FA9C 801A8A14 6800B793 */  lbu        $s7, 0x68($sp)
    /* 1FAA0 801A8A18 FFFF8232 */  andi       $v0, $s4, 0xFFFF
    /* 1FAA4 801A8A1C 4000B6AF */  sw         $s6, 0x40($sp)
    /* 1FAA8 801A8A20 6C00B693 */  lbu        $s6, 0x6C($sp)
    /* 1FAAC 801A8A24 E803422C */  sltiu      $v0, $v0, 0x3E8
    /* 1FAB0 801A8A28 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* 1FAB4 801A8A2C 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 1FAB8 801A8A30 3400B3AF */  sw         $s3, 0x34($sp)
    /* 1FABC 801A8A34 3000B2AF */  sw         $s2, 0x30($sp)
    /* 1FAC0 801A8A38 02004014 */  bnez       $v0, .L801A8A44
    /* 1FAC4 801A8A3C 2800B0AF */   sw        $s0, 0x28($sp)
    /* 1FAC8 801A8A40 E7031424 */  addiu      $s4, $zero, 0x3E7
  .L801A8A44:
    /* 1FACC 801A8A44 EB51023C */  lui        $v0, (0x51EB851F >> 16)
    /* 1FAD0 801A8A48 1F854234 */  ori        $v0, $v0, (0x51EB851F & 0xFFFF)
    /* 1FAD4 801A8A4C FFFF8532 */  andi       $a1, $s4, 0xFFFF
    /* 1FAD8 801A8A50 1900A200 */  multu      $a1, $v0
    /* 1FADC 801A8A54 CCCC033C */  lui        $v1, (0xCCCCCCCD >> 16)
    /* 1FAE0 801A8A58 CDCC6334 */  ori        $v1, $v1, (0xCCCCCCCD & 0xFFFF)
    /* 1FAE4 801A8A5C 10100000 */  mfhi       $v0
    /* 1FAE8 801A8A60 42210200 */  srl        $a0, $v0, 5
    /* 1FAEC 801A8A64 40100400 */  sll        $v0, $a0, 1
    /* 1FAF0 801A8A68 21104400 */  addu       $v0, $v0, $a0
    /* 1FAF4 801A8A6C C0100200 */  sll        $v0, $v0, 3
    /* 1FAF8 801A8A70 21104400 */  addu       $v0, $v0, $a0
    /* 1FAFC 801A8A74 80100200 */  sll        $v0, $v0, 2
    /* 1FB00 801A8A78 2310A200 */  subu       $v0, $a1, $v0
    /* 1FB04 801A8A7C FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 1FB08 801A8A80 19004300 */  multu      $v0, $v1
    /* 1FB0C 801A8A84 10100000 */  mfhi       $v0
    /* 1FB10 801A8A88 00000000 */  nop
    /* 1FB14 801A8A8C 00000000 */  nop
    /* 1FB18 801A8A90 1900A300 */  multu      $a1, $v1
    /* 1FB1C 801A8A94 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* 1FB20 801A8A98 1800A4AF */  sw         $a0, 0x18($sp)
    /* 1FB24 801A8A9C C2100200 */  srl        $v0, $v0, 3
    /* 1FB28 801A8AA0 FFFF5530 */  andi       $s5, $v0, 0xFFFF
    /* 1FB2C 801A8AA4 10180000 */  mfhi       $v1
    /* 1FB30 801A8AA8 C2180300 */  srl        $v1, $v1, 3
    /* 1FB34 801A8AAC 80100300 */  sll        $v0, $v1, 2
    /* 1FB38 801A8AB0 21104300 */  addu       $v0, $v0, $v1
    /* 1FB3C 801A8AB4 40100200 */  sll        $v0, $v0, 1
    /* 1FB40 801A8AB8 2310A200 */  subu       $v0, $a1, $v0
    /* 1FB44 801A8ABC FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 1FB48 801A8AC0 2000A2AF */  sw         $v0, 0x20($sp)
    /* 1FB4C 801A8AC4 6400A22C */  sltiu      $v0, $a1, 0x64
    /* 1FB50 801A8AC8 03004014 */  bnez       $v0, .L801A8AD8
    /* 1FB54 801A8ACC 0A00A22C */   sltiu     $v0, $a1, 0xA
    /* 1FB58 801A8AD0 B9A20608 */  j          .L801A8AE4
    /* 1FB5C 801A8AD4 03000424 */   addiu     $a0, $zero, 0x3
  .L801A8AD8:
    /* 1FB60 801A8AD8 02004014 */  bnez       $v0, .L801A8AE4
    /* 1FB64 801A8ADC 01000424 */   addiu     $a0, $zero, 0x1
    /* 1FB68 801A8AE0 02000424 */  addiu      $a0, $zero, 0x2
  .L801A8AE4:
    /* 1FB6C 801A8AE4 FF00F332 */  andi       $s3, $s7, 0xFF
    /* 1FB70 801A8AE8 07000224 */  addiu      $v0, $zero, 0x7
    /* 1FB74 801A8AEC 02006216 */  bne        $s3, $v0, .L801A8AF8
    /* 1FB78 801A8AF0 08000524 */   addiu     $a1, $zero, 0x8
    /* 1FB7C 801A8AF4 06000524 */  addiu      $a1, $zero, 0x6
  .L801A8AF8:
    /* 1FB80 801A8AF8 FF00E330 */  andi       $v1, $a3, 0xFF
    /* 1FB84 801A8AFC 02000224 */  addiu      $v0, $zero, 0x2
    /* 1FB88 801A8B00 3B006210 */  beq        $v1, $v0, .L801A8BF0
    /* 1FB8C 801A8B04 03006228 */   slti      $v0, $v1, 0x3
    /* 1FB90 801A8B08 0C004014 */  bnez       $v0, .L801A8B3C
    /* 1FB94 801A8B0C 03000224 */   addiu     $v0, $zero, 0x3
    /* 1FB98 801A8B10 0B006214 */  bne        $v1, $v0, .L801A8B40
    /* 1FB9C 801A8B14 FFFF8732 */   andi      $a3, $s4, 0xFFFF
    /* 1FBA0 801A8B18 6000A88F */  lw         $t0, 0x60($sp)
    /* 1FBA4 801A8B1C FFFF8224 */  addiu      $v0, $a0, -0x1
    /* 1FBA8 801A8B20 18004800 */  mult       $v0, $t0
    /* 1FBAC 801A8B24 FFFFC230 */  andi       $v0, $a2, 0xFFFF
    /* 1FBB0 801A8B28 12400000 */  mflo       $t0
    /* 1FBB4 801A8B2C 21180501 */  addu       $v1, $t0, $a1
    /* 1FBB8 801A8B30 23104300 */  subu       $v0, $v0, $v1
    /* 1FBBC 801A8B34 43100200 */  sra        $v0, $v0, 1
    /* 1FBC0 801A8B38 21882202 */  addu       $s1, $s1, $v0
  .L801A8B3C:
    /* 1FBC4 801A8B3C FFFF8732 */  andi       $a3, $s4, 0xFFFF
  .L801A8B40:
    /* 1FBC8 801A8B40 6400E22C */  sltiu      $v0, $a3, 0x64
    /* 1FBCC 801A8B44 15004014 */  bnez       $v0, .L801A8B9C
    /* 1FBD0 801A8B48 0A00E22C */   sltiu     $v0, $a3, 0xA
    /* 1FBD4 801A8B4C 00241100 */  sll        $a0, $s1, 16
    /* 1FBD8 801A8B50 03240400 */  sra        $a0, $a0, 16
    /* 1FBDC 801A8B54 00841E00 */  sll        $s0, $fp, 16
    /* 1FBE0 801A8B58 03841000 */  sra        $s0, $s0, 16
    /* 1FBE4 801A8B5C 21280002 */  addu       $a1, $s0, $zero
    /* 1FBE8 801A8B60 FF00F332 */  andi       $s3, $s7, 0xFF
    /* 1FBEC 801A8B64 21386002 */  addu       $a3, $s3, $zero
    /* 1FBF0 801A8B68 1800A693 */  lbu        $a2, 0x18($sp)
    /* 1FBF4 801A8B6C FF00D232 */  andi       $s2, $s6, 0xFF
    /* 1FBF8 801A8B70 6CA1060C */  jal        func_801A85B0
    /* 1FBFC 801A8B74 1000B2AF */   sw        $s2, 0x10($sp)
    /* 1FC00 801A8B78 21280002 */  addu       $a1, $s0, $zero
    /* 1FC04 801A8B7C FF00A632 */  andi       $a2, $s5, 0xFF
    /* 1FC08 801A8B80 6000A88F */  lw         $t0, 0x60($sp)
    /* 1FC0C 801A8B84 21386002 */  addu       $a3, $s3, $zero
    /* 1FC10 801A8B88 1000B2AF */  sw         $s2, 0x10($sp)
    /* 1FC14 801A8B8C 21882802 */  addu       $s1, $s1, $t0
    /* 1FC18 801A8B90 00241100 */  sll        $a0, $s1, 16
    /* 1FC1C 801A8B94 EFA20608 */  j          .L801A8BBC
    /* 1FC20 801A8B98 03240400 */   sra       $a0, $a0, 16
  .L801A8B9C:
    /* 1FC24 801A8B9C 0D004014 */  bnez       $v0, .L801A8BD4
    /* 1FC28 801A8BA0 00241100 */   sll       $a0, $s1, 16
    /* 1FC2C 801A8BA4 03240400 */  sra        $a0, $a0, 16
    /* 1FC30 801A8BA8 002C1E00 */  sll        $a1, $fp, 16
    /* 1FC34 801A8BAC 032C0500 */  sra        $a1, $a1, 16
    /* 1FC38 801A8BB0 FF00A632 */  andi       $a2, $s5, 0xFF
    /* 1FC3C 801A8BB4 2138E002 */  addu       $a3, $s7, $zero
    /* 1FC40 801A8BB8 1000B6AF */  sw         $s6, 0x10($sp)
  .L801A8BBC:
    /* 1FC44 801A8BBC 6CA1060C */  jal        func_801A85B0
    /* 1FC48 801A8BC0 00000000 */   nop
    /* 1FC4C 801A8BC4 6000A88F */  lw         $t0, 0x60($sp)
    /* 1FC50 801A8BC8 00000000 */  nop
    /* 1FC54 801A8BCC 21882802 */  addu       $s1, $s1, $t0
    /* 1FC58 801A8BD0 00241100 */  sll        $a0, $s1, 16
  .L801A8BD4:
    /* 1FC5C 801A8BD4 03240400 */  sra        $a0, $a0, 16
    /* 1FC60 801A8BD8 002C1E00 */  sll        $a1, $fp, 16
    /* 1FC64 801A8BDC 032C0500 */  sra        $a1, $a1, 16
    /* 1FC68 801A8BE0 2000A693 */  lbu        $a2, 0x20($sp)
    /* 1FC6C 801A8BE4 2138E002 */  addu       $a3, $s7, $zero
    /* 1FC70 801A8BE8 25A30608 */  j          .L801A8C94
    /* 1FC74 801A8BEC 1000B6AF */   sw        $s6, 0x10($sp)
  .L801A8BF0:
    /* 1FC78 801A8BF0 FF00D232 */  andi       $s2, $s6, 0xFF
    /* 1FC7C 801A8BF4 21802602 */  addu       $s0, $s1, $a2
    /* 1FC80 801A8BF8 23800502 */  subu       $s0, $s0, $a1
    /* 1FC84 801A8BFC 00241000 */  sll        $a0, $s0, 16
    /* 1FC88 801A8C00 03240400 */  sra        $a0, $a0, 16
    /* 1FC8C 801A8C04 00141E00 */  sll        $v0, $fp, 16
    /* 1FC90 801A8C08 038C0200 */  sra        $s1, $v0, 16
    /* 1FC94 801A8C0C 21282002 */  addu       $a1, $s1, $zero
    /* 1FC98 801A8C10 2000A693 */  lbu        $a2, 0x20($sp)
    /* 1FC9C 801A8C14 21386002 */  addu       $a3, $s3, $zero
    /* 1FCA0 801A8C18 6CA1060C */  jal        func_801A85B0
    /* 1FCA4 801A8C1C 1000B2AF */   sw        $s2, 0x10($sp)
    /* 1FCA8 801A8C20 FFFF8732 */  andi       $a3, $s4, 0xFFFF
    /* 1FCAC 801A8C24 6000A88F */  lw         $t0, 0x60($sp)
    /* 1FCB0 801A8C28 6400E22C */  sltiu      $v0, $a3, 0x64
    /* 1FCB4 801A8C2C 11004014 */  bnez       $v0, .L801A8C74
    /* 1FCB8 801A8C30 23800802 */   subu      $s0, $s0, $t0
    /* 1FCBC 801A8C34 00241000 */  sll        $a0, $s0, 16
    /* 1FCC0 801A8C38 03240400 */  sra        $a0, $a0, 16
    /* 1FCC4 801A8C3C 21282002 */  addu       $a1, $s1, $zero
    /* 1FCC8 801A8C40 FF00A632 */  andi       $a2, $s5, 0xFF
    /* 1FCCC 801A8C44 21386002 */  addu       $a3, $s3, $zero
    /* 1FCD0 801A8C48 6CA1060C */  jal        func_801A85B0
    /* 1FCD4 801A8C4C 1000B2AF */   sw        $s2, 0x10($sp)
    /* 1FCD8 801A8C50 21282002 */  addu       $a1, $s1, $zero
    /* 1FCDC 801A8C54 6000A88F */  lw         $t0, 0x60($sp)
    /* 1FCE0 801A8C58 1800A693 */  lbu        $a2, 0x18($sp)
    /* 1FCE4 801A8C5C 21386002 */  addu       $a3, $s3, $zero
    /* 1FCE8 801A8C60 1000B2AF */  sw         $s2, 0x10($sp)
    /* 1FCEC 801A8C64 23200802 */  subu       $a0, $s0, $t0
    /* 1FCF0 801A8C68 00240400 */  sll        $a0, $a0, 16
    /* 1FCF4 801A8C6C 25A30608 */  j          .L801A8C94
    /* 1FCF8 801A8C70 03240400 */   sra       $a0, $a0, 16
  .L801A8C74:
    /* 1FCFC 801A8C74 0A00E22C */  sltiu      $v0, $a3, 0xA
    /* 1FD00 801A8C78 08004014 */  bnez       $v0, .L801A8C9C
    /* 1FD04 801A8C7C 00241000 */   sll       $a0, $s0, 16
    /* 1FD08 801A8C80 1000B2AF */  sw         $s2, 0x10($sp)
    /* 1FD0C 801A8C84 03240400 */  sra        $a0, $a0, 16
    /* 1FD10 801A8C88 21282002 */  addu       $a1, $s1, $zero
    /* 1FD14 801A8C8C FF00A632 */  andi       $a2, $s5, 0xFF
    /* 1FD18 801A8C90 21386002 */  addu       $a3, $s3, $zero
  .L801A8C94:
    /* 1FD1C 801A8C94 6CA1060C */  jal        func_801A85B0
    /* 1FD20 801A8C98 00000000 */   nop
  .L801A8C9C:
    /* 1FD24 801A8C9C 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* 1FD28 801A8CA0 4800BE8F */  lw         $fp, 0x48($sp)
    /* 1FD2C 801A8CA4 4400B78F */  lw         $s7, 0x44($sp)
    /* 1FD30 801A8CA8 4000B68F */  lw         $s6, 0x40($sp)
    /* 1FD34 801A8CAC 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 1FD38 801A8CB0 3800B48F */  lw         $s4, 0x38($sp)
    /* 1FD3C 801A8CB4 3400B38F */  lw         $s3, 0x34($sp)
    /* 1FD40 801A8CB8 3000B28F */  lw         $s2, 0x30($sp)
    /* 1FD44 801A8CBC 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 1FD48 801A8CC0 2800B08F */  lw         $s0, 0x28($sp)
    /* 1FD4C 801A8CC4 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 1FD50 801A8CC8 0800E003 */  jr         $ra
    /* 1FD54 801A8CCC 00000000 */   nop
endlabel func_801A89F0
