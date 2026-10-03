nonmatching func_8019D904, 0x238

glabel func_8019D904
    /* 1498C 8019D904 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 14990 8019D908 1080063C */  lui        $a2, %hi(D_800FF748)
    /* 14994 8019D90C 48F7C624 */  addiu      $a2, $a2, %lo(D_800FF748)
    /* 14998 8019D910 FF008430 */  andi       $a0, $a0, 0xFF
    /* 1499C 8019D914 02000224 */  addiu      $v0, $zero, 0x2
    /* 149A0 8019D918 1800BFAF */  sw         $ra, 0x18($sp)
    /* 149A4 8019D91C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 149A8 8019D920 4F008210 */  beq        $a0, $v0, .L8019DA60
    /* 149AC 8019D924 1000B0AF */   sw        $s0, 0x10($sp)
    /* 149B0 8019D928 03008228 */  slti       $v0, $a0, 0x3
    /* 149B4 8019D92C 05004010 */  beqz       $v0, .L8019D944
    /* 149B8 8019D930 01000224 */   addiu     $v0, $zero, 0x1
    /* 149BC 8019D934 0B008210 */  beq        $a0, $v0, .L8019D964
    /* 149C0 8019D938 00000000 */   nop
    /* 149C4 8019D93C C9760608 */  j          .L8019DB24
    /* 149C8 8019D940 00000000 */   nop
  .L8019D944:
    /* 149CC 8019D944 0B000224 */  addiu      $v0, $zero, 0xB
    /* 149D0 8019D948 05008210 */  beq        $a0, $v0, .L8019D960
    /* 149D4 8019D94C 0D000224 */   addiu     $v0, $zero, 0xD
    /* 149D8 8019D950 6E008210 */  beq        $a0, $v0, .L8019DB0C
    /* 149DC 8019D954 28000424 */   addiu     $a0, $zero, 0x28
    /* 149E0 8019D958 C9760608 */  j          .L8019DB24
    /* 149E4 8019D95C 00000000 */   nop
  .L8019D960:
    /* 149E8 8019D960 01000224 */  addiu      $v0, $zero, 0x1
  .L8019D964:
    /* 149EC 8019D964 1E80033C */  lui        $v1, %hi(D_801D8DF5)
    /* 149F0 8019D968 F58D6390 */  lbu        $v1, %lo(D_801D8DF5)($v1)
    /* 149F4 8019D96C 0C64C58C */  lw         $a1, 0x640C($a2)
    /* 149F8 8019D970 0D006210 */  beq        $v1, $v0, .L8019D9A8
    /* 149FC 8019D974 A8000224 */   addiu     $v0, $zero, 0xA8
    /* 14A00 8019D978 02006228 */  slti       $v0, $v1, 0x2
    /* 14A04 8019D97C 05004010 */  beqz       $v0, .L8019D994
    /* 14A08 8019D980 00000000 */   nop
    /* 14A0C 8019D984 0D006010 */  beqz       $v1, .L8019D9BC
    /* 14A10 8019D988 80000224 */   addiu     $v0, $zero, 0x80
    /* 14A14 8019D98C 75760608 */  j          .L8019D9D4
    /* 14A18 8019D990 08000224 */   addiu     $v0, $zero, 0x8
  .L8019D994:
    /* 14A1C 8019D994 02000224 */  addiu      $v0, $zero, 0x2
    /* 14A20 8019D998 08006210 */  beq        $v1, $v0, .L8019D9BC
    /* 14A24 8019D99C D8000224 */   addiu     $v0, $zero, 0xD8
    /* 14A28 8019D9A0 75760608 */  j          .L8019D9D4
    /* 14A2C 8019D9A4 08000224 */   addiu     $v0, $zero, 0x8
  .L8019D9A8:
    /* 14A30 8019D9A8 0300A2A0 */  sb         $v0, 0x3($a1)
    /* 14A34 8019D9AC 30000224 */  addiu      $v0, $zero, 0x30
    /* 14A38 8019D9B0 0100A2A0 */  sb         $v0, 0x1($a1)
    /* 14A3C 8019D9B4 73760608 */  j          .L8019D9CC
    /* 14A40 8019D9B8 30000224 */   addiu     $v0, $zero, 0x30
  .L8019D9BC:
    /* 14A44 8019D9BC 0300A2A0 */  sb         $v0, 0x3($a1)
    /* 14A48 8019D9C0 28000224 */  addiu      $v0, $zero, 0x28
    /* 14A4C 8019D9C4 0100A2A0 */  sb         $v0, 0x1($a1)
    /* 14A50 8019D9C8 34000224 */  addiu      $v0, $zero, 0x34
  .L8019D9CC:
    /* 14A54 8019D9CC 0600A2A4 */  sh         $v0, 0x6($a1)
    /* 14A58 8019D9D0 08000224 */  addiu      $v0, $zero, 0x8
  .L8019D9D4:
    /* 14A5C 8019D9D4 3464C58C */  lw         $a1, 0x6434($a2)
    /* 14A60 8019D9D8 1E80033C */  lui        $v1, %hi(D_801D8DF6)
    /* 14A64 8019D9DC F68D6324 */  addiu      $v1, $v1, %lo(D_801D8DF6)
    /* 14A68 8019D9E0 0D00A2A0 */  sb         $v0, 0xD($a1)
    /* 14A6C 8019D9E4 00006290 */  lbu        $v0, 0x0($v1)
    /* 14A70 8019D9E8 00000000 */  nop
    /* 14A74 8019D9EC 05004014 */  bnez       $v0, .L8019DA04
    /* 14A78 8019D9F0 6666043C */   lui       $a0, (0x66666667 >> 16)
    /* 14A7C 8019D9F4 A8000224 */  addiu      $v0, $zero, 0xA8
    /* 14A80 8019D9F8 0300A2A0 */  sb         $v0, 0x3($a1)
    /* 14A84 8019D9FC C9760608 */  j          .L8019DB24
    /* 14A88 8019DA00 0D00A0A0 */   sb        $zero, 0xD($a1)
  .L8019DA04:
    /* 14A8C 8019DA04 01004224 */  addiu      $v0, $v0, 0x1
    /* 14A90 8019DA08 43100200 */  sra        $v0, $v0, 1
    /* 14A94 8019DA0C C0100200 */  sll        $v0, $v0, 3
    /* 14A98 8019DA10 80FF4224 */  addiu      $v0, $v0, -0x80
    /* 14A9C 8019DA14 0300A2A0 */  sb         $v0, 0x3($a1)
    /* 14AA0 8019DA18 00006290 */  lbu        $v0, 0x0($v1)
    /* 14AA4 8019DA1C 67668434 */  ori        $a0, $a0, (0x66666667 & 0xFFFF)
    /* 14AA8 8019DA20 01004224 */  addiu      $v0, $v0, 0x1
    /* 14AAC 8019DA24 80180200 */  sll        $v1, $v0, 2
    /* 14AB0 8019DA28 21186200 */  addu       $v1, $v1, $v0
    /* 14AB4 8019DA2C 18006400 */  mult       $v1, $a0
    /* 14AB8 8019DA30 C3170300 */  sra        $v0, $v1, 31
    /* 14ABC 8019DA34 10380000 */  mfhi       $a3
    /* 14AC0 8019DA38 83200700 */  sra        $a0, $a3, 2
    /* 14AC4 8019DA3C 23208200 */  subu       $a0, $a0, $v0
    /* 14AC8 8019DA40 80100400 */  sll        $v0, $a0, 2
    /* 14ACC 8019DA44 21104400 */  addu       $v0, $v0, $a0
    /* 14AD0 8019DA48 40100200 */  sll        $v0, $v0, 1
    /* 14AD4 8019DA4C 23186200 */  subu       $v1, $v1, $v0
    /* 14AD8 8019DA50 C0180300 */  sll        $v1, $v1, 3
    /* 14ADC 8019DA54 80FF6324 */  addiu      $v1, $v1, -0x80
    /* 14AE0 8019DA58 C9760608 */  j          .L8019DB24
    /* 14AE4 8019DA5C 0F00A3A0 */   sb        $v1, 0xF($a1)
  .L8019DA60:
    /* 14AE8 8019DA60 1E80113C */  lui        $s1, %hi(D_801D8DF7)
    /* 14AEC 8019DA64 F78D3126 */  addiu      $s1, $s1, %lo(D_801D8DF7)
    /* 14AF0 8019DA68 00002292 */  lbu        $v0, 0x0($s1)
    /* 14AF4 8019DA6C CCCC103C */  lui        $s0, (0xCCCCCCCD >> 16)
    /* 14AF8 8019DA70 CDCC1036 */  ori        $s0, $s0, (0xCCCCCCCD & 0xFFFF)
    /* 14AFC 8019DA74 19005000 */  multu      $v0, $s0
    /* 14B00 8019DA78 28000424 */  addiu      $a0, $zero, 0x28
    /* 14B04 8019DA7C 21280000 */  addu       $a1, $zero, $zero
    /* 14B08 8019DA80 10380000 */  mfhi       $a3
    /* 14B0C 8019DA84 E4BE010C */  jal        func_8006FB90
    /* 14B10 8019DA88 F807E630 */   andi      $a2, $a3, 0x7F8
    /* 14B14 8019DA8C 00002692 */  lbu        $a2, 0x0($s1)
    /* 14B18 8019DA90 00000000 */  nop
    /* 14B1C 8019DA94 1900D000 */  multu      $a2, $s0
    /* 14B20 8019DA98 28000424 */  addiu      $a0, $zero, 0x28
    /* 14B24 8019DA9C 01000524 */  addiu      $a1, $zero, 0x1
    /* 14B28 8019DAA0 10380000 */  mfhi       $a3
    /* 14B2C 8019DAA4 C2180700 */  srl        $v1, $a3, 3
    /* 14B30 8019DAA8 80100300 */  sll        $v0, $v1, 2
    /* 14B34 8019DAAC 21104300 */  addu       $v0, $v0, $v1
    /* 14B38 8019DAB0 40100200 */  sll        $v0, $v0, 1
    /* 14B3C 8019DAB4 2330C200 */  subu       $a2, $a2, $v0
    /* 14B40 8019DAB8 FF00C630 */  andi       $a2, $a2, 0xFF
    /* 14B44 8019DABC E4BE010C */  jal        func_8006FB90
    /* 14B48 8019DAC0 C0300600 */   sll       $a2, $a2, 3
    /* 14B4C 8019DAC4 29000424 */  addiu      $a0, $zero, 0x29
    /* 14B50 8019DAC8 1E80063C */  lui        $a2, %hi(D_801D8DF8)
    /* 14B54 8019DACC F88DC690 */  lbu        $a2, %lo(D_801D8DF8)($a2)
    /* 14B58 8019DAD0 21280000 */  addu       $a1, $zero, $zero
    /* 14B5C 8019DAD4 00310600 */  sll        $a2, $a2, 4
    /* 14B60 8019DAD8 F3BE010C */  jal        func_8006FBCC
    /* 14B64 8019DADC 9000C624 */   addiu     $a2, $a2, 0x90
    /* 14B68 8019DAE0 2A000424 */  addiu      $a0, $zero, 0x2A
    /* 14B6C 8019DAE4 1E80023C */  lui        $v0, %hi(D_801D8DF9)
    /* 14B70 8019DAE8 F98D4290 */  lbu        $v0, %lo(D_801D8DF9)($v0)
    /* 14B74 8019DAEC 21280000 */  addu       $a1, $zero, $zero
    /* 14B78 8019DAF0 40300200 */  sll        $a2, $v0, 1
    /* 14B7C 8019DAF4 2130C200 */  addu       $a2, $a2, $v0
    /* 14B80 8019DAF8 C0300600 */  sll        $a2, $a2, 3
    /* 14B84 8019DAFC E4BE010C */  jal        func_8006FB90
    /* 14B88 8019DB00 5000C624 */   addiu     $a2, $a2, 0x50
    /* 14B8C 8019DB04 C9760608 */  j          .L8019DB24
    /* 14B90 8019DB08 00000000 */   nop
  .L8019DB0C:
    /* 14B94 8019DB0C 1E80063C */  lui        $a2, %hi(D_801D8DF9)
    /* 14B98 8019DB10 F98DC690 */  lbu        $a2, %lo(D_801D8DF9)($a2)
    /* 14B9C 8019DB14 21280000 */  addu       $a1, $zero, $zero
    /* 14BA0 8019DB18 00310600 */  sll        $a2, $a2, 4
    /* 14BA4 8019DB1C F3BE010C */  jal        func_8006FBCC
    /* 14BA8 8019DB20 9000C624 */   addiu     $a2, $a2, 0x90
  .L8019DB24:
    /* 14BAC 8019DB24 1800BF8F */  lw         $ra, 0x18($sp)
    /* 14BB0 8019DB28 1400B18F */  lw         $s1, 0x14($sp)
    /* 14BB4 8019DB2C 1000B08F */  lw         $s0, 0x10($sp)
    /* 14BB8 8019DB30 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 14BBC 8019DB34 0800E003 */  jr         $ra
    /* 14BC0 8019DB38 00000000 */   nop
endlabel func_8019D904
