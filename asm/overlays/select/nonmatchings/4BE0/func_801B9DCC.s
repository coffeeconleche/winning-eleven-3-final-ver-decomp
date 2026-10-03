nonmatching func_801B9DCC, 0x390

glabel func_801B9DCC
    /* 30E54 801B9DCC 58FFBD27 */  addiu      $sp, $sp, -0xA8
    /* 30E58 801B9DD0 FF008230 */  andi       $v0, $a0, 0xFF
    /* 30E5C 801B9DD4 21200000 */  addu       $a0, $zero, $zero
    /* 30E60 801B9DD8 0060053C */  lui        $a1, (0x60000000 >> 16)
    /* 30E64 801B9DDC 1E80063C */  lui        $a2, %hi(D_801D8D90)
    /* 30E68 801B9DE0 908DC624 */  addiu      $a2, $a2, %lo(D_801D8D90)
    /* 30E6C 801B9DE4 0200422C */  sltiu      $v0, $v0, 0x2
    /* 30E70 801B9DE8 1180033C */  lui        $v1, %hi(D_8010865D)
    /* 30E74 801B9DEC 5D866390 */  lbu        $v1, %lo(D_8010865D)($v1)
    /* 30E78 801B9DF0 01004238 */  xori       $v0, $v0, 0x1
    /* 30E7C 801B9DF4 A000BEAF */  sw         $fp, 0xA0($sp)
    /* 30E80 801B9DF8 8C00B3AF */  sw         $s3, 0x8C($sp)
    /* 30E84 801B9DFC 26104300 */  xor        $v0, $v0, $v1
    /* 30E88 801B9E00 5000A2A3 */  sb         $v0, 0x50($sp)
    /* 30E8C 801B9E04 5000B393 */  lbu        $s3, 0x50($sp)
    /* 30E90 801B9E08 01001E24 */  addiu      $fp, $zero, 0x1
    /* 30E94 801B9E0C A400BFAF */  sw         $ra, 0xA4($sp)
    /* 30E98 801B9E10 9C00B7AF */  sw         $s7, 0x9C($sp)
    /* 30E9C 801B9E14 9800B6AF */  sw         $s6, 0x98($sp)
    /* 30EA0 801B9E18 9400B5AF */  sw         $s5, 0x94($sp)
    /* 30EA4 801B9E1C 9000B4AF */  sw         $s4, 0x90($sp)
    /* 30EA8 801B9E20 8800B2AF */  sw         $s2, 0x88($sp)
    /* 30EAC 801B9E24 8400B1AF */  sw         $s1, 0x84($sp)
    /* 30EB0 801B9E28 8000B0AF */  sw         $s0, 0x80($sp)
    /* 30EB4 801B9E2C 80881300 */  sll        $s1, $s3, 2
    /* 30EB8 801B9E30 801F013C */  lui        $at, (0x1F8002D3 >> 16)
    /* 30EBC 801B9E34 21082102 */  addu       $at, $s1, $at
    /* 30EC0 801B9E38 D3022390 */  lbu        $v1, (0x1F8002D3 & 0xFFFF)($at)
    /* 30EC4 801B9E3C 801F013C */  lui        $at, (0x1F8002D4 >> 16)
    /* 30EC8 801B9E40 21082102 */  addu       $at, $s1, $at
    /* 30ECC 801B9E44 D4022790 */  lbu        $a3, (0x1F8002D4 & 0xFFFF)($at)
    /* 30ED0 801B9E48 01004238 */  xori       $v0, $v0, 0x1
    /* 30ED4 801B9E4C 5800A2A3 */  sb         $v0, 0x58($sp)
    /* 30ED8 801B9E50 1180013C */  lui        $at, %hi(D_8010A2EA)
    /* 30EDC 801B9E54 21083300 */  addu       $at, $at, $s3
    /* 30EE0 801B9E58 EAA22290 */  lbu        $v0, %lo(D_8010A2EA)($at)
    /* 30EE4 801B9E5C 5800B293 */  lbu        $s2, 0x58($sp)
    /* 30EE8 801B9E60 21186700 */  addu       $v1, $v1, $a3
    /* 30EEC 801B9E64 40180300 */  sll        $v1, $v1, 1
    /* 30EF0 801B9E68 21104300 */  addu       $v0, $v0, $v1
    /* 30EF4 801B9E6C 80801200 */  sll        $s0, $s2, 2
    /* 30EF8 801B9E70 21380000 */  addu       $a3, $zero, $zero
    /* 30EFC 801B9E74 4800A2A3 */  sb         $v0, 0x48($sp)
    /* 30F00 801B9E78 1180013C */  lui        $at, %hi(D_8010A2EA)
    /* 30F04 801B9E7C 21083200 */  addu       $at, $at, $s2
    /* 30F08 801B9E80 EAA22390 */  lbu        $v1, %lo(D_8010A2EA)($at)
    /* 30F0C 801B9E84 801F013C */  lui        $at, (0x1F8002D3 >> 16)
    /* 30F10 801B9E88 21080102 */  addu       $at, $s0, $at
    /* 30F14 801B9E8C D3022890 */  lbu        $t0, (0x1F8002D3 & 0xFFFF)($at)
    /* 30F18 801B9E90 801F013C */  lui        $at, (0x1F8002D4 >> 16)
    /* 30F1C 801B9E94 21080102 */  addu       $at, $s0, $at
    /* 30F20 801B9E98 D4022990 */  lbu        $t1, (0x1F8002D4 & 0xFFFF)($at)
    /* 30F24 801B9E9C 14000224 */  addiu      $v0, $zero, 0x14
    /* 30F28 801B9EA0 0000C0A4 */  sh         $zero, 0x0($a2)
    /* 30F2C 801B9EA4 1E80013C */  lui        $at, %hi(D_801D8D92)
    /* 30F30 801B9EA8 928D22A4 */  sh         $v0, %lo(D_801D8D92)($at)
    /* 30F34 801B9EAC 7A000224 */  addiu      $v0, $zero, 0x7A
    /* 30F38 801B9EB0 1E80013C */  lui        $at, %hi(D_801D8D94)
    /* 30F3C 801B9EB4 948D22A4 */  sh         $v0, %lo(D_801D8D94)($at)
    /* 30F40 801B9EB8 68000224 */  addiu      $v0, $zero, 0x68
    /* 30F44 801B9EBC 1E80013C */  lui        $at, %hi(D_801D8D96)
    /* 30F48 801B9EC0 968D22A4 */  sh         $v0, %lo(D_801D8D96)($at)
    /* 30F4C 801B9EC4 20000224 */  addiu      $v0, $zero, 0x20
    /* 30F50 801B9EC8 1E80013C */  lui        $at, %hi(D_801D8D98)
    /* 30F54 801B9ECC 988D20A0 */  sb         $zero, %lo(D_801D8D98)($at)
    /* 30F58 801B9ED0 1E80013C */  lui        $at, %hi(D_801D8D99)
    /* 30F5C 801B9ED4 998D20A0 */  sb         $zero, %lo(D_801D8D99)($at)
    /* 30F60 801B9ED8 1E80013C */  lui        $at, %hi(D_801D8D9A)
    /* 30F64 801B9EDC 9A8D22A0 */  sb         $v0, %lo(D_801D8D9A)($at)
    /* 30F68 801B9EE0 40180300 */  sll        $v1, $v1, 1
    /* 30F6C 801B9EE4 21400901 */  addu       $t0, $t0, $t1
    /* 30F70 801B9EE8 21186800 */  addu       $v1, $v1, $t0
    /* 30F74 801B9EEC 4900A3A3 */  sb         $v1, 0x49($sp)
    /* 30F78 801B9EF0 1000BEAF */  sw         $fp, 0x10($sp)
    /* 30F7C 801B9EF4 7850060C */  jal        func_801941E0
    /* 30F80 801B9EF8 1400BEAF */   sw        $fp, 0x14($sp)
    /* 30F84 801B9EFC 10000424 */  addiu      $a0, $zero, 0x10
    /* 30F88 801B9F00 F5300524 */  addiu      $a1, $zero, 0x30F5
    /* 30F8C 801B9F04 21300000 */  addu       $a2, $zero, $zero
    /* 30F90 801B9F08 21380000 */  addu       $a3, $zero, $zero
    /* 30F94 801B9F0C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 30F98 801B9F10 1000A2AF */  sw         $v0, 0x10($sp)
    /* 30F9C 801B9F14 1A000224 */  addiu      $v0, $zero, 0x1A
    /* 30FA0 801B9F18 00101724 */  addiu      $s7, $zero, 0x1000
    /* 30FA4 801B9F1C 80001524 */  addiu      $s5, $zero, 0x80
    /* 30FA8 801B9F20 1400A2AF */  sw         $v0, 0x14($sp)
    /* 30FAC 801B9F24 02000224 */  addiu      $v0, $zero, 0x2
    /* 30FB0 801B9F28 1800A0AF */  sw         $zero, 0x18($sp)
    /* 30FB4 801B9F2C 1C00B7AF */  sw         $s7, 0x1C($sp)
    /* 30FB8 801B9F30 2000B7AF */  sw         $s7, 0x20($sp)
    /* 30FBC 801B9F34 2400A0AF */  sw         $zero, 0x24($sp)
    /* 30FC0 801B9F38 2800A0AF */  sw         $zero, 0x28($sp)
    /* 30FC4 801B9F3C 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 30FC8 801B9F40 3000B5AF */  sw         $s5, 0x30($sp)
    /* 30FCC 801B9F44 3400B5AF */  sw         $s5, 0x34($sp)
    /* 30FD0 801B9F48 3800A0AF */  sw         $zero, 0x38($sp)
    /* 30FD4 801B9F4C 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 30FD8 801B9F50 ED4F060C */  jal        func_80193FB4
    /* 30FDC 801B9F54 4000BEAF */   sw        $fp, 0x40($sp)
    /* 30FE0 801B9F58 0174000C */  jal        func_8001D004
    /* 30FE4 801B9F5C F5300424 */   addiu     $a0, $zero, 0x30F5
    /* 30FE8 801B9F60 21A04000 */  addu       $s4, $v0, $zero
    /* 30FEC 801B9F64 5B000324 */  addiu      $v1, $zero, 0x5B
    /* 30FF0 801B9F68 61000224 */  addiu      $v0, $zero, 0x61
    /* 30FF4 801B9F6C 1080163C */  lui        $s6, %hi(D_800FF748)
    /* 30FF8 801B9F70 48F7D626 */  addiu      $s6, $s6, %lo(D_800FF748)
    /* 30FFC 801B9F74 0A0083A2 */  sb         $v1, 0xA($s4)
    /* 31000 801B9F78 160082A2 */  sb         $v0, 0x16($s4)
    /* 31004 801B9F7C 220082A2 */  sb         $v0, 0x22($s4)
    /* 31008 801B9F80 2E0083A2 */  sb         $v1, 0x2E($s4)
    /* 3100C 801B9F84 4800A393 */  lbu        $v1, 0x48($sp)
    /* 31010 801B9F88 801F013C */  lui        $at, (0x1F8002D5 >> 16)
    /* 31014 801B9F8C 21082102 */  addu       $at, $s1, $at
    /* 31018 801B9F90 D5022290 */  lbu        $v0, (0x1F8002D5 & 0xFFFF)($at)
    /* 3101C 801B9F94 801F013C */  lui        $at, (0x1F8002D6 >> 16)
    /* 31020 801B9F98 21082102 */  addu       $at, $s1, $at
    /* 31024 801B9F9C D6022490 */  lbu        $a0, (0x1F8002D6 & 0xFFFF)($at)
    /* 31028 801B9FA0 801F013C */  lui        $at, (0x1F8002DB >> 16)
    /* 3102C 801B9FA4 21086102 */  addu       $at, $s3, $at
    /* 31030 801B9FA8 DB022590 */  lbu        $a1, (0x1F8002DB & 0xFFFF)($at)
    /* 31034 801B9FAC 21186200 */  addu       $v1, $v1, $v0
    /* 31038 801B9FB0 21186400 */  addu       $v1, $v1, $a0
    /* 3103C 801B9FB4 4900A293 */  lbu        $v0, 0x49($sp)
    /* 31040 801B9FB8 801F013C */  lui        $at, (0x1F8002D5 >> 16)
    /* 31044 801B9FBC 21080102 */  addu       $at, $s0, $at
    /* 31048 801B9FC0 D5022490 */  lbu        $a0, (0x1F8002D5 & 0xFFFF)($at)
    /* 3104C 801B9FC4 21186500 */  addu       $v1, $v1, $a1
    /* 31050 801B9FC8 21104400 */  addu       $v0, $v0, $a0
    /* 31054 801B9FCC 801F013C */  lui        $at, (0x1F8002D6 >> 16)
    /* 31058 801B9FD0 21080102 */  addu       $at, $s0, $at
    /* 3105C 801B9FD4 D6022490 */  lbu        $a0, (0x1F8002D6 & 0xFFFF)($at)
    /* 31060 801B9FD8 801F013C */  lui        $at, (0x1F8002DB >> 16)
    /* 31064 801B9FDC 21084102 */  addu       $at, $s2, $at
    /* 31068 801B9FE0 DB022590 */  lbu        $a1, (0x1F8002DB & 0xFFFF)($at)
    /* 3106C 801B9FE4 21104400 */  addu       $v0, $v0, $a0
    /* 31070 801B9FE8 21104500 */  addu       $v0, $v0, $a1
    /* 31074 801B9FEC 2A104300 */  slt        $v0, $v0, $v1
    /* 31078 801B9FF0 03004010 */  beqz       $v0, .L801BA000
    /* 3107C 801B9FF4 03000424 */   addiu     $a0, $zero, 0x3
    /* 31080 801B9FF8 01E80608 */  j          .L801BA004
    /* 31084 801B9FFC F6300524 */   addiu     $a1, $zero, 0x30F6
  .L801BA000:
    /* 31088 801BA000 F7300524 */  addiu      $a1, $zero, 0x30F7
  .L801BA004:
    /* 3108C 801BA004 21300000 */  addu       $a2, $zero, $zero
    /* 31090 801BA008 21380000 */  addu       $a3, $zero, $zero
    /* 31094 801BA00C 06000224 */  addiu      $v0, $zero, 0x6
    /* 31098 801BA010 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3109C 801BA014 03000224 */  addiu      $v0, $zero, 0x3
    /* 310A0 801BA018 1000A0AF */  sw         $zero, 0x10($sp)
    /* 310A4 801BA01C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 310A8 801BA020 1C00B7AF */  sw         $s7, 0x1C($sp)
    /* 310AC 801BA024 2000B7AF */  sw         $s7, 0x20($sp)
    /* 310B0 801BA028 2400A0AF */  sw         $zero, 0x24($sp)
    /* 310B4 801BA02C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 310B8 801BA030 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 310BC 801BA034 3000B5AF */  sw         $s5, 0x30($sp)
    /* 310C0 801BA038 3400B5AF */  sw         $s5, 0x34($sp)
    /* 310C4 801BA03C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 310C8 801BA040 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 310CC 801BA044 ED4F060C */  jal        func_80193FB4
    /* 310D0 801BA048 4000BEAF */   sw        $fp, 0x40($sp)
    /* 310D4 801BA04C 60008426 */  addiu      $a0, $s4, 0x60
    /* 310D8 801BA050 02000624 */  addiu      $a2, $zero, 0x2
    /* 310DC 801BA054 5000B093 */  lbu        $s0, 0x50($sp)
    /* 310E0 801BA058 B0000724 */  addiu      $a3, $zero, 0xB0
    /* 310E4 801BA05C 2110D002 */  addu       $v0, $s6, $s0
    /* 310E8 801BA060 0100013C */  lui        $at, (0x10000 >> 16)
    /* 310EC 801BA064 21084100 */  addu       $at, $v0, $at
    /* 310F0 801BA068 A2AB2590 */  lbu        $a1, -0x545E($at)
    /* 310F4 801BA06C 61001224 */  addiu      $s2, $zero, 0x61
    /* 310F8 801BA070 50A5060C */  jal        func_801A9540
    /* 310FC 801BA074 1000B2AF */   sw        $s2, 0x10($sp)
    /* 31100 801BA078 78008426 */  addiu      $a0, $s4, 0x78
    /* 31104 801BA07C 5800B193 */  lbu        $s1, 0x58($sp)
    /* 31108 801BA080 01000624 */  addiu      $a2, $zero, 0x1
    /* 3110C 801BA084 2110D102 */  addu       $v0, $s6, $s1
    /* 31110 801BA088 0100013C */  lui        $at, (0x10000 >> 16)
    /* 31114 801BA08C 21084100 */  addu       $at, $v0, $at
    /* 31118 801BA090 A2AB2590 */  lbu        $a1, -0x545E($at)
    /* 3111C 801BA094 B0000724 */  addiu      $a3, $zero, 0xB0
    /* 31120 801BA098 50A5060C */  jal        func_801A9540
    /* 31124 801BA09C 1000B2AF */   sw        $s2, 0x10($sp)
    /* 31128 801BA0A0 90008426 */  addiu      $a0, $s4, 0x90
    /* 3112C 801BA0A4 02000624 */  addiu      $a2, $zero, 0x2
    /* 31130 801BA0A8 80801000 */  sll        $s0, $s0, 2
    /* 31134 801BA0AC 801F0A3C */  lui        $t2, (0x1F8002D4 >> 16)
    /* 31138 801BA0B0 21805001 */  addu       $s0, $t2, $s0
    /* 3113C 801BA0B4 D3020292 */  lbu        $v0, (0x1F8002D3 & 0xFFFF)($s0)
    /* 31140 801BA0B8 D4020592 */  lbu        $a1, (0x1F8002D4 & 0xFFFF)($s0)
    /* 31144 801BA0BC B0000724 */  addiu      $a3, $zero, 0xB0
    /* 31148 801BA0C0 1000B2AF */  sw         $s2, 0x10($sp)
    /* 3114C 801BA0C4 50A5060C */  jal        func_801A9540
    /* 31150 801BA0C8 21284500 */   addu      $a1, $v0, $a1
    /* 31154 801BA0CC A8008426 */  addiu      $a0, $s4, 0xA8
    /* 31158 801BA0D0 01000624 */  addiu      $a2, $zero, 0x1
    /* 3115C 801BA0D4 80881100 */  sll        $s1, $s1, 2
    /* 31160 801BA0D8 801F0A3C */  lui        $t2, (0x1F8002D4 >> 16)
    /* 31164 801BA0DC 21885101 */  addu       $s1, $t2, $s1
    /* 31168 801BA0E0 D3022292 */  lbu        $v0, (0x1F8002D3 & 0xFFFF)($s1)
    /* 3116C 801BA0E4 D4022592 */  lbu        $a1, (0x1F8002D4 & 0xFFFF)($s1)
    /* 31170 801BA0E8 B0000724 */  addiu      $a3, $zero, 0xB0
    /* 31174 801BA0EC 1000B2AF */  sw         $s2, 0x10($sp)
    /* 31178 801BA0F0 50A5060C */  jal        func_801A9540
    /* 3117C 801BA0F4 21284500 */   addu      $a1, $v0, $a1
    /* 31180 801BA0F8 C0008426 */  addiu      $a0, $s4, 0xC0
    /* 31184 801BA0FC 02000624 */  addiu      $a2, $zero, 0x2
    /* 31188 801BA100 4800A593 */  lbu        $a1, 0x48($sp)
    /* 3118C 801BA104 B0000724 */  addiu      $a3, $zero, 0xB0
    /* 31190 801BA108 50A5060C */  jal        func_801A9540
    /* 31194 801BA10C 1000B2AF */   sw        $s2, 0x10($sp)
    /* 31198 801BA110 D8008426 */  addiu      $a0, $s4, 0xD8
    /* 3119C 801BA114 01000624 */  addiu      $a2, $zero, 0x1
    /* 311A0 801BA118 4900A593 */  lbu        $a1, 0x49($sp)
    /* 311A4 801BA11C B0000724 */  addiu      $a3, $zero, 0xB0
    /* 311A8 801BA120 50A5060C */  jal        func_801A9540
    /* 311AC 801BA124 1000B2AF */   sw        $s2, 0x10($sp)
    /* 311B0 801BA128 A400BF8F */  lw         $ra, 0xA4($sp)
    /* 311B4 801BA12C A000BE8F */  lw         $fp, 0xA0($sp)
    /* 311B8 801BA130 9C00B78F */  lw         $s7, 0x9C($sp)
    /* 311BC 801BA134 9800B68F */  lw         $s6, 0x98($sp)
    /* 311C0 801BA138 9400B58F */  lw         $s5, 0x94($sp)
    /* 311C4 801BA13C 9000B48F */  lw         $s4, 0x90($sp)
    /* 311C8 801BA140 8C00B38F */  lw         $s3, 0x8C($sp)
    /* 311CC 801BA144 8800B28F */  lw         $s2, 0x88($sp)
    /* 311D0 801BA148 8400B18F */  lw         $s1, 0x84($sp)
    /* 311D4 801BA14C 8000B08F */  lw         $s0, 0x80($sp)
    /* 311D8 801BA150 A800BD27 */  addiu      $sp, $sp, 0xA8
    /* 311DC 801BA154 0800E003 */  jr         $ra
    /* 311E0 801BA158 00000000 */   nop
endlabel func_801B9DCC
