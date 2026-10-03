nonmatching func_801C88BC, 0x3F8

glabel func_801C88BC
    /* 3F944 801C88BC 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 3F948 801C88C0 5400B3AF */  sw         $s3, 0x54($sp)
    /* 3F94C 801C88C4 21988000 */  addu       $s3, $a0, $zero
    /* 3F950 801C88C8 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 3F954 801C88CC 21A8A000 */  addu       $s5, $a1, $zero
    /* 3F958 801C88D0 4800B0AF */  sw         $s0, 0x48($sp)
    /* 3F95C 801C88D4 21800000 */  addu       $s0, $zero, $zero
    /* 3F960 801C88D8 6800BEAF */  sw         $fp, 0x68($sp)
    /* 3F964 801C88DC 07901E34 */  ori        $fp, $zero, 0x9007
    /* 3F968 801C88E0 5000B2AF */  sw         $s2, 0x50($sp)
    /* 3F96C 801C88E4 00101224 */  addiu      $s2, $zero, 0x1000
    /* 3F970 801C88E8 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 3F974 801C88EC 80001124 */  addiu      $s1, $zero, 0x80
    /* 3F978 801C88F0 6C00BFAF */  sw         $ra, 0x6C($sp)
    /* 3F97C 801C88F4 6400B7AF */  sw         $s7, 0x64($sp)
    /* 3F980 801C88F8 6000B6AF */  sw         $s6, 0x60($sp)
    /* 3F984 801C88FC 5800B4AF */  sw         $s4, 0x58($sp)
    /* 3F988 801C8900 07000426 */  addiu      $a0, $s0, 0x7
  .L801C8904:
    /* 3F98C 801C8904 21281E02 */  addu       $a1, $s0, $fp
    /* 3F990 801C8908 21300000 */  addu       $a2, $zero, $zero
    /* 3F994 801C890C 21380000 */  addu       $a3, $zero, $zero
    /* 3F998 801C8910 16001624 */  addiu      $s6, $zero, 0x16
    /* 3F99C 801C8914 02001424 */  addiu      $s4, $zero, 0x2
    /* 3F9A0 801C8918 01001724 */  addiu      $s7, $zero, 0x1
    /* 3F9A4 801C891C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3F9A8 801C8920 1400B6AF */  sw         $s6, 0x14($sp)
    /* 3F9AC 801C8924 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3F9B0 801C8928 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3F9B4 801C892C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3F9B8 801C8930 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3F9BC 801C8934 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3F9C0 801C8938 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 3F9C4 801C893C 3000B1AF */  sw         $s1, 0x30($sp)
    /* 3F9C8 801C8940 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3F9CC 801C8944 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3F9D0 801C8948 3C00B4AF */  sw         $s4, 0x3C($sp)
    /* 3F9D4 801C894C ED4F060C */  jal        func_80193FB4
    /* 3F9D8 801C8950 4000B7AF */   sw        $s7, 0x40($sp)
    /* 3F9DC 801C8954 01001026 */  addiu      $s0, $s0, 0x1
    /* 3F9E0 801C8958 0500022A */  slti       $v0, $s0, 0x5
    /* 3F9E4 801C895C E9FF4014 */  bnez       $v0, .L801C8904
    /* 3F9E8 801C8960 07000426 */   addiu     $a0, $s0, 0x7
    /* 3F9EC 801C8964 FF007332 */  andi       $s3, $s3, 0xFF
    /* 3F9F0 801C8968 01001E24 */  addiu      $fp, $zero, 0x1
    /* 3F9F4 801C896C 05007E12 */  beq        $s3, $fp, .L801C8984
    /* 3F9F8 801C8970 0C900534 */   ori       $a1, $zero, 0x900C
    /* 3F9FC 801C8974 18007412 */  beq        $s3, $s4, .L801C89D8
    /* 3FA00 801C8978 FF00B032 */   andi      $s0, $s5, 0xFF
    /* 3FA04 801C897C 20230708 */  j          .L801C8C80
    /* 3FA08 801C8980 00000000 */   nop
  .L801C8984:
    /* 3FA0C 801C8984 FF00A232 */  andi       $v0, $s5, 0xFF
    /* 3FA10 801C8988 07004424 */  addiu      $a0, $v0, 0x7
    /* 3FA14 801C898C 21284500 */  addu       $a1, $v0, $a1
    /* 3FA18 801C8990 21300000 */  addu       $a2, $zero, $zero
    /* 3FA1C 801C8994 21380000 */  addu       $a3, $zero, $zero
    /* 3FA20 801C8998 00100224 */  addiu      $v0, $zero, 0x1000
    /* 3FA24 801C899C 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 3FA28 801C89A0 2000A2AF */  sw         $v0, 0x20($sp)
    /* 3FA2C 801C89A4 80000224 */  addiu      $v0, $zero, 0x80
    /* 3FA30 801C89A8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3FA34 801C89AC 1400B6AF */  sw         $s6, 0x14($sp)
    /* 3FA38 801C89B0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3FA3C 801C89B4 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3FA40 801C89B8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3FA44 801C89BC 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 3FA48 801C89C0 3000A2AF */  sw         $v0, 0x30($sp)
    /* 3FA4C 801C89C4 3400A2AF */  sw         $v0, 0x34($sp)
    /* 3FA50 801C89C8 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3FA54 801C89CC 3C00B4AF */  sw         $s4, 0x3C($sp)
    /* 3FA58 801C89D0 1E230708 */  j          .L801C8C78
    /* 3FA5C 801C89D4 4000BEAF */   sw        $fp, 0x40($sp)
  .L801C89D8:
    /* 3FA60 801C89D8 07000426 */  addiu      $a0, $s0, 0x7
    /* 3FA64 801C89DC 11900534 */  ori        $a1, $zero, 0x9011
    /* 3FA68 801C89E0 21280502 */  addu       $a1, $s0, $a1
    /* 3FA6C 801C89E4 21300000 */  addu       $a2, $zero, $zero
    /* 3FA70 801C89E8 21380000 */  addu       $a3, $zero, $zero
    /* 3FA74 801C89EC 16001424 */  addiu      $s4, $zero, 0x16
    /* 3FA78 801C89F0 00101224 */  addiu      $s2, $zero, 0x1000
    /* 3FA7C 801C89F4 80001124 */  addiu      $s1, $zero, 0x80
    /* 3FA80 801C89F8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3FA84 801C89FC 1400B4AF */  sw         $s4, 0x14($sp)
    /* 3FA88 801C8A00 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3FA8C 801C8A04 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3FA90 801C8A08 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3FA94 801C8A0C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3FA98 801C8A10 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3FA9C 801C8A14 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 3FAA0 801C8A18 3000B1AF */  sw         $s1, 0x30($sp)
    /* 3FAA4 801C8A1C 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3FAA8 801C8A20 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3FAAC 801C8A24 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3FAB0 801C8A28 ED4F060C */  jal        func_80193FB4
    /* 3FAB4 801C8A2C 4000BEAF */   sw        $fp, 0x40($sp)
    /* 3FAB8 801C8A30 5C000016 */  bnez       $s0, .L801C8BA4
    /* 3FABC 801C8A34 00000000 */   nop
    /* 3FAC0 801C8A38 1E80023C */  lui        $v0, %hi(D_801D8DFE)
    /* 3FAC4 801C8A3C FE8D4290 */  lbu        $v0, %lo(D_801D8DFE)($v0)
    /* 3FAC8 801C8A40 00000000 */  nop
    /* 3FACC 801C8A44 57004014 */  bnez       $v0, .L801C8BA4
    /* 3FAD0 801C8A48 00000000 */   nop
    /* 3FAD4 801C8A4C 1E80033C */  lui        $v1, %hi(D_801D8DFD)
    /* 3FAD8 801C8A50 FD8D6390 */  lbu        $v1, %lo(D_801D8DFD)($v1)
    /* 3FADC 801C8A54 00000000 */  nop
    /* 3FAE0 801C8A58 FEFF6224 */  addiu      $v0, $v1, -0x2
    /* 3FAE4 801C8A5C 0200422C */  sltiu      $v0, $v0, 0x2
    /* 3FAE8 801C8A60 12004010 */  beqz       $v0, .L801C8AAC
    /* 3FAEC 801C8A64 08000424 */   addiu     $a0, $zero, 0x8
    /* 3FAF0 801C8A68 0D900534 */  ori        $a1, $zero, 0x900D
    /* 3FAF4 801C8A6C 21300000 */  addu       $a2, $zero, $zero
    /* 3FAF8 801C8A70 21380000 */  addu       $a3, $zero, $zero
    /* 3FAFC 801C8A74 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3FB00 801C8A78 1400B4AF */  sw         $s4, 0x14($sp)
    /* 3FB04 801C8A7C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3FB08 801C8A80 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3FB0C 801C8A84 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3FB10 801C8A88 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3FB14 801C8A8C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3FB18 801C8A90 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 3FB1C 801C8A94 3000B1AF */  sw         $s1, 0x30($sp)
    /* 3FB20 801C8A98 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3FB24 801C8A9C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3FB28 801C8AA0 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3FB2C 801C8AA4 1E230708 */  j          .L801C8C78
    /* 3FB30 801C8AA8 4000BEAF */   sw        $fp, 0x40($sp)
  .L801C8AAC:
    /* 3FB34 801C8AAC FCFF6224 */  addiu      $v0, $v1, -0x4
    /* 3FB38 801C8AB0 0400422C */  sltiu      $v0, $v0, 0x4
    /* 3FB3C 801C8AB4 12004010 */  beqz       $v0, .L801C8B00
    /* 3FB40 801C8AB8 09000424 */   addiu     $a0, $zero, 0x9
    /* 3FB44 801C8ABC 0E900534 */  ori        $a1, $zero, 0x900E
    /* 3FB48 801C8AC0 21300000 */  addu       $a2, $zero, $zero
    /* 3FB4C 801C8AC4 21380000 */  addu       $a3, $zero, $zero
    /* 3FB50 801C8AC8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3FB54 801C8ACC 1400B4AF */  sw         $s4, 0x14($sp)
    /* 3FB58 801C8AD0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3FB5C 801C8AD4 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3FB60 801C8AD8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3FB64 801C8ADC 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3FB68 801C8AE0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3FB6C 801C8AE4 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 3FB70 801C8AE8 3000B1AF */  sw         $s1, 0x30($sp)
    /* 3FB74 801C8AEC 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3FB78 801C8AF0 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3FB7C 801C8AF4 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3FB80 801C8AF8 1E230708 */  j          .L801C8C78
    /* 3FB84 801C8AFC 4000BEAF */   sw        $fp, 0x40($sp)
  .L801C8B00:
    /* 3FB88 801C8B00 F8FF6224 */  addiu      $v0, $v1, -0x8
    /* 3FB8C 801C8B04 0400422C */  sltiu      $v0, $v0, 0x4
    /* 3FB90 801C8B08 12004010 */  beqz       $v0, .L801C8B54
    /* 3FB94 801C8B0C 0A000424 */   addiu     $a0, $zero, 0xA
    /* 3FB98 801C8B10 0F900534 */  ori        $a1, $zero, 0x900F
    /* 3FB9C 801C8B14 21300000 */  addu       $a2, $zero, $zero
    /* 3FBA0 801C8B18 21380000 */  addu       $a3, $zero, $zero
    /* 3FBA4 801C8B1C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3FBA8 801C8B20 1400B4AF */  sw         $s4, 0x14($sp)
    /* 3FBAC 801C8B24 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3FBB0 801C8B28 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3FBB4 801C8B2C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3FBB8 801C8B30 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3FBBC 801C8B34 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3FBC0 801C8B38 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 3FBC4 801C8B3C 3000B1AF */  sw         $s1, 0x30($sp)
    /* 3FBC8 801C8B40 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3FBCC 801C8B44 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3FBD0 801C8B48 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3FBD4 801C8B4C 1E230708 */  j          .L801C8C78
    /* 3FBD8 801C8B50 4000BEAF */   sw        $fp, 0x40($sp)
  .L801C8B54:
    /* 3FBDC 801C8B54 0C00622C */  sltiu      $v0, $v1, 0xC
    /* 3FBE0 801C8B58 49004014 */  bnez       $v0, .L801C8C80
    /* 3FBE4 801C8B5C 0B000424 */   addiu     $a0, $zero, 0xB
    /* 3FBE8 801C8B60 10900534 */  ori        $a1, $zero, 0x9010
    /* 3FBEC 801C8B64 21300000 */  addu       $a2, $zero, $zero
    /* 3FBF0 801C8B68 21380000 */  addu       $a3, $zero, $zero
    /* 3FBF4 801C8B6C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3FBF8 801C8B70 1400B6AF */  sw         $s6, 0x14($sp)
    /* 3FBFC 801C8B74 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3FC00 801C8B78 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3FC04 801C8B7C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3FC08 801C8B80 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3FC0C 801C8B84 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3FC10 801C8B88 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 3FC14 801C8B8C 3000B1AF */  sw         $s1, 0x30($sp)
    /* 3FC18 801C8B90 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3FC1C 801C8B94 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3FC20 801C8B98 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3FC24 801C8B9C 1E230708 */  j          .L801C8C78
    /* 3FC28 801C8BA0 4000B7AF */   sw        $s7, 0x40($sp)
  .L801C8BA4:
    /* 3FC2C 801C8BA4 FF00B032 */  andi       $s0, $s5, 0xFF
    /* 3FC30 801C8BA8 01000224 */  addiu      $v0, $zero, 0x1
    /* 3FC34 801C8BAC 34000216 */  bne        $s0, $v0, .L801C8C80
    /* 3FC38 801C8BB0 00000000 */   nop
    /* 3FC3C 801C8BB4 1E80023C */  lui        $v0, %hi(D_801D8DFE)
    /* 3FC40 801C8BB8 FE8D4290 */  lbu        $v0, %lo(D_801D8DFE)($v0)
    /* 3FC44 801C8BBC 00000000 */  nop
    /* 3FC48 801C8BC0 2F004014 */  bnez       $v0, .L801C8C80
    /* 3FC4C 801C8BC4 00000000 */   nop
    /* 3FC50 801C8BC8 1E80033C */  lui        $v1, %hi(D_801D8DFD)
    /* 3FC54 801C8BCC FD8D6390 */  lbu        $v1, %lo(D_801D8DFD)($v1)
    /* 3FC58 801C8BD0 00000000 */  nop
    /* 3FC5C 801C8BD4 FF006430 */  andi       $a0, $v1, 0xFF
    /* 3FC60 801C8BD8 0200822C */  sltiu      $v0, $a0, 0x2
    /* 3FC64 801C8BDC 03004010 */  beqz       $v0, .L801C8BEC
    /* 3FC68 801C8BE0 0C900534 */   ori       $a1, $zero, 0x900C
    /* 3FC6C 801C8BE4 0B230708 */  j          .L801C8C2C
    /* 3FC70 801C8BE8 07000424 */   addiu     $a0, $zero, 0x7
  .L801C8BEC:
    /* 3FC74 801C8BEC FCFF6224 */  addiu      $v0, $v1, -0x4
    /* 3FC78 801C8BF0 0400422C */  sltiu      $v0, $v0, 0x4
    /* 3FC7C 801C8BF4 03004010 */  beqz       $v0, .L801C8C04
    /* 3FC80 801C8BF8 0E900534 */   ori       $a1, $zero, 0x900E
    /* 3FC84 801C8BFC 0B230708 */  j          .L801C8C2C
    /* 3FC88 801C8C00 09000424 */   addiu     $a0, $zero, 0x9
  .L801C8C04:
    /* 3FC8C 801C8C04 F8FF6224 */  addiu      $v0, $v1, -0x8
    /* 3FC90 801C8C08 0400422C */  sltiu      $v0, $v0, 0x4
    /* 3FC94 801C8C0C 03004010 */  beqz       $v0, .L801C8C1C
    /* 3FC98 801C8C10 0F900534 */   ori       $a1, $zero, 0x900F
    /* 3FC9C 801C8C14 0B230708 */  j          .L801C8C2C
    /* 3FCA0 801C8C18 0A000424 */   addiu     $a0, $zero, 0xA
  .L801C8C1C:
    /* 3FCA4 801C8C1C 0C00822C */  sltiu      $v0, $a0, 0xC
    /* 3FCA8 801C8C20 17004014 */  bnez       $v0, .L801C8C80
    /* 3FCAC 801C8C24 0B000424 */   addiu     $a0, $zero, 0xB
    /* 3FCB0 801C8C28 10900534 */  ori        $a1, $zero, 0x9010
  .L801C8C2C:
    /* 3FCB4 801C8C2C 21300000 */  addu       $a2, $zero, $zero
    /* 3FCB8 801C8C30 21380000 */  addu       $a3, $zero, $zero
    /* 3FCBC 801C8C34 16000224 */  addiu      $v0, $zero, 0x16
    /* 3FCC0 801C8C38 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3FCC4 801C8C3C 00100224 */  addiu      $v0, $zero, 0x1000
    /* 3FCC8 801C8C40 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 3FCCC 801C8C44 2000A2AF */  sw         $v0, 0x20($sp)
    /* 3FCD0 801C8C48 80000224 */  addiu      $v0, $zero, 0x80
    /* 3FCD4 801C8C4C 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 3FCD8 801C8C50 3000A2AF */  sw         $v0, 0x30($sp)
    /* 3FCDC 801C8C54 3400A2AF */  sw         $v0, 0x34($sp)
    /* 3FCE0 801C8C58 02000224 */  addiu      $v0, $zero, 0x2
    /* 3FCE4 801C8C5C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3FCE8 801C8C60 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3FCEC 801C8C64 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3FCF0 801C8C68 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3FCF4 801C8C6C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3FCF8 801C8C70 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 3FCFC 801C8C74 4000B0AF */  sw         $s0, 0x40($sp)
  .L801C8C78:
    /* 3FD00 801C8C78 ED4F060C */  jal        func_80193FB4
    /* 3FD04 801C8C7C 00000000 */   nop
  .L801C8C80:
    /* 3FD08 801C8C80 6C00BF8F */  lw         $ra, 0x6C($sp)
    /* 3FD0C 801C8C84 6800BE8F */  lw         $fp, 0x68($sp)
    /* 3FD10 801C8C88 6400B78F */  lw         $s7, 0x64($sp)
    /* 3FD14 801C8C8C 6000B68F */  lw         $s6, 0x60($sp)
    /* 3FD18 801C8C90 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 3FD1C 801C8C94 5800B48F */  lw         $s4, 0x58($sp)
    /* 3FD20 801C8C98 5400B38F */  lw         $s3, 0x54($sp)
    /* 3FD24 801C8C9C 5000B28F */  lw         $s2, 0x50($sp)
    /* 3FD28 801C8CA0 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 3FD2C 801C8CA4 4800B08F */  lw         $s0, 0x48($sp)
    /* 3FD30 801C8CA8 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 3FD34 801C8CAC 0800E003 */  jr         $ra
    /* 3FD38 801C8CB0 00000000 */   nop
endlabel func_801C88BC
