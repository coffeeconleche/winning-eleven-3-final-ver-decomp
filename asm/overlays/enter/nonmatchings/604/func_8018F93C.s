nonmatching func_8018F93C, 0x250

glabel func_8018F93C
    /* 69C4 8018F93C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 69C8 8018F940 1800B2AF */  sw         $s2, 0x18($sp)
    /* 69CC 8018F944 1080123C */  lui        $s2, %hi(D_800FF748)
    /* 69D0 8018F948 48F75226 */  addiu      $s2, $s2, %lo(D_800FF748)
    /* 69D4 8018F94C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 69D8 8018F950 801F133C */  lui        $s3, (0x1F8002DD >> 16)
    /* 69DC 8018F954 1180023C */  lui        $v0, %hi(D_80108667)
    /* 69E0 8018F958 67864290 */  lbu        $v0, %lo(D_80108667)($v0)
    /* 69E4 8018F95C 40000324 */  addiu      $v1, $zero, 0x40
    /* 69E8 8018F960 2000BFAF */  sw         $ra, 0x20($sp)
    /* 69EC 8018F964 1400B1AF */  sw         $s1, 0x14($sp)
    /* 69F0 8018F968 CF004230 */  andi       $v0, $v0, 0xCF
    /* 69F4 8018F96C 0B004314 */  bne        $v0, $v1, .L8018F99C
    /* 69F8 8018F970 1000B0AF */   sw        $s0, 0x10($sp)
    /* 69FC 8018F974 1180023C */  lui        $v0, %hi(D_8010866A)
    /* 6A00 8018F978 6A864290 */  lbu        $v0, %lo(D_8010866A)($v0)
    /* 6A04 8018F97C 03000324 */  addiu      $v1, $zero, 0x3
    /* 6A08 8018F980 02110200 */  srl        $v0, $v0, 4
    /* 6A0C 8018F984 05004314 */  bne        $v0, $v1, .L8018F99C
    /* 6A10 8018F988 00000000 */   nop
    /* 6A14 8018F98C AE79000C */  jal        func_8001E6B8
    /* 6A18 8018F990 06000424 */   addiu     $a0, $zero, 0x6
    /* 6A1C 8018F994 D93E0608 */  j          .L8018FB64
    /* 6A20 8018F998 7D0C4424 */   addiu     $a0, $v0, 0xC7D
  .L8018F99C:
    /* 6A24 8018F99C AE79000C */  jal        func_8001E6B8
    /* 6A28 8018F9A0 03000424 */   addiu     $a0, $zero, 0x3
    /* 6A2C 8018F9A4 2C004010 */  beqz       $v0, .L8018FA58
    /* 6A30 8018F9A8 00000000 */   nop
    /* 6A34 8018F9AC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6A38 8018F9B0 21084102 */  addu       $at, $s2, $at
    /* 6A3C 8018F9B4 158F2590 */  lbu        $a1, -0x70EB($at)
    /* 6A40 8018F9B8 00000000 */  nop
    /* 6A44 8018F9BC 21106502 */  addu       $v0, $s3, $a1
    /* 6A48 8018F9C0 DD024390 */  lbu        $v1, (0x1F8002DD & 0xFFFF)($v0)
    /* 6A4C 8018F9C4 00000000 */  nop
    /* 6A50 8018F9C8 40100300 */  sll        $v0, $v1, 1
    /* 6A54 8018F9CC 21104300 */  addu       $v0, $v0, $v1
    /* 6A58 8018F9D0 1980013C */  lui        $at, %hi(D_80191870)
    /* 6A5C 8018F9D4 21082200 */  addu       $at, $at, $v0
    /* 6A60 8018F9D8 70182490 */  lbu        $a0, %lo(D_80191870)($at)
    /* 6A64 8018F9DC FF000224 */  addiu      $v0, $zero, 0xFF
    /* 6A68 8018F9E0 1D008210 */  beq        $a0, $v0, .L8018FA58
    /* 6A6C 8018F9E4 21104502 */   addu      $v0, $s2, $a1
    /* 6A70 8018F9E8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6A74 8018F9EC 21084100 */  addu       $at, $v0, $at
    /* 6A78 8018F9F0 168F2290 */  lbu        $v0, -0x70EA($at)
    /* 6A7C 8018F9F4 00000000 */  nop
    /* 6A80 8018F9F8 17004014 */  bnez       $v0, .L8018FA58
    /* 6A84 8018F9FC 00000000 */   nop
    /* 6A88 8018FA00 88AD020C */  jal        func_800AB620
    /* 6A8C 8018FA04 5A0C8424 */   addiu     $a0, $a0, 0xC5A
    /* 6A90 8018FA08 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6A94 8018FA0C 21084102 */  addu       $at, $s2, $at
    /* 6A98 8018FA10 158F2290 */  lbu        $v0, -0x70EB($at)
    /* 6A9C 8018FA14 00000000 */  nop
    /* 6AA0 8018FA18 21106202 */  addu       $v0, $s3, $v0
    /* 6AA4 8018FA1C DD024490 */  lbu        $a0, (0x1F8002DD & 0xFFFF)($v0)
    /* 6AA8 8018FA20 00000000 */  nop
    /* 6AAC 8018FA24 40100400 */  sll        $v0, $a0, 1
    /* 6AB0 8018FA28 21104400 */  addu       $v0, $v0, $a0
    /* 6AB4 8018FA2C 1980013C */  lui        $at, %hi(D_80191870)
    /* 6AB8 8018FA30 21082200 */  addu       $at, $at, $v0
    /* 6ABC 8018FA34 70182290 */  lbu        $v0, %lo(D_80191870)($at)
    /* 6AC0 8018FA38 00000000 */  nop
    /* 6AC4 8018FA3C 0700422C */  sltiu      $v0, $v0, 0x7
    /* 6AC8 8018FA40 4A004014 */  bnez       $v0, .L8018FB6C
    /* 6ACC 8018FA44 00000000 */   nop
    /* 6AD0 8018FA48 7C68010C */  jal        func_8005A1F0
    /* 6AD4 8018FA4C D60F0524 */   addiu     $a1, $zero, 0xFD6
    /* 6AD8 8018FA50 DB3E0608 */  j          .L8018FB6C
    /* 6ADC 8018FA54 00000000 */   nop
  .L8018FA58:
    /* 6AE0 8018FA58 AE79000C */  jal        func_8001E6B8
    /* 6AE4 8018FA5C 02000424 */   addiu     $a0, $zero, 0x2
    /* 6AE8 8018FA60 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6AEC 8018FA64 21084102 */  addu       $at, $s2, $at
    /* 6AF0 8018FA68 1F8F2390 */  lbu        $v1, -0x70E1($at)
    /* 6AF4 8018FA6C 21284000 */  addu       $a1, $v0, $zero
    /* 6AF8 8018FA70 40000224 */  addiu      $v0, $zero, 0x40
    /* 6AFC 8018FA74 CF006330 */  andi       $v1, $v1, 0xCF
    /* 6B00 8018FA78 1B006214 */  bne        $v1, $v0, .L8018FAE8
    /* 6B04 8018FA7C 00000000 */   nop
    /* 6B08 8018FA80 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6B0C 8018FA84 21084102 */  addu       $at, $s2, $at
    /* 6B10 8018FA88 158F2290 */  lbu        $v0, -0x70EB($at)
    /* 6B14 8018FA8C 00000000 */  nop
    /* 6B18 8018FA90 21106202 */  addu       $v0, $s3, $v0
    /* 6B1C 8018FA94 DD024490 */  lbu        $a0, (0x1F8002DD & 0xFFFF)($v0)
    /* 6B20 8018FA98 23000224 */  addiu      $v0, $zero, 0x23
    /* 6B24 8018FA9C 09008214 */  bne        $a0, $v0, .L8018FAC4
    /* 6B28 8018FAA0 40180400 */   sll       $v1, $a0, 1
    /* 6B2C 8018FAA4 AE79000C */  jal        func_8001E6B8
    /* 6B30 8018FAA8 02000424 */   addiu     $a0, $zero, 0x2
    /* 6B34 8018FAAC FF005030 */  andi       $s0, $v0, 0xFF
    /* 6B38 8018FAB0 40801000 */  sll        $s0, $s0, 1
    /* 6B3C 8018FAB4 88AD020C */  jal        func_800AB620
    /* 6B40 8018FAB8 790C0426 */   addiu     $a0, $s0, 0xC79
    /* 6B44 8018FABC D93E0608 */  j          .L8018FB64
    /* 6B48 8018FAC0 7A0C0426 */   addiu     $a0, $s0, 0xC7A
  .L8018FAC4:
    /* 6B4C 8018FAC4 1980023C */  lui        $v0, %hi(D_80191870)
    /* 6B50 8018FAC8 70184224 */  addiu      $v0, $v0, %lo(D_80191870)
    /* 6B54 8018FACC 21186400 */  addu       $v1, $v1, $a0
    /* 6B58 8018FAD0 21186200 */  addu       $v1, $v1, $v0
    /* 6B5C 8018FAD4 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 6B60 8018FAD8 21186200 */  addu       $v1, $v1, $v0
    /* 6B64 8018FADC 01007090 */  lbu        $s0, 0x1($v1)
    /* 6B68 8018FAE0 CA3E0608 */  j          .L8018FB28
    /* 6B6C 8018FAE4 FF001032 */   andi      $s0, $s0, 0xFF
  .L8018FAE8:
    /* 6B70 8018FAE8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6B74 8018FAEC 21084102 */  addu       $at, $s2, $at
    /* 6B78 8018FAF0 158F2290 */  lbu        $v0, -0x70EB($at)
    /* 6B7C 8018FAF4 00000000 */  nop
    /* 6B80 8018FAF8 21106202 */  addu       $v0, $s3, $v0
    /* 6B84 8018FAFC DD024390 */  lbu        $v1, (0x1F8002DD & 0xFFFF)($v0)
    /* 6B88 8018FB00 1980043C */  lui        $a0, %hi(D_80191870)
    /* 6B8C 8018FB04 70188424 */  addiu      $a0, $a0, %lo(D_80191870)
    /* 6B90 8018FB08 40100300 */  sll        $v0, $v1, 1
    /* 6B94 8018FB0C 21104300 */  addu       $v0, $v0, $v1
    /* 6B98 8018FB10 21104400 */  addu       $v0, $v0, $a0
    /* 6B9C 8018FB14 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 6BA0 8018FB18 21104300 */  addu       $v0, $v0, $v1
    /* 6BA4 8018FB1C 01005090 */  lbu        $s0, 0x1($v0)
    /* 6BA8 8018FB20 00000000 */  nop
    /* 6BAC 8018FB24 FF001032 */  andi       $s0, $s0, 0xFF
  .L8018FB28:
    /* 6BB0 8018FB28 40881000 */  sll        $s1, $s0, 1
    /* 6BB4 8018FB2C 88AD020C */  jal        func_800AB620
    /* 6BB8 8018FB30 6B0C2426 */   addiu     $a0, $s1, 0xC6B
    /* 6BBC 8018FB34 06000224 */  addiu      $v0, $zero, 0x6
    /* 6BC0 8018FB38 0A000212 */  beq        $s0, $v0, .L8018FB64
    /* 6BC4 8018FB3C 6C0C2426 */   addiu     $a0, $s1, 0xC6C
    /* 6BC8 8018FB40 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6BCC 8018FB44 21084102 */  addu       $at, $s2, $at
    /* 6BD0 8018FB48 158F2290 */  lbu        $v0, -0x70EB($at)
    /* 6BD4 8018FB4C 00000000 */  nop
    /* 6BD8 8018FB50 21106202 */  addu       $v0, $s3, $v0
    /* 6BDC 8018FB54 DD024490 */  lbu        $a0, (0x1F8002DD & 0xFFFF)($v0)
    /* 6BE0 8018FB58 7C68010C */  jal        func_8005A1F0
    /* 6BE4 8018FB5C D60F0524 */   addiu     $a1, $zero, 0xFD6
    /* 6BE8 8018FB60 6C0C2426 */  addiu      $a0, $s1, 0xC6C
  .L8018FB64:
    /* 6BEC 8018FB64 88AD020C */  jal        func_800AB620
    /* 6BF0 8018FB68 00000000 */   nop
  .L8018FB6C:
    /* 6BF4 8018FB6C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 6BF8 8018FB70 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6BFC 8018FB74 1800B28F */  lw         $s2, 0x18($sp)
    /* 6C00 8018FB78 1400B18F */  lw         $s1, 0x14($sp)
    /* 6C04 8018FB7C 1000B08F */  lw         $s0, 0x10($sp)
    /* 6C08 8018FB80 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 6C0C 8018FB84 0800E003 */  jr         $ra
    /* 6C10 8018FB88 00000000 */   nop
endlabel func_8018F93C
