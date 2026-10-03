nonmatching func_8018DE7C, 0xB4

glabel func_8018DE7C
    /* 4F04 8018DE7C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4F08 8018DE80 21200000 */  addu       $a0, $zero, $zero
    /* 4F0C 8018DE84 1400BFAF */  sw         $ra, 0x14($sp)
    /* 4F10 8018DE88 153F010C */  jal        func_8004FC54
    /* 4F14 8018DE8C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 4F18 8018DE90 1180023C */  lui        $v0, %hi(D_8010A364)
    /* 4F1C 8018DE94 64A34290 */  lbu        $v0, %lo(D_8010A364)($v0)
    /* 4F20 8018DE98 801F013C */  lui        $at, (0x1F800330 >> 16)
    /* 4F24 8018DE9C 300320A0 */  sb         $zero, (0x1F800330 & 0xFFFF)($at)
    /* 4F28 8018DEA0 1180013C */  lui        $at, %hi(D_8010A31E)
    /* 4F2C 8018DEA4 1EA320A4 */  sh         $zero, %lo(D_8010A31E)($at)
    /* 4F30 8018DEA8 1E80013C */  lui        $at, %hi(D_801D8DBD)
    /* 4F34 8018DEAC BD8D20A0 */  sb         $zero, %lo(D_801D8DBD)($at)
    /* 4F38 8018DEB0 01004224 */  addiu      $v0, $v0, 0x1
    /* 4F3C 8018DEB4 1180013C */  lui        $at, %hi(D_8010A364)
    /* 4F40 8018DEB8 64A322A0 */  sb         $v0, %lo(D_8010A364)($at)
    /* 4F44 8018DEBC 8863060C */  jal        func_80198E20
    /* 4F48 8018DEC0 801F103C */   lui       $s0, (0x1F8002E1 >> 16)
    /* 4F4C 8018DEC4 1180023C */  lui        $v0, %hi(D_8010A5B4)
    /* 4F50 8018DEC8 B4A54284 */  lh         $v0, %lo(D_8010A5B4)($v0)
    /* 4F54 8018DECC 00000000 */  nop
    /* 4F58 8018DED0 02004014 */  bnez       $v0, .L8018DEDC
    /* 4F5C 8018DED4 30000224 */   addiu     $v0, $zero, 0x30
    /* 4F60 8018DED8 31000224 */  addiu      $v0, $zero, 0x31
  .L8018DEDC:
    /* 4F64 8018DEDC 801F013C */  lui        $at, (0x1F80029A >> 16)
    /* 4F68 8018DEE0 9A0222A0 */  sb         $v0, (0x1F80029A & 0xFFFF)($at)
    /* 4F6C 8018DEE4 1D80023C */  lui        $v0, %hi(D_801D4299)
    /* 4F70 8018DEE8 99424290 */  lbu        $v0, %lo(D_801D4299)($v0)
    /* 4F74 8018DEEC 00000000 */  nop
    /* 4F78 8018DEF0 08004010 */  beqz       $v0, .L8018DF14
    /* 4F7C 8018DEF4 06000224 */   addiu     $v0, $zero, 0x6
    /* 4F80 8018DEF8 300300A2 */  sb         $zero, (0x1F800330 & 0xFFFF)($s0)
    /* 4F84 8018DEFC 7A13070C */  jal        func_801C4DE8
    /* 4F88 8018DF00 E10202A2 */   sb        $v0, (0x1F8002E1 & 0xFFFF)($s0)
    /* 4F8C 8018DF04 A367060C */  jal        func_80199E8C
    /* 4F90 8018DF08 00000000 */   nop
    /* 4F94 8018DF0C C7370608 */  j          .L8018DF1C
    /* 4F98 8018DF10 00000000 */   nop
  .L8018DF14:
    /* 4F9C 8018DF14 6D4A060C */  jal        func_801929B4
    /* 4FA0 8018DF18 21200000 */   addu      $a0, $zero, $zero
  .L8018DF1C:
    /* 4FA4 8018DF1C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 4FA8 8018DF20 1000B08F */  lw         $s0, 0x10($sp)
    /* 4FAC 8018DF24 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4FB0 8018DF28 0800E003 */  jr         $ra
    /* 4FB4 8018DF2C 00000000 */   nop
endlabel func_8018DE7C
