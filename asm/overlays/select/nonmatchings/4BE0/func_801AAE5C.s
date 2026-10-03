nonmatching func_801AAE5C, 0x434

glabel func_801AAE5C
    /* 21EE4 801AAE5C A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 21EE8 801AAE60 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 21EEC 801AAE64 21880000 */  addu       $s1, $zero, $zero
    /* 21EF0 801AAE68 801F023C */  lui        $v0, (0x1F8002DD >> 16)
    /* 21EF4 801AAE6C DD024290 */  lbu        $v0, (0x1F8002DD & 0xFFFF)($v0)
    /* 21EF8 801AAE70 801F033C */  lui        $v1, (0x1F8002DE >> 16)
    /* 21EFC 801AAE74 DE026390 */  lbu        $v1, (0x1F8002DE & 0xFFFF)($v1)
    /* 21F00 801AAE78 FF000524 */  addiu      $a1, $zero, 0xFF
    /* 21F04 801AAE7C 5C00BFAF */  sw         $ra, 0x5C($sp)
    /* 21F08 801AAE80 5800BEAF */  sw         $fp, 0x58($sp)
    /* 21F0C 801AAE84 5400B7AF */  sw         $s7, 0x54($sp)
    /* 21F10 801AAE88 5000B6AF */  sw         $s6, 0x50($sp)
    /* 21F14 801AAE8C 4C00B5AF */  sw         $s5, 0x4C($sp)
    /* 21F18 801AAE90 4800B4AF */  sw         $s4, 0x48($sp)
    /* 21F1C 801AAE94 4400B3AF */  sw         $s3, 0x44($sp)
    /* 21F20 801AAE98 4000B2AF */  sw         $s2, 0x40($sp)
    /* 21F24 801AAE9C 3800B0AF */  sw         $s0, 0x38($sp)
    /* 21F28 801AAEA0 2800A4A3 */  sb         $a0, 0x28($sp)
    /* 21F2C 801AAEA4 3000A5A3 */  sb         $a1, 0x30($sp)
    /* 21F30 801AAEA8 1000A2A3 */  sb         $v0, 0x10($sp)
    /* 21F34 801AAEAC FF004230 */  andi       $v0, $v0, 0xFF
    /* 21F38 801AAEB0 1280013C */  lui        $at, %hi(D_8011CB68)
    /* 21F3C 801AAEB4 21082200 */  addu       $at, $at, $v0
    /* 21F40 801AAEB8 68CB2290 */  lbu        $v0, %lo(D_8011CB68)($at)
    /* 21F44 801AAEBC FF001E24 */  addiu      $fp, $zero, 0xFF
    /* 21F48 801AAEC0 1100A3A3 */  sb         $v1, 0x11($sp)
    /* 21F4C 801AAEC4 FF006330 */  andi       $v1, $v1, 0xFF
    /* 21F50 801AAEC8 42200200 */  srl        $a0, $v0, 1
    /* 21F54 801AAECC 1800A4A3 */  sb         $a0, 0x18($sp)
    /* 21F58 801AAED0 1280013C */  lui        $at, %hi(D_8011CB68)
    /* 21F5C 801AAED4 21082300 */  addu       $at, $at, $v1
    /* 21F60 801AAED8 68CB2290 */  lbu        $v0, %lo(D_8011CB68)($at)
    /* 21F64 801AAEDC 21900000 */  addu       $s2, $zero, $zero
    /* 21F68 801AAEE0 42180200 */  srl        $v1, $v0, 1
    /* 21F6C 801AAEE4 2B108300 */  sltu       $v0, $a0, $v1
    /* 21F70 801AAEE8 04004014 */  bnez       $v0, .L801AAEFC
    /* 21F74 801AAEEC 1900A3A3 */   sb        $v1, 0x19($sp)
    /* 21F78 801AAEF0 23B88300 */  subu       $s7, $a0, $v1
    /* 21F7C 801AAEF4 C1AB0608 */  j          .L801AAF04
    /* 21F80 801AAEF8 01001324 */   addiu     $s3, $zero, 0x1
  .L801AAEFC:
    /* 21F84 801AAEFC 23B86400 */  subu       $s7, $v1, $a0
    /* 21F88 801AAF00 21980000 */  addu       $s3, $zero, $zero
  .L801AAF04:
    /* 21F8C 801AAF04 FF007532 */  andi       $s5, $s3, 0xFF
    /* 21F90 801AAF08 1800B027 */  addiu      $s0, $sp, 0x18
    /* 21F94 801AAF0C 21801502 */  addu       $s0, $s0, $s5
    /* 21F98 801AAF10 FF00F432 */  andi       $s4, $s7, 0xFF
    /* 21F9C 801AAF14 00000292 */  lbu        $v0, 0x0($s0)
    /* 21FA0 801AAF18 03008426 */  addiu      $a0, $s4, 0x3
    /* 21FA4 801AAF1C AE79000C */  jal        func_8001E6B8
    /* 21FA8 801AAF20 21204400 */   addu      $a0, $v0, $a0
    /* 21FAC 801AAF24 2000A2A3 */  sb         $v0, 0x20($sp)
    /* 21FB0 801AAF28 00000492 */  lbu        $a0, 0x0($s0)
    /* 21FB4 801AAF2C AE79000C */  jal        func_8001E6B8
    /* 21FB8 801AAF30 03008424 */   addiu     $a0, $a0, 0x3
    /* 21FBC 801AAF34 2800A593 */  lbu        $a1, 0x28($sp)
    /* 21FC0 801AAF38 21204000 */  addu       $a0, $v0, $zero
    /* 21FC4 801AAF3C FFFFA224 */  addiu      $v0, $a1, -0x1
    /* 21FC8 801AAF40 FF004230 */  andi       $v0, $v0, 0xFF
    /* 21FCC 801AAF44 0200422C */  sltiu      $v0, $v0, 0x2
    /* 21FD0 801AAF48 05004010 */  beqz       $v0, .L801AAF60
    /* 21FD4 801AAF4C 2100A4A3 */   sb        $a0, 0x21($sp)
    /* 21FD8 801AAF50 2000A393 */  lbu        $v1, 0x20($sp)
    /* 21FDC 801AAF54 FF008230 */  andi       $v0, $a0, 0xFF
    /* 21FE0 801AAF58 EAFF6210 */  beq        $v1, $v0, .L801AAF04
    /* 21FE4 801AAF5C 00000000 */   nop
  .L801AAF60:
    /* 21FE8 801AAF60 2000A393 */  lbu        $v1, 0x20($sp)
    /* 21FEC 801AAF64 FF008230 */  andi       $v0, $a0, 0xFF
    /* 21FF0 801AAF68 0C006214 */  bne        $v1, $v0, .L801AAF9C
    /* 21FF4 801AAF6C 2B104300 */   sltu      $v0, $v0, $v1
    /* 21FF8 801AAF70 03001624 */  addiu      $s6, $zero, 0x3
    /* 21FFC 801AAF74 AE79000C */  jal        func_8001E6B8
    /* 22000 801AAF78 0A000424 */   addiu     $a0, $zero, 0xA
    /* 22004 801AAF7C 02004228 */  slti       $v0, $v0, 0x2
    /* 22008 801AAF80 02004010 */  beqz       $v0, .L801AAF8C
    /* 2200C 801AAF84 02000424 */   addiu     $a0, $zero, 0x2
    /* 22010 801AAF88 04000424 */  addiu      $a0, $zero, 0x4
  .L801AAF8C:
    /* 22014 801AAF8C AE79000C */  jal        func_8001E6B8
    /* 22018 801AAF90 00000000 */   nop
    /* 2201C 801AAF94 53AC0608 */  j          .L801AB14C
    /* 22020 801AAF98 21804000 */   addu      $s0, $v0, $zero
  .L801AAF9C:
    /* 22024 801AAF9C 23004010 */  beqz       $v0, .L801AB02C
    /* 22028 801AAFA0 1000A227 */   addiu     $v0, $sp, 0x10
    /* 2202C 801AAFA4 21185500 */  addu       $v1, $v0, $s5
    /* 22030 801AAFA8 00006390 */  lbu        $v1, 0x0($v1)
    /* 22034 801AAFAC 01001624 */  addiu      $s6, $zero, 0x1
    /* 22038 801AAFB0 3000A3A3 */  sb         $v1, 0x30($sp)
    /* 2203C 801AAFB4 0100633A */  xori       $v1, $s3, 0x1
    /* 22040 801AAFB8 21104300 */  addu       $v0, $v0, $v1
    /* 22044 801AAFBC 00005E90 */  lbu        $fp, 0x0($v0)
    /* 22048 801AAFC0 21104002 */  addu       $v0, $s2, $zero
  .L801AAFC4:
    /* 2204C 801AAFC4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 22050 801AAFC8 6500422C */  sltiu      $v0, $v0, 0x65
    /* 22054 801AAFCC 04004014 */  bnez       $v0, .L801AAFE0
    /* 22058 801AAFD0 01005226 */   addiu     $s2, $s2, 0x1
    /* 2205C 801AAFD4 03001024 */  addiu      $s0, $zero, 0x3
    /* 22060 801AAFD8 04AC0608 */  j          .L801AB010
    /* 22064 801AAFDC 21880000 */   addu      $s1, $zero, $zero
  .L801AAFE0:
    /* 22068 801AAFE0 FF00E232 */  andi       $v0, $s7, 0xFF
    /* 2206C 801AAFE4 01004424 */  addiu      $a0, $v0, 0x1
    /* 22070 801AAFE8 02008104 */  bgez       $a0, .L801AAFF4
    /* 22074 801AAFEC 00000000 */   nop
    /* 22078 801AAFF0 04004424 */  addiu      $a0, $v0, 0x4
  .L801AAFF4:
    /* 2207C 801AAFF4 83200400 */  sra        $a0, $a0, 2
    /* 22080 801AAFF8 AE79000C */  jal        func_8001E6B8
    /* 22084 801AAFFC 01008424 */   addiu     $a0, $a0, 0x1
    /* 22088 801AB000 21804000 */  addu       $s0, $v0, $zero
    /* 2208C 801AB004 AE79000C */  jal        func_8001E6B8
    /* 22090 801AB008 03000424 */   addiu     $a0, $zero, 0x3
    /* 22094 801AB00C 21884000 */  addu       $s1, $v0, $zero
  .L801AB010:
    /* 22098 801AB010 FF000332 */  andi       $v1, $s0, 0xFF
    /* 2209C 801AB014 FF002232 */  andi       $v0, $s1, 0xFF
    /* 220A0 801AB018 2B104300 */  sltu       $v0, $v0, $v1
    /* 220A4 801AB01C E9FF4010 */  beqz       $v0, .L801AAFC4
    /* 220A8 801AB020 21104002 */   addu      $v0, $s2, $zero
    /* 220AC 801AB024 53AC0608 */  j          .L801AB14C
    /* 220B0 801AB028 00000000 */   nop
  .L801AB02C:
    /* 220B4 801AB02C 0100623A */  xori       $v0, $s3, 0x1
    /* 220B8 801AB030 1000A327 */  addiu      $v1, $sp, 0x10
    /* 220BC 801AB034 21106200 */  addu       $v0, $v1, $v0
    /* 220C0 801AB038 00004290 */  lbu        $v0, 0x0($v0)
    /* 220C4 801AB03C 21187500 */  addu       $v1, $v1, $s5
    /* 220C8 801AB040 3000A2A3 */  sb         $v0, 0x30($sp)
    /* 220CC 801AB044 0900822E */  sltiu      $v0, $s4, 0x9
    /* 220D0 801AB048 00007E90 */  lbu        $fp, 0x0($v1)
    /* 220D4 801AB04C 16004014 */  bnez       $v0, .L801AB0A8
    /* 220D8 801AB050 01001624 */   addiu     $s6, $zero, 0x1
    /* 220DC 801AB054 21104002 */  addu       $v0, $s2, $zero
  .L801AB058:
    /* 220E0 801AB058 FF004230 */  andi       $v0, $v0, 0xFF
    /* 220E4 801AB05C 6500422C */  sltiu      $v0, $v0, 0x65
    /* 220E8 801AB060 04004014 */  bnez       $v0, .L801AB074
    /* 220EC 801AB064 01005226 */   addiu     $s2, $s2, 0x1
    /* 220F0 801AB068 01001024 */  addiu      $s0, $zero, 0x1
    /* 220F4 801AB06C 23AC0608 */  j          .L801AB08C
    /* 220F8 801AB070 21880000 */   addu      $s1, $zero, $zero
  .L801AB074:
    /* 220FC 801AB074 AE79000C */  jal        func_8001E6B8
    /* 22100 801AB078 02000424 */   addiu     $a0, $zero, 0x2
    /* 22104 801AB07C 01005024 */  addiu      $s0, $v0, 0x1
    /* 22108 801AB080 AE79000C */  jal        func_8001E6B8
    /* 2210C 801AB084 02000424 */   addiu     $a0, $zero, 0x2
    /* 22110 801AB088 21884000 */  addu       $s1, $v0, $zero
  .L801AB08C:
    /* 22114 801AB08C FF000332 */  andi       $v1, $s0, 0xFF
    /* 22118 801AB090 FF002232 */  andi       $v0, $s1, 0xFF
    /* 2211C 801AB094 2B104300 */  sltu       $v0, $v0, $v1
    /* 22120 801AB098 EFFF4010 */  beqz       $v0, .L801AB058
    /* 22124 801AB09C 21104002 */   addu      $v0, $s2, $zero
    /* 22128 801AB0A0 53AC0608 */  j          .L801AB14C
    /* 2212C 801AB0A4 00000000 */   nop
  .L801AB0A8:
    /* 22130 801AB0A8 0400822E */  sltiu      $v0, $s4, 0x4
    /* 22134 801AB0AC 15004014 */  bnez       $v0, .L801AB104
    /* 22138 801AB0B0 21104002 */   addu      $v0, $s2, $zero
  .L801AB0B4:
    /* 2213C 801AB0B4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 22140 801AB0B8 6500422C */  sltiu      $v0, $v0, 0x65
    /* 22144 801AB0BC 04004014 */  bnez       $v0, .L801AB0D0
    /* 22148 801AB0C0 01005226 */   addiu     $s2, $s2, 0x1
    /* 2214C 801AB0C4 01001024 */  addiu      $s0, $zero, 0x1
    /* 22150 801AB0C8 3AAC0608 */  j          .L801AB0E8
    /* 22154 801AB0CC 21880000 */   addu      $s1, $zero, $zero
  .L801AB0D0:
    /* 22158 801AB0D0 AE79000C */  jal        func_8001E6B8
    /* 2215C 801AB0D4 03000424 */   addiu     $a0, $zero, 0x3
    /* 22160 801AB0D8 01005024 */  addiu      $s0, $v0, 0x1
    /* 22164 801AB0DC AE79000C */  jal        func_8001E6B8
    /* 22168 801AB0E0 03000424 */   addiu     $a0, $zero, 0x3
    /* 2216C 801AB0E4 21884000 */  addu       $s1, $v0, $zero
  .L801AB0E8:
    /* 22170 801AB0E8 FF000332 */  andi       $v1, $s0, 0xFF
    /* 22174 801AB0EC FF002232 */  andi       $v0, $s1, 0xFF
    /* 22178 801AB0F0 2B104300 */  sltu       $v0, $v0, $v1
    /* 2217C 801AB0F4 EFFF4010 */  beqz       $v0, .L801AB0B4
    /* 22180 801AB0F8 21104002 */   addu      $v0, $s2, $zero
    /* 22184 801AB0FC 53AC0608 */  j          .L801AB14C
    /* 22188 801AB100 00000000 */   nop
  .L801AB104:
    /* 2218C 801AB104 FF004230 */  andi       $v0, $v0, 0xFF
    /* 22190 801AB108 6500422C */  sltiu      $v0, $v0, 0x65
    /* 22194 801AB10C 04004014 */  bnez       $v0, .L801AB120
    /* 22198 801AB110 01005226 */   addiu     $s2, $s2, 0x1
    /* 2219C 801AB114 02001024 */  addiu      $s0, $zero, 0x2
    /* 221A0 801AB118 4EAC0608 */  j          .L801AB138
    /* 221A4 801AB11C 01001124 */   addiu     $s1, $zero, 0x1
  .L801AB120:
    /* 221A8 801AB120 AE79000C */  jal        func_8001E6B8
    /* 221AC 801AB124 04000424 */   addiu     $a0, $zero, 0x4
    /* 221B0 801AB128 01005024 */  addiu      $s0, $v0, 0x1
    /* 221B4 801AB12C AE79000C */  jal        func_8001E6B8
    /* 221B8 801AB130 03000424 */   addiu     $a0, $zero, 0x3
    /* 221BC 801AB134 21884000 */  addu       $s1, $v0, $zero
  .L801AB138:
    /* 221C0 801AB138 FF000332 */  andi       $v1, $s0, 0xFF
    /* 221C4 801AB13C FF002232 */  andi       $v0, $s1, 0xFF
    /* 221C8 801AB140 2B104300 */  sltu       $v0, $v0, $v1
    /* 221CC 801AB144 EFFF4010 */  beqz       $v0, .L801AB104
    /* 221D0 801AB148 21104002 */   addu      $v0, $s2, $zero
  .L801AB14C:
    /* 221D4 801AB14C 2800A493 */  lbu        $a0, 0x28($sp)
    /* 221D8 801AB150 01000224 */  addiu      $v0, $zero, 0x1
    /* 221DC 801AB154 29008210 */  beq        $a0, $v0, .L801AB1FC
    /* 221E0 801AB158 02008228 */   slti      $v0, $a0, 0x2
    /* 221E4 801AB15C 05004010 */  beqz       $v0, .L801AB174
    /* 221E8 801AB160 00000000 */   nop
    /* 221EC 801AB164 08008010 */  beqz       $a0, .L801AB188
    /* 221F0 801AB168 FF00E332 */   andi      $v1, $s7, 0xFF
    /* 221F4 801AB16C 80AC0608 */  j          .L801AB200
    /* 221F8 801AB170 FF00C332 */   andi      $v1, $s6, 0xFF
  .L801AB174:
    /* 221FC 801AB174 02000224 */  addiu      $v0, $zero, 0x2
    /* 22200 801AB178 1E008210 */  beq        $a0, $v0, .L801AB1F4
    /* 22204 801AB17C FF00C332 */   andi      $v1, $s6, 0xFF
    /* 22208 801AB180 80AC0608 */  j          .L801AB200
    /* 2220C 801AB184 00000000 */   nop
  .L801AB188:
    /* 22210 801AB188 0400622C */  sltiu      $v0, $v1, 0x4
    /* 22214 801AB18C 05004010 */  beqz       $v0, .L801AB1A4
    /* 22218 801AB190 00000000 */   nop
    /* 2221C 801AB194 AE79000C */  jal        func_8001E6B8
    /* 22220 801AB198 0A000424 */   addiu     $a0, $zero, 0xA
    /* 22224 801AB19C 76AC0608 */  j          .L801AB1D8
    /* 22228 801AB1A0 04004228 */   slti      $v0, $v0, 0x4
  .L801AB1A4:
    /* 2222C 801AB1A4 0600622C */  sltiu      $v0, $v1, 0x6
    /* 22230 801AB1A8 05004010 */  beqz       $v0, .L801AB1C0
    /* 22234 801AB1AC 00000000 */   nop
    /* 22238 801AB1B0 AE79000C */  jal        func_8001E6B8
    /* 2223C 801AB1B4 0A000424 */   addiu     $a0, $zero, 0xA
    /* 22240 801AB1B8 76AC0608 */  j          .L801AB1D8
    /* 22244 801AB1BC 03004228 */   slti      $v0, $v0, 0x3
  .L801AB1C0:
    /* 22248 801AB1C0 0B00622C */  sltiu      $v0, $v1, 0xB
    /* 2224C 801AB1C4 0E004010 */  beqz       $v0, .L801AB200
    /* 22250 801AB1C8 FF00C332 */   andi      $v1, $s6, 0xFF
    /* 22254 801AB1CC AE79000C */  jal        func_8001E6B8
    /* 22258 801AB1D0 0A000424 */   addiu     $a0, $zero, 0xA
    /* 2225C 801AB1D4 02004228 */  slti       $v0, $v0, 0x2
  .L801AB1D8:
    /* 22260 801AB1D8 09004010 */  beqz       $v0, .L801AB200
    /* 22264 801AB1DC FF00C332 */   andi      $v1, $s6, 0xFF
    /* 22268 801AB1E0 03001624 */  addiu      $s6, $zero, 0x3
    /* 2226C 801AB1E4 AE79000C */  jal        func_8001E6B8
    /* 22270 801AB1E8 02000424 */   addiu     $a0, $zero, 0x2
    /* 22274 801AB1EC 7FAC0608 */  j          .L801AB1FC
    /* 22278 801AB1F0 21804000 */   addu      $s0, $v0, $zero
  .L801AB1F4:
    /* 2227C 801AB1F4 01001024 */  addiu      $s0, $zero, 0x1
    /* 22280 801AB1F8 21880000 */  addu       $s1, $zero, $zero
  .L801AB1FC:
    /* 22284 801AB1FC FF00C332 */  andi       $v1, $s6, 0xFF
  .L801AB200:
    /* 22288 801AB200 03000224 */  addiu      $v0, $zero, 0x3
    /* 2228C 801AB204 08006214 */  bne        $v1, $v0, .L801AB228
    /* 22290 801AB208 01000224 */   addiu     $v0, $zero, 0x1
    /* 22294 801AB20C 03000224 */  addiu      $v0, $zero, 0x3
    /* 22298 801AB210 1E80013C */  lui        $at, %hi(D_801D81D0)
    /* 2229C 801AB214 D08122A0 */  sb         $v0, %lo(D_801D81D0)($at)
    /* 222A0 801AB218 1E80013C */  lui        $at, %hi(D_801D81D3)
    /* 222A4 801AB21C D38130A0 */  sb         $s0, %lo(D_801D81D3)($at)
    /* 222A8 801AB220 95AC0608 */  j          .L801AB254
    /* 222AC 801AB224 00000000 */   nop
  .L801AB228:
    /* 222B0 801AB228 3000A593 */  lbu        $a1, 0x30($sp)
    /* 222B4 801AB22C 1E80013C */  lui        $at, %hi(D_801D81D0)
    /* 222B8 801AB230 D08122A0 */  sb         $v0, %lo(D_801D81D0)($at)
    /* 222BC 801AB234 1E80013C */  lui        $at, %hi(D_801D81D2)
    /* 222C0 801AB238 D2813EA0 */  sb         $fp, %lo(D_801D81D2)($at)
    /* 222C4 801AB23C 1E80013C */  lui        $at, %hi(D_801D81D3)
    /* 222C8 801AB240 D38130A0 */  sb         $s0, %lo(D_801D81D3)($at)
    /* 222CC 801AB244 1E80013C */  lui        $at, %hi(D_801D81D4)
    /* 222D0 801AB248 D48131A0 */  sb         $s1, %lo(D_801D81D4)($at)
    /* 222D4 801AB24C 1E80013C */  lui        $at, %hi(D_801D81D1)
    /* 222D8 801AB250 D18125A0 */  sb         $a1, %lo(D_801D81D1)($at)
  .L801AB254:
    /* 222DC 801AB254 1E80023C */  lui        $v0, %hi(D_801D81D0)
    /* 222E0 801AB258 D0814224 */  addiu      $v0, $v0, %lo(D_801D81D0)
    /* 222E4 801AB25C 5C00BF8F */  lw         $ra, 0x5C($sp)
    /* 222E8 801AB260 5800BE8F */  lw         $fp, 0x58($sp)
    /* 222EC 801AB264 5400B78F */  lw         $s7, 0x54($sp)
    /* 222F0 801AB268 5000B68F */  lw         $s6, 0x50($sp)
    /* 222F4 801AB26C 4C00B58F */  lw         $s5, 0x4C($sp)
    /* 222F8 801AB270 4800B48F */  lw         $s4, 0x48($sp)
    /* 222FC 801AB274 4400B38F */  lw         $s3, 0x44($sp)
    /* 22300 801AB278 4000B28F */  lw         $s2, 0x40($sp)
    /* 22304 801AB27C 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 22308 801AB280 3800B08F */  lw         $s0, 0x38($sp)
    /* 2230C 801AB284 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 22310 801AB288 0800E003 */  jr         $ra
    /* 22314 801AB28C 00000000 */   nop
endlabel func_801AAE5C
