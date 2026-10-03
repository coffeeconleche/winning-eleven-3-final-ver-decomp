nonmatching func_801C0958, 0x8B0

glabel func_801C0958
    /* 379E0 801C0958 1180033C */  lui        $v1, %hi(D_8010A322)
    /* 379E4 801C095C 22A36390 */  lbu        $v1, %lo(D_8010A322)($v1)
    /* 379E8 801C0960 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 379EC 801C0964 1000B0AF */  sw         $s0, 0x10($sp)
    /* 379F0 801C0968 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 379F4 801C096C 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 379F8 801C0970 1400B1AF */  sw         $s1, 0x14($sp)
    /* 379FC 801C0974 801F113C */  lui        $s1, (0x1F800000 >> 16)
    /* 37A00 801C0978 3300622C */  sltiu      $v0, $v1, 0x33
    /* 37A04 801C097C 1C024010 */  beqz       $v0, .L801C11F0
    /* 37A08 801C0980 1800BFAF */   sw        $ra, 0x18($sp)
    /* 37A0C 801C0984 80100300 */  sll        $v0, $v1, 2
    /* 37A10 801C0988 1980013C */  lui        $at, %hi(jtbl_8018B9DC)
    /* 37A14 801C098C 21082200 */  addu       $at, $at, $v0
    /* 37A18 801C0990 DCB9228C */  lw         $v0, %lo(jtbl_8018B9DC)($at)
    /* 37A1C 801C0994 00000000 */  nop
    /* 37A20 801C0998 08004000 */  jr         $v0
    /* 37A24 801C099C 00000000 */   nop
  jlabel .L801C09A0
    /* 37A28 801C09A0 40000424 */  addiu      $a0, $zero, 0x40
    /* 37A2C 801C09A4 01000224 */  addiu      $v0, $zero, 0x1
    /* 37A30 801C09A8 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 37A34 801C09AC F0A222A0 */  sb         $v0, %lo(D_801DA2F0)($at)
    /* 37A38 801C09B0 1E80013C */  lui        $at, %hi(D_801D8B18)
    /* 37A3C 801C09B4 188B20A0 */  sb         $zero, %lo(D_801D8B18)($at)
    /* 37A40 801C09B8 37BC010C */  jal        func_8006F0DC
    /* 37A44 801C09BC 21280000 */   addu      $a1, $zero, $zero
    /* 37A48 801C09C0 0B024010 */  beqz       $v0, .L801C11F0
    /* 37A4C 801C09C4 00000000 */   nop
    /* 37A50 801C09C8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37A54 801C09CC 21080102 */  addu       $at, $s0, $at
    /* 37A58 801C09D0 208F2290 */  lbu        $v0, -0x70E0($at)
    /* 37A5C 801C09D4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37A60 801C09D8 21080102 */  addu       $at, $s0, $at
    /* 37A64 801C09DC 228F2590 */  lbu        $a1, -0x70DE($at)
    /* 37A68 801C09E0 80100200 */  sll        $v0, $v0, 2
    /* 37A6C 801C09E4 1280013C */  lui        $at, %hi(D_801234E0)
    /* 37A70 801C09E8 21082200 */  addu       $at, $at, $v0
    /* 37A74 801C09EC E034248C */  lw         $a0, %lo(D_801234E0)($at)
    /* 37A78 801C09F0 3CA6060C */  jal        func_801A98F0
    /* 37A7C 801C09F4 FFFFA524 */   addiu     $a1, $a1, -0x1
    /* 37A80 801C09F8 15A7060C */  jal        func_801A9C54
    /* 37A84 801C09FC 00000000 */   nop
    /* 37A88 801C0A00 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37A8C 801C0A04 21080102 */  addu       $at, $s0, $at
    /* 37A90 801C0A08 A0AB2390 */  lbu        $v1, -0x5460($at)
    /* 37A94 801C0A0C 00000000 */  nop
    /* 37A98 801C0A10 C0100300 */  sll        $v0, $v1, 3
    /* 37A9C 801C0A14 21104300 */  addu       $v0, $v0, $v1
    /* 37AA0 801C0A18 80100200 */  sll        $v0, $v0, 2
    /* 37AA4 801C0A1C 21100202 */  addu       $v0, $s0, $v0
    /* 37AA8 801C0A20 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37AAC 801C0A24 21084100 */  addu       $at, $v0, $at
    /* 37AB0 801C0A28 268F2390 */  lbu        $v1, -0x70DA($at)
    /* 37AB4 801C0A2C 00000000 */  nop
    /* 37AB8 801C0A30 01006324 */  addiu      $v1, $v1, 0x1
    /* 37ABC 801C0A34 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37AC0 801C0A38 21084100 */  addu       $at, $v0, $at
    /* 37AC4 801C0A3C 268F23A0 */  sb         $v1, -0x70DA($at)
    /* 37AC8 801C0A40 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37ACC 801C0A44 21080102 */  addu       $at, $s0, $at
    /* 37AD0 801C0A48 A1AB2390 */  lbu        $v1, -0x545F($at)
    /* 37AD4 801C0A4C 00000000 */  nop
    /* 37AD8 801C0A50 C0100300 */  sll        $v0, $v1, 3
    /* 37ADC 801C0A54 21104300 */  addu       $v0, $v0, $v1
    /* 37AE0 801C0A58 80100200 */  sll        $v0, $v0, 2
    /* 37AE4 801C0A5C 21100202 */  addu       $v0, $s0, $v0
    /* 37AE8 801C0A60 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37AEC 801C0A64 21084100 */  addu       $at, $v0, $at
    /* 37AF0 801C0A68 268F2390 */  lbu        $v1, -0x70DA($at)
    /* 37AF4 801C0A6C 00000000 */  nop
    /* 37AF8 801C0A70 01006324 */  addiu      $v1, $v1, 0x1
    /* 37AFC 801C0A74 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37B00 801C0A78 21084100 */  addu       $at, $v0, $at
    /* 37B04 801C0A7C 268F23A0 */  sb         $v1, -0x70DA($at)
    /* 37B08 801C0A80 04000224 */  addiu      $v0, $zero, 0x4
    /* 37B0C 801C0A84 1E80013C */  lui        $at, %hi(D_801DA06B)
    /* 37B10 801C0A88 6BA020A0 */  sb         $zero, %lo(D_801DA06B)($at)
    /* 37B14 801C0A8C 1E80013C */  lui        $at, %hi(D_801DA069)
    /* 37B18 801C0A90 69A020A0 */  sb         $zero, %lo(D_801DA069)($at)
    /* 37B1C 801C0A94 1E80013C */  lui        $at, %hi(D_801DA06A)
    /* 37B20 801C0A98 6AA020A0 */  sb         $zero, %lo(D_801DA06A)($at)
    /* 37B24 801C0A9C 1E80013C */  lui        $at, %hi(D_801DA068)
    /* 37B28 801C0AA0 68A020A0 */  sb         $zero, %lo(D_801DA068)($at)
    /* 37B2C 801C0AA4 1E80013C */  lui        $at, %hi(D_801DA5D0)
    /* 37B30 801C0AA8 D0A520A4 */  sh         $zero, %lo(D_801DA5D0)($at)
    /* 37B34 801C0AAC 1E80013C */  lui        $at, %hi(D_801DA5D2)
    /* 37B38 801C0AB0 D2A520A4 */  sh         $zero, %lo(D_801DA5D2)($at)
    /* 37B3C 801C0AB4 1E80013C */  lui        $at, %hi(D_801DA5D4)
    /* 37B40 801C0AB8 D4A522A4 */  sh         $v0, %lo(D_801DA5D4)($at)
    /* 37B44 801C0ABC 1E80013C */  lui        $at, %hi(D_801DA5D6)
    /* 37B48 801C0AC0 D6A522A4 */  sh         $v0, %lo(D_801DA5D6)($at)
    /* 37B4C 801C0AC4 6507070C */  jal        func_801C1D94
    /* 37B50 801C0AC8 00000000 */   nop
    /* 37B54 801C0ACC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37B58 801C0AD0 21080102 */  addu       $at, $s0, $at
    /* 37B5C 801C0AD4 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 37B60 801C0AD8 79040708 */  j          .L801C11E4
    /* 37B64 801C0ADC 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801C0AE0
    /* 37B68 801C0AE0 1908070C */  jal        func_801C2064
    /* 37B6C 801C0AE4 00000000 */   nop
    /* 37B70 801C0AE8 1C80043C */  lui        $a0, %hi(func_801C2A3C)
    /* 37B74 801C0AEC 3C2A8424 */  addiu      $a0, $a0, %lo(func_801C2A3C)
    /* 37B78 801C0AF0 7B06070C */  jal        func_801C19EC
    /* 37B7C 801C0AF4 00000000 */   nop
    /* 37B80 801C0AF8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37B84 801C0AFC 21080102 */  addu       $at, $s0, $at
    /* 37B88 801C0B00 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 37B8C 801C0B04 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37B90 801C0B08 21080102 */  addu       $at, $s0, $at
    /* 37B94 801C0B0C D8AB20A0 */  sb         $zero, -0x5428($at)
    /* 37B98 801C0B10 79040708 */  j          .L801C11E4
    /* 37B9C 801C0B14 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801C0B18
    /* 37BA0 801C0B18 1FBC010C */  jal        func_8006F07C
    /* 37BA4 801C0B1C 10000424 */   addiu     $a0, $zero, 0x10
    /* 37BA8 801C0B20 B3014010 */  beqz       $v0, .L801C11F0
    /* 37BAC 801C0B24 00000000 */   nop
    /* 37BB0 801C0B28 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37BB4 801C0B2C 21080102 */  addu       $at, $s0, $at
    /* 37BB8 801C0B30 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 37BBC 801C0B34 79040708 */  j          .L801C11E4
    /* 37BC0 801C0B38 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801C0B3C
    /* 37BC4 801C0B3C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37BC8 801C0B40 21080102 */  addu       $at, $s0, $at
    /* 37BCC 801C0B44 208F2290 */  lbu        $v0, -0x70E0($at)
    /* 37BD0 801C0B48 00000000 */  nop
    /* 37BD4 801C0B4C FFFF4324 */  addiu      $v1, $v0, -0x1
    /* 37BD8 801C0B50 18004300 */  mult       $v0, $v1
    /* 37BDC 801C0B54 02000324 */  addiu      $v1, $zero, 0x2
    /* 37BE0 801C0B58 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 37BE4 801C0B5C 50AE23A0 */  sb         $v1, %lo(D_801DAE50)($at)
    /* 37BE8 801C0B60 12100000 */  mflo       $v0
    /* 37BEC 801C0B64 C21F0200 */  srl        $v1, $v0, 31
    /* 37BF0 801C0B68 21104300 */  addu       $v0, $v0, $v1
    /* 37BF4 801C0B6C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37BF8 801C0B70 21080102 */  addu       $at, $s0, $at
    /* 37BFC 801C0B74 228F2390 */  lbu        $v1, -0x70DE($at)
    /* 37C00 801C0B78 43100200 */  sra        $v0, $v0, 1
    /* 37C04 801C0B7C 05006214 */  bne        $v1, $v0, .L801C0B94
    /* 37C08 801C0B80 00000000 */   nop
    /* 37C0C 801C0B84 BAAD060C */  jal        func_801AB6E8
    /* 37C10 801C0B88 60000424 */   addiu     $a0, $zero, 0x60
    /* 37C14 801C0B8C 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 37C18 801C0B90 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
  .L801C0B94:
    /* 37C1C 801C0B94 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37C20 801C0B98 21080102 */  addu       $at, $s0, $at
    /* 37C24 801C0B9C 208F2290 */  lbu        $v0, -0x70E0($at)
    /* 37C28 801C0BA0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37C2C 801C0BA4 21080102 */  addu       $at, $s0, $at
    /* 37C30 801C0BA8 228F2390 */  lbu        $v1, -0x70DE($at)
    /* 37C34 801C0BAC 42100200 */  srl        $v0, $v0, 1
    /* 37C38 801C0BB0 1B006200 */  divu       $zero, $v1, $v0
    /* 37C3C 801C0BB4 02004014 */  bnez       $v0, .L801C0BC0
    /* 37C40 801C0BB8 00000000 */   nop
    /* 37C44 801C0BBC 0D000700 */  break      7
  .L801C0BC0:
    /* 37C48 801C0BC0 10100000 */  mfhi       $v0
    /* 37C4C 801C0BC4 00000000 */  nop
    /* 37C50 801C0BC8 0A004014 */  bnez       $v0, .L801C0BF4
    /* 37C54 801C0BCC 00000000 */   nop
    /* 37C58 801C0BD0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37C5C 801C0BD4 21080102 */  addu       $at, $s0, $at
    /* 37C60 801C0BD8 238F2490 */  lbu        $a0, -0x70DD($at)
    /* 37C64 801C0BDC 3507070C */  jal        func_801C1CD4
    /* 37C68 801C0BE0 02210400 */   srl       $a0, $a0, 4
    /* 37C6C 801C0BE4 BAAD060C */  jal        func_801AB6E8
    /* 37C70 801C0BE8 61000424 */   addiu     $a0, $zero, 0x61
    /* 37C74 801C0BEC 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 37C78 801C0BF0 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
  .L801C0BF4:
    /* 37C7C 801C0BF4 1E80033C */  lui        $v1, %hi(D_801DAE50)
    /* 37C80 801C0BF8 50AE6390 */  lbu        $v1, %lo(D_801DAE50)($v1)
    /* 37C84 801C0BFC 02000224 */  addiu      $v0, $zero, 0x2
    /* 37C88 801C0C00 7B016214 */  bne        $v1, $v0, .L801C11F0
    /* 37C8C 801C0C04 00000000 */   nop
    /* 37C90 801C0C08 BAAD060C */  jal        func_801AB6E8
    /* 37C94 801C0C0C FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 37C98 801C0C10 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37C9C 801C0C14 21080102 */  addu       $at, $s0, $at
    /* 37CA0 801C0C18 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 37CA4 801C0C1C 79040708 */  j          .L801C11E4
    /* 37CA8 801C0C20 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801C0C24
    /* 37CAC 801C0C24 B705070C */  jal        func_801C16DC
    /* 37CB0 801C0C28 21200000 */   addu      $a0, $zero, $zero
    /* 37CB4 801C0C2C 02000324 */  addiu      $v1, $zero, 0x2
    /* 37CB8 801C0C30 0D004314 */  bne        $v0, $v1, .L801C0C68
    /* 37CBC 801C0C34 01000224 */   addiu     $v0, $zero, 0x1
    /* 37CC0 801C0C38 88AD020C */  jal        func_800AB620
    /* 37CC4 801C0C3C 28050424 */   addiu     $a0, $zero, 0x528
    /* 37CC8 801C0C40 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37CCC 801C0C44 21080102 */  addu       $at, $s0, $at
    /* 37CD0 801C0C48 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 37CD4 801C0C4C 00000000 */  nop
    /* 37CD8 801C0C50 01004224 */  addiu      $v0, $v0, 0x1
    /* 37CDC 801C0C54 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37CE0 801C0C58 21080102 */  addu       $at, $s0, $at
    /* 37CE4 801C0C5C DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 37CE8 801C0C60 1C030708 */  j          .L801C0C70
    /* 37CEC 801C0C64 00000000 */   nop
  .L801C0C68:
    /* 37CF0 801C0C68 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 37CF4 801C0C6C F0A222A0 */  sb         $v0, %lo(D_801DA2F0)($at)
  .L801C0C70:
    /* 37CF8 801C0C70 8F0A070C */  jal        func_801C2A3C
    /* 37CFC 801C0C74 00000000 */   nop
    /* 37D00 801C0C78 7C040708 */  j          .L801C11F0
    /* 37D04 801C0C7C 00000000 */   nop
  jlabel .L801C0C80
    /* 37D08 801C0C80 40000424 */  addiu      $a0, $zero, 0x40
    /* 37D0C 801C0C84 37BC010C */  jal        func_8006F0DC
    /* 37D10 801C0C88 21280000 */   addu      $a1, $zero, $zero
    /* 37D14 801C0C8C 58014010 */  beqz       $v0, .L801C11F0
    /* 37D18 801C0C90 00000000 */   nop
    /* 37D1C 801C0C94 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37D20 801C0C98 21080102 */  addu       $at, $s0, $at
    /* 37D24 801C0C9C 208F2290 */  lbu        $v0, -0x70E0($at)
    /* 37D28 801C0CA0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37D2C 801C0CA4 21080102 */  addu       $at, $s0, $at
    /* 37D30 801C0CA8 228F2390 */  lbu        $v1, -0x70DE($at)
    /* 37D34 801C0CAC 42100200 */  srl        $v0, $v0, 1
    /* 37D38 801C0CB0 1B006200 */  divu       $zero, $v1, $v0
    /* 37D3C 801C0CB4 02004014 */  bnez       $v0, .L801C0CC0
    /* 37D40 801C0CB8 00000000 */   nop
    /* 37D44 801C0CBC 0D000700 */  break      7
  .L801C0CC0:
    /* 37D48 801C0CC0 10100000 */  mfhi       $v0
    /* 37D4C 801C0CC4 00000000 */  nop
    /* 37D50 801C0CC8 46014010 */  beqz       $v0, .L801C11E4
    /* 37D54 801C0CCC 0A000224 */   addiu     $v0, $zero, 0xA
    /* 37D58 801C0CD0 4E39060C */  jal        func_8018E538
    /* 37D5C 801C0CD4 21200000 */   addu      $a0, $zero, $zero
    /* 37D60 801C0CD8 79040708 */  j          .L801C11E4
    /* 37D64 801C0CDC 1F000224 */   addiu     $v0, $zero, 0x1F
  jlabel .L801C0CE0
    /* 37D68 801C0CE0 01000224 */  addiu      $v0, $zero, 0x1
    /* 37D6C 801C0CE4 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 37D70 801C0CE8 F0A222A0 */  sb         $v0, %lo(D_801DA2F0)($at)
    /* 37D74 801C0CEC 6507070C */  jal        func_801C1D94
    /* 37D78 801C0CF0 00000000 */   nop
    /* 37D7C 801C0CF4 2A08070C */  jal        func_801C20A8
    /* 37D80 801C0CF8 00000000 */   nop
    /* 37D84 801C0CFC 1C80043C */  lui        $a0, %hi(func_801C3150)
    /* 37D88 801C0D00 50318424 */  addiu      $a0, $a0, %lo(func_801C3150)
    /* 37D8C 801C0D04 7B06070C */  jal        func_801C19EC
    /* 37D90 801C0D08 00000000 */   nop
    /* 37D94 801C0D0C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37D98 801C0D10 21080102 */  addu       $at, $s0, $at
    /* 37D9C 801C0D14 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 37DA0 801C0D18 79040708 */  j          .L801C11E4
    /* 37DA4 801C0D1C 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801C0D20
    /* 37DA8 801C0D20 1FBC010C */  jal        func_8006F07C
    /* 37DAC 801C0D24 10000424 */   addiu     $a0, $zero, 0x10
    /* 37DB0 801C0D28 31014010 */  beqz       $v0, .L801C11F0
    /* 37DB4 801C0D2C 00000000 */   nop
    /* 37DB8 801C0D30 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37DBC 801C0D34 21080102 */  addu       $at, $s0, $at
    /* 37DC0 801C0D38 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 37DC4 801C0D3C 79040708 */  j          .L801C11E4
    /* 37DC8 801C0D40 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801C0D44
    /* 37DCC 801C0D44 B705070C */  jal        func_801C16DC
    /* 37DD0 801C0D48 01000424 */   addiu     $a0, $zero, 0x1
    /* 37DD4 801C0D4C 21184000 */  addu       $v1, $v0, $zero
    /* 37DD8 801C0D50 01000224 */  addiu      $v0, $zero, 0x1
    /* 37DDC 801C0D54 05006210 */  beq        $v1, $v0, .L801C0D6C
    /* 37DE0 801C0D58 02000224 */   addiu     $v0, $zero, 0x2
    /* 37DE4 801C0D5C 10006214 */  bne        $v1, $v0, .L801C0DA0
    /* 37DE8 801C0D60 01000224 */   addiu     $v0, $zero, 0x1
    /* 37DEC 801C0D64 5C030708 */  j          .L801C0D70
    /* 37DF0 801C0D68 28050424 */   addiu     $a0, $zero, 0x528
  .L801C0D6C:
    /* 37DF4 801C0D6C 29050424 */  addiu      $a0, $zero, 0x529
  .L801C0D70:
    /* 37DF8 801C0D70 88AD020C */  jal        func_800AB620
    /* 37DFC 801C0D74 00000000 */   nop
    /* 37E00 801C0D78 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37E04 801C0D7C 21080102 */  addu       $at, $s0, $at
    /* 37E08 801C0D80 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 37E0C 801C0D84 00000000 */  nop
    /* 37E10 801C0D88 01004224 */  addiu      $v0, $v0, 0x1
    /* 37E14 801C0D8C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37E18 801C0D90 21080102 */  addu       $at, $s0, $at
    /* 37E1C 801C0D94 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 37E20 801C0D98 6A030708 */  j          .L801C0DA8
    /* 37E24 801C0D9C 00000000 */   nop
  .L801C0DA0:
    /* 37E28 801C0DA0 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 37E2C 801C0DA4 F0A222A0 */  sb         $v0, %lo(D_801DA2F0)($at)
  .L801C0DA8:
    /* 37E30 801C0DA8 540C070C */  jal        func_801C3150
    /* 37E34 801C0DAC 00000000 */   nop
    /* 37E38 801C0DB0 7C040708 */  j          .L801C11F0
    /* 37E3C 801C0DB4 00000000 */   nop
  jlabel .L801C0DB8
    /* 37E40 801C0DB8 40000424 */  addiu      $a0, $zero, 0x40
    /* 37E44 801C0DBC 37BC010C */  jal        func_8006F0DC
    /* 37E48 801C0DC0 21280000 */   addu      $a1, $zero, $zero
    /* 37E4C 801C0DC4 0A014010 */  beqz       $v0, .L801C11F0
    /* 37E50 801C0DC8 01000224 */   addiu     $v0, $zero, 0x1
    /* 37E54 801C0DCC 1E80033C */  lui        $v1, %hi(D_801DAE50)
    /* 37E58 801C0DD0 50AE6390 */  lbu        $v1, %lo(D_801DAE50)($v1)
    /* 37E5C 801C0DD4 00000000 */  nop
    /* 37E60 801C0DD8 06006210 */  beq        $v1, $v0, .L801C0DF4
    /* 37E64 801C0DDC 00000000 */   nop
    /* 37E68 801C0DE0 02000224 */  addiu      $v0, $zero, 0x2
    /* 37E6C 801C0DE4 02016214 */  bne        $v1, $v0, .L801C11F0
    /* 37E70 801C0DE8 14000224 */   addiu     $v0, $zero, 0x14
    /* 37E74 801C0DEC 79040708 */  j          .L801C11E4
    /* 37E78 801C0DF0 00000000 */   nop
  .L801C0DF4:
    /* 37E7C 801C0DF4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37E80 801C0DF8 21080102 */  addu       $at, $s0, $at
    /* 37E84 801C0DFC DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 37E88 801C0E00 79040708 */  j          .L801C11E4
    /* 37E8C 801C0E04 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801C0E08
    /* 37E90 801C0E08 1908070C */  jal        func_801C2064
    /* 37E94 801C0E0C 00000000 */   nop
    /* 37E98 801C0E10 1C80043C */  lui        $a0, %hi(func_801C2A3C)
    /* 37E9C 801C0E14 3C2A8424 */  addiu      $a0, $a0, %lo(func_801C2A3C)
    /* 37EA0 801C0E18 7B06070C */  jal        func_801C19EC
    /* 37EA4 801C0E1C 00000000 */   nop
    /* 37EA8 801C0E20 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37EAC 801C0E24 21080102 */  addu       $at, $s0, $at
    /* 37EB0 801C0E28 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 37EB4 801C0E2C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37EB8 801C0E30 21080102 */  addu       $at, $s0, $at
    /* 37EBC 801C0E34 D8AB20A0 */  sb         $zero, -0x5428($at)
    /* 37EC0 801C0E38 79040708 */  j          .L801C11E4
    /* 37EC4 801C0E3C 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801C0E40
    /* 37EC8 801C0E40 1FBC010C */  jal        func_8006F07C
    /* 37ECC 801C0E44 10000424 */   addiu     $a0, $zero, 0x10
    /* 37ED0 801C0E48 E9004010 */  beqz       $v0, .L801C11F0
    /* 37ED4 801C0E4C 04000224 */   addiu     $v0, $zero, 0x4
    /* 37ED8 801C0E50 79040708 */  j          .L801C11E4
    /* 37EDC 801C0E54 00000000 */   nop
  jlabel .L801C0E58
    /* 37EE0 801C0E58 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37EE4 801C0E5C 21080102 */  addu       $at, $s0, $at
    /* 37EE8 801C0E60 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 37EEC 801C0E64 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 37EF0 801C0E68 F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 37EF4 801C0E6C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37EF8 801C0E70 21080102 */  addu       $at, $s0, $at
    /* 37EFC 801C0E74 D8AB20A0 */  sb         $zero, -0x5428($at)
    /* 37F00 801C0E78 79040708 */  j          .L801C11E4
    /* 37F04 801C0E7C 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801C0E80
    /* 37F08 801C0E80 A5B8060C */  jal        func_801AE294
    /* 37F0C 801C0E84 21200000 */   addu      $a0, $zero, $zero
    /* 37F10 801C0E88 21184000 */  addu       $v1, $v0, $zero
    /* 37F14 801C0E8C 01000224 */  addiu      $v0, $zero, 0x1
    /* 37F18 801C0E90 06006210 */  beq        $v1, $v0, .L801C0EAC
    /* 37F1C 801C0E94 00000000 */   nop
    /* 37F20 801C0E98 02000224 */  addiu      $v0, $zero, 0x2
    /* 37F24 801C0E9C D4006214 */  bne        $v1, $v0, .L801C11F0
    /* 37F28 801C0EA0 17000224 */   addiu     $v0, $zero, 0x17
    /* 37F2C 801C0EA4 79040708 */  j          .L801C11E4
    /* 37F30 801C0EA8 00000000 */   nop
  .L801C0EAC:
    /* 37F34 801C0EAC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37F38 801C0EB0 21080102 */  addu       $at, $s0, $at
    /* 37F3C 801C0EB4 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 37F40 801C0EB8 79040708 */  j          .L801C11E4
    /* 37F44 801C0EBC 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801C0EC0
    /* 37F48 801C0EC0 40000424 */  addiu      $a0, $zero, 0x40
    /* 37F4C 801C0EC4 37BC010C */  jal        func_8006F0DC
    /* 37F50 801C0EC8 21280000 */   addu      $a1, $zero, $zero
    /* 37F54 801C0ECC C8004010 */  beqz       $v0, .L801C11F0
    /* 37F58 801C0ED0 0A000224 */   addiu     $v0, $zero, 0xA
    /* 37F5C 801C0ED4 79040708 */  j          .L801C11E4
    /* 37F60 801C0ED8 00000000 */   nop
  jlabel .L801C0EDC
    /* 37F64 801C0EDC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37F68 801C0EE0 21080102 */  addu       $at, $s0, $at
    /* 37F6C 801C0EE4 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 37F70 801C0EE8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37F74 801C0EEC 21080102 */  addu       $at, $s0, $at
    /* 37F78 801C0EF0 D8AB20A0 */  sb         $zero, -0x5428($at)
    /* 37F7C 801C0EF4 79040708 */  j          .L801C11E4
    /* 37F80 801C0EF8 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801C0EFC
    /* 37F84 801C0EFC A5B8060C */  jal        func_801AE294
    /* 37F88 801C0F00 01000424 */   addiu     $a0, $zero, 0x1
    /* 37F8C 801C0F04 21184000 */  addu       $v1, $v0, $zero
    /* 37F90 801C0F08 01000224 */  addiu      $v0, $zero, 0x1
    /* 37F94 801C0F0C 05006210 */  beq        $v1, $v0, .L801C0F24
    /* 37F98 801C0F10 02000224 */   addiu     $v0, $zero, 0x2
    /* 37F9C 801C0F14 B6006214 */  bne        $v1, $v0, .L801C11F0
    /* 37FA0 801C0F18 1E000224 */   addiu     $v0, $zero, 0x1E
    /* 37FA4 801C0F1C 79040708 */  j          .L801C11E4
    /* 37FA8 801C0F20 00000000 */   nop
  .L801C0F24:
    /* 37FAC 801C0F24 79040708 */  j          .L801C11E4
    /* 37FB0 801C0F28 14000224 */   addiu     $v0, $zero, 0x14
  jlabel .L801C0F2C
    /* 37FB4 801C0F2C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37FB8 801C0F30 21080102 */  addu       $at, $s0, $at
    /* 37FBC 801C0F34 208F2290 */  lbu        $v0, -0x70E0($at)
    /* 37FC0 801C0F38 00000000 */  nop
    /* 37FC4 801C0F3C FFFF4324 */  addiu      $v1, $v0, -0x1
    /* 37FC8 801C0F40 18004300 */  mult       $v0, $v1
    /* 37FCC 801C0F44 12100000 */  mflo       $v0
    /* 37FD0 801C0F48 C21F0200 */  srl        $v1, $v0, 31
    /* 37FD4 801C0F4C 21104300 */  addu       $v0, $v0, $v1
    /* 37FD8 801C0F50 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37FDC 801C0F54 21080102 */  addu       $at, $s0, $at
    /* 37FE0 801C0F58 228F2390 */  lbu        $v1, -0x70DE($at)
    /* 37FE4 801C0F5C 43100200 */  sra        $v0, $v0, 1
    /* 37FE8 801C0F60 06006210 */  beq        $v1, $v0, .L801C0F7C
    /* 37FEC 801C0F64 32000224 */   addiu     $v0, $zero, 0x32
    /* 37FF0 801C0F68 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37FF4 801C0F6C 21080102 */  addu       $at, $s0, $at
    /* 37FF8 801C0F70 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 37FFC 801C0F74 00000000 */  nop
    /* 38000 801C0F78 01004224 */  addiu      $v0, $v0, 0x1
  .L801C0F7C:
    /* 38004 801C0F7C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38008 801C0F80 21080102 */  addu       $at, $s0, $at
    /* 3800C 801C0F84 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 38010 801C0F88 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38014 801C0F8C 21080102 */  addu       $at, $s0, $at
    /* 38018 801C0F90 D8AB20A0 */  sb         $zero, -0x5428($at)
    /* 3801C 801C0F94 7C040708 */  j          .L801C11F0
    /* 38020 801C0F98 00000000 */   nop
  jlabel .L801C0F9C
    /* 38024 801C0F9C 41000224 */  addiu      $v0, $zero, 0x41
    /* 38028 801C0FA0 34A3060C */  jal        func_801A8CD0
    /* 3802C 801C0FA4 A20222A2 */   sb        $v0, 0x2A2($s1)
    /* 38030 801C0FA8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38034 801C0FAC 21080102 */  addu       $at, $s0, $at
    /* 38038 801C0FB0 DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 3803C 801C0FB4 01000224 */  addiu      $v0, $zero, 0x1
    /* 38040 801C0FB8 1E80013C */  lui        $at, %hi(D_801D8DFC)
    /* 38044 801C0FBC FC8D22A0 */  sb         $v0, %lo(D_801D8DFC)($at)
    /* 38048 801C0FC0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3804C 801C0FC4 21080102 */  addu       $at, $s0, $at
    /* 38050 801C0FC8 D8AB20A0 */  sb         $zero, -0x5428($at)
    /* 38054 801C0FCC 01006324 */  addiu      $v1, $v1, 0x1
    /* 38058 801C0FD0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3805C 801C0FD4 21080102 */  addu       $at, $s0, $at
    /* 38060 801C0FD8 DAAB23A0 */  sb         $v1, -0x5426($at)
    /* 38064 801C0FDC 7C040708 */  j          .L801C11F0
    /* 38068 801C0FE0 00000000 */   nop
  jlabel .L801C0FE4
    /* 3806C 801C0FE4 1E80043C */  lui        $a0, %hi(D_801D8DFB)
    /* 38070 801C0FE8 FB8D8490 */  lbu        $a0, %lo(D_801D8DFB)($a0)
    /* 38074 801C0FEC 00000000 */  nop
    /* 38078 801C0FF0 2B200400 */  sltu       $a0, $zero, $a0
    /* 3807C 801C0FF4 8BB3060C */  jal        func_801ACE2C
    /* 38080 801C0FF8 40200400 */   sll       $a0, $a0, 1
    /* 38084 801C0FFC 21184000 */  addu       $v1, $v0, $zero
    /* 38088 801C1000 02000224 */  addiu      $v0, $zero, 0x2
    /* 3808C 801C1004 0C006210 */  beq        $v1, $v0, .L801C1038
    /* 38090 801C1008 03006228 */   slti      $v0, $v1, 0x3
    /* 38094 801C100C 05004010 */  beqz       $v0, .L801C1024
    /* 38098 801C1010 01000224 */   addiu     $v0, $zero, 0x1
    /* 3809C 801C1014 0A006210 */  beq        $v1, $v0, .L801C1040
    /* 380A0 801C1018 00000000 */   nop
    /* 380A4 801C101C 7C040708 */  j          .L801C11F0
    /* 380A8 801C1020 00000000 */   nop
  .L801C1024:
    /* 380AC 801C1024 03000224 */  addiu      $v0, $zero, 0x3
    /* 380B0 801C1028 1B006210 */  beq        $v1, $v0, .L801C1098
    /* 380B4 801C102C 00000000 */   nop
    /* 380B8 801C1030 7C040708 */  j          .L801C11F0
    /* 380BC 801C1034 00000000 */   nop
  .L801C1038:
    /* 380C0 801C1038 79040708 */  j          .L801C11E4
    /* 380C4 801C103C 23000224 */   addiu     $v0, $zero, 0x23
  .L801C1040:
    /* 380C8 801C1040 0100013C */  lui        $at, (0x10000 >> 16)
    /* 380CC 801C1044 21080102 */  addu       $at, $s0, $at
    /* 380D0 801C1048 208F2290 */  lbu        $v0, -0x70E0($at)
    /* 380D4 801C104C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 380D8 801C1050 21080102 */  addu       $at, $s0, $at
    /* 380DC 801C1054 228F2390 */  lbu        $v1, -0x70DE($at)
    /* 380E0 801C1058 42100200 */  srl        $v0, $v0, 1
    /* 380E4 801C105C 1B006200 */  divu       $zero, $v1, $v0
    /* 380E8 801C1060 02004014 */  bnez       $v0, .L801C106C
    /* 380EC 801C1064 00000000 */   nop
    /* 380F0 801C1068 0D000700 */  break      7
  .L801C106C:
    /* 380F4 801C106C 10100000 */  mfhi       $v0
    /* 380F8 801C1070 00000000 */  nop
    /* 380FC 801C1074 03004014 */  bnez       $v0, .L801C1084
    /* 38100 801C1078 00000000 */   nop
    /* 38104 801C107C 79040708 */  j          .L801C11E4
    /* 38108 801C1080 17000224 */   addiu     $v0, $zero, 0x17
  .L801C1084:
    /* 3810C 801C1084 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38110 801C1088 21080102 */  addu       $at, $s0, $at
    /* 38114 801C108C DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 38118 801C1090 79040708 */  j          .L801C11E4
    /* 3811C 801C1094 01004224 */   addiu     $v0, $v0, 0x1
  .L801C1098:
    /* 38120 801C1098 9F0220A2 */  sb         $zero, 0x29F($s1)
    /* 38124 801C109C 715C000C */  jal        func_800171C4
    /* 38128 801C10A0 FF000424 */   addiu     $a0, $zero, 0xFF
    /* 3812C 801C10A4 7C040708 */  j          .L801C11F0
    /* 38130 801C10A8 00000000 */   nop
  jlabel .L801C10AC
    /* 38134 801C10AC 40000424 */  addiu      $a0, $zero, 0x40
    /* 38138 801C10B0 37BC010C */  jal        func_8006F0DC
    /* 3813C 801C10B4 21280000 */   addu      $a1, $zero, $zero
    /* 38140 801C10B8 4D004010 */  beqz       $v0, .L801C11F0
    /* 38144 801C10BC 00000000 */   nop
    /* 38148 801C10C0 1908070C */  jal        func_801C2064
    /* 3814C 801C10C4 00000000 */   nop
    /* 38150 801C10C8 1C80043C */  lui        $a0, %hi(func_801C2A3C)
    /* 38154 801C10CC 3C2A8424 */  addiu      $a0, $a0, %lo(func_801C2A3C)
    /* 38158 801C10D0 7B06070C */  jal        func_801C19EC
    /* 3815C 801C10D4 00000000 */   nop
    /* 38160 801C10D8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38164 801C10DC 21080102 */  addu       $at, $s0, $at
    /* 38168 801C10E0 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 3816C 801C10E4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38170 801C10E8 21080102 */  addu       $at, $s0, $at
    /* 38174 801C10EC D8AB20A0 */  sb         $zero, -0x5428($at)
    /* 38178 801C10F0 79040708 */  j          .L801C11E4
    /* 3817C 801C10F4 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801C10F8
    /* 38180 801C10F8 1FBC010C */  jal        func_8006F07C
    /* 38184 801C10FC 10000424 */   addiu     $a0, $zero, 0x10
    /* 38188 801C1100 3B004010 */  beqz       $v0, .L801C11F0
    /* 3818C 801C1104 04000224 */   addiu     $v0, $zero, 0x4
    /* 38190 801C1108 79040708 */  j          .L801C11E4
    /* 38194 801C110C 00000000 */   nop
  jlabel .L801C1110
    /* 38198 801C1110 40000424 */  addiu      $a0, $zero, 0x40
    /* 3819C 801C1114 37BC010C */  jal        func_8006F0DC
    /* 381A0 801C1118 21280000 */   addu      $a1, $zero, $zero
    /* 381A4 801C111C 34004010 */  beqz       $v0, .L801C11F0
    /* 381A8 801C1120 00000000 */   nop
    /* 381AC 801C1124 0100013C */  lui        $at, (0x10000 >> 16)
    /* 381B0 801C1128 21080102 */  addu       $at, $s0, $at
    /* 381B4 801C112C DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 381B8 801C1130 79040708 */  j          .L801C11E4
    /* 381BC 801C1134 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801C1138
    /* 381C0 801C1138 01000224 */  addiu      $v0, $zero, 0x1
    /* 381C4 801C113C 1E80013C */  lui        $at, %hi(D_801D8DFC)
    /* 381C8 801C1140 FC8D22A0 */  sb         $v0, %lo(D_801D8DFC)($at)
    /* 381CC 801C1144 1E80013C */  lui        $at, %hi(D_801D8DFB)
    /* 381D0 801C1148 FB8D20A0 */  sb         $zero, %lo(D_801D8DFB)($at)
    /* 381D4 801C114C 7F5C000C */  jal        func_800171FC
    /* 381D8 801C1150 01000424 */   addiu     $a0, $zero, 0x1
    /* 381DC 801C1154 79040708 */  j          .L801C11E4
    /* 381E0 801C1158 28000224 */   addiu     $v0, $zero, 0x28
  jlabel .L801C115C
    /* 381E4 801C115C 4E39060C */  jal        func_8018E538
    /* 381E8 801C1160 21200000 */   addu      $a0, $zero, $zero
    /* 381EC 801C1164 0100013C */  lui        $at, (0x10000 >> 16)
    /* 381F0 801C1168 21080102 */  addu       $at, $s0, $at
    /* 381F4 801C116C DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 381F8 801C1170 300320A2 */  sb         $zero, 0x330($s1)
    /* 381FC 801C1174 9F0220A2 */  sb         $zero, 0x29F($s1)
    /* 38200 801C1178 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 38204 801C117C F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 38208 801C1180 79040708 */  j          .L801C11E4
    /* 3820C 801C1184 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801C1188
    /* 38210 801C1188 D966000C */  jal        func_80019B64
    /* 38214 801C118C CA000424 */   addiu     $a0, $zero, 0xCA
    /* 38218 801C1190 17004010 */  beqz       $v0, .L801C11F0
    /* 3821C 801C1194 01000224 */   addiu     $v0, $zero, 0x1
    /* 38220 801C1198 300322A2 */  sb         $v0, 0x330($s1)
    /* 38224 801C119C FF000224 */  addiu      $v0, $zero, 0xFF
    /* 38228 801C11A0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3822C 801C11A4 21080102 */  addu       $at, $s0, $at
    /* 38230 801C11A8 D6AB22A4 */  sh         $v0, -0x542A($at)
    /* 38234 801C11AC 34A3060C */  jal        func_801A8CD0
    /* 38238 801C11B0 00000000 */   nop
    /* 3823C 801C11B4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38240 801C11B8 21080102 */  addu       $at, $s0, $at
    /* 38244 801C11BC DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 38248 801C11C0 79040708 */  j          .L801C11E4
    /* 3824C 801C11C4 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801C11C8
    /* 38250 801C11C8 88AD020C */  jal        func_800AB620
    /* 38254 801C11CC 05020424 */   addiu     $a0, $zero, 0x205
    /* 38258 801C11D0 79040708 */  j          .L801C11E4
    /* 3825C 801C11D4 01000224 */   addiu     $v0, $zero, 0x1
  jlabel .L801C11D8
    /* 38260 801C11D8 7F5C000C */  jal        func_800171FC
    /* 38264 801C11DC 04000424 */   addiu     $a0, $zero, 0x4
    /* 38268 801C11E0 32000224 */  addiu      $v0, $zero, 0x32
  .L801C11E4:
    /* 3826C 801C11E4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38270 801C11E8 21080102 */  addu       $at, $s0, $at
    /* 38274 801C11EC DAAB22A0 */  sb         $v0, -0x5426($at)
  jlabel .L801C11F0
    /* 38278 801C11F0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3827C 801C11F4 1400B18F */  lw         $s1, 0x14($sp)
    /* 38280 801C11F8 1000B08F */  lw         $s0, 0x10($sp)
    /* 38284 801C11FC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 38288 801C1200 0800E003 */  jr         $ra
    /* 3828C 801C1204 00000000 */   nop
endlabel func_801C0958
