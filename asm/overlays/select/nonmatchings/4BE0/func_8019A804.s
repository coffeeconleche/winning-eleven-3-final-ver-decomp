nonmatching func_8019A804, 0x6D4

glabel func_8019A804
    /* 1188C 8019A804 1180033C */  lui        $v1, %hi(D_8010A322)
    /* 11890 8019A808 22A36390 */  lbu        $v1, %lo(D_8010A322)($v1)
    /* 11894 8019A80C 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 11898 8019A810 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 1189C 8019A814 01001124 */  addiu      $s1, $zero, 0x1
    /* 118A0 8019A818 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 118A4 8019A81C 1080153C */  lui        $s5, %hi(D_800FF748)
    /* 118A8 8019A820 48F7B526 */  addiu      $s5, $s5, %lo(D_800FF748)
    /* 118AC 8019A824 6000B6AF */  sw         $s6, 0x60($sp)
    /* 118B0 8019A828 801F163C */  lui        $s6, (0x1F800000 >> 16)
    /* 118B4 8019A82C 6400BFAF */  sw         $ra, 0x64($sp)
    /* 118B8 8019A830 5800B4AF */  sw         $s4, 0x58($sp)
    /* 118BC 8019A834 5400B3AF */  sw         $s3, 0x54($sp)
    /* 118C0 8019A838 5000B2AF */  sw         $s2, 0x50($sp)
    /* 118C4 8019A83C 3400622C */  sltiu      $v0, $v1, 0x34
    /* 118C8 8019A840 9A014010 */  beqz       $v0, .L8019AEAC
    /* 118CC 8019A844 4800B0AF */   sw        $s0, 0x48($sp)
    /* 118D0 8019A848 80100300 */  sll        $v0, $v1, 2
    /* 118D4 8019A84C 1980013C */  lui        $at, %hi(jtbl_80189CDC)
    /* 118D8 8019A850 21082200 */  addu       $at, $at, $v0
    /* 118DC 8019A854 DC9C228C */  lw         $v0, %lo(jtbl_80189CDC)($at)
    /* 118E0 8019A858 00000000 */  nop
    /* 118E4 8019A85C 08004000 */  jr         $v0
    /* 118E8 8019A860 00000000 */   nop
  jlabel .L8019A864
    /* 118EC 8019A864 21200000 */  addu       $a0, $zero, $zero
    /* 118F0 8019A868 0040053C */  lui        $a1, (0x40000000 >> 16)
    /* 118F4 8019A86C 1E80063C */  lui        $a2, %hi(D_801D8D90)
    /* 118F8 8019A870 908DC624 */  addiu      $a2, $a2, %lo(D_801D8D90)
    /* 118FC 8019A874 21380000 */  addu       $a3, $zero, $zero
    /* 11900 8019A878 20000224 */  addiu      $v0, $zero, 0x20
    /* 11904 8019A87C 0000C0A4 */  sh         $zero, 0x0($a2)
    /* 11908 8019A880 1E80013C */  lui        $at, %hi(D_801D8D98)
    /* 1190C 8019A884 988D22A0 */  sb         $v0, %lo(D_801D8D98)($at)
    /* 11910 8019A888 1E80013C */  lui        $at, %hi(D_801D8D99)
    /* 11914 8019A88C 998D22A0 */  sb         $v0, %lo(D_801D8D99)($at)
    /* 11918 8019A890 60000224 */  addiu      $v0, $zero, 0x60
    /* 1191C 8019A894 1E80013C */  lui        $at, %hi(D_801D8D9A)
    /* 11920 8019A898 9A8D22A0 */  sb         $v0, %lo(D_801D8D9A)($at)
    /* 11924 8019A89C 03000224 */  addiu      $v0, $zero, 0x3
    /* 11928 8019A8A0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1192C 8019A8A4 01000224 */  addiu      $v0, $zero, 0x1
    /* 11930 8019A8A8 1E80013C */  lui        $at, %hi(D_801D8D92)
    /* 11934 8019A8AC 928D20A4 */  sh         $zero, %lo(D_801D8D92)($at)
    /* 11938 8019A8B0 1E80013C */  lui        $at, %hi(D_801D8D94)
    /* 1193C 8019A8B4 948D20A4 */  sh         $zero, %lo(D_801D8D94)($at)
    /* 11940 8019A8B8 1E80013C */  lui        $at, %hi(D_801D8D96)
    /* 11944 8019A8BC 968D20A4 */  sh         $zero, %lo(D_801D8D96)($at)
    /* 11948 8019A8C0 7850060C */  jal        func_801941E0
    /* 1194C 8019A8C4 1400A2AF */   sw        $v0, 0x14($sp)
    /* 11950 8019A8C8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 11954 8019A8CC 2108A102 */  addu       $at, $s5, $at
    /* 11958 8019A8D0 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 1195C 8019A8D4 A86B0608 */  j          .L8019AEA0
    /* 11960 8019A8D8 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L8019A8DC
    /* 11964 8019A8DC 085EA426 */  addiu      $a0, $s5, 0x5E08
    /* 11968 8019A8E0 00100524 */  addiu      $a1, $zero, 0x1000
    /* 1196C 8019A8E4 653A060C */  jal        func_8018E994
    /* 11970 8019A8E8 00010624 */   addiu     $a2, $zero, 0x100
    /* 11974 8019A8EC 24882202 */  and        $s1, $s1, $v0
    /* 11978 8019A8F0 305EA426 */  addiu      $a0, $s5, 0x5E30
    /* 1197C 8019A8F4 00100524 */  addiu      $a1, $zero, 0x1000
    /* 11980 8019A8F8 653A060C */  jal        func_8018E994
    /* 11984 8019A8FC 00010624 */   addiu     $a2, $zero, 0x100
    /* 11988 8019A900 24882202 */  and        $s1, $s1, $v0
    /* 1198C 8019A904 1E80103C */  lui        $s0, %hi(D_801D92AC)
    /* 11990 8019A908 AC921026 */  addiu      $s0, $s0, %lo(D_801D92AC)
    /* 11994 8019A90C 21200002 */  addu       $a0, $s0, $zero
    /* 11998 8019A910 A0000524 */  addiu      $a1, $zero, 0xA0
    /* 1199C 8019A914 0A000624 */  addiu      $a2, $zero, 0xA
    /* 119A0 8019A918 823A060C */  jal        func_8018EA08
    /* 119A4 8019A91C FCFF0726 */   addiu     $a3, $s0, -0x4
    /* 119A8 8019A920 24882202 */  and        $s1, $s1, $v0
    /* 119AC 8019A924 02000426 */  addiu      $a0, $s0, 0x2
    /* 119B0 8019A928 60000524 */  addiu      $a1, $zero, 0x60
    /* 119B4 8019A92C 06000624 */  addiu      $a2, $zero, 0x6
    /* 119B8 8019A930 823A060C */  jal        func_8018EA08
    /* 119BC 8019A934 FEFF0726 */   addiu     $a3, $s0, -0x2
    /* 119C0 8019A938 24882202 */  and        $s1, $s1, $v0
    /* 119C4 8019A93C 5B012012 */  beqz       $s1, .L8019AEAC
    /* 119C8 8019A940 00000000 */   nop
    /* 119CC 8019A944 0100013C */  lui        $at, (0x10000 >> 16)
    /* 119D0 8019A948 2108A102 */  addu       $at, $s5, $at
    /* 119D4 8019A94C DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 119D8 8019A950 A86B0608 */  j          .L8019AEA0
    /* 119DC 8019A954 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L8019A958
    /* 119E0 8019A958 03000424 */  addiu      $a0, $zero, 0x3
    /* 119E4 8019A95C 21300524 */  addiu      $a1, $zero, 0x3021
    /* 119E8 8019A960 21300000 */  addu       $a2, $zero, $zero
    /* 119EC 8019A964 21380000 */  addu       $a3, $zero, $zero
    /* 119F0 8019A968 18001424 */  addiu      $s4, $zero, 0x18
    /* 119F4 8019A96C 00101124 */  addiu      $s1, $zero, 0x1000
    /* 119F8 8019A970 80001024 */  addiu      $s0, $zero, 0x80
    /* 119FC 8019A974 02001324 */  addiu      $s3, $zero, 0x2
    /* 11A00 8019A978 1E80023C */  lui        $v0, %hi(D_801D8DFB)
    /* 11A04 8019A97C FB8D4290 */  lbu        $v0, %lo(D_801D8DFB)($v0)
    /* 11A08 8019A980 01001224 */  addiu      $s2, $zero, 0x1
    /* 11A0C 8019A984 1400B4AF */  sw         $s4, 0x14($sp)
    /* 11A10 8019A988 1800A0AF */  sw         $zero, 0x18($sp)
    /* 11A14 8019A98C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 11A18 8019A990 2000B1AF */  sw         $s1, 0x20($sp)
    /* 11A1C 8019A994 2400A0AF */  sw         $zero, 0x24($sp)
    /* 11A20 8019A998 2800A0AF */  sw         $zero, 0x28($sp)
    /* 11A24 8019A99C 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 11A28 8019A9A0 3000B0AF */  sw         $s0, 0x30($sp)
    /* 11A2C 8019A9A4 3400B0AF */  sw         $s0, 0x34($sp)
    /* 11A30 8019A9A8 3800A0AF */  sw         $zero, 0x38($sp)
    /* 11A34 8019A9AC 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 11A38 8019A9B0 4000B2AF */  sw         $s2, 0x40($sp)
    /* 11A3C 8019A9B4 40110200 */  sll        $v0, $v0, 5
    /* 11A40 8019A9B8 ED4F060C */  jal        func_80193FB4
    /* 11A44 8019A9BC 1000A2AF */   sw        $v0, 0x10($sp)
    /* 11A48 8019A9C0 1D000424 */  addiu      $a0, $zero, 0x1D
    /* 11A4C 8019A9C4 20300524 */  addiu      $a1, $zero, 0x3020
    /* 11A50 8019A9C8 21300000 */  addu       $a2, $zero, $zero
    /* 11A54 8019A9CC 21380000 */  addu       $a3, $zero, $zero
    /* 11A58 8019A9D0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 11A5C 8019A9D4 1400B4AF */  sw         $s4, 0x14($sp)
    /* 11A60 8019A9D8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 11A64 8019A9DC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 11A68 8019A9E0 2000B1AF */  sw         $s1, 0x20($sp)
    /* 11A6C 8019A9E4 2400A0AF */  sw         $zero, 0x24($sp)
    /* 11A70 8019A9E8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 11A74 8019A9EC 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 11A78 8019A9F0 3000B0AF */  sw         $s0, 0x30($sp)
    /* 11A7C 8019A9F4 3400B0AF */  sw         $s0, 0x34($sp)
    /* 11A80 8019A9F8 3800A0AF */  sw         $zero, 0x38($sp)
    /* 11A84 8019A9FC 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 11A88 8019AA00 ED4F060C */  jal        func_80193FB4
    /* 11A8C 8019AA04 4000B2AF */   sw        $s2, 0x40($sp)
    /* 11A90 8019AA08 1280053C */  lui        $a1, %hi(D_8011D5F4)
    /* 11A94 8019AA0C F4D5A524 */  addiu      $a1, $a1, %lo(D_8011D5F4)
    /* 11A98 8019AA10 1E80033C */  lui        $v1, %hi(D_801D8DFB)
    /* 11A9C 8019AA14 FB8D6390 */  lbu        $v1, %lo(D_801D8DFB)($v1)
    /* 11AA0 8019AA18 E102C292 */  lbu        $v0, 0x2E1($s6)
    /* 11AA4 8019AA1C 00000000 */  nop
    /* 11AA8 8019AA20 04005214 */  bne        $v0, $s2, .L8019AA34
    /* 11AAC 8019AA24 24006424 */   addiu     $a0, $v1, 0x24
    /* 11AB0 8019AA28 26006224 */  addiu      $v0, $v1, 0x26
    /* 11AB4 8019AA2C 8E6A0608 */  j          .L8019AA38
    /* 11AB8 8019AA30 80100200 */   sll       $v0, $v0, 2
  .L8019AA34:
    /* 11ABC 8019AA34 80100400 */  sll        $v0, $a0, 2
  .L8019AA38:
    /* 11AC0 8019AA38 21104500 */  addu       $v0, $v0, $a1
    /* 11AC4 8019AA3C 0000458C */  lw         $a1, 0x0($v0)
    /* 11AC8 8019AA40 183B060C */  jal        func_8018EC60
    /* 11ACC 8019AA44 21200000 */   addu      $a0, $zero, $zero
    /* 11AD0 8019AA48 0100013C */  lui        $at, (0x10000 >> 16)
    /* 11AD4 8019AA4C 2108A102 */  addu       $at, $s5, $at
    /* 11AD8 8019AA50 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 11ADC 8019AA54 A86B0608 */  j          .L8019AEA0
    /* 11AE0 8019AA58 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L8019AA5C
    /* 11AE4 8019AA5C 3FBF010C */  jal        func_8006FCFC
    /* 11AE8 8019AA60 36000424 */   addiu     $a0, $zero, 0x36
    /* 11AEC 8019AA64 20BB010C */  jal        func_8006EC80
    /* 11AF0 8019AA68 21200000 */   addu      $a0, $zero, $zero
    /* 11AF4 8019AA6C 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 11AF8 8019AA70 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 11AFC 8019AA74 FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 11B00 8019AA78 00100224 */  addiu      $v0, $zero, 0x1000
    /* 11B04 8019AA7C 03006210 */  beq        $v1, $v0, .L8019AA8C
    /* 11B08 8019AA80 00400224 */   addiu     $v0, $zero, 0x4000
    /* 11B0C 8019AA84 1C006214 */  bne        $v1, $v0, .L8019AAF8
    /* 11B10 8019AA88 00000000 */   nop
  .L8019AA8C:
    /* 11B14 8019AA8C 88AD020C */  jal        func_800AB620
    /* 11B18 8019AA90 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 11B1C 8019AA94 21280000 */  addu       $a1, $zero, $zero
    /* 11B20 8019AA98 1E80043C */  lui        $a0, %hi(D_801D8DFB)
    /* 11B24 8019AA9C FB8D8490 */  lbu        $a0, %lo(D_801D8DFB)($a0)
    /* 11B28 8019AAA0 7B39060C */  jal        func_8018E5EC
    /* 11B2C 8019AAA4 01000624 */   addiu     $a2, $zero, 0x1
    /* 11B30 8019AAA8 FF004430 */  andi       $a0, $v0, 0xFF
    /* 11B34 8019AAAC 1E80013C */  lui        $at, %hi(D_801D8DFB)
    /* 11B38 8019AAB0 FB8D22A0 */  sb         $v0, %lo(D_801D8DFB)($at)
    /* 11B3C 8019AAB4 40110400 */  sll        $v0, $a0, 5
    /* 11B40 8019AAB8 1280053C */  lui        $a1, %hi(D_8011D5F4)
    /* 11B44 8019AABC F4D5A524 */  addiu      $a1, $a1, %lo(D_8011D5F4)
    /* 11B48 8019AAC0 4A5EA2A6 */  sh         $v0, 0x5E4A($s5)
    /* 11B4C 8019AAC4 E102C292 */  lbu        $v0, 0x2E1($s6)
    /* 11B50 8019AAC8 01000324 */  addiu      $v1, $zero, 0x1
    /* 11B54 8019AACC FF004230 */  andi       $v0, $v0, 0xFF
    /* 11B58 8019AAD0 04004314 */  bne        $v0, $v1, .L8019AAE4
    /* 11B5C 8019AAD4 24008624 */   addiu     $a2, $a0, 0x24
    /* 11B60 8019AAD8 26008224 */  addiu      $v0, $a0, 0x26
    /* 11B64 8019AADC BA6A0608 */  j          .L8019AAE8
    /* 11B68 8019AAE0 80100200 */   sll       $v0, $v0, 2
  .L8019AAE4:
    /* 11B6C 8019AAE4 80100600 */  sll        $v0, $a2, 2
  .L8019AAE8:
    /* 11B70 8019AAE8 21104500 */  addu       $v0, $v0, $a1
    /* 11B74 8019AAEC 0000458C */  lw         $a1, 0x0($v0)
    /* 11B78 8019AAF0 183B060C */  jal        func_8018EC60
    /* 11B7C 8019AAF4 21200000 */   addu      $a0, $zero, $zero
  .L8019AAF8:
    /* 11B80 8019AAF8 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 11B84 8019AAFC A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 11B88 8019AB00 20000224 */  addiu      $v0, $zero, 0x20
    /* 11B8C 8019AB04 0A006214 */  bne        $v1, $v0, .L8019AB30
    /* 11B90 8019AB08 40000224 */   addiu     $v0, $zero, 0x40
    /* 11B94 8019AB0C 0A000224 */  addiu      $v0, $zero, 0xA
    /* 11B98 8019AB10 0100013C */  lui        $at, (0x10000 >> 16)
    /* 11B9C 8019AB14 2108A102 */  addu       $at, $s5, $at
    /* 11BA0 8019AB18 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 11BA4 8019AB1C 88AD020C */  jal        func_800AB620
    /* 11BA8 8019AB20 28050424 */   addiu     $a0, $zero, 0x528
    /* 11BAC 8019AB24 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 11BB0 8019AB28 A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 11BB4 8019AB2C 40000224 */  addiu      $v0, $zero, 0x40
  .L8019AB30:
    /* 11BB8 8019AB30 DE006214 */  bne        $v1, $v0, .L8019AEAC
    /* 11BBC 8019AB34 03000424 */   addiu     $a0, $zero, 0x3
    /* 11BC0 8019AB38 A1BE010C */  jal        func_8006FA84
    /* 11BC4 8019AB3C 21280000 */   addu      $a1, $zero, $zero
    /* 11BC8 8019AB40 1D000424 */  addiu      $a0, $zero, 0x1D
    /* 11BCC 8019AB44 A1BE010C */  jal        func_8006FA84
    /* 11BD0 8019AB48 21280000 */   addu      $a1, $zero, $zero
    /* 11BD4 8019AB4C 28000224 */  addiu      $v0, $zero, 0x28
    /* 11BD8 8019AB50 0100013C */  lui        $at, (0x10000 >> 16)
    /* 11BDC 8019AB54 2108A102 */  addu       $at, $s5, $at
    /* 11BE0 8019AB58 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 11BE4 8019AB5C 88AD020C */  jal        func_800AB620
    /* 11BE8 8019AB60 29050424 */   addiu     $a0, $zero, 0x529
    /* 11BEC 8019AB64 AB6B0608 */  j          .L8019AEAC
    /* 11BF0 8019AB68 00000000 */   nop
  jlabel .L8019AB6C
    /* 11BF4 8019AB6C 1E80033C */  lui        $v1, %hi(D_801D8DFB)
    /* 11BF8 8019AB70 FB8D6390 */  lbu        $v1, %lo(D_801D8DFB)($v1)
    /* 11BFC 8019AB74 00000000 */  nop
    /* 11C00 8019AB78 05006010 */  beqz       $v1, .L8019AB90
    /* 11C04 8019AB7C 01000224 */   addiu     $v0, $zero, 0x1
    /* 11C08 8019AB80 0B006210 */  beq        $v1, $v0, .L8019ABB0
    /* 11C0C 8019AB84 00000000 */   nop
    /* 11C10 8019AB88 AB6B0608 */  j          .L8019AEAC
    /* 11C14 8019AB8C 00000000 */   nop
  .L8019AB90:
    /* 11C18 8019AB90 03000424 */  addiu      $a0, $zero, 0x3
    /* 11C1C 8019AB94 A1BE010C */  jal        func_8006FA84
    /* 11C20 8019AB98 21280000 */   addu      $a1, $zero, $zero
    /* 11C24 8019AB9C 1D000424 */  addiu      $a0, $zero, 0x1D
    /* 11C28 8019ABA0 A1BE010C */  jal        func_8006FA84
    /* 11C2C 8019ABA4 21280000 */   addu      $a1, $zero, $zero
    /* 11C30 8019ABA8 A86B0608 */  j          .L8019AEA0
    /* 11C34 8019ABAC 14000224 */   addiu     $v0, $zero, 0x14
  .L8019ABB0:
    /* 11C38 8019ABB0 1E80013C */  lui        $at, %hi(D_801D8DFC)
    /* 11C3C 8019ABB4 FC8D20A0 */  sb         $zero, %lo(D_801D8DFC)($at)
    /* 11C40 8019ABB8 096B0608 */  j          .L8019AC24
    /* 11C44 8019ABBC 05000424 */   addiu     $a0, $zero, 0x5
  jlabel .L8019ABC0
    /* 11C48 8019ABC0 1E80103C */  lui        $s0, %hi(D_801D92AC)
    /* 11C4C 8019ABC4 AC921026 */  addiu      $s0, $s0, %lo(D_801D92AC)
    /* 11C50 8019ABC8 21200002 */  addu       $a0, $s0, $zero
    /* 11C54 8019ABCC 21280000 */  addu       $a1, $zero, $zero
    /* 11C58 8019ABD0 10000624 */  addiu      $a2, $zero, 0x10
    /* 11C5C 8019ABD4 823A060C */  jal        func_8018EA08
    /* 11C60 8019ABD8 FCFF0726 */   addiu     $a3, $s0, -0x4
    /* 11C64 8019ABDC 24882202 */  and        $s1, $s1, $v0
    /* 11C68 8019ABE0 02000426 */  addiu      $a0, $s0, 0x2
    /* 11C6C 8019ABE4 21280000 */  addu       $a1, $zero, $zero
    /* 11C70 8019ABE8 08000624 */  addiu      $a2, $zero, 0x8
    /* 11C74 8019ABEC 823A060C */  jal        func_8018EA08
    /* 11C78 8019ABF0 FEFF0726 */   addiu     $a3, $s0, -0x2
    /* 11C7C 8019ABF4 24882202 */  and        $s1, $s1, $v0
    /* 11C80 8019ABF8 AC002012 */  beqz       $s1, .L8019AEAC
    /* 11C84 8019ABFC 00000000 */   nop
    /* 11C88 8019AC00 E102C292 */  lbu        $v0, 0x2E1($s6)
    /* 11C8C 8019AC04 00000000 */  nop
    /* 11C90 8019AC08 FF004330 */  andi       $v1, $v0, 0xFF
    /* 11C94 8019AC0C 01000224 */  addiu      $v0, $zero, 0x1
    /* 11C98 8019AC10 03006210 */  beq        $v1, $v0, .L8019AC20
    /* 11C9C 8019AC14 02000224 */   addiu     $v0, $zero, 0x2
    /* 11CA0 8019AC18 04006214 */  bne        $v1, $v0, .L8019AC2C
    /* 11CA4 8019AC1C 00000000 */   nop
  .L8019AC20:
    /* 11CA8 8019AC20 02000424 */  addiu      $a0, $zero, 0x2
  .L8019AC24:
    /* 11CAC 8019AC24 7F5C000C */  jal        func_800171FC
    /* 11CB0 8019AC28 00000000 */   nop
  .L8019AC2C:
    /* 11CB4 8019AC2C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 11CB8 8019AC30 2108A102 */  addu       $at, $s5, $at
    /* 11CBC 8019AC34 DAAB20A0 */  sb         $zero, -0x5426($at)
    /* 11CC0 8019AC38 AB6B0608 */  j          .L8019AEAC
    /* 11CC4 8019AC3C 00000000 */   nop
  jlabel .L8019AC40
    /* 11CC8 8019AC40 40000424 */  addiu      $a0, $zero, 0x40
    /* 11CCC 8019AC44 37BC010C */  jal        func_8006F0DC
    /* 11CD0 8019AC48 01000524 */   addiu     $a1, $zero, 0x1
    /* 11CD4 8019AC4C 97004010 */  beqz       $v0, .L8019AEAC
    /* 11CD8 8019AC50 00000000 */   nop
    /* 11CDC 8019AC54 1E80013C */  lui        $at, %hi(D_801D8DFC)
    /* 11CE0 8019AC58 FC8D20A0 */  sb         $zero, %lo(D_801D8DFC)($at)
    /* 11CE4 8019AC5C 7F5C000C */  jal        func_800171FC
    /* 11CE8 8019AC60 80000424 */   addiu     $a0, $zero, 0x80
    /* 11CEC 8019AC64 AB6B0608 */  j          .L8019AEAC
    /* 11CF0 8019AC68 00000000 */   nop
  jlabel .L8019AC6C
    /* 11CF4 8019AC6C 085EA426 */  addiu      $a0, $s5, 0x5E08
    /* 11CF8 8019AC70 21280000 */  addu       $a1, $zero, $zero
    /* 11CFC 8019AC74 653A060C */  jal        func_8018E994
    /* 11D00 8019AC78 00010624 */   addiu     $a2, $zero, 0x100
    /* 11D04 8019AC7C 24882202 */  and        $s1, $s1, $v0
    /* 11D08 8019AC80 305EA426 */  addiu      $a0, $s5, 0x5E30
    /* 11D0C 8019AC84 21280000 */  addu       $a1, $zero, $zero
    /* 11D10 8019AC88 653A060C */  jal        func_8018E994
    /* 11D14 8019AC8C 00010624 */   addiu     $a2, $zero, 0x100
    /* 11D18 8019AC90 24882202 */  and        $s1, $s1, $v0
    /* 11D1C 8019AC94 1E80103C */  lui        $s0, %hi(D_801D92AC)
    /* 11D20 8019AC98 AC921026 */  addiu      $s0, $s0, %lo(D_801D92AC)
    /* 11D24 8019AC9C 21200002 */  addu       $a0, $s0, $zero
    /* 11D28 8019ACA0 21280000 */  addu       $a1, $zero, $zero
    /* 11D2C 8019ACA4 0A000624 */  addiu      $a2, $zero, 0xA
    /* 11D30 8019ACA8 823A060C */  jal        func_8018EA08
    /* 11D34 8019ACAC FCFF0726 */   addiu     $a3, $s0, -0x4
    /* 11D38 8019ACB0 24882202 */  and        $s1, $s1, $v0
    /* 11D3C 8019ACB4 02000426 */  addiu      $a0, $s0, 0x2
    /* 11D40 8019ACB8 21280000 */  addu       $a1, $zero, $zero
    /* 11D44 8019ACBC 06000624 */  addiu      $a2, $zero, 0x6
    /* 11D48 8019ACC0 823A060C */  jal        func_8018EA08
    /* 11D4C 8019ACC4 FEFF0726 */   addiu     $a3, $s0, -0x2
    /* 11D50 8019ACC8 24882202 */  and        $s1, $s1, $v0
    /* 11D54 8019ACCC 77002012 */  beqz       $s1, .L8019AEAC
    /* 11D58 8019ACD0 00000000 */   nop
    /* 11D5C 8019ACD4 1E80013C */  lui        $at, %hi(D_801D92A3)
    /* 11D60 8019ACD8 A39220A0 */  sb         $zero, %lo(D_801D92A3)($at)
    /* 11D64 8019ACDC 0174000C */  jal        func_8001D004
    /* 11D68 8019ACE0 04300424 */   addiu     $a0, $zero, 0x3004
    /* 11D6C 8019ACE4 A367060C */  jal        func_80199E8C
    /* 11D70 8019ACE8 F45DA2AE */   sw        $v0, 0x5DF4($s5)
    /* 11D74 8019ACEC 715C000C */  jal        func_800171C4
    /* 11D78 8019ACF0 01000424 */   addiu     $a0, $zero, 0x1
    /* 11D7C 8019ACF4 7F5C000C */  jal        func_800171FC
    /* 11D80 8019ACF8 03000424 */   addiu     $a0, $zero, 0x3
    /* 11D84 8019ACFC AB6B0608 */  j          .L8019AEAC
    /* 11D88 8019AD00 00000000 */   nop
  jlabel .L8019AD04
    /* 11D8C 8019AD04 7A13070C */  jal        func_801C4DE8
    /* 11D90 8019AD08 01001024 */   addiu     $s0, $zero, 0x1
    /* 11D94 8019AD0C E102C492 */  lbu        $a0, 0x2E1($s6)
    /* 11D98 8019AD10 0174000C */  jal        func_8001D004
    /* 11D9C 8019AD14 05308424 */   addiu     $a0, $a0, 0x3005
    /* 11DA0 8019AD18 1D000424 */  addiu      $a0, $zero, 0x1D
    /* 11DA4 8019AD1C 20300524 */  addiu      $a1, $zero, 0x3020
    /* 11DA8 8019AD20 21300000 */  addu       $a2, $zero, $zero
    /* 11DAC 8019AD24 21380000 */  addu       $a3, $zero, $zero
    /* 11DB0 8019AD28 F45DA2AE */  sw         $v0, 0x5DF4($s5)
    /* 11DB4 8019AD2C 00100224 */  addiu      $v0, $zero, 0x1000
    /* 11DB8 8019AD30 305EA2A6 */  sh         $v0, 0x5E30($s5)
    /* 11DBC 8019AD34 085EA2A6 */  sh         $v0, 0x5E08($s5)
    /* 11DC0 8019AD38 18000224 */  addiu      $v0, $zero, 0x18
    /* 11DC4 8019AD3C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 11DC8 8019AD40 00100224 */  addiu      $v0, $zero, 0x1000
    /* 11DCC 8019AD44 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 11DD0 8019AD48 2000A2AF */  sw         $v0, 0x20($sp)
    /* 11DD4 8019AD4C 80000224 */  addiu      $v0, $zero, 0x80
    /* 11DD8 8019AD50 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 11DDC 8019AD54 3000A2AF */  sw         $v0, 0x30($sp)
    /* 11DE0 8019AD58 3400A2AF */  sw         $v0, 0x34($sp)
    /* 11DE4 8019AD5C 02000224 */  addiu      $v0, $zero, 0x2
    /* 11DE8 8019AD60 1000A0AF */  sw         $zero, 0x10($sp)
    /* 11DEC 8019AD64 1800A0AF */  sw         $zero, 0x18($sp)
    /* 11DF0 8019AD68 2400A0AF */  sw         $zero, 0x24($sp)
    /* 11DF4 8019AD6C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 11DF8 8019AD70 3800A0AF */  sw         $zero, 0x38($sp)
    /* 11DFC 8019AD74 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 11E00 8019AD78 ED4F060C */  jal        func_80193FB4
    /* 11E04 8019AD7C 4000B0AF */   sw        $s0, 0x40($sp)
    /* 11E08 8019AD80 21200000 */  addu       $a0, $zero, $zero
    /* 11E0C 8019AD84 0040053C */  lui        $a1, (0x40000000 >> 16)
    /* 11E10 8019AD88 1E80063C */  lui        $a2, %hi(D_801D8D90)
    /* 11E14 8019AD8C 908DC624 */  addiu      $a2, $a2, %lo(D_801D8D90)
    /* 11E18 8019AD90 21380000 */  addu       $a3, $zero, $zero
    /* 11E1C 8019AD94 B0FF0224 */  addiu      $v0, $zero, -0x50
    /* 11E20 8019AD98 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 11E24 8019AD9C D8FF0224 */  addiu      $v0, $zero, -0x28
    /* 11E28 8019ADA0 1E80013C */  lui        $at, %hi(D_801D8D92)
    /* 11E2C 8019ADA4 928D22A4 */  sh         $v0, %lo(D_801D8D92)($at)
    /* 11E30 8019ADA8 A0000224 */  addiu      $v0, $zero, 0xA0
    /* 11E34 8019ADAC 1E80013C */  lui        $at, %hi(D_801D8D94)
    /* 11E38 8019ADB0 948D22A4 */  sh         $v0, %lo(D_801D8D94)($at)
    /* 11E3C 8019ADB4 50000224 */  addiu      $v0, $zero, 0x50
    /* 11E40 8019ADB8 1E80013C */  lui        $at, %hi(D_801D8D96)
    /* 11E44 8019ADBC 968D22A4 */  sh         $v0, %lo(D_801D8D96)($at)
    /* 11E48 8019ADC0 20000224 */  addiu      $v0, $zero, 0x20
    /* 11E4C 8019ADC4 1E80013C */  lui        $at, %hi(D_801D8D98)
    /* 11E50 8019ADC8 988D22A0 */  sb         $v0, %lo(D_801D8D98)($at)
    /* 11E54 8019ADCC 1E80013C */  lui        $at, %hi(D_801D8D99)
    /* 11E58 8019ADD0 998D22A0 */  sb         $v0, %lo(D_801D8D99)($at)
    /* 11E5C 8019ADD4 60000224 */  addiu      $v0, $zero, 0x60
    /* 11E60 8019ADD8 1E80013C */  lui        $at, %hi(D_801D8D9A)
    /* 11E64 8019ADDC 9A8D22A0 */  sb         $v0, %lo(D_801D8D9A)($at)
    /* 11E68 8019ADE0 03000224 */  addiu      $v0, $zero, 0x3
    /* 11E6C 8019ADE4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 11E70 8019ADE8 3B50060C */  jal        func_801940EC
    /* 11E74 8019ADEC 1400B0AF */   sw        $s0, 0x14($sp)
    /* 11E78 8019ADF0 1E80033C */  lui        $v1, %hi(D_801D8DFB)
    /* 11E7C 8019ADF4 FB8D6390 */  lbu        $v1, %lo(D_801D8DFB)($v1)
    /* 11E80 8019ADF8 E102C292 */  lbu        $v0, 0x2E1($s6)
    /* 11E84 8019ADFC 00000000 */  nop
    /* 11E88 8019AE00 02005014 */  bne        $v0, $s0, .L8019AE0C
    /* 11E8C 8019AE04 24006524 */   addiu     $a1, $v1, 0x24
    /* 11E90 8019AE08 26006524 */  addiu      $a1, $v1, 0x26
  .L8019AE0C:
    /* 11E94 8019AE0C C839060C */  jal        func_8018E720
    /* 11E98 8019AE10 03000424 */   addiu     $a0, $zero, 0x3
    /* 11E9C 8019AE14 0100013C */  lui        $at, (0x10000 >> 16)
    /* 11EA0 8019AE18 2108A102 */  addu       $at, $s5, $at
    /* 11EA4 8019AE1C DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 11EA8 8019AE20 A86B0608 */  j          .L8019AEA0
    /* 11EAC 8019AE24 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L8019AE28
    /* 11EB0 8019AE28 1FBC010C */  jal        func_8006F07C
    /* 11EB4 8019AE2C 10000424 */   addiu     $a0, $zero, 0x10
    /* 11EB8 8019AE30 1E004010 */  beqz       $v0, .L8019AEAC
    /* 11EBC 8019AE34 03000424 */   addiu     $a0, $zero, 0x3
    /* 11EC0 8019AE38 21300524 */  addiu      $a1, $zero, 0x3021
    /* 11EC4 8019AE3C 21300000 */  addu       $a2, $zero, $zero
    /* 11EC8 8019AE40 21380000 */  addu       $a3, $zero, $zero
    /* 11ECC 8019AE44 18000224 */  addiu      $v0, $zero, 0x18
    /* 11ED0 8019AE48 1400A2AF */  sw         $v0, 0x14($sp)
    /* 11ED4 8019AE4C 00100224 */  addiu      $v0, $zero, 0x1000
    /* 11ED8 8019AE50 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 11EDC 8019AE54 2000A2AF */  sw         $v0, 0x20($sp)
    /* 11EE0 8019AE58 80000224 */  addiu      $v0, $zero, 0x80
    /* 11EE4 8019AE5C 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 11EE8 8019AE60 3000A2AF */  sw         $v0, 0x30($sp)
    /* 11EEC 8019AE64 3400A2AF */  sw         $v0, 0x34($sp)
    /* 11EF0 8019AE68 02000224 */  addiu      $v0, $zero, 0x2
    /* 11EF4 8019AE6C 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 11EF8 8019AE70 1E80023C */  lui        $v0, %hi(D_801D8DFB)
    /* 11EFC 8019AE74 FB8D4290 */  lbu        $v0, %lo(D_801D8DFB)($v0)
    /* 11F00 8019AE78 01000324 */  addiu      $v1, $zero, 0x1
    /* 11F04 8019AE7C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 11F08 8019AE80 2400A0AF */  sw         $zero, 0x24($sp)
    /* 11F0C 8019AE84 2800A0AF */  sw         $zero, 0x28($sp)
    /* 11F10 8019AE88 3800A0AF */  sw         $zero, 0x38($sp)
    /* 11F14 8019AE8C 4000A3AF */  sw         $v1, 0x40($sp)
    /* 11F18 8019AE90 40110200 */  sll        $v0, $v0, 5
    /* 11F1C 8019AE94 ED4F060C */  jal        func_80193FB4
    /* 11F20 8019AE98 1000A2AF */   sw        $v0, 0x10($sp)
    /* 11F24 8019AE9C 03000224 */  addiu      $v0, $zero, 0x3
  .L8019AEA0:
    /* 11F28 8019AEA0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 11F2C 8019AEA4 2108A102 */  addu       $at, $s5, $at
    /* 11F30 8019AEA8 DAAB22A0 */  sb         $v0, -0x5426($at)
  jlabel .L8019AEAC
    /* 11F34 8019AEAC 6400BF8F */  lw         $ra, 0x64($sp)
    /* 11F38 8019AEB0 6000B68F */  lw         $s6, 0x60($sp)
    /* 11F3C 8019AEB4 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 11F40 8019AEB8 5800B48F */  lw         $s4, 0x58($sp)
    /* 11F44 8019AEBC 5400B38F */  lw         $s3, 0x54($sp)
    /* 11F48 8019AEC0 5000B28F */  lw         $s2, 0x50($sp)
    /* 11F4C 8019AEC4 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 11F50 8019AEC8 4800B08F */  lw         $s0, 0x48($sp)
    /* 11F54 8019AECC 6800BD27 */  addiu      $sp, $sp, 0x68
    /* 11F58 8019AED0 0800E003 */  jr         $ra
    /* 11F5C 8019AED4 00000000 */   nop
endlabel func_8019A804
