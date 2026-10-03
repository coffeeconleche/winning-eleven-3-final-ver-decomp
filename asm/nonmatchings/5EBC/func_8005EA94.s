nonmatching func_8005EA94, 0xB4

glabel func_8005EA94
    /* 4F294 8005EA94 1180033C */  lui        $v1, %hi(D_8010C1EC)
    /* 4F298 8005EA98 ECC16390 */  lbu        $v1, %lo(D_8010C1EC)($v1)
    /* 4F29C 8005EA9C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4F2A0 8005EAA0 0600622C */  sltiu      $v0, $v1, 0x6
    /* 4F2A4 8005EAA4 20004010 */  beqz       $v0, .L8005EB28
    /* 4F2A8 8005EAA8 1000BFAF */   sw        $ra, 0x10($sp)
    /* 4F2AC 8005EAAC 80100300 */  sll        $v0, $v1, 2
    /* 4F2B0 8005EAB0 0180013C */  lui        $at, %hi(jtbl_80012398)
    /* 4F2B4 8005EAB4 21082200 */  addu       $at, $at, $v0
    /* 4F2B8 8005EAB8 9823228C */  lw         $v0, %lo(jtbl_80012398)($at)
    /* 4F2BC 8005EABC 00000000 */  nop
    /* 4F2C0 8005EAC0 08004000 */  jr         $v0
    /* 4F2C4 8005EAC4 00000000 */   nop
  jlabel .L8005EAC8
    /* 4F2C8 8005EAC8 D27A010C */  jal        func_8005EB48
    /* 4F2CC 8005EACC 00000000 */   nop
    /* 4F2D0 8005EAD0 CE7A0108 */  j          .L8005EB38
    /* 4F2D4 8005EAD4 00000000 */   nop
  jlabel .L8005EAD8
    /* 4F2D8 8005EAD8 E57B010C */  jal        func_8005EF94
    /* 4F2DC 8005EADC 00000000 */   nop
    /* 4F2E0 8005EAE0 CE7A0108 */  j          .L8005EB38
    /* 4F2E4 8005EAE4 00000000 */   nop
  jlabel .L8005EAE8
    /* 4F2E8 8005EAE8 7F8B010C */  jal        func_80062DFC
    /* 4F2EC 8005EAEC 00000000 */   nop
    /* 4F2F0 8005EAF0 CE7A0108 */  j          .L8005EB38
    /* 4F2F4 8005EAF4 00000000 */   nop
  jlabel .L8005EAF8
    /* 4F2F8 8005EAF8 E58E010C */  jal        func_80063B94
    /* 4F2FC 8005EAFC 00000000 */   nop
    /* 4F300 8005EB00 CE7A0108 */  j          .L8005EB38
    /* 4F304 8005EB04 00000000 */   nop
  jlabel .L8005EB08
    /* 4F308 8005EB08 D08F010C */  jal        func_80063F40
    /* 4F30C 8005EB0C 00000000 */   nop
    /* 4F310 8005EB10 CE7A0108 */  j          .L8005EB38
    /* 4F314 8005EB14 00000000 */   nop
  jlabel .L8005EB18
    /* 4F318 8005EB18 FC91010C */  jal        func_800647F0
    /* 4F31C 8005EB1C 00000000 */   nop
    /* 4F320 8005EB20 CE7A0108 */  j          .L8005EB38
    /* 4F324 8005EB24 00000000 */   nop
  .L8005EB28:
    /* 4F328 8005EB28 1180013C */  lui        $at, %hi(D_8010C1EC)
    /* 4F32C 8005EB2C ECC120A0 */  sb         $zero, %lo(D_8010C1EC)($at)
    /* 4F330 8005EB30 1180013C */  lui        $at, %hi(D_8010C1ED)
    /* 4F334 8005EB34 EDC120A0 */  sb         $zero, %lo(D_8010C1ED)($at)
  .L8005EB38:
    /* 4F338 8005EB38 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4F33C 8005EB3C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4F340 8005EB40 0800E003 */  jr         $ra
    /* 4F344 8005EB44 00000000 */   nop
endlabel func_8005EA94
