nonmatching func_8018E69C, 0x84

glabel func_8018E69C
    /* 5724 8018E69C 801F033C */  lui        $v1, (0x1F8002E2 >> 16)
    /* 5728 8018E6A0 E2026390 */  lbu        $v1, (0x1F8002E2 & 0xFFFF)($v1)
    /* 572C 8018E6A4 00000000 */  nop
    /* 5730 8018E6A8 0500622C */  sltiu      $v0, $v1, 0x5
    /* 5734 8018E6AC 19004010 */  beqz       $v0, .L8018E714
    /* 5738 8018E6B0 80100300 */   sll       $v0, $v1, 2
    /* 573C 8018E6B4 1980013C */  lui        $at, %hi(jtbl_80188F94)
    /* 5740 8018E6B8 21082200 */  addu       $at, $at, $v0
    /* 5744 8018E6BC 948F228C */  lw         $v0, %lo(jtbl_80188F94)($at)
    /* 5748 8018E6C0 00000000 */  nop
    /* 574C 8018E6C4 08004000 */  jr         $v0
    /* 5750 8018E6C8 00000000 */   nop
  jlabel .L8018E6CC
    /* 5754 8018E6CC FF008230 */  andi       $v0, $a0, 0xFF
    /* 5758 8018E6D0 2B100200 */  sltu       $v0, $zero, $v0
    /* 575C 8018E6D4 C6390608 */  j          .L8018E718
    /* 5760 8018E6D8 40100200 */   sll       $v0, $v0, 1
  jlabel .L8018E6DC
    /* 5764 8018E6DC FF008230 */  andi       $v0, $a0, 0xFF
    /* 5768 8018E6E0 C6390608 */  j          .L8018E718
    /* 576C 8018E6E4 2B100200 */   sltu      $v0, $zero, $v0
  jlabel .L8018E6E8
    /* 5770 8018E6E8 BD390608 */  j          .L8018E6F4
    /* 5774 8018E6EC 03000324 */   addiu     $v1, $zero, 0x3
  jlabel .L8018E6F0
    /* 5778 8018E6F0 04000324 */  addiu      $v1, $zero, 0x4
  .L8018E6F4:
    /* 577C 8018E6F4 FF008230 */  andi       $v0, $a0, 0xFF
    /* 5780 8018E6F8 07004010 */  beqz       $v0, .L8018E718
    /* 5784 8018E6FC 21106000 */   addu      $v0, $v1, $zero
    /* 5788 8018E700 02000324 */  addiu      $v1, $zero, 0x2
    /* 578C 8018E704 C6390608 */  j          .L8018E718
    /* 5790 8018E708 21106000 */   addu      $v0, $v1, $zero
  jlabel .L8018E70C
    /* 5794 8018E70C C6390608 */  j          .L8018E718
    /* 5798 8018E710 02000224 */   addiu     $v0, $zero, 0x2
  .L8018E714:
    /* 579C 8018E714 21100000 */  addu       $v0, $zero, $zero
  .L8018E718:
    /* 57A0 8018E718 0800E003 */  jr         $ra
    /* 57A4 8018E71C 00000000 */   nop
endlabel func_8018E69C
