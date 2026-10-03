nonmatching func_8019F994, 0x2804

glabel func_8019F994
    /* 16A1C 8019F994 1180033C */  lui        $v1, %hi(D_8010A322)
    /* 16A20 8019F998 22A36390 */  lbu        $v1, %lo(D_8010A322)($v1)
    /* 16A24 8019F99C 00FFBD27 */  addiu      $sp, $sp, -0x100
    /* 16A28 8019F9A0 F400B5AF */  sw         $s5, 0xF4($sp)
    /* 16A2C 8019F9A4 1080153C */  lui        $s5, %hi(D_800FF748)
    /* 16A30 8019F9A8 48F7B526 */  addiu      $s5, $s5, %lo(D_800FF748)
    /* 16A34 8019F9AC F800B6AF */  sw         $s6, 0xF8($sp)
    /* 16A38 8019F9B0 801F163C */  lui        $s6, (0x1F8001EC >> 16)
    /* 16A3C 8019F9B4 FC00BFAF */  sw         $ra, 0xFC($sp)
    /* 16A40 8019F9B8 F000B4AF */  sw         $s4, 0xF0($sp)
    /* 16A44 8019F9BC EC00B3AF */  sw         $s3, 0xEC($sp)
    /* 16A48 8019F9C0 E800B2AF */  sw         $s2, 0xE8($sp)
    /* 16A4C 8019F9C4 E400B1AF */  sw         $s1, 0xE4($sp)
    /* 16A50 8019F9C8 4800622C */  sltiu      $v0, $v1, 0x48
    /* 16A54 8019F9CC E6094010 */  beqz       $v0, .L801A2168
    /* 16A58 8019F9D0 E000B0AF */   sw        $s0, 0xE0($sp)
    /* 16A5C 8019F9D4 80100300 */  sll        $v0, $v1, 2
    /* 16A60 8019F9D8 1980013C */  lui        $at, %hi(jtbl_8018A0A0)
    /* 16A64 8019F9DC 21082200 */  addu       $at, $at, $v0
    /* 16A68 8019F9E0 A0A0228C */  lw         $v0, %lo(jtbl_8018A0A0)($at)
    /* 16A6C 8019F9E4 00000000 */  nop
    /* 16A70 8019F9E8 08004000 */  jr         $v0
    /* 16A74 8019F9EC 00000000 */   nop
  jlabel .L8019F9F0
    /* 16A78 8019F9F0 21200000 */  addu       $a0, $zero, $zero
    /* 16A7C 8019F9F4 01000224 */  addiu      $v0, $zero, 0x1
    /* 16A80 8019F9F8 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 16A84 8019F9FC 50AE20A0 */  sb         $zero, %lo(D_801DAE50)($at)
    /* 16A88 8019FA00 1E80013C */  lui        $at, %hi(D_801D8A70)
    /* 16A8C 8019FA04 708A20A0 */  sb         $zero, %lo(D_801D8A70)($at)
    /* 16A90 8019FA08 1E80013C */  lui        $at, %hi(D_801D8B17)
    /* 16A94 8019FA0C 178B22A0 */  sb         $v0, %lo(D_801D8B17)($at)
    /* 16A98 8019FA10 1E80013C */  lui        $at, %hi(D_801DA064)
    /* 16A9C 8019FA14 64A020AC */  sw         $zero, %lo(D_801DA064)($at)
    /* 16AA0 8019FA18 1E80013C */  lui        $at, %hi(D_801DA060)
    /* 16AA4 8019FA1C 60A020AC */  sw         $zero, %lo(D_801DA060)($at)
    /* 16AA8 8019FA20 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 16AAC 8019FA24 5CA020AC */  sw         $zero, %lo(D_801DA05C)($at)
    /* 16AB0 8019FA28 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 16AB4 8019FA2C 58A020AC */  sw         $zero, %lo(D_801DA058)($at)
    /* 16AB8 8019FA30 DE02C392 */  lbu        $v1, (0x1F8002DE & 0xFFFF)($s6)
    /* 16ABC 8019FA34 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 16AC0 8019FA38 DE02C2A2 */  sb         $v0, (0x1F8002DE & 0xFFFF)($s6)
    /* 16AC4 8019FA3C 1E80013C */  lui        $at, %hi(D_801D8038)
    /* 16AC8 8019FA40 388023A0 */  sb         $v1, %lo(D_801D8038)($at)
    /* 16ACC 8019FA44 288B060C */  jal        func_801A2CA0
    /* 16AD0 8019FA48 21280000 */   addu      $a1, $zero, $zero
    /* 16AD4 8019FA4C 628D060C */  jal        func_801A3588
    /* 16AD8 8019FA50 00000000 */   nop
    /* 16ADC 8019FA54 21300000 */  addu       $a2, $zero, $zero
    /* 16AE0 8019FA58 80AB0734 */  ori        $a3, $zero, 0xAB80
    /* 16AE4 8019FA5C FF000524 */  addiu      $a1, $zero, 0xFF
    /* 16AE8 8019FA60 2120A602 */  addu       $a0, $s5, $a2
  .L8019FA64:
    /* 16AEC 8019FA64 21208700 */  addu       $a0, $a0, $a3
    /* 16AF0 8019FA68 FF00C330 */  andi       $v1, $a2, 0xFF
    /* 16AF4 8019FA6C C0100300 */  sll        $v0, $v1, 3
    /* 16AF8 8019FA70 21104300 */  addu       $v0, $v0, $v1
    /* 16AFC 8019FA74 80100200 */  sll        $v0, $v0, 2
    /* 16B00 8019FA78 2110A202 */  addu       $v0, $s5, $v0
    /* 16B04 8019FA7C 000086A0 */  sb         $a2, 0x0($a0)
    /* 16B08 8019FA80 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16B0C 8019FA84 21084100 */  addu       $at, $v0, $at
    /* 16B10 8019FA88 248F25A0 */  sb         $a1, -0x70DC($at)
    /* 16B14 8019FA8C 00008390 */  lbu        $v1, 0x0($a0)
    /* 16B18 8019FA90 0100C624 */  addiu      $a2, $a2, 0x1
    /* 16B1C 8019FA94 C0100300 */  sll        $v0, $v1, 3
    /* 16B20 8019FA98 21104300 */  addu       $v0, $v0, $v1
    /* 16B24 8019FA9C 80100200 */  sll        $v0, $v0, 2
    /* 16B28 8019FAA0 2110A202 */  addu       $v0, $s5, $v0
    /* 16B2C 8019FAA4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16B30 8019FAA8 21084100 */  addu       $at, $v0, $at
    /* 16B34 8019FAAC 258F25A0 */  sb         $a1, -0x70DB($at)
    /* 16B38 8019FAB0 2000C228 */  slti       $v0, $a2, 0x20
    /* 16B3C 8019FAB4 EBFF4014 */  bnez       $v0, .L8019FA64
    /* 16B40 8019FAB8 2120A602 */   addu      $a0, $s5, $a2
    /* 16B44 8019FABC 8489060C */  jal        func_801A2610
    /* 16B48 8019FAC0 00000000 */   nop
    /* 16B4C 8019FAC4 02000224 */  addiu      $v0, $zero, 0x2
    /* 16B50 8019FAC8 A202C2A2 */  sb         $v0, (0x1F8002A2 & 0xFFFF)($s6)
    /* 16B54 8019FACC 1E80013C */  lui        $at, %hi(D_801D803B)
    /* 16B58 8019FAD0 3B8020A0 */  sb         $zero, %lo(D_801D803B)($at)
    /* 16B5C 8019FAD4 1E80013C */  lui        $at, %hi(D_801D803C)
    /* 16B60 8019FAD8 3C8020A0 */  sb         $zero, %lo(D_801D803C)($at)
    /* 16B64 8019FADC 1458020C */  jal        func_80096050
    /* 16B68 8019FAE0 EC01C0A2 */   sb        $zero, (0x1F8001EC & 0xFFFF)($s6)
    /* 16B6C 8019FAE4 2771010C */  jal        func_8005C49C
    /* 16B70 8019FAE8 00000000 */   nop
    /* 16B74 8019FAEC 97FF0224 */  addiu      $v0, $zero, -0x69
    /* 16B78 8019FAF0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16B7C 8019FAF4 2108A102 */  addu       $at, $s5, $at
    /* 16B80 8019FAF8 28AC22A4 */  sh         $v0, -0x53D8($at)
    /* 16B84 8019FAFC 69000224 */  addiu      $v0, $zero, 0x69
    /* 16B88 8019FB00 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16B8C 8019FB04 2108A102 */  addu       $at, $s5, $at
    /* 16B90 8019FB08 2AAC22A4 */  sh         $v0, -0x53D6($at)
    /* 16B94 8019FB0C E2FF0224 */  addiu      $v0, $zero, -0x1E
    /* 16B98 8019FB10 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16B9C 8019FB14 2108A102 */  addu       $at, $s5, $at
    /* 16BA0 8019FB18 2EAC22A4 */  sh         $v0, -0x53D2($at)
    /* 16BA4 8019FB1C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16BA8 8019FB20 2108A102 */  addu       $at, $s5, $at
    /* 16BAC 8019FB24 2CAC22A4 */  sh         $v0, -0x53D4($at)
    /* 16BB0 8019FB28 00030224 */  addiu      $v0, $zero, 0x300
    /* 16BB4 8019FB2C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16BB8 8019FB30 2108A102 */  addu       $at, $s5, $at
    /* 16BBC 8019FB34 32AC22A4 */  sh         $v0, -0x53CE($at)
    /* 16BC0 8019FB38 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16BC4 8019FB3C 2108A102 */  addu       $at, $s5, $at
    /* 16BC8 8019FB40 30AC22A4 */  sh         $v0, -0x53D0($at)
    /* 16BCC 8019FB44 E0FF0224 */  addiu      $v0, $zero, -0x20
    /* 16BD0 8019FB48 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16BD4 8019FB4C 2108A102 */  addu       $at, $s5, $at
    /* 16BD8 8019FB50 3CAC22A4 */  sh         $v0, -0x53C4($at)
    /* 16BDC 8019FB54 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16BE0 8019FB58 2108A102 */  addu       $at, $s5, $at
    /* 16BE4 8019FB5C 34AC22A4 */  sh         $v0, -0x53CC($at)
    /* 16BE8 8019FB60 80000224 */  addiu      $v0, $zero, 0x80
    /* 16BEC 8019FB64 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16BF0 8019FB68 2108A102 */  addu       $at, $s5, $at
    /* 16BF4 8019FB6C 21AC20A0 */  sb         $zero, -0x53DF($at)
    /* 16BF8 8019FB70 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16BFC 8019FB74 2108A102 */  addu       $at, $s5, $at
    /* 16C00 8019FB78 20AC20A0 */  sb         $zero, -0x53E0($at)
    /* 16C04 8019FB7C 1E80013C */  lui        $at, %hi(D_801D8A8C)
    /* 16C08 8019FB80 8C8A22A0 */  sb         $v0, %lo(D_801D8A8C)($at)
    /* 16C0C 8019FB84 60000224 */  addiu      $v0, $zero, 0x60
    /* 16C10 8019FB88 1E80013C */  lui        $at, %hi(D_801D8A82)
    /* 16C14 8019FB8C 828A20A4 */  sh         $zero, %lo(D_801D8A82)($at)
    /* 16C18 8019FB90 1E80013C */  lui        $at, %hi(D_801D8A84)
    /* 16C1C 8019FB94 848A20A4 */  sh         $zero, %lo(D_801D8A84)($at)
    /* 16C20 8019FB98 1E80013C */  lui        $at, %hi(D_801D8A86)
    /* 16C24 8019FB9C 868A20A4 */  sh         $zero, %lo(D_801D8A86)($at)
    /* 16C28 8019FBA0 1E80013C */  lui        $at, %hi(D_801D8A88)
    /* 16C2C 8019FBA4 888A20A4 */  sh         $zero, %lo(D_801D8A88)($at)
    /* 16C30 8019FBA8 1E80013C */  lui        $at, %hi(D_801D8A8F)
    /* 16C34 8019FBAC 8F8A20A0 */  sb         $zero, %lo(D_801D8A8F)($at)
    /* 16C38 8019FBB0 1E80013C */  lui        $at, %hi(D_801D8A8A)
    /* 16C3C 8019FBB4 8A8A20A0 */  sb         $zero, %lo(D_801D8A8A)($at)
    /* 16C40 8019FBB8 1E80013C */  lui        $at, %hi(D_801D8A8B)
    /* 16C44 8019FBBC 8B8A20A0 */  sb         $zero, %lo(D_801D8A8B)($at)
    /* 16C48 8019FBC0 1E80013C */  lui        $at, %hi(D_801D8A8D)
    /* 16C4C 8019FBC4 8D8A22A0 */  sb         $v0, %lo(D_801D8A8D)($at)
    /* 16C50 8019FBC8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16C54 8019FBCC 2108A102 */  addu       $at, $s5, $at
    /* 16C58 8019FBD0 DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 16C5C 8019FBD4 1E80023C */  lui        $v0, %hi(D_801D8A8E)
    /* 16C60 8019FBD8 8E8A4290 */  lbu        $v0, %lo(D_801D8A8E)($v0)
    /* 16C64 8019FBDC 01006324 */  addiu      $v1, $v1, 0x1
    /* 16C68 8019FBE0 40004230 */  andi       $v0, $v0, 0x40
    /* 16C6C 8019FBE4 1E80013C */  lui        $at, %hi(D_801D8A8E)
    /* 16C70 8019FBE8 8E8A22A0 */  sb         $v0, %lo(D_801D8A8E)($at)
    /* 16C74 8019FBEC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16C78 8019FBF0 2108A102 */  addu       $at, $s5, $at
    /* 16C7C 8019FBF4 DAAB23A0 */  sb         $v1, -0x5426($at)
    /* 16C80 8019FBF8 5B880608 */  j          .L801A216C
    /* 16C84 8019FBFC 21100000 */   addu      $v0, $zero, $zero
  jlabel .L8019FC00
    /* 16C88 8019FC00 7F8A060C */  jal        func_801A29FC
    /* 16C8C 8019FC04 00000000 */   nop
    /* 16C90 8019FC08 58094010 */  beqz       $v0, .L801A216C
    /* 16C94 8019FC0C 21100000 */   addu      $v0, $zero, $zero
    /* 16C98 8019FC10 34880608 */  j          .L801A20D0
    /* 16C9C 8019FC14 00000000 */   nop
  jlabel .L8019FC18
    /* 16CA0 8019FC18 03000424 */  addiu      $a0, $zero, 0x3
    /* 16CA4 8019FC1C 6C300524 */  addiu      $a1, $zero, 0x306C
    /* 16CA8 8019FC20 21300000 */  addu       $a2, $zero, $zero
    /* 16CAC 8019FC24 1A001424 */  addiu      $s4, $zero, 0x1A
    /* 16CB0 8019FC28 00101124 */  addiu      $s1, $zero, 0x1000
    /* 16CB4 8019FC2C 2EBA123C */  lui        $s2, (0xBA2E8BA3 >> 16)
    /* 16CB8 8019FC30 A38B5236 */  ori        $s2, $s2, (0xBA2E8BA3 & 0xFFFF)
    /* 16CBC 8019FC34 80001024 */  addiu      $s0, $zero, 0x80
    /* 16CC0 8019FC38 1400B4AF */  sw         $s4, 0x14($sp)
    /* 16CC4 8019FC3C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 16CC8 8019FC40 DD02C892 */  lbu        $t0, 0x2DD($s6)
    /* 16CCC 8019FC44 02001324 */  addiu      $s3, $zero, 0x2
    /* 16CD0 8019FC48 FF000831 */  andi       $t0, $t0, 0xFF
    /* 16CD4 8019FC4C 19001201 */  multu      $t0, $s2
    /* 16CD8 8019FC50 01000224 */  addiu      $v0, $zero, 0x1
    /* 16CDC 8019FC54 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 16CE0 8019FC58 2000B1AF */  sw         $s1, 0x20($sp)
    /* 16CE4 8019FC5C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 16CE8 8019FC60 2800A0AF */  sw         $zero, 0x28($sp)
    /* 16CEC 8019FC64 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 16CF0 8019FC68 3000B0AF */  sw         $s0, 0x30($sp)
    /* 16CF4 8019FC6C 3400B0AF */  sw         $s0, 0x34($sp)
    /* 16CF8 8019FC70 3800A0AF */  sw         $zero, 0x38($sp)
    /* 16CFC 8019FC74 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 16D00 8019FC78 4000A2AF */  sw         $v0, 0x40($sp)
    /* 16D04 8019FC7C 10480000 */  mfhi       $t1
    /* 16D08 8019FC80 C2180900 */  srl        $v1, $t1, 3
    /* 16D0C 8019FC84 40100300 */  sll        $v0, $v1, 1
    /* 16D10 8019FC88 21104300 */  addu       $v0, $v0, $v1
    /* 16D14 8019FC8C 80100200 */  sll        $v0, $v0, 2
    /* 16D18 8019FC90 23104300 */  subu       $v0, $v0, $v1
    /* 16D1C 8019FC94 23400201 */  subu       $t0, $t0, $v0
    /* 16D20 8019FC98 FF000831 */  andi       $t0, $t0, 0xFF
    /* 16D24 8019FC9C 40390800 */  sll        $a3, $t0, 5
    /* 16D28 8019FCA0 2338E800 */  subu       $a3, $a3, $t0
    /* 16D2C 8019FCA4 FF006330 */  andi       $v1, $v1, 0xFF
    /* 16D30 8019FCA8 40100300 */  sll        $v0, $v1, 1
    /* 16D34 8019FCAC 21104300 */  addu       $v0, $v0, $v1
    /* 16D38 8019FCB0 80100200 */  sll        $v0, $v0, 2
    /* 16D3C 8019FCB4 23104300 */  subu       $v0, $v0, $v1
    /* 16D40 8019FCB8 40100200 */  sll        $v0, $v0, 1
    /* 16D44 8019FCBC ED4F060C */  jal        func_80193FB4
    /* 16D48 8019FCC0 1000A2AF */   sw        $v0, 0x10($sp)
    /* 16D4C 8019FCC4 04000424 */  addiu      $a0, $zero, 0x4
    /* 16D50 8019FCC8 6C300524 */  addiu      $a1, $zero, 0x306C
    /* 16D54 8019FCCC DD02C892 */  lbu        $t0, 0x2DD($s6)
    /* 16D58 8019FCD0 21300000 */  addu       $a2, $zero, $zero
    /* 16D5C 8019FCD4 1400B4AF */  sw         $s4, 0x14($sp)
    /* 16D60 8019FCD8 FF000831 */  andi       $t0, $t0, 0xFF
    /* 16D64 8019FCDC 19001201 */  multu      $t0, $s2
    /* 16D68 8019FCE0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 16D6C 8019FCE4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 16D70 8019FCE8 2000B1AF */  sw         $s1, 0x20($sp)
    /* 16D74 8019FCEC 2400A0AF */  sw         $zero, 0x24($sp)
    /* 16D78 8019FCF0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 16D7C 8019FCF4 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 16D80 8019FCF8 3000B0AF */  sw         $s0, 0x30($sp)
    /* 16D84 8019FCFC 3400B0AF */  sw         $s0, 0x34($sp)
    /* 16D88 8019FD00 3800A0AF */  sw         $zero, 0x38($sp)
    /* 16D8C 8019FD04 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 16D90 8019FD08 4000A0AF */  sw         $zero, 0x40($sp)
    /* 16D94 8019FD0C 10480000 */  mfhi       $t1
    /* 16D98 8019FD10 C2180900 */  srl        $v1, $t1, 3
    /* 16D9C 8019FD14 40100300 */  sll        $v0, $v1, 1
    /* 16DA0 8019FD18 21104300 */  addu       $v0, $v0, $v1
    /* 16DA4 8019FD1C 80100200 */  sll        $v0, $v0, 2
    /* 16DA8 8019FD20 23104300 */  subu       $v0, $v0, $v1
    /* 16DAC 8019FD24 23400201 */  subu       $t0, $t0, $v0
    /* 16DB0 8019FD28 FF000831 */  andi       $t0, $t0, 0xFF
    /* 16DB4 8019FD2C 40390800 */  sll        $a3, $t0, 5
    /* 16DB8 8019FD30 2338E800 */  subu       $a3, $a3, $t0
    /* 16DBC 8019FD34 FF006330 */  andi       $v1, $v1, 0xFF
    /* 16DC0 8019FD38 40100300 */  sll        $v0, $v1, 1
    /* 16DC4 8019FD3C 21104300 */  addu       $v0, $v0, $v1
    /* 16DC8 8019FD40 80100200 */  sll        $v0, $v0, 2
    /* 16DCC 8019FD44 23104300 */  subu       $v0, $v0, $v1
    /* 16DD0 8019FD48 40100200 */  sll        $v0, $v0, 1
    /* 16DD4 8019FD4C ED4F060C */  jal        func_80193FB4
    /* 16DD8 8019FD50 1000A2AF */   sw        $v0, 0x10($sp)
    /* 16DDC 8019FD54 2B000624 */  addiu      $a2, $zero, 0x2B
    /* 16DE0 8019FD58 1E80023C */  lui        $v0, %hi(D_801D8DEB)
    /* 16DE4 8019FD5C EB8D4224 */  addiu      $v0, $v0, %lo(D_801D8DEB)
  .L8019FD60:
    /* 16DE8 8019FD60 000040A0 */  sb         $zero, 0x0($v0)
    /* 16DEC 8019FD64 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 16DF0 8019FD68 FDFFC104 */  bgez       $a2, .L8019FD60
    /* 16DF4 8019FD6C FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 16DF8 8019FD70 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16DFC 8019FD74 2108A102 */  addu       $at, $s5, $at
    /* 16E00 8019FD78 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 16E04 8019FD7C 00000000 */  nop
    /* 16E08 8019FD80 0F004230 */  andi       $v0, $v0, 0xF
    /* 16E0C 8019FD84 1C004014 */  bnez       $v0, .L8019FDF8
    /* 16E10 8019FD88 11000424 */   addiu     $a0, $zero, 0x11
    /* 16E14 8019FD8C 74300524 */  addiu      $a1, $zero, 0x3074
    /* 16E18 8019FD90 21300000 */  addu       $a2, $zero, $zero
    /* 16E1C 8019FD94 21380000 */  addu       $a3, $zero, $zero
    /* 16E20 8019FD98 1C000224 */  addiu      $v0, $zero, 0x1C
    /* 16E24 8019FD9C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 16E28 8019FDA0 00100224 */  addiu      $v0, $zero, 0x1000
    /* 16E2C 8019FDA4 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 16E30 8019FDA8 2000A2AF */  sw         $v0, 0x20($sp)
    /* 16E34 8019FDAC 80000224 */  addiu      $v0, $zero, 0x80
    /* 16E38 8019FDB0 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 16E3C 8019FDB4 3000A2AF */  sw         $v0, 0x30($sp)
    /* 16E40 8019FDB8 3400A2AF */  sw         $v0, 0x34($sp)
    /* 16E44 8019FDBC 02000224 */  addiu      $v0, $zero, 0x2
    /* 16E48 8019FDC0 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 16E4C 8019FDC4 01000224 */  addiu      $v0, $zero, 0x1
    /* 16E50 8019FDC8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 16E54 8019FDCC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 16E58 8019FDD0 2400A0AF */  sw         $zero, 0x24($sp)
    /* 16E5C 8019FDD4 2800A0AF */  sw         $zero, 0x28($sp)
    /* 16E60 8019FDD8 3800A0AF */  sw         $zero, 0x38($sp)
    /* 16E64 8019FDDC ED4F060C */  jal        func_80193FB4
    /* 16E68 8019FDE0 4000A2AF */   sw        $v0, 0x40($sp)
    /* 16E6C 8019FDE4 90010224 */  addiu      $v0, $zero, 0x190
    /* 16E70 8019FDE8 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 16E74 8019FDEC 58A022AC */  sw         $v0, %lo(D_801DA058)($at)
    /* 16E78 8019FDF0 957F0608 */  j          .L8019FE54
    /* 16E7C 8019FDF4 01000424 */   addiu     $a0, $zero, 0x1
  .L8019FDF8:
    /* 16E80 8019FDF8 73300524 */  addiu      $a1, $zero, 0x3073
    /* 16E84 8019FDFC 21300000 */  addu       $a2, $zero, $zero
    /* 16E88 8019FE00 21380000 */  addu       $a3, $zero, $zero
    /* 16E8C 8019FE04 1C000224 */  addiu      $v0, $zero, 0x1C
    /* 16E90 8019FE08 1400A2AF */  sw         $v0, 0x14($sp)
    /* 16E94 8019FE0C 00100224 */  addiu      $v0, $zero, 0x1000
    /* 16E98 8019FE10 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 16E9C 8019FE14 2000A2AF */  sw         $v0, 0x20($sp)
    /* 16EA0 8019FE18 80000224 */  addiu      $v0, $zero, 0x80
    /* 16EA4 8019FE1C 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 16EA8 8019FE20 3000A2AF */  sw         $v0, 0x30($sp)
    /* 16EAC 8019FE24 3400A2AF */  sw         $v0, 0x34($sp)
    /* 16EB0 8019FE28 02000224 */  addiu      $v0, $zero, 0x2
    /* 16EB4 8019FE2C 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 16EB8 8019FE30 01000224 */  addiu      $v0, $zero, 0x1
    /* 16EBC 8019FE34 1000A0AF */  sw         $zero, 0x10($sp)
    /* 16EC0 8019FE38 1800A0AF */  sw         $zero, 0x18($sp)
    /* 16EC4 8019FE3C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 16EC8 8019FE40 2800A0AF */  sw         $zero, 0x28($sp)
    /* 16ECC 8019FE44 3800A0AF */  sw         $zero, 0x38($sp)
    /* 16ED0 8019FE48 ED4F060C */  jal        func_80193FB4
    /* 16ED4 8019FE4C 4000A2AF */   sw        $v0, 0x40($sp)
    /* 16ED8 8019FE50 01000424 */  addiu      $a0, $zero, 0x1
  .L8019FE54:
    /* 16EDC 8019FE54 E48B060C */  jal        func_801A2F90
    /* 16EE0 8019FE58 21280000 */   addu      $a1, $zero, $zero
    /* 16EE4 8019FE5C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16EE8 8019FE60 2108A102 */  addu       $at, $s5, $at
    /* 16EEC 8019FE64 1F8F2490 */  lbu        $a0, -0x70E1($at)
    /* 16EF0 8019FE68 21280000 */  addu       $a1, $zero, $zero
    /* 16EF4 8019FE6C 0F008430 */  andi       $a0, $a0, 0xF
    /* 16EF8 8019FE70 3D8C060C */  jal        func_801A30F4
    /* 16EFC 8019FE74 2B200400 */   sltu      $a0, $zero, $a0
    /* 16F00 8019FE78 01000424 */  addiu      $a0, $zero, 0x1
    /* 16F04 8019FE7C 1B8D060C */  jal        func_801A346C
    /* 16F08 8019FE80 21280000 */   addu      $a1, $zero, $zero
    /* 16F0C 8019FE84 01001024 */  addiu      $s0, $zero, 0x1
    /* 16F10 8019FE88 1D80013C */  lui        $at, %hi(D_801D1F60)
    /* 16F14 8019FE8C 601F30A0 */  sb         $s0, %lo(D_801D1F60)($at)
    /* 16F18 8019FE90 1D80013C */  lui        $at, %hi(D_801D1F61)
    /* 16F1C 8019FE94 611F20A0 */  sb         $zero, %lo(D_801D1F61)($at)
    /* 16F20 8019FE98 1E80013C */  lui        $at, %hi(D_801D8A8F)
    /* 16F24 8019FE9C 8F8A30A0 */  sb         $s0, %lo(D_801D8A8F)($at)
    /* 16F28 8019FEA0 1B93060C */  jal        func_801A4C6C
    /* 16F2C 8019FEA4 00000000 */   nop
    /* 16F30 8019FEA8 0A000224 */  addiu      $v0, $zero, 0xA
    /* 16F34 8019FEAC 1E80013C */  lui        $at, %hi(D_801D803B)
    /* 16F38 8019FEB0 3B8030A0 */  sb         $s0, %lo(D_801D803B)($at)
    /* 16F3C 8019FEB4 1E80013C */  lui        $at, %hi(D_801DA331)
    /* 16F40 8019FEB8 31A320A0 */  sb         $zero, %lo(D_801DA331)($at)
    /* 16F44 8019FEBC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16F48 8019FEC0 2108A102 */  addu       $at, $s5, $at
    /* 16F4C 8019FEC4 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 16F50 8019FEC8 5B880608 */  j          .L801A216C
    /* 16F54 8019FECC 21100000 */   addu      $v0, $zero, $zero
  jlabel .L8019FED0
    /* 16F58 8019FED0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16F5C 8019FED4 2108A102 */  addu       $at, $s5, $at
    /* 16F60 8019FED8 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 16F64 8019FEDC 00000000 */  nop
    /* 16F68 8019FEE0 0F004230 */  andi       $v0, $v0, 0xF
    /* 16F6C 8019FEE4 02004010 */  beqz       $v0, .L8019FEF0
    /* 16F70 8019FEE8 21200000 */   addu      $a0, $zero, $zero
    /* 16F74 8019FEEC 01000424 */  addiu      $a0, $zero, 0x1
  .L8019FEF0:
    /* 16F78 8019FEF0 288B060C */  jal        func_801A2CA0
    /* 16F7C 8019FEF4 21280000 */   addu      $a1, $zero, $zero
    /* 16F80 8019FEF8 01000424 */  addiu      $a0, $zero, 0x1
    /* 16F84 8019FEFC E48B060C */  jal        func_801A2F90
    /* 16F88 8019FF00 21280000 */   addu      $a1, $zero, $zero
    /* 16F8C 8019FF04 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16F90 8019FF08 2108A102 */  addu       $at, $s5, $at
    /* 16F94 8019FF0C 1F8F2490 */  lbu        $a0, -0x70E1($at)
    /* 16F98 8019FF10 21280000 */  addu       $a1, $zero, $zero
    /* 16F9C 8019FF14 0F008430 */  andi       $a0, $a0, 0xF
    /* 16FA0 8019FF18 3D8C060C */  jal        func_801A30F4
    /* 16FA4 8019FF1C 2B200400 */   sltu      $a0, $zero, $a0
    /* 16FA8 8019FF20 21200000 */  addu       $a0, $zero, $zero
    /* 16FAC 8019FF24 1B8D060C */  jal        func_801A346C
    /* 16FB0 8019FF28 21280000 */   addu      $a1, $zero, $zero
    /* 16FB4 8019FF2C 01000224 */  addiu      $v0, $zero, 0x1
    /* 16FB8 8019FF30 1D80013C */  lui        $at, %hi(D_801D1F60)
    /* 16FBC 8019FF34 601F22A0 */  sb         $v0, %lo(D_801D1F60)($at)
    /* 16FC0 8019FF38 1D80013C */  lui        $at, %hi(D_801D1F61)
    /* 16FC4 8019FF3C 611F20A0 */  sb         $zero, %lo(D_801D1F61)($at)
    /* 16FC8 8019FF40 628D060C */  jal        func_801A3588
    /* 16FCC 8019FF44 00000000 */   nop
    /* 16FD0 8019FF48 1E80033C */  lui        $v1, %hi(D_801D8A8E)
    /* 16FD4 8019FF4C 8E8A6324 */  addiu      $v1, $v1, %lo(D_801D8A8E)
    /* 16FD8 8019FF50 00006290 */  lbu        $v0, 0x0($v1)
    /* 16FDC 8019FF54 00000000 */  nop
    /* 16FE0 8019FF58 F0004230 */  andi       $v0, $v0, 0xF0
    /* 16FE4 8019FF5C 1B93060C */  jal        func_801A4C6C
    /* 16FE8 8019FF60 000062A0 */   sb        $v0, 0x0($v1)
    /* 16FEC 8019FF64 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16FF0 8019FF68 2108A102 */  addu       $at, $s5, $at
    /* 16FF4 8019FF6C 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 16FF8 8019FF70 00000000 */  nop
    /* 16FFC 8019FF74 0F004230 */  andi       $v0, $v0, 0xF
    /* 17000 8019FF78 21004014 */  bnez       $v0, .L801A0000
    /* 17004 8019FF7C EB51053C */   lui       $a1, (0x51EB851F >> 16)
    /* 17008 8019FF80 1E80043C */  lui        $a0, %hi(D_801DA058)
    /* 1700C 8019FF84 58A0848C */  lw         $a0, %lo(D_801DA058)($a0)
    /* 17010 8019FF88 1F85A534 */  ori        $a1, $a1, (0x51EB851F & 0xFFFF)
    /* 17014 8019FF8C 01008424 */  addiu      $a0, $a0, 0x1
    /* 17018 8019FF90 18008500 */  mult       $a0, $a1
    /* 1701C 8019FF94 C3170400 */  sra        $v0, $a0, 31
    /* 17020 8019FF98 10480000 */  mfhi       $t1
    /* 17024 8019FF9C C3190900 */  sra        $v1, $t1, 7
    /* 17028 8019FFA0 23186200 */  subu       $v1, $v1, $v0
    /* 1702C 8019FFA4 40100300 */  sll        $v0, $v1, 1
    /* 17030 8019FFA8 21104300 */  addu       $v0, $v0, $v1
    /* 17034 8019FFAC C0100200 */  sll        $v0, $v0, 3
    /* 17038 8019FFB0 21104300 */  addu       $v0, $v0, $v1
    /* 1703C 8019FFB4 00110200 */  sll        $v0, $v0, 4
    /* 17040 8019FFB8 23208200 */  subu       $a0, $a0, $v0
    /* 17044 8019FFBC 18008500 */  mult       $a0, $a1
    /* 17048 8019FFC0 C3170400 */  sra        $v0, $a0, 31
    /* 1704C 8019FFC4 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 17050 8019FFC8 58A024AC */  sw         $a0, %lo(D_801DA058)($at)
    /* 17054 8019FFCC 10480000 */  mfhi       $t1
    /* 17058 8019FFD0 83190900 */  sra        $v1, $t1, 6
    /* 1705C 8019FFD4 23186200 */  subu       $v1, $v1, $v0
    /* 17060 8019FFD8 40100300 */  sll        $v0, $v1, 1
    /* 17064 8019FFDC 21104300 */  addu       $v0, $v0, $v1
    /* 17068 8019FFE0 C0100200 */  sll        $v0, $v0, 3
    /* 1706C 8019FFE4 21104300 */  addu       $v0, $v0, $v1
    /* 17070 8019FFE8 C0100200 */  sll        $v0, $v0, 3
    /* 17074 8019FFEC 04008214 */  bne        $a0, $v0, .L801A0000
    /* 17078 8019FFF0 00000000 */   nop
    /* 1707C 8019FFF4 0174000C */  jal        func_8001D004
    /* 17080 8019FFF8 73306424 */   addiu     $a0, $v1, 0x3073
    /* 17084 8019FFFC 7460A2AE */  sw         $v0, 0x6074($s5)
  .L801A0000:
    /* 17088 801A0000 DD02C592 */  lbu        $a1, 0x2DD($s6)
    /* 1708C 801A0004 2EBA063C */  lui        $a2, (0xBA2E8BA3 >> 16)
    /* 17090 801A0008 A38BC634 */  ori        $a2, $a2, (0xBA2E8BA3 & 0xFFFF)
    /* 17094 801A000C FF00A530 */  andi       $a1, $a1, 0xFF
    /* 17098 801A0010 1900A600 */  multu      $a1, $a2
    /* 1709C 801A0014 21200000 */  addu       $a0, $zero, $zero
    /* 170A0 801A0018 645EA0A2 */  sb         $zero, 0x5E64($s5)
    /* 170A4 801A001C 1E80023C */  lui        $v0, %hi(D_801D8B17)
    /* 170A8 801A0020 178B4290 */  lbu        $v0, %lo(D_801D8B17)($v0)
    /* 170AC 801A0024 10400000 */  mfhi       $t0
    /* 170B0 801A0028 DD02C392 */  lbu        $v1, 0x2DD($s6)
    /* 170B4 801A002C 2B100200 */  sltu       $v0, $zero, $v0
    /* 170B8 801A0030 19006600 */  multu      $v1, $a2
    /* 170BC 801A0034 3C5EA2A2 */  sb         $v0, 0x5E3C($s5)
    /* 170C0 801A0038 C2180800 */  srl        $v1, $t0, 3
    /* 170C4 801A003C 40100300 */  sll        $v0, $v1, 1
    /* 170C8 801A0040 21104300 */  addu       $v0, $v0, $v1
    /* 170CC 801A0044 80100200 */  sll        $v0, $v0, 2
    /* 170D0 801A0048 23104300 */  subu       $v0, $v0, $v1
    /* 170D4 801A004C 2328A200 */  subu       $a1, $a1, $v0
    /* 170D8 801A0050 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 170DC 801A0054 40110500 */  sll        $v0, $a1, 5
    /* 170E0 801A0058 23104500 */  subu       $v0, $v0, $a1
    /* 170E4 801A005C 485EA2A6 */  sh         $v0, 0x5E48($s5)
    /* 170E8 801A0060 10300000 */  mfhi       $a2
    /* 170EC 801A0064 C2180600 */  srl        $v1, $a2, 3
    /* 170F0 801A0068 FF006330 */  andi       $v1, $v1, 0xFF
    /* 170F4 801A006C 40100300 */  sll        $v0, $v1, 1
    /* 170F8 801A0070 21104300 */  addu       $v0, $v0, $v1
    /* 170FC 801A0074 80100200 */  sll        $v0, $v0, 2
    /* 17100 801A0078 23104300 */  subu       $v0, $v0, $v1
    /* 17104 801A007C 40100200 */  sll        $v0, $v0, 1
    /* 17108 801A0080 7592060C */  jal        func_801A49D4
    /* 1710C 801A0084 4A5EA2A6 */   sh        $v0, 0x5E4A($s5)
    /* 17110 801A0088 1E80013C */  lui        $at, %hi(D_801DA331)
    /* 17114 801A008C 31A322A0 */  sb         $v0, %lo(D_801DA331)($at)
    /* 17118 801A0090 C0004230 */  andi       $v0, $v0, 0xC0
    /* 1711C 801A0094 12004014 */  bnez       $v0, .L801A00E0
    /* 17120 801A0098 03000424 */   addiu     $a0, $zero, 0x3
    /* 17124 801A009C AABE010C */  jal        func_8006FAA8
    /* 17128 801A00A0 6C300524 */   addiu     $a1, $zero, 0x306C
    /* 1712C 801A00A4 54000424 */  addiu      $a0, $zero, 0x54
    /* 17130 801A00A8 01000524 */  addiu      $a1, $zero, 0x1
    /* 17134 801A00AC 02BF010C */  jal        func_8006FC08
    /* 17138 801A00B0 0D000624 */   addiu     $a2, $zero, 0xD
    /* 1713C 801A00B4 10000224 */  addiu      $v0, $zero, 0x10
    /* 17140 801A00B8 1E80013C */  lui        $at, %hi(D_801D8A8A)
    /* 17144 801A00BC 8A8A22A0 */  sb         $v0, %lo(D_801D8A8A)($at)
    /* 17148 801A00C0 60000224 */  addiu      $v0, $zero, 0x60
    /* 1714C 801A00C4 1E80013C */  lui        $at, %hi(D_801D8A8B)
    /* 17150 801A00C8 8B8A22A0 */  sb         $v0, %lo(D_801D8A8B)($at)
    /* 17154 801A00CC 80000224 */  addiu      $v0, $zero, 0x80
    /* 17158 801A00D0 1E80013C */  lui        $at, %hi(D_801D8A8C)
    /* 1715C 801A00D4 8C8A22A0 */  sb         $v0, %lo(D_801D8A8C)($at)
    /* 17160 801A00D8 45800608 */  j          .L801A0114
    /* 17164 801A00DC 00000000 */   nop
  .L801A00E0:
    /* 17168 801A00E0 AABE010C */  jal        func_8006FAA8
    /* 1716C 801A00E4 6D300524 */   addiu     $a1, $zero, 0x306D
    /* 17170 801A00E8 56000424 */  addiu      $a0, $zero, 0x56
    /* 17174 801A00EC 01000524 */  addiu      $a1, $zero, 0x1
    /* 17178 801A00F0 02BF010C */  jal        func_8006FC08
    /* 1717C 801A00F4 0D000624 */   addiu     $a2, $zero, 0xD
    /* 17180 801A00F8 80000224 */  addiu      $v0, $zero, 0x80
    /* 17184 801A00FC 1E80013C */  lui        $at, %hi(D_801D8A8A)
    /* 17188 801A0100 8A8A22A0 */  sb         $v0, %lo(D_801D8A8A)($at)
    /* 1718C 801A0104 1E80013C */  lui        $at, %hi(D_801D8A8B)
    /* 17190 801A0108 8B8A22A0 */  sb         $v0, %lo(D_801D8A8B)($at)
    /* 17194 801A010C 1E80013C */  lui        $at, %hi(D_801D8A8C)
    /* 17198 801A0110 8C8A20A0 */  sb         $zero, %lo(D_801D8A8C)($at)
  .L801A0114:
    /* 1719C 801A0114 F78F060C */  jal        func_801A3FDC
    /* 171A0 801A0118 00000000 */   nop
    /* 171A4 801A011C 1E80013C */  lui        $at, %hi(D_801D8C6C)
    /* 171A8 801A0120 6C8C22AC */  sw         $v0, %lo(D_801D8C6C)($at)
    /* 171AC 801A0124 20000324 */  addiu      $v1, $zero, 0x20
    /* 171B0 801A0128 64004314 */  bne        $v0, $v1, .L801A02BC
    /* 171B4 801A012C 00000000 */   nop
    /* 171B8 801A0130 1E80043C */  lui        $a0, %hi(D_801D8B17)
    /* 171BC 801A0134 178B8490 */  lbu        $a0, %lo(D_801D8B17)($a0)
    /* 171C0 801A0138 00000000 */  nop
    /* 171C4 801A013C 05008010 */  beqz       $a0, .L801A0154
    /* 171C8 801A0140 01000224 */   addiu     $v0, $zero, 0x1
    /* 171CC 801A0144 2D008210 */  beq        $a0, $v0, .L801A01FC
    /* 171D0 801A0148 00000000 */   nop
    /* 171D4 801A014C AF800608 */  j          .L801A02BC
    /* 171D8 801A0150 00000000 */   nop
  .L801A0154:
    /* 171DC 801A0154 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 171E0 801A0158 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 171E4 801A015C 00000000 */  nop
    /* 171E8 801A0160 2110A202 */  addu       $v0, $s5, $v0
    /* 171EC 801A0164 0100013C */  lui        $at, (0x10000 >> 16)
    /* 171F0 801A0168 21084100 */  addu       $at, $v0, $at
    /* 171F4 801A016C 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 171F8 801A0170 00000000 */  nop
    /* 171FC 801A0174 C0100300 */  sll        $v0, $v1, 3
    /* 17200 801A0178 21104300 */  addu       $v0, $v0, $v1
    /* 17204 801A017C 80100200 */  sll        $v0, $v0, 2
    /* 17208 801A0180 2110A202 */  addu       $v0, $s5, $v0
    /* 1720C 801A0184 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17210 801A0188 21084100 */  addu       $at, $v0, $at
    /* 17214 801A018C 248F2290 */  lbu        $v0, -0x70DC($at)
    /* 17218 801A0190 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 1721C 801A0194 C0004230 */  andi       $v0, $v0, 0xC0
    /* 17220 801A0198 48004310 */  beq        $v0, $v1, .L801A02BC
    /* 17224 801A019C 80AB1034 */   ori       $s0, $zero, 0xAB80
    /* 17228 801A01A0 88AD020C */  jal        func_800AB620
    /* 1722C 801A01A4 27050424 */   addiu     $a0, $zero, 0x527
    /* 17230 801A01A8 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 17234 801A01AC 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 17238 801A01B0 1E80013C */  lui        $at, %hi(D_801D803C)
    /* 1723C 801A01B4 3C8022A0 */  sb         $v0, %lo(D_801D803C)($at)
    /* 17240 801A01B8 21105500 */  addu       $v0, $v0, $s5
    /* 17244 801A01BC 21105000 */  addu       $v0, $v0, $s0
    /* 17248 801A01C0 00004390 */  lbu        $v1, 0x0($v0)
    /* 1724C 801A01C4 00000000 */  nop
    /* 17250 801A01C8 C0100300 */  sll        $v0, $v1, 3
    /* 17254 801A01CC 21104300 */  addu       $v0, $v0, $v1
    /* 17258 801A01D0 80100200 */  sll        $v0, $v0, 2
    /* 1725C 801A01D4 2110A202 */  addu       $v0, $s5, $v0
    /* 17260 801A01D8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17264 801A01DC 21084100 */  addu       $at, $v0, $at
    /* 17268 801A01E0 258F2390 */  lbu        $v1, -0x70DB($at)
    /* 1726C 801A01E4 28000224 */  addiu      $v0, $zero, 0x28
    /* 17270 801A01E8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17274 801A01EC 2108A102 */  addu       $at, $s5, $at
    /* 17278 801A01F0 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 1727C 801A01F4 AF800608 */  j          .L801A02BC
    /* 17280 801A01F8 DE02C3A2 */   sb        $v1, 0x2DE($s6)
  .L801A01FC:
    /* 17284 801A01FC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17288 801A0200 2108A102 */  addu       $at, $s5, $at
    /* 1728C 801A0204 208F2390 */  lbu        $v1, -0x70E0($at)
    /* 17290 801A0208 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 17294 801A020C 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 17298 801A0210 00000000 */  nop
    /* 1729C 801A0214 2A104300 */  slt        $v0, $v0, $v1
    /* 172A0 801A0218 1F004010 */  beqz       $v0, .L801A0298
    /* 172A4 801A021C 00000000 */   nop
    /* 172A8 801A0220 DD02C292 */  lbu        $v0, 0x2DD($s6)
    /* 172AC 801A0224 00000000 */  nop
    /* 172B0 801A0228 FF004330 */  andi       $v1, $v0, 0xFF
    /* 172B4 801A022C 1E80013C */  lui        $at, %hi(D_801D8DC0)
    /* 172B8 801A0230 21082300 */  addu       $at, $at, $v1
    /* 172BC 801A0234 C08D2290 */  lbu        $v0, %lo(D_801D8DC0)($at)
    /* 172C0 801A0238 00000000 */  nop
    /* 172C4 801A023C 07004410 */  beq        $v0, $a0, .L801A025C
    /* 172C8 801A0240 00000000 */   nop
    /* 172CC 801A0244 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 172D0 801A0248 21082300 */  addu       $at, $at, $v1
    /* 172D4 801A024C 88AD2290 */  lbu        $v0, %lo(D_801DAD88)($at)
    /* 172D8 801A0250 00000000 */  nop
    /* 172DC 801A0254 05004010 */  beqz       $v0, .L801A026C
    /* 172E0 801A0258 00000000 */   nop
  .L801A025C:
    /* 172E4 801A025C 88AD020C */  jal        func_800AB620
    /* 172E8 801A0260 12050424 */   addiu     $a0, $zero, 0x512
    /* 172EC 801A0264 AF800608 */  j          .L801A02BC
    /* 172F0 801A0268 00000000 */   nop
  .L801A026C:
    /* 172F4 801A026C 88AD020C */  jal        func_800AB620
    /* 172F8 801A0270 28050424 */   addiu     $a0, $zero, 0x528
    /* 172FC 801A0274 DD02C292 */  lbu        $v0, 0x2DD($s6)
    /* 17300 801A0278 00000000 */  nop
    /* 17304 801A027C 21204000 */  addu       $a0, $v0, $zero
    /* 17308 801A0280 6688060C */  jal        func_801A2198
    /* 1730C 801A0284 DE02C2A2 */   sb        $v0, 0x2DE($s6)
    /* 17310 801A0288 1E80013C */  lui        $at, %hi(D_801D8B17)
    /* 17314 801A028C 178B20A0 */  sb         $zero, %lo(D_801D8B17)($at)
    /* 17318 801A0290 AC800608 */  j          .L801A02B0
    /* 1731C 801A0294 14000224 */   addiu     $v0, $zero, 0x14
  .L801A0298:
    /* 17320 801A0298 88AD020C */  jal        func_800AB620
    /* 17324 801A029C 28050424 */   addiu     $a0, $zero, 0x528
    /* 17328 801A02A0 02000224 */  addiu      $v0, $zero, 0x2
    /* 1732C 801A02A4 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 17330 801A02A8 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
    /* 17334 801A02AC 32000224 */  addiu      $v0, $zero, 0x32
  .L801A02B0:
    /* 17338 801A02B0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1733C 801A02B4 2108A102 */  addu       $at, $s5, $at
    /* 17340 801A02B8 DAAB22A0 */  sb         $v0, -0x5426($at)
  .L801A02BC:
    /* 17344 801A02BC 1E80033C */  lui        $v1, %hi(D_801D8C6C)
    /* 17348 801A02C0 6C8C638C */  lw         $v1, %lo(D_801D8C6C)($v1)
    /* 1734C 801A02C4 40000224 */  addiu      $v0, $zero, 0x40
    /* 17350 801A02C8 CF006214 */  bne        $v1, $v0, .L801A0608
    /* 17354 801A02CC 00000000 */   nop
    /* 17358 801A02D0 1E80033C */  lui        $v1, %hi(D_801D8B17)
    /* 1735C 801A02D4 178B6390 */  lbu        $v1, %lo(D_801D8B17)($v1)
    /* 17360 801A02D8 00000000 */  nop
    /* 17364 801A02DC 05006010 */  beqz       $v1, .L801A02F4
    /* 17368 801A02E0 01000224 */   addiu     $v0, $zero, 0x1
    /* 1736C 801A02E4 6A006210 */  beq        $v1, $v0, .L801A0490
    /* 17370 801A02E8 00000000 */   nop
    /* 17374 801A02EC 80810608 */  j          .L801A0600
    /* 17378 801A02F0 00000000 */   nop
  .L801A02F4:
    /* 1737C 801A02F4 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 17380 801A02F8 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 17384 801A02FC 00000000 */  nop
    /* 17388 801A0300 68004010 */  beqz       $v0, .L801A04A4
    /* 1738C 801A0304 00000000 */   nop
    /* 17390 801A0308 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 17394 801A030C 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 17398 801A0310 00000000 */  nop
    /* 1739C 801A0314 2110A202 */  addu       $v0, $s5, $v0
    /* 173A0 801A0318 0100013C */  lui        $at, (0x10000 >> 16)
    /* 173A4 801A031C 21084100 */  addu       $at, $v0, $at
    /* 173A8 801A0320 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 173AC 801A0324 00000000 */  nop
    /* 173B0 801A0328 C0100300 */  sll        $v0, $v1, 3
    /* 173B4 801A032C 21104300 */  addu       $v0, $v0, $v1
    /* 173B8 801A0330 80100200 */  sll        $v0, $v0, 2
    /* 173BC 801A0334 2110A202 */  addu       $v0, $s5, $v0
    /* 173C0 801A0338 0100013C */  lui        $at, (0x10000 >> 16)
    /* 173C4 801A033C 21084100 */  addu       $at, $v0, $at
    /* 173C8 801A0340 248F2290 */  lbu        $v0, -0x70DC($at)
    /* 173CC 801A0344 00000000 */  nop
    /* 173D0 801A0348 C0004630 */  andi       $a2, $v0, 0xC0
    /* 173D4 801A034C C0000224 */  addiu      $v0, $zero, 0xC0
    /* 173D8 801A0350 4000C210 */  beq        $a2, $v0, .L801A0454
    /* 173DC 801A0354 80AB1034 */   ori       $s0, $zero, 0xAB80
    /* 173E0 801A0358 88AD020C */  jal        func_800AB620
    /* 173E4 801A035C 29050424 */   addiu     $a0, $zero, 0x529
    /* 173E8 801A0360 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 173EC 801A0364 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 173F0 801A0368 00000000 */  nop
    /* 173F4 801A036C 2110A202 */  addu       $v0, $s5, $v0
    /* 173F8 801A0370 21105000 */  addu       $v0, $v0, $s0
    /* 173FC 801A0374 00004390 */  lbu        $v1, 0x0($v0)
    /* 17400 801A0378 00000000 */  nop
    /* 17404 801A037C C0100300 */  sll        $v0, $v1, 3
    /* 17408 801A0380 21104300 */  addu       $v0, $v0, $v1
    /* 1740C 801A0384 80100200 */  sll        $v0, $v0, 2
    /* 17410 801A0388 2110A202 */  addu       $v0, $s5, $v0
    /* 17414 801A038C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17418 801A0390 21084100 */  addu       $at, $v0, $at
    /* 1741C 801A0394 258F2690 */  lbu        $a2, -0x70DB($at)
    /* 17420 801A0398 1E80013C */  lui        $at, %hi(D_801D8DC0)
    /* 17424 801A039C 21082600 */  addu       $at, $at, $a2
    /* 17428 801A03A0 C08D20A0 */  sb         $zero, %lo(D_801D8DC0)($at)
    /* 1742C 801A03A4 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 17430 801A03A8 21082600 */  addu       $at, $at, $a2
    /* 17434 801A03AC 88AD20A0 */  sb         $zero, %lo(D_801DAD88)($at)
    /* 17438 801A03B0 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 1743C 801A03B4 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 17440 801A03B8 00000000 */  nop
    /* 17444 801A03BC 2110A202 */  addu       $v0, $s5, $v0
    /* 17448 801A03C0 21105000 */  addu       $v0, $v0, $s0
    /* 1744C 801A03C4 00004390 */  lbu        $v1, 0x0($v0)
    /* 17450 801A03C8 FF000424 */  addiu      $a0, $zero, 0xFF
    /* 17454 801A03CC C0100300 */  sll        $v0, $v1, 3
    /* 17458 801A03D0 21104300 */  addu       $v0, $v0, $v1
    /* 1745C 801A03D4 80100200 */  sll        $v0, $v0, 2
    /* 17460 801A03D8 2110A202 */  addu       $v0, $s5, $v0
    /* 17464 801A03DC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17468 801A03E0 21084100 */  addu       $at, $v0, $at
    /* 1746C 801A03E4 248F24A0 */  sb         $a0, -0x70DC($at)
    /* 17470 801A03E8 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 17474 801A03EC 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 17478 801A03F0 00000000 */  nop
    /* 1747C 801A03F4 2110A202 */  addu       $v0, $s5, $v0
    /* 17480 801A03F8 21105000 */  addu       $v0, $v0, $s0
    /* 17484 801A03FC 00004390 */  lbu        $v1, 0x0($v0)
    /* 17488 801A0400 00000000 */  nop
    /* 1748C 801A0404 C0100300 */  sll        $v0, $v1, 3
    /* 17490 801A0408 21104300 */  addu       $v0, $v0, $v1
    /* 17494 801A040C 80100200 */  sll        $v0, $v0, 2
    /* 17498 801A0410 2110A202 */  addu       $v0, $s5, $v0
    /* 1749C 801A0414 0100013C */  lui        $at, (0x10000 >> 16)
    /* 174A0 801A0418 21084100 */  addu       $at, $v0, $at
    /* 174A4 801A041C 258F24A0 */  sb         $a0, -0x70DB($at)
    /* 174A8 801A0420 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 174AC 801A0424 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 174B0 801A0428 2120C000 */  addu       $a0, $a2, $zero
    /* 174B4 801A042C DD02C4A2 */  sb         $a0, 0x2DD($s6)
    /* 174B8 801A0430 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 174BC 801A0434 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 174C0 801A0438 5CA022AC */  sw         $v0, %lo(D_801DA05C)($at)
    /* 174C4 801A043C 7592060C */  jal        func_801A49D4
    /* 174C8 801A0440 00000000 */   nop
    /* 174CC 801A0444 1E80013C */  lui        $at, %hi(D_801DA331)
    /* 174D0 801A0448 31A322A0 */  sb         $v0, %lo(D_801DA331)($at)
    /* 174D4 801A044C 20810608 */  j          .L801A0480
    /* 174D8 801A0450 01000224 */   addiu     $v0, $zero, 0x1
  .L801A0454:
    /* 174DC 801A0454 DE02C292 */  lbu        $v0, 0x2DE($s6)
    /* 174E0 801A0458 FF000324 */  addiu      $v1, $zero, 0xFF
    /* 174E4 801A045C FF004230 */  andi       $v0, $v0, 0xFF
    /* 174E8 801A0460 67004310 */  beq        $v0, $v1, .L801A0600
    /* 174EC 801A0464 00000000 */   nop
    /* 174F0 801A0468 88AD020C */  jal        func_800AB620
    /* 174F4 801A046C 29050424 */   addiu     $a0, $zero, 0x529
    /* 174F8 801A0470 DE02C292 */  lbu        $v0, 0x2DE($s6)
    /* 174FC 801A0474 00000000 */  nop
    /* 17500 801A0478 DD02C2A2 */  sb         $v0, 0x2DD($s6)
    /* 17504 801A047C 01000224 */  addiu      $v0, $zero, 0x1
  .L801A0480:
    /* 17508 801A0480 1E80013C */  lui        $at, %hi(D_801D8B17)
    /* 1750C 801A0484 178B22A0 */  sb         $v0, %lo(D_801D8B17)($at)
    /* 17510 801A0488 80810608 */  j          .L801A0600
    /* 17514 801A048C 00000000 */   nop
  .L801A0490:
    /* 17518 801A0490 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 1751C 801A0494 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 17520 801A0498 00000000 */  nop
    /* 17524 801A049C 21004014 */  bnez       $v0, .L801A0524
    /* 17528 801A04A0 00000000 */   nop
  .L801A04A4:
    /* 1752C 801A04A4 88AD020C */  jal        func_800AB620
    /* 17530 801A04A8 29050424 */   addiu     $a0, $zero, 0x529
    /* 17534 801A04AC 46000224 */  addiu      $v0, $zero, 0x46
    /* 17538 801A04B0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1753C 801A04B4 2108A102 */  addu       $at, $s5, $at
    /* 17540 801A04B8 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 17544 801A04BC 80810608 */  j          .L801A0600
    /* 17548 801A04C0 00000000 */   nop
  .L801A04C4:
    /* 1754C 801A04C4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17550 801A04C8 21086100 */  addu       $at, $v1, $at
    /* 17554 801A04CC 248F2490 */  lbu        $a0, -0x70DC($at)
    /* 17558 801A04D0 FF000524 */  addiu      $a1, $zero, 0xFF
    /* 1755C 801A04D4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17560 801A04D8 21086100 */  addu       $at, $v1, $at
    /* 17564 801A04DC 248F25A0 */  sb         $a1, -0x70DC($at)
    /* 17568 801A04E0 0000E390 */  lbu        $v1, 0x0($a3)
    /* 1756C 801A04E4 00000000 */  nop
    /* 17570 801A04E8 C0100300 */  sll        $v0, $v1, 3
    /* 17574 801A04EC 21104300 */  addu       $v0, $v0, $v1
    /* 17578 801A04F0 80100200 */  sll        $v0, $v0, 2
    /* 1757C 801A04F4 2110A202 */  addu       $v0, $s5, $v0
    /* 17580 801A04F8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17584 801A04FC 21084100 */  addu       $at, $v0, $at
    /* 17588 801A0500 258F25A0 */  sb         $a1, -0x70DB($at)
    /* 1758C 801A0504 1E80013C */  lui        $at, %hi(D_801D8A70)
    /* 17590 801A0508 708A26A0 */  sb         $a2, %lo(D_801D8A70)($at)
    /* 17594 801A050C 7592060C */  jal        func_801A49D4
    /* 17598 801A0510 C0008430 */   andi      $a0, $a0, 0xC0
    /* 1759C 801A0514 1E80013C */  lui        $at, %hi(D_801DA331)
    /* 175A0 801A0518 31A322A0 */  sb         $v0, %lo(D_801DA331)($at)
    /* 175A4 801A051C 80810608 */  j          .L801A0600
    /* 175A8 801A0520 00000000 */   nop
  .L801A0524:
    /* 175AC 801A0524 DD02C292 */  lbu        $v0, 0x2DD($s6)
    /* 175B0 801A0528 00000000 */  nop
    /* 175B4 801A052C FF004230 */  andi       $v0, $v0, 0xFF
    /* 175B8 801A0530 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 175BC 801A0534 21082200 */  addu       $at, $at, $v0
    /* 175C0 801A0538 88AD2290 */  lbu        $v0, %lo(D_801DAD88)($at)
    /* 175C4 801A053C 00000000 */  nop
    /* 175C8 801A0540 2F004314 */  bne        $v0, $v1, .L801A0600
    /* 175CC 801A0544 00000000 */   nop
    /* 175D0 801A0548 88AD020C */  jal        func_800AB620
    /* 175D4 801A054C 29050424 */   addiu     $a0, $zero, 0x529
    /* 175D8 801A0550 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 175DC 801A0554 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 175E0 801A0558 DD02C392 */  lbu        $v1, 0x2DD($s6)
    /* 175E4 801A055C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 175E8 801A0560 FF006330 */  andi       $v1, $v1, 0xFF
    /* 175EC 801A0564 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 175F0 801A0568 5CA022AC */  sw         $v0, %lo(D_801DA05C)($at)
    /* 175F4 801A056C 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 175F8 801A0570 21082300 */  addu       $at, $at, $v1
    /* 175FC 801A0574 88AD20A0 */  sb         $zero, %lo(D_801DAD88)($at)
    /* 17600 801A0578 DD02C292 */  lbu        $v0, 0x2DD($s6)
    /* 17604 801A057C 00000000 */  nop
    /* 17608 801A0580 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1760C 801A0584 1E80013C */  lui        $at, %hi(D_801D8DC0)
    /* 17610 801A0588 21082200 */  addu       $at, $at, $v0
    /* 17614 801A058C C08D20A0 */  sb         $zero, %lo(D_801D8DC0)($at)
    /* 17618 801A0590 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1761C 801A0594 2108A102 */  addu       $at, $s5, $at
    /* 17620 801A0598 208F2390 */  lbu        $v1, -0x70E0($at)
    /* 17624 801A059C 00000000 */  nop
    /* 17628 801A05A0 17006018 */  blez       $v1, .L801A0600
    /* 1762C 801A05A4 21300000 */   addu      $a2, $zero, $zero
    /* 17630 801A05A8 80AB0834 */  ori        $t0, $zero, 0xAB80
    /* 17634 801A05AC DD02C292 */  lbu        $v0, 0x2DD($s6)
    /* 17638 801A05B0 21286000 */  addu       $a1, $v1, $zero
    /* 1763C 801A05B4 FF004430 */  andi       $a0, $v0, 0xFF
    /* 17640 801A05B8 2110A602 */  addu       $v0, $s5, $a2
  .L801A05BC:
    /* 17644 801A05BC 21384800 */  addu       $a3, $v0, $t0
    /* 17648 801A05C0 0000E390 */  lbu        $v1, 0x0($a3)
    /* 1764C 801A05C4 00000000 */  nop
    /* 17650 801A05C8 C0100300 */  sll        $v0, $v1, 3
    /* 17654 801A05CC 21104300 */  addu       $v0, $v0, $v1
    /* 17658 801A05D0 80100200 */  sll        $v0, $v0, 2
    /* 1765C 801A05D4 2118A202 */  addu       $v1, $s5, $v0
    /* 17660 801A05D8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17664 801A05DC 21086100 */  addu       $at, $v1, $at
    /* 17668 801A05E0 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 1766C 801A05E4 00000000 */  nop
    /* 17670 801A05E8 B6FF4410 */  beq        $v0, $a0, .L801A04C4
    /* 17674 801A05EC 00000000 */   nop
    /* 17678 801A05F0 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1767C 801A05F4 2A10C500 */  slt        $v0, $a2, $a1
    /* 17680 801A05F8 F0FF4014 */  bnez       $v0, .L801A05BC
    /* 17684 801A05FC 2110A602 */   addu      $v0, $s5, $a2
  .L801A0600:
    /* 17688 801A0600 1E80033C */  lui        $v1, %hi(D_801D8C6C)
    /* 1768C 801A0604 6C8C638C */  lw         $v1, %lo(D_801D8C6C)($v1)
  .L801A0608:
    /* 17690 801A0608 10000224 */  addiu      $v0, $zero, 0x10
    /* 17694 801A060C 0B006210 */  beq        $v1, $v0, .L801A063C
    /* 17698 801A0610 00000000 */   nop
    /* 1769C 801A0614 0100013C */  lui        $at, (0x10000 >> 16)
    /* 176A0 801A0618 2108A102 */  addu       $at, $s5, $at
    /* 176A4 801A061C 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 176A8 801A0620 00000000 */  nop
    /* 176AC 801A0624 0F004230 */  andi       $v0, $v0, 0xF
    /* 176B0 801A0628 D0064014 */  bnez       $v0, .L801A216C
    /* 176B4 801A062C 21100000 */   addu      $v0, $zero, $zero
    /* 176B8 801A0630 80000224 */  addiu      $v0, $zero, 0x80
    /* 176BC 801A0634 CD066214 */  bne        $v1, $v0, .L801A216C
    /* 176C0 801A0638 21100000 */   addu      $v0, $zero, $zero
  .L801A063C:
    /* 176C4 801A063C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 176C8 801A0640 2108A102 */  addu       $at, $s5, $at
    /* 176CC 801A0644 208F2490 */  lbu        $a0, -0x70E0($at)
    /* 176D0 801A0648 1E80033C */  lui        $v1, %hi(D_801DA05C)
    /* 176D4 801A064C 5CA0638C */  lw         $v1, %lo(D_801DA05C)($v1)
    /* 176D8 801A0650 01000224 */  addiu      $v0, $zero, 0x1
    /* 176DC 801A0654 1E80013C */  lui        $at, %hi(D_801D8B17)
    /* 176E0 801A0658 178B22A0 */  sb         $v0, %lo(D_801D8B17)($at)
    /* 176E4 801A065C 05006414 */  bne        $v1, $a0, .L801A0674
    /* 176E8 801A0660 1E000224 */   addiu     $v0, $zero, 0x1E
    /* 176EC 801A0664 88AD020C */  jal        func_800AB620
    /* 176F0 801A0668 28050424 */   addiu     $a0, $zero, 0x528
    /* 176F4 801A066C D0850608 */  j          .L801A1740
    /* 176F8 801A0670 02000224 */   addiu     $v0, $zero, 0x2
  .L801A0674:
    /* 176FC 801A0674 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17700 801A0678 2108A102 */  addu       $at, $s5, $at
    /* 17704 801A067C DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 17708 801A0680 5B880608 */  j          .L801A216C
    /* 1770C 801A0684 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801A0688
    /* 17710 801A0688 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17714 801A068C 2108A102 */  addu       $at, $s5, $at
    /* 17718 801A0690 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 1771C 801A0694 00000000 */  nop
    /* 17720 801A0698 0F004230 */  andi       $v0, $v0, 0xF
    /* 17724 801A069C 02004010 */  beqz       $v0, .L801A06A8
    /* 17728 801A06A0 21200000 */   addu      $a0, $zero, $zero
    /* 1772C 801A06A4 01000424 */  addiu      $a0, $zero, 0x1
  .L801A06A8:
    /* 17730 801A06A8 288B060C */  jal        func_801A2CA0
    /* 17734 801A06AC 21280000 */   addu      $a1, $zero, $zero
    /* 17738 801A06B0 01000424 */  addiu      $a0, $zero, 0x1
    /* 1773C 801A06B4 E48B060C */  jal        func_801A2F90
    /* 17740 801A06B8 21280000 */   addu      $a1, $zero, $zero
    /* 17744 801A06BC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17748 801A06C0 2108A102 */  addu       $at, $s5, $at
    /* 1774C 801A06C4 1F8F2490 */  lbu        $a0, -0x70E1($at)
    /* 17750 801A06C8 21280000 */  addu       $a1, $zero, $zero
    /* 17754 801A06CC 0F008430 */  andi       $a0, $a0, 0xF
    /* 17758 801A06D0 3D8C060C */  jal        func_801A30F4
    /* 1775C 801A06D4 2B200400 */   sltu      $a0, $zero, $a0
    /* 17760 801A06D8 21200000 */  addu       $a0, $zero, $zero
    /* 17764 801A06DC 1B8D060C */  jal        func_801A346C
    /* 17768 801A06E0 21280000 */   addu      $a1, $zero, $zero
    /* 1776C 801A06E4 01000224 */  addiu      $v0, $zero, 0x1
    /* 17770 801A06E8 1D80013C */  lui        $at, %hi(D_801D1F60)
    /* 17774 801A06EC 601F22A0 */  sb         $v0, %lo(D_801D1F60)($at)
    /* 17778 801A06F0 1D80013C */  lui        $at, %hi(D_801D1F61)
    /* 1777C 801A06F4 611F20A0 */  sb         $zero, %lo(D_801D1F61)($at)
    /* 17780 801A06F8 628D060C */  jal        func_801A3588
    /* 17784 801A06FC 00000000 */   nop
    /* 17788 801A0700 1E80033C */  lui        $v1, %hi(D_801D8A8E)
    /* 1778C 801A0704 8E8A6324 */  addiu      $v1, $v1, %lo(D_801D8A8E)
    /* 17790 801A0708 00006290 */  lbu        $v0, 0x0($v1)
    /* 17794 801A070C 00000000 */  nop
    /* 17798 801A0710 F0004230 */  andi       $v0, $v0, 0xF0
    /* 1779C 801A0714 1B93060C */  jal        func_801A4C6C
    /* 177A0 801A0718 000062A0 */   sb        $v0, 0x0($v1)
    /* 177A4 801A071C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 177A8 801A0720 2108A102 */  addu       $at, $s5, $at
    /* 177AC 801A0724 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 177B0 801A0728 00000000 */  nop
    /* 177B4 801A072C 0F004230 */  andi       $v0, $v0, 0xF
    /* 177B8 801A0730 21004014 */  bnez       $v0, .L801A07B8
    /* 177BC 801A0734 EB51053C */   lui       $a1, (0x51EB851F >> 16)
    /* 177C0 801A0738 1E80043C */  lui        $a0, %hi(D_801DA058)
    /* 177C4 801A073C 58A0848C */  lw         $a0, %lo(D_801DA058)($a0)
    /* 177C8 801A0740 1F85A534 */  ori        $a1, $a1, (0x51EB851F & 0xFFFF)
    /* 177CC 801A0744 01008424 */  addiu      $a0, $a0, 0x1
    /* 177D0 801A0748 18008500 */  mult       $a0, $a1
    /* 177D4 801A074C C3170400 */  sra        $v0, $a0, 31
    /* 177D8 801A0750 10480000 */  mfhi       $t1
    /* 177DC 801A0754 C3190900 */  sra        $v1, $t1, 7
    /* 177E0 801A0758 23186200 */  subu       $v1, $v1, $v0
    /* 177E4 801A075C 40100300 */  sll        $v0, $v1, 1
    /* 177E8 801A0760 21104300 */  addu       $v0, $v0, $v1
    /* 177EC 801A0764 C0100200 */  sll        $v0, $v0, 3
    /* 177F0 801A0768 21104300 */  addu       $v0, $v0, $v1
    /* 177F4 801A076C 00110200 */  sll        $v0, $v0, 4
    /* 177F8 801A0770 23208200 */  subu       $a0, $a0, $v0
    /* 177FC 801A0774 18008500 */  mult       $a0, $a1
    /* 17800 801A0778 C3170400 */  sra        $v0, $a0, 31
    /* 17804 801A077C 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 17808 801A0780 58A024AC */  sw         $a0, %lo(D_801DA058)($at)
    /* 1780C 801A0784 10480000 */  mfhi       $t1
    /* 17810 801A0788 83190900 */  sra        $v1, $t1, 6
    /* 17814 801A078C 23186200 */  subu       $v1, $v1, $v0
    /* 17818 801A0790 40100300 */  sll        $v0, $v1, 1
    /* 1781C 801A0794 21104300 */  addu       $v0, $v0, $v1
    /* 17820 801A0798 C0100200 */  sll        $v0, $v0, 3
    /* 17824 801A079C 21104300 */  addu       $v0, $v0, $v1
    /* 17828 801A07A0 C0100200 */  sll        $v0, $v0, 3
    /* 1782C 801A07A4 04008214 */  bne        $a0, $v0, .L801A07B8
    /* 17830 801A07A8 00000000 */   nop
    /* 17834 801A07AC 0174000C */  jal        func_8001D004
    /* 17838 801A07B0 73306424 */   addiu     $a0, $v1, 0x3073
    /* 1783C 801A07B4 7460A2AE */  sw         $v0, 0x6074($s5)
  .L801A07B8:
    /* 17840 801A07B8 DE02C492 */  lbu        $a0, 0x2DE($s6)
    /* 17844 801A07BC 2EBA053C */  lui        $a1, (0xBA2E8BA3 >> 16)
    /* 17848 801A07C0 A38BA534 */  ori        $a1, $a1, (0xBA2E8BA3 & 0xFFFF)
    /* 1784C 801A07C4 FF008430 */  andi       $a0, $a0, 0xFF
    /* 17850 801A07C8 19008500 */  multu      $a0, $a1
    /* 17854 801A07CC 3C5EA0A2 */  sb         $zero, 0x5E3C($s5)
    /* 17858 801A07D0 9002C28E */  lw         $v0, 0x290($s6)
    /* 1785C 801A07D4 10400000 */  mfhi       $t0
    /* 17860 801A07D8 DE02C392 */  lbu        $v1, 0x2DE($s6)
    /* 17864 801A07DC 10004230 */  andi       $v0, $v0, 0x10
    /* 17868 801A07E0 19006500 */  multu      $v1, $a1
    /* 1786C 801A07E4 645EA2A2 */  sb         $v0, 0x5E64($s5)
    /* 17870 801A07E8 C2180800 */  srl        $v1, $t0, 3
    /* 17874 801A07EC 40100300 */  sll        $v0, $v1, 1
    /* 17878 801A07F0 21104300 */  addu       $v0, $v0, $v1
    /* 1787C 801A07F4 80100200 */  sll        $v0, $v0, 2
    /* 17880 801A07F8 23104300 */  subu       $v0, $v0, $v1
    /* 17884 801A07FC 23208200 */  subu       $a0, $a0, $v0
    /* 17888 801A0800 FF008430 */  andi       $a0, $a0, 0xFF
    /* 1788C 801A0804 40110400 */  sll        $v0, $a0, 5
    /* 17890 801A0808 23104400 */  subu       $v0, $v0, $a0
    /* 17894 801A080C 705EA2A6 */  sh         $v0, 0x5E70($s5)
    /* 17898 801A0810 10280000 */  mfhi       $a1
    /* 1789C 801A0814 C2180500 */  srl        $v1, $a1, 3
    /* 178A0 801A0818 FF006330 */  andi       $v1, $v1, 0xFF
    /* 178A4 801A081C 40100300 */  sll        $v0, $v1, 1
    /* 178A8 801A0820 21104300 */  addu       $v0, $v0, $v1
    /* 178AC 801A0824 80100200 */  sll        $v0, $v0, 2
    /* 178B0 801A0828 23104300 */  subu       $v0, $v0, $v1
    /* 178B4 801A082C 1E80033C */  lui        $v1, %hi(D_801DA331)
    /* 178B8 801A0830 31A36390 */  lbu        $v1, %lo(D_801DA331)($v1)
    /* 178BC 801A0834 40100200 */  sll        $v0, $v0, 1
    /* 178C0 801A0838 C0006330 */  andi       $v1, $v1, 0xC0
    /* 178C4 801A083C 10006014 */  bnez       $v1, .L801A0880
    /* 178C8 801A0840 725EA2A6 */   sh        $v0, 0x5E72($s5)
    /* 178CC 801A0844 54000424 */  addiu      $a0, $zero, 0x54
    /* 178D0 801A0848 01000524 */  addiu      $a1, $zero, 0x1
    /* 178D4 801A084C 02BF010C */  jal        func_8006FC08
    /* 178D8 801A0850 0D000624 */   addiu     $a2, $zero, 0xD
    /* 178DC 801A0854 10000224 */  addiu      $v0, $zero, 0x10
    /* 178E0 801A0858 1E80013C */  lui        $at, %hi(D_801D8A8A)
    /* 178E4 801A085C 8A8A22A0 */  sb         $v0, %lo(D_801D8A8A)($at)
    /* 178E8 801A0860 60000224 */  addiu      $v0, $zero, 0x60
    /* 178EC 801A0864 1E80013C */  lui        $at, %hi(D_801D8A8B)
    /* 178F0 801A0868 8B8A22A0 */  sb         $v0, %lo(D_801D8A8B)($at)
    /* 178F4 801A086C 80000224 */  addiu      $v0, $zero, 0x80
    /* 178F8 801A0870 1E80013C */  lui        $at, %hi(D_801D8A8C)
    /* 178FC 801A0874 8C8A22A0 */  sb         $v0, %lo(D_801D8A8C)($at)
    /* 17900 801A0878 2B820608 */  j          .L801A08AC
    /* 17904 801A087C 00000000 */   nop
  .L801A0880:
    /* 17908 801A0880 56000424 */  addiu      $a0, $zero, 0x56
    /* 1790C 801A0884 01000524 */  addiu      $a1, $zero, 0x1
    /* 17910 801A0888 02BF010C */  jal        func_8006FC08
    /* 17914 801A088C 0D000624 */   addiu     $a2, $zero, 0xD
    /* 17918 801A0890 80000224 */  addiu      $v0, $zero, 0x80
    /* 1791C 801A0894 1E80013C */  lui        $at, %hi(D_801D8A8A)
    /* 17920 801A0898 8A8A22A0 */  sb         $v0, %lo(D_801D8A8A)($at)
    /* 17924 801A089C 1E80013C */  lui        $at, %hi(D_801D8A8B)
    /* 17928 801A08A0 8B8A22A0 */  sb         $v0, %lo(D_801D8A8B)($at)
    /* 1792C 801A08A4 1E80013C */  lui        $at, %hi(D_801D8A8C)
    /* 17930 801A08A8 8C8A20A0 */  sb         $zero, %lo(D_801D8A8C)($at)
  .L801A08AC:
    /* 17934 801A08AC F78F060C */  jal        func_801A3FDC
    /* 17938 801A08B0 00000000 */   nop
    /* 1793C 801A08B4 1E80013C */  lui        $at, %hi(D_801D8C6C)
    /* 17940 801A08B8 6C8C22AC */  sw         $v0, %lo(D_801D8C6C)($at)
    /* 17944 801A08BC 20000324 */  addiu      $v1, $zero, 0x20
    /* 17948 801A08C0 A7004314 */  bne        $v0, $v1, .L801A0B60
    /* 1794C 801A08C4 00000000 */   nop
    /* 17950 801A08C8 1E80053C */  lui        $a1, %hi(D_801D8B17)
    /* 17954 801A08CC 178BA590 */  lbu        $a1, %lo(D_801D8B17)($a1)
    /* 17958 801A08D0 00000000 */  nop
    /* 1795C 801A08D4 0500A010 */  beqz       $a1, .L801A08EC
    /* 17960 801A08D8 01000224 */   addiu     $v0, $zero, 0x1
    /* 17964 801A08DC 7C00A210 */  beq        $a1, $v0, .L801A0AD0
    /* 17968 801A08E0 21100000 */   addu      $v0, $zero, $zero
    /* 1796C 801A08E4 5B880608 */  j          .L801A216C
    /* 17970 801A08E8 00000000 */   nop
  .L801A08EC:
    /* 17974 801A08EC 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 17978 801A08F0 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 1797C 801A08F4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17980 801A08F8 2108A102 */  addu       $at, $s5, $at
    /* 17984 801A08FC 208F2390 */  lbu        $v1, -0x70E0($at)
    /* 17988 801A0900 00000000 */  nop
    /* 1798C 801A0904 2B104300 */  sltu       $v0, $v0, $v1
    /* 17990 801A0908 89004010 */  beqz       $v0, .L801A0B30
    /* 17994 801A090C 00000000 */   nop
    /* 17998 801A0910 88AD020C */  jal        func_800AB620
    /* 1799C 801A0914 28050424 */   addiu     $a0, $zero, 0x528
    /* 179A0 801A0918 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 179A4 801A091C 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 179A8 801A0920 1E80033C */  lui        $v1, %hi(D_801D8A70)
    /* 179AC 801A0924 708A6390 */  lbu        $v1, %lo(D_801D8A70)($v1)
    /* 179B0 801A0928 01004224 */  addiu      $v0, $v0, 0x1
    /* 179B4 801A092C 2118A302 */  addu       $v1, $s5, $v1
    /* 179B8 801A0930 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 179BC 801A0934 5CA022AC */  sw         $v0, %lo(D_801DA05C)($at)
    /* 179C0 801A0938 0100013C */  lui        $at, (0x10000 >> 16)
    /* 179C4 801A093C 21086100 */  addu       $at, $v1, $at
    /* 179C8 801A0940 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 179CC 801A0944 00000000 */  nop
    /* 179D0 801A0948 C0100300 */  sll        $v0, $v1, 3
    /* 179D4 801A094C 21104300 */  addu       $v0, $v0, $v1
    /* 179D8 801A0950 80100200 */  sll        $v0, $v0, 2
    /* 179DC 801A0954 2120A202 */  addu       $a0, $s5, $v0
    /* 179E0 801A0958 0100013C */  lui        $at, (0x10000 >> 16)
    /* 179E4 801A095C 21088100 */  addu       $at, $a0, $at
    /* 179E8 801A0960 248F2290 */  lbu        $v0, -0x70DC($at)
    /* 179EC 801A0964 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 179F0 801A0968 C0004230 */  andi       $v0, $v0, 0xC0
    /* 179F4 801A096C 10004310 */  beq        $v0, $v1, .L801A09B0
    /* 179F8 801A0970 80AB0534 */   ori       $a1, $zero, 0xAB80
    /* 179FC 801A0974 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17A00 801A0978 21088100 */  addu       $at, $a0, $at
    /* 17A04 801A097C 258F2690 */  lbu        $a2, -0x70DB($at)
    /* 17A08 801A0980 1E80013C */  lui        $at, %hi(D_801D8DC0)
    /* 17A0C 801A0984 21082600 */  addu       $at, $at, $a2
    /* 17A10 801A0988 C08D20A0 */  sb         $zero, %lo(D_801D8DC0)($at)
    /* 17A14 801A098C 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 17A18 801A0990 21082600 */  addu       $at, $at, $a2
    /* 17A1C 801A0994 88AD20A0 */  sb         $zero, %lo(D_801DAD88)($at)
    /* 17A20 801A0998 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 17A24 801A099C 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 17A28 801A09A0 00000000 */  nop
    /* 17A2C 801A09A4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 17A30 801A09A8 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 17A34 801A09AC 5CA022AC */  sw         $v0, %lo(D_801DA05C)($at)
  .L801A09B0:
    /* 17A38 801A09B0 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 17A3C 801A09B4 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 17A40 801A09B8 00000000 */  nop
    /* 17A44 801A09BC 2110A202 */  addu       $v0, $s5, $v0
    /* 17A48 801A09C0 21104500 */  addu       $v0, $v0, $a1
    /* 17A4C 801A09C4 00004390 */  lbu        $v1, 0x0($v0)
    /* 17A50 801A09C8 00000000 */  nop
    /* 17A54 801A09CC C0100300 */  sll        $v0, $v1, 3
    /* 17A58 801A09D0 21104300 */  addu       $v0, $v0, $v1
    /* 17A5C 801A09D4 80100200 */  sll        $v0, $v0, 2
    /* 17A60 801A09D8 1E80033C */  lui        $v1, %hi(D_801DA331)
    /* 17A64 801A09DC 31A36390 */  lbu        $v1, %lo(D_801DA331)($v1)
    /* 17A68 801A09E0 2110A202 */  addu       $v0, $s5, $v0
    /* 17A6C 801A09E4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17A70 801A09E8 21084100 */  addu       $at, $v0, $at
    /* 17A74 801A09EC 248F23A0 */  sb         $v1, -0x70DC($at)
    /* 17A78 801A09F0 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 17A7C 801A09F4 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 17A80 801A09F8 00000000 */  nop
    /* 17A84 801A09FC 2110A202 */  addu       $v0, $s5, $v0
    /* 17A88 801A0A00 21104500 */  addu       $v0, $v0, $a1
    /* 17A8C 801A0A04 00004390 */  lbu        $v1, 0x0($v0)
    /* 17A90 801A0A08 00000000 */  nop
    /* 17A94 801A0A0C C0100300 */  sll        $v0, $v1, 3
    /* 17A98 801A0A10 21104300 */  addu       $v0, $v0, $v1
    /* 17A9C 801A0A14 80100200 */  sll        $v0, $v0, 2
    /* 17AA0 801A0A18 DE02C392 */  lbu        $v1, 0x2DE($s6)
    /* 17AA4 801A0A1C 2110A202 */  addu       $v0, $s5, $v0
    /* 17AA8 801A0A20 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17AAC 801A0A24 21084100 */  addu       $at, $v0, $at
    /* 17AB0 801A0A28 258F23A0 */  sb         $v1, -0x70DB($at)
    /* 17AB4 801A0A2C DE02C292 */  lbu        $v0, 0x2DE($s6)
    /* 17AB8 801A0A30 01000324 */  addiu      $v1, $zero, 0x1
    /* 17ABC 801A0A34 FF004230 */  andi       $v0, $v0, 0xFF
    /* 17AC0 801A0A38 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 17AC4 801A0A3C 21082200 */  addu       $at, $at, $v0
    /* 17AC8 801A0A40 88AD23A0 */  sb         $v1, %lo(D_801DAD88)($at)
    /* 17ACC 801A0A44 DE02C292 */  lbu        $v0, 0x2DE($s6)
    /* 17AD0 801A0A48 00000000 */  nop
    /* 17AD4 801A0A4C FF004230 */  andi       $v0, $v0, 0xFF
    /* 17AD8 801A0A50 1E80013C */  lui        $at, %hi(D_801D8DC0)
    /* 17ADC 801A0A54 21082200 */  addu       $at, $at, $v0
    /* 17AE0 801A0A58 C08D23A0 */  sb         $v1, %lo(D_801D8DC0)($at)
    /* 17AE4 801A0A5C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17AE8 801A0A60 2108A102 */  addu       $at, $s5, $at
    /* 17AEC 801A0A64 208F2290 */  lbu        $v0, -0x70E0($at)
    /* 17AF0 801A0A68 1E80043C */  lui        $a0, %hi(D_801DA05C)
    /* 17AF4 801A0A6C 5CA0848C */  lw         $a0, %lo(D_801DA05C)($a0)
    /* 17AF8 801A0A70 1E80013C */  lui        $at, %hi(D_801D8B17)
    /* 17AFC 801A0A74 178B23A0 */  sb         $v1, %lo(D_801D8B17)($at)
    /* 17B00 801A0A78 99038214 */  bne        $a0, $v0, .L801A18E0
    /* 17B04 801A0A7C 0A000224 */   addiu     $v0, $zero, 0xA
    /* 17B08 801A0A80 1E80033C */  lui        $v1, %hi(D_801D8A70)
    /* 17B0C 801A0A84 708A6390 */  lbu        $v1, %lo(D_801D8A70)($v1)
    /* 17B10 801A0A88 00000000 */  nop
    /* 17B14 801A0A8C 2B106400 */  sltu       $v0, $v1, $a0
    /* 17B18 801A0A90 05004014 */  bnez       $v0, .L801A0AA8
    /* 17B1C 801A0A94 02000224 */   addiu     $v0, $zero, 0x2
    /* 17B20 801A0A98 FFFF6224 */  addiu      $v0, $v1, -0x1
    /* 17B24 801A0A9C 1E80013C */  lui        $at, %hi(D_801D8A70)
    /* 17B28 801A0AA0 708A22A0 */  sb         $v0, %lo(D_801D8A70)($at)
    /* 17B2C 801A0AA4 02000224 */  addiu      $v0, $zero, 0x2
  .L801A0AA8:
    /* 17B30 801A0AA8 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 17B34 801A0AAC 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
    /* 17B38 801A0AB0 32000224 */  addiu      $v0, $zero, 0x32
    /* 17B3C 801A0AB4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17B40 801A0AB8 2108A102 */  addu       $at, $s5, $at
    /* 17B44 801A0ABC DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 17B48 801A0AC0 628D060C */  jal        func_801A3588
    /* 17B4C 801A0AC4 00000000 */   nop
    /* 17B50 801A0AC8 5B880608 */  j          .L801A216C
    /* 17B54 801A0ACC 21100000 */   addu      $v0, $zero, $zero
  .L801A0AD0:
    /* 17B58 801A0AD0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17B5C 801A0AD4 2108A102 */  addu       $at, $s5, $at
    /* 17B60 801A0AD8 208F2390 */  lbu        $v1, -0x70E0($at)
    /* 17B64 801A0ADC 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 17B68 801A0AE0 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 17B6C 801A0AE4 00000000 */  nop
    /* 17B70 801A0AE8 2A104300 */  slt        $v0, $v0, $v1
    /* 17B74 801A0AEC 9F054010 */  beqz       $v0, .L801A216C
    /* 17B78 801A0AF0 21100000 */   addu      $v0, $zero, $zero
    /* 17B7C 801A0AF4 DD02C392 */  lbu        $v1, 0x2DD($s6)
    /* 17B80 801A0AF8 00000000 */  nop
    /* 17B84 801A0AFC FF006430 */  andi       $a0, $v1, 0xFF
    /* 17B88 801A0B00 1E80013C */  lui        $at, %hi(D_801D8DC0)
    /* 17B8C 801A0B04 21082400 */  addu       $at, $at, $a0
    /* 17B90 801A0B08 C08D2290 */  lbu        $v0, %lo(D_801D8DC0)($at)
    /* 17B94 801A0B0C 00000000 */  nop
    /* 17B98 801A0B10 07004510 */  beq        $v0, $a1, .L801A0B30
    /* 17B9C 801A0B14 00000000 */   nop
    /* 17BA0 801A0B18 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 17BA4 801A0B1C 21082400 */  addu       $at, $at, $a0
    /* 17BA8 801A0B20 88AD2290 */  lbu        $v0, %lo(D_801DAD88)($at)
    /* 17BAC 801A0B24 00000000 */  nop
    /* 17BB0 801A0B28 05004010 */  beqz       $v0, .L801A0B40
    /* 17BB4 801A0B2C 00000000 */   nop
  .L801A0B30:
    /* 17BB8 801A0B30 88AD020C */  jal        func_800AB620
    /* 17BBC 801A0B34 12050424 */   addiu     $a0, $zero, 0x512
    /* 17BC0 801A0B38 5B880608 */  j          .L801A216C
    /* 17BC4 801A0B3C 21100000 */   addu      $v0, $zero, $zero
  .L801A0B40:
    /* 17BC8 801A0B40 6688060C */  jal        func_801A2198
    /* 17BCC 801A0B44 DE02C3A2 */   sb        $v1, 0x2DE($s6)
    /* 17BD0 801A0B48 1E80013C */  lui        $at, %hi(D_801D8B17)
    /* 17BD4 801A0B4C 178B20A0 */  sb         $zero, %lo(D_801D8B17)($at)
    /* 17BD8 801A0B50 88AD020C */  jal        func_800AB620
    /* 17BDC 801A0B54 28050424 */   addiu     $a0, $zero, 0x528
    /* 17BE0 801A0B58 5B880608 */  j          .L801A216C
    /* 17BE4 801A0B5C 21100000 */   addu      $v0, $zero, $zero
  .L801A0B60:
    /* 17BE8 801A0B60 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 17BEC 801A0B64 A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 17BF0 801A0B68 40000224 */  addiu      $v0, $zero, 0x40
    /* 17BF4 801A0B6C 7F056214 */  bne        $v1, $v0, .L801A216C
    /* 17BF8 801A0B70 21100000 */   addu      $v0, $zero, $zero
    /* 17BFC 801A0B74 88AD020C */  jal        func_800AB620
    /* 17C00 801A0B78 29050424 */   addiu     $a0, $zero, 0x529
    /* 17C04 801A0B7C 1E80033C */  lui        $v1, %hi(D_801D8B17)
    /* 17C08 801A0B80 178B6390 */  lbu        $v1, %lo(D_801D8B17)($v1)
    /* 17C0C 801A0B84 00000000 */  nop
    /* 17C10 801A0B88 05006010 */  beqz       $v1, .L801A0BA0
    /* 17C14 801A0B8C 01000224 */   addiu     $v0, $zero, 0x1
    /* 17C18 801A0B90 57006210 */  beq        $v1, $v0, .L801A0CF0
    /* 17C1C 801A0B94 21100000 */   addu      $v0, $zero, $zero
    /* 17C20 801A0B98 5B880608 */  j          .L801A216C
    /* 17C24 801A0B9C 00000000 */   nop
  .L801A0BA0:
    /* 17C28 801A0BA0 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 17C2C 801A0BA4 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 17C30 801A0BA8 00000000 */  nop
    /* 17C34 801A0BAC 4C004010 */  beqz       $v0, .L801A0CE0
    /* 17C38 801A0BB0 01000224 */   addiu     $v0, $zero, 0x1
    /* 17C3C 801A0BB4 88AD020C */  jal        func_800AB620
    /* 17C40 801A0BB8 29050424 */   addiu     $a0, $zero, 0x529
    /* 17C44 801A0BBC 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 17C48 801A0BC0 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 17C4C 801A0BC4 00000000 */  nop
    /* 17C50 801A0BC8 2110A202 */  addu       $v0, $s5, $v0
    /* 17C54 801A0BCC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17C58 801A0BD0 21084100 */  addu       $at, $v0, $at
    /* 17C5C 801A0BD4 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 17C60 801A0BD8 00000000 */  nop
    /* 17C64 801A0BDC C0100300 */  sll        $v0, $v1, 3
    /* 17C68 801A0BE0 21104300 */  addu       $v0, $v0, $v1
    /* 17C6C 801A0BE4 80100200 */  sll        $v0, $v0, 2
    /* 17C70 801A0BE8 2120A202 */  addu       $a0, $s5, $v0
    /* 17C74 801A0BEC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17C78 801A0BF0 21088100 */  addu       $at, $a0, $at
    /* 17C7C 801A0BF4 248F2290 */  lbu        $v0, -0x70DC($at)
    /* 17C80 801A0BF8 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 17C84 801A0BFC C0004230 */  andi       $v0, $v0, 0xC0
    /* 17C88 801A0C00 33004310 */  beq        $v0, $v1, .L801A0CD0
    /* 17C8C 801A0C04 80AB0534 */   ori       $a1, $zero, 0xAB80
    /* 17C90 801A0C08 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17C94 801A0C0C 21088100 */  addu       $at, $a0, $at
    /* 17C98 801A0C10 258F2690 */  lbu        $a2, -0x70DB($at)
    /* 17C9C 801A0C14 1E80013C */  lui        $at, %hi(D_801D8DC0)
    /* 17CA0 801A0C18 21082600 */  addu       $at, $at, $a2
    /* 17CA4 801A0C1C C08D20A0 */  sb         $zero, %lo(D_801D8DC0)($at)
    /* 17CA8 801A0C20 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 17CAC 801A0C24 21082600 */  addu       $at, $at, $a2
    /* 17CB0 801A0C28 88AD20A0 */  sb         $zero, %lo(D_801DAD88)($at)
    /* 17CB4 801A0C2C 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 17CB8 801A0C30 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 17CBC 801A0C34 00000000 */  nop
    /* 17CC0 801A0C38 2110A202 */  addu       $v0, $s5, $v0
    /* 17CC4 801A0C3C 21104500 */  addu       $v0, $v0, $a1
    /* 17CC8 801A0C40 00004390 */  lbu        $v1, 0x0($v0)
    /* 17CCC 801A0C44 FF000424 */  addiu      $a0, $zero, 0xFF
    /* 17CD0 801A0C48 C0100300 */  sll        $v0, $v1, 3
    /* 17CD4 801A0C4C 21104300 */  addu       $v0, $v0, $v1
    /* 17CD8 801A0C50 80100200 */  sll        $v0, $v0, 2
    /* 17CDC 801A0C54 2110A202 */  addu       $v0, $s5, $v0
    /* 17CE0 801A0C58 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17CE4 801A0C5C 21084100 */  addu       $at, $v0, $at
    /* 17CE8 801A0C60 248F24A0 */  sb         $a0, -0x70DC($at)
    /* 17CEC 801A0C64 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 17CF0 801A0C68 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 17CF4 801A0C6C 00000000 */  nop
    /* 17CF8 801A0C70 2110A202 */  addu       $v0, $s5, $v0
    /* 17CFC 801A0C74 21104500 */  addu       $v0, $v0, $a1
    /* 17D00 801A0C78 00004390 */  lbu        $v1, 0x0($v0)
    /* 17D04 801A0C7C 00000000 */  nop
    /* 17D08 801A0C80 C0100300 */  sll        $v0, $v1, 3
    /* 17D0C 801A0C84 21104300 */  addu       $v0, $v0, $v1
    /* 17D10 801A0C88 80100200 */  sll        $v0, $v0, 2
    /* 17D14 801A0C8C 2110A202 */  addu       $v0, $s5, $v0
    /* 17D18 801A0C90 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17D1C 801A0C94 21084100 */  addu       $at, $v0, $at
    /* 17D20 801A0C98 258F24A0 */  sb         $a0, -0x70DB($at)
    /* 17D24 801A0C9C 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 17D28 801A0CA0 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 17D2C 801A0CA4 2120C000 */  addu       $a0, $a2, $zero
    /* 17D30 801A0CA8 DD02C4A2 */  sb         $a0, 0x2DD($s6)
    /* 17D34 801A0CAC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 17D38 801A0CB0 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 17D3C 801A0CB4 5CA022AC */  sw         $v0, %lo(D_801DA05C)($at)
    /* 17D40 801A0CB8 7592060C */  jal        func_801A49D4
    /* 17D44 801A0CBC 00000000 */   nop
    /* 17D48 801A0CC0 1E80013C */  lui        $at, %hi(D_801DA331)
    /* 17D4C 801A0CC4 31A322A0 */  sb         $v0, %lo(D_801DA331)($at)
    /* 17D50 801A0CC8 38830608 */  j          .L801A0CE0
    /* 17D54 801A0CCC 01000224 */   addiu     $v0, $zero, 0x1
  .L801A0CD0:
    /* 17D58 801A0CD0 DE02C292 */  lbu        $v0, 0x2DE($s6)
    /* 17D5C 801A0CD4 00000000 */  nop
    /* 17D60 801A0CD8 DD02C2A2 */  sb         $v0, 0x2DD($s6)
    /* 17D64 801A0CDC 01000224 */  addiu      $v0, $zero, 0x1
  .L801A0CE0:
    /* 17D68 801A0CE0 1E80013C */  lui        $at, %hi(D_801D8B17)
    /* 17D6C 801A0CE4 178B22A0 */  sb         $v0, %lo(D_801D8B17)($at)
    /* 17D70 801A0CE8 38860608 */  j          .L801A18E0
    /* 17D74 801A0CEC 0A000224 */   addiu     $v0, $zero, 0xA
  .L801A0CF0:
    /* 17D78 801A0CF0 88AD020C */  jal        func_800AB620
    /* 17D7C 801A0CF4 29050424 */   addiu     $a0, $zero, 0x529
    /* 17D80 801A0CF8 DE02C392 */  lbu        $v1, 0x2DE($s6)
    /* 17D84 801A0CFC 0A000224 */  addiu      $v0, $zero, 0xA
    /* 17D88 801A0D00 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17D8C 801A0D04 2108A102 */  addu       $at, $s5, $at
    /* 17D90 801A0D08 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 17D94 801A0D0C 5A880608 */  j          .L801A2168
    /* 17D98 801A0D10 DD02C3A2 */   sb        $v1, 0x2DD($s6)
  jlabel .L801A0D14
    /* 17D9C 801A0D14 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17DA0 801A0D18 2108A102 */  addu       $at, $s5, $at
    /* 17DA4 801A0D1C 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 17DA8 801A0D20 00000000 */  nop
    /* 17DAC 801A0D24 0F004230 */  andi       $v0, $v0, 0xF
    /* 17DB0 801A0D28 02004010 */  beqz       $v0, .L801A0D34
    /* 17DB4 801A0D2C 21200000 */   addu      $a0, $zero, $zero
    /* 17DB8 801A0D30 01000424 */  addiu      $a0, $zero, 0x1
  .L801A0D34:
    /* 17DBC 801A0D34 288B060C */  jal        func_801A2CA0
    /* 17DC0 801A0D38 21280000 */   addu      $a1, $zero, $zero
    /* 17DC4 801A0D3C 01000424 */  addiu      $a0, $zero, 0x1
    /* 17DC8 801A0D40 E48B060C */  jal        func_801A2F90
    /* 17DCC 801A0D44 21280000 */   addu      $a1, $zero, $zero
    /* 17DD0 801A0D48 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17DD4 801A0D4C 2108A102 */  addu       $at, $s5, $at
    /* 17DD8 801A0D50 1F8F2490 */  lbu        $a0, -0x70E1($at)
    /* 17DDC 801A0D54 21280000 */  addu       $a1, $zero, $zero
    /* 17DE0 801A0D58 0F008430 */  andi       $a0, $a0, 0xF
    /* 17DE4 801A0D5C 3D8C060C */  jal        func_801A30F4
    /* 17DE8 801A0D60 2B200400 */   sltu      $a0, $zero, $a0
    /* 17DEC 801A0D64 21200000 */  addu       $a0, $zero, $zero
    /* 17DF0 801A0D68 1B8D060C */  jal        func_801A346C
    /* 17DF4 801A0D6C 21280000 */   addu      $a1, $zero, $zero
    /* 17DF8 801A0D70 01001024 */  addiu      $s0, $zero, 0x1
    /* 17DFC 801A0D74 1D80013C */  lui        $at, %hi(D_801D1F60)
    /* 17E00 801A0D78 601F30A0 */  sb         $s0, %lo(D_801D1F60)($at)
    /* 17E04 801A0D7C 1D80013C */  lui        $at, %hi(D_801D1F61)
    /* 17E08 801A0D80 611F20A0 */  sb         $zero, %lo(D_801D1F61)($at)
    /* 17E0C 801A0D84 628D060C */  jal        func_801A3588
    /* 17E10 801A0D88 00000000 */   nop
    /* 17E14 801A0D8C DD02C292 */  lbu        $v0, 0x2DD($s6)
    /* 17E18 801A0D90 1E80013C */  lui        $at, %hi(D_801DA060)
    /* 17E1C 801A0D94 60A020AC */  sw         $zero, %lo(D_801DA060)($at)
    /* 17E20 801A0D98 1E80013C */  lui        $at, %hi(D_801DA064)
    /* 17E24 801A0D9C 64A020AC */  sw         $zero, %lo(D_801DA064)($at)
    /* 17E28 801A0DA0 FF004430 */  andi       $a0, $v0, 0xFF
    /* 17E2C 801A0DA4 1E80013C */  lui        $at, %hi(D_801D8DC0)
    /* 17E30 801A0DA8 21082400 */  addu       $at, $at, $a0
    /* 17E34 801A0DAC C08D2290 */  lbu        $v0, %lo(D_801D8DC0)($at)
    /* 17E38 801A0DB0 00000000 */  nop
    /* 17E3C 801A0DB4 7F004014 */  bnez       $v0, .L801A0FB4
    /* 17E40 801A0DB8 00000000 */   nop
    /* 17E44 801A0DBC 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 17E48 801A0DC0 21082400 */  addu       $at, $at, $a0
    /* 17E4C 801A0DC4 88AD2290 */  lbu        $v0, %lo(D_801DAD88)($at)
    /* 17E50 801A0DC8 00000000 */  nop
    /* 17E54 801A0DCC 79004014 */  bnez       $v0, .L801A0FB4
    /* 17E58 801A0DD0 00000000 */   nop
    /* 17E5C 801A0DD4 6688060C */  jal        func_801A2198
    /* 17E60 801A0DD8 00000000 */   nop
    /* 17E64 801A0DDC 1E80013C */  lui        $at, %hi(D_801D8A8F)
    /* 17E68 801A0DE0 8F8A30A0 */  sb         $s0, %lo(D_801D8A8F)($at)
    /* 17E6C 801A0DE4 7592060C */  jal        func_801A49D4
    /* 17E70 801A0DE8 21200000 */   addu      $a0, $zero, $zero
    /* 17E74 801A0DEC 1E80013C */  lui        $at, %hi(D_801DA331)
    /* 17E78 801A0DF0 31A322A0 */  sb         $v0, %lo(D_801DA331)($at)
    /* 17E7C 801A0DF4 C0004230 */  andi       $v0, $v0, 0xC0
    /* 17E80 801A0DF8 0C004014 */  bnez       $v0, .L801A0E2C
    /* 17E84 801A0DFC 80000224 */   addiu     $v0, $zero, 0x80
    /* 17E88 801A0E00 10000224 */  addiu      $v0, $zero, 0x10
    /* 17E8C 801A0E04 1E80013C */  lui        $at, %hi(D_801D8A8A)
    /* 17E90 801A0E08 8A8A22A0 */  sb         $v0, %lo(D_801D8A8A)($at)
    /* 17E94 801A0E0C 60000224 */  addiu      $v0, $zero, 0x60
    /* 17E98 801A0E10 1E80013C */  lui        $at, %hi(D_801D8A8B)
    /* 17E9C 801A0E14 8B8A22A0 */  sb         $v0, %lo(D_801D8A8B)($at)
    /* 17EA0 801A0E18 80000224 */  addiu      $v0, $zero, 0x80
    /* 17EA4 801A0E1C 1E80013C */  lui        $at, %hi(D_801D8A8C)
    /* 17EA8 801A0E20 8C8A22A0 */  sb         $v0, %lo(D_801D8A8C)($at)
    /* 17EAC 801A0E24 91830608 */  j          .L801A0E44
    /* 17EB0 801A0E28 00000000 */   nop
  .L801A0E2C:
    /* 17EB4 801A0E2C 1E80013C */  lui        $at, %hi(D_801D8A8A)
    /* 17EB8 801A0E30 8A8A22A0 */  sb         $v0, %lo(D_801D8A8A)($at)
    /* 17EBC 801A0E34 1E80013C */  lui        $at, %hi(D_801D8A8B)
    /* 17EC0 801A0E38 8B8A22A0 */  sb         $v0, %lo(D_801D8A8B)($at)
    /* 17EC4 801A0E3C 1E80013C */  lui        $at, %hi(D_801D8A8C)
    /* 17EC8 801A0E40 8C8A20A0 */  sb         $zero, %lo(D_801D8A8C)($at)
  .L801A0E44:
    /* 17ECC 801A0E44 88AD020C */  jal        func_800AB620
    /* 17ED0 801A0E48 28050424 */   addiu     $a0, $zero, 0x528
    /* 17ED4 801A0E4C 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 17ED8 801A0E50 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 17EDC 801A0E54 1E80033C */  lui        $v1, %hi(D_801D8A70)
    /* 17EE0 801A0E58 708A6390 */  lbu        $v1, %lo(D_801D8A70)($v1)
    /* 17EE4 801A0E5C 01004224 */  addiu      $v0, $v0, 0x1
    /* 17EE8 801A0E60 2118A302 */  addu       $v1, $s5, $v1
    /* 17EEC 801A0E64 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 17EF0 801A0E68 5CA022AC */  sw         $v0, %lo(D_801DA05C)($at)
    /* 17EF4 801A0E6C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17EF8 801A0E70 21086100 */  addu       $at, $v1, $at
    /* 17EFC 801A0E74 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 17F00 801A0E78 00000000 */  nop
    /* 17F04 801A0E7C C0100300 */  sll        $v0, $v1, 3
    /* 17F08 801A0E80 21104300 */  addu       $v0, $v0, $v1
    /* 17F0C 801A0E84 80100200 */  sll        $v0, $v0, 2
    /* 17F10 801A0E88 1E80033C */  lui        $v1, %hi(D_801DA331)
    /* 17F14 801A0E8C 31A36390 */  lbu        $v1, %lo(D_801DA331)($v1)
    /* 17F18 801A0E90 2110A202 */  addu       $v0, $s5, $v0
    /* 17F1C 801A0E94 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17F20 801A0E98 21084100 */  addu       $at, $v0, $at
    /* 17F24 801A0E9C 248F23A0 */  sb         $v1, -0x70DC($at)
    /* 17F28 801A0EA0 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 17F2C 801A0EA4 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 17F30 801A0EA8 00000000 */  nop
    /* 17F34 801A0EAC 2110A202 */  addu       $v0, $s5, $v0
    /* 17F38 801A0EB0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17F3C 801A0EB4 21084100 */  addu       $at, $v0, $at
    /* 17F40 801A0EB8 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 17F44 801A0EBC 00000000 */  nop
    /* 17F48 801A0EC0 C0100300 */  sll        $v0, $v1, 3
    /* 17F4C 801A0EC4 21104300 */  addu       $v0, $v0, $v1
    /* 17F50 801A0EC8 80100200 */  sll        $v0, $v0, 2
    /* 17F54 801A0ECC DD02C392 */  lbu        $v1, 0x2DD($s6)
    /* 17F58 801A0ED0 2110A202 */  addu       $v0, $s5, $v0
    /* 17F5C 801A0ED4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17F60 801A0ED8 21084100 */  addu       $at, $v0, $at
    /* 17F64 801A0EDC 258F23A0 */  sb         $v1, -0x70DB($at)
    /* 17F68 801A0EE0 DD02C292 */  lbu        $v0, 0x2DD($s6)
    /* 17F6C 801A0EE4 01000324 */  addiu      $v1, $zero, 0x1
    /* 17F70 801A0EE8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 17F74 801A0EEC 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 17F78 801A0EF0 21082200 */  addu       $at, $at, $v0
    /* 17F7C 801A0EF4 88AD23A0 */  sb         $v1, %lo(D_801DAD88)($at)
    /* 17F80 801A0EF8 DD02C292 */  lbu        $v0, 0x2DD($s6)
    /* 17F84 801A0EFC 00000000 */  nop
    /* 17F88 801A0F00 FF004230 */  andi       $v0, $v0, 0xFF
    /* 17F8C 801A0F04 1E80013C */  lui        $at, %hi(D_801D8DC0)
    /* 17F90 801A0F08 21082200 */  addu       $at, $at, $v0
    /* 17F94 801A0F0C C08D23A0 */  sb         $v1, %lo(D_801D8DC0)($at)
    /* 17F98 801A0F10 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17F9C 801A0F14 2108A102 */  addu       $at, $s5, $at
    /* 17FA0 801A0F18 208F2390 */  lbu        $v1, -0x70E0($at)
    /* 17FA4 801A0F1C 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 17FA8 801A0F20 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 17FAC 801A0F24 00000000 */  nop
    /* 17FB0 801A0F28 05024310 */  beq        $v0, $v1, .L801A1740
    /* 17FB4 801A0F2C 02000224 */   addiu     $v0, $zero, 0x2
    /* 17FB8 801A0F30 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17FBC 801A0F34 2108A102 */  addu       $at, $s5, $at
    /* 17FC0 801A0F38 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 17FC4 801A0F3C 00000000 */  nop
    /* 17FC8 801A0F40 0F004230 */  andi       $v0, $v0, 0xF
    /* 17FCC 801A0F44 02004010 */  beqz       $v0, .L801A0F50
    /* 17FD0 801A0F48 21200000 */   addu      $a0, $zero, $zero
    /* 17FD4 801A0F4C 01000424 */  addiu      $a0, $zero, 0x1
  .L801A0F50:
    /* 17FD8 801A0F50 288B060C */  jal        func_801A2CA0
    /* 17FDC 801A0F54 21280000 */   addu      $a1, $zero, $zero
    /* 17FE0 801A0F58 01000424 */  addiu      $a0, $zero, 0x1
    /* 17FE4 801A0F5C E48B060C */  jal        func_801A2F90
    /* 17FE8 801A0F60 21280000 */   addu      $a1, $zero, $zero
    /* 17FEC 801A0F64 21280000 */  addu       $a1, $zero, $zero
    /* 17FF0 801A0F68 0100013C */  lui        $at, (0x10000 >> 16)
    /* 17FF4 801A0F6C 2108A102 */  addu       $at, $s5, $at
    /* 17FF8 801A0F70 1F8F2490 */  lbu        $a0, -0x70E1($at)
    /* 17FFC 801A0F74 08000224 */  addiu      $v0, $zero, 0x8
    /* 18000 801A0F78 1E80013C */  lui        $at, %hi(D_801DA064)
    /* 18004 801A0F7C 64A022AC */  sw         $v0, %lo(D_801DA064)($at)
    /* 18008 801A0F80 1E80013C */  lui        $at, %hi(D_801DA060)
    /* 1800C 801A0F84 60A022AC */  sw         $v0, %lo(D_801DA060)($at)
    /* 18010 801A0F88 0F008430 */  andi       $a0, $a0, 0xF
    /* 18014 801A0F8C 3D8C060C */  jal        func_801A30F4
    /* 18018 801A0F90 2B200400 */   sltu      $a0, $zero, $a0
    /* 1801C 801A0F94 21200000 */  addu       $a0, $zero, $zero
    /* 18020 801A0F98 1B8D060C */  jal        func_801A346C
    /* 18024 801A0F9C 21280000 */   addu      $a1, $zero, $zero
    /* 18028 801A0FA0 01000224 */  addiu      $v0, $zero, 0x1
    /* 1802C 801A0FA4 1D80013C */  lui        $at, %hi(D_801D1F60)
    /* 18030 801A0FA8 601F22A0 */  sb         $v0, %lo(D_801D1F60)($at)
    /* 18034 801A0FAC 1D80013C */  lui        $at, %hi(D_801D1F61)
    /* 18038 801A0FB0 611F20A0 */  sb         $zero, %lo(D_801D1F61)($at)
  .L801A0FB4:
    /* 1803C 801A0FB4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18040 801A0FB8 2108A102 */  addu       $at, $s5, $at
    /* 18044 801A0FBC 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 18048 801A0FC0 00000000 */  nop
    /* 1804C 801A0FC4 0F004230 */  andi       $v0, $v0, 0xF
    /* 18050 801A0FC8 C9034014 */  bnez       $v0, .L801A1EF0
    /* 18054 801A0FCC 80000224 */   addiu     $v0, $zero, 0x80
    /* 18058 801A0FD0 1E80033C */  lui        $v1, %hi(D_801D8C6C)
    /* 1805C 801A0FD4 6C8C638C */  lw         $v1, %lo(D_801D8C6C)($v1)
    /* 18060 801A0FD8 00000000 */  nop
    /* 18064 801A0FDC 3C046210 */  beq        $v1, $v0, .L801A20D0
    /* 18068 801A0FE0 00000000 */   nop
    /* 1806C 801A0FE4 BC870608 */  j          .L801A1EF0
    /* 18070 801A0FE8 00000000 */   nop
  jlabel .L801A0FEC
    /* 18074 801A0FEC 01000224 */  addiu      $v0, $zero, 0x1
    /* 18078 801A0FF0 1E80013C */  lui        $at, %hi(D_801D8A8F)
    /* 1807C 801A0FF4 8F8A22A0 */  sb         $v0, %lo(D_801D8A8F)($at)
    /* 18080 801A0FF8 AE79000C */  jal        func_8001E6B8
    /* 18084 801A0FFC 02000424 */   addiu     $a0, $zero, 0x2
    /* 18088 801A1000 FF004330 */  andi       $v1, $v0, 0xFF
    /* 1808C 801A1004 03006010 */  beqz       $v1, .L801A1014
    /* 18090 801A1008 01000224 */   addiu     $v0, $zero, 0x1
    /* 18094 801A100C 02006210 */  beq        $v1, $v0, .L801A1018
    /* 18098 801A1010 40000424 */   addiu     $a0, $zero, 0x40
  .L801A1014:
    /* 1809C 801A1014 21200000 */  addu       $a0, $zero, $zero
  .L801A1018:
    /* 180A0 801A1018 7592060C */  jal        func_801A49D4
    /* 180A4 801A101C 00000000 */   nop
    /* 180A8 801A1020 1E80013C */  lui        $at, %hi(D_801DA331)
    /* 180AC 801A1024 31A322A0 */  sb         $v0, %lo(D_801DA331)($at)
    /* 180B0 801A1028 0100013C */  lui        $at, (0x10000 >> 16)
    /* 180B4 801A102C 2108A102 */  addu       $at, $s5, $at
    /* 180B8 801A1030 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 180BC 801A1034 1E80013C */  lui        $at, %hi(D_801D8A70)
    /* 180C0 801A1038 708A20A0 */  sb         $zero, %lo(D_801D8A70)($at)
    /* 180C4 801A103C C0100300 */  sll        $v0, $v1, 3
    /* 180C8 801A1040 21104300 */  addu       $v0, $v0, $v1
    /* 180CC 801A1044 80100200 */  sll        $v0, $v0, 2
    /* 180D0 801A1048 2110A202 */  addu       $v0, $s5, $v0
    /* 180D4 801A104C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 180D8 801A1050 21084100 */  addu       $at, $v0, $at
    /* 180DC 801A1054 248F2290 */  lbu        $v0, -0x70DC($at)
    /* 180E0 801A1058 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 180E4 801A105C C0004230 */  andi       $v0, $v0, 0xC0
    /* 180E8 801A1060 19004310 */  beq        $v0, $v1, .L801A10C8
    /* 180EC 801A1064 00000000 */   nop
    /* 180F0 801A1068 80AB0534 */  ori        $a1, $zero, 0xAB80
    /* 180F4 801A106C C0000424 */  addiu      $a0, $zero, 0xC0
  .L801A1070:
    /* 180F8 801A1070 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 180FC 801A1074 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 18100 801A1078 00000000 */  nop
    /* 18104 801A107C 01004224 */  addiu      $v0, $v0, 0x1
    /* 18108 801A1080 1E80013C */  lui        $at, %hi(D_801D8A70)
    /* 1810C 801A1084 708A22A0 */  sb         $v0, %lo(D_801D8A70)($at)
    /* 18110 801A1088 FF004230 */  andi       $v0, $v0, 0xFF
    /* 18114 801A108C 2110A202 */  addu       $v0, $s5, $v0
    /* 18118 801A1090 21104500 */  addu       $v0, $v0, $a1
    /* 1811C 801A1094 00004390 */  lbu        $v1, 0x0($v0)
    /* 18120 801A1098 00000000 */  nop
    /* 18124 801A109C C0100300 */  sll        $v0, $v1, 3
    /* 18128 801A10A0 21104300 */  addu       $v0, $v0, $v1
    /* 1812C 801A10A4 80100200 */  sll        $v0, $v0, 2
    /* 18130 801A10A8 2110A202 */  addu       $v0, $s5, $v0
    /* 18134 801A10AC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18138 801A10B0 21084100 */  addu       $at, $v0, $at
    /* 1813C 801A10B4 248F2290 */  lbu        $v0, -0x70DC($at)
    /* 18140 801A10B8 00000000 */  nop
    /* 18144 801A10BC C0004230 */  andi       $v0, $v0, 0xC0
    /* 18148 801A10C0 EBFF4414 */  bne        $v0, $a0, .L801A1070
    /* 1814C 801A10C4 00000000 */   nop
  .L801A10C8:
    /* 18150 801A10C8 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 18154 801A10CC 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 18158 801A10D0 1280013C */  lui        $at, %hi(D_8011BD54)
    /* 1815C 801A10D4 21082200 */  addu       $at, $at, $v0
    /* 18160 801A10D8 54BD2290 */  lbu        $v0, %lo(D_8011BD54)($at)
    /* 18164 801A10DC 00000000 */  nop
    /* 18168 801A10E0 DD02C2A2 */  sb         $v0, 0x2DD($s6)
    /* 1816C 801A10E4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 18170 801A10E8 1E80013C */  lui        $at, %hi(D_801D8DC0)
    /* 18174 801A10EC 21082200 */  addu       $at, $at, $v0
    /* 18178 801A10F0 C08D2390 */  lbu        $v1, %lo(D_801D8DC0)($at)
    /* 1817C 801A10F4 01000224 */  addiu      $v0, $zero, 0x1
    /* 18180 801A10F8 25006214 */  bne        $v1, $v0, .L801A1190
    /* 18184 801A10FC 00000000 */   nop
    /* 18188 801A1100 80AB0434 */  ori        $a0, $zero, 0xAB80
    /* 1818C 801A1104 01000524 */  addiu      $a1, $zero, 0x1
  .L801A1108:
    /* 18190 801A1108 21300000 */  addu       $a2, $zero, $zero
    /* 18194 801A110C 2110A602 */  addu       $v0, $s5, $a2
  .L801A1110:
    /* 18198 801A1110 21104400 */  addu       $v0, $v0, $a0
    /* 1819C 801A1114 00004390 */  lbu        $v1, 0x0($v0)
    /* 181A0 801A1118 00000000 */  nop
    /* 181A4 801A111C C0100300 */  sll        $v0, $v1, 3
    /* 181A8 801A1120 21104300 */  addu       $v0, $v0, $v1
    /* 181AC 801A1124 80100200 */  sll        $v0, $v0, 2
    /* 181B0 801A1128 2110A202 */  addu       $v0, $s5, $v0
    /* 181B4 801A112C DD02C392 */  lbu        $v1, 0x2DD($s6)
    /* 181B8 801A1130 0100013C */  lui        $at, (0x10000 >> 16)
    /* 181BC 801A1134 21084100 */  addu       $at, $v0, $at
    /* 181C0 801A1138 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 181C4 801A113C 00000000 */  nop
    /* 181C8 801A1140 06004314 */  bne        $v0, $v1, .L801A115C
    /* 181CC 801A1144 00000000 */   nop
    /* 181D0 801A1148 1280013C */  lui        $at, %hi(D_8011BD54)
    /* 181D4 801A114C 21082600 */  addu       $at, $at, $a2
    /* 181D8 801A1150 54BD2290 */  lbu        $v0, %lo(D_8011BD54)($at)
    /* 181DC 801A1154 5B840608 */  j          .L801A116C
    /* 181E0 801A1158 DD02C2A2 */   sb        $v0, 0x2DD($s6)
  .L801A115C:
    /* 181E4 801A115C 0100C624 */  addiu      $a2, $a2, 0x1
    /* 181E8 801A1160 2000C228 */  slti       $v0, $a2, 0x20
    /* 181EC 801A1164 EAFF4014 */  bnez       $v0, .L801A1110
    /* 181F0 801A1168 2110A602 */   addu      $v0, $s5, $a2
  .L801A116C:
    /* 181F4 801A116C DD02C292 */  lbu        $v0, 0x2DD($s6)
    /* 181F8 801A1170 00000000 */  nop
    /* 181FC 801A1174 FF004230 */  andi       $v0, $v0, 0xFF
    /* 18200 801A1178 1E80013C */  lui        $at, %hi(D_801D8DC0)
    /* 18204 801A117C 21082200 */  addu       $at, $at, $v0
    /* 18208 801A1180 C08D2290 */  lbu        $v0, %lo(D_801D8DC0)($at)
    /* 1820C 801A1184 00000000 */  nop
    /* 18210 801A1188 DFFF4510 */  beq        $v0, $a1, .L801A1108
    /* 18214 801A118C 00000000 */   nop
  .L801A1190:
    /* 18218 801A1190 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1821C 801A1194 2108A102 */  addu       $at, $s5, $at
    /* 18220 801A1198 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 18224 801A119C 00000000 */  nop
    /* 18228 801A11A0 0F004230 */  andi       $v0, $v0, 0xF
    /* 1822C 801A11A4 02004010 */  beqz       $v0, .L801A11B0
    /* 18230 801A11A8 21200000 */   addu      $a0, $zero, $zero
    /* 18234 801A11AC 01000424 */  addiu      $a0, $zero, 0x1
  .L801A11B0:
    /* 18238 801A11B0 288B060C */  jal        func_801A2CA0
    /* 1823C 801A11B4 21280000 */   addu      $a1, $zero, $zero
    /* 18240 801A11B8 01000424 */  addiu      $a0, $zero, 0x1
    /* 18244 801A11BC E48B060C */  jal        func_801A2F90
    /* 18248 801A11C0 21280000 */   addu      $a1, $zero, $zero
    /* 1824C 801A11C4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18250 801A11C8 2108A102 */  addu       $at, $s5, $at
    /* 18254 801A11CC 1F8F2490 */  lbu        $a0, -0x70E1($at)
    /* 18258 801A11D0 21280000 */  addu       $a1, $zero, $zero
    /* 1825C 801A11D4 0F008430 */  andi       $a0, $a0, 0xF
    /* 18260 801A11D8 3D8C060C */  jal        func_801A30F4
    /* 18264 801A11DC 2B200400 */   sltu      $a0, $zero, $a0
    /* 18268 801A11E0 21200000 */  addu       $a0, $zero, $zero
    /* 1826C 801A11E4 1B8D060C */  jal        func_801A346C
    /* 18270 801A11E8 21280000 */   addu      $a1, $zero, $zero
    /* 18274 801A11EC 01001024 */  addiu      $s0, $zero, 0x1
    /* 18278 801A11F0 1D80013C */  lui        $at, %hi(D_801D1F60)
    /* 1827C 801A11F4 601F30A0 */  sb         $s0, %lo(D_801D1F60)($at)
    /* 18280 801A11F8 1D80013C */  lui        $at, %hi(D_801D1F61)
    /* 18284 801A11FC 611F20A0 */  sb         $zero, %lo(D_801D1F61)($at)
    /* 18288 801A1200 628D060C */  jal        func_801A3588
    /* 1828C 801A1204 00000000 */   nop
    /* 18290 801A1208 DD02C392 */  lbu        $v1, 0x2DD($s6)
    /* 18294 801A120C 2EBA043C */  lui        $a0, (0xBA2E8BA3 >> 16)
    /* 18298 801A1210 A38B8434 */  ori        $a0, $a0, (0xBA2E8BA3 & 0xFFFF)
    /* 1829C 801A1214 FF006330 */  andi       $v1, $v1, 0xFF
    /* 182A0 801A1218 19006400 */  multu      $v1, $a0
    /* 182A4 801A121C 10400000 */  mfhi       $t0
    /* 182A8 801A1220 DD02C292 */  lbu        $v0, 0x2DD($s6)
    /* 182AC 801A1224 00000000 */  nop
    /* 182B0 801A1228 19004400 */  multu      $v0, $a0
    /* 182B4 801A122C 3C5EB0A2 */  sb         $s0, 0x5E3C($s5)
    /* 182B8 801A1230 C2200800 */  srl        $a0, $t0, 3
    /* 182BC 801A1234 40100400 */  sll        $v0, $a0, 1
    /* 182C0 801A1238 21104400 */  addu       $v0, $v0, $a0
    /* 182C4 801A123C 80100200 */  sll        $v0, $v0, 2
    /* 182C8 801A1240 23104400 */  subu       $v0, $v0, $a0
    /* 182CC 801A1244 23186200 */  subu       $v1, $v1, $v0
    /* 182D0 801A1248 FF006330 */  andi       $v1, $v1, 0xFF
    /* 182D4 801A124C 40110300 */  sll        $v0, $v1, 5
    /* 182D8 801A1250 23104300 */  subu       $v0, $v0, $v1
    /* 182DC 801A1254 485EA2A6 */  sh         $v0, 0x5E48($s5)
    /* 182E0 801A1258 10280000 */  mfhi       $a1
    /* 182E4 801A125C C2180500 */  srl        $v1, $a1, 3
    /* 182E8 801A1260 FF006330 */  andi       $v1, $v1, 0xFF
    /* 182EC 801A1264 40100300 */  sll        $v0, $v1, 1
    /* 182F0 801A1268 21104300 */  addu       $v0, $v0, $v1
    /* 182F4 801A126C 80100200 */  sll        $v0, $v0, 2
    /* 182F8 801A1270 23104300 */  subu       $v0, $v0, $v1
    /* 182FC 801A1274 1E80033C */  lui        $v1, %hi(D_801DA331)
    /* 18300 801A1278 31A36390 */  lbu        $v1, %lo(D_801DA331)($v1)
    /* 18304 801A127C 40100200 */  sll        $v0, $v0, 1
    /* 18308 801A1280 C0006330 */  andi       $v1, $v1, 0xC0
    /* 1830C 801A1284 0F006014 */  bnez       $v1, .L801A12C4
    /* 18310 801A1288 4A5EA2A6 */   sh        $v0, 0x5E4A($s5)
    /* 18314 801A128C 03000424 */  addiu      $a0, $zero, 0x3
    /* 18318 801A1290 AABE010C */  jal        func_8006FAA8
    /* 1831C 801A1294 6C300524 */   addiu     $a1, $zero, 0x306C
    /* 18320 801A1298 10000224 */  addiu      $v0, $zero, 0x10
    /* 18324 801A129C 1E80013C */  lui        $at, %hi(D_801D8A8A)
    /* 18328 801A12A0 8A8A22A0 */  sb         $v0, %lo(D_801D8A8A)($at)
    /* 1832C 801A12A4 60000224 */  addiu      $v0, $zero, 0x60
    /* 18330 801A12A8 1E80013C */  lui        $at, %hi(D_801D8A8B)
    /* 18334 801A12AC 8B8A22A0 */  sb         $v0, %lo(D_801D8A8B)($at)
    /* 18338 801A12B0 80000224 */  addiu      $v0, $zero, 0x80
    /* 1833C 801A12B4 1E80013C */  lui        $at, %hi(D_801D8A8C)
    /* 18340 801A12B8 8C8A22A0 */  sb         $v0, %lo(D_801D8A8C)($at)
    /* 18344 801A12BC BB840608 */  j          .L801A12EC
    /* 18348 801A12C0 00000000 */   nop
  .L801A12C4:
    /* 1834C 801A12C4 03000424 */  addiu      $a0, $zero, 0x3
    /* 18350 801A12C8 AABE010C */  jal        func_8006FAA8
    /* 18354 801A12CC 6D300524 */   addiu     $a1, $zero, 0x306D
    /* 18358 801A12D0 80000224 */  addiu      $v0, $zero, 0x80
    /* 1835C 801A12D4 1E80013C */  lui        $at, %hi(D_801D8A8A)
    /* 18360 801A12D8 8A8A22A0 */  sb         $v0, %lo(D_801D8A8A)($at)
    /* 18364 801A12DC 1E80013C */  lui        $at, %hi(D_801D8A8B)
    /* 18368 801A12E0 8B8A22A0 */  sb         $v0, %lo(D_801D8A8B)($at)
    /* 1836C 801A12E4 1E80013C */  lui        $at, %hi(D_801D8A8C)
    /* 18370 801A12E8 8C8A20A0 */  sb         $zero, %lo(D_801D8A8C)($at)
  .L801A12EC:
    /* 18374 801A12EC 1E80033C */  lui        $v1, %hi(D_801D8A8E)
    /* 18378 801A12F0 8E8A6324 */  addiu      $v1, $v1, %lo(D_801D8A8E)
    /* 1837C 801A12F4 00006290 */  lbu        $v0, 0x0($v1)
    /* 18380 801A12F8 1E80053C */  lui        $a1, %hi(D_801D8A70)
    /* 18384 801A12FC 708AA590 */  lbu        $a1, %lo(D_801D8A70)($a1)
    /* 18388 801A1300 10004234 */  ori        $v0, $v0, 0x10
    /* 1838C 801A1304 000062A0 */  sb         $v0, 0x0($v1)
    /* 18390 801A1308 0F00A230 */  andi       $v0, $a1, 0xF
    /* 18394 801A130C 80180200 */  sll        $v1, $v0, 2
    /* 18398 801A1310 21186200 */  addu       $v1, $v1, $v0
    /* 1839C 801A1314 80180300 */  sll        $v1, $v1, 2
    /* 183A0 801A1318 21186200 */  addu       $v1, $v1, $v0
    /* 183A4 801A131C 82100200 */  srl        $v0, $v0, 2
    /* 183A8 801A1320 40100200 */  sll        $v0, $v0, 1
    /* 183AC 801A1324 5AFF4224 */  addiu      $v0, $v0, -0xA6
    /* 183B0 801A1328 21186200 */  addu       $v1, $v1, $v0
    /* 183B4 801A132C 02290500 */  srl        $a1, $a1, 4
    /* 183B8 801A1330 40290500 */  sll        $a1, $a1, 5
    /* 183BC 801A1334 CBFFA524 */  addiu      $a1, $a1, -0x35
    /* 183C0 801A1338 1E80013C */  lui        $at, %hi(D_801D8A82)
    /* 183C4 801A133C 828A23A4 */  sh         $v1, %lo(D_801D8A82)($at)
    /* 183C8 801A1340 1E80013C */  lui        $at, %hi(D_801D8A84)
    /* 183CC 801A1344 848A25A4 */  sh         $a1, %lo(D_801D8A84)($at)
    /* 183D0 801A1348 1E80013C */  lui        $at, %hi(D_801D8A86)
    /* 183D4 801A134C 868A23A4 */  sh         $v1, %lo(D_801D8A86)($at)
    /* 183D8 801A1350 1E80013C */  lui        $at, %hi(D_801D8A88)
    /* 183DC 801A1354 888A25A4 */  sh         $a1, %lo(D_801D8A88)($at)
    /* 183E0 801A1358 94850608 */  j          .L801A1650
    /* 183E4 801A135C 28050424 */   addiu     $a0, $zero, 0x528
  jlabel .L801A1360
    /* 183E8 801A1360 7592060C */  jal        func_801A49D4
    /* 183EC 801A1364 21200000 */   addu      $a0, $zero, $zero
    /* 183F0 801A1368 0100013C */  lui        $at, (0x10000 >> 16)
    /* 183F4 801A136C 2108A102 */  addu       $at, $s5, $at
    /* 183F8 801A1370 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 183FC 801A1374 1E80013C */  lui        $at, %hi(D_801DA331)
    /* 18400 801A1378 31A322A0 */  sb         $v0, %lo(D_801DA331)($at)
    /* 18404 801A137C 1E80013C */  lui        $at, %hi(D_801D8A70)
    /* 18408 801A1380 708A20A0 */  sb         $zero, %lo(D_801D8A70)($at)
    /* 1840C 801A1384 C0100300 */  sll        $v0, $v1, 3
    /* 18410 801A1388 21104300 */  addu       $v0, $v0, $v1
    /* 18414 801A138C 80100200 */  sll        $v0, $v0, 2
    /* 18418 801A1390 2110A202 */  addu       $v0, $s5, $v0
    /* 1841C 801A1394 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18420 801A1398 21084100 */  addu       $at, $v0, $at
    /* 18424 801A139C 248F2290 */  lbu        $v0, -0x70DC($at)
    /* 18428 801A13A0 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 1842C 801A13A4 C0004230 */  andi       $v0, $v0, 0xC0
    /* 18430 801A13A8 18004310 */  beq        $v0, $v1, .L801A140C
    /* 18434 801A13AC 80AB0534 */   ori       $a1, $zero, 0xAB80
    /* 18438 801A13B0 C0000424 */  addiu      $a0, $zero, 0xC0
  .L801A13B4:
    /* 1843C 801A13B4 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 18440 801A13B8 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 18444 801A13BC 00000000 */  nop
    /* 18448 801A13C0 01004224 */  addiu      $v0, $v0, 0x1
    /* 1844C 801A13C4 1E80013C */  lui        $at, %hi(D_801D8A70)
    /* 18450 801A13C8 708A22A0 */  sb         $v0, %lo(D_801D8A70)($at)
    /* 18454 801A13CC FF004230 */  andi       $v0, $v0, 0xFF
    /* 18458 801A13D0 2110A202 */  addu       $v0, $s5, $v0
    /* 1845C 801A13D4 21104500 */  addu       $v0, $v0, $a1
    /* 18460 801A13D8 00004390 */  lbu        $v1, 0x0($v0)
    /* 18464 801A13DC 00000000 */  nop
    /* 18468 801A13E0 C0100300 */  sll        $v0, $v1, 3
    /* 1846C 801A13E4 21104300 */  addu       $v0, $v0, $v1
    /* 18470 801A13E8 80100200 */  sll        $v0, $v0, 2
    /* 18474 801A13EC 2110A202 */  addu       $v0, $s5, $v0
    /* 18478 801A13F0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1847C 801A13F4 21084100 */  addu       $at, $v0, $at
    /* 18480 801A13F8 248F2290 */  lbu        $v0, -0x70DC($at)
    /* 18484 801A13FC 00000000 */  nop
    /* 18488 801A1400 C0004230 */  andi       $v0, $v0, 0xC0
    /* 1848C 801A1404 EBFF4414 */  bne        $v0, $a0, .L801A13B4
    /* 18490 801A1408 00000000 */   nop
  .L801A140C:
    /* 18494 801A140C 3989060C */  jal        func_801A24E4
    /* 18498 801A1410 00000000 */   nop
    /* 1849C 801A1414 DD02C2A2 */  sb         $v0, 0x2DD($s6)
    /* 184A0 801A1418 AE79000C */  jal        func_8001E6B8
    /* 184A4 801A141C 02000424 */   addiu     $a0, $zero, 0x2
    /* 184A8 801A1420 FF004330 */  andi       $v1, $v0, 0xFF
    /* 184AC 801A1424 03006010 */  beqz       $v1, .L801A1434
    /* 184B0 801A1428 01000224 */   addiu     $v0, $zero, 0x1
    /* 184B4 801A142C 03006210 */  beq        $v1, $v0, .L801A143C
    /* 184B8 801A1430 00000000 */   nop
  .L801A1434:
    /* 184BC 801A1434 10850608 */  j          .L801A1440
    /* 184C0 801A1438 21200000 */   addu      $a0, $zero, $zero
  .L801A143C:
    /* 184C4 801A143C 40000424 */  addiu      $a0, $zero, 0x40
  .L801A1440:
    /* 184C8 801A1440 7592060C */  jal        func_801A49D4
    /* 184CC 801A1444 00000000 */   nop
    /* 184D0 801A1448 1E80013C */  lui        $at, %hi(D_801DA331)
    /* 184D4 801A144C 31A322A0 */  sb         $v0, %lo(D_801DA331)($at)
    /* 184D8 801A1450 0100013C */  lui        $at, (0x10000 >> 16)
    /* 184DC 801A1454 2108A102 */  addu       $at, $s5, $at
    /* 184E0 801A1458 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 184E4 801A145C 00000000 */  nop
    /* 184E8 801A1460 0F004230 */  andi       $v0, $v0, 0xF
    /* 184EC 801A1464 02004010 */  beqz       $v0, .L801A1470
    /* 184F0 801A1468 21200000 */   addu      $a0, $zero, $zero
    /* 184F4 801A146C 01000424 */  addiu      $a0, $zero, 0x1
  .L801A1470:
    /* 184F8 801A1470 288B060C */  jal        func_801A2CA0
    /* 184FC 801A1474 21280000 */   addu      $a1, $zero, $zero
    /* 18500 801A1478 01000424 */  addiu      $a0, $zero, 0x1
    /* 18504 801A147C E48B060C */  jal        func_801A2F90
    /* 18508 801A1480 21280000 */   addu      $a1, $zero, $zero
    /* 1850C 801A1484 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18510 801A1488 2108A102 */  addu       $at, $s5, $at
    /* 18514 801A148C 1F8F2490 */  lbu        $a0, -0x70E1($at)
    /* 18518 801A1490 21280000 */  addu       $a1, $zero, $zero
    /* 1851C 801A1494 0F008430 */  andi       $a0, $a0, 0xF
    /* 18520 801A1498 3D8C060C */  jal        func_801A30F4
    /* 18524 801A149C 2B200400 */   sltu      $a0, $zero, $a0
    /* 18528 801A14A0 21200000 */  addu       $a0, $zero, $zero
    /* 1852C 801A14A4 1B8D060C */  jal        func_801A346C
    /* 18530 801A14A8 21280000 */   addu      $a1, $zero, $zero
    /* 18534 801A14AC 01001024 */  addiu      $s0, $zero, 0x1
    /* 18538 801A14B0 1D80013C */  lui        $at, %hi(D_801D1F60)
    /* 1853C 801A14B4 601F30A0 */  sb         $s0, %lo(D_801D1F60)($at)
    /* 18540 801A14B8 1D80013C */  lui        $at, %hi(D_801D1F61)
    /* 18544 801A14BC 611F20A0 */  sb         $zero, %lo(D_801D1F61)($at)
    /* 18548 801A14C0 628D060C */  jal        func_801A3588
    /* 1854C 801A14C4 00000000 */   nop
    /* 18550 801A14C8 DD02C492 */  lbu        $a0, 0x2DD($s6)
    /* 18554 801A14CC 2EBA033C */  lui        $v1, (0xBA2E8BA3 >> 16)
    /* 18558 801A14D0 A38B6334 */  ori        $v1, $v1, (0xBA2E8BA3 & 0xFFFF)
    /* 1855C 801A14D4 FF008430 */  andi       $a0, $a0, 0xFF
    /* 18560 801A14D8 19008300 */  multu      $a0, $v1
    /* 18564 801A14DC DD02C292 */  lbu        $v0, 0x2DD($s6)
    /* 18568 801A14E0 10400000 */  mfhi       $t0
    /* 1856C 801A14E4 1E80013C */  lui        $at, %hi(D_801DA060)
    /* 18570 801A14E8 60A020AC */  sw         $zero, %lo(D_801DA060)($at)
    /* 18574 801A14EC 1E80013C */  lui        $at, %hi(D_801DA064)
    /* 18578 801A14F0 64A020AC */  sw         $zero, %lo(D_801DA064)($at)
    /* 1857C 801A14F4 19004300 */  multu      $v0, $v1
    /* 18580 801A14F8 3C5EB0A2 */  sb         $s0, 0x5E3C($s5)
    /* 18584 801A14FC C2180800 */  srl        $v1, $t0, 3
    /* 18588 801A1500 40100300 */  sll        $v0, $v1, 1
    /* 1858C 801A1504 21104300 */  addu       $v0, $v0, $v1
    /* 18590 801A1508 80100200 */  sll        $v0, $v0, 2
    /* 18594 801A150C 23104300 */  subu       $v0, $v0, $v1
    /* 18598 801A1510 23208200 */  subu       $a0, $a0, $v0
    /* 1859C 801A1514 FF008430 */  andi       $a0, $a0, 0xFF
    /* 185A0 801A1518 40110400 */  sll        $v0, $a0, 5
    /* 185A4 801A151C 23104400 */  subu       $v0, $v0, $a0
    /* 185A8 801A1520 485EA2A6 */  sh         $v0, 0x5E48($s5)
    /* 185AC 801A1524 10280000 */  mfhi       $a1
    /* 185B0 801A1528 C2180500 */  srl        $v1, $a1, 3
    /* 185B4 801A152C FF006330 */  andi       $v1, $v1, 0xFF
    /* 185B8 801A1530 40100300 */  sll        $v0, $v1, 1
    /* 185BC 801A1534 21104300 */  addu       $v0, $v0, $v1
    /* 185C0 801A1538 80100200 */  sll        $v0, $v0, 2
    /* 185C4 801A153C 23104300 */  subu       $v0, $v0, $v1
    /* 185C8 801A1540 1E80033C */  lui        $v1, %hi(D_801DA331)
    /* 185CC 801A1544 31A36390 */  lbu        $v1, %lo(D_801DA331)($v1)
    /* 185D0 801A1548 40100200 */  sll        $v0, $v0, 1
    /* 185D4 801A154C C0006330 */  andi       $v1, $v1, 0xC0
    /* 185D8 801A1550 04006014 */  bnez       $v1, .L801A1564
    /* 185DC 801A1554 4A5EA2A6 */   sh        $v0, 0x5E4A($s5)
    /* 185E0 801A1558 03000424 */  addiu      $a0, $zero, 0x3
    /* 185E4 801A155C 5B850608 */  j          .L801A156C
    /* 185E8 801A1560 6C300524 */   addiu     $a1, $zero, 0x306C
  .L801A1564:
    /* 185EC 801A1564 03000424 */  addiu      $a0, $zero, 0x3
    /* 185F0 801A1568 6D300524 */  addiu      $a1, $zero, 0x306D
  .L801A156C:
    /* 185F4 801A156C AABE010C */  jal        func_8006FAA8
    /* 185F8 801A1570 00000000 */   nop
    /* 185FC 801A1574 80000424 */  addiu      $a0, $zero, 0x80
    /* 18600 801A1578 1E80033C */  lui        $v1, %hi(D_801D8A8E)
    /* 18604 801A157C 8E8A6324 */  addiu      $v1, $v1, %lo(D_801D8A8E)
    /* 18608 801A1580 00006290 */  lbu        $v0, 0x0($v1)
    /* 1860C 801A1584 1E80063C */  lui        $a2, %hi(D_801D8A70)
    /* 18610 801A1588 708AC690 */  lbu        $a2, %lo(D_801D8A70)($a2)
    /* 18614 801A158C 10004234 */  ori        $v0, $v0, 0x10
    /* 18618 801A1590 000062A0 */  sb         $v0, 0x0($v1)
    /* 1861C 801A1594 0700C230 */  andi       $v0, $a2, 0x7
    /* 18620 801A1598 80180200 */  sll        $v1, $v0, 2
    /* 18624 801A159C 21186200 */  addu       $v1, $v1, $v0
    /* 18628 801A15A0 80180300 */  sll        $v1, $v1, 2
    /* 1862C 801A15A4 21186200 */  addu       $v1, $v1, $v0
    /* 18630 801A15A8 07006324 */  addiu      $v1, $v1, 0x7
    /* 18634 801A15AC C2300600 */  srl        $a2, $a2, 3
    /* 18638 801A15B0 40100600 */  sll        $v0, $a2, 1
    /* 1863C 801A15B4 21104600 */  addu       $v0, $v0, $a2
    /* 18640 801A15B8 80100200 */  sll        $v0, $v0, 2
    /* 18644 801A15BC 21104600 */  addu       $v0, $v0, $a2
    /* 18648 801A15C0 40100200 */  sll        $v0, $v0, 1
    /* 1864C 801A15C4 D0FF4224 */  addiu      $v0, $v0, -0x30
    /* 18650 801A15C8 1E80013C */  lui        $at, %hi(D_801D8A82)
    /* 18654 801A15CC 828A23A4 */  sh         $v1, %lo(D_801D8A82)($at)
    /* 18658 801A15D0 1E80013C */  lui        $at, %hi(D_801D8A84)
    /* 1865C 801A15D4 848A22A4 */  sh         $v0, %lo(D_801D8A84)($at)
    /* 18660 801A15D8 1E80013C */  lui        $at, %hi(D_801D8A86)
    /* 18664 801A15DC 868A23A4 */  sh         $v1, %lo(D_801D8A86)($at)
    /* 18668 801A15E0 1E80013C */  lui        $at, %hi(D_801D8A88)
    /* 1866C 801A15E4 888A22A4 */  sh         $v0, %lo(D_801D8A88)($at)
    /* 18670 801A15E8 6E39060C */  jal        func_8018E5B8
    /* 18674 801A15EC 01000524 */   addiu     $a1, $zero, 0x1
    /* 18678 801A15F0 1E80033C */  lui        $v1, %hi(D_801DA331)
    /* 1867C 801A15F4 31A36390 */  lbu        $v1, %lo(D_801DA331)($v1)
    /* 18680 801A15F8 00000000 */  nop
    /* 18684 801A15FC C0006330 */  andi       $v1, $v1, 0xC0
    /* 18688 801A1600 0B006014 */  bnez       $v1, .L801A1630
    /* 1868C 801A1604 21204000 */   addu      $a0, $v0, $zero
    /* 18690 801A1608 60000224 */  addiu      $v0, $zero, 0x60
    /* 18694 801A160C 1E80013C */  lui        $at, %hi(D_801D8A8B)
    /* 18698 801A1610 8B8A22A0 */  sb         $v0, %lo(D_801D8A8B)($at)
    /* 1869C 801A1614 80008224 */  addiu      $v0, $a0, 0x80
    /* 186A0 801A1618 1E80013C */  lui        $at, %hi(D_801D8A8A)
    /* 186A4 801A161C 8A8A20A0 */  sb         $zero, %lo(D_801D8A8A)($at)
    /* 186A8 801A1620 1E80013C */  lui        $at, %hi(D_801D8A8C)
    /* 186AC 801A1624 8C8A22A0 */  sb         $v0, %lo(D_801D8A8C)($at)
    /* 186B0 801A1628 94850608 */  j          .L801A1650
    /* 186B4 801A162C 28050424 */   addiu     $a0, $zero, 0x528
  .L801A1630:
    /* 186B8 801A1630 80008224 */  addiu      $v0, $a0, 0x80
    /* 186BC 801A1634 1E80013C */  lui        $at, %hi(D_801D8A8A)
    /* 186C0 801A1638 8A8A22A0 */  sb         $v0, %lo(D_801D8A8A)($at)
    /* 186C4 801A163C 1E80013C */  lui        $at, %hi(D_801D8A8B)
    /* 186C8 801A1640 8B8A22A0 */  sb         $v0, %lo(D_801D8A8B)($at)
    /* 186CC 801A1644 1E80013C */  lui        $at, %hi(D_801D8A8C)
    /* 186D0 801A1648 8C8A20A0 */  sb         $zero, %lo(D_801D8A8C)($at)
    /* 186D4 801A164C 28050424 */  addiu      $a0, $zero, 0x528
  .L801A1650:
    /* 186D8 801A1650 88AD020C */  jal        func_800AB620
    /* 186DC 801A1654 00000000 */   nop
    /* 186E0 801A1658 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 186E4 801A165C 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 186E8 801A1660 1E80033C */  lui        $v1, %hi(D_801D8A70)
    /* 186EC 801A1664 708A6390 */  lbu        $v1, %lo(D_801D8A70)($v1)
    /* 186F0 801A1668 01004224 */  addiu      $v0, $v0, 0x1
    /* 186F4 801A166C 2118A302 */  addu       $v1, $s5, $v1
    /* 186F8 801A1670 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 186FC 801A1674 5CA022AC */  sw         $v0, %lo(D_801DA05C)($at)
    /* 18700 801A1678 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18704 801A167C 21086100 */  addu       $at, $v1, $at
    /* 18708 801A1680 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 1870C 801A1684 00000000 */  nop
    /* 18710 801A1688 C0100300 */  sll        $v0, $v1, 3
    /* 18714 801A168C 21104300 */  addu       $v0, $v0, $v1
    /* 18718 801A1690 80100200 */  sll        $v0, $v0, 2
    /* 1871C 801A1694 1E80033C */  lui        $v1, %hi(D_801DA331)
    /* 18720 801A1698 31A36390 */  lbu        $v1, %lo(D_801DA331)($v1)
    /* 18724 801A169C 2110A202 */  addu       $v0, $s5, $v0
    /* 18728 801A16A0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1872C 801A16A4 21084100 */  addu       $at, $v0, $at
    /* 18730 801A16A8 248F23A0 */  sb         $v1, -0x70DC($at)
    /* 18734 801A16AC 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 18738 801A16B0 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 1873C 801A16B4 00000000 */  nop
    /* 18740 801A16B8 2110A202 */  addu       $v0, $s5, $v0
    /* 18744 801A16BC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18748 801A16C0 21084100 */  addu       $at, $v0, $at
    /* 1874C 801A16C4 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 18750 801A16C8 00000000 */  nop
    /* 18754 801A16CC C0100300 */  sll        $v0, $v1, 3
    /* 18758 801A16D0 21104300 */  addu       $v0, $v0, $v1
    /* 1875C 801A16D4 80100200 */  sll        $v0, $v0, 2
    /* 18760 801A16D8 DD02C392 */  lbu        $v1, 0x2DD($s6)
    /* 18764 801A16DC 2110A202 */  addu       $v0, $s5, $v0
    /* 18768 801A16E0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1876C 801A16E4 21084100 */  addu       $at, $v0, $at
    /* 18770 801A16E8 258F23A0 */  sb         $v1, -0x70DB($at)
    /* 18774 801A16EC DD02C292 */  lbu        $v0, 0x2DD($s6)
    /* 18778 801A16F0 01000324 */  addiu      $v1, $zero, 0x1
    /* 1877C 801A16F4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 18780 801A16F8 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 18784 801A16FC 21082200 */  addu       $at, $at, $v0
    /* 18788 801A1700 88AD23A0 */  sb         $v1, %lo(D_801DAD88)($at)
    /* 1878C 801A1704 DD02C292 */  lbu        $v0, 0x2DD($s6)
    /* 18790 801A1708 00000000 */  nop
    /* 18794 801A170C FF004230 */  andi       $v0, $v0, 0xFF
    /* 18798 801A1710 1E80013C */  lui        $at, %hi(D_801D8DC0)
    /* 1879C 801A1714 21082200 */  addu       $at, $at, $v0
    /* 187A0 801A1718 C08D23A0 */  sb         $v1, %lo(D_801D8DC0)($at)
    /* 187A4 801A171C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 187A8 801A1720 2108A102 */  addu       $at, $s5, $at
    /* 187AC 801A1724 208F2390 */  lbu        $v1, -0x70E0($at)
    /* 187B0 801A1728 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 187B4 801A172C 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 187B8 801A1730 00000000 */  nop
    /* 187BC 801A1734 8D024314 */  bne        $v0, $v1, .L801A216C
    /* 187C0 801A1738 21100000 */   addu      $v0, $zero, $zero
    /* 187C4 801A173C 02000224 */  addiu      $v0, $zero, 0x2
  .L801A1740:
    /* 187C8 801A1740 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 187CC 801A1744 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
    /* 187D0 801A1748 32000224 */  addiu      $v0, $zero, 0x32
    /* 187D4 801A174C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 187D8 801A1750 2108A102 */  addu       $at, $s5, $at
    /* 187DC 801A1754 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 187E0 801A1758 5B880608 */  j          .L801A216C
    /* 187E4 801A175C 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801A1760
    /* 187E8 801A1760 0100013C */  lui        $at, (0x10000 >> 16)
    /* 187EC 801A1764 2108A102 */  addu       $at, $s5, $at
    /* 187F0 801A1768 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 187F4 801A176C 00000000 */  nop
    /* 187F8 801A1770 0F004230 */  andi       $v0, $v0, 0xF
    /* 187FC 801A1774 02004010 */  beqz       $v0, .L801A1780
    /* 18800 801A1778 21200000 */   addu      $a0, $zero, $zero
    /* 18804 801A177C 01000424 */  addiu      $a0, $zero, 0x1
  .L801A1780:
    /* 18808 801A1780 288B060C */  jal        func_801A2CA0
    /* 1880C 801A1784 21280000 */   addu      $a1, $zero, $zero
    /* 18810 801A1788 01000424 */  addiu      $a0, $zero, 0x1
    /* 18814 801A178C E48B060C */  jal        func_801A2F90
    /* 18818 801A1790 21280000 */   addu      $a1, $zero, $zero
    /* 1881C 801A1794 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18820 801A1798 2108A102 */  addu       $at, $s5, $at
    /* 18824 801A179C 1F8F2490 */  lbu        $a0, -0x70E1($at)
    /* 18828 801A17A0 21280000 */  addu       $a1, $zero, $zero
    /* 1882C 801A17A4 0F008430 */  andi       $a0, $a0, 0xF
    /* 18830 801A17A8 3D8C060C */  jal        func_801A30F4
    /* 18834 801A17AC 2B200400 */   sltu      $a0, $zero, $a0
    /* 18838 801A17B0 21200000 */  addu       $a0, $zero, $zero
    /* 1883C 801A17B4 1B8D060C */  jal        func_801A346C
    /* 18840 801A17B8 21280000 */   addu      $a1, $zero, $zero
    /* 18844 801A17BC 01000224 */  addiu      $v0, $zero, 0x1
    /* 18848 801A17C0 1D80013C */  lui        $at, %hi(D_801D1F60)
    /* 1884C 801A17C4 601F22A0 */  sb         $v0, %lo(D_801D1F60)($at)
    /* 18850 801A17C8 1D80013C */  lui        $at, %hi(D_801D1F61)
    /* 18854 801A17CC 611F20A0 */  sb         $zero, %lo(D_801D1F61)($at)
    /* 18858 801A17D0 628D060C */  jal        func_801A3588
    /* 1885C 801A17D4 00000000 */   nop
    /* 18860 801A17D8 80000224 */  addiu      $v0, $zero, 0x80
    /* 18864 801A17DC 1E80043C */  lui        $a0, %hi(D_801D8A8E)
    /* 18868 801A17E0 8E8A8424 */  addiu      $a0, $a0, %lo(D_801D8A8E)
    /* 1886C 801A17E4 3C5EA0A2 */  sb         $zero, 0x5E3C($s5)
    /* 18870 801A17E8 645EA0A2 */  sb         $zero, 0x5E64($s5)
    /* 18874 801A17EC 1E80013C */  lui        $at, %hi(D_801D8A8A)
    /* 18878 801A17F0 8A8A22A0 */  sb         $v0, %lo(D_801D8A8A)($at)
    /* 1887C 801A17F4 00008290 */  lbu        $v0, 0x0($a0)
    /* 18880 801A17F8 10000324 */  addiu      $v1, $zero, 0x10
    /* 18884 801A17FC 1E80013C */  lui        $at, %hi(D_801D8A8B)
    /* 18888 801A1800 8B8A23A0 */  sb         $v1, %lo(D_801D8A8B)($at)
    /* 1888C 801A1804 1E80013C */  lui        $at, %hi(D_801D8A8C)
    /* 18890 801A1808 8C8A23A0 */  sb         $v1, %lo(D_801D8A8C)($at)
    /* 18894 801A180C F0004230 */  andi       $v0, $v0, 0xF0
    /* 18898 801A1810 02004234 */  ori        $v0, $v0, 0x2
    /* 1889C 801A1814 1B93060C */  jal        func_801A4C6C
    /* 188A0 801A1818 000082A0 */   sb        $v0, 0x0($a0)
    /* 188A4 801A181C F78F060C */  jal        func_801A3FDC
    /* 188A8 801A1820 00000000 */   nop
    /* 188AC 801A1824 20000324 */  addiu      $v1, $zero, 0x20
    /* 188B0 801A1828 1E80013C */  lui        $at, %hi(D_801D8C6C)
    /* 188B4 801A182C 6C8C22AC */  sw         $v0, %lo(D_801D8C6C)($at)
    /* 188B8 801A1830 23004314 */  bne        $v0, $v1, .L801A18C0
    /* 188BC 801A1834 00000000 */   nop
    /* 188C0 801A1838 1E80033C */  lui        $v1, %hi(D_801D8B17)
    /* 188C4 801A183C 178B6390 */  lbu        $v1, %lo(D_801D8B17)($v1)
    /* 188C8 801A1840 00000000 */  nop
    /* 188CC 801A1844 05006010 */  beqz       $v1, .L801A185C
    /* 188D0 801A1848 01000224 */   addiu     $v0, $zero, 0x1
    /* 188D4 801A184C 14006210 */  beq        $v1, $v0, .L801A18A0
    /* 188D8 801A1850 00000000 */   nop
    /* 188DC 801A1854 30860608 */  j          .L801A18C0
    /* 188E0 801A1858 00000000 */   nop
  .L801A185C:
    /* 188E4 801A185C 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 188E8 801A1860 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 188EC 801A1864 0100013C */  lui        $at, (0x10000 >> 16)
    /* 188F0 801A1868 2108A102 */  addu       $at, $s5, $at
    /* 188F4 801A186C 208F2390 */  lbu        $v1, -0x70E0($at)
    /* 188F8 801A1870 00000000 */  nop
    /* 188FC 801A1874 2B104300 */  sltu       $v0, $v0, $v1
    /* 18900 801A1878 05004010 */  beqz       $v0, .L801A1890
    /* 18904 801A187C 00000000 */   nop
    /* 18908 801A1880 88AD020C */  jal        func_800AB620
    /* 1890C 801A1884 27050424 */   addiu     $a0, $zero, 0x527
    /* 18910 801A1888 28860608 */  j          .L801A18A0
    /* 18914 801A188C 00000000 */   nop
  .L801A1890:
    /* 18918 801A1890 88AD020C */  jal        func_800AB620
    /* 1891C 801A1894 12050424 */   addiu     $a0, $zero, 0x512
    /* 18920 801A1898 30860608 */  j          .L801A18C0
    /* 18924 801A189C 00000000 */   nop
  .L801A18A0:
    /* 18928 801A18A0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1892C 801A18A4 2108A102 */  addu       $at, $s5, $at
    /* 18930 801A18A8 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 18934 801A18AC 00000000 */  nop
    /* 18938 801A18B0 01004224 */  addiu      $v0, $v0, 0x1
    /* 1893C 801A18B4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18940 801A18B8 2108A102 */  addu       $at, $s5, $at
    /* 18944 801A18BC DAAB22A0 */  sb         $v0, -0x5426($at)
  .L801A18C0:
    /* 18948 801A18C0 1E80033C */  lui        $v1, %hi(D_801D8C6C)
    /* 1894C 801A18C4 6C8C638C */  lw         $v1, %lo(D_801D8C6C)($v1)
    /* 18950 801A18C8 40000224 */  addiu      $v0, $zero, 0x40
    /* 18954 801A18CC 27026214 */  bne        $v1, $v0, .L801A216C
    /* 18958 801A18D0 21100000 */   addu      $v0, $zero, $zero
    /* 1895C 801A18D4 88AD020C */  jal        func_800AB620
    /* 18960 801A18D8 29050424 */   addiu     $a0, $zero, 0x529
    /* 18964 801A18DC 0A000224 */  addiu      $v0, $zero, 0xA
  .L801A18E0:
    /* 18968 801A18E0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1896C 801A18E4 2108A102 */  addu       $at, $s5, $at
    /* 18970 801A18E8 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 18974 801A18EC 5B880608 */  j          .L801A216C
    /* 18978 801A18F0 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801A18F4
    /* 1897C 801A18F4 1E80033C */  lui        $v1, %hi(D_801D8B17)
    /* 18980 801A18F8 178B6390 */  lbu        $v1, %lo(D_801D8B17)($v1)
    /* 18984 801A18FC 00000000 */  nop
    /* 18988 801A1900 05006010 */  beqz       $v1, .L801A1918
    /* 1898C 801A1904 01000224 */   addiu     $v0, $zero, 0x1
    /* 18990 801A1908 59006210 */  beq        $v1, $v0, .L801A1A70
    /* 18994 801A190C 0A000224 */   addiu     $v0, $zero, 0xA
    /* 18998 801A1910 7B870608 */  j          .L801A1DEC
    /* 1899C 801A1914 00000000 */   nop
  .L801A1918:
    /* 189A0 801A1918 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 189A4 801A191C 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 189A8 801A1920 00000000 */  nop
    /* 189AC 801A1924 2110A202 */  addu       $v0, $s5, $v0
    /* 189B0 801A1928 0100013C */  lui        $at, (0x10000 >> 16)
    /* 189B4 801A192C 21084100 */  addu       $at, $v0, $at
    /* 189B8 801A1930 80AB2290 */  lbu        $v0, -0x5480($at)
    /* 189BC 801A1934 00000000 */  nop
    /* 189C0 801A1938 C0180200 */  sll        $v1, $v0, 3
    /* 189C4 801A193C 21186200 */  addu       $v1, $v1, $v0
    /* 189C8 801A1940 80180300 */  sll        $v1, $v1, 2
    /* 189CC 801A1944 1E80023C */  lui        $v0, %hi(D_801D803C)
    /* 189D0 801A1948 3C804290 */  lbu        $v0, %lo(D_801D803C)($v0)
    /* 189D4 801A194C 2118A302 */  addu       $v1, $s5, $v1
    /* 189D8 801A1950 2110A202 */  addu       $v0, $s5, $v0
    /* 189DC 801A1954 0100013C */  lui        $at, (0x10000 >> 16)
    /* 189E0 801A1958 21084100 */  addu       $at, $v0, $at
    /* 189E4 801A195C 80AB2490 */  lbu        $a0, -0x5480($at)
    /* 189E8 801A1960 0100013C */  lui        $at, (0x10000 >> 16)
    /* 189EC 801A1964 21086100 */  addu       $at, $v1, $at
    /* 189F0 801A1968 248F2590 */  lbu        $a1, -0x70DC($at)
    /* 189F4 801A196C C0100400 */  sll        $v0, $a0, 3
    /* 189F8 801A1970 21104400 */  addu       $v0, $v0, $a0
    /* 189FC 801A1974 80100200 */  sll        $v0, $v0, 2
    /* 18A00 801A1978 2110A202 */  addu       $v0, $s5, $v0
    /* 18A04 801A197C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18A08 801A1980 21084100 */  addu       $at, $v0, $at
    /* 18A0C 801A1984 248F2290 */  lbu        $v0, -0x70DC($at)
    /* 18A10 801A1988 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18A14 801A198C 21086100 */  addu       $at, $v1, $at
    /* 18A18 801A1990 248F22A0 */  sb         $v0, -0x70DC($at)
    /* 18A1C 801A1994 1E80023C */  lui        $v0, %hi(D_801D803C)
    /* 18A20 801A1998 3C804290 */  lbu        $v0, %lo(D_801D803C)($v0)
    /* 18A24 801A199C 00000000 */  nop
    /* 18A28 801A19A0 2110A202 */  addu       $v0, $s5, $v0
    /* 18A2C 801A19A4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18A30 801A19A8 21084100 */  addu       $at, $v0, $at
    /* 18A34 801A19AC 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 18A38 801A19B0 00000000 */  nop
    /* 18A3C 801A19B4 C0100300 */  sll        $v0, $v1, 3
    /* 18A40 801A19B8 21104300 */  addu       $v0, $v0, $v1
    /* 18A44 801A19BC 80100200 */  sll        $v0, $v0, 2
    /* 18A48 801A19C0 2110A202 */  addu       $v0, $s5, $v0
    /* 18A4C 801A19C4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18A50 801A19C8 21084100 */  addu       $at, $v0, $at
    /* 18A54 801A19CC 248F25A0 */  sb         $a1, -0x70DC($at)
    /* 18A58 801A19D0 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 18A5C 801A19D4 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 18A60 801A19D8 00000000 */  nop
    /* 18A64 801A19DC 2110A202 */  addu       $v0, $s5, $v0
    /* 18A68 801A19E0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18A6C 801A19E4 21084100 */  addu       $at, $v0, $at
    /* 18A70 801A19E8 80AB2290 */  lbu        $v0, -0x5480($at)
    /* 18A74 801A19EC 00000000 */  nop
    /* 18A78 801A19F0 C0180200 */  sll        $v1, $v0, 3
    /* 18A7C 801A19F4 21186200 */  addu       $v1, $v1, $v0
    /* 18A80 801A19F8 80180300 */  sll        $v1, $v1, 2
    /* 18A84 801A19FC 1E80023C */  lui        $v0, %hi(D_801D803C)
    /* 18A88 801A1A00 3C804290 */  lbu        $v0, %lo(D_801D803C)($v0)
    /* 18A8C 801A1A04 2118A302 */  addu       $v1, $s5, $v1
    /* 18A90 801A1A08 2110A202 */  addu       $v0, $s5, $v0
    /* 18A94 801A1A0C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18A98 801A1A10 21084100 */  addu       $at, $v0, $at
    /* 18A9C 801A1A14 80AB2490 */  lbu        $a0, -0x5480($at)
    /* 18AA0 801A1A18 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18AA4 801A1A1C 21086100 */  addu       $at, $v1, $at
    /* 18AA8 801A1A20 258F2590 */  lbu        $a1, -0x70DB($at)
    /* 18AAC 801A1A24 C0100400 */  sll        $v0, $a0, 3
    /* 18AB0 801A1A28 21104400 */  addu       $v0, $v0, $a0
    /* 18AB4 801A1A2C 80100200 */  sll        $v0, $v0, 2
    /* 18AB8 801A1A30 2110A202 */  addu       $v0, $s5, $v0
    /* 18ABC 801A1A34 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18AC0 801A1A38 21084100 */  addu       $at, $v0, $at
    /* 18AC4 801A1A3C 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 18AC8 801A1A40 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18ACC 801A1A44 21086100 */  addu       $at, $v1, $at
    /* 18AD0 801A1A48 258F22A0 */  sb         $v0, -0x70DB($at)
    /* 18AD4 801A1A4C 1E80023C */  lui        $v0, %hi(D_801D803C)
    /* 18AD8 801A1A50 3C804290 */  lbu        $v0, %lo(D_801D803C)($v0)
    /* 18ADC 801A1A54 00000000 */  nop
    /* 18AE0 801A1A58 2110A202 */  addu       $v0, $s5, $v0
    /* 18AE4 801A1A5C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18AE8 801A1A60 21084100 */  addu       $at, $v0, $at
    /* 18AEC 801A1A64 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 18AF0 801A1A68 3F870608 */  j          .L801A1CFC
    /* 18AF4 801A1A6C C0100300 */   sll       $v0, $v1, 3
  .L801A1A70:
    /* 18AF8 801A1A70 DD02C292 */  lbu        $v0, 0x2DD($s6)
    /* 18AFC 801A1A74 00000000 */  nop
    /* 18B00 801A1A78 FF004230 */  andi       $v0, $v0, 0xFF
    /* 18B04 801A1A7C 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 18B08 801A1A80 21082200 */  addu       $at, $at, $v0
    /* 18B0C 801A1A84 88AD3090 */  lbu        $s0, %lo(D_801DAD88)($at)
    /* 18B10 801A1A88 00000000 */  nop
    /* 18B14 801A1A8C 14000312 */  beq        $s0, $v1, .L801A1AE0
    /* 18B18 801A1A90 0200022A */   slti      $v0, $s0, 0x2
    /* 18B1C 801A1A94 05004010 */  beqz       $v0, .L801A1AAC
    /* 18B20 801A1A98 00000000 */   nop
    /* 18B24 801A1A9C 9F000012 */  beqz       $s0, .L801A1D1C
    /* 18B28 801A1AA0 0A000224 */   addiu     $v0, $zero, 0xA
    /* 18B2C 801A1AA4 7B870608 */  j          .L801A1DEC
    /* 18B30 801A1AA8 00000000 */   nop
  .L801A1AAC:
    /* 18B34 801A1AAC 0400022A */  slti       $v0, $s0, 0x4
    /* 18B38 801A1AB0 CE004010 */  beqz       $v0, .L801A1DEC
    /* 18B3C 801A1AB4 0A000224 */   addiu     $v0, $zero, 0xA
    /* 18B40 801A1AB8 88AD020C */  jal        func_800AB620
    /* 18B44 801A1ABC 12050424 */   addiu     $a0, $zero, 0x512
    /* 18B48 801A1AC0 1E80023C */  lui        $v0, %hi(D_801D803C)
    /* 18B4C 801A1AC4 3C804290 */  lbu        $v0, %lo(D_801D803C)($v0)
    /* 18B50 801A1AC8 1E80013C */  lui        $at, %hi(D_801D8B17)
    /* 18B54 801A1ACC 178B20A0 */  sb         $zero, %lo(D_801D8B17)($at)
    /* 18B58 801A1AD0 1E80013C */  lui        $at, %hi(D_801D8A70)
    /* 18B5C 801A1AD4 708A22A0 */  sb         $v0, %lo(D_801D8A70)($at)
    /* 18B60 801A1AD8 7B870608 */  j          .L801A1DEC
    /* 18B64 801A1ADC 0A000224 */   addiu     $v0, $zero, 0xA
  .L801A1AE0:
    /* 18B68 801A1AE0 88AD020C */  jal        func_800AB620
    /* 18B6C 801A1AE4 27050424 */   addiu     $a0, $zero, 0x527
    /* 18B70 801A1AE8 DD02C292 */  lbu        $v0, 0x2DD($s6)
    /* 18B74 801A1AEC 00000000 */  nop
    /* 18B78 801A1AF0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 18B7C 801A1AF4 1E80013C */  lui        $at, %hi(D_801D8DC0)
    /* 18B80 801A1AF8 21082200 */  addu       $at, $at, $v0
    /* 18B84 801A1AFC C08D2290 */  lbu        $v0, %lo(D_801D8DC0)($at)
    /* 18B88 801A1B00 00000000 */  nop
    /* 18B8C 801A1B04 B9005014 */  bne        $v0, $s0, .L801A1DEC
    /* 18B90 801A1B08 0A000224 */   addiu     $v0, $zero, 0xA
    /* 18B94 801A1B0C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18B98 801A1B10 2108A102 */  addu       $at, $s5, $at
    /* 18B9C 801A1B14 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 18BA0 801A1B18 1E80013C */  lui        $at, %hi(D_801D8A70)
    /* 18BA4 801A1B1C 708A20A0 */  sb         $zero, %lo(D_801D8A70)($at)
    /* 18BA8 801A1B20 C0100300 */  sll        $v0, $v1, 3
    /* 18BAC 801A1B24 21104300 */  addu       $v0, $v0, $v1
    /* 18BB0 801A1B28 80100200 */  sll        $v0, $v0, 2
    /* 18BB4 801A1B2C 2110A202 */  addu       $v0, $s5, $v0
    /* 18BB8 801A1B30 DD02C392 */  lbu        $v1, 0x2DD($s6)
    /* 18BBC 801A1B34 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18BC0 801A1B38 21084100 */  addu       $at, $v0, $at
    /* 18BC4 801A1B3C 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 18BC8 801A1B40 FF006330 */  andi       $v1, $v1, 0xFF
    /* 18BCC 801A1B44 17004310 */  beq        $v0, $v1, .L801A1BA4
    /* 18BD0 801A1B48 80AB0534 */   ori       $a1, $zero, 0xAB80
    /* 18BD4 801A1B4C 21206000 */  addu       $a0, $v1, $zero
  .L801A1B50:
    /* 18BD8 801A1B50 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 18BDC 801A1B54 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 18BE0 801A1B58 00000000 */  nop
    /* 18BE4 801A1B5C 01004224 */  addiu      $v0, $v0, 0x1
    /* 18BE8 801A1B60 1E80013C */  lui        $at, %hi(D_801D8A70)
    /* 18BEC 801A1B64 708A22A0 */  sb         $v0, %lo(D_801D8A70)($at)
    /* 18BF0 801A1B68 FF004230 */  andi       $v0, $v0, 0xFF
    /* 18BF4 801A1B6C 2110A202 */  addu       $v0, $s5, $v0
    /* 18BF8 801A1B70 21104500 */  addu       $v0, $v0, $a1
    /* 18BFC 801A1B74 00004390 */  lbu        $v1, 0x0($v0)
    /* 18C00 801A1B78 00000000 */  nop
    /* 18C04 801A1B7C C0100300 */  sll        $v0, $v1, 3
    /* 18C08 801A1B80 21104300 */  addu       $v0, $v0, $v1
    /* 18C0C 801A1B84 80100200 */  sll        $v0, $v0, 2
    /* 18C10 801A1B88 2110A202 */  addu       $v0, $s5, $v0
    /* 18C14 801A1B8C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18C18 801A1B90 21084100 */  addu       $at, $v0, $at
    /* 18C1C 801A1B94 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 18C20 801A1B98 00000000 */  nop
    /* 18C24 801A1B9C ECFF4414 */  bne        $v0, $a0, .L801A1B50
    /* 18C28 801A1BA0 00000000 */   nop
  .L801A1BA4:
    /* 18C2C 801A1BA4 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 18C30 801A1BA8 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 18C34 801A1BAC 00000000 */  nop
    /* 18C38 801A1BB0 2110A202 */  addu       $v0, $s5, $v0
    /* 18C3C 801A1BB4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18C40 801A1BB8 21084100 */  addu       $at, $v0, $at
    /* 18C44 801A1BBC 80AB2290 */  lbu        $v0, -0x5480($at)
    /* 18C48 801A1BC0 00000000 */  nop
    /* 18C4C 801A1BC4 C0180200 */  sll        $v1, $v0, 3
    /* 18C50 801A1BC8 21186200 */  addu       $v1, $v1, $v0
    /* 18C54 801A1BCC 80180300 */  sll        $v1, $v1, 2
    /* 18C58 801A1BD0 1E80023C */  lui        $v0, %hi(D_801D803C)
    /* 18C5C 801A1BD4 3C804290 */  lbu        $v0, %lo(D_801D803C)($v0)
    /* 18C60 801A1BD8 2118A302 */  addu       $v1, $s5, $v1
    /* 18C64 801A1BDC 2110A202 */  addu       $v0, $s5, $v0
    /* 18C68 801A1BE0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18C6C 801A1BE4 21084100 */  addu       $at, $v0, $at
    /* 18C70 801A1BE8 80AB2490 */  lbu        $a0, -0x5480($at)
    /* 18C74 801A1BEC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18C78 801A1BF0 21086100 */  addu       $at, $v1, $at
    /* 18C7C 801A1BF4 248F2590 */  lbu        $a1, -0x70DC($at)
    /* 18C80 801A1BF8 C0100400 */  sll        $v0, $a0, 3
    /* 18C84 801A1BFC 21104400 */  addu       $v0, $v0, $a0
    /* 18C88 801A1C00 80100200 */  sll        $v0, $v0, 2
    /* 18C8C 801A1C04 2110A202 */  addu       $v0, $s5, $v0
    /* 18C90 801A1C08 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18C94 801A1C0C 21084100 */  addu       $at, $v0, $at
    /* 18C98 801A1C10 248F2290 */  lbu        $v0, -0x70DC($at)
    /* 18C9C 801A1C14 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18CA0 801A1C18 21086100 */  addu       $at, $v1, $at
    /* 18CA4 801A1C1C 248F22A0 */  sb         $v0, -0x70DC($at)
    /* 18CA8 801A1C20 1E80023C */  lui        $v0, %hi(D_801D803C)
    /* 18CAC 801A1C24 3C804290 */  lbu        $v0, %lo(D_801D803C)($v0)
    /* 18CB0 801A1C28 00000000 */  nop
    /* 18CB4 801A1C2C 2110A202 */  addu       $v0, $s5, $v0
    /* 18CB8 801A1C30 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18CBC 801A1C34 21084100 */  addu       $at, $v0, $at
    /* 18CC0 801A1C38 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 18CC4 801A1C3C 00000000 */  nop
    /* 18CC8 801A1C40 C0100300 */  sll        $v0, $v1, 3
    /* 18CCC 801A1C44 21104300 */  addu       $v0, $v0, $v1
    /* 18CD0 801A1C48 80100200 */  sll        $v0, $v0, 2
    /* 18CD4 801A1C4C 2110A202 */  addu       $v0, $s5, $v0
    /* 18CD8 801A1C50 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18CDC 801A1C54 21084100 */  addu       $at, $v0, $at
    /* 18CE0 801A1C58 248F25A0 */  sb         $a1, -0x70DC($at)
    /* 18CE4 801A1C5C 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 18CE8 801A1C60 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 18CEC 801A1C64 00000000 */  nop
    /* 18CF0 801A1C68 2110A202 */  addu       $v0, $s5, $v0
    /* 18CF4 801A1C6C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18CF8 801A1C70 21084100 */  addu       $at, $v0, $at
    /* 18CFC 801A1C74 80AB2290 */  lbu        $v0, -0x5480($at)
    /* 18D00 801A1C78 00000000 */  nop
    /* 18D04 801A1C7C C0180200 */  sll        $v1, $v0, 3
    /* 18D08 801A1C80 21186200 */  addu       $v1, $v1, $v0
    /* 18D0C 801A1C84 80180300 */  sll        $v1, $v1, 2
    /* 18D10 801A1C88 1E80023C */  lui        $v0, %hi(D_801D803C)
    /* 18D14 801A1C8C 3C804290 */  lbu        $v0, %lo(D_801D803C)($v0)
    /* 18D18 801A1C90 2118A302 */  addu       $v1, $s5, $v1
    /* 18D1C 801A1C94 2110A202 */  addu       $v0, $s5, $v0
    /* 18D20 801A1C98 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18D24 801A1C9C 21084100 */  addu       $at, $v0, $at
    /* 18D28 801A1CA0 80AB2490 */  lbu        $a0, -0x5480($at)
    /* 18D2C 801A1CA4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18D30 801A1CA8 21086100 */  addu       $at, $v1, $at
    /* 18D34 801A1CAC 258F2590 */  lbu        $a1, -0x70DB($at)
    /* 18D38 801A1CB0 C0100400 */  sll        $v0, $a0, 3
    /* 18D3C 801A1CB4 21104400 */  addu       $v0, $v0, $a0
    /* 18D40 801A1CB8 80100200 */  sll        $v0, $v0, 2
    /* 18D44 801A1CBC 2110A202 */  addu       $v0, $s5, $v0
    /* 18D48 801A1CC0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18D4C 801A1CC4 21084100 */  addu       $at, $v0, $at
    /* 18D50 801A1CC8 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 18D54 801A1CCC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18D58 801A1CD0 21086100 */  addu       $at, $v1, $at
    /* 18D5C 801A1CD4 258F22A0 */  sb         $v0, -0x70DB($at)
    /* 18D60 801A1CD8 1E80023C */  lui        $v0, %hi(D_801D803C)
    /* 18D64 801A1CDC 3C804290 */  lbu        $v0, %lo(D_801D803C)($v0)
    /* 18D68 801A1CE0 00000000 */  nop
    /* 18D6C 801A1CE4 2110A202 */  addu       $v0, $s5, $v0
    /* 18D70 801A1CE8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18D74 801A1CEC 21084100 */  addu       $at, $v0, $at
    /* 18D78 801A1CF0 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 18D7C 801A1CF4 00000000 */  nop
    /* 18D80 801A1CF8 C0100300 */  sll        $v0, $v1, 3
  .L801A1CFC:
    /* 18D84 801A1CFC 21104300 */  addu       $v0, $v0, $v1
    /* 18D88 801A1D00 80100200 */  sll        $v0, $v0, 2
    /* 18D8C 801A1D04 2110A202 */  addu       $v0, $s5, $v0
    /* 18D90 801A1D08 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18D94 801A1D0C 21084100 */  addu       $at, $v0, $at
    /* 18D98 801A1D10 258F25A0 */  sb         $a1, -0x70DB($at)
    /* 18D9C 801A1D14 7B870608 */  j          .L801A1DEC
    /* 18DA0 801A1D18 0A000224 */   addiu     $v0, $zero, 0xA
  .L801A1D1C:
    /* 18DA4 801A1D1C 88AD020C */  jal        func_800AB620
    /* 18DA8 801A1D20 27050424 */   addiu     $a0, $zero, 0x527
    /* 18DAC 801A1D24 1E80023C */  lui        $v0, %hi(D_801D803C)
    /* 18DB0 801A1D28 3C804290 */  lbu        $v0, %lo(D_801D803C)($v0)
    /* 18DB4 801A1D2C 00000000 */  nop
    /* 18DB8 801A1D30 2110A202 */  addu       $v0, $s5, $v0
    /* 18DBC 801A1D34 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18DC0 801A1D38 21084100 */  addu       $at, $v0, $at
    /* 18DC4 801A1D3C 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 18DC8 801A1D40 00000000 */  nop
    /* 18DCC 801A1D44 C0100300 */  sll        $v0, $v1, 3
    /* 18DD0 801A1D48 21104300 */  addu       $v0, $v0, $v1
    /* 18DD4 801A1D4C 80100200 */  sll        $v0, $v0, 2
    /* 18DD8 801A1D50 2110A202 */  addu       $v0, $s5, $v0
    /* 18DDC 801A1D54 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18DE0 801A1D58 21084100 */  addu       $at, $v0, $at
    /* 18DE4 801A1D5C 258F2690 */  lbu        $a2, -0x70DB($at)
    /* 18DE8 801A1D60 1E80013C */  lui        $at, %hi(D_801D8DC0)
    /* 18DEC 801A1D64 21082600 */  addu       $at, $at, $a2
    /* 18DF0 801A1D68 C08D20A0 */  sb         $zero, %lo(D_801D8DC0)($at)
    /* 18DF4 801A1D6C 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 18DF8 801A1D70 21082600 */  addu       $at, $at, $a2
    /* 18DFC 801A1D74 88AD20A0 */  sb         $zero, %lo(D_801DAD88)($at)
    /* 18E00 801A1D78 1E80023C */  lui        $v0, %hi(D_801D803C)
    /* 18E04 801A1D7C 3C804290 */  lbu        $v0, %lo(D_801D803C)($v0)
    /* 18E08 801A1D80 00000000 */  nop
    /* 18E0C 801A1D84 2110A202 */  addu       $v0, $s5, $v0
    /* 18E10 801A1D88 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18E14 801A1D8C 21084100 */  addu       $at, $v0, $at
    /* 18E18 801A1D90 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 18E1C 801A1D94 00000000 */  nop
    /* 18E20 801A1D98 C0100300 */  sll        $v0, $v1, 3
    /* 18E24 801A1D9C 21104300 */  addu       $v0, $v0, $v1
    /* 18E28 801A1DA0 80100200 */  sll        $v0, $v0, 2
    /* 18E2C 801A1DA4 DD02C392 */  lbu        $v1, 0x2DD($s6)
    /* 18E30 801A1DA8 2110A202 */  addu       $v0, $s5, $v0
    /* 18E34 801A1DAC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18E38 801A1DB0 21084100 */  addu       $at, $v0, $at
    /* 18E3C 801A1DB4 258F23A0 */  sb         $v1, -0x70DB($at)
    /* 18E40 801A1DB8 DD02C292 */  lbu        $v0, 0x2DD($s6)
    /* 18E44 801A1DBC 01000324 */  addiu      $v1, $zero, 0x1
    /* 18E48 801A1DC0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 18E4C 801A1DC4 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 18E50 801A1DC8 21082200 */  addu       $at, $at, $v0
    /* 18E54 801A1DCC 88AD23A0 */  sb         $v1, %lo(D_801DAD88)($at)
    /* 18E58 801A1DD0 DD02C292 */  lbu        $v0, 0x2DD($s6)
    /* 18E5C 801A1DD4 00000000 */  nop
    /* 18E60 801A1DD8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 18E64 801A1DDC 1E80013C */  lui        $at, %hi(D_801D8DC0)
    /* 18E68 801A1DE0 21082200 */  addu       $at, $at, $v0
    /* 18E6C 801A1DE4 C08D23A0 */  sb         $v1, %lo(D_801D8DC0)($at)
    /* 18E70 801A1DE8 0A000224 */  addiu      $v0, $zero, 0xA
  .L801A1DEC:
    /* 18E74 801A1DEC 1E80013C */  lui        $at, %hi(D_801D803C)
    /* 18E78 801A1DF0 3C8020A0 */  sb         $zero, %lo(D_801D803C)($at)
    /* 18E7C 801A1DF4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18E80 801A1DF8 2108A102 */  addu       $at, $s5, $at
    /* 18E84 801A1DFC DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 18E88 801A1E00 5B880608 */  j          .L801A216C
    /* 18E8C 801A1E04 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801A1E08
    /* 18E90 801A1E08 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18E94 801A1E0C 2108A102 */  addu       $at, $s5, $at
    /* 18E98 801A1E10 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 18E9C 801A1E14 00000000 */  nop
    /* 18EA0 801A1E18 0F004230 */  andi       $v0, $v0, 0xF
    /* 18EA4 801A1E1C 02004010 */  beqz       $v0, .L801A1E28
    /* 18EA8 801A1E20 21200000 */   addu      $a0, $zero, $zero
    /* 18EAC 801A1E24 01000424 */  addiu      $a0, $zero, 0x1
  .L801A1E28:
    /* 18EB0 801A1E28 288B060C */  jal        func_801A2CA0
    /* 18EB4 801A1E2C 21280000 */   addu      $a1, $zero, $zero
    /* 18EB8 801A1E30 01000424 */  addiu      $a0, $zero, 0x1
    /* 18EBC 801A1E34 E48B060C */  jal        func_801A2F90
    /* 18EC0 801A1E38 21280000 */   addu      $a1, $zero, $zero
    /* 18EC4 801A1E3C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18EC8 801A1E40 2108A102 */  addu       $at, $s5, $at
    /* 18ECC 801A1E44 1F8F2490 */  lbu        $a0, -0x70E1($at)
    /* 18ED0 801A1E48 21280000 */  addu       $a1, $zero, $zero
    /* 18ED4 801A1E4C 0F008430 */  andi       $a0, $a0, 0xF
    /* 18ED8 801A1E50 3D8C060C */  jal        func_801A30F4
    /* 18EDC 801A1E54 2B200400 */   sltu      $a0, $zero, $a0
    /* 18EE0 801A1E58 21200000 */  addu       $a0, $zero, $zero
    /* 18EE4 801A1E5C 1B8D060C */  jal        func_801A346C
    /* 18EE8 801A1E60 21280000 */   addu      $a1, $zero, $zero
    /* 18EEC 801A1E64 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18EF0 801A1E68 2108A102 */  addu       $at, $s5, $at
    /* 18EF4 801A1E6C DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 18EF8 801A1E70 01000224 */  addiu      $v0, $zero, 0x1
    /* 18EFC 801A1E74 1D80013C */  lui        $at, %hi(D_801D1F60)
    /* 18F00 801A1E78 601F22A0 */  sb         $v0, %lo(D_801D1F60)($at)
    /* 18F04 801A1E7C 1D80013C */  lui        $at, %hi(D_801D1F61)
    /* 18F08 801A1E80 611F20A0 */  sb         $zero, %lo(D_801D1F61)($at)
    /* 18F0C 801A1E84 1E80013C */  lui        $at, %hi(D_801D8A8F)
    /* 18F10 801A1E88 8F8A20A0 */  sb         $zero, %lo(D_801D8A8F)($at)
    /* 18F14 801A1E8C 3C5EA0A2 */  sb         $zero, 0x5E3C($s5)
    /* 18F18 801A1E90 645EA0A2 */  sb         $zero, 0x5E64($s5)
    /* 18F1C 801A1E94 01006324 */  addiu      $v1, $v1, 0x1
    /* 18F20 801A1E98 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18F24 801A1E9C 2108A102 */  addu       $at, $s5, $at
    /* 18F28 801A1EA0 DAAB23A0 */  sb         $v1, -0x5426($at)
    /* 18F2C 801A1EA4 5B880608 */  j          .L801A216C
    /* 18F30 801A1EA8 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801A1EAC
    /* 18F34 801A1EAC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18F38 801A1EB0 2108A102 */  addu       $at, $s5, $at
    /* 18F3C 801A1EB4 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 18F40 801A1EB8 00000000 */  nop
    /* 18F44 801A1EBC 0F004230 */  andi       $v0, $v0, 0xF
    /* 18F48 801A1EC0 0B004010 */  beqz       $v0, .L801A1EF0
    /* 18F4C 801A1EC4 01000424 */   addiu     $a0, $zero, 0x1
    /* 18F50 801A1EC8 3D8C060C */  jal        func_801A30F4
    /* 18F54 801A1ECC 21280000 */   addu      $a1, $zero, $zero
    /* 18F58 801A1ED0 1E80023C */  lui        $v0, %hi(D_801DA060)
    /* 18F5C 801A1ED4 60A0428C */  lw         $v0, %lo(D_801DA060)($v0)
    /* 18F60 801A1ED8 00000000 */  nop
    /* 18F64 801A1EDC 08004228 */  slti       $v0, $v0, 0x8
    /* 18F68 801A1EE0 A2004014 */  bnez       $v0, .L801A216C
    /* 18F6C 801A1EE4 21100000 */   addu      $v0, $zero, $zero
    /* 18F70 801A1EE8 34880608 */  j          .L801A20D0
    /* 18F74 801A1EEC 00000000 */   nop
  .L801A1EF0:
    /* 18F78 801A1EF0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18F7C 801A1EF4 2108A102 */  addu       $at, $s5, $at
    /* 18F80 801A1EF8 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 18F84 801A1EFC 00000000 */  nop
    /* 18F88 801A1F00 02004224 */  addiu      $v0, $v0, 0x2
    /* 18F8C 801A1F04 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18F90 801A1F08 2108A102 */  addu       $at, $s5, $at
    /* 18F94 801A1F0C DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 18F98 801A1F10 5B880608 */  j          .L801A216C
    /* 18F9C 801A1F14 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801A1F18
    /* 18FA0 801A1F18 0100013C */  lui        $at, (0x10000 >> 16)
    /* 18FA4 801A1F1C 2108A102 */  addu       $at, $s5, $at
    /* 18FA8 801A1F20 1F8F2490 */  lbu        $a0, -0x70E1($at)
    /* 18FAC 801A1F24 21280000 */  addu       $a1, $zero, $zero
    /* 18FB0 801A1F28 0F008430 */  andi       $a0, $a0, 0xF
    /* 18FB4 801A1F2C 3D8C060C */  jal        func_801A30F4
    /* 18FB8 801A1F30 2B200400 */   sltu      $a0, $zero, $a0
    /* 18FBC 801A1F34 34880608 */  j          .L801A20D0
    /* 18FC0 801A1F38 00000000 */   nop
  jlabel .L801A1F3C
    /* 18FC4 801A1F3C BAAD060C */  jal        func_801AB6E8
    /* 18FC8 801A1F40 4D000424 */   addiu     $a0, $zero, 0x4D
    /* 18FCC 801A1F44 21184000 */  addu       $v1, $v0, $zero
    /* 18FD0 801A1F48 02000224 */  addiu      $v0, $zero, 0x2
    /* 18FD4 801A1F4C 0C006210 */  beq        $v1, $v0, .L801A1F80
    /* 18FD8 801A1F50 03006228 */   slti      $v0, $v1, 0x3
    /* 18FDC 801A1F54 05004010 */  beqz       $v0, .L801A1F6C
    /* 18FE0 801A1F58 01000224 */   addiu     $v0, $zero, 0x1
    /* 18FE4 801A1F5C 0E006210 */  beq        $v1, $v0, .L801A1F98
    /* 18FE8 801A1F60 01000224 */   addiu     $v0, $zero, 0x1
    /* 18FEC 801A1F64 5B880608 */  j          .L801A216C
    /* 18FF0 801A1F68 21100000 */   addu      $v0, $zero, $zero
  .L801A1F6C:
    /* 18FF4 801A1F6C 03000224 */  addiu      $v0, $zero, 0x3
    /* 18FF8 801A1F70 18006210 */  beq        $v1, $v0, .L801A1FD4
    /* 18FFC 801A1F74 01001024 */   addiu     $s0, $zero, 0x1
    /* 19000 801A1F78 5B880608 */  j          .L801A216C
    /* 19004 801A1F7C 21100000 */   addu      $v0, $zero, $zero
  .L801A1F80:
    /* 19008 801A1F80 3C000224 */  addiu      $v0, $zero, 0x3C
    /* 1900C 801A1F84 0100013C */  lui        $at, (0x10000 >> 16)
    /* 19010 801A1F88 2108A102 */  addu       $at, $s5, $at
    /* 19014 801A1F8C DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 19018 801A1F90 5B880608 */  j          .L801A216C
    /* 1901C 801A1F94 21100000 */   addu      $v0, $zero, $zero
  .L801A1F98:
    /* 19020 801A1F98 1E80013C */  lui        $at, %hi(D_801D8A8F)
    /* 19024 801A1F9C 8F8A22A0 */  sb         $v0, %lo(D_801D8A8F)($at)
    /* 19028 801A1FA0 1E80023C */  lui        $v0, %hi(D_801D8A8E)
    /* 1902C 801A1FA4 8E8A4290 */  lbu        $v0, %lo(D_801D8A8E)($v0)
    /* 19030 801A1FA8 0A000324 */  addiu      $v1, $zero, 0xA
    /* 19034 801A1FAC 1E80013C */  lui        $at, %hi(D_801D8B17)
    /* 19038 801A1FB0 178B20A0 */  sb         $zero, %lo(D_801D8B17)($at)
    /* 1903C 801A1FB4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 19040 801A1FB8 2108A102 */  addu       $at, $s5, $at
    /* 19044 801A1FBC DAAB23A0 */  sb         $v1, -0x5426($at)
    /* 19048 801A1FC0 EF004230 */  andi       $v0, $v0, 0xEF
    /* 1904C 801A1FC4 1E80013C */  lui        $at, %hi(D_801D8A8E)
    /* 19050 801A1FC8 8E8A22A0 */  sb         $v0, %lo(D_801D8A8E)($at)
    /* 19054 801A1FCC 5B880608 */  j          .L801A216C
    /* 19058 801A1FD0 21100000 */   addu      $v0, $zero, $zero
  .L801A1FD4:
    /* 1905C 801A1FD4 1E80023C */  lui        $v0, %hi(D_801D8A8E)
    /* 19060 801A1FD8 8E8A4290 */  lbu        $v0, %lo(D_801D8A8E)($v0)
    /* 19064 801A1FDC 1E80013C */  lui        $at, %hi(D_801D8A8F)
    /* 19068 801A1FE0 8F8A30A0 */  sb         $s0, %lo(D_801D8A8F)($at)
    /* 1906C 801A1FE4 EF004230 */  andi       $v0, $v0, 0xEF
    /* 19070 801A1FE8 1E80013C */  lui        $at, %hi(D_801D8A8E)
    /* 19074 801A1FEC 8E8A22A0 */  sb         $v0, %lo(D_801D8A8E)($at)
    /* 19078 801A1FF0 4C8E060C */  jal        func_801A3930
    /* 1907C 801A1FF4 00000000 */   nop
    /* 19080 801A1FF8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 19084 801A1FFC 2108A102 */  addu       $at, $s5, $at
    /* 19088 801A2000 1F8F2490 */  lbu        $a0, -0x70E1($at)
    /* 1908C 801A2004 CB8D060C */  jal        func_801A372C
    /* 19090 801A2008 0F008430 */   andi      $a0, $a0, 0xF
    /* 19094 801A200C 02000224 */  addiu      $v0, $zero, 0x2
    /* 19098 801A2010 1E80013C */  lui        $at, %hi(D_801D8A70)
    /* 1909C 801A2014 708A20A0 */  sb         $zero, %lo(D_801D8A70)($at)
    /* 190A0 801A2018 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 190A4 801A201C 5CA020AC */  sw         $zero, %lo(D_801DA05C)($at)
    /* 190A8 801A2020 1E80013C */  lui        $at, %hi(D_801D8B17)
    /* 190AC 801A2024 178B30A0 */  sb         $s0, %lo(D_801D8B17)($at)
    /* 190B0 801A2028 0100013C */  lui        $at, (0x10000 >> 16)
    /* 190B4 801A202C 2108A102 */  addu       $at, $s5, $at
    /* 190B8 801A2030 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 190BC 801A2034 5B880608 */  j          .L801A216C
    /* 190C0 801A2038 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801A203C
    /* 190C4 801A203C 21200000 */  addu       $a0, $zero, $zero
    /* 190C8 801A2040 21280000 */  addu       $a1, $zero, $zero
    /* 190CC 801A2044 3C5EA0A2 */  sb         $zero, 0x5E3C($s5)
    /* 190D0 801A2048 E48B060C */  jal        func_801A2F90
    /* 190D4 801A204C 645EA0A2 */   sb        $zero, 0x5E64($s5)
    /* 190D8 801A2050 21200000 */  addu       $a0, $zero, $zero
    /* 190DC 801A2054 3D8C060C */  jal        func_801A30F4
    /* 190E0 801A2058 21280000 */   addu      $a1, $zero, $zero
    /* 190E4 801A205C 21200000 */  addu       $a0, $zero, $zero
    /* 190E8 801A2060 1B8D060C */  jal        func_801A346C
    /* 190EC 801A2064 21280000 */   addu      $a1, $zero, $zero
    /* 190F0 801A2068 0100013C */  lui        $at, (0x10000 >> 16)
    /* 190F4 801A206C 2108A102 */  addu       $at, $s5, $at
    /* 190F8 801A2070 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 190FC 801A2074 1D80013C */  lui        $at, %hi(D_801D1F60)
    /* 19100 801A2078 601F20A0 */  sb         $zero, %lo(D_801D1F60)($at)
    /* 19104 801A207C 1D80013C */  lui        $at, %hi(D_801D1F61)
    /* 19108 801A2080 611F20A0 */  sb         $zero, %lo(D_801D1F61)($at)
    /* 1910C 801A2084 1E80013C */  lui        $at, %hi(D_801D8A8F)
    /* 19110 801A2088 8F8A20A0 */  sb         $zero, %lo(D_801D8A8F)($at)
    /* 19114 801A208C 1E80013C */  lui        $at, %hi(D_801D803B)
    /* 19118 801A2090 3B8020A0 */  sb         $zero, %lo(D_801D803B)($at)
    /* 1911C 801A2094 6C60A0A2 */  sb         $zero, 0x606C($s5)
    /* 19120 801A2098 0100013C */  lui        $at, (0x10000 >> 16)
    /* 19124 801A209C 2108A102 */  addu       $at, $s5, $at
    /* 19128 801A20A0 21AC20A0 */  sb         $zero, -0x53DF($at)
    /* 1912C 801A20A4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 19130 801A20A8 2108A102 */  addu       $at, $s5, $at
    /* 19134 801A20AC 20AC20A0 */  sb         $zero, -0x53E0($at)
    /* 19138 801A20B0 39880608 */  j          .L801A20E4
    /* 1913C 801A20B4 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801A20B8
    /* 19140 801A20B8 CF8A060C */  jal        func_801A2B3C
    /* 19144 801A20BC 00000000 */   nop
    /* 19148 801A20C0 2A004010 */  beqz       $v0, .L801A216C
    /* 1914C 801A20C4 21100000 */   addu      $v0, $zero, $zero
    /* 19150 801A20C8 88AD020C */  jal        func_800AB620
    /* 19154 801A20CC 07000424 */   addiu     $a0, $zero, 0x7
  .L801A20D0:
    /* 19158 801A20D0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1915C 801A20D4 2108A102 */  addu       $at, $s5, $at
    /* 19160 801A20D8 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 19164 801A20DC 00000000 */  nop
    /* 19168 801A20E0 01004224 */  addiu      $v0, $v0, 0x1
  .L801A20E4:
    /* 1916C 801A20E4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 19170 801A20E8 2108A102 */  addu       $at, $s5, $at
    /* 19174 801A20EC DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 19178 801A20F0 5B880608 */  j          .L801A216C
    /* 1917C 801A20F4 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801A20F8
    /* 19180 801A20F8 10000424 */  addiu      $a0, $zero, 0x10
    /* 19184 801A20FC 37BC010C */  jal        func_8006F0DC
    /* 19188 801A2100 01000524 */   addiu     $a1, $zero, 0x1
    /* 1918C 801A2104 18004010 */  beqz       $v0, .L801A2168
    /* 19190 801A2108 02000224 */   addiu     $v0, $zero, 0x2
    /* 19194 801A210C 5B880608 */  j          .L801A216C
    /* 19198 801A2110 A202C0A2 */   sb        $zero, 0x2A2($s6)
  jlabel .L801A2114
    /* 1919C 801A2114 CF8A060C */  jal        func_801A2B3C
    /* 191A0 801A2118 00000000 */   nop
    /* 191A4 801A211C 12004010 */  beqz       $v0, .L801A2168
    /* 191A8 801A2120 39000524 */   addiu     $a1, $zero, 0x39
    /* 191AC 801A2124 E102C392 */  lbu        $v1, 0x2E1($s6)
    /* 191B0 801A2128 01000224 */  addiu      $v0, $zero, 0x1
    /* 191B4 801A212C FF006330 */  andi       $v1, $v1, 0xFF
    /* 191B8 801A2130 02006214 */  bne        $v1, $v0, .L801A213C
    /* 191BC 801A2134 A202C0A2 */   sb        $zero, 0x2A2($s6)
    /* 191C0 801A2138 28000524 */  addiu      $a1, $zero, 0x28
  .L801A213C:
    /* 191C4 801A213C C839060C */  jal        func_8018E720
    /* 191C8 801A2140 21200000 */   addu      $a0, $zero, $zero
    /* 191CC 801A2144 03000424 */  addiu      $a0, $zero, 0x3
    /* 191D0 801A2148 0F000524 */  addiu      $a1, $zero, 0xF
    /* 191D4 801A214C 2B39060C */  jal        func_8018E4AC
    /* 191D8 801A2150 21300000 */   addu      $a2, $zero, $zero
    /* 191DC 801A2154 1E80033C */  lui        $v1, %hi(D_801D8038)
    /* 191E0 801A2158 38806390 */  lbu        $v1, %lo(D_801D8038)($v1)
    /* 191E4 801A215C 01000224 */  addiu      $v0, $zero, 0x1
    /* 191E8 801A2160 5B880608 */  j          .L801A216C
    /* 191EC 801A2164 DE02C3A2 */   sb        $v1, 0x2DE($s6)
  jlabel .L801A2168
    /* 191F0 801A2168 21100000 */  addu       $v0, $zero, $zero
  .L801A216C:
    /* 191F4 801A216C FC00BF8F */  lw         $ra, 0xFC($sp)
    /* 191F8 801A2170 F800B68F */  lw         $s6, 0xF8($sp)
    /* 191FC 801A2174 F400B58F */  lw         $s5, 0xF4($sp)
    /* 19200 801A2178 F000B48F */  lw         $s4, 0xF0($sp)
    /* 19204 801A217C EC00B38F */  lw         $s3, 0xEC($sp)
    /* 19208 801A2180 E800B28F */  lw         $s2, 0xE8($sp)
    /* 1920C 801A2184 E400B18F */  lw         $s1, 0xE4($sp)
    /* 19210 801A2188 E000B08F */  lw         $s0, 0xE0($sp)
    /* 19214 801A218C 0001BD27 */  addiu      $sp, $sp, 0x100
    /* 19218 801A2190 0800E003 */  jr         $ra
    /* 1921C 801A2194 00000000 */   nop
endlabel func_8019F994
