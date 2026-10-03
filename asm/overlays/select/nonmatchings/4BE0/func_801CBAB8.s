nonmatching func_801CBAB8, 0x52C

glabel func_801CBAB8
    /* 42B40 801CBAB8 801F033C */  lui        $v1, (0x1F80029B >> 16)
    /* 42B44 801CBABC 9B026390 */  lbu        $v1, (0x1F80029B & 0xFFFF)($v1)
    /* 42B48 801CBAC0 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 42B4C 801CBAC4 5400B1AF */  sw         $s1, 0x54($sp)
    /* 42B50 801CBAC8 1080113C */  lui        $s1, %hi(D_800FF748)
    /* 42B54 801CBACC 48F73126 */  addiu      $s1, $s1, %lo(D_800FF748)
    /* 42B58 801CBAD0 5800B2AF */  sw         $s2, 0x58($sp)
    /* 42B5C 801CBAD4 801F123C */  lui        $s2, (0x1F80029B >> 16)
    /* 42B60 801CBAD8 5000B0AF */  sw         $s0, 0x50($sp)
    /* 42B64 801CBADC 1E80103C */  lui        $s0, %hi(D_801D8DA8)
    /* 42B68 801CBAE0 A88D1026 */  addiu      $s0, $s0, %lo(D_801D8DA8)
    /* 42B6C 801CBAE4 0500622C */  sltiu      $v0, $v1, 0x5
    /* 42B70 801CBAE8 37014010 */  beqz       $v0, .L801CBFC8
    /* 42B74 801CBAEC 5C00BFAF */   sw        $ra, 0x5C($sp)
    /* 42B78 801CBAF0 80100300 */  sll        $v0, $v1, 2
    /* 42B7C 801CBAF4 1980013C */  lui        $at, %hi(jtbl_8018D9F0)
    /* 42B80 801CBAF8 21082200 */  addu       $at, $at, $v0
    /* 42B84 801CBAFC F0D9228C */  lw         $v0, %lo(jtbl_8018D9F0)($at)
    /* 42B88 801CBB00 00000000 */  nop
    /* 42B8C 801CBB04 08004000 */  jr         $v0
    /* 42B90 801CBB08 00000000 */   nop
  jlabel .L801CBB0C
    /* 42B94 801CBB0C 02000424 */  addiu      $a0, $zero, 0x2
    /* 42B98 801CBB10 0040053C */  lui        $a1, (0x40000000 >> 16)
    /* 42B9C 801CBB14 21300002 */  addu       $a2, $s0, $zero
    /* 42BA0 801CBB18 21380000 */  addu       $a3, $zero, $zero
    /* 42BA4 801CBB1C D4FF0224 */  addiu      $v0, $zero, -0x2C
    /* 42BA8 801CBB20 020002A6 */  sh         $v0, 0x2($s0)
    /* 42BAC 801CBB24 04000224 */  addiu      $v0, $zero, 0x4
    /* 42BB0 801CBB28 040002A6 */  sh         $v0, 0x4($s0)
    /* 42BB4 801CBB2C 060002A6 */  sh         $v0, 0x6($s0)
    /* 42BB8 801CBB30 20000224 */  addiu      $v0, $zero, 0x20
    /* 42BBC 801CBB34 080002A2 */  sb         $v0, 0x8($s0)
    /* 42BC0 801CBB38 090002A2 */  sb         $v0, 0x9($s0)
    /* 42BC4 801CBB3C 60000224 */  addiu      $v0, $zero, 0x60
    /* 42BC8 801CBB40 0A0002A2 */  sb         $v0, 0xA($s0)
    /* 42BCC 801CBB44 02000224 */  addiu      $v0, $zero, 0x2
    /* 42BD0 801CBB48 000000A6 */  sh         $zero, 0x0($s0)
    /* 42BD4 801CBB4C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 42BD8 801CBB50 01000224 */  addiu      $v0, $zero, 0x1
    /* 42BDC 801CBB54 7850060C */  jal        func_801941E0
    /* 42BE0 801CBB58 1400A2AF */   sw        $v0, 0x14($sp)
    /* 42BE4 801CBB5C 87000224 */  addiu      $v0, $zero, 0x87
    /* 42BE8 801CBB60 A20242A2 */  sb         $v0, (0x1F8002A2 & 0xFFFF)($s2)
    /* 42BEC 801CBB64 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42BF0 801CBB68 21082102 */  addu       $at, $s1, $at
    /* 42BF4 801CBB6C 18AC2494 */  lhu        $a0, -0x53E8($at)
    /* 42BF8 801CBB70 1D80013C */  lui        $at, %hi(D_801D59A4)
    /* 42BFC 801CBB74 A45920A0 */  sb         $zero, %lo(D_801D59A4)($at)
    /* 42C00 801CBB78 9B024292 */  lbu        $v0, (0x1F80029B & 0xFFFF)($s2)
    /* 42C04 801CBB7C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42C08 801CBB80 21082102 */  addu       $at, $s1, $at
    /* 42C0C 801CBB84 1AAC2394 */  lhu        $v1, -0x53E6($at)
    /* 42C10 801CBB88 01004224 */  addiu      $v0, $v0, 0x1
    /* 42C14 801CBB8C 1E80013C */  lui        $at, %hi(D_801DADB4)
    /* 42C18 801CBB90 B4AD24A4 */  sh         $a0, %lo(D_801DADB4)($at)
    /* 42C1C 801CBB94 1E80013C */  lui        $at, %hi(D_801DADB8)
    /* 42C20 801CBB98 B8AD23A4 */  sh         $v1, %lo(D_801DADB8)($at)
    /* 42C24 801CBB9C 9B0242A2 */  sb         $v0, (0x1F80029B & 0xFFFF)($s2)
  jlabel .L801CBBA0
    /* 42C28 801CBBA0 1D80023C */  lui        $v0, %hi(D_801D59A4)
    /* 42C2C 801CBBA4 A4594290 */  lbu        $v0, %lo(D_801D59A4)($v0)
    /* 42C30 801CBBA8 04000396 */  lhu        $v1, 0x4($s0)
    /* 42C34 801CBBAC 01004224 */  addiu      $v0, $v0, 0x1
    /* 42C38 801CBBB0 1D80013C */  lui        $at, %hi(D_801D59A4)
    /* 42C3C 801CBBB4 A45922A0 */  sb         $v0, %lo(D_801D59A4)($at)
    /* 42C40 801CBBB8 3001622C */  sltiu      $v0, $v1, 0x130
    /* 42C44 801CBBBC 03004010 */  beqz       $v0, .L801CBBCC
    /* 42C48 801CBBC0 1E006224 */   addiu     $v0, $v1, 0x1E
    /* 42C4C 801CBBC4 E02F0708 */  j          .L801CBF80
    /* 42C50 801CBBC8 040002A6 */   sh        $v0, 0x4($s0)
  .L801CBBCC:
    /* 42C54 801CBBCC 06000396 */  lhu        $v1, 0x6($s0)
    /* 42C58 801CBBD0 00000000 */  nop
    /* 42C5C 801CBBD4 2E00622C */  sltiu      $v0, $v1, 0x2E
    /* 42C60 801CBBD8 03004010 */  beqz       $v0, .L801CBBE8
    /* 42C64 801CBBDC 06006224 */   addiu     $v0, $v1, 0x6
    /* 42C68 801CBBE0 E02F0708 */  j          .L801CBF80
    /* 42C6C 801CBBE4 060002A6 */   sh        $v0, 0x6($s0)
  .L801CBBE8:
    /* 42C70 801CBBE8 21200000 */  addu       $a0, $zero, $zero
    /* 42C74 801CBBEC 6BFF0624 */  addiu      $a2, $zero, -0x95
    /* 42C78 801CBBF0 C2FF0724 */  addiu      $a3, $zero, -0x3E
    /* 42C7C 801CBBF4 1D80053C */  lui        $a1, %hi(D_801D5874)
    /* 42C80 801CBBF8 7458A58C */  lw         $a1, %lo(D_801D5874)($a1)
    /* 42C84 801CBBFC 2C010224 */  addiu      $v0, $zero, 0x12C
    /* 42C88 801CBC00 1000A2AF */  sw         $v0, 0x10($sp)
    /* 42C8C 801CBC04 02000224 */  addiu      $v0, $zero, 0x2
    /* 42C90 801CBC08 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 42C94 801CBC0C 03000224 */  addiu      $v0, $zero, 0x3
    /* 42C98 801CBC10 2400A2AF */  sw         $v0, 0x24($sp)
    /* 42C9C 801CBC14 01000224 */  addiu      $v0, $zero, 0x1
    /* 42CA0 801CBC18 1400A0AF */  sw         $zero, 0x14($sp)
    /* 42CA4 801CBC1C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 42CA8 801CBC20 2000A0AF */  sw         $zero, 0x20($sp)
    /* 42CAC 801CBC24 2800A0AF */  sw         $zero, 0x28($sp)
    /* 42CB0 801CBC28 B850060C */  jal        func_801942E0
    /* 42CB4 801CBC2C 2C00A2AF */   sw        $v0, 0x2C($sp)
    /* 42CB8 801CBC30 9B024292 */  lbu        $v0, (0x1F80029B & 0xFFFF)($s2)
    /* 42CBC 801CBC34 00000000 */  nop
    /* 42CC0 801CBC38 01004224 */  addiu      $v0, $v0, 0x1
    /* 42CC4 801CBC3C E02F0708 */  j          .L801CBF80
    /* 42CC8 801CBC40 9B0242A2 */   sb        $v0, (0x1F80029B & 0xFFFF)($s2)
  jlabel .L801CBC44
    /* 42CCC 801CBC44 21800000 */  addu       $s0, $zero, $zero
    /* 42CD0 801CBC48 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 42CD4 801CBC4C 50AE20A0 */  sb         $zero, %lo(D_801DAE50)($at)
    /* 42CD8 801CBC50 20BB010C */  jal        func_8006EC80
    /* 42CDC 801CBC54 21200000 */   addu      $a0, $zero, $zero
    /* 42CE0 801CBC58 FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 42CE4 801CBC5C 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 42CE8 801CBC60 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 42CEC 801CBC64 00100224 */  addiu      $v0, $zero, 0x1000
    /* 42CF0 801CBC68 37006210 */  beq        $v1, $v0, .L801CBD48
    /* 42CF4 801CBC6C 01106228 */   slti      $v0, $v1, 0x1001
    /* 42CF8 801CBC70 0E004010 */  beqz       $v0, .L801CBCAC
    /* 42CFC 801CBC74 20000224 */   addiu     $v0, $zero, 0x20
    /* 42D00 801CBC78 5A006210 */  beq        $v1, $v0, .L801CBDE4
    /* 42D04 801CBC7C 21006228 */   slti      $v0, $v1, 0x21
    /* 42D08 801CBC80 05004010 */  beqz       $v0, .L801CBC98
    /* 42D0C 801CBC84 10000224 */   addiu     $v0, $zero, 0x10
    /* 42D10 801CBC88 4A006210 */  beq        $v1, $v0, .L801CBDB4
    /* 42D14 801CBC8C B6000224 */   addiu     $v0, $zero, 0xB6
    /* 42D18 801CBC90 9C2F0708 */  j          .L801CBE70
    /* 42D1C 801CBC94 00000000 */   nop
  .L801CBC98:
    /* 42D20 801CBC98 40000224 */  addiu      $v0, $zero, 0x40
    /* 42D24 801CBC9C 6F006210 */  beq        $v1, $v0, .L801CBE5C
    /* 42D28 801CBCA0 00000000 */   nop
    /* 42D2C 801CBCA4 9C2F0708 */  j          .L801CBE70
    /* 42D30 801CBCA8 00000000 */   nop
  .L801CBCAC:
    /* 42D34 801CBCAC 00400224 */  addiu      $v0, $zero, 0x4000
    /* 42D38 801CBCB0 33006210 */  beq        $v1, $v0, .L801CBD80
    /* 42D3C 801CBCB4 01406228 */   slti      $v0, $v1, 0x4001
    /* 42D40 801CBCB8 05004010 */  beqz       $v0, .L801CBCD0
    /* 42D44 801CBCBC 00200224 */   addiu     $v0, $zero, 0x2000
    /* 42D48 801CBCC0 14006210 */  beq        $v1, $v0, .L801CBD14
    /* 42D4C 801CBCC4 00000000 */   nop
    /* 42D50 801CBCC8 9C2F0708 */  j          .L801CBE70
    /* 42D54 801CBCCC 00000000 */   nop
  .L801CBCD0:
    /* 42D58 801CBCD0 00800234 */  ori        $v0, $zero, 0x8000
    /* 42D5C 801CBCD4 66006214 */  bne        $v1, $v0, .L801CBE70
    /* 42D60 801CBCD8 00000000 */   nop
    /* 42D64 801CBCDC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42D68 801CBCE0 21082102 */  addu       $at, $s1, $at
    /* 42D6C 801CBCE4 18AC2284 */  lh         $v0, -0x53E8($at)
    /* 42D70 801CBCE8 00000000 */  nop
    /* 42D74 801CBCEC 21184000 */  addu       $v1, $v0, $zero
    /* 42D78 801CBCF0 A7004228 */  slti       $v0, $v0, 0xA7
    /* 42D7C 801CBCF4 5E004014 */  bnez       $v0, .L801CBE70
    /* 42D80 801CBCF8 01001024 */   addiu     $s0, $zero, 0x1
    /* 42D84 801CBCFC FFFF6224 */  addiu      $v0, $v1, -0x1
    /* 42D88 801CBD00 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42D8C 801CBD04 21082102 */  addu       $at, $s1, $at
    /* 42D90 801CBD08 18AC22A4 */  sh         $v0, -0x53E8($at)
    /* 42D94 801CBD0C 752F0708 */  j          .L801CBDD4
    /* 42D98 801CBD10 0D050424 */   addiu     $a0, $zero, 0x50D
  .L801CBD14:
    /* 42D9C 801CBD14 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42DA0 801CBD18 21082102 */  addu       $at, $s1, $at
    /* 42DA4 801CBD1C 18AC2284 */  lh         $v0, -0x53E8($at)
    /* 42DA8 801CBD20 00000000 */  nop
    /* 42DAC 801CBD24 21184000 */  addu       $v1, $v0, $zero
    /* 42DB0 801CBD28 C6004228 */  slti       $v0, $v0, 0xC6
    /* 42DB4 801CBD2C 2B004010 */  beqz       $v0, .L801CBDDC
    /* 42DB8 801CBD30 01006224 */   addiu     $v0, $v1, 0x1
    /* 42DBC 801CBD34 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42DC0 801CBD38 21082102 */  addu       $at, $s1, $at
    /* 42DC4 801CBD3C 18AC22A4 */  sh         $v0, -0x53E8($at)
    /* 42DC8 801CBD40 752F0708 */  j          .L801CBDD4
    /* 42DCC 801CBD44 0D050424 */   addiu     $a0, $zero, 0x50D
  .L801CBD48:
    /* 42DD0 801CBD48 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42DD4 801CBD4C 21082102 */  addu       $at, $s1, $at
    /* 42DD8 801CBD50 1AAC2284 */  lh         $v0, -0x53E6($at)
    /* 42DDC 801CBD54 00000000 */  nop
    /* 42DE0 801CBD58 21184000 */  addu       $v1, $v0, $zero
    /* 42DE4 801CBD5C 71004228 */  slti       $v0, $v0, 0x71
    /* 42DE8 801CBD60 43004014 */  bnez       $v0, .L801CBE70
    /* 42DEC 801CBD64 01001024 */   addiu     $s0, $zero, 0x1
    /* 42DF0 801CBD68 FFFF6224 */  addiu      $v0, $v1, -0x1
    /* 42DF4 801CBD6C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42DF8 801CBD70 21082102 */  addu       $at, $s1, $at
    /* 42DFC 801CBD74 1AAC22A4 */  sh         $v0, -0x53E6($at)
    /* 42E00 801CBD78 752F0708 */  j          .L801CBDD4
    /* 42E04 801CBD7C 0D050424 */   addiu     $a0, $zero, 0x50D
  .L801CBD80:
    /* 42E08 801CBD80 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42E0C 801CBD84 21082102 */  addu       $at, $s1, $at
    /* 42E10 801CBD88 1AAC2284 */  lh         $v0, -0x53E6($at)
    /* 42E14 801CBD8C 00000000 */  nop
    /* 42E18 801CBD90 21184000 */  addu       $v1, $v0, $zero
    /* 42E1C 801CBD94 80004228 */  slti       $v0, $v0, 0x80
    /* 42E20 801CBD98 10004010 */  beqz       $v0, .L801CBDDC
    /* 42E24 801CBD9C 01006224 */   addiu     $v0, $v1, 0x1
    /* 42E28 801CBDA0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42E2C 801CBDA4 21082102 */  addu       $at, $s1, $at
    /* 42E30 801CBDA8 1AAC22A4 */  sh         $v0, -0x53E6($at)
    /* 42E34 801CBDAC 752F0708 */  j          .L801CBDD4
    /* 42E38 801CBDB0 0D050424 */   addiu     $a0, $zero, 0x50D
  .L801CBDB4:
    /* 42E3C 801CBDB4 0D050424 */  addiu      $a0, $zero, 0x50D
    /* 42E40 801CBDB8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42E44 801CBDBC 21082102 */  addu       $at, $s1, $at
    /* 42E48 801CBDC0 18AC22A4 */  sh         $v0, -0x53E8($at)
    /* 42E4C 801CBDC4 78000224 */  addiu      $v0, $zero, 0x78
    /* 42E50 801CBDC8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42E54 801CBDCC 21082102 */  addu       $at, $s1, $at
    /* 42E58 801CBDD0 1AAC22A4 */  sh         $v0, -0x53E6($at)
  .L801CBDD4:
    /* 42E5C 801CBDD4 88AD020C */  jal        func_800AB620
    /* 42E60 801CBDD8 00000000 */   nop
  .L801CBDDC:
    /* 42E64 801CBDDC 9C2F0708 */  j          .L801CBE70
    /* 42E68 801CBDE0 01001024 */   addiu     $s0, $zero, 0x1
  .L801CBDE4:
    /* 42E6C 801CBDE4 88AD020C */  jal        func_800AB620
    /* 42E70 801CBDE8 28050424 */   addiu     $a0, $zero, 0x528
    /* 42E74 801CBDEC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42E78 801CBDF0 21082102 */  addu       $at, $s1, $at
    /* 42E7C 801CBDF4 18AC2484 */  lh         $a0, -0x53E8($at)
    /* 42E80 801CBDF8 1E80033C */  lui        $v1, %hi(D_801DADB4)
    /* 42E84 801CBDFC B4AD6384 */  lh         $v1, %lo(D_801DADB4)($v1)
    /* 42E88 801CBE00 02000224 */  addiu      $v0, $zero, 0x2
    /* 42E8C 801CBE04 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 42E90 801CBE08 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
    /* 42E94 801CBE0C 09008314 */  bne        $a0, $v1, .L801CBE34
    /* 42E98 801CBE10 00000000 */   nop
    /* 42E9C 801CBE14 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42EA0 801CBE18 21082102 */  addu       $at, $s1, $at
    /* 42EA4 801CBE1C 1AAC2384 */  lh         $v1, -0x53E6($at)
    /* 42EA8 801CBE20 1E80023C */  lui        $v0, %hi(D_801DADB8)
    /* 42EAC 801CBE24 B8AD4284 */  lh         $v0, %lo(D_801DADB8)($v0)
    /* 42EB0 801CBE28 00000000 */  nop
    /* 42EB4 801CBE2C 10006210 */  beq        $v1, $v0, .L801CBE70
    /* 42EB8 801CBE30 01001024 */   addiu     $s0, $zero, 0x1
  .L801CBE34:
    /* 42EBC 801CBE34 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42EC0 801CBE38 21082102 */  addu       $at, $s1, $at
    /* 42EC4 801CBE3C 148F2290 */  lbu        $v0, -0x70EC($at)
    /* 42EC8 801CBE40 00000000 */  nop
    /* 42ECC 801CBE44 01004234 */  ori        $v0, $v0, 0x1
    /* 42ED0 801CBE48 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42ED4 801CBE4C 21082102 */  addu       $at, $s1, $at
    /* 42ED8 801CBE50 148F22A0 */  sb         $v0, -0x70EC($at)
    /* 42EDC 801CBE54 9C2F0708 */  j          .L801CBE70
    /* 42EE0 801CBE58 01001024 */   addiu     $s0, $zero, 0x1
  .L801CBE5C:
    /* 42EE4 801CBE5C 88AD020C */  jal        func_800AB620
    /* 42EE8 801CBE60 29050424 */   addiu     $a0, $zero, 0x529
    /* 42EEC 801CBE64 01000224 */  addiu      $v0, $zero, 0x1
    /* 42EF0 801CBE68 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 42EF4 801CBE6C 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
  .L801CBE70:
    /* 42EF8 801CBE70 09000012 */  beqz       $s0, .L801CBE98
    /* 42EFC 801CBE74 00000000 */   nop
    /* 42F00 801CBE78 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42F04 801CBE7C 21082102 */  addu       $at, $s1, $at
    /* 42F08 801CBE80 18AC2484 */  lh         $a0, -0x53E8($at)
    /* 42F0C 801CBE84 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42F10 801CBE88 21082102 */  addu       $at, $s1, $at
    /* 42F14 801CBE8C 1AAC2584 */  lh         $a1, -0x53E6($at)
    /* 42F18 801CBE90 56D2020C */  jal        func_800B4958
    /* 42F1C 801CBE94 00000000 */   nop
  .L801CBE98:
    /* 42F20 801CBE98 1E80033C */  lui        $v1, %hi(D_801DAE50)
    /* 42F24 801CBE9C 50AE6390 */  lbu        $v1, %lo(D_801DAE50)($v1)
    /* 42F28 801CBEA0 00000000 */  nop
    /* 42F2C 801CBEA4 03006228 */  slti       $v0, $v1, 0x3
    /* 42F30 801CBEA8 47004010 */  beqz       $v0, .L801CBFC8
    /* 42F34 801CBEAC 00000000 */   nop
    /* 42F38 801CBEB0 45006010 */  beqz       $v1, .L801CBFC8
    /* 42F3C 801CBEB4 00000000 */   nop
    /* 42F40 801CBEB8 DB2F0708 */  j          .L801CBF6C
    /* 42F44 801CBEBC 00000000 */   nop
  jlabel .L801CBEC0
    /* 42F48 801CBEC0 1D80023C */  lui        $v0, %hi(D_801D59A4)
    /* 42F4C 801CBEC4 A4594290 */  lbu        $v0, %lo(D_801D59A4)($v0)
    /* 42F50 801CBEC8 1E80013C */  lui        $at, %hi(D_801D8FA0)
    /* 42F54 801CBECC A08F20A0 */  sb         $zero, %lo(D_801D8FA0)($at)
    /* 42F58 801CBED0 06000396 */  lhu        $v1, 0x6($s0)
    /* 42F5C 801CBED4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 42F60 801CBED8 1D80013C */  lui        $at, %hi(D_801D59A4)
    /* 42F64 801CBEDC A45922A0 */  sb         $v0, %lo(D_801D59A4)($at)
    /* 42F68 801CBEE0 0500622C */  sltiu      $v0, $v1, 0x5
    /* 42F6C 801CBEE4 03004014 */  bnez       $v0, .L801CBEF4
    /* 42F70 801CBEE8 FAFF6224 */   addiu     $v0, $v1, -0x6
    /* 42F74 801CBEEC E02F0708 */  j          .L801CBF80
    /* 42F78 801CBEF0 060002A6 */   sh        $v0, 0x6($s0)
  .L801CBEF4:
    /* 42F7C 801CBEF4 04000396 */  lhu        $v1, 0x4($s0)
    /* 42F80 801CBEF8 00000000 */  nop
    /* 42F84 801CBEFC 0500622C */  sltiu      $v0, $v1, 0x5
    /* 42F88 801CBF00 04004014 */  bnez       $v0, .L801CBF14
    /* 42F8C 801CBF04 01000224 */   addiu     $v0, $zero, 0x1
    /* 42F90 801CBF08 E2FF6224 */  addiu      $v0, $v1, -0x1E
    /* 42F94 801CBF0C E02F0708 */  j          .L801CBF80
    /* 42F98 801CBF10 040002A6 */   sh        $v0, 0x4($s0)
  .L801CBF14:
    /* 42F9C 801CBF14 1E80033C */  lui        $v1, %hi(D_801DAE50)
    /* 42FA0 801CBF18 50AE6390 */  lbu        $v1, %lo(D_801DAE50)($v1)
    /* 42FA4 801CBF1C 1E80013C */  lui        $at, %hi(D_801D92DB)
    /* 42FA8 801CBF20 DB9220A0 */  sb         $zero, %lo(D_801D92DB)($at)
    /* 42FAC 801CBF24 11006214 */  bne        $v1, $v0, .L801CBF6C
    /* 42FB0 801CBF28 00000000 */   nop
    /* 42FB4 801CBF2C 1E80023C */  lui        $v0, %hi(D_801DADB4)
    /* 42FB8 801CBF30 B4AD4294 */  lhu        $v0, %lo(D_801DADB4)($v0)
    /* 42FBC 801CBF34 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42FC0 801CBF38 21082102 */  addu       $at, $s1, $at
    /* 42FC4 801CBF3C 18AC22A4 */  sh         $v0, -0x53E8($at)
    /* 42FC8 801CBF40 1E80023C */  lui        $v0, %hi(D_801DADB8)
    /* 42FCC 801CBF44 B8AD4294 */  lhu        $v0, %lo(D_801DADB8)($v0)
    /* 42FD0 801CBF48 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42FD4 801CBF4C 21082102 */  addu       $at, $s1, $at
    /* 42FD8 801CBF50 18AC2484 */  lh         $a0, -0x53E8($at)
    /* 42FDC 801CBF54 002C0200 */  sll        $a1, $v0, 16
    /* 42FE0 801CBF58 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42FE4 801CBF5C 21082102 */  addu       $at, $s1, $at
    /* 42FE8 801CBF60 1AAC22A4 */  sh         $v0, -0x53E6($at)
    /* 42FEC 801CBF64 56D2020C */  jal        func_800B4958
    /* 42FF0 801CBF68 032C0500 */   sra       $a1, $a1, 16
  .L801CBF6C:
    /* 42FF4 801CBF6C 9B024292 */  lbu        $v0, 0x29B($s2)
    /* 42FF8 801CBF70 00000000 */  nop
    /* 42FFC 801CBF74 01004224 */  addiu      $v0, $v0, 0x1
    /* 43000 801CBF78 F22F0708 */  j          .L801CBFC8
    /* 43004 801CBF7C 9B0242A2 */   sb        $v0, 0x29B($s2)
  .L801CBF80:
    /* 43008 801CBF80 02000424 */  addiu      $a0, $zero, 0x2
    /* 4300C 801CBF84 21280000 */  addu       $a1, $zero, $zero
    /* 43010 801CBF88 21300002 */  addu       $a2, $s0, $zero
    /* 43014 801CBF8C 21380000 */  addu       $a3, $zero, $zero
    /* 43018 801CBF90 02000224 */  addiu      $v0, $zero, 0x2
    /* 4301C 801CBF94 1000A2AF */  sw         $v0, 0x10($sp)
    /* 43020 801CBF98 01000224 */  addiu      $v0, $zero, 0x1
    /* 43024 801CBF9C 7850060C */  jal        func_801941E0
    /* 43028 801CBFA0 1400A2AF */   sw        $v0, 0x14($sp)
    /* 4302C 801CBFA4 F22F0708 */  j          .L801CBFC8
    /* 43030 801CBFA8 00000000 */   nop
  jlabel .L801CBFAC
    /* 43034 801CBFAC 10000424 */  addiu      $a0, $zero, 0x10
    /* 43038 801CBFB0 715C000C */  jal        func_800171C4
    /* 4303C 801CBFB4 300340A2 */   sb        $zero, 0x330($s2)
    /* 43040 801CBFB8 9B0240A2 */  sb         $zero, 0x29B($s2)
    /* 43044 801CBFBC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 43048 801CBFC0 21082102 */  addu       $at, $s1, $at
    /* 4304C 801CBFC4 DAAB20A0 */  sb         $zero, -0x5426($at)
  .L801CBFC8:
    /* 43050 801CBFC8 5C00BF8F */  lw         $ra, 0x5C($sp)
    /* 43054 801CBFCC 5800B28F */  lw         $s2, 0x58($sp)
    /* 43058 801CBFD0 5400B18F */  lw         $s1, 0x54($sp)
    /* 4305C 801CBFD4 5000B08F */  lw         $s0, 0x50($sp)
    /* 43060 801CBFD8 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 43064 801CBFDC 0800E003 */  jr         $ra
    /* 43068 801CBFE0 00000000 */   nop
endlabel func_801CBAB8
