nonmatching func_801A8F00, 0x268

glabel func_801A8F00
    /* 1FF88 801A8F00 1180023C */  lui        $v0, %hi(D_80108667)
    /* 1FF8C 801A8F04 67864290 */  lbu        $v0, %lo(D_80108667)($v0)
    /* 1FF90 801A8F08 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 1FF94 801A8F0C 6800BFAF */  sw         $ra, 0x68($sp)
    /* 1FF98 801A8F10 6400B7AF */  sw         $s7, 0x64($sp)
    /* 1FF9C 801A8F14 6000B6AF */  sw         $s6, 0x60($sp)
    /* 1FFA0 801A8F18 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 1FFA4 801A8F1C 5800B4AF */  sw         $s4, 0x58($sp)
    /* 1FFA8 801A8F20 5400B3AF */  sw         $s3, 0x54($sp)
    /* 1FFAC 801A8F24 5000B2AF */  sw         $s2, 0x50($sp)
    /* 1FFB0 801A8F28 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 1FFB4 801A8F2C 0F004230 */  andi       $v0, $v0, 0xF
    /* 1FFB8 801A8F30 2E004014 */  bnez       $v0, .L801A8FEC
    /* 1FFBC 801A8F34 4800B0AF */   sw        $s0, 0x48($sp)
    /* 1FFC0 801A8F38 04000424 */  addiu      $a0, $zero, 0x4
    /* 1FFC4 801A8F3C E8300524 */  addiu      $a1, $zero, 0x30E8
    /* 1FFC8 801A8F40 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 1FFCC 801A8F44 01000724 */  addiu      $a3, $zero, 0x1
    /* 1FFD0 801A8F48 F9FF0224 */  addiu      $v0, $zero, -0x7
    /* 1FFD4 801A8F4C 1E001324 */  addiu      $s3, $zero, 0x1E
    /* 1FFD8 801A8F50 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1FFDC 801A8F54 FA000224 */  addiu      $v0, $zero, 0xFA
    /* 1FFE0 801A8F58 00101124 */  addiu      $s1, $zero, 0x1000
    /* 1FFE4 801A8F5C 80001024 */  addiu      $s0, $zero, 0x80
    /* 1FFE8 801A8F60 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1FFEC 801A8F64 02000224 */  addiu      $v0, $zero, 0x2
    /* 1FFF0 801A8F68 01001224 */  addiu      $s2, $zero, 0x1
    /* 1FFF4 801A8F6C 1400B3AF */  sw         $s3, 0x14($sp)
    /* 1FFF8 801A8F70 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1FFFC 801A8F74 2000B1AF */  sw         $s1, 0x20($sp)
    /* 20000 801A8F78 2400A0AF */  sw         $zero, 0x24($sp)
    /* 20004 801A8F7C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 20008 801A8F80 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 2000C 801A8F84 3000B0AF */  sw         $s0, 0x30($sp)
    /* 20010 801A8F88 3400B0AF */  sw         $s0, 0x34($sp)
    /* 20014 801A8F8C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 20018 801A8F90 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 2001C 801A8F94 ED4F060C */  jal        func_80193FB4
    /* 20020 801A8F98 4000B2AF */   sw        $s2, 0x40($sp)
    /* 20024 801A8F9C 06000424 */  addiu      $a0, $zero, 0x6
    /* 20028 801A8FA0 E8300524 */  addiu      $a1, $zero, 0x30E8
    /* 2002C 801A8FA4 0041063C */  lui        $a2, (0x41000000 >> 16)
    /* 20030 801A8FA8 04000724 */  addiu      $a3, $zero, 0x4
    /* 20034 801A8FAC FCFF0224 */  addiu      $v0, $zero, -0x4
    /* 20038 801A8FB0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2003C 801A8FB4 FB000224 */  addiu      $v0, $zero, 0xFB
    /* 20040 801A8FB8 1800A2AF */  sw         $v0, 0x18($sp)
    /* 20044 801A8FBC 06000224 */  addiu      $v0, $zero, 0x6
    /* 20048 801A8FC0 1400B3AF */  sw         $s3, 0x14($sp)
    /* 2004C 801A8FC4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 20050 801A8FC8 2000B1AF */  sw         $s1, 0x20($sp)
    /* 20054 801A8FCC 2400A0AF */  sw         $zero, 0x24($sp)
    /* 20058 801A8FD0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 2005C 801A8FD4 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 20060 801A8FD8 3000B0AF */  sw         $s0, 0x30($sp)
    /* 20064 801A8FDC 3400B0AF */  sw         $s0, 0x34($sp)
    /* 20068 801A8FE0 3800A0AF */  sw         $zero, 0x38($sp)
    /* 2006C 801A8FE4 4CA40608 */  j          .L801A9130
    /* 20070 801A8FE8 3C00A2AF */   sw        $v0, 0x3C($sp)
  .L801A8FEC:
    /* 20074 801A8FEC 04000424 */  addiu      $a0, $zero, 0x4
    /* 20078 801A8FF0 E6300524 */  addiu      $a1, $zero, 0x30E6
    /* 2007C 801A8FF4 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 20080 801A8FF8 21380000 */  addu       $a3, $zero, $zero
    /* 20084 801A8FFC F4FF1524 */  addiu      $s5, $zero, -0xC
    /* 20088 801A9000 1F001724 */  addiu      $s7, $zero, 0x1F
    /* 2008C 801A9004 FA001424 */  addiu      $s4, $zero, 0xFA
    /* 20090 801A9008 00101124 */  addiu      $s1, $zero, 0x1000
    /* 20094 801A900C 80001024 */  addiu      $s0, $zero, 0x80
    /* 20098 801A9010 02001324 */  addiu      $s3, $zero, 0x2
    /* 2009C 801A9014 01001224 */  addiu      $s2, $zero, 0x1
    /* 200A0 801A9018 1000B5AF */  sw         $s5, 0x10($sp)
    /* 200A4 801A901C 1400B7AF */  sw         $s7, 0x14($sp)
    /* 200A8 801A9020 1800B4AF */  sw         $s4, 0x18($sp)
    /* 200AC 801A9024 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 200B0 801A9028 2000B1AF */  sw         $s1, 0x20($sp)
    /* 200B4 801A902C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 200B8 801A9030 2800A0AF */  sw         $zero, 0x28($sp)
    /* 200BC 801A9034 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 200C0 801A9038 3000B0AF */  sw         $s0, 0x30($sp)
    /* 200C4 801A903C 3400B0AF */  sw         $s0, 0x34($sp)
    /* 200C8 801A9040 3800A0AF */  sw         $zero, 0x38($sp)
    /* 200CC 801A9044 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 200D0 801A9048 ED4F060C */  jal        func_80193FB4
    /* 200D4 801A904C 4000B2AF */   sw        $s2, 0x40($sp)
    /* 200D8 801A9050 05000424 */  addiu      $a0, $zero, 0x5
    /* 200DC 801A9054 E7300524 */  addiu      $a1, $zero, 0x30E7
    /* 200E0 801A9058 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 200E4 801A905C 21380000 */  addu       $a3, $zero, $zero
    /* 200E8 801A9060 1E001624 */  addiu      $s6, $zero, 0x1E
    /* 200EC 801A9064 1000B5AF */  sw         $s5, 0x10($sp)
    /* 200F0 801A9068 1400B6AF */  sw         $s6, 0x14($sp)
    /* 200F4 801A906C 1800B4AF */  sw         $s4, 0x18($sp)
    /* 200F8 801A9070 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 200FC 801A9074 2000B1AF */  sw         $s1, 0x20($sp)
    /* 20100 801A9078 2400A0AF */  sw         $zero, 0x24($sp)
    /* 20104 801A907C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 20108 801A9080 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 2010C 801A9084 3000B0AF */  sw         $s0, 0x30($sp)
    /* 20110 801A9088 3400B0AF */  sw         $s0, 0x34($sp)
    /* 20114 801A908C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 20118 801A9090 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 2011C 801A9094 ED4F060C */  jal        func_80193FB4
    /* 20120 801A9098 4000B2AF */   sw        $s2, 0x40($sp)
    /* 20124 801A909C 06000424 */  addiu      $a0, $zero, 0x6
    /* 20128 801A90A0 E6300524 */  addiu      $a1, $zero, 0x30E6
    /* 2012C 801A90A4 0041063C */  lui        $a2, (0x41000000 >> 16)
    /* 20130 801A90A8 03000724 */  addiu      $a3, $zero, 0x3
    /* 20134 801A90AC F7FF1524 */  addiu      $s5, $zero, -0x9
    /* 20138 801A90B0 FB001424 */  addiu      $s4, $zero, 0xFB
    /* 2013C 801A90B4 06001324 */  addiu      $s3, $zero, 0x6
    /* 20140 801A90B8 1000B5AF */  sw         $s5, 0x10($sp)
    /* 20144 801A90BC 1400B7AF */  sw         $s7, 0x14($sp)
    /* 20148 801A90C0 1800B4AF */  sw         $s4, 0x18($sp)
    /* 2014C 801A90C4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 20150 801A90C8 2000B1AF */  sw         $s1, 0x20($sp)
    /* 20154 801A90CC 2400A0AF */  sw         $zero, 0x24($sp)
    /* 20158 801A90D0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 2015C 801A90D4 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 20160 801A90D8 3000B0AF */  sw         $s0, 0x30($sp)
    /* 20164 801A90DC 3400B0AF */  sw         $s0, 0x34($sp)
    /* 20168 801A90E0 3800A0AF */  sw         $zero, 0x38($sp)
    /* 2016C 801A90E4 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 20170 801A90E8 ED4F060C */  jal        func_80193FB4
    /* 20174 801A90EC 4000B2AF */   sw        $s2, 0x40($sp)
    /* 20178 801A90F0 07000424 */  addiu      $a0, $zero, 0x7
    /* 2017C 801A90F4 E7300524 */  addiu      $a1, $zero, 0x30E7
    /* 20180 801A90F8 0041063C */  lui        $a2, (0x41000000 >> 16)
    /* 20184 801A90FC 03000724 */  addiu      $a3, $zero, 0x3
    /* 20188 801A9100 1000B5AF */  sw         $s5, 0x10($sp)
    /* 2018C 801A9104 1400B6AF */  sw         $s6, 0x14($sp)
    /* 20190 801A9108 1800B4AF */  sw         $s4, 0x18($sp)
    /* 20194 801A910C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 20198 801A9110 2000B1AF */  sw         $s1, 0x20($sp)
    /* 2019C 801A9114 2400A0AF */  sw         $zero, 0x24($sp)
    /* 201A0 801A9118 2800A0AF */  sw         $zero, 0x28($sp)
    /* 201A4 801A911C 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 201A8 801A9120 3000B0AF */  sw         $s0, 0x30($sp)
    /* 201AC 801A9124 3400B0AF */  sw         $s0, 0x34($sp)
    /* 201B0 801A9128 3800A0AF */  sw         $zero, 0x38($sp)
    /* 201B4 801A912C 3C00B3AF */  sw         $s3, 0x3C($sp)
  .L801A9130:
    /* 201B8 801A9130 ED4F060C */  jal        func_80193FB4
    /* 201BC 801A9134 4000B2AF */   sw        $s2, 0x40($sp)
    /* 201C0 801A9138 6800BF8F */  lw         $ra, 0x68($sp)
    /* 201C4 801A913C 6400B78F */  lw         $s7, 0x64($sp)
    /* 201C8 801A9140 6000B68F */  lw         $s6, 0x60($sp)
    /* 201CC 801A9144 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 201D0 801A9148 5800B48F */  lw         $s4, 0x58($sp)
    /* 201D4 801A914C 5400B38F */  lw         $s3, 0x54($sp)
    /* 201D8 801A9150 5000B28F */  lw         $s2, 0x50($sp)
    /* 201DC 801A9154 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 201E0 801A9158 4800B08F */  lw         $s0, 0x48($sp)
    /* 201E4 801A915C 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 201E8 801A9160 0800E003 */  jr         $ra
    /* 201EC 801A9164 00000000 */   nop
endlabel func_801A8F00
