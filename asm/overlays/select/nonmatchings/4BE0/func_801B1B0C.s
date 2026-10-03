nonmatching func_801B1B0C, 0x578

glabel func_801B1B0C
    /* 28B94 801B1B0C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 28B98 801B1B10 2400B1AF */  sw         $s1, 0x24($sp)
    /* 28B9C 801B1B14 21888000 */  addu       $s1, $a0, $zero
    /* 28BA0 801B1B18 2000B0AF */  sw         $s0, 0x20($sp)
    /* 28BA4 801B1B1C 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 28BA8 801B1B20 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 28BAC 801B1B24 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 28BB0 801B1B28 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 28BB4 801B1B2C 04000224 */  addiu      $v0, $zero, 0x4
    /* 28BB8 801B1B30 0E006214 */  bne        $v1, $v0, .L801B1B6C
    /* 28BBC 801B1B34 2800BFAF */   sw        $ra, 0x28($sp)
    /* 28BC0 801B1B38 1E80033C */  lui        $v1, %hi(D_801DA2F0)
    /* 28BC4 801B1B3C F0A26390 */  lbu        $v1, %lo(D_801DA2F0)($v1)
    /* 28BC8 801B1B40 01000224 */  addiu      $v0, $zero, 0x1
    /* 28BCC 801B1B44 09006214 */  bne        $v1, $v0, .L801B1B6C
    /* 28BD0 801B1B48 00000000 */   nop
    /* 28BD4 801B1B4C 0174000C */  jal        func_8001D004
    /* 28BD8 801B1B50 AC300424 */   addiu     $a0, $zero, 0x30AC
    /* 28BDC 801B1B54 36000324 */  addiu      $v1, $zero, 0x36
    /* 28BE0 801B1B58 0A0043A0 */  sb         $v1, 0xA($v0)
    /* 28BE4 801B1B5C 3FBF010C */  jal        func_8006FCFC
    /* 28BE8 801B1B60 36000424 */   addiu     $a0, $zero, 0x36
    /* 28BEC 801B1B64 DFC60608 */  j          .L801B1B7C
    /* 28BF0 801B1B68 00000000 */   nop
  .L801B1B6C:
    /* 28BF4 801B1B6C 0174000C */  jal        func_8001D004
    /* 28BF8 801B1B70 AC300424 */   addiu     $a0, $zero, 0x30AC
    /* 28BFC 801B1B74 5B000324 */  addiu      $v1, $zero, 0x5B
    /* 28C00 801B1B78 0A0043A0 */  sb         $v1, 0xA($v0)
  .L801B1B7C:
    /* 28C04 801B1B7C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 28C08 801B1B80 21080102 */  addu       $at, $s0, $at
    /* 28C0C 801B1B84 D8AB2390 */  lbu        $v1, -0x5428($at)
    /* 28C10 801B1B88 00000000 */  nop
    /* 28C14 801B1B8C 1500622C */  sltiu      $v0, $v1, 0x15
    /* 28C18 801B1B90 35014010 */  beqz       $v0, .L801B2068
    /* 28C1C 801B1B94 80100300 */   sll       $v0, $v1, 2
    /* 28C20 801B1B98 1980013C */  lui        $at, %hi(jtbl_8018A94C)
    /* 28C24 801B1B9C 21082200 */  addu       $at, $at, $v0
    /* 28C28 801B1BA0 4CA9228C */  lw         $v0, %lo(jtbl_8018A94C)($at)
    /* 28C2C 801B1BA4 00000000 */  nop
    /* 28C30 801B1BA8 08004000 */  jr         $v0
    /* 28C34 801B1BAC 00000000 */   nop
  jlabel .L801B1BB0
    /* 28C38 801B1BB0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 28C3C 801B1BB4 21080102 */  addu       $at, $s0, $at
    /* 28C40 801B1BB8 D8AB2390 */  lbu        $v1, -0x5428($at)
    /* 28C44 801B1BBC 04000224 */  addiu      $v0, $zero, 0x4
    /* 28C48 801B1BC0 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 28C4C 801B1BC4 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 28C50 801B1BC8 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 28C54 801B1BCC 50AE20A0 */  sb         $zero, %lo(D_801DAE50)($at)
    /* 28C58 801B1BD0 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 28C5C 801B1BD4 58A020AC */  sw         $zero, %lo(D_801DA058)($at)
    /* 28C60 801B1BD8 01006324 */  addiu      $v1, $v1, 0x1
    /* 28C64 801B1BDC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 28C68 801B1BE0 21080102 */  addu       $at, $s0, $at
    /* 28C6C 801B1BE4 D8AB23A0 */  sb         $v1, -0x5428($at)
    /* 28C70 801B1BE8 1BC80608 */  j          .L801B206C
    /* 28C74 801B1BEC 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801B1BF0
    /* 28C78 801B1BF0 4E39060C */  jal        func_8018E538
    /* 28C7C 801B1BF4 21200000 */   addu      $a0, $zero, $zero
    /* 28C80 801B1BF8 1E80043C */  lui        $a0, %hi(D_801DA5D0)
    /* 28C84 801B1BFC D0A58490 */  lbu        $a0, %lo(D_801DA5D0)($a0)
    /* 28C88 801B1C00 05000224 */  addiu      $v0, $zero, 0x5
    /* 28C8C 801B1C04 801F013C */  lui        $at, (0x1F8002A2 >> 16)
    /* 28C90 801B1C08 A20222A0 */  sb         $v0, (0x1F8002A2 & 0xFFFF)($at)
    /* 28C94 801B1C0C 67CF060C */  jal        func_801B3D9C
    /* 28C98 801B1C10 00000000 */   nop
    /* 28C9C 801B1C14 1E80013C */  lui        $at, %hi(D_801D8738)
    /* 28CA0 801B1C18 388722AC */  sw         $v0, %lo(D_801D8738)($at)
    /* 28CA4 801B1C1C 73D1060C */  jal        func_801B45CC
    /* 28CA8 801B1C20 21200000 */   addu      $a0, $zero, $zero
    /* 28CAC 801B1C24 0100013C */  lui        $at, (0x10000 >> 16)
    /* 28CB0 801B1C28 21080102 */  addu       $at, $s0, $at
    /* 28CB4 801B1C2C D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 28CB8 801B1C30 00000000 */  nop
    /* 28CBC 801B1C34 01004224 */  addiu      $v0, $v0, 0x1
    /* 28CC0 801B1C38 0100013C */  lui        $at, (0x10000 >> 16)
    /* 28CC4 801B1C3C 21080102 */  addu       $at, $s0, $at
    /* 28CC8 801B1C40 D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 28CCC 801B1C44 1BC80608 */  j          .L801B206C
    /* 28CD0 801B1C48 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801B1C4C
    /* 28CD4 801B1C4C 1FBC010C */  jal        func_8006F07C
    /* 28CD8 801B1C50 10000424 */   addiu     $a0, $zero, 0x10
    /* 28CDC 801B1C54 04014010 */  beqz       $v0, .L801B2068
    /* 28CE0 801B1C58 01000224 */   addiu     $v0, $zero, 0x1
    /* 28CE4 801B1C5C 1E80013C */  lui        $at, %hi(D_801D8A8F)
    /* 28CE8 801B1C60 8F8A22A0 */  sb         $v0, %lo(D_801D8A8F)($at)
    /* 28CEC 801B1C64 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 28CF0 801B1C68 F0A222A0 */  sb         $v0, %lo(D_801DA2F0)($at)
    /* 28CF4 801B1C6C 0A000224 */  addiu      $v0, $zero, 0xA
    /* 28CF8 801B1C70 0100013C */  lui        $at, (0x10000 >> 16)
    /* 28CFC 801B1C74 21080102 */  addu       $at, $s0, $at
    /* 28D00 801B1C78 D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 28D04 801B1C7C 1BC80608 */  j          .L801B206C
    /* 28D08 801B1C80 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801B1C84
    /* 28D0C 801B1C84 1E80023C */  lui        $v0, %hi(D_801DA5D0)
    /* 28D10 801B1C88 D0A54284 */  lh         $v0, %lo(D_801DA5D0)($v0)
    /* 28D14 801B1C8C 00000000 */  nop
    /* 28D18 801B1C90 08004014 */  bnez       $v0, .L801B1CB4
    /* 28D1C 801B1C94 02000224 */   addiu     $v0, $zero, 0x2
    /* 28D20 801B1C98 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 28D24 801B1C9C 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 28D28 801B1CA0 00000000 */  nop
    /* 28D2C 801B1CA4 03006214 */  bne        $v1, $v0, .L801B1CB4
    /* 28D30 801B1CA8 04000224 */   addiu     $v0, $zero, 0x4
    /* 28D34 801B1CAC 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 28D38 801B1CB0 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
  .L801B1CB4:
    /* 28D3C 801B1CB4 1E80033C */  lui        $v1, %hi(D_801DA5D0)
    /* 28D40 801B1CB8 D0A56384 */  lh         $v1, %lo(D_801DA5D0)($v1)
    /* 28D44 801B1CBC 07000224 */  addiu      $v0, $zero, 0x7
    /* 28D48 801B1CC0 08006214 */  bne        $v1, $v0, .L801B1CE4
    /* 28D4C 801B1CC4 03000224 */   addiu     $v0, $zero, 0x3
    /* 28D50 801B1CC8 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 28D54 801B1CCC 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 28D58 801B1CD0 00000000 */  nop
    /* 28D5C 801B1CD4 03006214 */  bne        $v1, $v0, .L801B1CE4
    /* 28D60 801B1CD8 04000224 */   addiu     $v0, $zero, 0x4
    /* 28D64 801B1CDC 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 28D68 801B1CE0 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
  .L801B1CE4:
    /* 28D6C 801B1CE4 58D5060C */  jal        func_801B5560
    /* 28D70 801B1CE8 01000424 */   addiu     $a0, $zero, 0x1
    /* 28D74 801B1CEC 1E80033C */  lui        $v1, %hi(D_801DA058)
    /* 28D78 801B1CF0 58A0638C */  lw         $v1, %lo(D_801DA058)($v1)
    /* 28D7C 801B1CF4 18000224 */  addiu      $v0, $zero, 0x18
    /* 28D80 801B1CF8 07006214 */  bne        $v1, $v0, .L801B1D18
    /* 28D84 801B1CFC 00000000 */   nop
    /* 28D88 801B1D00 1E80043C */  lui        $a0, %hi(D_801DA5D0)
    /* 28D8C 801B1D04 D0A58490 */  lbu        $a0, %lo(D_801DA5D0)($a0)
    /* 28D90 801B1D08 67CF060C */  jal        func_801B3D9C
    /* 28D94 801B1D0C 00000000 */   nop
    /* 28D98 801B1D10 1E80013C */  lui        $at, %hi(D_801D8738)
    /* 28D9C 801B1D14 388722AC */  sw         $v0, %lo(D_801D8738)($at)
  .L801B1D18:
    /* 28DA0 801B1D18 1E80023C */  lui        $v0, %hi(D_801DA058)
    /* 28DA4 801B1D1C 58A0428C */  lw         $v0, %lo(D_801DA058)($v0)
    /* 28DA8 801B1D20 00000000 */  nop
    /* 28DAC 801B1D24 03004010 */  beqz       $v0, .L801B1D34
    /* 28DB0 801B1D28 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 28DB4 801B1D2C 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 28DB8 801B1D30 58A022AC */  sw         $v0, %lo(D_801DA058)($at)
  .L801B1D34:
    /* 28DBC 801B1D34 1E80043C */  lui        $a0, %hi(D_801DA058)
    /* 28DC0 801B1D38 58A0848C */  lw         $a0, %lo(D_801DA058)($a0)
    /* 28DC4 801B1D3C 00000000 */  nop
    /* 28DC8 801B1D40 80200400 */  sll        $a0, $a0, 2
    /* 28DCC 801B1D44 73D1060C */  jal        func_801B45CC
    /* 28DD0 801B1D48 FCFF8430 */   andi      $a0, $a0, 0xFFFC
    /* 28DD4 801B1D4C 20BB010C */  jal        func_8006EC80
    /* 28DD8 801B1D50 21200000 */   addu      $a0, $zero, $zero
    /* 28DDC 801B1D54 FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 28DE0 801B1D58 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 28DE4 801B1D5C A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 28DE8 801B1D60 00800234 */  ori        $v0, $zero, 0x8000
    /* 28DEC 801B1D64 2E006214 */  bne        $v1, $v0, .L801B1E20
    /* 28DF0 801B1D68 00200224 */   addiu     $v0, $zero, 0x2000
    /* 28DF4 801B1D6C 88AD020C */  jal        func_800AB620
    /* 28DF8 801B1D70 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 28DFC 801B1D74 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 28E00 801B1D78 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 28E04 801B1D7C 03000224 */  addiu      $v0, $zero, 0x3
    /* 28E08 801B1D80 3B006210 */  beq        $v1, $v0, .L801B1E70
    /* 28E0C 801B1D84 04006228 */   slti      $v0, $v1, 0x4
    /* 28E10 801B1D88 05004010 */  beqz       $v0, .L801B1DA0
    /* 28E14 801B1D8C 02000224 */   addiu     $v0, $zero, 0x2
    /* 28E18 801B1D90 08006210 */  beq        $v1, $v0, .L801B1DB4
    /* 28E1C 801B1D94 21100000 */   addu      $v0, $zero, $zero
    /* 28E20 801B1D98 1BC80608 */  j          .L801B206C
    /* 28E24 801B1D9C 00000000 */   nop
  .L801B1DA0:
    /* 28E28 801B1DA0 04000224 */  addiu      $v0, $zero, 0x4
    /* 28E2C 801B1DA4 0C006210 */  beq        $v1, $v0, .L801B1DD8
    /* 28E30 801B1DA8 21100000 */   addu      $v0, $zero, $zero
    /* 28E34 801B1DAC 1BC80608 */  j          .L801B206C
    /* 28E38 801B1DB0 00000000 */   nop
  .L801B1DB4:
    /* 28E3C 801B1DB4 88AD020C */  jal        func_800AB620
    /* 28E40 801B1DB8 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 28E44 801B1DBC 1E80023C */  lui        $v0, %hi(D_801D8A82)
    /* 28E48 801B1DC0 828A4224 */  addiu      $v0, $v0, %lo(D_801D8A82)
    /* 28E4C 801B1DC4 00004394 */  lhu        $v1, 0x0($v0)
    /* 28E50 801B1DC8 1E80043C */  lui        $a0, %hi(D_801D8A84)
    /* 28E54 801B1DCC 848A8494 */  lhu        $a0, %lo(D_801D8A84)($a0)
    /* 28E58 801B1DD0 B2C70608 */  j          .L801B1EC8
    /* 28E5C 801B1DD4 F0FF6324 */   addiu     $v1, $v1, -0x10
  .L801B1DD8:
    /* 28E60 801B1DD8 1E80023C */  lui        $v0, %hi(D_801DA5D0)
    /* 28E64 801B1DDC D0A54284 */  lh         $v0, %lo(D_801DA5D0)($v0)
    /* 28E68 801B1DE0 00000000 */  nop
    /* 28E6C 801B1DE4 0A004014 */  bnez       $v0, .L801B1E10
    /* 28E70 801B1DE8 02000224 */   addiu     $v0, $zero, 0x2
    /* 28E74 801B1DEC 88AD020C */  jal        func_800AB620
    /* 28E78 801B1DF0 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 28E7C 801B1DF4 1E80023C */  lui        $v0, %hi(D_801D8A82)
    /* 28E80 801B1DF8 828A4224 */  addiu      $v0, $v0, %lo(D_801D8A82)
    /* 28E84 801B1DFC 00004394 */  lhu        $v1, 0x0($v0)
    /* 28E88 801B1E00 1E80043C */  lui        $a0, %hi(D_801D8A84)
    /* 28E8C 801B1E04 848A8494 */  lhu        $a0, %lo(D_801D8A84)($a0)
    /* 28E90 801B1E08 B2C70608 */  j          .L801B1EC8
    /* 28E94 801B1E0C F0FF6324 */   addiu     $v1, $v1, -0x10
  .L801B1E10:
    /* 28E98 801B1E10 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 28E9C 801B1E14 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 28EA0 801B1E18 1BC80608 */  j          .L801B206C
    /* 28EA4 801B1E1C 21100000 */   addu      $v0, $zero, $zero
  .L801B1E20:
    /* 28EA8 801B1E20 2E006214 */  bne        $v1, $v0, .L801B1EDC
    /* 28EAC 801B1E24 40000224 */   addiu     $v0, $zero, 0x40
    /* 28EB0 801B1E28 88AD020C */  jal        func_800AB620
    /* 28EB4 801B1E2C 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 28EB8 801B1E30 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 28EBC 801B1E34 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 28EC0 801B1E38 03000224 */  addiu      $v0, $zero, 0x3
    /* 28EC4 801B1E3C 1A006210 */  beq        $v1, $v0, .L801B1EA8
    /* 28EC8 801B1E40 04006228 */   slti      $v0, $v1, 0x4
    /* 28ECC 801B1E44 05004010 */  beqz       $v0, .L801B1E5C
    /* 28ED0 801B1E48 02000224 */   addiu     $v0, $zero, 0x2
    /* 28ED4 801B1E4C 09006210 */  beq        $v1, $v0, .L801B1E74
    /* 28ED8 801B1E50 04000224 */   addiu     $v0, $zero, 0x4
    /* 28EDC 801B1E54 1BC80608 */  j          .L801B206C
    /* 28EE0 801B1E58 21100000 */   addu      $v0, $zero, $zero
  .L801B1E5C:
    /* 28EE4 801B1E5C 04000224 */  addiu      $v0, $zero, 0x4
    /* 28EE8 801B1E60 08006210 */  beq        $v1, $v0, .L801B1E84
    /* 28EEC 801B1E64 07000224 */   addiu     $v0, $zero, 0x7
    /* 28EF0 801B1E68 1BC80608 */  j          .L801B206C
    /* 28EF4 801B1E6C 21100000 */   addu      $v0, $zero, $zero
  .L801B1E70:
    /* 28EF8 801B1E70 04000224 */  addiu      $v0, $zero, 0x4
  .L801B1E74:
    /* 28EFC 801B1E74 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 28F00 801B1E78 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 28F04 801B1E7C 1BC80608 */  j          .L801B206C
    /* 28F08 801B1E80 21100000 */   addu      $v0, $zero, $zero
  .L801B1E84:
    /* 28F0C 801B1E84 1E80033C */  lui        $v1, %hi(D_801DA5D0)
    /* 28F10 801B1E88 D0A56384 */  lh         $v1, %lo(D_801DA5D0)($v1)
    /* 28F14 801B1E8C 00000000 */  nop
    /* 28F18 801B1E90 05006210 */  beq        $v1, $v0, .L801B1EA8
    /* 28F1C 801B1E94 03000224 */   addiu     $v0, $zero, 0x3
    /* 28F20 801B1E98 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 28F24 801B1E9C 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 28F28 801B1EA0 1BC80608 */  j          .L801B206C
    /* 28F2C 801B1EA4 21100000 */   addu      $v0, $zero, $zero
  .L801B1EA8:
    /* 28F30 801B1EA8 88AD020C */  jal        func_800AB620
    /* 28F34 801B1EAC 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 28F38 801B1EB0 1E80023C */  lui        $v0, %hi(D_801D8A82)
    /* 28F3C 801B1EB4 828A4224 */  addiu      $v0, $v0, %lo(D_801D8A82)
    /* 28F40 801B1EB8 00004394 */  lhu        $v1, 0x0($v0)
    /* 28F44 801B1EBC 1E80043C */  lui        $a0, %hi(D_801D8A84)
    /* 28F48 801B1EC0 848A8494 */  lhu        $a0, %lo(D_801D8A84)($a0)
    /* 28F4C 801B1EC4 10006324 */  addiu      $v1, $v1, 0x10
  .L801B1EC8:
    /* 28F50 801B1EC8 000043A4 */  sh         $v1, 0x0($v0)
    /* 28F54 801B1ECC 1E80013C */  lui        $at, %hi(D_801D8A84)
    /* 28F58 801B1ED0 848A24A4 */  sh         $a0, %lo(D_801D8A84)($at)
    /* 28F5C 801B1ED4 1BC80608 */  j          .L801B206C
    /* 28F60 801B1ED8 21100000 */   addu      $v0, $zero, $zero
  .L801B1EDC:
    /* 28F64 801B1EDC 1F006214 */  bne        $v1, $v0, .L801B1F5C
    /* 28F68 801B1EE0 00000000 */   nop
    /* 28F6C 801B1EE4 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 28F70 801B1EE8 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 28F74 801B1EEC 00000000 */  nop
    /* 28F78 801B1EF0 02006228 */  slti       $v0, $v1, 0x2
    /* 28F7C 801B1EF4 19004014 */  bnez       $v0, .L801B1F5C
    /* 28F80 801B1EF8 04006228 */   slti      $v0, $v1, 0x4
    /* 28F84 801B1EFC 05004014 */  bnez       $v0, .L801B1F14
    /* 28F88 801B1F00 04000224 */   addiu     $v0, $zero, 0x4
    /* 28F8C 801B1F04 0A006210 */  beq        $v1, $v0, .L801B1F30
    /* 28F90 801B1F08 FF002232 */   andi      $v0, $s1, 0xFF
    /* 28F94 801B1F0C D7C70608 */  j          .L801B1F5C
    /* 28F98 801B1F10 00000000 */   nop
  .L801B1F14:
    /* 28F9C 801B1F14 88AD020C */  jal        func_800AB620
    /* 28FA0 801B1F18 29050424 */   addiu     $a0, $zero, 0x529
    /* 28FA4 801B1F1C 04000224 */  addiu      $v0, $zero, 0x4
    /* 28FA8 801B1F20 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 28FAC 801B1F24 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 28FB0 801B1F28 D7C70608 */  j          .L801B1F5C
    /* 28FB4 801B1F2C 00000000 */   nop
  .L801B1F30:
    /* 28FB8 801B1F30 0A004014 */  bnez       $v0, .L801B1F5C
    /* 28FBC 801B1F34 00000000 */   nop
    /* 28FC0 801B1F38 88AD020C */  jal        func_800AB620
    /* 28FC4 801B1F3C 29050424 */   addiu     $a0, $zero, 0x529
    /* 28FC8 801B1F40 01000224 */  addiu      $v0, $zero, 0x1
    /* 28FCC 801B1F44 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 28FD0 801B1F48 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
    /* 28FD4 801B1F4C 14000224 */  addiu      $v0, $zero, 0x14
    /* 28FD8 801B1F50 0100013C */  lui        $at, (0x10000 >> 16)
    /* 28FDC 801B1F54 21080102 */  addu       $at, $s0, $at
    /* 28FE0 801B1F58 D8AB22A0 */  sb         $v0, -0x5428($at)
  .L801B1F5C:
    /* 28FE4 801B1F5C 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 28FE8 801B1F60 A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 28FEC 801B1F64 20000224 */  addiu      $v0, $zero, 0x20
    /* 28FF0 801B1F68 40006214 */  bne        $v1, $v0, .L801B206C
    /* 28FF4 801B1F6C 21100000 */   addu      $v0, $zero, $zero
    /* 28FF8 801B1F70 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 28FFC 801B1F74 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 29000 801B1F78 03000224 */  addiu      $v0, $zero, 0x3
    /* 29004 801B1F7C 14006210 */  beq        $v1, $v0, .L801B1FD0
    /* 29008 801B1F80 04006228 */   slti      $v0, $v1, 0x4
    /* 2900C 801B1F84 05004010 */  beqz       $v0, .L801B1F9C
    /* 29010 801B1F88 02000224 */   addiu     $v0, $zero, 0x2
    /* 29014 801B1F8C 08006210 */  beq        $v1, $v0, .L801B1FB0
    /* 29018 801B1F90 21100000 */   addu      $v0, $zero, $zero
    /* 2901C 801B1F94 1BC80608 */  j          .L801B206C
    /* 29020 801B1F98 00000000 */   nop
  .L801B1F9C:
    /* 29024 801B1F9C 04000224 */  addiu      $v0, $zero, 0x4
    /* 29028 801B1FA0 1B006210 */  beq        $v1, $v0, .L801B2010
    /* 2902C 801B1FA4 21100000 */   addu      $v0, $zero, $zero
    /* 29030 801B1FA8 1BC80608 */  j          .L801B206C
    /* 29034 801B1FAC 00000000 */   nop
  .L801B1FB0:
    /* 29038 801B1FB0 1E80053C */  lui        $a1, %hi(D_801DA5D0)
    /* 2903C 801B1FB4 D0A5A524 */  addiu      $a1, $a1, %lo(D_801DA5D0)
    /* 29040 801B1FB8 0000A284 */  lh         $v0, 0x0($a1)
    /* 29044 801B1FBC 00000000 */  nop
    /* 29048 801B1FC0 29004010 */  beqz       $v0, .L801B2068
    /* 2904C 801B1FC4 21184000 */   addu      $v1, $v0, $zero
    /* 29050 801B1FC8 FCC70608 */  j          .L801B1FF0
    /* 29054 801B1FCC FFFF6224 */   addiu     $v0, $v1, -0x1
  .L801B1FD0:
    /* 29058 801B1FD0 1E80053C */  lui        $a1, %hi(D_801DA5D0)
    /* 2905C 801B1FD4 D0A5A524 */  addiu      $a1, $a1, %lo(D_801DA5D0)
    /* 29060 801B1FD8 0000A284 */  lh         $v0, 0x0($a1)
    /* 29064 801B1FDC 00000000 */  nop
    /* 29068 801B1FE0 21184000 */  addu       $v1, $v0, $zero
    /* 2906C 801B1FE4 07004228 */  slti       $v0, $v0, 0x7
    /* 29070 801B1FE8 1F004010 */  beqz       $v0, .L801B2068
    /* 29074 801B1FEC 01006224 */   addiu     $v0, $v1, 0x1
  .L801B1FF0:
    /* 29078 801B1FF0 0D050424 */  addiu      $a0, $zero, 0x50D
    /* 2907C 801B1FF4 88AD020C */  jal        func_800AB620
    /* 29080 801B1FF8 0000A2A4 */   sh        $v0, 0x0($a1)
    /* 29084 801B1FFC 18000224 */  addiu      $v0, $zero, 0x18
    /* 29088 801B2000 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 2908C 801B2004 58A022AC */  sw         $v0, %lo(D_801DA058)($at)
    /* 29090 801B2008 1BC80608 */  j          .L801B206C
    /* 29094 801B200C 21100000 */   addu      $v0, $zero, $zero
  .L801B2010:
    /* 29098 801B2010 88AD020C */  jal        func_800AB620
    /* 2909C 801B2014 28050424 */   addiu     $a0, $zero, 0x528
    /* 290A0 801B2018 02000224 */  addiu      $v0, $zero, 0x2
    /* 290A4 801B201C 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 290A8 801B2020 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
    /* 290AC 801B2024 14000224 */  addiu      $v0, $zero, 0x14
    /* 290B0 801B2028 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 290B4 801B202C F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 290B8 801B2030 0100013C */  lui        $at, (0x10000 >> 16)
    /* 290BC 801B2034 21080102 */  addu       $at, $s0, $at
    /* 290C0 801B2038 D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 290C4 801B203C 1BC80608 */  j          .L801B206C
    /* 290C8 801B2040 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801B2044
    /* 290CC 801B2044 40000424 */  addiu      $a0, $zero, 0x40
    /* 290D0 801B2048 37BC010C */  jal        func_8006F0DC
    /* 290D4 801B204C 21280000 */   addu      $a1, $zero, $zero
    /* 290D8 801B2050 06004010 */  beqz       $v0, .L801B206C
    /* 290DC 801B2054 21100000 */   addu      $v0, $zero, $zero
    /* 290E0 801B2058 1E80023C */  lui        $v0, %hi(D_801DAE50)
    /* 290E4 801B205C 50AE4290 */  lbu        $v0, %lo(D_801DAE50)($v0)
    /* 290E8 801B2060 1BC80608 */  j          .L801B206C
    /* 290EC 801B2064 00000000 */   nop
  jlabel .L801B2068
    /* 290F0 801B2068 21100000 */  addu       $v0, $zero, $zero
  .L801B206C:
    /* 290F4 801B206C 2800BF8F */  lw         $ra, 0x28($sp)
    /* 290F8 801B2070 2400B18F */  lw         $s1, 0x24($sp)
    /* 290FC 801B2074 2000B08F */  lw         $s0, 0x20($sp)
    /* 29100 801B2078 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 29104 801B207C 0800E003 */  jr         $ra
    /* 29108 801B2080 00000000 */   nop
endlabel func_801B1B0C
