nonmatching func_801BDE5C, 0x8E8

glabel func_801BDE5C
    /* 34EE4 801BDE5C 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 34EE8 801BDE60 6666033C */  lui        $v1, (0x66666667 >> 16)
    /* 34EEC 801BDE64 1180023C */  lui        $v0, %hi(D_8010866A)
    /* 34EF0 801BDE68 6A864290 */  lbu        $v0, %lo(D_8010866A)($v0)
    /* 34EF4 801BDE6C 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
    /* 34EF8 801BDE70 5400B3AF */  sw         $s3, 0x54($sp)
    /* 34EFC 801BDE74 01004224 */  addiu      $v0, $v0, 0x1
    /* 34F00 801BDE78 18004300 */  mult       $v0, $v1
    /* 34F04 801BDE7C 21988000 */  addu       $s3, $a0, $zero
    /* 34F08 801BDE80 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 34F0C 801BDE84 1080153C */  lui        $s5, %hi(D_800FF748)
    /* 34F10 801BDE88 48F7B526 */  addiu      $s5, $s5, %lo(D_800FF748)
    /* 34F14 801BDE8C 6800BFAF */  sw         $ra, 0x68($sp)
    /* 34F18 801BDE90 6400B7AF */  sw         $s7, 0x64($sp)
    /* 34F1C 801BDE94 6000B6AF */  sw         $s6, 0x60($sp)
    /* 34F20 801BDE98 5800B4AF */  sw         $s4, 0x58($sp)
    /* 34F24 801BDE9C 5000B2AF */  sw         $s2, 0x50($sp)
    /* 34F28 801BDEA0 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 34F2C 801BDEA4 C3170200 */  sra        $v0, $v0, 31
    /* 34F30 801BDEA8 10400000 */  mfhi       $t0
    /* 34F34 801BDEAC 83180800 */  sra        $v1, $t0, 2
    /* 34F38 801BDEB0 23186200 */  subu       $v1, $v1, $v0
    /* 34F3C 801BDEB4 03006010 */  beqz       $v1, .L801BDEC4
    /* 34F40 801BDEB8 4800B0AF */   sw        $s0, 0x48($sp)
    /* 34F44 801BDEBC B2F70608 */  j          .L801BDEC8
    /* 34F48 801BDEC0 30006324 */   addiu     $v1, $v1, 0x30
  .L801BDEC4:
    /* 34F4C 801BDEC4 20000324 */  addiu      $v1, $zero, 0x20
  .L801BDEC8:
    /* 34F50 801BDEC8 6666023C */  lui        $v0, (0x66666667 >> 16)
    /* 34F54 801BDECC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 34F58 801BDED0 2108A102 */  addu       $at, $s5, $at
    /* 34F5C 801BDED4 228F2490 */  lbu        $a0, -0x70DE($at)
    /* 34F60 801BDED8 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* 34F64 801BDEDC 01008424 */  addiu      $a0, $a0, 0x1
    /* 34F68 801BDEE0 18008200 */  mult       $a0, $v0
    /* 34F6C 801BDEE4 1D80013C */  lui        $at, %hi(D_801D4274)
    /* 34F70 801BDEE8 744223A0 */  sb         $v1, %lo(D_801D4274)($at)
    /* 34F74 801BDEEC C3170400 */  sra        $v0, $a0, 31
    /* 34F78 801BDEF0 10400000 */  mfhi       $t0
    /* 34F7C 801BDEF4 83180800 */  sra        $v1, $t0, 2
    /* 34F80 801BDEF8 23186200 */  subu       $v1, $v1, $v0
    /* 34F84 801BDEFC 80100300 */  sll        $v0, $v1, 2
    /* 34F88 801BDF00 21104300 */  addu       $v0, $v0, $v1
    /* 34F8C 801BDF04 40100200 */  sll        $v0, $v0, 1
    /* 34F90 801BDF08 23208200 */  subu       $a0, $a0, $v0
    /* 34F94 801BDF0C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 34F98 801BDF10 2108A102 */  addu       $at, $s5, $at
    /* 34F9C 801BDF14 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 34FA0 801BDF18 30008424 */  addiu      $a0, $a0, 0x30
    /* 34FA4 801BDF1C 1D80013C */  lui        $at, %hi(D_801D4275)
    /* 34FA8 801BDF20 754224A0 */  sb         $a0, %lo(D_801D4275)($at)
    /* 34FAC 801BDF24 82110200 */  srl        $v0, $v0, 6
    /* 34FB0 801BDF28 01004230 */  andi       $v0, $v0, 0x1
    /* 34FB4 801BDF2C 02004010 */  beqz       $v0, .L801BDF38
    /* 34FB8 801BDF30 31000524 */   addiu     $a1, $zero, 0x31
    /* 34FBC 801BDF34 33000524 */  addiu      $a1, $zero, 0x33
  .L801BDF38:
    /* 34FC0 801BDF38 0100013C */  lui        $at, (0x10000 >> 16)
    /* 34FC4 801BDF3C 2108A102 */  addu       $at, $s5, $at
    /* 34FC8 801BDF40 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 34FCC 801BDF44 1D80013C */  lui        $at, %hi(D_801D4279)
    /* 34FD0 801BDF48 794225A0 */  sb         $a1, %lo(D_801D4279)($at)
    /* 34FD4 801BDF4C 82110200 */  srl        $v0, $v0, 6
    /* 34FD8 801BDF50 01004230 */  andi       $v0, $v0, 0x1
    /* 34FDC 801BDF54 02004014 */  bnez       $v0, .L801BDF60
    /* 34FE0 801BDF58 30000324 */   addiu     $v1, $zero, 0x30
    /* 34FE4 801BDF5C 35000324 */  addiu      $v1, $zero, 0x35
  .L801BDF60:
    /* 34FE8 801BDF60 21200000 */  addu       $a0, $zero, $zero
    /* 34FEC 801BDF64 20300524 */  addiu      $a1, $zero, 0x3020
    /* 34FF0 801BDF68 21300000 */  addu       $a2, $zero, $zero
    /* 34FF4 801BDF6C 21380000 */  addu       $a3, $zero, $zero
    /* 34FF8 801BDF70 1B000224 */  addiu      $v0, $zero, 0x1B
    /* 34FFC 801BDF74 1400A2AF */  sw         $v0, 0x14($sp)
    /* 35000 801BDF78 00100224 */  addiu      $v0, $zero, 0x1000
    /* 35004 801BDF7C 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 35008 801BDF80 2000A2AF */  sw         $v0, 0x20($sp)
    /* 3500C 801BDF84 80000224 */  addiu      $v0, $zero, 0x80
    /* 35010 801BDF88 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 35014 801BDF8C 3000A2AF */  sw         $v0, 0x30($sp)
    /* 35018 801BDF90 3400A2AF */  sw         $v0, 0x34($sp)
    /* 3501C 801BDF94 03000224 */  addiu      $v0, $zero, 0x3
    /* 35020 801BDF98 1D80013C */  lui        $at, %hi(D_801D427A)
    /* 35024 801BDF9C 7A4223A0 */  sb         $v1, %lo(D_801D427A)($at)
    /* 35028 801BDFA0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3502C 801BDFA4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 35030 801BDFA8 2400A0AF */  sw         $zero, 0x24($sp)
    /* 35034 801BDFAC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 35038 801BDFB0 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3503C 801BDFB4 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 35040 801BDFB8 ED4F060C */  jal        func_80193FB4
    /* 35044 801BDFBC 4000A0AF */   sw        $zero, 0x40($sp)
    /* 35048 801BDFC0 FF006332 */  andi       $v1, $s3, 0xFF
    /* 3504C 801BDFC4 01000224 */  addiu      $v0, $zero, 0x1
    /* 35050 801BDFC8 0C006210 */  beq        $v1, $v0, .L801BDFFC
    /* 35054 801BDFCC 02006228 */   slti      $v0, $v1, 0x2
    /* 35058 801BDFD0 05004010 */  beqz       $v0, .L801BDFE8
    /* 3505C 801BDFD4 00000000 */   nop
    /* 35060 801BDFD8 0B006010 */  beqz       $v1, .L801BE008
    /* 35064 801BDFDC 00000000 */   nop
    /* 35068 801BDFE0 C5F90608 */  j          .L801BE714
    /* 3506C 801BDFE4 00000000 */   nop
  .L801BDFE8:
    /* 35070 801BDFE8 04006228 */  slti       $v0, $v1, 0x4
    /* 35074 801BDFEC C9014010 */  beqz       $v0, .L801BE714
    /* 35078 801BDFF0 21A00000 */   addu      $s4, $zero, $zero
    /* 3507C 801BDFF4 4BF80608 */  j          .L801BE12C
    /* 35080 801BDFF8 00000000 */   nop
  .L801BDFFC:
    /* 35084 801BDFFC 20000224 */  addiu      $v0, $zero, 0x20
    /* 35088 801BE000 1D80013C */  lui        $at, %hi(D_801D4281)
    /* 3508C 801BE004 814222A0 */  sb         $v0, %lo(D_801D4281)($at)
  .L801BE008:
    /* 35090 801BE008 1D80113C */  lui        $s1, %hi(D_801D4281)
    /* 35094 801BE00C 81423126 */  addiu      $s1, $s1, %lo(D_801D4281)
    /* 35098 801BE010 82A3060C */  jal        func_801A8E08
    /* 3509C 801BE014 000020A2 */   sb        $zero, 0x0($s1)
    /* 350A0 801BE018 39000424 */  addiu      $a0, $zero, 0x39
    /* 350A4 801BE01C 09500524 */  addiu      $a1, $zero, 0x5009
    /* 350A8 801BE020 21300000 */  addu       $a2, $zero, $zero
    /* 350AC 801BE024 21380000 */  addu       $a3, $zero, $zero
    /* 350B0 801BE028 09000224 */  addiu      $v0, $zero, 0x9
    /* 350B4 801BE02C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 350B8 801BE030 BA000224 */  addiu      $v0, $zero, 0xBA
    /* 350BC 801BE034 1800A2AF */  sw         $v0, 0x18($sp)
    /* 350C0 801BE038 00100224 */  addiu      $v0, $zero, 0x1000
    /* 350C4 801BE03C 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 350C8 801BE040 2000A2AF */  sw         $v0, 0x20($sp)
    /* 350CC 801BE044 80000224 */  addiu      $v0, $zero, 0x80
    /* 350D0 801BE048 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 350D4 801BE04C 3000A2AF */  sw         $v0, 0x30($sp)
    /* 350D8 801BE050 3400A2AF */  sw         $v0, 0x34($sp)
    /* 350DC 801BE054 06000224 */  addiu      $v0, $zero, 0x6
    /* 350E0 801BE058 01001024 */  addiu      $s0, $zero, 0x1
    /* 350E4 801BE05C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 350E8 801BE060 2400A0AF */  sw         $zero, 0x24($sp)
    /* 350EC 801BE064 2800A0AF */  sw         $zero, 0x28($sp)
    /* 350F0 801BE068 3800A0AF */  sw         $zero, 0x38($sp)
    /* 350F4 801BE06C 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 350F8 801BE070 ED4F060C */  jal        func_80193FB4
    /* 350FC 801BE074 4000B0AF */   sw        $s0, 0x40($sp)
    /* 35100 801BE078 21200000 */  addu       $a0, $zero, $zero
    /* 35104 801BE07C F3FF2526 */  addiu      $a1, $s1, -0xD
    /* 35108 801BE080 59FF0624 */  addiu      $a2, $zero, -0xA7
    /* 3510C 801BE084 B7FF0724 */  addiu      $a3, $zero, -0x49
    /* 35110 801BE088 4E010224 */  addiu      $v0, $zero, 0x14E
    /* 35114 801BE08C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 35118 801BE090 03000224 */  addiu      $v0, $zero, 0x3
    /* 3511C 801BE094 1400A2AF */  sw         $v0, 0x14($sp)
    /* 35120 801BE098 02000224 */  addiu      $v0, $zero, 0x2
    /* 35124 801BE09C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 35128 801BE0A0 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 3512C 801BE0A4 2000A0AF */  sw         $zero, 0x20($sp)
    /* 35130 801BE0A8 2400A2AF */  sw         $v0, 0x24($sp)
    /* 35134 801BE0AC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 35138 801BE0B0 B850060C */  jal        func_801942E0
    /* 3513C 801BE0B4 2C00B0AF */   sw        $s0, 0x2C($sp)
    /* 35140 801BE0B8 21200000 */  addu       $a0, $zero, $zero
    /* 35144 801BE0BC 0060053C */  lui        $a1, (0x60000000 >> 16)
    /* 35148 801BE0C0 1E80063C */  lui        $a2, %hi(D_801D8D78)
    /* 3514C 801BE0C4 788DC624 */  addiu      $a2, $a2, %lo(D_801D8D78)
    /* 35150 801BE0C8 21380000 */  addu       $a3, $zero, $zero
    /* 35154 801BE0CC ACFF0224 */  addiu      $v0, $zero, -0x54
    /* 35158 801BE0D0 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 3515C 801BE0D4 B8FF0224 */  addiu      $v0, $zero, -0x48
    /* 35160 801BE0D8 1E80013C */  lui        $at, %hi(D_801D8D7A)
    /* 35164 801BE0DC 7A8D22A4 */  sh         $v0, %lo(D_801D8D7A)($at)
    /* 35168 801BE0E0 A8000224 */  addiu      $v0, $zero, 0xA8
    /* 3516C 801BE0E4 1E80013C */  lui        $at, %hi(D_801D8D7C)
    /* 35170 801BE0E8 7C8D22A4 */  sh         $v0, %lo(D_801D8D7C)($at)
    /* 35174 801BE0EC 10000224 */  addiu      $v0, $zero, 0x10
    /* 35178 801BE0F0 1E80013C */  lui        $at, %hi(D_801D8D7E)
    /* 3517C 801BE0F4 7E8D22A4 */  sh         $v0, %lo(D_801D8D7E)($at)
    /* 35180 801BE0F8 80000224 */  addiu      $v0, $zero, 0x80
    /* 35184 801BE0FC 1E80013C */  lui        $at, %hi(D_801D8D80)
    /* 35188 801BE100 808D22A0 */  sb         $v0, %lo(D_801D8D80)($at)
    /* 3518C 801BE104 1E80013C */  lui        $at, %hi(D_801D8D81)
    /* 35190 801BE108 818D22A0 */  sb         $v0, %lo(D_801D8D81)($at)
    /* 35194 801BE10C 40000224 */  addiu      $v0, $zero, 0x40
    /* 35198 801BE110 1E80013C */  lui        $at, %hi(D_801D8D82)
    /* 3519C 801BE114 828D22A0 */  sb         $v0, %lo(D_801D8D82)($at)
    /* 351A0 801BE118 1000B0AF */  sw         $s0, 0x10($sp)
    /* 351A4 801BE11C 3B50060C */  jal        func_801940EC
    /* 351A8 801BE120 1400B0AF */   sw        $s0, 0x14($sp)
    /* 351AC 801BE124 C5F90608 */  j          .L801BE714
    /* 351B0 801BE128 00000000 */   nop
  .L801BE12C:
    /* 351B4 801BE12C 1E80043C */  lui        $a0, %hi(D_801D94E8)
    /* 351B8 801BE130 E8948424 */  addiu      $a0, $a0, %lo(D_801D94E8)
  .L801BE134:
    /* 351BC 801BE134 21300000 */  addu       $a2, $zero, $zero
    /* 351C0 801BE138 FF008232 */  andi       $v0, $s4, 0xFF
    /* 351C4 801BE13C 40180200 */  sll        $v1, $v0, 1
    /* 351C8 801BE140 21186200 */  addu       $v1, $v1, $v0
    /* 351CC 801BE144 00110300 */  sll        $v0, $v1, 4
    /* 351D0 801BE148 23104300 */  subu       $v0, $v0, $v1
    /* 351D4 801BE14C 21184400 */  addu       $v1, $v0, $a0
    /* 351D8 801BE150 FF00C230 */  andi       $v0, $a2, 0xFF
  .L801BE154:
    /* 351DC 801BE154 21106200 */  addu       $v0, $v1, $v0
    /* 351E0 801BE158 000040A0 */  sb         $zero, 0x0($v0)
    /* 351E4 801BE15C 0100C624 */  addiu      $a2, $a2, 0x1
    /* 351E8 801BE160 FF00C230 */  andi       $v0, $a2, 0xFF
    /* 351EC 801BE164 2D00422C */  sltiu      $v0, $v0, 0x2D
    /* 351F0 801BE168 FAFF4014 */  bnez       $v0, .L801BE154
    /* 351F4 801BE16C FF00C230 */   andi      $v0, $a2, 0xFF
    /* 351F8 801BE170 01009426 */  addiu      $s4, $s4, 0x1
    /* 351FC 801BE174 FF008232 */  andi       $v0, $s4, 0xFF
    /* 35200 801BE178 1000422C */  sltiu      $v0, $v0, 0x10
    /* 35204 801BE17C EDFF4014 */  bnez       $v0, .L801BE134
    /* 35208 801BE180 80AB1234 */   ori       $s2, $zero, 0xAB80
    /* 3520C 801BE184 21A00000 */  addu       $s4, $zero, $zero
    /* 35210 801BE188 FF006332 */  andi       $v1, $s3, 0xFF
  .L801BE18C:
    /* 35214 801BE18C 02000224 */  addiu      $v0, $zero, 0x2
    /* 35218 801BE190 07006214 */  bne        $v1, $v0, .L801BE1B0
    /* 3521C 801BE194 FF008232 */   andi      $v0, $s4, 0xFF
    /* 35220 801BE198 2110A202 */  addu       $v0, $s5, $v0
    /* 35224 801BE19C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 35228 801BE1A0 21084100 */  addu       $at, $v0, $at
    /* 3522C 801BE1A4 50AB2290 */  lbu        $v0, -0x54B0($at)
    /* 35230 801BE1A8 6DF80608 */  j          .L801BE1B4
    /* 35234 801BE1AC 2110A202 */   addu      $v0, $s5, $v0
  .L801BE1B0:
    /* 35238 801BE1B0 2110A202 */  addu       $v0, $s5, $v0
  .L801BE1B4:
    /* 3523C 801BE1B4 21105200 */  addu       $v0, $v0, $s2
    /* 35240 801BE1B8 00004390 */  lbu        $v1, 0x0($v0)
    /* 35244 801BE1BC 00000000 */  nop
    /* 35248 801BE1C0 C0100300 */  sll        $v0, $v1, 3
    /* 3524C 801BE1C4 21104300 */  addu       $v0, $v0, $v1
    /* 35250 801BE1C8 80100200 */  sll        $v0, $v0, 2
    /* 35254 801BE1CC 2110A202 */  addu       $v0, $s5, $v0
    /* 35258 801BE1D0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3525C 801BE1D4 21084100 */  addu       $at, $v0, $at
    /* 35260 801BE1D8 258F3190 */  lbu        $s1, -0x70DB($at)
    /* 35264 801BE1DC 0174000C */  jal        func_8001D004
    /* 35268 801BE1E0 09310424 */   addiu     $a0, $zero, 0x3109
    /* 3526C 801BE1E4 FF008332 */  andi       $v1, $s4, 0xFF
    /* 35270 801BE1E8 40800300 */  sll        $s0, $v1, 1
    /* 35274 801BE1EC 21800302 */  addu       $s0, $s0, $v1
    /* 35278 801BE1F0 80801000 */  sll        $s0, $s0, 2
    /* 3527C 801BE1F4 21205000 */  addu       $a0, $v0, $s0
    /* 35280 801BE1F8 FF003132 */  andi       $s1, $s1, 0xFF
    /* 35284 801BE1FC 21282002 */  addu       $a1, $s1, $zero
    /* 35288 801BE200 37FF060C */  jal        func_801BFCDC
    /* 3528C 801BE204 21300000 */   addu      $a2, $zero, $zero
    /* 35290 801BE208 0174000C */  jal        func_8001D004
    /* 35294 801BE20C 0B310424 */   addiu     $a0, $zero, 0x310B
    /* 35298 801BE210 E338033C */  lui        $v1, (0x38E38E39 >> 16)
    /* 3529C 801BE214 398E6334 */  ori        $v1, $v1, (0x38E38E39 & 0xFFFF)
    /* 352A0 801BE218 19002302 */  multu      $s1, $v1
    /* 352A4 801BE21C 01009426 */  addiu      $s4, $s4, 0x1
    /* 352A8 801BE220 21800202 */  addu       $s0, $s0, $v0
    /* 352AC 801BE224 0E000224 */  addiu      $v0, $zero, 0xE
    /* 352B0 801BE228 020002A2 */  sb         $v0, 0x2($s0)
    /* 352B4 801BE22C 95000224 */  addiu      $v0, $zero, 0x95
    /* 352B8 801BE230 0A0002A2 */  sb         $v0, 0xA($s0)
    /* 352BC 801BE234 10400000 */  mfhi       $t0
    /* 352C0 801BE238 82180800 */  srl        $v1, $t0, 2
    /* 352C4 801BE23C FF006230 */  andi       $v0, $v1, 0xFF
    /* 352C8 801BE240 80110200 */  sll        $v0, $v0, 6
    /* 352CC 801BE244 030002A2 */  sb         $v0, 0x3($s0)
    /* 352D0 801BE248 C0100300 */  sll        $v0, $v1, 3
    /* 352D4 801BE24C 21104300 */  addu       $v0, $v0, $v1
    /* 352D8 801BE250 40100200 */  sll        $v0, $v0, 1
    /* 352DC 801BE254 23882202 */  subu       $s1, $s1, $v0
    /* 352E0 801BE258 FF003132 */  andi       $s1, $s1, 0xFF
    /* 352E4 801BE25C C0101100 */  sll        $v0, $s1, 3
    /* 352E8 801BE260 23105100 */  subu       $v0, $v0, $s1
    /* 352EC 801BE264 40100200 */  sll        $v0, $v0, 1
    /* 352F0 801BE268 040002A2 */  sb         $v0, 0x4($s0)
    /* 352F4 801BE26C FF008232 */  andi       $v0, $s4, 0xFF
    /* 352F8 801BE270 1000422C */  sltiu      $v0, $v0, 0x10
    /* 352FC 801BE274 C5FF4014 */  bnez       $v0, .L801BE18C
    /* 35300 801BE278 FF006332 */   andi      $v1, $s3, 0xFF
    /* 35304 801BE27C 21A00000 */  addu       $s4, $zero, $zero
    /* 35308 801BE280 80AB1134 */  ori        $s1, $zero, 0xAB80
    /* 3530C 801BE284 FF007032 */  andi       $s0, $s3, 0xFF
  .L801BE288:
    /* 35310 801BE288 0174000C */  jal        func_8001D004
    /* 35314 801BE28C 0A310424 */   addiu     $a0, $zero, 0x310A
    /* 35318 801BE290 FF008332 */  andi       $v1, $s4, 0xFF
    /* 3531C 801BE294 40200300 */  sll        $a0, $v1, 1
    /* 35320 801BE298 21208300 */  addu       $a0, $a0, $v1
    /* 35324 801BE29C 80200400 */  sll        $a0, $a0, 2
    /* 35328 801BE2A0 2118A302 */  addu       $v1, $s5, $v1
    /* 3532C 801BE2A4 21187100 */  addu       $v1, $v1, $s1
    /* 35330 801BE2A8 00006390 */  lbu        $v1, 0x0($v1)
    /* 35334 801BE2AC 21204400 */  addu       $a0, $v0, $a0
    /* 35338 801BE2B0 C0100300 */  sll        $v0, $v1, 3
    /* 3533C 801BE2B4 21104300 */  addu       $v0, $v0, $v1
    /* 35340 801BE2B8 80100200 */  sll        $v0, $v0, 2
    /* 35344 801BE2BC 2110A202 */  addu       $v0, $s5, $v0
    /* 35348 801BE2C0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3534C 801BE2C4 21084100 */  addu       $at, $v0, $at
    /* 35350 801BE2C8 258F2590 */  lbu        $a1, -0x70DB($at)
    /* 35354 801BE2CC 37FF060C */  jal        func_801BFCDC
    /* 35358 801BE2D0 21300000 */   addu      $a2, $zero, $zero
    /* 3535C 801BE2D4 01009426 */  addiu      $s4, $s4, 0x1
    /* 35360 801BE2D8 FF008232 */  andi       $v0, $s4, 0xFF
    /* 35364 801BE2DC 1000422C */  sltiu      $v0, $v0, 0x10
    /* 35368 801BE2E0 E9FF4014 */  bnez       $v0, .L801BE288
    /* 3536C 801BE2E4 FF006332 */   andi      $v1, $s3, 0xFF
    /* 35370 801BE2E8 02000224 */  addiu      $v0, $zero, 0x2
    /* 35374 801BE2EC 38006214 */  bne        $v1, $v0, .L801BE3D0
    /* 35378 801BE2F0 10000424 */   addiu     $a0, $zero, 0x10
    /* 3537C 801BE2F4 21A00000 */  addu       $s4, $zero, $zero
    /* 35380 801BE2F8 1E80173C */  lui        $s7, %hi(D_801D94E8)
    /* 35384 801BE2FC E894F726 */  addiu      $s7, $s7, %lo(D_801D94E8)
    /* 35388 801BE300 01001624 */  addiu      $s6, $zero, 0x1
    /* 3538C 801BE304 FF009232 */  andi       $s2, $s4, 0xFF
  .L801BE308:
    /* 35390 801BE308 40801200 */  sll        $s0, $s2, 1
    /* 35394 801BE30C 21801202 */  addu       $s0, $s0, $s2
    /* 35398 801BE310 00891000 */  sll        $s1, $s0, 4
    /* 3539C 801BE314 23883002 */  subu       $s1, $s1, $s0
    /* 353A0 801BE318 21183702 */  addu       $v1, $s1, $s7
    /* 353A4 801BE31C 2110B202 */  addu       $v0, $s5, $s2
    /* 353A8 801BE320 0100013C */  lui        $at, (0x10000 >> 16)
    /* 353AC 801BE324 21084100 */  addu       $at, $v0, $at
    /* 353B0 801BE328 60AB2590 */  lbu        $a1, -0x54A0($at)
    /* 353B4 801BE32C 09000224 */  addiu      $v0, $zero, 0x9
    /* 353B8 801BE330 000062A0 */  sb         $v0, 0x0($v1)
    /* 353BC 801BE334 01006324 */  addiu      $v1, $v1, 0x1
    /* 353C0 801BE338 01006424 */  addiu      $a0, $v1, 0x1
    /* 353C4 801BE33C 01009426 */  addiu      $s4, $s4, 0x1
    /* 353C8 801BE340 0A00A22C */  sltiu      $v0, $a1, 0xA
    /* 353CC 801BE344 23100200 */  negu       $v0, $v0
    /* 353D0 801BE348 05004630 */  andi       $a2, $v0, 0x5
    /* 353D4 801BE34C F3A4060C */  jal        func_801A93CC
    /* 353D8 801BE350 000066A0 */   sb        $a2, 0x0($v1)
    /* 353DC 801BE354 04005326 */  addiu      $s3, $s2, 0x4
    /* 353E0 801BE358 21206002 */  addu       $a0, $s3, $zero
    /* 353E4 801BE35C 21283702 */  addu       $a1, $s1, $s7
    /* 353E8 801BE360 53FF0624 */  addiu      $a2, $zero, -0xAD
    /* 353EC 801BE364 80801000 */  sll        $s0, $s0, 2
    /* 353F0 801BE368 23801202 */  subu       $s0, $s0, $s2
    /* 353F4 801BE36C 40801000 */  sll        $s0, $s0, 1
    /* 353F8 801BE370 64FF0726 */  addiu      $a3, $s0, -0x9C
    /* 353FC 801BE374 00010224 */  addiu      $v0, $zero, 0x100
    /* 35400 801BE378 1000A2AF */  sw         $v0, 0x10($sp)
    /* 35404 801BE37C 06000224 */  addiu      $v0, $zero, 0x6
    /* 35408 801BE380 1400B6AF */  sw         $s6, 0x14($sp)
    /* 3540C 801BE384 1800A0AF */  sw         $zero, 0x18($sp)
    /* 35410 801BE388 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 35414 801BE38C 2000A0AF */  sw         $zero, 0x20($sp)
    /* 35418 801BE390 2400A2AF */  sw         $v0, 0x24($sp)
    /* 3541C 801BE394 2800B6AF */  sw         $s6, 0x28($sp)
    /* 35420 801BE398 B850060C */  jal        func_801942E0
    /* 35424 801BE39C 2C00B6AF */   sw        $s6, 0x2C($sp)
    /* 35428 801BE3A0 40101300 */  sll        $v0, $s3, 1
    /* 3542C 801BE3A4 21105300 */  addu       $v0, $v0, $s3
    /* 35430 801BE3A8 C0100200 */  sll        $v0, $v0, 3
    /* 35434 801BE3AC 95000324 */  addiu      $v1, $zero, 0x95
    /* 35438 801BE3B0 1E80013C */  lui        $at, %hi(D_801D8F9C)
    /* 3543C 801BE3B4 21082200 */  addu       $at, $at, $v0
    /* 35440 801BE3B8 9C8F23A0 */  sb         $v1, %lo(D_801D8F9C)($at)
    /* 35444 801BE3BC FF008232 */  andi       $v0, $s4, 0xFF
    /* 35448 801BE3C0 1000422C */  sltiu      $v0, $v0, 0x10
    /* 3544C 801BE3C4 D0FF4014 */  bnez       $v0, .L801BE308
    /* 35450 801BE3C8 FF009232 */   andi      $s2, $s4, 0xFF
    /* 35454 801BE3CC 10000424 */  addiu      $a0, $zero, 0x10
  .L801BE3D0:
    /* 35458 801BE3D0 0B310524 */  addiu      $a1, $zero, 0x310B
    /* 3545C 801BE3D4 21300000 */  addu       $a2, $zero, $zero
    /* 35460 801BE3D8 21380000 */  addu       $a3, $zero, $zero
    /* 35464 801BE3DC 02000324 */  addiu      $v1, $zero, 0x2
    /* 35468 801BE3E0 19000224 */  addiu      $v0, $zero, 0x19
    /* 3546C 801BE3E4 00101124 */  addiu      $s1, $zero, 0x1000
    /* 35470 801BE3E8 80001024 */  addiu      $s0, $zero, 0x80
    /* 35474 801BE3EC 01001524 */  addiu      $s5, $zero, 0x1
    /* 35478 801BE3F0 1000A3AF */  sw         $v1, 0x10($sp)
    /* 3547C 801BE3F4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 35480 801BE3F8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 35484 801BE3FC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 35488 801BE400 2000B1AF */  sw         $s1, 0x20($sp)
    /* 3548C 801BE404 2400A0AF */  sw         $zero, 0x24($sp)
    /* 35490 801BE408 2800A0AF */  sw         $zero, 0x28($sp)
    /* 35494 801BE40C 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 35498 801BE410 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3549C 801BE414 3400B0AF */  sw         $s0, 0x34($sp)
    /* 354A0 801BE418 3800A0AF */  sw         $zero, 0x38($sp)
    /* 354A4 801BE41C 3C00A3AF */  sw         $v1, 0x3C($sp)
    /* 354A8 801BE420 ED4F060C */  jal        func_80193FB4
    /* 354AC 801BE424 4000B5AF */   sw        $s5, 0x40($sp)
    /* 354B0 801BE428 11000424 */  addiu      $a0, $zero, 0x11
    /* 354B4 801BE42C 03310524 */  addiu      $a1, $zero, 0x3103
    /* 354B8 801BE430 21300000 */  addu       $a2, $zero, $zero
    /* 354BC 801BE434 21380000 */  addu       $a3, $zero, $zero
    /* 354C0 801BE438 1D001224 */  addiu      $s2, $zero, 0x1D
    /* 354C4 801BE43C 03001324 */  addiu      $s3, $zero, 0x3
    /* 354C8 801BE440 1000A0AF */  sw         $zero, 0x10($sp)
    /* 354CC 801BE444 1400B2AF */  sw         $s2, 0x14($sp)
    /* 354D0 801BE448 1800A0AF */  sw         $zero, 0x18($sp)
    /* 354D4 801BE44C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 354D8 801BE450 2000B1AF */  sw         $s1, 0x20($sp)
    /* 354DC 801BE454 2400A0AF */  sw         $zero, 0x24($sp)
    /* 354E0 801BE458 2800A0AF */  sw         $zero, 0x28($sp)
    /* 354E4 801BE45C 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 354E8 801BE460 3000B0AF */  sw         $s0, 0x30($sp)
    /* 354EC 801BE464 3400B0AF */  sw         $s0, 0x34($sp)
    /* 354F0 801BE468 3800A0AF */  sw         $zero, 0x38($sp)
    /* 354F4 801BE46C 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 354F8 801BE470 ED4F060C */  jal        func_80193FB4
    /* 354FC 801BE474 4000B5AF */   sw        $s5, 0x40($sp)
    /* 35500 801BE478 12000424 */  addiu      $a0, $zero, 0x12
    /* 35504 801BE47C 09310524 */  addiu      $a1, $zero, 0x3109
    /* 35508 801BE480 21300000 */  addu       $a2, $zero, $zero
    /* 3550C 801BE484 21380000 */  addu       $a3, $zero, $zero
    /* 35510 801BE488 1000A0AF */  sw         $zero, 0x10($sp)
    /* 35514 801BE48C 1400B2AF */  sw         $s2, 0x14($sp)
    /* 35518 801BE490 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3551C 801BE494 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 35520 801BE498 2000B1AF */  sw         $s1, 0x20($sp)
    /* 35524 801BE49C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 35528 801BE4A0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3552C 801BE4A4 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 35530 801BE4A8 3000B0AF */  sw         $s0, 0x30($sp)
    /* 35534 801BE4AC 3400B0AF */  sw         $s0, 0x34($sp)
    /* 35538 801BE4B0 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3553C 801BE4B4 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 35540 801BE4B8 ED4F060C */  jal        func_80193FB4
    /* 35544 801BE4BC 4000B5AF */   sw        $s5, 0x40($sp)
    /* 35548 801BE4C0 13000424 */  addiu      $a0, $zero, 0x13
    /* 3554C 801BE4C4 0A310524 */  addiu      $a1, $zero, 0x310A
    /* 35550 801BE4C8 21300000 */  addu       $a2, $zero, $zero
    /* 35554 801BE4CC 21380000 */  addu       $a3, $zero, $zero
    /* 35558 801BE4D0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3555C 801BE4D4 1400B2AF */  sw         $s2, 0x14($sp)
    /* 35560 801BE4D8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 35564 801BE4DC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 35568 801BE4E0 2000B1AF */  sw         $s1, 0x20($sp)
    /* 3556C 801BE4E4 2400A0AF */  sw         $zero, 0x24($sp)
    /* 35570 801BE4E8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 35574 801BE4EC 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 35578 801BE4F0 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3557C 801BE4F4 3400B0AF */  sw         $s0, 0x34($sp)
    /* 35580 801BE4F8 3800A0AF */  sw         $zero, 0x38($sp)
    /* 35584 801BE4FC 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 35588 801BE500 ED4F060C */  jal        func_80193FB4
    /* 3558C 801BE504 4000A0AF */   sw        $zero, 0x40($sp)
    /* 35590 801BE508 14000424 */  addiu      $a0, $zero, 0x14
    /* 35594 801BE50C 04310524 */  addiu      $a1, $zero, 0x3104
    /* 35598 801BE510 21300000 */  addu       $a2, $zero, $zero
    /* 3559C 801BE514 21380000 */  addu       $a3, $zero, $zero
    /* 355A0 801BE518 05001324 */  addiu      $s3, $zero, 0x5
    /* 355A4 801BE51C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 355A8 801BE520 1400B2AF */  sw         $s2, 0x14($sp)
    /* 355AC 801BE524 1800A0AF */  sw         $zero, 0x18($sp)
    /* 355B0 801BE528 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 355B4 801BE52C 2000B1AF */  sw         $s1, 0x20($sp)
    /* 355B8 801BE530 2400A0AF */  sw         $zero, 0x24($sp)
    /* 355BC 801BE534 2800A0AF */  sw         $zero, 0x28($sp)
    /* 355C0 801BE538 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 355C4 801BE53C 3000B0AF */  sw         $s0, 0x30($sp)
    /* 355C8 801BE540 3400B0AF */  sw         $s0, 0x34($sp)
    /* 355CC 801BE544 3800A0AF */  sw         $zero, 0x38($sp)
    /* 355D0 801BE548 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 355D4 801BE54C ED4F060C */  jal        func_80193FB4
    /* 355D8 801BE550 4000A0AF */   sw        $zero, 0x40($sp)
    /* 355DC 801BE554 15000424 */  addiu      $a0, $zero, 0x15
    /* 355E0 801BE558 05310524 */  addiu      $a1, $zero, 0x3105
    /* 355E4 801BE55C 21300000 */  addu       $a2, $zero, $zero
    /* 355E8 801BE560 21380000 */  addu       $a3, $zero, $zero
    /* 355EC 801BE564 1000A0AF */  sw         $zero, 0x10($sp)
    /* 355F0 801BE568 1400B2AF */  sw         $s2, 0x14($sp)
    /* 355F4 801BE56C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 355F8 801BE570 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 355FC 801BE574 2000B1AF */  sw         $s1, 0x20($sp)
    /* 35600 801BE578 2400A0AF */  sw         $zero, 0x24($sp)
    /* 35604 801BE57C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 35608 801BE580 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3560C 801BE584 3000B0AF */  sw         $s0, 0x30($sp)
    /* 35610 801BE588 3400B0AF */  sw         $s0, 0x34($sp)
    /* 35614 801BE58C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 35618 801BE590 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3561C 801BE594 ED4F060C */  jal        func_80193FB4
    /* 35620 801BE598 4000A0AF */   sw        $zero, 0x40($sp)
    /* 35624 801BE59C 16000424 */  addiu      $a0, $zero, 0x16
    /* 35628 801BE5A0 08310524 */  addiu      $a1, $zero, 0x3108
    /* 3562C 801BE5A4 21300000 */  addu       $a2, $zero, $zero
    /* 35630 801BE5A8 21380000 */  addu       $a3, $zero, $zero
    /* 35634 801BE5AC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 35638 801BE5B0 1400B2AF */  sw         $s2, 0x14($sp)
    /* 3563C 801BE5B4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 35640 801BE5B8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 35644 801BE5BC 2000B1AF */  sw         $s1, 0x20($sp)
    /* 35648 801BE5C0 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3564C 801BE5C4 2800A0AF */  sw         $zero, 0x28($sp)
    /* 35650 801BE5C8 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 35654 801BE5CC 3000B0AF */  sw         $s0, 0x30($sp)
    /* 35658 801BE5D0 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3565C 801BE5D4 3800A0AF */  sw         $zero, 0x38($sp)
    /* 35660 801BE5D8 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 35664 801BE5DC ED4F060C */  jal        func_80193FB4
    /* 35668 801BE5E0 4000A0AF */   sw        $zero, 0x40($sp)
    /* 3566C 801BE5E4 17000424 */  addiu      $a0, $zero, 0x17
    /* 35670 801BE5E8 06310524 */  addiu      $a1, $zero, 0x3106
    /* 35674 801BE5EC 21300000 */  addu       $a2, $zero, $zero
    /* 35678 801BE5F0 21380000 */  addu       $a3, $zero, $zero
    /* 3567C 801BE5F4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 35680 801BE5F8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 35684 801BE5FC 1400B2AF */  sw         $s2, 0x14($sp)
    /* 35688 801BE600 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3568C 801BE604 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 35690 801BE608 2000B1AF */  sw         $s1, 0x20($sp)
    /* 35694 801BE60C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 35698 801BE610 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3569C 801BE614 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 356A0 801BE618 3000B0AF */  sw         $s0, 0x30($sp)
    /* 356A4 801BE61C 3400B0AF */  sw         $s0, 0x34($sp)
    /* 356A8 801BE620 3800A0AF */  sw         $zero, 0x38($sp)
    /* 356AC 801BE624 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 356B0 801BE628 ED4F060C */  jal        func_80193FB4
    /* 356B4 801BE62C 4000A0AF */   sw        $zero, 0x40($sp)
    /* 356B8 801BE630 18000424 */  addiu      $a0, $zero, 0x18
    /* 356BC 801BE634 07310524 */  addiu      $a1, $zero, 0x3107
    /* 356C0 801BE638 21300000 */  addu       $a2, $zero, $zero
    /* 356C4 801BE63C 21380000 */  addu       $a3, $zero, $zero
    /* 356C8 801BE640 1000A0AF */  sw         $zero, 0x10($sp)
    /* 356CC 801BE644 1400B2AF */  sw         $s2, 0x14($sp)
    /* 356D0 801BE648 1800A0AF */  sw         $zero, 0x18($sp)
    /* 356D4 801BE64C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 356D8 801BE650 2000B1AF */  sw         $s1, 0x20($sp)
    /* 356DC 801BE654 2400A0AF */  sw         $zero, 0x24($sp)
    /* 356E0 801BE658 2800A0AF */  sw         $zero, 0x28($sp)
    /* 356E4 801BE65C 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 356E8 801BE660 3000B0AF */  sw         $s0, 0x30($sp)
    /* 356EC 801BE664 3400B0AF */  sw         $s0, 0x34($sp)
    /* 356F0 801BE668 3800A0AF */  sw         $zero, 0x38($sp)
    /* 356F4 801BE66C 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 356F8 801BE670 ED4F060C */  jal        func_80193FB4
    /* 356FC 801BE674 4000A0AF */   sw        $zero, 0x40($sp)
    /* 35700 801BE678 33000424 */  addiu      $a0, $zero, 0x33
    /* 35704 801BE67C 01310524 */  addiu      $a1, $zero, 0x3101
    /* 35708 801BE680 21300000 */  addu       $a2, $zero, $zero
    /* 3570C 801BE684 21380000 */  addu       $a3, $zero, $zero
    /* 35710 801BE688 09001424 */  addiu      $s4, $zero, 0x9
    /* 35714 801BE68C BA001324 */  addiu      $s3, $zero, 0xBA
    /* 35718 801BE690 06001224 */  addiu      $s2, $zero, 0x6
    /* 3571C 801BE694 1000A0AF */  sw         $zero, 0x10($sp)
    /* 35720 801BE698 1400B4AF */  sw         $s4, 0x14($sp)
    /* 35724 801BE69C 1800B3AF */  sw         $s3, 0x18($sp)
    /* 35728 801BE6A0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3572C 801BE6A4 2000B1AF */  sw         $s1, 0x20($sp)
    /* 35730 801BE6A8 2400A0AF */  sw         $zero, 0x24($sp)
    /* 35734 801BE6AC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 35738 801BE6B0 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3573C 801BE6B4 3000B0AF */  sw         $s0, 0x30($sp)
    /* 35740 801BE6B8 3400B0AF */  sw         $s0, 0x34($sp)
    /* 35744 801BE6BC 3800A0AF */  sw         $zero, 0x38($sp)
    /* 35748 801BE6C0 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 3574C 801BE6C4 ED4F060C */  jal        func_80193FB4
    /* 35750 801BE6C8 4000B5AF */   sw        $s5, 0x40($sp)
    /* 35754 801BE6CC 34000424 */  addiu      $a0, $zero, 0x34
    /* 35758 801BE6D0 00310524 */  addiu      $a1, $zero, 0x3100
    /* 3575C 801BE6D4 21300000 */  addu       $a2, $zero, $zero
    /* 35760 801BE6D8 21380000 */  addu       $a3, $zero, $zero
    /* 35764 801BE6DC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 35768 801BE6E0 1400B4AF */  sw         $s4, 0x14($sp)
    /* 3576C 801BE6E4 1800B3AF */  sw         $s3, 0x18($sp)
    /* 35770 801BE6E8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 35774 801BE6EC 2000B1AF */  sw         $s1, 0x20($sp)
    /* 35778 801BE6F0 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3577C 801BE6F4 2800A0AF */  sw         $zero, 0x28($sp)
    /* 35780 801BE6F8 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 35784 801BE6FC 3000B0AF */  sw         $s0, 0x30($sp)
    /* 35788 801BE700 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3578C 801BE704 3800A0AF */  sw         $zero, 0x38($sp)
    /* 35790 801BE708 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 35794 801BE70C ED4F060C */  jal        func_80193FB4
    /* 35798 801BE710 4000B5AF */   sw        $s5, 0x40($sp)
  .L801BE714:
    /* 3579C 801BE714 6800BF8F */  lw         $ra, 0x68($sp)
    /* 357A0 801BE718 6400B78F */  lw         $s7, 0x64($sp)
    /* 357A4 801BE71C 6000B68F */  lw         $s6, 0x60($sp)
    /* 357A8 801BE720 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 357AC 801BE724 5800B48F */  lw         $s4, 0x58($sp)
    /* 357B0 801BE728 5400B38F */  lw         $s3, 0x54($sp)
    /* 357B4 801BE72C 5000B28F */  lw         $s2, 0x50($sp)
    /* 357B8 801BE730 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 357BC 801BE734 4800B08F */  lw         $s0, 0x48($sp)
    /* 357C0 801BE738 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 357C4 801BE73C 0800E003 */  jr         $ra
    /* 357C8 801BE740 00000000 */   nop
endlabel func_801BDE5C
