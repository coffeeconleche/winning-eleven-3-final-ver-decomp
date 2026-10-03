nonmatching func_801C5ED8, 0x378

glabel func_801C5ED8
    /* 3CF60 801C5ED8 1D80033C */  lui        $v1, %hi(D_801D42AC + 0x1)
    /* 3CF64 801C5EDC AD426390 */  lbu        $v1, %lo(D_801D42AC + 0x1)($v1)
    /* 3CF68 801C5EE0 88FFBD27 */  addiu      $sp, $sp, -0x78
    /* 3CF6C 801C5EE4 4000A7A7 */  sh         $a3, 0x40($sp)
    /* 3CF70 801C5EE8 8C00A793 */  lbu        $a3, 0x8C($sp)
    /* 3CF74 801C5EEC 8888023C */  lui        $v0, (0x88888889 >> 16)
    /* 3CF78 801C5EF0 89884234 */  ori        $v0, $v0, (0x88888889 & 0xFFFF)
    /* 3CF7C 801C5EF4 6000B4AF */  sw         $s4, 0x60($sp)
    /* 3CF80 801C5EF8 21A00000 */  addu       $s4, $zero, $zero
    /* 3CF84 801C5EFC 3000A5A7 */  sh         $a1, 0x30($sp)
    /* 3CF88 801C5F00 01006324 */  addiu      $v1, $v1, 0x1
    /* 3CF8C 801C5F04 FF006330 */  andi       $v1, $v1, 0xFF
    /* 3CF90 801C5F08 19006200 */  multu      $v1, $v0
    /* 3CF94 801C5F0C FF000524 */  addiu      $a1, $zero, 0xFF
    /* 3CF98 801C5F10 7400BFAF */  sw         $ra, 0x74($sp)
    /* 3CF9C 801C5F14 7000BEAF */  sw         $fp, 0x70($sp)
    /* 3CFA0 801C5F18 6C00B7AF */  sw         $s7, 0x6C($sp)
    /* 3CFA4 801C5F1C 6800B6AF */  sw         $s6, 0x68($sp)
    /* 3CFA8 801C5F20 6400B5AF */  sw         $s5, 0x64($sp)
    /* 3CFAC 801C5F24 5C00B3AF */  sw         $s3, 0x5C($sp)
    /* 3CFB0 801C5F28 5800B2AF */  sw         $s2, 0x58($sp)
    /* 3CFB4 801C5F2C 5400B1AF */  sw         $s1, 0x54($sp)
    /* 3CFB8 801C5F30 5000B0AF */  sw         $s0, 0x50($sp)
    /* 3CFBC 801C5F34 3800A6A7 */  sh         $a2, 0x38($sp)
    /* 3CFC0 801C5F38 10600000 */  mfhi       $t4
    /* 3CFC4 801C5F3C 42210C00 */  srl        $a0, $t4, 5
    /* 3CFC8 801C5F40 00110400 */  sll        $v0, $a0, 4
    /* 3CFCC 801C5F44 23104400 */  subu       $v0, $v0, $a0
    /* 3CFD0 801C5F48 80100200 */  sll        $v0, $v0, 2
    /* 3CFD4 801C5F4C 8800AC97 */  lhu        $t4, 0x88($sp)
    /* 3CFD8 801C5F50 23186200 */  subu       $v1, $v1, $v0
    /* 3CFDC 801C5F54 1D80013C */  lui        $at, %hi(D_801D42AC + 0x1)
    /* 3CFE0 801C5F58 AD4223A0 */  sb         $v1, %lo(D_801D42AC + 0x1)($at)
    /* 3CFE4 801C5F5C 4800ACA7 */  sh         $t4, 0x48($sp)
    /* 3CFE8 801C5F60 FF008232 */  andi       $v0, $s4, 0xFF
  .L801C5F64:
    /* 3CFEC 801C5F64 01009426 */  addiu      $s4, $s4, 0x1
    /* 3CFF0 801C5F68 1E80013C */  lui        $at, %hi(D_801D89F4)
    /* 3CFF4 801C5F6C 21082200 */  addu       $at, $at, $v0
    /* 3CFF8 801C5F70 F48920A0 */  sb         $zero, %lo(D_801D89F4)($at)
    /* 3CFFC 801C5F74 1E80013C */  lui        $at, %hi(D_801D89EC)
    /* 3D000 801C5F78 21082200 */  addu       $at, $at, $v0
    /* 3D004 801C5F7C EC8920A0 */  sb         $zero, %lo(D_801D89EC)($at)
    /* 3D008 801C5F80 1E80013C */  lui        $at, %hi(D_801D89F0)
    /* 3D00C 801C5F84 21082200 */  addu       $at, $at, $v0
    /* 3D010 801C5F88 F08925A0 */  sb         $a1, %lo(D_801D89F0)($at)
    /* 3D014 801C5F8C FF008232 */  andi       $v0, $s4, 0xFF
    /* 3D018 801C5F90 0400422C */  sltiu      $v0, $v0, 0x4
    /* 3D01C 801C5F94 F3FF4014 */  bnez       $v0, .L801C5F64
    /* 3D020 801C5F98 FF008232 */   andi      $v0, $s4, 0xFF
    /* 3D024 801C5F9C 1D80033C */  lui        $v1, %hi(D_801D42AC + 0x1)
    /* 3D028 801C5FA0 AD426390 */  lbu        $v1, %lo(D_801D42AC + 0x1)($v1)
    /* 3D02C 801C5FA4 8888063C */  lui        $a2, (0x88888889 >> 16)
    /* 3D030 801C5FA8 8988C634 */  ori        $a2, $a2, (0x88888889 & 0xFFFF)
    /* 3D034 801C5FAC 19006600 */  multu      $v1, $a2
    /* 3D038 801C5FB0 10600000 */  mfhi       $t4
    /* 3D03C 801C5FB4 C2200C00 */  srl        $a0, $t4, 3
    /* 3D040 801C5FB8 FF008530 */  andi       $a1, $a0, 0xFF
    /* 3D044 801C5FBC 00110400 */  sll        $v0, $a0, 4
    /* 3D048 801C5FC0 23104400 */  subu       $v0, $v0, $a0
    /* 3D04C 801C5FC4 23186200 */  subu       $v1, $v1, $v0
    /* 3D050 801C5FC8 FF006330 */  andi       $v1, $v1, 0xFF
    /* 3D054 801C5FCC 01006324 */  addiu      $v1, $v1, 0x1
    /* 3D058 801C5FD0 00110300 */  sll        $v0, $v1, 4
    /* 3D05C 801C5FD4 21104300 */  addu       $v0, $v0, $v1
    /* 3D060 801C5FD8 1E80013C */  lui        $at, %hi(D_801D89EC)
    /* 3D064 801C5FDC 21082500 */  addu       $at, $at, $a1
    /* 3D068 801C5FE0 EC8922A0 */  sb         $v0, %lo(D_801D89EC)($at)
    /* 3D06C 801C5FE4 1D80023C */  lui        $v0, %hi(D_801D42AC + 0x1)
    /* 3D070 801C5FE8 AD424290 */  lbu        $v0, %lo(D_801D42AC + 0x1)($v0)
    /* 3D074 801C5FEC 00000000 */  nop
    /* 3D078 801C5FF0 19004600 */  multu      $v0, $a2
    /* 3D07C 801C5FF4 10600000 */  mfhi       $t4
    /* 3D080 801C5FF8 C2100C00 */  srl        $v0, $t4, 3
    /* 3D084 801C5FFC FF004230 */  andi       $v0, $v0, 0xFF
    /* 3D088 801C6000 03004424 */  addiu      $a0, $v0, 0x3
    /* 3D08C 801C6004 02008104 */  bgez       $a0, .L801C6010
    /* 3D090 801C6008 21188000 */   addu      $v1, $a0, $zero
    /* 3D094 801C600C 06004324 */  addiu      $v1, $v0, 0x6
  .L801C6010:
    /* 3D098 801C6010 21A00000 */  addu       $s4, $zero, $zero
    /* 3D09C 801C6014 1E80173C */  lui        $s7, %hi(D_801D89EC)
    /* 3D0A0 801C6018 EC89F726 */  addiu      $s7, $s7, %lo(D_801D89EC)
    /* 3D0A4 801C601C 1E80163C */  lui        $s6, %hi(D_801D89F0)
    /* 3D0A8 801C6020 F089D626 */  addiu      $s6, $s6, %lo(D_801D89F0)
    /* 3D0AC 801C6024 1E80153C */  lui        $s5, %hi(D_801D89F4)
    /* 3D0B0 801C6028 F489B526 */  addiu      $s5, $s5, %lo(D_801D89F4)
    /* 3D0B4 801C602C FF00FE30 */  andi       $fp, $a3, 0xFF
    /* 3D0B8 801C6030 FC016330 */  andi       $v1, $v1, 0x1FC
    /* 3D0BC 801C6034 1E80013C */  lui        $at, %hi(D_801D89EC)
    /* 3D0C0 801C6038 21082200 */  addu       $at, $at, $v0
    /* 3D0C4 801C603C EC892290 */  lbu        $v0, %lo(D_801D89EC)($at)
    /* 3D0C8 801C6040 23188300 */  subu       $v1, $a0, $v1
    /* 3D0CC 801C6044 27100200 */  nor        $v0, $zero, $v0
    /* 3D0D0 801C6048 1E80013C */  lui        $at, %hi(D_801D89EC)
    /* 3D0D4 801C604C 21082300 */  addu       $at, $at, $v1
    /* 3D0D8 801C6050 EC8922A0 */  sb         $v0, %lo(D_801D89EC)($at)
    /* 3D0DC 801C6054 FF008232 */  andi       $v0, $s4, 0xFF
  .L801C6058:
    /* 3D0E0 801C6058 0E004010 */  beqz       $v0, .L801C6094
    /* 3D0E4 801C605C 21200000 */   addu      $a0, $zero, $zero
    /* 3D0E8 801C6060 FF008330 */  andi       $v1, $a0, 0xFF
  .L801C6064:
    /* 3D0EC 801C6064 1E80013C */  lui        $at, %hi(D_801D89F0)
    /* 3D0F0 801C6068 21082300 */  addu       $at, $at, $v1
    /* 3D0F4 801C606C F0892290 */  lbu        $v0, %lo(D_801D89F0)($at)
    /* 3D0F8 801C6070 01008424 */  addiu      $a0, $a0, 0x1
    /* 3D0FC 801C6074 42100200 */  srl        $v0, $v0, 1
    /* 3D100 801C6078 1E80013C */  lui        $at, %hi(D_801D89F0)
    /* 3D104 801C607C 21082300 */  addu       $at, $at, $v1
    /* 3D108 801C6080 F08922A0 */  sb         $v0, %lo(D_801D89F0)($at)
    /* 3D10C 801C6084 FF008230 */  andi       $v0, $a0, 0xFF
    /* 3D110 801C6088 0400422C */  sltiu      $v0, $v0, 0x4
    /* 3D114 801C608C F5FF4014 */  bnez       $v0, .L801C6064
    /* 3D118 801C6090 FF008330 */   andi      $v1, $a0, 0xFF
  .L801C6094:
    /* 3D11C 801C6094 21200000 */  addu       $a0, $zero, $zero
    /* 3D120 801C6098 FF009132 */  andi       $s1, $s4, 0xFF
    /* 3D124 801C609C 3000AC97 */  lhu        $t4, 0x30($sp)
    /* 3D128 801C60A0 0000E292 */  lbu        $v0, 0x0($s7)
    /* 3D12C 801C60A4 0000C392 */  lbu        $v1, 0x0($s6)
    /* 3D130 801C60A8 0000A892 */  lbu        $t0, 0x0($s5)
    /* 3D134 801C60AC 0100E992 */  lbu        $t1, 0x1($s7)
    /* 3D138 801C60B0 0100CA92 */  lbu        $t2, 0x1($s6)
    /* 3D13C 801C60B4 0100AB92 */  lbu        $t3, 0x1($s5)
    /* 3D140 801C60B8 01009426 */  addiu      $s4, $s4, 0x1
    /* 3D144 801C60BC 2C00BEAF */  sw         $fp, 0x2C($sp)
    /* 3D148 801C60C0 21989101 */  addu       $s3, $t4, $s1
    /* 3D14C 801C60C4 009C1300 */  sll        $s3, $s3, 16
    /* 3D150 801C60C8 039C1300 */  sra        $s3, $s3, 16
    /* 3D154 801C60CC 3800AC97 */  lhu        $t4, 0x38($sp)
    /* 3D158 801C60D0 21286002 */  addu       $a1, $s3, $zero
    /* 3D15C 801C60D4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3D160 801C60D8 1800A3AF */  sw         $v1, 0x18($sp)
    /* 3D164 801C60DC 1C00A8AF */  sw         $t0, 0x1C($sp)
    /* 3D168 801C60E0 2000A9AF */  sw         $t1, 0x20($sp)
    /* 3D16C 801C60E4 2400AAAF */  sw         $t2, 0x24($sp)
    /* 3D170 801C60E8 2800ABAF */  sw         $t3, 0x28($sp)
    /* 3D174 801C60EC 21909101 */  addu       $s2, $t4, $s1
    /* 3D178 801C60F0 00941200 */  sll        $s2, $s2, 16
    /* 3D17C 801C60F4 03941200 */  sra        $s2, $s2, 16
    /* 3D180 801C60F8 4000AC97 */  lhu        $t4, 0x40($sp)
    /* 3D184 801C60FC 21304002 */  addu       $a2, $s2, $zero
    /* 3D188 801C6100 1000B2AF */  sw         $s2, 0x10($sp)
    /* 3D18C 801C6104 21809101 */  addu       $s0, $t4, $s1
    /* 3D190 801C6108 00841000 */  sll        $s0, $s0, 16
    /* 3D194 801C610C 03841000 */  sra        $s0, $s0, 16
    /* 3D198 801C6110 9418070C */  jal        func_801C6250
    /* 3D19C 801C6114 21380002 */   addu      $a3, $s0, $zero
    /* 3D1A0 801C6118 21200000 */  addu       $a0, $zero, $zero
    /* 3D1A4 801C611C 21280002 */  addu       $a1, $s0, $zero
    /* 3D1A8 801C6120 21304002 */  addu       $a2, $s2, $zero
    /* 3D1AC 801C6124 4800AC97 */  lhu        $t4, 0x48($sp)
    /* 3D1B0 801C6128 0100E292 */  lbu        $v0, 0x1($s7)
    /* 3D1B4 801C612C 0100C392 */  lbu        $v1, 0x1($s6)
    /* 3D1B8 801C6130 0100A892 */  lbu        $t0, 0x1($s5)
    /* 3D1BC 801C6134 0200E992 */  lbu        $t1, 0x2($s7)
    /* 3D1C0 801C6138 0200CA92 */  lbu        $t2, 0x2($s6)
    /* 3D1C4 801C613C 0200AB92 */  lbu        $t3, 0x2($s5)
    /* 3D1C8 801C6140 21380002 */  addu       $a3, $s0, $zero
    /* 3D1CC 801C6144 2C00BEAF */  sw         $fp, 0x2C($sp)
    /* 3D1D0 801C6148 21889101 */  addu       $s1, $t4, $s1
    /* 3D1D4 801C614C 008C1100 */  sll        $s1, $s1, 16
    /* 3D1D8 801C6150 038C1100 */  sra        $s1, $s1, 16
    /* 3D1DC 801C6154 1000B1AF */  sw         $s1, 0x10($sp)
    /* 3D1E0 801C6158 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3D1E4 801C615C 1800A3AF */  sw         $v1, 0x18($sp)
    /* 3D1E8 801C6160 1C00A8AF */  sw         $t0, 0x1C($sp)
    /* 3D1EC 801C6164 2000A9AF */  sw         $t1, 0x20($sp)
    /* 3D1F0 801C6168 2400AAAF */  sw         $t2, 0x24($sp)
    /* 3D1F4 801C616C 9418070C */  jal        func_801C6250
    /* 3D1F8 801C6170 2800ABAF */   sw        $t3, 0x28($sp)
    /* 3D1FC 801C6174 21200000 */  addu       $a0, $zero, $zero
    /* 3D200 801C6178 21280002 */  addu       $a1, $s0, $zero
    /* 3D204 801C617C 21302002 */  addu       $a2, $s1, $zero
    /* 3D208 801C6180 0200E292 */  lbu        $v0, 0x2($s7)
    /* 3D20C 801C6184 0200C392 */  lbu        $v1, 0x2($s6)
    /* 3D210 801C6188 0300A892 */  lbu        $t0, 0x3($s5)
    /* 3D214 801C618C 0300E992 */  lbu        $t1, 0x3($s7)
    /* 3D218 801C6190 0300CA92 */  lbu        $t2, 0x3($s6)
    /* 3D21C 801C6194 0300AB92 */  lbu        $t3, 0x3($s5)
    /* 3D220 801C6198 21386002 */  addu       $a3, $s3, $zero
    /* 3D224 801C619C 1000B1AF */  sw         $s1, 0x10($sp)
    /* 3D228 801C61A0 2C00BEAF */  sw         $fp, 0x2C($sp)
    /* 3D22C 801C61A4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3D230 801C61A8 1800A3AF */  sw         $v1, 0x18($sp)
    /* 3D234 801C61AC 1C00A8AF */  sw         $t0, 0x1C($sp)
    /* 3D238 801C61B0 2000A9AF */  sw         $t1, 0x20($sp)
    /* 3D23C 801C61B4 2400AAAF */  sw         $t2, 0x24($sp)
    /* 3D240 801C61B8 9418070C */  jal        func_801C6250
    /* 3D244 801C61BC 2800ABAF */   sw        $t3, 0x28($sp)
    /* 3D248 801C61C0 21200000 */  addu       $a0, $zero, $zero
    /* 3D24C 801C61C4 21286002 */  addu       $a1, $s3, $zero
    /* 3D250 801C61C8 21302002 */  addu       $a2, $s1, $zero
    /* 3D254 801C61CC 0300E292 */  lbu        $v0, 0x3($s7)
    /* 3D258 801C61D0 0300C392 */  lbu        $v1, 0x3($s6)
    /* 3D25C 801C61D4 0300A892 */  lbu        $t0, 0x3($s5)
    /* 3D260 801C61D8 0000E992 */  lbu        $t1, 0x0($s7)
    /* 3D264 801C61DC 0000CA92 */  lbu        $t2, 0x0($s6)
    /* 3D268 801C61E0 0000AB92 */  lbu        $t3, 0x0($s5)
    /* 3D26C 801C61E4 2138A000 */  addu       $a3, $a1, $zero
    /* 3D270 801C61E8 1000B2AF */  sw         $s2, 0x10($sp)
    /* 3D274 801C61EC 2C00BEAF */  sw         $fp, 0x2C($sp)
    /* 3D278 801C61F0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3D27C 801C61F4 1800A3AF */  sw         $v1, 0x18($sp)
    /* 3D280 801C61F8 1C00A8AF */  sw         $t0, 0x1C($sp)
    /* 3D284 801C61FC 2000A9AF */  sw         $t1, 0x20($sp)
    /* 3D288 801C6200 2400AAAF */  sw         $t2, 0x24($sp)
    /* 3D28C 801C6204 9418070C */  jal        func_801C6250
    /* 3D290 801C6208 2800ABAF */   sw        $t3, 0x28($sp)
    /* 3D294 801C620C FF008232 */  andi       $v0, $s4, 0xFF
    /* 3D298 801C6210 0200422C */  sltiu      $v0, $v0, 0x2
    /* 3D29C 801C6214 90FF4014 */  bnez       $v0, .L801C6058
    /* 3D2A0 801C6218 FF008232 */   andi      $v0, $s4, 0xFF
    /* 3D2A4 801C621C 7400BF8F */  lw         $ra, 0x74($sp)
    /* 3D2A8 801C6220 7000BE8F */  lw         $fp, 0x70($sp)
    /* 3D2AC 801C6224 6C00B78F */  lw         $s7, 0x6C($sp)
    /* 3D2B0 801C6228 6800B68F */  lw         $s6, 0x68($sp)
    /* 3D2B4 801C622C 6400B58F */  lw         $s5, 0x64($sp)
    /* 3D2B8 801C6230 6000B48F */  lw         $s4, 0x60($sp)
    /* 3D2BC 801C6234 5C00B38F */  lw         $s3, 0x5C($sp)
    /* 3D2C0 801C6238 5800B28F */  lw         $s2, 0x58($sp)
    /* 3D2C4 801C623C 5400B18F */  lw         $s1, 0x54($sp)
    /* 3D2C8 801C6240 5000B08F */  lw         $s0, 0x50($sp)
    /* 3D2CC 801C6244 7800BD27 */  addiu      $sp, $sp, 0x78
    /* 3D2D0 801C6248 0800E003 */  jr         $ra
    /* 3D2D4 801C624C 00000000 */   nop
endlabel func_801C5ED8
