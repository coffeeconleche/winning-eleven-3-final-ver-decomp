nonmatching func_8005B99C, 0x94

glabel func_8005B99C
    /* 4C19C 8005B99C 801F033C */  lui        $v1, (0x1F8002E2 >> 16)
    /* 4C1A0 8005B9A0 E2026390 */  lbu        $v1, (0x1F8002E2 & 0xFFFF)($v1)
    /* 4C1A4 8005B9A4 00000000 */  nop
    /* 4C1A8 8005B9A8 0500622C */  sltiu      $v0, $v1, 0x5
    /* 4C1AC 8005B9AC 1E004010 */  beqz       $v0, .L8005BA28
    /* 4C1B0 8005B9B0 801F053C */   lui       $a1, (0x1F800000 >> 16)
    /* 4C1B4 8005B9B4 80100300 */  sll        $v0, $v1, 2
    /* 4C1B8 8005B9B8 0180013C */  lui        $at, %hi(jtbl_80011FF0)
    /* 4C1BC 8005B9BC 21082200 */  addu       $at, $at, $v0
    /* 4C1C0 8005B9C0 F01F228C */  lw         $v0, %lo(jtbl_80011FF0)($at)
    /* 4C1C4 8005B9C4 00000000 */  nop
    /* 4C1C8 8005B9C8 08004000 */  jr         $v0
    /* 4C1CC 8005B9CC 00000000 */   nop
  jlabel .L8005B9D0
    /* 4C1D0 8005B9D0 9A038290 */  lbu        $v0, 0x39A($a0)
    /* 4C1D4 8005B9D4 00000000 */  nop
    /* 4C1D8 8005B9D8 2B100200 */  sltu       $v0, $zero, $v0
    /* 4C1DC 8005B9DC 8A6E0108 */  j          .L8005BA28
    /* 4C1E0 8005B9E0 40100200 */   sll       $v0, $v0, 1
  jlabel .L8005B9E4
    /* 4C1E4 8005B9E4 98038290 */  lbu        $v0, 0x398($a0)
    /* 4C1E8 8005B9E8 8A6E0108 */  j          .L8005BA28
    /* 4C1EC 8005B9EC 00000000 */   nop
  jlabel .L8005B9F0
    /* 4C1F0 8005B9F0 4002A290 */  lbu        $v0, 0x240($a1)
    /* 4C1F4 8005B9F4 8D038490 */  lbu        $a0, 0x38D($a0)
    /* 4C1F8 8005B9F8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 4C1FC 8005B9FC 03004414 */  bne        $v0, $a0, .L8005BA0C
    /* 4C200 8005BA00 00000000 */   nop
    /* 4C204 8005BA04 8A6E0108 */  j          .L8005BA28
    /* 4C208 8005BA08 21100000 */   addu      $v0, $zero, $zero
  .L8005BA0C:
    /* 4C20C 8005BA0C 4102A390 */  lbu        $v1, 0x241($a1)
    /* 4C210 8005BA10 00000000 */  nop
    /* 4C214 8005BA14 04006414 */  bne        $v1, $a0, .L8005BA28
    /* 4C218 8005BA18 02000224 */   addiu     $v0, $zero, 0x2
    /* 4C21C 8005BA1C 8A6E0108 */  j          .L8005BA28
    /* 4C220 8005BA20 01000224 */   addiu     $v0, $zero, 0x1
  jlabel .L8005BA24
    /* 4C224 8005BA24 02000224 */  addiu      $v0, $zero, 0x2
  .L8005BA28:
    /* 4C228 8005BA28 0800E003 */  jr         $ra
    /* 4C22C 8005BA2C 00000000 */   nop
endlabel func_8005B99C
