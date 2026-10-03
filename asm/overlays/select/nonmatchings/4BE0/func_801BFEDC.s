nonmatching func_801BFEDC, 0x218

glabel func_801BFEDC
    /* 36F64 801BFEDC 1180033C */  lui        $v1, %hi(D_8010A322)
    /* 36F68 801BFEE0 22A36390 */  lbu        $v1, %lo(D_8010A322)($v1)
    /* 36F6C 801BFEE4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 36F70 801BFEE8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 36F74 801BFEEC 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 36F78 801BFEF0 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 36F7C 801BFEF4 0500622C */  sltiu      $v0, $v1, 0x5
    /* 36F80 801BFEF8 79004010 */  beqz       $v0, .L801C00E0
    /* 36F84 801BFEFC 1400BFAF */   sw        $ra, 0x14($sp)
    /* 36F88 801BFF00 80100300 */  sll        $v0, $v1, 2
    /* 36F8C 801BFF04 1980013C */  lui        $at, %hi(jtbl_8018B904)
    /* 36F90 801BFF08 21082200 */  addu       $at, $at, $v0
    /* 36F94 801BFF0C 04B9228C */  lw         $v0, %lo(jtbl_8018B904)($at)
    /* 36F98 801BFF10 00000000 */  nop
    /* 36F9C 801BFF14 08004000 */  jr         $v0
    /* 36FA0 801BFF18 00000000 */   nop
  jlabel .L801BFF1C
    /* 36FA4 801BFF1C 01000224 */  addiu      $v0, $zero, 0x1
    /* 36FA8 801BFF20 0100013C */  lui        $at, (0x10000 >> 16)
    /* 36FAC 801BFF24 21080102 */  addu       $at, $s0, $at
    /* 36FB0 801BFF28 228F20A0 */  sb         $zero, -0x70DE($at)
    /* 36FB4 801BFF2C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 36FB8 801BFF30 21080102 */  addu       $at, $s0, $at
    /* 36FBC 801BFF34 238F20A0 */  sb         $zero, -0x70DD($at)
    /* 36FC0 801BFF38 0100013C */  lui        $at, (0x10000 >> 16)
    /* 36FC4 801BFF3C 21080102 */  addu       $at, $s0, $at
    /* 36FC8 801BFF40 A8AB20A0 */  sb         $zero, -0x5458($at)
    /* 36FCC 801BFF44 0100013C */  lui        $at, (0x10000 >> 16)
    /* 36FD0 801BFF48 21080102 */  addu       $at, $s0, $at
    /* 36FD4 801BFF4C 158F20A0 */  sb         $zero, -0x70EB($at)
    /* 36FD8 801BFF50 0100013C */  lui        $at, (0x10000 >> 16)
    /* 36FDC 801BFF54 21080102 */  addu       $at, $s0, $at
    /* 36FE0 801BFF58 218F20A0 */  sb         $zero, -0x70DF($at)
    /* 36FE4 801BFF5C 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 36FE8 801BFF60 F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 36FEC 801BFF64 1E80013C */  lui        $at, %hi(D_801D8B18)
    /* 36FF0 801BFF68 188B20A0 */  sb         $zero, %lo(D_801D8B18)($at)
    /* 36FF4 801BFF6C 1E80013C */  lui        $at, %hi(D_801D8DFB)
    /* 36FF8 801BFF70 FB8D20A0 */  sb         $zero, %lo(D_801D8DFB)($at)
    /* 36FFC 801BFF74 1E80013C */  lui        $at, %hi(D_801D8DFC)
    /* 37000 801BFF78 FC8D22A0 */  sb         $v0, %lo(D_801D8DFC)($at)
    /* 37004 801BFF7C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37008 801BFF80 21080102 */  addu       $at, $s0, $at
    /* 3700C 801BFF84 A1AB20A0 */  sb         $zero, -0x545F($at)
    /* 37010 801BFF88 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37014 801BFF8C 21080102 */  addu       $at, $s0, $at
    /* 37018 801BFF90 A0AB20A0 */  sb         $zero, -0x5460($at)
    /* 3701C 801BFF94 1E80013C */  lui        $at, %hi(D_801DA06B)
    /* 37020 801BFF98 6BA020A0 */  sb         $zero, %lo(D_801DA06B)($at)
    /* 37024 801BFF9C 1E80013C */  lui        $at, %hi(D_801DA069)
    /* 37028 801BFFA0 69A020A0 */  sb         $zero, %lo(D_801DA069)($at)
    /* 3702C 801BFFA4 1E80013C */  lui        $at, %hi(D_801DA06A)
    /* 37030 801BFFA8 6AA020A0 */  sb         $zero, %lo(D_801DA06A)($at)
    /* 37034 801BFFAC 1E80013C */  lui        $at, %hi(D_801DA068)
    /* 37038 801BFFB0 68A020A0 */  sb         $zero, %lo(D_801DA068)($at)
    /* 3703C 801BFFB4 1E80013C */  lui        $at, %hi(D_801DA5D0)
    /* 37040 801BFFB8 D0A520A4 */  sh         $zero, %lo(D_801DA5D0)($at)
    /* 37044 801BFFBC 1E80013C */  lui        $at, %hi(D_801DA5D2)
    /* 37048 801BFFC0 D2A520A4 */  sh         $zero, %lo(D_801DA5D2)($at)
    /* 3704C 801BFFC4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37050 801BFFC8 21080102 */  addu       $at, $s0, $at
    /* 37054 801BFFCC DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 37058 801BFFD0 04000324 */  addiu      $v1, $zero, 0x4
    /* 3705C 801BFFD4 1E80013C */  lui        $at, %hi(D_801DA5D4)
    /* 37060 801BFFD8 D4A523A4 */  sh         $v1, %lo(D_801DA5D4)($at)
    /* 37064 801BFFDC 1E80013C */  lui        $at, %hi(D_801DA5D6)
    /* 37068 801BFFE0 D6A523A4 */  sh         $v1, %lo(D_801DA5D6)($at)
    /* 3706C 801BFFE4 0C000708 */  j          .L801C0030
    /* 37070 801BFFE8 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801BFFEC
    /* 37074 801BFFEC 4E39060C */  jal        func_8018E538
    /* 37078 801BFFF0 21200000 */   addu      $a0, $zero, $zero
    /* 3707C 801BFFF4 1908070C */  jal        func_801C2064
    /* 37080 801BFFF8 00000000 */   nop
    /* 37084 801BFFFC 8F0A070C */  jal        func_801C2A3C
    /* 37088 801C0000 00000000 */   nop
    /* 3708C 801C0004 07000708 */  j          .L801C001C
    /* 37090 801C0008 00000000 */   nop
  jlabel .L801C000C
    /* 37094 801C000C 1FBC010C */  jal        func_8006F07C
    /* 37098 801C0010 10000424 */   addiu     $a0, $zero, 0x10
    /* 3709C 801C0014 32004010 */  beqz       $v0, .L801C00E0
    /* 370A0 801C0018 00000000 */   nop
  .L801C001C:
    /* 370A4 801C001C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 370A8 801C0020 21080102 */  addu       $at, $s0, $at
    /* 370AC 801C0024 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 370B0 801C0028 00000000 */  nop
    /* 370B4 801C002C 01004224 */  addiu      $v0, $v0, 0x1
  .L801C0030:
    /* 370B8 801C0030 0100013C */  lui        $at, (0x10000 >> 16)
    /* 370BC 801C0034 21080102 */  addu       $at, $s0, $at
    /* 370C0 801C0038 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 370C4 801C003C 38000708 */  j          .L801C00E0
    /* 370C8 801C0040 00000000 */   nop
  jlabel .L801C0044
    /* 370CC 801C0044 B705070C */  jal        func_801C16DC
    /* 370D0 801C0048 21200000 */   addu      $a0, $zero, $zero
    /* 370D4 801C004C 02000324 */  addiu      $v1, $zero, 0x2
    /* 370D8 801C0050 0B004314 */  bne        $v0, $v1, .L801C0080
    /* 370DC 801C0054 00000000 */   nop
    /* 370E0 801C0058 88AD020C */  jal        func_800AB620
    /* 370E4 801C005C 28050424 */   addiu     $a0, $zero, 0x528
    /* 370E8 801C0060 0100013C */  lui        $at, (0x10000 >> 16)
    /* 370EC 801C0064 21080102 */  addu       $at, $s0, $at
    /* 370F0 801C0068 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 370F4 801C006C 00000000 */  nop
    /* 370F8 801C0070 01004224 */  addiu      $v0, $v0, 0x1
    /* 370FC 801C0074 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37100 801C0078 21080102 */  addu       $at, $s0, $at
    /* 37104 801C007C DAAB22A0 */  sb         $v0, -0x5426($at)
  .L801C0080:
    /* 37108 801C0080 8F0A070C */  jal        func_801C2A3C
    /* 3710C 801C0084 00000000 */   nop
    /* 37110 801C0088 38000708 */  j          .L801C00E0
    /* 37114 801C008C 00000000 */   nop
  jlabel .L801C0090
    /* 37118 801C0090 40000424 */  addiu      $a0, $zero, 0x40
    /* 3711C 801C0094 37BC010C */  jal        func_8006F0DC
    /* 37120 801C0098 21280000 */   addu      $a1, $zero, $zero
    /* 37124 801C009C 10004010 */  beqz       $v0, .L801C00E0
    /* 37128 801C00A0 11000324 */   addiu     $v1, $zero, 0x11
    /* 3712C 801C00A4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37130 801C00A8 21080102 */  addu       $at, $s0, $at
    /* 37134 801C00AC 228F2290 */  lbu        $v0, -0x70DE($at)
    /* 37138 801C00B0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3713C 801C00B4 21080102 */  addu       $at, $s0, $at
    /* 37140 801C00B8 238F23A0 */  sb         $v1, -0x70DD($at)
    /* 37144 801C00BC 01004224 */  addiu      $v0, $v0, 0x1
    /* 37148 801C00C0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3714C 801C00C4 21080102 */  addu       $at, $s0, $at
    /* 37150 801C00C8 228F22A0 */  sb         $v0, -0x70DE($at)
    /* 37154 801C00CC 7F5C000C */  jal        func_800171FC
    /* 37158 801C00D0 01000424 */   addiu     $a0, $zero, 0x1
    /* 3715C 801C00D4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 37160 801C00D8 21080102 */  addu       $at, $s0, $at
    /* 37164 801C00DC DAAB20A0 */  sb         $zero, -0x5426($at)
  .L801C00E0:
    /* 37168 801C00E0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3716C 801C00E4 1000B08F */  lw         $s0, 0x10($sp)
    /* 37170 801C00E8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 37174 801C00EC 0800E003 */  jr         $ra
    /* 37178 801C00F0 00000000 */   nop
endlabel func_801BFEDC
