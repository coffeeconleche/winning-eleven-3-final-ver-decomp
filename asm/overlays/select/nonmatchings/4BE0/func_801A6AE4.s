nonmatching func_801A6AE4, 0x4E4

glabel func_801A6AE4
    /* 1DB6C 801A6AE4 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 1DB70 801A6AE8 03000424 */  addiu      $a0, $zero, 0x3
    /* 1DB74 801A6AEC 80300524 */  addiu      $a1, $zero, 0x3080
    /* 1DB78 801A6AF0 21300000 */  addu       $a2, $zero, $zero
    /* 1DB7C 801A6AF4 1E80023C */  lui        $v0, %hi(D_801D81C8)
    /* 1DB80 801A6AF8 C8814290 */  lbu        $v0, %lo(D_801D81C8)($v0)
    /* 1DB84 801A6AFC 00FE0724 */  addiu      $a3, $zero, -0x200
    /* 1DB88 801A6B00 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 1DB8C 801A6B04 0F001524 */  addiu      $s5, $zero, 0xF
    /* 1DB90 801A6B08 6000B6AF */  sw         $s6, 0x60($sp)
    /* 1DB94 801A6B0C 21B00000 */  addu       $s6, $zero, $zero
    /* 1DB98 801A6B10 6800BEAF */  sw         $fp, 0x68($sp)
    /* 1DB9C 801A6B14 00101E24 */  addiu      $fp, $zero, 0x1000
    /* 1DBA0 801A6B18 6400B7AF */  sw         $s7, 0x64($sp)
    /* 1DBA4 801A6B1C 5800B4AF */  sw         $s4, 0x58($sp)
    /* 1DBA8 801A6B20 1B001424 */  addiu      $s4, $zero, 0x1B
    /* 1DBAC 801A6B24 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 1DBB0 801A6B28 00101124 */  addiu      $s1, $zero, 0x1000
    /* 1DBB4 801A6B2C 4800B0AF */  sw         $s0, 0x48($sp)
    /* 1DBB8 801A6B30 80001024 */  addiu      $s0, $zero, 0x80
    /* 1DBBC 801A6B34 5000B2AF */  sw         $s2, 0x50($sp)
    /* 1DBC0 801A6B38 01001224 */  addiu      $s2, $zero, 0x1
    /* 1DBC4 801A6B3C 6C00BFAF */  sw         $ra, 0x6C($sp)
    /* 1DBC8 801A6B40 5400B3AF */  sw         $s3, 0x54($sp)
    /* 1DBCC 801A6B44 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1DBD0 801A6B48 1400B4AF */  sw         $s4, 0x14($sp)
    /* 1DBD4 801A6B4C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1DBD8 801A6B50 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1DBDC 801A6B54 2000B1AF */  sw         $s1, 0x20($sp)
    /* 1DBE0 801A6B58 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1DBE4 801A6B5C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1DBE8 801A6B60 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 1DBEC 801A6B64 3000B0AF */  sw         $s0, 0x30($sp)
    /* 1DBF0 801A6B68 3400B0AF */  sw         $s0, 0x34($sp)
    /* 1DBF4 801A6B6C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1DBF8 801A6B70 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 1DBFC 801A6B74 4000B2AF */  sw         $s2, 0x40($sp)
    /* 1DC00 801A6B78 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 1DC04 801A6B7C 5CA022AC */  sw         $v0, %lo(D_801DA05C)($at)
    /* 1DC08 801A6B80 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 1DC0C 801A6B84 58A022AC */  sw         $v0, %lo(D_801DA058)($at)
    /* 1DC10 801A6B88 ED4F060C */  jal        func_80193FB4
    /* 1DC14 801A6B8C 80001724 */   addiu     $s7, $zero, 0x80
    /* 1DC18 801A6B90 05000424 */  addiu      $a0, $zero, 0x5
    /* 1DC1C 801A6B94 81300524 */  addiu      $a1, $zero, 0x3081
    /* 1DC20 801A6B98 21300000 */  addu       $a2, $zero, $zero
    /* 1DC24 801A6B9C 00FE0724 */  addiu      $a3, $zero, -0x200
    /* 1DC28 801A6BA0 02001324 */  addiu      $s3, $zero, 0x2
    /* 1DC2C 801A6BA4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1DC30 801A6BA8 1400B4AF */  sw         $s4, 0x14($sp)
    /* 1DC34 801A6BAC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1DC38 801A6BB0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1DC3C 801A6BB4 2000B1AF */  sw         $s1, 0x20($sp)
    /* 1DC40 801A6BB8 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1DC44 801A6BBC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1DC48 801A6BC0 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 1DC4C 801A6BC4 3000B0AF */  sw         $s0, 0x30($sp)
    /* 1DC50 801A6BC8 3400B0AF */  sw         $s0, 0x34($sp)
    /* 1DC54 801A6BCC 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1DC58 801A6BD0 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 1DC5C 801A6BD4 ED4F060C */  jal        func_80193FB4
    /* 1DC60 801A6BD8 4000B2AF */   sw        $s2, 0x40($sp)
    /* 1DC64 801A6BDC 06000424 */  addiu      $a0, $zero, 0x6
    /* 1DC68 801A6BE0 82300524 */  addiu      $a1, $zero, 0x3082
    /* 1DC6C 801A6BE4 21300000 */  addu       $a2, $zero, $zero
    /* 1DC70 801A6BE8 00FE0724 */  addiu      $a3, $zero, -0x200
    /* 1DC74 801A6BEC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1DC78 801A6BF0 1400B4AF */  sw         $s4, 0x14($sp)
    /* 1DC7C 801A6BF4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1DC80 801A6BF8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1DC84 801A6BFC 2000B1AF */  sw         $s1, 0x20($sp)
    /* 1DC88 801A6C00 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1DC8C 801A6C04 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1DC90 801A6C08 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 1DC94 801A6C0C 3000B0AF */  sw         $s0, 0x30($sp)
    /* 1DC98 801A6C10 3400B0AF */  sw         $s0, 0x34($sp)
    /* 1DC9C 801A6C14 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1DCA0 801A6C18 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 1DCA4 801A6C1C ED4F060C */  jal        func_80193FB4
    /* 1DCA8 801A6C20 4000B2AF */   sw        $s2, 0x40($sp)
    /* 1DCAC 801A6C24 A739060C */  jal        func_8018E69C
    /* 1DCB0 801A6C28 21200000 */   addu      $a0, $zero, $zero
    /* 1DCB4 801A6C2C 07000424 */  addiu      $a0, $zero, 0x7
    /* 1DCB8 801A6C30 84304524 */  addiu      $a1, $v0, 0x3084
    /* 1DCBC 801A6C34 21300000 */  addu       $a2, $zero, $zero
    /* 1DCC0 801A6C38 00FE0724 */  addiu      $a3, $zero, -0x200
    /* 1DCC4 801A6C3C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1DCC8 801A6C40 1400B4AF */  sw         $s4, 0x14($sp)
    /* 1DCCC 801A6C44 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1DCD0 801A6C48 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1DCD4 801A6C4C 2000B1AF */  sw         $s1, 0x20($sp)
    /* 1DCD8 801A6C50 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1DCDC 801A6C54 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1DCE0 801A6C58 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 1DCE4 801A6C5C 3000B0AF */  sw         $s0, 0x30($sp)
    /* 1DCE8 801A6C60 3400B0AF */  sw         $s0, 0x34($sp)
    /* 1DCEC 801A6C64 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1DCF0 801A6C68 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 1DCF4 801A6C6C ED4F060C */  jal        func_80193FB4
    /* 1DCF8 801A6C70 4000B2AF */   sw        $s2, 0x40($sp)
    /* 1DCFC 801A6C74 A739060C */  jal        func_8018E69C
    /* 1DD00 801A6C78 01000424 */   addiu     $a0, $zero, 0x1
    /* 1DD04 801A6C7C 08000424 */  addiu      $a0, $zero, 0x8
    /* 1DD08 801A6C80 84304524 */  addiu      $a1, $v0, 0x3084
    /* 1DD0C 801A6C84 21300000 */  addu       $a2, $zero, $zero
    /* 1DD10 801A6C88 00FE0724 */  addiu      $a3, $zero, -0x200
    /* 1DD14 801A6C8C 10000224 */  addiu      $v0, $zero, 0x10
    /* 1DD18 801A6C90 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1DD1C 801A6C94 1400B4AF */  sw         $s4, 0x14($sp)
    /* 1DD20 801A6C98 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1DD24 801A6C9C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1DD28 801A6CA0 2000B1AF */  sw         $s1, 0x20($sp)
    /* 1DD2C 801A6CA4 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1DD30 801A6CA8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1DD34 801A6CAC 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 1DD38 801A6CB0 3000B0AF */  sw         $s0, 0x30($sp)
    /* 1DD3C 801A6CB4 3400B0AF */  sw         $s0, 0x34($sp)
    /* 1DD40 801A6CB8 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1DD44 801A6CBC 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 1DD48 801A6CC0 ED4F060C */  jal        func_80193FB4
    /* 1DD4C 801A6CC4 4000B2AF */   sw        $s2, 0x40($sp)
  .L801A6CC8:
    /* 1DD50 801A6CC8 2120A002 */  addu       $a0, $s5, $zero
    /* 1DD54 801A6CCC 8B30C526 */  addiu      $a1, $s6, 0x308B
    /* 1DD58 801A6CD0 21300000 */  addu       $a2, $zero, $zero
    /* 1DD5C 801A6CD4 00FE0724 */  addiu      $a3, $zero, -0x200
    /* 1DD60 801A6CD8 1B000324 */  addiu      $v1, $zero, 0x1B
    /* 1DD64 801A6CDC 02000224 */  addiu      $v0, $zero, 0x2
    /* 1DD68 801A6CE0 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 1DD6C 801A6CE4 01000224 */  addiu      $v0, $zero, 0x1
    /* 1DD70 801A6CE8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1DD74 801A6CEC 1400A3AF */  sw         $v1, 0x14($sp)
    /* 1DD78 801A6CF0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1DD7C 801A6CF4 1C00BEAF */  sw         $fp, 0x1C($sp)
    /* 1DD80 801A6CF8 2000BEAF */  sw         $fp, 0x20($sp)
    /* 1DD84 801A6CFC 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1DD88 801A6D00 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1DD8C 801A6D04 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 1DD90 801A6D08 3000B7AF */  sw         $s7, 0x30($sp)
    /* 1DD94 801A6D0C 3400B7AF */  sw         $s7, 0x34($sp)
    /* 1DD98 801A6D10 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1DD9C 801A6D14 ED4F060C */  jal        func_80193FB4
    /* 1DDA0 801A6D18 4000A2AF */   sw        $v0, 0x40($sp)
    /* 1DDA4 801A6D1C 0100B526 */  addiu      $s5, $s5, 0x1
    /* 1DDA8 801A6D20 1700A22A */  slti       $v0, $s5, 0x17
    /* 1DDAC 801A6D24 E8FF4014 */  bnez       $v0, .L801A6CC8
    /* 1DDB0 801A6D28 0100D626 */   addiu     $s6, $s6, 0x1
    /* 1DDB4 801A6D2C 17001524 */  addiu      $s5, $zero, 0x17
    /* 1DDB8 801A6D30 21B00000 */  addu       $s6, $zero, $zero
    /* 1DDBC 801A6D34 1B001224 */  addiu      $s2, $zero, 0x1B
    /* 1DDC0 801A6D38 00101124 */  addiu      $s1, $zero, 0x1000
    /* 1DDC4 801A6D3C 80001024 */  addiu      $s0, $zero, 0x80
  .L801A6D40:
    /* 1DDC8 801A6D40 2120A002 */  addu       $a0, $s5, $zero
    /* 1DDCC 801A6D44 9330C526 */  addiu      $a1, $s6, 0x3093
    /* 1DDD0 801A6D48 21300000 */  addu       $a2, $zero, $zero
    /* 1DDD4 801A6D4C 00FE0724 */  addiu      $a3, $zero, -0x200
    /* 1DDD8 801A6D50 02000224 */  addiu      $v0, $zero, 0x2
    /* 1DDDC 801A6D54 01001724 */  addiu      $s7, $zero, 0x1
    /* 1DDE0 801A6D58 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1DDE4 801A6D5C 1400B2AF */  sw         $s2, 0x14($sp)
    /* 1DDE8 801A6D60 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1DDEC 801A6D64 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1DDF0 801A6D68 2000B1AF */  sw         $s1, 0x20($sp)
    /* 1DDF4 801A6D6C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1DDF8 801A6D70 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1DDFC 801A6D74 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 1DE00 801A6D78 3000B0AF */  sw         $s0, 0x30($sp)
    /* 1DE04 801A6D7C 3400B0AF */  sw         $s0, 0x34($sp)
    /* 1DE08 801A6D80 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1DE0C 801A6D84 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 1DE10 801A6D88 ED4F060C */  jal        func_80193FB4
    /* 1DE14 801A6D8C 4000B7AF */   sw        $s7, 0x40($sp)
    /* 1DE18 801A6D90 0100B526 */  addiu      $s5, $s5, 0x1
    /* 1DE1C 801A6D94 2100A22A */  slti       $v0, $s5, 0x21
    /* 1DE20 801A6D98 E9FF4014 */  bnez       $v0, .L801A6D40
    /* 1DE24 801A6D9C 0100D626 */   addiu     $s6, $s6, 0x1
    /* 1DE28 801A6DA0 21200000 */  addu       $a0, $zero, $zero
    /* 1DE2C 801A6DA4 21280000 */  addu       $a1, $zero, $zero
    /* 1DE30 801A6DA8 1E80063C */  lui        $a2, %hi(D_801D8D78)
    /* 1DE34 801A6DAC 788DC624 */  addiu      $a2, $a2, %lo(D_801D8D78)
    /* 1DE38 801A6DB0 01000724 */  addiu      $a3, $zero, 0x1
    /* 1DE3C 801A6DB4 1E021624 */  addiu      $s6, $zero, 0x21E
    /* 1DE40 801A6DB8 C1FF0224 */  addiu      $v0, $zero, -0x3F
    /* 1DE44 801A6DBC 8C001524 */  addiu      $s5, $zero, 0x8C
    /* 1DE48 801A6DC0 0000D6A4 */  sh         $s6, 0x0($a2)
    /* 1DE4C 801A6DC4 1E80013C */  lui        $at, %hi(D_801D8D7A)
    /* 1DE50 801A6DC8 7A8D22A4 */  sh         $v0, %lo(D_801D8D7A)($at)
    /* 1DE54 801A6DCC 58000224 */  addiu      $v0, $zero, 0x58
    /* 1DE58 801A6DD0 20001024 */  addiu      $s0, $zero, 0x20
    /* 1DE5C 801A6DD4 80001124 */  addiu      $s1, $zero, 0x80
    /* 1DE60 801A6DD8 A0001424 */  addiu      $s4, $zero, 0xA0
    /* 1DE64 801A6DDC 03001324 */  addiu      $s3, $zero, 0x3
    /* 1DE68 801A6DE0 1E80013C */  lui        $at, %hi(D_801D8D7C)
    /* 1DE6C 801A6DE4 7C8D35A4 */  sh         $s5, %lo(D_801D8D7C)($at)
    /* 1DE70 801A6DE8 1E80013C */  lui        $at, %hi(D_801D8D7E)
    /* 1DE74 801A6DEC 7E8D22A4 */  sh         $v0, %lo(D_801D8D7E)($at)
    /* 1DE78 801A6DF0 1E80013C */  lui        $at, %hi(D_801D8D80)
    /* 1DE7C 801A6DF4 808D30A0 */  sb         $s0, %lo(D_801D8D80)($at)
    /* 1DE80 801A6DF8 1E80013C */  lui        $at, %hi(D_801D8D81)
    /* 1DE84 801A6DFC 818D30A0 */  sb         $s0, %lo(D_801D8D81)($at)
    /* 1DE88 801A6E00 1E80013C */  lui        $at, %hi(D_801D8D82)
    /* 1DE8C 801A6E04 828D30A0 */  sb         $s0, %lo(D_801D8D82)($at)
    /* 1DE90 801A6E08 1E80013C */  lui        $at, %hi(D_801D8D83)
    /* 1DE94 801A6E0C 838D31A0 */  sb         $s1, %lo(D_801D8D83)($at)
    /* 1DE98 801A6E10 1E80013C */  lui        $at, %hi(D_801D8D84)
    /* 1DE9C 801A6E14 848D31A0 */  sb         $s1, %lo(D_801D8D84)($at)
    /* 1DEA0 801A6E18 1E80013C */  lui        $at, %hi(D_801D8D85)
    /* 1DEA4 801A6E1C 858D34A0 */  sb         $s4, %lo(D_801D8D85)($at)
    /* 1DEA8 801A6E20 1000B3AF */  sw         $s3, 0x10($sp)
    /* 1DEAC 801A6E24 3B50060C */  jal        func_801940EC
    /* 1DEB0 801A6E28 1400B7AF */   sw        $s7, 0x14($sp)
    /* 1DEB4 801A6E2C D79C060C */  jal        func_801A735C
    /* 1DEB8 801A6E30 21200000 */   addu      $a0, $zero, $zero
    /* 1DEBC 801A6E34 01000424 */  addiu      $a0, $zero, 0x1
    /* 1DEC0 801A6E38 21280000 */  addu       $a1, $zero, $zero
    /* 1DEC4 801A6E3C 1E80063C */  lui        $a2, %hi(D_801D8D90)
    /* 1DEC8 801A6E40 908DC624 */  addiu      $a2, $a2, %lo(D_801D8D90)
    /* 1DECC 801A6E44 01000724 */  addiu      $a3, $zero, 0x1
    /* 1DED0 801A6E48 00021224 */  addiu      $s2, $zero, 0x200
    /* 1DED4 801A6E4C 1C000224 */  addiu      $v0, $zero, 0x1C
    /* 1DED8 801A6E50 1080013C */  lui        $at, %hi(D_80105720)
    /* 1DEDC 801A6E54 205732A4 */  sh         $s2, %lo(D_80105720)($at)
    /* 1DEE0 801A6E58 1080013C */  lui        $at, %hi(D_80105748)
    /* 1DEE4 801A6E5C 485732A4 */  sh         $s2, %lo(D_80105748)($at)
    /* 1DEE8 801A6E60 0000D6A4 */  sh         $s6, 0x0($a2)
    /* 1DEEC 801A6E64 1E80013C */  lui        $at, %hi(D_801D8D92)
    /* 1DEF0 801A6E68 928D22A4 */  sh         $v0, %lo(D_801D8D92)($at)
    /* 1DEF4 801A6E6C 48000224 */  addiu      $v0, $zero, 0x48
    /* 1DEF8 801A6E70 1E80013C */  lui        $at, %hi(D_801D8D94)
    /* 1DEFC 801A6E74 948D35A4 */  sh         $s5, %lo(D_801D8D94)($at)
    /* 1DF00 801A6E78 1E80013C */  lui        $at, %hi(D_801D8D96)
    /* 1DF04 801A6E7C 968D22A4 */  sh         $v0, %lo(D_801D8D96)($at)
    /* 1DF08 801A6E80 1E80013C */  lui        $at, %hi(D_801D8D98)
    /* 1DF0C 801A6E84 988D30A0 */  sb         $s0, %lo(D_801D8D98)($at)
    /* 1DF10 801A6E88 1E80013C */  lui        $at, %hi(D_801D8D99)
    /* 1DF14 801A6E8C 998D30A0 */  sb         $s0, %lo(D_801D8D99)($at)
    /* 1DF18 801A6E90 1E80013C */  lui        $at, %hi(D_801D8D9A)
    /* 1DF1C 801A6E94 9A8D30A0 */  sb         $s0, %lo(D_801D8D9A)($at)
    /* 1DF20 801A6E98 1E80013C */  lui        $at, %hi(D_801D8D9B)
    /* 1DF24 801A6E9C 9B8D31A0 */  sb         $s1, %lo(D_801D8D9B)($at)
    /* 1DF28 801A6EA0 1E80013C */  lui        $at, %hi(D_801D8D9C)
    /* 1DF2C 801A6EA4 9C8D31A0 */  sb         $s1, %lo(D_801D8D9C)($at)
    /* 1DF30 801A6EA8 1E80013C */  lui        $at, %hi(D_801D8D9D)
    /* 1DF34 801A6EAC 9D8D34A0 */  sb         $s4, %lo(D_801D8D9D)($at)
    /* 1DF38 801A6EB0 1000B3AF */  sw         $s3, 0x10($sp)
    /* 1DF3C 801A6EB4 3B50060C */  jal        func_801940EC
    /* 1DF40 801A6EB8 1400B7AF */   sw        $s7, 0x14($sp)
    /* 1DF44 801A6EBC A739060C */  jal        func_8018E69C
    /* 1DF48 801A6EC0 21200000 */   addu      $a0, $zero, $zero
    /* 1DF4C 801A6EC4 09000424 */  addiu      $a0, $zero, 0x9
    /* 1DF50 801A6EC8 84304524 */  addiu      $a1, $v0, 0x3084
    /* 1DF54 801A6ECC 21300000 */  addu       $a2, $zero, $zero
    /* 1DF58 801A6ED0 5A020724 */  addiu      $a3, $zero, 0x25A
    /* 1DF5C 801A6ED4 D3FF1424 */  addiu      $s4, $zero, -0x2D
    /* 1DF60 801A6ED8 1B001324 */  addiu      $s3, $zero, 0x1B
    /* 1DF64 801A6EDC 00101124 */  addiu      $s1, $zero, 0x1000
    /* 1DF68 801A6EE0 80001024 */  addiu      $s0, $zero, 0x80
    /* 1DF6C 801A6EE4 1000B4AF */  sw         $s4, 0x10($sp)
    /* 1DF70 801A6EE8 1400B3AF */  sw         $s3, 0x14($sp)
    /* 1DF74 801A6EEC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1DF78 801A6EF0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1DF7C 801A6EF4 2000B1AF */  sw         $s1, 0x20($sp)
    /* 1DF80 801A6EF8 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1DF84 801A6EFC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1DF88 801A6F00 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 1DF8C 801A6F04 3000B0AF */  sw         $s0, 0x30($sp)
    /* 1DF90 801A6F08 3400B0AF */  sw         $s0, 0x34($sp)
    /* 1DF94 801A6F0C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1DF98 801A6F10 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 1DF9C 801A6F14 ED4F060C */  jal        func_80193FB4
    /* 1DFA0 801A6F18 4000B7AF */   sw        $s7, 0x40($sp)
    /* 1DFA4 801A6F1C A739060C */  jal        func_8018E69C
    /* 1DFA8 801A6F20 01000424 */   addiu     $a0, $zero, 0x1
    /* 1DFAC 801A6F24 0A000424 */  addiu      $a0, $zero, 0xA
    /* 1DFB0 801A6F28 84304524 */  addiu      $a1, $v0, 0x3084
    /* 1DFB4 801A6F2C 21300000 */  addu       $a2, $zero, $zero
    /* 1DFB8 801A6F30 9F020724 */  addiu      $a3, $zero, 0x29F
    /* 1DFBC 801A6F34 1000B4AF */  sw         $s4, 0x10($sp)
    /* 1DFC0 801A6F38 1400B3AF */  sw         $s3, 0x14($sp)
    /* 1DFC4 801A6F3C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1DFC8 801A6F40 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1DFCC 801A6F44 2000B1AF */  sw         $s1, 0x20($sp)
    /* 1DFD0 801A6F48 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1DFD4 801A6F4C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1DFD8 801A6F50 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 1DFDC 801A6F54 3000B0AF */  sw         $s0, 0x30($sp)
    /* 1DFE0 801A6F58 3400B0AF */  sw         $s0, 0x34($sp)
    /* 1DFE4 801A6F5C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1DFE8 801A6F60 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 1DFEC 801A6F64 ED4F060C */  jal        func_80193FB4
    /* 1DFF0 801A6F68 4000B7AF */   sw        $s7, 0x40($sp)
    /* 1DFF4 801A6F6C E89D060C */  jal        func_801A77A0
    /* 1DFF8 801A6F70 00000000 */   nop
    /* 1DFFC 801A6F74 1080013C */  lui        $at, %hi(D_801056D0)
    /* 1E000 801A6F78 D05632A4 */  sh         $s2, %lo(D_801056D0)($at)
    /* 1E004 801A6F7C 1080013C */  lui        $at, %hi(D_801056F8)
    /* 1E008 801A6F80 F85632A4 */  sh         $s2, %lo(D_801056F8)($at)
    /* 1E00C 801A6F84 939E060C */  jal        func_801A7A4C
    /* 1E010 801A6F88 00000000 */   nop
    /* 1E014 801A6F8C 49A0060C */  jal        func_801A8124
    /* 1E018 801A6F90 00000000 */   nop
    /* 1E01C 801A6F94 6C00BF8F */  lw         $ra, 0x6C($sp)
    /* 1E020 801A6F98 6800BE8F */  lw         $fp, 0x68($sp)
    /* 1E024 801A6F9C 6400B78F */  lw         $s7, 0x64($sp)
    /* 1E028 801A6FA0 6000B68F */  lw         $s6, 0x60($sp)
    /* 1E02C 801A6FA4 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 1E030 801A6FA8 5800B48F */  lw         $s4, 0x58($sp)
    /* 1E034 801A6FAC 5400B38F */  lw         $s3, 0x54($sp)
    /* 1E038 801A6FB0 5000B28F */  lw         $s2, 0x50($sp)
    /* 1E03C 801A6FB4 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 1E040 801A6FB8 4800B08F */  lw         $s0, 0x48($sp)
    /* 1E044 801A6FBC 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 1E048 801A6FC0 0800E003 */  jr         $ra
    /* 1E04C 801A6FC4 00000000 */   nop
endlabel func_801A6AE4
