nonmatching func_800BFD18, 0xCC

glabel func_800BFD18
    /* B0518 800BFD18 1180043C */  lui        $a0, %hi(D_8010A3E2)
    /* B051C 800BFD1C E2A38494 */  lhu        $a0, %lo(D_8010A3E2)($a0)
    /* B0520 800BFD20 00000000 */  nop
    /* B0524 800BFD24 FFFF8330 */  andi       $v1, $a0, 0xFFFF
    /* B0528 800BFD28 1000622C */  sltiu      $v0, $v1, 0x10
    /* B052C 800BFD2C 04004010 */  beqz       $v0, .L800BFD40
    /* B0530 800BFD30 01000224 */   addiu     $v0, $zero, 0x1
    /* B0534 800BFD34 04306200 */  sllv       $a2, $v0, $v1
    /* B0538 800BFD38 54FF0208 */  j          .L800BFD50
    /* B053C 800BFD3C 21280000 */   addu      $a1, $zero, $zero
  .L800BFD40:
    /* B0540 800BFD40 21300000 */  addu       $a2, $zero, $zero
    /* B0544 800BFD44 F0FF6324 */  addiu      $v1, $v1, -0x10
    /* B0548 800BFD48 04286200 */  sllv       $a1, $v0, $v1
    /* B054C 800BFD4C FFFF8330 */  andi       $v1, $a0, 0xFFFF
  .L800BFD50:
    /* B0550 800BFD50 C0100300 */  sll        $v0, $v1, 3
    /* B0554 800BFD54 23104300 */  subu       $v0, $v0, $v1
    /* B0558 800BFD58 80100200 */  sll        $v0, $v0, 2
    /* B055C 800BFD5C 23104300 */  subu       $v0, $v0, $v1
    /* B0560 800BFD60 40100200 */  sll        $v0, $v0, 1
    /* B0564 800BFD64 0E80013C */  lui        $at, %hi(D_800E78F5)
    /* B0568 800BFD68 21082200 */  addu       $at, $at, $v0
    /* B056C 800BFD6C F57820A0 */  sb         $zero, %lo(D_800E78F5)($at)
    /* B0570 800BFD70 1180033C */  lui        $v1, %hi(D_8010CE6C)
    /* B0574 800BFD74 6CCE6394 */  lhu        $v1, %lo(D_8010CE6C)($v1)
    /* B0578 800BFD78 1180043C */  lui        $a0, %hi(D_8010CE6E)
    /* B057C 800BFD7C 6ECE8494 */  lhu        $a0, %lo(D_8010CE6E)($a0)
    /* B0580 800BFD80 0E80013C */  lui        $at, %hi(D_800E78DC)
    /* B0584 800BFD84 21082200 */  addu       $at, $at, $v0
    /* B0588 800BFD88 DC7820A4 */  sh         $zero, %lo(D_800E78DC)($at)
    /* B058C 800BFD8C 0E80013C */  lui        $at, %hi(D_800E78D8)
    /* B0590 800BFD90 21082200 */  addu       $at, $at, $v0
    /* B0594 800BFD94 D87820A4 */  sh         $zero, %lo(D_800E78D8)($at)
    /* B0598 800BFD98 0E80023C */  lui        $v0, %hi(D_800E75F8)
    /* B059C 800BFD9C F8754294 */  lhu        $v0, %lo(D_800E75F8)($v0)
    /* B05A0 800BFDA0 25186600 */  or         $v1, $v1, $a2
    /* B05A4 800BFDA4 1180013C */  lui        $at, %hi(D_8010CE6C)
    /* B05A8 800BFDA8 6CCE23A4 */  sh         $v1, %lo(D_8010CE6C)($at)
    /* B05AC 800BFDAC 27180300 */  nor        $v1, $zero, $v1
    /* B05B0 800BFDB0 24104300 */  and        $v0, $v0, $v1
    /* B05B4 800BFDB4 0E80013C */  lui        $at, %hi(D_800E75F8)
    /* B05B8 800BFDB8 F87522A4 */  sh         $v0, %lo(D_800E75F8)($at)
    /* B05BC 800BFDBC 0E80023C */  lui        $v0, %hi(D_800E75FA)
    /* B05C0 800BFDC0 FA754294 */  lhu        $v0, %lo(D_800E75FA)($v0)
    /* B05C4 800BFDC4 25208500 */  or         $a0, $a0, $a1
    /* B05C8 800BFDC8 1180013C */  lui        $at, %hi(D_8010CE6E)
    /* B05CC 800BFDCC 6ECE24A4 */  sh         $a0, %lo(D_8010CE6E)($at)
    /* B05D0 800BFDD0 27200400 */  nor        $a0, $zero, $a0
    /* B05D4 800BFDD4 24104400 */  and        $v0, $v0, $a0
    /* B05D8 800BFDD8 0E80013C */  lui        $at, %hi(D_800E75FA)
    /* B05DC 800BFDDC 0800E003 */  jr         $ra
    /* B05E0 800BFDE0 FA7522A4 */   sh        $v0, %lo(D_800E75FA)($at)
endlabel func_800BFD18
    /* B05E4 800BFDE4 00000000 */  nop
