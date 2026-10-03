nonmatching func_8018CE40, 0x3DC

glabel func_8018CE40
    /* 3EC8 8018CE40 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 3ECC 8018CE44 2800B2AF */  sw         $s2, 0x28($sp)
    /* 3ED0 8018CE48 1000A4AF */  sw         $a0, 0x10($sp)
    /* 3ED4 8018CE4C 1000B28F */  lw         $s2, 0x10($sp)
    /* 3ED8 8018CE50 4000BEAF */  sw         $fp, 0x40($sp)
    /* 3EDC 8018CE54 80001E24 */  addiu      $fp, $zero, 0x80
    /* 3EE0 8018CE58 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 3EE4 8018CE5C 21B80000 */  addu       $s7, $zero, $zero
    /* 3EE8 8018CE60 3400B5AF */  sw         $s5, 0x34($sp)
    /* 3EEC 8018CE64 1980153C */  lui        $s5, %hi(D_80193860)
    /* 3EF0 8018CE68 6038B526 */  addiu      $s5, $s5, %lo(D_80193860)
    /* 3EF4 8018CE6C 3800B6AF */  sw         $s6, 0x38($sp)
    /* 3EF8 8018CE70 1980163C */  lui        $s6, %hi(D_80193848)
    /* 3EFC 8018CE74 4838D626 */  addiu      $s6, $s6, %lo(D_80193848)
    /* 3F00 8018CE78 4400BFAF */  sw         $ra, 0x44($sp)
    /* 3F04 8018CE7C 3000B4AF */  sw         $s4, 0x30($sp)
    /* 3F08 8018CE80 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 3F0C 8018CE84 2400B1AF */  sw         $s1, 0x24($sp)
    /* 3F10 8018CE88 2000B0AF */  sw         $s0, 0x20($sp)
    /* 3F14 8018CE8C 1800A0AF */  sw         $zero, 0x18($sp)
  .L8018CE90:
    /* 3F18 8018CE90 801F023C */  lui        $v0, (0x1F8002E5 >> 16)
    /* 3F1C 8018CE94 E5024290 */  lbu        $v0, (0x1F8002E5 & 0xFFFF)($v0)
    /* 3F20 8018CE98 801F043C */  lui        $a0, (0x1F8002E4 >> 16)
    /* 3F24 8018CE9C E4028490 */  lbu        $a0, (0x1F8002E4 & 0xFFFF)($a0)
    /* 3F28 8018CEA0 40180200 */  sll        $v1, $v0, 1
    /* 3F2C 8018CEA4 21186200 */  addu       $v1, $v1, $v0
    /* 3F30 8018CEA8 21208300 */  addu       $a0, $a0, $v1
    /* 3F34 8018CEAC 05008010 */  beqz       $a0, .L8018CEC4
    /* 3F38 8018CEB0 01000224 */   addiu     $v0, $zero, 0x1
    /* 3F3C 8018CEB4 3E008210 */  beq        $a0, $v0, .L8018CFB0
    /* 3F40 8018CEB8 21980000 */   addu      $s3, $zero, $zero
    /* 3F44 8018CEBC 21340608 */  j          .L8018D084
    /* 3F48 8018CEC0 00000000 */   nop
  .L8018CEC4:
    /* 3F4C 8018CEC4 5BB7020C */  jal        func_800ADD6C
    /* 3F50 8018CEC8 21204002 */   addu      $a0, $s2, $zero
    /* 3F54 8018CECC 21204002 */  addu       $a0, $s2, $zero
    /* 3F58 8018CED0 38B7020C */  jal        func_800ADCE0
    /* 3F5C 8018CED4 01000524 */   addiu     $a1, $zero, 0x1
    /* 3F60 8018CED8 21204002 */  addu       $a0, $s2, $zero
    /* 3F64 8018CEDC 2EB7020C */  jal        func_800ADCB8
    /* 3F68 8018CEE0 01000524 */   addiu     $a1, $zero, 0x1
    /* 3F6C 8018CEE4 21200000 */  addu       $a0, $zero, $zero
    /* 3F70 8018CEE8 02000524 */  addiu      $a1, $zero, 0x2
    /* 3F74 8018CEEC 80020624 */  addiu      $a2, $zero, 0x280
    /* 3F78 8018CEF0 B6B6020C */  jal        func_800ADAD8
    /* 3F7C 8018CEF4 21380000 */   addu      $a3, $zero, $zero
    /* 3F80 8018CEF8 21200000 */  addu       $a0, $zero, $zero
    /* 3F84 8018CEFC F8010524 */  addiu      $a1, $zero, 0x1F8
    /* 3F88 8018CF00 C5B6020C */  jal        func_800ADB14
    /* 3F8C 8018CF04 160042A6 */   sh        $v0, 0x16($s2)
    /* 3F90 8018CF08 1F000824 */  addiu      $t0, $zero, 0x1F
    /* 3F94 8018CF0C 140048A2 */  sb         $t0, 0x14($s2)
    /* 3F98 8018CF10 FF000824 */  addiu      $t0, $zero, 0xFF
    /* 3F9C 8018CF14 1D0048A2 */  sb         $t0, 0x1D($s2)
    /* 3FA0 8018CF18 1F000824 */  addiu      $t0, $zero, 0x1F
    /* 3FA4 8018CF1C 240048A2 */  sb         $t0, 0x24($s2)
    /* 3FA8 8018CF20 FF000824 */  addiu      $t0, $zero, 0xFF
    /* 3FAC 8018CF24 0E0042A6 */  sh         $v0, 0xE($s2)
    /* 3FB0 8018CF28 0C0040A2 */  sb         $zero, 0xC($s2)
    /* 3FB4 8018CF2C 0D005EA2 */  sb         $fp, 0xD($s2)
    /* 3FB8 8018CF30 15005EA2 */  sb         $fp, 0x15($s2)
    /* 3FBC 8018CF34 1C0040A2 */  sb         $zero, 0x1C($s2)
    /* 3FC0 8018CF38 250048A2 */  sb         $t0, 0x25($s2)
    /* 3FC4 8018CF3C 04005EA2 */  sb         $fp, 0x4($s2)
    /* 3FC8 8018CF40 05005EA2 */  sb         $fp, 0x5($s2)
    /* 3FCC 8018CF44 06005EA2 */  sb         $fp, 0x6($s2)
    /* 3FD0 8018CF48 B0FF0824 */  addiu      $t0, $zero, -0x50
    /* 3FD4 8018CF4C A0FE0224 */  addiu      $v0, $zero, -0x160
    /* 3FD8 8018CF50 0000C8A6 */  sh         $t0, 0x0($s6)
    /* 3FDC 8018CF54 1980083C */  lui        $t0, %hi(D_80193848)
    /* 3FE0 8018CF58 48380825 */  addiu      $t0, $t0, %lo(D_80193848)
    /* 3FE4 8018CF5C 08000325 */  addiu      $v1, $t0, 0x8
    /* 3FE8 8018CF60 2118E302 */  addu       $v1, $s7, $v1
    /* 3FEC 8018CF64 0200C0A6 */  sh         $zero, 0x2($s6)
    /* 3FF0 8018CF68 0400C2A6 */  sh         $v0, 0x4($s6)
    /* 3FF4 8018CF6C 50000824 */  addiu      $t0, $zero, 0x50
    /* 3FF8 8018CF70 000068A4 */  sh         $t0, 0x0($v1)
    /* 3FFC 8018CF74 1980083C */  lui        $t0, %hi(D_80193848)
    /* 4000 8018CF78 48380825 */  addiu      $t0, $t0, %lo(D_80193848)
    /* 4004 8018CF7C 040062A4 */  sh         $v0, 0x4($v1)
    /* 4008 8018CF80 10000225 */  addiu      $v0, $t0, 0x10
    /* 400C 8018CF84 2110E202 */  addu       $v0, $s7, $v0
    /* 4010 8018CF88 020060A4 */  sh         $zero, 0x2($v1)
    /* 4014 8018CF8C B0FF0824 */  addiu      $t0, $zero, -0x50
    /* 4018 8018CF90 000048A4 */  sh         $t0, 0x0($v0)
    /* 401C 8018CF94 020040A4 */  sh         $zero, 0x2($v0)
    /* 4020 8018CF98 040040A4 */  sh         $zero, 0x4($v0)
    /* 4024 8018CF9C 50000824 */  addiu      $t0, $zero, 0x50
    /* 4028 8018CFA0 0000A8A6 */  sh         $t0, 0x0($s5)
    /* 402C 8018CFA4 0200A0A6 */  sh         $zero, 0x2($s5)
    /* 4030 8018CFA8 6D340608 */  j          .L8018D1B4
    /* 4034 8018CFAC 0400A0A6 */   sh        $zero, 0x4($s5)
  .L8018CFB0:
    /* 4038 8018CFB0 5BB7020C */  jal        func_800ADD6C
    /* 403C 8018CFB4 21204002 */   addu      $a0, $s2, $zero
    /* 4040 8018CFB8 21204002 */  addu       $a0, $s2, $zero
    /* 4044 8018CFBC 38B7020C */  jal        func_800ADCE0
    /* 4048 8018CFC0 01000524 */   addiu     $a1, $zero, 0x1
    /* 404C 8018CFC4 21204002 */  addu       $a0, $s2, $zero
    /* 4050 8018CFC8 2EB7020C */  jal        func_800ADCB8
    /* 4054 8018CFCC 01000524 */   addiu     $a1, $zero, 0x1
    /* 4058 8018CFD0 21200000 */  addu       $a0, $zero, $zero
    /* 405C 8018CFD4 02000524 */  addiu      $a1, $zero, 0x2
    /* 4060 8018CFD8 80020624 */  addiu      $a2, $zero, 0x280
    /* 4064 8018CFDC B6B6020C */  jal        func_800ADAD8
    /* 4068 8018CFE0 21380000 */   addu      $a3, $zero, $zero
    /* 406C 8018CFE4 21200000 */  addu       $a0, $zero, $zero
    /* 4070 8018CFE8 F8010524 */  addiu      $a1, $zero, 0x1F8
    /* 4074 8018CFEC C5B6020C */  jal        func_800ADB14
    /* 4078 8018CFF0 160042A6 */   sh        $v0, 0x16($s2)
    /* 407C 8018CFF4 0E0042A6 */  sh         $v0, 0xE($s2)
    /* 4080 8018CFF8 20000224 */  addiu      $v0, $zero, 0x20
    /* 4084 8018CFFC 3F000324 */  addiu      $v1, $zero, 0x3F
    /* 4088 8018D000 0C0042A2 */  sb         $v0, 0xC($s2)
    /* 408C 8018D004 1C0042A2 */  sb         $v0, 0x1C($s2)
    /* 4090 8018D008 9F000224 */  addiu      $v0, $zero, 0x9F
    /* 4094 8018D00C 90FF0424 */  addiu      $a0, $zero, -0x70
    /* 4098 8018D010 1980083C */  lui        $t0, %hi(D_80193848)
    /* 409C 8018D014 48380825 */  addiu      $t0, $t0, %lo(D_80193848)
    /* 40A0 8018D018 1D0042A2 */  sb         $v0, 0x1D($s2)
    /* 40A4 8018D01C 250042A2 */  sb         $v0, 0x25($s2)
    /* 40A8 8018D020 08000225 */  addiu      $v0, $t0, 0x8
    /* 40AC 8018D024 2110E202 */  addu       $v0, $s7, $v0
    /* 40B0 8018D028 140043A2 */  sb         $v1, 0x14($s2)
    /* 40B4 8018D02C 240043A2 */  sb         $v1, 0x24($s2)
    /* 40B8 8018D030 70000324 */  addiu      $v1, $zero, 0x70
    /* 40BC 8018D034 04005EA2 */  sb         $fp, 0x4($s2)
    /* 40C0 8018D038 05005EA2 */  sb         $fp, 0x5($s2)
    /* 40C4 8018D03C 06005EA2 */  sb         $fp, 0x6($s2)
    /* 40C8 8018D040 0D005EA2 */  sb         $fp, 0xD($s2)
    /* 40CC 8018D044 15005EA2 */  sb         $fp, 0x15($s2)
    /* 40D0 8018D048 0000C4A6 */  sh         $a0, 0x0($s6)
    /* 40D4 8018D04C 0200C0A6 */  sh         $zero, 0x2($s6)
    /* 40D8 8018D050 0400C4A6 */  sh         $a0, 0x4($s6)
    /* 40DC 8018D054 000043A4 */  sh         $v1, 0x0($v0)
    /* 40E0 8018D058 020040A4 */  sh         $zero, 0x2($v0)
    /* 40E4 8018D05C 040044A4 */  sh         $a0, 0x4($v0)
    /* 40E8 8018D060 10000225 */  addiu      $v0, $t0, 0x10
    /* 40EC 8018D064 2110E202 */  addu       $v0, $s7, $v0
    /* 40F0 8018D068 000044A4 */  sh         $a0, 0x0($v0)
    /* 40F4 8018D06C 020040A4 */  sh         $zero, 0x2($v0)
    /* 40F8 8018D070 040043A4 */  sh         $v1, 0x4($v0)
    /* 40FC 8018D074 0000A3A6 */  sh         $v1, 0x0($s5)
    /* 4100 8018D078 0200A0A6 */  sh         $zero, 0x2($s5)
    /* 4104 8018D07C 6D340608 */  j          .L8018D1B4
    /* 4108 8018D080 0400A3A6 */   sh        $v1, 0x4($s5)
  .L8018D084:
    /* 410C 8018D084 1800B48F */  lw         $s4, 0x18($sp)
    /* 4110 8018D088 21884002 */  addu       $s1, $s2, $zero
  .L8018D08C:
    /* 4114 8018D08C 5BB7020C */  jal        func_800ADD6C
    /* 4118 8018D090 21202002 */   addu      $a0, $s1, $zero
    /* 411C 8018D094 21202002 */  addu       $a0, $s1, $zero
    /* 4120 8018D098 38B7020C */  jal        func_800ADCE0
    /* 4124 8018D09C 21280000 */   addu      $a1, $zero, $zero
    /* 4128 8018D0A0 21202002 */  addu       $a0, $s1, $zero
    /* 412C 8018D0A4 2EB7020C */  jal        func_800ADCB8
    /* 4130 8018D0A8 01000524 */   addiu     $a1, $zero, 0x1
    /* 4134 8018D0AC 21200000 */  addu       $a0, $zero, $zero
    /* 4138 8018D0B0 02000524 */  addiu      $a1, $zero, 0x2
    /* 413C 8018D0B4 80020624 */  addiu      $a2, $zero, 0x280
    /* 4140 8018D0B8 B6B6020C */  jal        func_800ADAD8
    /* 4144 8018D0BC 21380000 */   addu      $a3, $zero, $zero
    /* 4148 8018D0C0 21200000 */  addu       $a0, $zero, $zero
    /* 414C 8018D0C4 1000A88F */  lw         $t0, 0x10($sp)
    /* 4150 8018D0C8 F8010524 */  addiu      $a1, $zero, 0x1F8
    /* 4154 8018D0CC 21801401 */  addu       $s0, $t0, $s4
    /* 4158 8018D0D0 160002A6 */  sh         $v0, 0x16($s0)
    /* 415C 8018D0D4 50000824 */  addiu      $t0, $zero, 0x50
    /* 4160 8018D0D8 040028A2 */  sb         $t0, 0x4($s1)
    /* 4164 8018D0DC 050028A2 */  sb         $t0, 0x5($s1)
    /* 4168 8018D0E0 C5B6020C */  jal        func_800ADB14
    /* 416C 8018D0E4 060028A2 */   sb        $t0, 0x6($s1)
    /* 4170 8018D0E8 28009426 */  addiu      $s4, $s4, 0x28
    /* 4174 8018D0EC 0E0002A6 */  sh         $v0, 0xE($s0)
    /* 4178 8018D0F0 1F000824 */  addiu      $t0, $zero, 0x1F
    /* 417C 8018D0F4 140028A2 */  sb         $t0, 0x14($s1)
    /* 4180 8018D0F8 FF000824 */  addiu      $t0, $zero, 0xFF
    /* 4184 8018D0FC 1D0028A2 */  sb         $t0, 0x1D($s1)
    /* 4188 8018D100 1F000824 */  addiu      $t0, $zero, 0x1F
    /* 418C 8018D104 240028A2 */  sb         $t0, 0x24($s1)
    /* 4190 8018D108 FF000824 */  addiu      $t0, $zero, 0xFF
    /* 4194 8018D10C 0C0020A2 */  sb         $zero, 0xC($s1)
    /* 4198 8018D110 0D003EA2 */  sb         $fp, 0xD($s1)
    /* 419C 8018D114 15003EA2 */  sb         $fp, 0x15($s1)
    /* 41A0 8018D118 1C0020A2 */  sb         $zero, 0x1C($s1)
    /* 41A4 8018D11C 250028A2 */  sb         $t0, 0x25($s1)
    /* 41A8 8018D120 28003126 */  addiu      $s1, $s1, 0x28
    /* 41AC 8018D124 40191300 */  sll        $v1, $s3, 5
    /* 41B0 8018D128 01007326 */  addiu      $s3, $s3, 0x1
    /* 41B4 8018D12C 2118E302 */  addu       $v1, $s7, $v1
    /* 41B8 8018D130 1980083C */  lui        $t0, %hi(D_80193848)
    /* 41BC 8018D134 48380825 */  addiu      $t0, $t0, %lo(D_80193848)
    /* 41C0 8018D138 21106800 */  addu       $v0, $v1, $t0
    /* 41C4 8018D13C C0FF0824 */  addiu      $t0, $zero, -0x40
    /* 41C8 8018D140 40FE0424 */  addiu      $a0, $zero, -0x1C0
    /* 41CC 8018D144 000048A4 */  sh         $t0, 0x0($v0)
    /* 41D0 8018D148 1980083C */  lui        $t0, %hi(D_80193848)
    /* 41D4 8018D14C 48380825 */  addiu      $t0, $t0, %lo(D_80193848)
    /* 41D8 8018D150 020040A4 */  sh         $zero, 0x2($v0)
    /* 41DC 8018D154 040044A4 */  sh         $a0, 0x4($v0)
    /* 41E0 8018D158 08000225 */  addiu      $v0, $t0, 0x8
    /* 41E4 8018D15C 21106200 */  addu       $v0, $v1, $v0
    /* 41E8 8018D160 40000824 */  addiu      $t0, $zero, 0x40
    /* 41EC 8018D164 000048A4 */  sh         $t0, 0x0($v0)
    /* 41F0 8018D168 1980083C */  lui        $t0, %hi(D_80193848)
    /* 41F4 8018D16C 48380825 */  addiu      $t0, $t0, %lo(D_80193848)
    /* 41F8 8018D170 020040A4 */  sh         $zero, 0x2($v0)
    /* 41FC 8018D174 040044A4 */  sh         $a0, 0x4($v0)
    /* 4200 8018D178 10000225 */  addiu      $v0, $t0, 0x10
    /* 4204 8018D17C 21106200 */  addu       $v0, $v1, $v0
    /* 4208 8018D180 C0FF0824 */  addiu      $t0, $zero, -0x40
    /* 420C 8018D184 000048A4 */  sh         $t0, 0x0($v0)
    /* 4210 8018D188 1980083C */  lui        $t0, %hi(D_80193860)
    /* 4214 8018D18C 60380825 */  addiu      $t0, $t0, %lo(D_80193860)
    /* 4218 8018D190 21186800 */  addu       $v1, $v1, $t0
    /* 421C 8018D194 020040A4 */  sh         $zero, 0x2($v0)
    /* 4220 8018D198 040040A4 */  sh         $zero, 0x4($v0)
    /* 4224 8018D19C 40000824 */  addiu      $t0, $zero, 0x40
    /* 4228 8018D1A0 0400622A */  slti       $v0, $s3, 0x4
    /* 422C 8018D1A4 000068A4 */  sh         $t0, 0x0($v1)
    /* 4230 8018D1A8 020060A4 */  sh         $zero, 0x2($v1)
    /* 4234 8018D1AC B7FF4014 */  bnez       $v0, .L8018D08C
    /* 4238 8018D1B0 040060A4 */   sh        $zero, 0x4($v1)
  .L8018D1B4:
    /* 423C 8018D1B4 8000F726 */  addiu      $s7, $s7, 0x80
    /* 4240 8018D1B8 A0005226 */  addiu      $s2, $s2, 0xA0
    /* 4244 8018D1BC 8000B526 */  addiu      $s5, $s5, 0x80
    /* 4248 8018D1C0 1800A88F */  lw         $t0, 0x18($sp)
    /* 424C 8018D1C4 00000000 */  nop
    /* 4250 8018D1C8 A0000825 */  addiu      $t0, $t0, 0xA0
    /* 4254 8018D1CC 1800A8AF */  sw         $t0, 0x18($sp)
    /* 4258 8018D1D0 1980083C */  lui        $t0, %hi(D_80193860)
    /* 425C 8018D1D4 60380825 */  addiu      $t0, $t0, %lo(D_80193860)
    /* 4260 8018D1D8 00040225 */  addiu      $v0, $t0, 0x400
    /* 4264 8018D1DC 2A10A202 */  slt        $v0, $s5, $v0
    /* 4268 8018D1E0 2BFF4014 */  bnez       $v0, .L8018CE90
    /* 426C 8018D1E4 8000D626 */   addiu     $s6, $s6, 0x80
    /* 4270 8018D1E8 4400BF8F */  lw         $ra, 0x44($sp)
    /* 4274 8018D1EC 4000BE8F */  lw         $fp, 0x40($sp)
    /* 4278 8018D1F0 3C00B78F */  lw         $s7, 0x3C($sp)
    /* 427C 8018D1F4 3800B68F */  lw         $s6, 0x38($sp)
    /* 4280 8018D1F8 3400B58F */  lw         $s5, 0x34($sp)
    /* 4284 8018D1FC 3000B48F */  lw         $s4, 0x30($sp)
    /* 4288 8018D200 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 428C 8018D204 2800B28F */  lw         $s2, 0x28($sp)
    /* 4290 8018D208 2400B18F */  lw         $s1, 0x24($sp)
    /* 4294 8018D20C 2000B08F */  lw         $s0, 0x20($sp)
    /* 4298 8018D210 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 429C 8018D214 0800E003 */  jr         $ra
    /* 42A0 8018D218 00000000 */   nop
endlabel func_8018CE40
