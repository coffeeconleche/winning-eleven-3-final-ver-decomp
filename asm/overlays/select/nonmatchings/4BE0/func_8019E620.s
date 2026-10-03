nonmatching func_8019E620, 0x1374

glabel func_8019E620
    /* 156A8 8019E620 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 156AC 8019E624 4800B0AF */  sw         $s0, 0x48($sp)
    /* 156B0 8019E628 01001024 */  addiu      $s0, $zero, 0x1
    /* 156B4 8019E62C 21200000 */  addu       $a0, $zero, $zero
    /* 156B8 8019E630 6C00BFAF */  sw         $ra, 0x6C($sp)
    /* 156BC 8019E634 6800BEAF */  sw         $fp, 0x68($sp)
    /* 156C0 8019E638 6400B7AF */  sw         $s7, 0x64($sp)
    /* 156C4 8019E63C 6000B6AF */  sw         $s6, 0x60($sp)
    /* 156C8 8019E640 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 156CC 8019E644 5800B4AF */  sw         $s4, 0x58($sp)
    /* 156D0 8019E648 5400B3AF */  sw         $s3, 0x54($sp)
    /* 156D4 8019E64C 5000B2AF */  sw         $s2, 0x50($sp)
    /* 156D8 8019E650 A739060C */  jal        func_8018E69C
    /* 156DC 8019E654 4C00B1AF */   sw        $s1, 0x4C($sp)
    /* 156E0 8019E658 01000424 */  addiu      $a0, $zero, 0x1
    /* 156E4 8019E65C A739060C */  jal        func_8018E69C
    /* 156E8 8019E660 21884000 */   addu      $s1, $v0, $zero
    /* 156EC 8019E664 1080153C */  lui        $s5, %hi(D_800FF748)
    /* 156F0 8019E668 48F7B526 */  addiu      $s5, $s5, %lo(D_800FF748)
    /* 156F4 8019E66C 21B04000 */  addu       $s6, $v0, $zero
    /* 156F8 8019E670 FF00C232 */  andi       $v0, $s6, 0xFF
    /* 156FC 8019E674 02004238 */  xori       $v0, $v0, 0x2
    /* 15700 8019E678 2B100200 */  sltu       $v0, $zero, $v0
    /* 15704 8019E67C 1180033C */  lui        $v1, %hi(D_8010A322)
    /* 15708 8019E680 22A36390 */  lbu        $v1, %lo(D_8010A322)($v1)
    /* 1570C 8019E684 21B84000 */  addu       $s7, $v0, $zero
    /* 15710 8019E688 2100622C */  sltiu      $v0, $v1, 0x21
    /* 15714 8019E68C B1044010 */  beqz       $v0, .L8019F954
    /* 15718 8019E690 801F143C */   lui       $s4, (0x1F8002E1 >> 16)
    /* 1571C 8019E694 80100300 */  sll        $v0, $v1, 2
    /* 15720 8019E698 1980013C */  lui        $at, %hi(jtbl_8018A018)
    /* 15724 8019E69C 21082200 */  addu       $at, $at, $v0
    /* 15728 8019E6A0 18A0228C */  lw         $v0, %lo(jtbl_8018A018)($at)
    /* 1572C 8019E6A4 00000000 */  nop
    /* 15730 8019E6A8 08004000 */  jr         $v0
    /* 15734 8019E6AC 00000000 */   nop
  jlabel .L8019E6B0
    /* 15738 8019E6B0 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 1573C 8019E6B4 50AE20A0 */  sb         $zero, %lo(D_801DAE50)($at)
    /* 15740 8019E6B8 1E80013C */  lui        $at, %hi(D_801DA064)
    /* 15744 8019E6BC 64A020AC */  sw         $zero, %lo(D_801DA064)($at)
    /* 15748 8019E6C0 1E80013C */  lui        $at, %hi(D_801DA060)
    /* 1574C 8019E6C4 60A020AC */  sw         $zero, %lo(D_801DA060)($at)
    /* 15750 8019E6C8 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 15754 8019E6CC 5CA020AC */  sw         $zero, %lo(D_801DA05C)($at)
    /* 15758 8019E6D0 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 1575C 8019E6D4 58A020AC */  sw         $zero, %lo(D_801DA058)($at)
    /* 15760 8019E6D8 1458020C */  jal        func_80096050
    /* 15764 8019E6DC EC0180A2 */   sb        $zero, (0x1F8001EC & 0xFFFF)($s4)
    /* 15768 8019E6E0 2771010C */  jal        func_8005C49C
    /* 1576C 8019E6E4 00000000 */   nop
    /* 15770 8019E6E8 97FF0224 */  addiu      $v0, $zero, -0x69
    /* 15774 8019E6EC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 15778 8019E6F0 2108A102 */  addu       $at, $s5, $at
    /* 1577C 8019E6F4 28AC22A4 */  sh         $v0, -0x53D8($at)
    /* 15780 8019E6F8 69000224 */  addiu      $v0, $zero, 0x69
    /* 15784 8019E6FC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 15788 8019E700 2108A102 */  addu       $at, $s5, $at
    /* 1578C 8019E704 2AAC22A4 */  sh         $v0, -0x53D6($at)
    /* 15790 8019E708 E2FF0224 */  addiu      $v0, $zero, -0x1E
    /* 15794 8019E70C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 15798 8019E710 2108A102 */  addu       $at, $s5, $at
    /* 1579C 8019E714 2EAC22A4 */  sh         $v0, -0x53D2($at)
    /* 157A0 8019E718 0100013C */  lui        $at, (0x10000 >> 16)
    /* 157A4 8019E71C 2108A102 */  addu       $at, $s5, $at
    /* 157A8 8019E720 2CAC22A4 */  sh         $v0, -0x53D4($at)
    /* 157AC 8019E724 00030224 */  addiu      $v0, $zero, 0x300
    /* 157B0 8019E728 0100013C */  lui        $at, (0x10000 >> 16)
    /* 157B4 8019E72C 2108A102 */  addu       $at, $s5, $at
    /* 157B8 8019E730 32AC22A4 */  sh         $v0, -0x53CE($at)
    /* 157BC 8019E734 0100013C */  lui        $at, (0x10000 >> 16)
    /* 157C0 8019E738 2108A102 */  addu       $at, $s5, $at
    /* 157C4 8019E73C 30AC22A4 */  sh         $v0, -0x53D0($at)
    /* 157C8 8019E740 E0FF0224 */  addiu      $v0, $zero, -0x20
    /* 157CC 8019E744 0100013C */  lui        $at, (0x10000 >> 16)
    /* 157D0 8019E748 2108A102 */  addu       $at, $s5, $at
    /* 157D4 8019E74C 3CAC22A4 */  sh         $v0, -0x53C4($at)
    /* 157D8 8019E750 0100013C */  lui        $at, (0x10000 >> 16)
    /* 157DC 8019E754 2108A102 */  addu       $at, $s5, $at
    /* 157E0 8019E758 34AC22A4 */  sh         $v0, -0x53CC($at)
    /* 157E4 8019E75C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 157E8 8019E760 2108A102 */  addu       $at, $s5, $at
    /* 157EC 8019E764 21AC20A0 */  sb         $zero, -0x53DF($at)
    /* 157F0 8019E768 0100013C */  lui        $at, (0x10000 >> 16)
    /* 157F4 8019E76C 2108A102 */  addu       $at, $s5, $at
    /* 157F8 8019E770 20AC20A0 */  sb         $zero, -0x53E0($at)
    /* 157FC 8019E774 E1028392 */  lbu        $v1, (0x1F8002E1 & 0xFFFF)($s4)
    /* 15800 8019E778 01000224 */  addiu      $v0, $zero, 0x1
    /* 15804 8019E77C A20282A2 */  sb         $v0, (0x1F8002A2 & 0xFFFF)($s4)
    /* 15808 8019E780 05000224 */  addiu      $v0, $zero, 0x5
    /* 1580C 8019E784 FF006330 */  andi       $v1, $v1, 0xFF
    /* 15810 8019E788 04006214 */  bne        $v1, $v0, .L8019E79C
    /* 15814 8019E78C 2B000324 */   addiu     $v1, $zero, 0x2B
    /* 15818 8019E790 1E80013C */  lui        $at, %hi(D_801D932F)
    /* 1581C 8019E794 2F9320A0 */  sb         $zero, %lo(D_801D932F)($at)
    /* 15820 8019E798 A45FA0A2 */  sb         $zero, 0x5FA4($s5)
  .L8019E79C:
    /* 15824 8019E79C 1E80023C */  lui        $v0, %hi(D_801DADB3)
    /* 15828 8019E7A0 B3AD4224 */  addiu      $v0, $v0, %lo(D_801DADB3)
    /* 1582C 8019E7A4 1D80013C */  lui        $at, %hi(D_801D1F60)
    /* 15830 8019E7A8 601F20A0 */  sb         $zero, %lo(D_801D1F60)($at)
    /* 15834 8019E7AC 1D80013C */  lui        $at, %hi(D_801D1F61)
    /* 15838 8019E7B0 611F20A0 */  sb         $zero, %lo(D_801D1F61)($at)
  .L8019E7B4:
    /* 1583C 8019E7B4 000040A0 */  sb         $zero, 0x0($v0)
    /* 15840 8019E7B8 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 15844 8019E7BC FDFF6104 */  bgez       $v1, .L8019E7B4
    /* 15848 8019E7C0 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 1584C 8019E7C4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 15850 8019E7C8 2108A102 */  addu       $at, $s5, $at
    /* 15854 8019E7CC E2AB2290 */  lbu        $v0, -0x541E($at)
    /* 15858 8019E7D0 00000000 */  nop
    /* 1585C 8019E7D4 01004230 */  andi       $v0, $v0, 0x1
    /* 15860 8019E7D8 09004010 */  beqz       $v0, .L8019E800
    /* 15864 8019E7DC 03000224 */   addiu     $v0, $zero, 0x3
    /* 15868 8019E7E0 E1028292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s4)
    /* 1586C 8019E7E4 00000000 */  nop
    /* 15870 8019E7E8 05004014 */  bnez       $v0, .L8019E800
    /* 15874 8019E7EC 03000224 */   addiu     $v0, $zero, 0x3
    /* 15878 8019E7F0 1E80013C */  lui        $at, %hi(D_801DADB3)
    /* 1587C 8019E7F4 B3AD20A0 */  sb         $zero, %lo(D_801DADB3)($at)
    /* 15880 8019E7F8 027A0608 */  j          .L8019E808
    /* 15884 8019E7FC 00000000 */   nop
  .L8019E800:
    /* 15888 8019E800 1E80013C */  lui        $at, %hi(D_801DADB3)
    /* 1588C 8019E804 B3AD22A0 */  sb         $v0, %lo(D_801DADB3)($at)
  .L8019E808:
    /* 15890 8019E808 0100013C */  lui        $at, (0x10000 >> 16)
    /* 15894 8019E80C 2108A102 */  addu       $at, $s5, $at
    /* 15898 8019E810 E2AB2290 */  lbu        $v0, -0x541E($at)
    /* 1589C 8019E814 00000000 */  nop
    /* 158A0 8019E818 42100200 */  srl        $v0, $v0, 1
    /* 158A4 8019E81C 01004230 */  andi       $v0, $v0, 0x1
    /* 158A8 8019E820 07004010 */  beqz       $v0, .L8019E840
    /* 158AC 8019E824 03000224 */   addiu     $v0, $zero, 0x3
    /* 158B0 8019E828 1E80013C */  lui        $at, %hi(D_801DADB0)
    /* 158B4 8019E82C B0AD20A0 */  sb         $zero, %lo(D_801DADB0)($at)
    /* 158B8 8019E830 1E80013C */  lui        $at, %hi(D_801DADB1)
    /* 158BC 8019E834 B1AD20A0 */  sb         $zero, %lo(D_801DADB1)($at)
    /* 158C0 8019E838 147A0608 */  j          .L8019E850
    /* 158C4 8019E83C 00000000 */   nop
  .L8019E840:
    /* 158C8 8019E840 1E80013C */  lui        $at, %hi(D_801DADB0)
    /* 158CC 8019E844 B0AD22A0 */  sb         $v0, %lo(D_801DADB0)($at)
    /* 158D0 8019E848 1E80013C */  lui        $at, %hi(D_801DADB1)
    /* 158D4 8019E84C B1AD22A0 */  sb         $v0, %lo(D_801DADB1)($at)
  .L8019E850:
    /* 158D8 8019E850 0100013C */  lui        $at, (0x10000 >> 16)
    /* 158DC 8019E854 2108A102 */  addu       $at, $s5, $at
    /* 158E0 8019E858 E2AB2290 */  lbu        $v0, -0x541E($at)
    /* 158E4 8019E85C 00000000 */  nop
    /* 158E8 8019E860 82100200 */  srl        $v0, $v0, 2
    /* 158EC 8019E864 01004230 */  andi       $v0, $v0, 0x1
    /* 158F0 8019E868 05004010 */  beqz       $v0, .L8019E880
    /* 158F4 8019E86C 03000224 */   addiu     $v0, $zero, 0x3
    /* 158F8 8019E870 1E80013C */  lui        $at, %hi(D_801DADB2)
    /* 158FC 8019E874 B2AD20A0 */  sb         $zero, %lo(D_801DADB2)($at)
    /* 15900 8019E878 227A0608 */  j          .L8019E888
    /* 15904 8019E87C 00000000 */   nop
  .L8019E880:
    /* 15908 8019E880 1E80013C */  lui        $at, %hi(D_801DADB2)
    /* 1590C 8019E884 B2AD22A0 */  sb         $v0, %lo(D_801DADB2)($at)
  .L8019E888:
    /* 15910 8019E888 DD028292 */  lbu        $v0, (0x1F8002DD & 0xFFFF)($s4)
    /* 15914 8019E88C 00000000 */  nop
    /* 15918 8019E890 FF004330 */  andi       $v1, $v0, 0xFF
    /* 1591C 8019E894 2C00622C */  sltiu      $v0, $v1, 0x2C
    /* 15920 8019E898 07004010 */  beqz       $v0, .L8019E8B8
    /* 15924 8019E89C 03000224 */   addiu     $v0, $zero, 0x3
    /* 15928 8019E8A0 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 1592C 8019E8A4 21082300 */  addu       $at, $at, $v1
    /* 15930 8019E8A8 88AD2390 */  lbu        $v1, %lo(D_801DAD88)($at)
    /* 15934 8019E8AC 00000000 */  nop
    /* 15938 8019E8B0 02006214 */  bne        $v1, $v0, .L8019E8BC
    /* 1593C 8019E8B4 00000000 */   nop
  .L8019E8B8:
    /* 15940 8019E8B8 DD0280A2 */  sb         $zero, (0x1F8002DD & 0xFFFF)($s4)
  .L8019E8BC:
    /* 15944 8019E8BC DE028292 */  lbu        $v0, (0x1F8002DE & 0xFFFF)($s4)
    /* 15948 8019E8C0 00000000 */  nop
    /* 1594C 8019E8C4 FF004330 */  andi       $v1, $v0, 0xFF
    /* 15950 8019E8C8 2C00622C */  sltiu      $v0, $v1, 0x2C
    /* 15954 8019E8CC 07004010 */  beqz       $v0, .L8019E8EC
    /* 15958 8019E8D0 03000224 */   addiu     $v0, $zero, 0x3
    /* 1595C 8019E8D4 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 15960 8019E8D8 21082300 */  addu       $at, $at, $v1
    /* 15964 8019E8DC 88AD2390 */  lbu        $v1, %lo(D_801DAD88)($at)
    /* 15968 8019E8E0 00000000 */  nop
    /* 1596C 8019E8E4 03006214 */  bne        $v1, $v0, .L8019E8F4
    /* 15970 8019E8E8 00000000 */   nop
  .L8019E8EC:
    /* 15974 8019E8EC 0A000224 */  addiu      $v0, $zero, 0xA
    /* 15978 8019E8F0 DE0282A2 */  sb         $v0, (0x1F8002DE & 0xFFFF)($s4)
  .L8019E8F4:
    /* 1597C 8019E8F4 1E80013C */  lui        $at, %hi(D_801D803B)
    /* 15980 8019E8F8 3B8020A0 */  sb         $zero, %lo(D_801D803B)($at)
    /* 15984 8019E8FC E1028292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s4)
    /* 15988 8019E900 01000324 */  addiu      $v1, $zero, 0x1
    /* 1598C 8019E904 1E80013C */  lui        $at, %hi(D_801D8B17)
    /* 15990 8019E908 178B23A0 */  sb         $v1, %lo(D_801D8B17)($at)
    /* 15994 8019E90C 03000324 */  addiu      $v1, $zero, 0x3
    /* 15998 8019E910 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1599C 8019E914 08004314 */  bne        $v0, $v1, .L8019E938
    /* 159A0 8019E918 29000224 */   addiu     $v0, $zero, 0x29
    /* 159A4 8019E91C DD0282A2 */  sb         $v0, (0x1F8002DD & 0xFFFF)($s4)
    /* 159A8 8019E920 28000224 */  addiu      $v0, $zero, 0x28
    /* 159AC 8019E924 DE0282A2 */  sb         $v0, (0x1F8002DE & 0xFFFF)($s4)
    /* 159B0 8019E928 1E80013C */  lui        $at, %hi(D_801D819E)
    /* 159B4 8019E92C 9E8120A0 */  sb         $zero, %lo(D_801D819E)($at)
    /* 159B8 8019E930 1E80013C */  lui        $at, %hi(D_801D819F)
    /* 159BC 8019E934 9F8120A0 */  sb         $zero, %lo(D_801D819F)($at)
  .L8019E938:
    /* 159C0 8019E938 628D060C */  jal        func_801A3588
    /* 159C4 8019E93C 00000000 */   nop
    /* 159C8 8019E940 8489060C */  jal        func_801A2610
    /* 159CC 8019E944 00000000 */   nop
    /* 159D0 8019E948 677A0608 */  j          .L8019E99C
    /* 159D4 8019E94C 00000000 */   nop
  jlabel .L8019E950
    /* 159D8 8019E950 7F8A060C */  jal        func_801A29FC
    /* 159DC 8019E954 00000000 */   nop
    /* 159E0 8019E958 E1028392 */  lbu        $v1, 0x2E1($s4)
    /* 159E4 8019E95C 24800202 */  and        $s0, $s0, $v0
    /* 159E8 8019E960 05000224 */  addiu      $v0, $zero, 0x5
    /* 159EC 8019E964 FF006330 */  andi       $v1, $v1, 0xFF
    /* 159F0 8019E968 0A006214 */  bne        $v1, $v0, .L8019E994
    /* 159F4 8019E96C 085EA426 */   addiu     $a0, $s5, 0x5E08
    /* 159F8 8019E970 00100524 */  addiu      $a1, $zero, 0x1000
    /* 159FC 8019E974 653A060C */  jal        func_8018E994
    /* 15A00 8019E978 00010624 */   addiu     $a2, $zero, 0x100
    /* 15A04 8019E97C 24800202 */  and        $s0, $s0, $v0
    /* 15A08 8019E980 305EA426 */  addiu      $a0, $s5, 0x5E30
    /* 15A0C 8019E984 00100524 */  addiu      $a1, $zero, 0x1000
    /* 15A10 8019E988 653A060C */  jal        func_8018E994
    /* 15A14 8019E98C 00010624 */   addiu     $a2, $zero, 0x100
    /* 15A18 8019E990 24800202 */  and        $s0, $s0, $v0
  .L8019E994:
    /* 15A1C 8019E994 EF030012 */  beqz       $s0, .L8019F954
    /* 15A20 8019E998 00000000 */   nop
  .L8019E99C:
    /* 15A24 8019E99C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 15A28 8019E9A0 2108A102 */  addu       $at, $s5, $at
    /* 15A2C 8019E9A4 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 15A30 8019E9A8 00000000 */  nop
    /* 15A34 8019E9AC 01004224 */  addiu      $v0, $v0, 0x1
    /* 15A38 8019E9B0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 15A3C 8019E9B4 2108A102 */  addu       $at, $s5, $at
    /* 15A40 8019E9B8 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 15A44 8019E9BC 557E0608 */  j          .L8019F954
    /* 15A48 8019E9C0 00000000 */   nop
  jlabel .L8019E9C4
    /* 15A4C 8019E9C4 E1028292 */  lbu        $v0, 0x2E1($s4)
    /* 15A50 8019E9C8 03001E24 */  addiu      $fp, $zero, 0x3
    /* 15A54 8019E9CC FF004230 */  andi       $v0, $v0, 0xFF
    /* 15A58 8019E9D0 31005E14 */  bne        $v0, $fp, .L8019EA98
    /* 15A5C 8019E9D4 03000424 */   addiu     $a0, $zero, 0x3
    /* 15A60 8019E9D8 01001024 */  addiu      $s0, $zero, 0x1
    /* 15A64 8019E9DC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 15A68 8019E9E0 2108A102 */  addu       $at, $s5, $at
    /* 15A6C 8019E9E4 20AC30A0 */  sb         $s0, -0x53E0($at)
    /* 15A70 8019E9E8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 15A74 8019E9EC 2108A102 */  addu       $at, $s5, $at
    /* 15A78 8019E9F0 21AC20A0 */  sb         $zero, -0x53DF($at)
    /* 15A7C 8019E9F4 7740010C */  jal        func_800501DC
    /* 15A80 8019E9F8 21200000 */   addu      $a0, $zero, $zero
    /* 15A84 8019E9FC 7740010C */  jal        func_800501DC
    /* 15A88 8019EA00 01000424 */   addiu     $a0, $zero, 0x1
    /* 15A8C 8019EA04 12000424 */  addiu      $a0, $zero, 0x12
    /* 15A90 8019EA08 30310524 */  addiu      $a1, $zero, 0x3130
    /* 15A94 8019EA0C 21300000 */  addu       $a2, $zero, $zero
    /* 15A98 8019EA10 21380000 */  addu       $a3, $zero, $zero
    /* 15A9C 8019EA14 1B000224 */  addiu      $v0, $zero, 0x1B
    /* 15AA0 8019EA18 1400A2AF */  sw         $v0, 0x14($sp)
    /* 15AA4 8019EA1C 00100224 */  addiu      $v0, $zero, 0x1000
    /* 15AA8 8019EA20 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 15AAC 8019EA24 2000A2AF */  sw         $v0, 0x20($sp)
    /* 15AB0 8019EA28 80000224 */  addiu      $v0, $zero, 0x80
    /* 15AB4 8019EA2C 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 15AB8 8019EA30 3000A2AF */  sw         $v0, 0x30($sp)
    /* 15ABC 8019EA34 3400A2AF */  sw         $v0, 0x34($sp)
    /* 15AC0 8019EA38 02000224 */  addiu      $v0, $zero, 0x2
    /* 15AC4 8019EA3C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 15AC8 8019EA40 1800A0AF */  sw         $zero, 0x18($sp)
    /* 15ACC 8019EA44 2400A0AF */  sw         $zero, 0x24($sp)
    /* 15AD0 8019EA48 2800A0AF */  sw         $zero, 0x28($sp)
    /* 15AD4 8019EA4C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 15AD8 8019EA50 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 15ADC 8019EA54 ED4F060C */  jal        func_80193FB4
    /* 15AE0 8019EA58 4000A0AF */   sw        $zero, 0x40($sp)
    /* 15AE4 8019EA5C FF002432 */  andi       $a0, $s1, 0xFF
    /* 15AE8 8019EA60 1E80013C */  lui        $at, %hi(D_801D803B)
    /* 15AEC 8019EA64 3B8030A0 */  sb         $s0, %lo(D_801D803B)($at)
    /* 15AF0 8019EA68 D995060C */  jal        func_801A5764
    /* 15AF4 8019EA6C FF00C532 */   andi      $a1, $s6, 0xFF
    /* 15AF8 8019EA70 1E80013C */  lui        $at, %hi(D_801D819A)
    /* 15AFC 8019EA74 9A8131A0 */  sb         $s1, %lo(D_801D819A)($at)
    /* 15B00 8019EA78 1E80013C */  lui        $at, %hi(D_801D819B)
    /* 15B04 8019EA7C 9B8136A0 */  sb         $s6, %lo(D_801D819B)($at)
    /* 15B08 8019EA80 BB98060C */  jal        func_801A62EC
    /* 15B0C 8019EA84 00000000 */   nop
    /* 15B10 8019EA88 1E80013C */  lui        $at, %hi(D_801D819E)
    /* 15B14 8019EA8C 9E8130A0 */  sb         $s0, %lo(D_801D819E)($at)
    /* 15B18 8019EA90 FA7A0608 */  j          .L8019EBE8
    /* 15B1C 8019EA94 0A000224 */   addiu     $v0, $zero, 0xA
  .L8019EA98:
    /* 15B20 8019EA98 FF002532 */  andi       $a1, $s1, 0xFF
    /* 15B24 8019EA9C 6730A524 */  addiu      $a1, $a1, 0x3067
    /* 15B28 8019EAA0 21300000 */  addu       $a2, $zero, $zero
    /* 15B2C 8019EAA4 01000224 */  addiu      $v0, $zero, 0x1
    /* 15B30 8019EAA8 1A001324 */  addiu      $s3, $zero, 0x1A
    /* 15B34 8019EAAC 00101124 */  addiu      $s1, $zero, 0x1000
    /* 15B38 8019EAB0 2EBA123C */  lui        $s2, (0xBA2E8BA3 >> 16)
    /* 15B3C 8019EAB4 A38B5236 */  ori        $s2, $s2, (0xBA2E8BA3 & 0xFFFF)
    /* 15B40 8019EAB8 80001024 */  addiu      $s0, $zero, 0x80
    /* 15B44 8019EABC 1E80013C */  lui        $at, %hi(D_801D803B)
    /* 15B48 8019EAC0 3B8022A0 */  sb         $v0, %lo(D_801D803B)($at)
    /* 15B4C 8019EAC4 1400B3AF */  sw         $s3, 0x14($sp)
    /* 15B50 8019EAC8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 15B54 8019EACC DD028892 */  lbu        $t0, 0x2DD($s4)
    /* 15B58 8019EAD0 02000224 */  addiu      $v0, $zero, 0x2
    /* 15B5C 8019EAD4 FF000831 */  andi       $t0, $t0, 0xFF
    /* 15B60 8019EAD8 19001201 */  multu      $t0, $s2
    /* 15B64 8019EADC 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 15B68 8019EAE0 01000224 */  addiu      $v0, $zero, 0x1
    /* 15B6C 8019EAE4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 15B70 8019EAE8 2000B1AF */  sw         $s1, 0x20($sp)
    /* 15B74 8019EAEC 2400A0AF */  sw         $zero, 0x24($sp)
    /* 15B78 8019EAF0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 15B7C 8019EAF4 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 15B80 8019EAF8 3000B0AF */  sw         $s0, 0x30($sp)
    /* 15B84 8019EAFC 3400B0AF */  sw         $s0, 0x34($sp)
    /* 15B88 8019EB00 3800A0AF */  sw         $zero, 0x38($sp)
    /* 15B8C 8019EB04 4000A2AF */  sw         $v0, 0x40($sp)
    /* 15B90 8019EB08 10480000 */  mfhi       $t1
    /* 15B94 8019EB0C C2180900 */  srl        $v1, $t1, 3
    /* 15B98 8019EB10 40100300 */  sll        $v0, $v1, 1
    /* 15B9C 8019EB14 21104300 */  addu       $v0, $v0, $v1
    /* 15BA0 8019EB18 80100200 */  sll        $v0, $v0, 2
    /* 15BA4 8019EB1C 23104300 */  subu       $v0, $v0, $v1
    /* 15BA8 8019EB20 23400201 */  subu       $t0, $t0, $v0
    /* 15BAC 8019EB24 FF000831 */  andi       $t0, $t0, 0xFF
    /* 15BB0 8019EB28 40390800 */  sll        $a3, $t0, 5
    /* 15BB4 8019EB2C 2338E800 */  subu       $a3, $a3, $t0
    /* 15BB8 8019EB30 FF006330 */  andi       $v1, $v1, 0xFF
    /* 15BBC 8019EB34 40100300 */  sll        $v0, $v1, 1
    /* 15BC0 8019EB38 21104300 */  addu       $v0, $v0, $v1
    /* 15BC4 8019EB3C 80100200 */  sll        $v0, $v0, 2
    /* 15BC8 8019EB40 23104300 */  subu       $v0, $v0, $v1
    /* 15BCC 8019EB44 40100200 */  sll        $v0, $v0, 1
    /* 15BD0 8019EB48 ED4F060C */  jal        func_80193FB4
    /* 15BD4 8019EB4C 1000A2AF */   sw        $v0, 0x10($sp)
    /* 15BD8 8019EB50 04000424 */  addiu      $a0, $zero, 0x4
    /* 15BDC 8019EB54 FF00C532 */  andi       $a1, $s6, 0xFF
    /* 15BE0 8019EB58 6730A524 */  addiu      $a1, $a1, 0x3067
    /* 15BE4 8019EB5C DE028892 */  lbu        $t0, 0x2DE($s4)
    /* 15BE8 8019EB60 21300000 */  addu       $a2, $zero, $zero
    /* 15BEC 8019EB64 1400B3AF */  sw         $s3, 0x14($sp)
    /* 15BF0 8019EB68 FF000831 */  andi       $t0, $t0, 0xFF
    /* 15BF4 8019EB6C 19001201 */  multu      $t0, $s2
    /* 15BF8 8019EB70 1800A0AF */  sw         $zero, 0x18($sp)
    /* 15BFC 8019EB74 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 15C00 8019EB78 2000B1AF */  sw         $s1, 0x20($sp)
    /* 15C04 8019EB7C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 15C08 8019EB80 2800A0AF */  sw         $zero, 0x28($sp)
    /* 15C0C 8019EB84 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 15C10 8019EB88 3000B0AF */  sw         $s0, 0x30($sp)
    /* 15C14 8019EB8C 3400B0AF */  sw         $s0, 0x34($sp)
    /* 15C18 8019EB90 3800A0AF */  sw         $zero, 0x38($sp)
    /* 15C1C 8019EB94 3C00BEAF */  sw         $fp, 0x3C($sp)
    /* 15C20 8019EB98 4000B7AF */  sw         $s7, 0x40($sp)
    /* 15C24 8019EB9C 10480000 */  mfhi       $t1
    /* 15C28 8019EBA0 C2180900 */  srl        $v1, $t1, 3
    /* 15C2C 8019EBA4 40100300 */  sll        $v0, $v1, 1
    /* 15C30 8019EBA8 21104300 */  addu       $v0, $v0, $v1
    /* 15C34 8019EBAC 80100200 */  sll        $v0, $v0, 2
    /* 15C38 8019EBB0 23104300 */  subu       $v0, $v0, $v1
    /* 15C3C 8019EBB4 23400201 */  subu       $t0, $t0, $v0
    /* 15C40 8019EBB8 FF000831 */  andi       $t0, $t0, 0xFF
    /* 15C44 8019EBBC 40390800 */  sll        $a3, $t0, 5
    /* 15C48 8019EBC0 2338E800 */  subu       $a3, $a3, $t0
    /* 15C4C 8019EBC4 FF006330 */  andi       $v1, $v1, 0xFF
    /* 15C50 8019EBC8 40100300 */  sll        $v0, $v1, 1
    /* 15C54 8019EBCC 21104300 */  addu       $v0, $v0, $v1
    /* 15C58 8019EBD0 80100200 */  sll        $v0, $v0, 2
    /* 15C5C 8019EBD4 23104300 */  subu       $v0, $v0, $v1
    /* 15C60 8019EBD8 40100200 */  sll        $v0, $v0, 1
    /* 15C64 8019EBDC ED4F060C */  jal        func_80193FB4
    /* 15C68 8019EBE0 1000A2AF */   sw        $v0, 0x10($sp)
    /* 15C6C 8019EBE4 0A000224 */  addiu      $v0, $zero, 0xA
  .L8019EBE8:
    /* 15C70 8019EBE8 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 15C74 8019EBEC 5CA020AC */  sw         $zero, %lo(D_801DA05C)($at)
    /* 15C78 8019EBF0 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 15C7C 8019EBF4 58A020AC */  sw         $zero, %lo(D_801DA058)($at)
    /* 15C80 8019EBF8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 15C84 8019EBFC 2108A102 */  addu       $at, $s5, $at
    /* 15C88 8019EC00 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 15C8C 8019EC04 557E0608 */  j          .L8019F954
    /* 15C90 8019EC08 00000000 */   nop
  jlabel .L8019EC0C
    /* 15C94 8019EC0C DD028392 */  lbu        $v1, 0x2DD($s4)
    /* 15C98 8019EC10 DE028292 */  lbu        $v0, 0x2DE($s4)
    /* 15C9C 8019EC14 00000000 */  nop
    /* 15CA0 8019EC18 13006214 */  bne        $v1, $v0, .L8019EC68
    /* 15CA4 8019EC1C 01000224 */   addiu     $v0, $zero, 0x1
    /* 15CA8 8019EC20 645EA292 */  lbu        $v0, 0x5E64($s5)
    /* 15CAC 8019EC24 00000000 */  nop
    /* 15CB0 8019EC28 0F004010 */  beqz       $v0, .L8019EC68
    /* 15CB4 8019EC2C 01000224 */   addiu     $v0, $zero, 0x1
    /* 15CB8 8019EC30 9002828E */  lw         $v0, 0x290($s4)
    /* 15CBC 8019EC34 00000000 */  nop
    /* 15CC0 8019EC38 10004230 */  andi       $v0, $v0, 0x10
    /* 15CC4 8019EC3C 02004010 */  beqz       $v0, .L8019EC48
    /* 15CC8 8019EC40 04000424 */   addiu     $a0, $zero, 0x4
    /* 15CCC 8019EC44 01000424 */  addiu      $a0, $zero, 0x1
  .L8019EC48:
    /* 15CD0 8019EC48 9002828E */  lw         $v0, 0x290($s4)
    /* 15CD4 8019EC4C 01000324 */  addiu      $v1, $zero, 0x1
    /* 15CD8 8019EC50 10004230 */  andi       $v0, $v0, 0x10
    /* 15CDC 8019EC54 02004010 */  beqz       $v0, .L8019EC60
    /* 15CE0 8019EC58 385EA4AE */   sw        $a0, 0x5E38($s5)
    /* 15CE4 8019EC5C 04000324 */  addiu      $v1, $zero, 0x4
  .L8019EC60:
    /* 15CE8 8019EC60 1C7B0608 */  j          .L8019EC70
    /* 15CEC 8019EC64 605EA3AE */   sw        $v1, 0x5E60($s5)
  .L8019EC68:
    /* 15CF0 8019EC68 385EA2AE */  sw         $v0, 0x5E38($s5)
    /* 15CF4 8019EC6C 605EA2AE */  sw         $v0, 0x5E60($s5)
  .L8019EC70:
    /* 15CF8 8019EC70 E1028292 */  lbu        $v0, 0x2E1($s4)
    /* 15CFC 8019EC74 03001024 */  addiu      $s0, $zero, 0x3
    /* 15D00 8019EC78 FF004230 */  andi       $v0, $v0, 0xFF
    /* 15D04 8019EC7C 0C005010 */  beq        $v0, $s0, .L8019ECB0
    /* 15D08 8019EC80 54000424 */   addiu     $a0, $zero, 0x54
    /* 15D0C 8019EC84 01000524 */  addiu      $a1, $zero, 0x1
    /* 15D10 8019EC88 02BF010C */  jal        func_8006FC08
    /* 15D14 8019EC8C 0D000624 */   addiu     $a2, $zero, 0xD
    /* 15D18 8019EC90 55000424 */  addiu      $a0, $zero, 0x55
    /* 15D1C 8019EC94 01000524 */  addiu      $a1, $zero, 0x1
    /* 15D20 8019EC98 02BF010C */  jal        func_8006FC08
    /* 15D24 8019EC9C 0D000624 */   addiu     $a2, $zero, 0xD
    /* 15D28 8019ECA0 56000424 */  addiu      $a0, $zero, 0x56
    /* 15D2C 8019ECA4 01000524 */  addiu      $a1, $zero, 0x1
    /* 15D30 8019ECA8 02BF010C */  jal        func_8006FC08
    /* 15D34 8019ECAC 0D000624 */   addiu     $a2, $zero, 0xD
  .L8019ECB0:
    /* 15D38 8019ECB0 E2028292 */  lbu        $v0, 0x2E2($s4)
    /* 15D3C 8019ECB4 01000324 */  addiu      $v1, $zero, 0x1
    /* 15D40 8019ECB8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 15D44 8019ECBC C0004310 */  beq        $v0, $v1, .L8019EFC0
    /* 15D48 8019ECC0 01000424 */   addiu     $a0, $zero, 0x1
    /* 15D4C 8019ECC4 288B060C */  jal        func_801A2CA0
    /* 15D50 8019ECC8 21280000 */   addu      $a1, $zero, $zero
    /* 15D54 8019ECCC 01000424 */  addiu      $a0, $zero, 0x1
    /* 15D58 8019ECD0 E48B060C */  jal        func_801A2F90
    /* 15D5C 8019ECD4 21280000 */   addu      $a1, $zero, $zero
    /* 15D60 8019ECD8 01000424 */  addiu      $a0, $zero, 0x1
    /* 15D64 8019ECDC 3D8C060C */  jal        func_801A30F4
    /* 15D68 8019ECE0 21280000 */   addu      $a1, $zero, $zero
    /* 15D6C 8019ECE4 E1028592 */  lbu        $a1, 0x2E1($s4)
    /* 15D70 8019ECE8 01000424 */  addiu      $a0, $zero, 0x1
    /* 15D74 8019ECEC 0500A538 */  xori       $a1, $a1, 0x5
    /* 15D78 8019ECF0 1B8D060C */  jal        func_801A346C
    /* 15D7C 8019ECF4 2B280500 */   sltu      $a1, $zero, $a1
    /* 15D80 8019ECF8 E1028392 */  lbu        $v1, 0x2E1($s4)
    /* 15D84 8019ECFC 01000224 */  addiu      $v0, $zero, 0x1
    /* 15D88 8019ED00 1D80013C */  lui        $at, %hi(D_801D1F60)
    /* 15D8C 8019ED04 601F22A0 */  sb         $v0, %lo(D_801D1F60)($at)
    /* 15D90 8019ED08 1D80013C */  lui        $at, %hi(D_801D1F61)
    /* 15D94 8019ED0C 611F20A0 */  sb         $zero, %lo(D_801D1F61)($at)
    /* 15D98 8019ED10 16007014 */  bne        $v1, $s0, .L8019ED6C
    /* 15D9C 8019ED14 28000324 */   addiu     $v1, $zero, 0x28
    /* 15DA0 8019ED18 DD028292 */  lbu        $v0, 0x2DD($s4)
    /* 15DA4 8019ED1C 00000000 */  nop
    /* 15DA8 8019ED20 FF004230 */  andi       $v0, $v0, 0xFF
    /* 15DAC 8019ED24 09004314 */  bne        $v0, $v1, .L8019ED4C
    /* 15DB0 8019ED28 21200000 */   addu      $a0, $zero, $zero
    /* 15DB4 8019ED2C 21280000 */  addu       $a1, $zero, $zero
    /* 15DB8 8019ED30 7F98060C */  jal        func_801A61FC
    /* 15DBC 8019ED34 2F000624 */   addiu     $a2, $zero, 0x2F
    /* 15DC0 8019ED38 45000224 */  addiu      $v0, $zero, 0x45
    /* 15DC4 8019ED3C 1E80013C */  lui        $at, %hi(D_801D81A0)
    /* 15DC8 8019ED40 A08122A0 */  sb         $v0, %lo(D_801D81A0)($at)
    /* 15DCC 8019ED44 787B0608 */  j          .L8019EDE0
    /* 15DD0 8019ED48 21200000 */   addu      $a0, $zero, $zero
  .L8019ED4C:
    /* 15DD4 8019ED4C 21280000 */  addu       $a1, $zero, $zero
    /* 15DD8 8019ED50 7F98060C */  jal        func_801A61FC
    /* 15DDC 8019ED54 21300000 */   addu      $a2, $zero, $zero
    /* 15DE0 8019ED58 16000224 */  addiu      $v0, $zero, 0x16
    /* 15DE4 8019ED5C 1E80013C */  lui        $at, %hi(D_801D81A0)
    /* 15DE8 8019ED60 A08122A0 */  sb         $v0, %lo(D_801D81A0)($at)
    /* 15DEC 8019ED64 787B0608 */  j          .L8019EDE0
    /* 15DF0 8019ED68 21200000 */   addu      $a0, $zero, $zero
  .L8019ED6C:
    /* 15DF4 8019ED6C DD028392 */  lbu        $v1, 0x2DD($s4)
    /* 15DF8 8019ED70 2EBA043C */  lui        $a0, (0xBA2E8BA3 >> 16)
    /* 15DFC 8019ED74 A38B8434 */  ori        $a0, $a0, (0xBA2E8BA3 & 0xFFFF)
    /* 15E00 8019ED78 FF006330 */  andi       $v1, $v1, 0xFF
    /* 15E04 8019ED7C 19006400 */  multu      $v1, $a0
    /* 15E08 8019ED80 10400000 */  mfhi       $t0
    /* 15E0C 8019ED84 DD028292 */  lbu        $v0, 0x2DD($s4)
    /* 15E10 8019ED88 00000000 */  nop
    /* 15E14 8019ED8C 19004400 */  multu      $v0, $a0
    /* 15E18 8019ED90 C2200800 */  srl        $a0, $t0, 3
    /* 15E1C 8019ED94 40100400 */  sll        $v0, $a0, 1
    /* 15E20 8019ED98 21104400 */  addu       $v0, $v0, $a0
    /* 15E24 8019ED9C 80100200 */  sll        $v0, $v0, 2
    /* 15E28 8019EDA0 23104400 */  subu       $v0, $v0, $a0
    /* 15E2C 8019EDA4 23186200 */  subu       $v1, $v1, $v0
    /* 15E30 8019EDA8 FF006330 */  andi       $v1, $v1, 0xFF
    /* 15E34 8019EDAC 40110300 */  sll        $v0, $v1, 5
    /* 15E38 8019EDB0 23104300 */  subu       $v0, $v0, $v1
    /* 15E3C 8019EDB4 485EA2A6 */  sh         $v0, 0x5E48($s5)
    /* 15E40 8019EDB8 10280000 */  mfhi       $a1
    /* 15E44 8019EDBC C2180500 */  srl        $v1, $a1, 3
    /* 15E48 8019EDC0 FF006330 */  andi       $v1, $v1, 0xFF
    /* 15E4C 8019EDC4 40100300 */  sll        $v0, $v1, 1
    /* 15E50 8019EDC8 21104300 */  addu       $v0, $v0, $v1
    /* 15E54 8019EDCC 80100200 */  sll        $v0, $v0, 2
    /* 15E58 8019EDD0 23104300 */  subu       $v0, $v0, $v1
    /* 15E5C 8019EDD4 40100200 */  sll        $v0, $v0, 1
    /* 15E60 8019EDD8 4A5EA2A6 */  sh         $v0, 0x5E4A($s5)
    /* 15E64 8019EDDC 21200000 */  addu       $a0, $zero, $zero
  .L8019EDE0:
    /* 15E68 8019EDE0 21280000 */  addu       $a1, $zero, $zero
    /* 15E6C 8019EDE4 21300000 */  addu       $a2, $zero, $zero
    /* 15E70 8019EDE8 798E060C */  jal        func_801A39E4
    /* 15E74 8019EDEC 21380000 */   addu      $a3, $zero, $zero
    /* 15E78 8019EDF0 21184000 */  addu       $v1, $v0, $zero
    /* 15E7C 8019EDF4 20000224 */  addiu      $v0, $zero, 0x20
    /* 15E80 8019EDF8 05006210 */  beq        $v1, $v0, .L8019EE10
    /* 15E84 8019EDFC 40000224 */   addiu     $v0, $zero, 0x40
    /* 15E88 8019EE00 65006210 */  beq        $v1, $v0, .L8019EF98
    /* 15E8C 8019EE04 00000000 */   nop
    /* 15E90 8019EE08 557E0608 */  j          .L8019F954
    /* 15E94 8019EE0C 00000000 */   nop
  .L8019EE10:
    /* 15E98 8019EE10 01001024 */  addiu      $s0, $zero, 0x1
    /* 15E9C 8019EE14 1E80013C */  lui        $at, %hi(D_801D8199)
    /* 15EA0 8019EE18 998130A0 */  sb         $s0, %lo(D_801D8199)($at)
    /* 15EA4 8019EE1C 1E80013C */  lui        $at, %hi(D_801D819C)
    /* 15EA8 8019EE20 9C8130A0 */  sb         $s0, %lo(D_801D819C)($at)
    /* 15EAC 8019EE24 1E80013C */  lui        $at, %hi(D_801D819F)
    /* 15EB0 8019EE28 9F8130A0 */  sb         $s0, %lo(D_801D819F)($at)
    /* 15EB4 8019EE2C 88AD020C */  jal        func_800AB620
    /* 15EB8 8019EE30 28050424 */   addiu     $a0, $zero, 0x528
    /* 15EBC 8019EE34 E1028292 */  lbu        $v0, 0x2E1($s4)
    /* 15EC0 8019EE38 03000324 */  addiu      $v1, $zero, 0x3
    /* 15EC4 8019EE3C FF004230 */  andi       $v0, $v0, 0xFF
    /* 15EC8 8019EE40 24004314 */  bne        $v0, $v1, .L8019EED4
    /* 15ECC 8019EE44 28000324 */   addiu     $v1, $zero, 0x28
    /* 15ED0 8019EE48 DD028292 */  lbu        $v0, 0x2DD($s4)
    /* 15ED4 8019EE4C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 15ED8 8019EE50 2108A102 */  addu       $at, $s5, $at
    /* 15EDC 8019EE54 21AC30A0 */  sb         $s0, -0x53DF($at)
    /* 15EE0 8019EE58 FF004230 */  andi       $v0, $v0, 0xFF
    /* 15EE4 8019EE5C 02004314 */  bne        $v0, $v1, .L8019EE68
    /* 15EE8 8019EE60 28000224 */   addiu     $v0, $zero, 0x28
    /* 15EEC 8019EE64 29000224 */  addiu      $v0, $zero, 0x29
  .L8019EE68:
    /* 15EF0 8019EE68 DE0282A2 */  sb         $v0, 0x2DE($s4)
    /* 15EF4 8019EE6C E1028292 */  lbu        $v0, 0x2E1($s4)
    /* 15EF8 8019EE70 03000324 */  addiu      $v1, $zero, 0x3
    /* 15EFC 8019EE74 FF004230 */  andi       $v0, $v0, 0xFF
    /* 15F00 8019EE78 16004314 */  bne        $v0, $v1, .L8019EED4
    /* 15F04 8019EE7C 28000324 */   addiu     $v1, $zero, 0x28
    /* 15F08 8019EE80 DE028292 */  lbu        $v0, 0x2DE($s4)
    /* 15F0C 8019EE84 00000000 */  nop
    /* 15F10 8019EE88 FF004230 */  andi       $v0, $v0, 0xFF
    /* 15F14 8019EE8C 09004314 */  bne        $v0, $v1, .L8019EEB4
    /* 15F18 8019EE90 01000424 */   addiu     $a0, $zero, 0x1
    /* 15F1C 8019EE94 21280000 */  addu       $a1, $zero, $zero
    /* 15F20 8019EE98 7F98060C */  jal        func_801A61FC
    /* 15F24 8019EE9C 2F000624 */   addiu     $a2, $zero, 0x2F
    /* 15F28 8019EEA0 45000224 */  addiu      $v0, $zero, 0x45
    /* 15F2C 8019EEA4 1E80013C */  lui        $at, %hi(D_801D81A1)
    /* 15F30 8019EEA8 A18122A0 */  sb         $v0, %lo(D_801D81A1)($at)
    /* 15F34 8019EEAC E17B0608 */  j          .L8019EF84
    /* 15F38 8019EEB0 14000224 */   addiu     $v0, $zero, 0x14
  .L8019EEB4:
    /* 15F3C 8019EEB4 21280000 */  addu       $a1, $zero, $zero
    /* 15F40 8019EEB8 7F98060C */  jal        func_801A61FC
    /* 15F44 8019EEBC 21300000 */   addu      $a2, $zero, $zero
    /* 15F48 8019EEC0 16000224 */  addiu      $v0, $zero, 0x16
    /* 15F4C 8019EEC4 1E80013C */  lui        $at, %hi(D_801D81A1)
    /* 15F50 8019EEC8 A18122A0 */  sb         $v0, %lo(D_801D81A1)($at)
    /* 15F54 8019EECC E17B0608 */  j          .L8019EF84
    /* 15F58 8019EED0 14000224 */   addiu     $v0, $zero, 0x14
  .L8019EED4:
    /* 15F5C 8019EED4 DE028692 */  lbu        $a2, 0x2DE($s4)
    /* 15F60 8019EED8 2EBA033C */  lui        $v1, (0xBA2E8BA3 >> 16)
    /* 15F64 8019EEDC A38B6334 */  ori        $v1, $v1, (0xBA2E8BA3 & 0xFFFF)
    /* 15F68 8019EEE0 FF00C630 */  andi       $a2, $a2, 0xFF
    /* 15F6C 8019EEE4 1900C300 */  multu      $a2, $v1
    /* 15F70 8019EEE8 03000424 */  addiu      $a0, $zero, 0x3
    /* 15F74 8019EEEC FF002532 */  andi       $a1, $s1, 0xFF
    /* 15F78 8019EEF0 10400000 */  mfhi       $t0
    /* 15F7C 8019EEF4 DE028292 */  lbu        $v0, 0x2DE($s4)
    /* 15F80 8019EEF8 00000000 */  nop
    /* 15F84 8019EEFC 19004300 */  multu      $v0, $v1
    /* 15F88 8019EF00 01001024 */  addiu      $s0, $zero, 0x1
    /* 15F8C 8019EF04 C2180800 */  srl        $v1, $t0, 3
    /* 15F90 8019EF08 40100300 */  sll        $v0, $v1, 1
    /* 15F94 8019EF0C 21104300 */  addu       $v0, $v0, $v1
    /* 15F98 8019EF10 80100200 */  sll        $v0, $v0, 2
    /* 15F9C 8019EF14 23104300 */  subu       $v0, $v0, $v1
    /* 15FA0 8019EF18 2330C200 */  subu       $a2, $a2, $v0
    /* 15FA4 8019EF1C FF00C630 */  andi       $a2, $a2, 0xFF
    /* 15FA8 8019EF20 40110600 */  sll        $v0, $a2, 5
    /* 15FAC 8019EF24 23104600 */  subu       $v0, $v0, $a2
    /* 15FB0 8019EF28 705EA2A6 */  sh         $v0, 0x5E70($s5)
    /* 15FB4 8019EF2C 10380000 */  mfhi       $a3
    /* 15FB8 8019EF30 C2180700 */  srl        $v1, $a3, 3
    /* 15FBC 8019EF34 FF006330 */  andi       $v1, $v1, 0xFF
    /* 15FC0 8019EF38 40100300 */  sll        $v0, $v1, 1
    /* 15FC4 8019EF3C 21104300 */  addu       $v0, $v0, $v1
    /* 15FC8 8019EF40 80100200 */  sll        $v0, $v0, 2
    /* 15FCC 8019EF44 23104300 */  subu       $v0, $v0, $v1
    /* 15FD0 8019EF48 DD028392 */  lbu        $v1, 0x2DD($s4)
    /* 15FD4 8019EF4C 40100200 */  sll        $v0, $v0, 1
    /* 15FD8 8019EF50 725EA2A6 */  sh         $v0, 0x5E72($s5)
    /* 15FDC 8019EF54 FF006330 */  andi       $v1, $v1, 0xFF
    /* 15FE0 8019EF58 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 15FE4 8019EF5C 21082300 */  addu       $at, $at, $v1
    /* 15FE8 8019EF60 88AD30A0 */  sb         $s0, %lo(D_801DAD88)($at)
    /* 15FEC 8019EF64 AABE010C */  jal        func_8006FAA8
    /* 15FF0 8019EF68 6E30A524 */   addiu     $a1, $a1, 0x306E
    /* 15FF4 8019EF6C E1028292 */  lbu        $v0, 0x2E1($s4)
    /* 15FF8 8019EF70 05000324 */  addiu      $v1, $zero, 0x5
    /* 15FFC 8019EF74 FF004230 */  andi       $v0, $v0, 0xFF
    /* 16000 8019EF78 CE014310 */  beq        $v0, $v1, .L8019F6B4
    /* 16004 8019EF7C 14000224 */   addiu     $v0, $zero, 0x14
    /* 16008 8019EF80 645EB0A2 */  sb         $s0, 0x5E64($s5)
  .L8019EF84:
    /* 1600C 8019EF84 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16010 8019EF88 2108A102 */  addu       $at, $s5, $at
    /* 16014 8019EF8C DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 16018 8019EF90 557E0608 */  j          .L8019F954
    /* 1601C 8019EF94 00000000 */   nop
  .L8019EF98:
    /* 16020 8019EF98 1E80013C */  lui        $at, %hi(D_801D8199)
    /* 16024 8019EF9C 998120A0 */  sb         $zero, %lo(D_801D8199)($at)
    /* 16028 8019EFA0 1E80013C */  lui        $at, %hi(D_801D819C)
    /* 1602C 8019EFA4 9C8120A0 */  sb         $zero, %lo(D_801D819C)($at)
    /* 16030 8019EFA8 1E80013C */  lui        $at, %hi(D_801D819F)
    /* 16034 8019EFAC 9F8120A0 */  sb         $zero, %lo(D_801D819F)($at)
    /* 16038 8019EFB0 88AD020C */  jal        func_800AB620
    /* 1603C 8019EFB4 29050424 */   addiu     $a0, $zero, 0x529
    /* 16040 8019EFB8 AE7D0608 */  j          .L8019F6B8
    /* 16044 8019EFBC 01000224 */   addiu     $v0, $zero, 0x1
  .L8019EFC0:
    /* 16048 8019EFC0 288B060C */  jal        func_801A2CA0
    /* 1604C 8019EFC4 01000524 */   addiu     $a1, $zero, 0x1
    /* 16050 8019EFC8 01000424 */  addiu      $a0, $zero, 0x1
    /* 16054 8019EFCC E48B060C */  jal        func_801A2F90
    /* 16058 8019EFD0 01000524 */   addiu     $a1, $zero, 0x1
    /* 1605C 8019EFD4 01000424 */  addiu      $a0, $zero, 0x1
    /* 16060 8019EFD8 3D8C060C */  jal        func_801A30F4
    /* 16064 8019EFDC 01000524 */   addiu     $a1, $zero, 0x1
    /* 16068 8019EFE0 01000424 */  addiu      $a0, $zero, 0x1
    /* 1606C 8019EFE4 1B8D060C */  jal        func_801A346C
    /* 16070 8019EFE8 01000524 */   addiu     $a1, $zero, 0x1
    /* 16074 8019EFEC E1028292 */  lbu        $v0, 0x2E1($s4)
    /* 16078 8019EFF0 01000324 */  addiu      $v1, $zero, 0x1
    /* 1607C 8019EFF4 1D80013C */  lui        $at, %hi(D_801D1F60)
    /* 16080 8019EFF8 601F23A0 */  sb         $v1, %lo(D_801D1F60)($at)
    /* 16084 8019EFFC 1D80013C */  lui        $at, %hi(D_801D1F61)
    /* 16088 8019F000 611F23A0 */  sb         $v1, %lo(D_801D1F61)($at)
    /* 1608C 8019F004 FF004430 */  andi       $a0, $v0, 0xFF
    /* 16090 8019F008 20009014 */  bne        $a0, $s0, .L8019F08C
    /* 16094 8019F00C 00000000 */   nop
    /* 16098 8019F010 E1028292 */  lbu        $v0, 0x2E1($s4)
    /* 1609C 8019F014 1E80013C */  lui        $at, %hi(D_801D8199)
    /* 160A0 8019F018 998123A0 */  sb         $v1, %lo(D_801D8199)($at)
    /* 160A4 8019F01C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 160A8 8019F020 2108A102 */  addu       $at, $s5, $at
    /* 160AC 8019F024 21AC23A0 */  sb         $v1, -0x53DF($at)
    /* 160B0 8019F028 1E80013C */  lui        $at, %hi(D_801D819F)
    /* 160B4 8019F02C 9F8123A0 */  sb         $v1, %lo(D_801D819F)($at)
    /* 160B8 8019F030 16004414 */  bne        $v0, $a0, .L8019F08C
    /* 160BC 8019F034 28000324 */   addiu     $v1, $zero, 0x28
    /* 160C0 8019F038 DD028292 */  lbu        $v0, 0x2DD($s4)
    /* 160C4 8019F03C 00000000 */  nop
    /* 160C8 8019F040 FF004230 */  andi       $v0, $v0, 0xFF
    /* 160CC 8019F044 09004314 */  bne        $v0, $v1, .L8019F06C
    /* 160D0 8019F048 21200000 */   addu      $a0, $zero, $zero
    /* 160D4 8019F04C 21280000 */  addu       $a1, $zero, $zero
    /* 160D8 8019F050 7F98060C */  jal        func_801A61FC
    /* 160DC 8019F054 2F000624 */   addiu     $a2, $zero, 0x2F
    /* 160E0 8019F058 45000224 */  addiu      $v0, $zero, 0x45
    /* 160E4 8019F05C 1E80013C */  lui        $at, %hi(D_801D81A0)
    /* 160E8 8019F060 A08122A0 */  sb         $v0, %lo(D_801D81A0)($at)
    /* 160EC 8019F064 3F7C0608 */  j          .L8019F0FC
    /* 160F0 8019F068 00000000 */   nop
  .L8019F06C:
    /* 160F4 8019F06C 21280000 */  addu       $a1, $zero, $zero
    /* 160F8 8019F070 7F98060C */  jal        func_801A61FC
    /* 160FC 8019F074 21300000 */   addu      $a2, $zero, $zero
    /* 16100 8019F078 16000224 */  addiu      $v0, $zero, 0x16
    /* 16104 8019F07C 1E80013C */  lui        $at, %hi(D_801D81A0)
    /* 16108 8019F080 A08122A0 */  sb         $v0, %lo(D_801D81A0)($at)
    /* 1610C 8019F084 3F7C0608 */  j          .L8019F0FC
    /* 16110 8019F088 00000000 */   nop
  .L8019F08C:
    /* 16114 8019F08C DD028392 */  lbu        $v1, 0x2DD($s4)
    /* 16118 8019F090 2EBA043C */  lui        $a0, (0xBA2E8BA3 >> 16)
    /* 1611C 8019F094 A38B8434 */  ori        $a0, $a0, (0xBA2E8BA3 & 0xFFFF)
    /* 16120 8019F098 FF006330 */  andi       $v1, $v1, 0xFF
    /* 16124 8019F09C 19006400 */  multu      $v1, $a0
    /* 16128 8019F0A0 10400000 */  mfhi       $t0
    /* 1612C 8019F0A4 DD028292 */  lbu        $v0, 0x2DD($s4)
    /* 16130 8019F0A8 00000000 */  nop
    /* 16134 8019F0AC 19004400 */  multu      $v0, $a0
    /* 16138 8019F0B0 C2200800 */  srl        $a0, $t0, 3
    /* 1613C 8019F0B4 40100400 */  sll        $v0, $a0, 1
    /* 16140 8019F0B8 21104400 */  addu       $v0, $v0, $a0
    /* 16144 8019F0BC 80100200 */  sll        $v0, $v0, 2
    /* 16148 8019F0C0 23104400 */  subu       $v0, $v0, $a0
    /* 1614C 8019F0C4 23186200 */  subu       $v1, $v1, $v0
    /* 16150 8019F0C8 FF006330 */  andi       $v1, $v1, 0xFF
    /* 16154 8019F0CC 40110300 */  sll        $v0, $v1, 5
    /* 16158 8019F0D0 23104300 */  subu       $v0, $v0, $v1
    /* 1615C 8019F0D4 485EA2A6 */  sh         $v0, 0x5E48($s5)
    /* 16160 8019F0D8 10280000 */  mfhi       $a1
    /* 16164 8019F0DC C2180500 */  srl        $v1, $a1, 3
    /* 16168 8019F0E0 FF006330 */  andi       $v1, $v1, 0xFF
    /* 1616C 8019F0E4 40100300 */  sll        $v0, $v1, 1
    /* 16170 8019F0E8 21104300 */  addu       $v0, $v0, $v1
    /* 16174 8019F0EC 80100200 */  sll        $v0, $v0, 2
    /* 16178 8019F0F0 23104300 */  subu       $v0, $v0, $v1
    /* 1617C 8019F0F4 40100200 */  sll        $v0, $v0, 1
    /* 16180 8019F0F8 4A5EA2A6 */  sh         $v0, 0x5E4A($s5)
  .L8019F0FC:
    /* 16184 8019F0FC 1E80023C */  lui        $v0, %hi(D_801DA058)
    /* 16188 8019F100 58A0428C */  lw         $v0, %lo(D_801DA058)($v0)
    /* 1618C 8019F104 00000000 */  nop
    /* 16190 8019F108 38004014 */  bnez       $v0, .L8019F1EC
    /* 16194 8019F10C 21200000 */   addu      $a0, $zero, $zero
    /* 16198 8019F110 21280000 */  addu       $a1, $zero, $zero
    /* 1619C 8019F114 21300000 */  addu       $a2, $zero, $zero
    /* 161A0 8019F118 798E060C */  jal        func_801A39E4
    /* 161A4 8019F11C 21380000 */   addu      $a3, $zero, $zero
    /* 161A8 8019F120 21184000 */  addu       $v1, $v0, $zero
    /* 161AC 8019F124 20000224 */  addiu      $v0, $zero, 0x20
    /* 161B0 8019F128 05006210 */  beq        $v1, $v0, .L8019F140
    /* 161B4 8019F12C 40000224 */   addiu     $v0, $zero, 0x40
    /* 161B8 8019F130 1E006210 */  beq        $v1, $v0, .L8019F1AC
    /* 161BC 8019F134 01000224 */   addiu     $v0, $zero, 0x1
    /* 161C0 8019F138 9C7C0608 */  j          .L8019F270
    /* 161C4 8019F13C 00000000 */   nop
  .L8019F140:
    /* 161C8 8019F140 E1028292 */  lbu        $v0, 0x2E1($s4)
    /* 161CC 8019F144 03000324 */  addiu      $v1, $zero, 0x3
    /* 161D0 8019F148 FF004230 */  andi       $v0, $v0, 0xFF
    /* 161D4 8019F14C 08004314 */  bne        $v0, $v1, .L8019F170
    /* 161D8 8019F150 03000424 */   addiu     $a0, $zero, 0x3
    /* 161DC 8019F154 01000224 */  addiu      $v0, $zero, 0x1
    /* 161E0 8019F158 1E80013C */  lui        $at, %hi(D_801D8199)
    /* 161E4 8019F15C 998122A0 */  sb         $v0, %lo(D_801D8199)($at)
    /* 161E8 8019F160 1E80013C */  lui        $at, %hi(D_801D819C)
    /* 161EC 8019F164 9C8122A0 */  sb         $v0, %lo(D_801D819C)($at)
    /* 161F0 8019F168 657C0608 */  j          .L8019F194
    /* 161F4 8019F16C 00000000 */   nop
  .L8019F170:
    /* 161F8 8019F170 FF002532 */  andi       $a1, $s1, 0xFF
    /* 161FC 8019F174 DD028292 */  lbu        $v0, 0x2DD($s4)
    /* 16200 8019F178 01000324 */  addiu      $v1, $zero, 0x1
    /* 16204 8019F17C FF004230 */  andi       $v0, $v0, 0xFF
    /* 16208 8019F180 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 1620C 8019F184 21082200 */  addu       $at, $at, $v0
    /* 16210 8019F188 88AD23A0 */  sb         $v1, %lo(D_801DAD88)($at)
    /* 16214 8019F18C AABE010C */  jal        func_8006FAA8
    /* 16218 8019F190 6E30A524 */   addiu     $a1, $a1, 0x306E
  .L8019F194:
    /* 1621C 8019F194 88AD020C */  jal        func_800AB620
    /* 16220 8019F198 28050424 */   addiu     $a0, $zero, 0x528
    /* 16224 8019F19C 1E80023C */  lui        $v0, %hi(D_801DA058)
    /* 16228 8019F1A0 58A0428C */  lw         $v0, %lo(D_801DA058)($v0)
    /* 1622C 8019F1A4 9A7C0608 */  j          .L8019F268
    /* 16230 8019F1A8 01004224 */   addiu     $v0, $v0, 0x1
  .L8019F1AC:
    /* 16234 8019F1AC 1E80013C */  lui        $at, %hi(D_801D8199)
    /* 16238 8019F1B0 998120A0 */  sb         $zero, %lo(D_801D8199)($at)
    /* 1623C 8019F1B4 1E80013C */  lui        $at, %hi(D_801D819C)
    /* 16240 8019F1B8 9C8120A0 */  sb         $zero, %lo(D_801D819C)($at)
    /* 16244 8019F1BC 1E80013C */  lui        $at, %hi(D_801D819F)
    /* 16248 8019F1C0 9F8120A0 */  sb         $zero, %lo(D_801D819F)($at)
    /* 1624C 8019F1C4 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 16250 8019F1C8 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
    /* 16254 8019F1CC 88AD020C */  jal        func_800AB620
    /* 16258 8019F1D0 29050424 */   addiu     $a0, $zero, 0x529
    /* 1625C 8019F1D4 1E000224 */  addiu      $v0, $zero, 0x1E
    /* 16260 8019F1D8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16264 8019F1DC 2108A102 */  addu       $at, $s5, $at
    /* 16268 8019F1E0 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 1626C 8019F1E4 9C7C0608 */  j          .L8019F270
    /* 16270 8019F1E8 00000000 */   nop
  .L8019F1EC:
    /* 16274 8019F1EC 21280000 */  addu       $a1, $zero, $zero
    /* 16278 8019F1F0 01000624 */  addiu      $a2, $zero, 0x1
    /* 1627C 8019F1F4 798E060C */  jal        func_801A39E4
    /* 16280 8019F1F8 21380000 */   addu      $a3, $zero, $zero
    /* 16284 8019F1FC 40000324 */  addiu      $v1, $zero, 0x40
    /* 16288 8019F200 1B004314 */  bne        $v0, $v1, .L8019F270
    /* 1628C 8019F204 03000324 */   addiu     $v1, $zero, 0x3
    /* 16290 8019F208 E1028292 */  lbu        $v0, 0x2E1($s4)
    /* 16294 8019F20C 00000000 */  nop
    /* 16298 8019F210 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1629C 8019F214 05004314 */  bne        $v0, $v1, .L8019F22C
    /* 162A0 8019F218 03000424 */   addiu     $a0, $zero, 0x3
    /* 162A4 8019F21C 1E80013C */  lui        $at, %hi(D_801D819C)
    /* 162A8 8019F220 9C8120A0 */  sb         $zero, %lo(D_801D819C)($at)
    /* 162AC 8019F224 947C0608 */  j          .L8019F250
    /* 162B0 8019F228 00000000 */   nop
  .L8019F22C:
    /* 162B4 8019F22C FF002532 */  andi       $a1, $s1, 0xFF
    /* 162B8 8019F230 DD028292 */  lbu        $v0, 0x2DD($s4)
    /* 162BC 8019F234 00000000 */  nop
    /* 162C0 8019F238 FF004230 */  andi       $v0, $v0, 0xFF
    /* 162C4 8019F23C 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 162C8 8019F240 21082200 */  addu       $at, $at, $v0
    /* 162CC 8019F244 88AD20A0 */  sb         $zero, %lo(D_801DAD88)($at)
    /* 162D0 8019F248 AABE010C */  jal        func_8006FAA8
    /* 162D4 8019F24C 6730A524 */   addiu     $a1, $a1, 0x3067
  .L8019F250:
    /* 162D8 8019F250 88AD020C */  jal        func_800AB620
    /* 162DC 8019F254 29050424 */   addiu     $a0, $zero, 0x529
    /* 162E0 8019F258 1E80023C */  lui        $v0, %hi(D_801DA058)
    /* 162E4 8019F25C 58A0428C */  lw         $v0, %lo(D_801DA058)($v0)
    /* 162E8 8019F260 00000000 */  nop
    /* 162EC 8019F264 FFFF4224 */  addiu      $v0, $v0, -0x1
  .L8019F268:
    /* 162F0 8019F268 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 162F4 8019F26C 58A022AC */  sw         $v0, %lo(D_801DA058)($at)
  .L8019F270:
    /* 162F8 8019F270 E1028292 */  lbu        $v0, 0x2E1($s4)
    /* 162FC 8019F274 03000324 */  addiu      $v1, $zero, 0x3
    /* 16300 8019F278 FF004230 */  andi       $v0, $v0, 0xFF
    /* 16304 8019F27C 18004314 */  bne        $v0, $v1, .L8019F2E0
    /* 16308 8019F280 28000324 */   addiu     $v1, $zero, 0x28
    /* 1630C 8019F284 DD028292 */  lbu        $v0, 0x2DD($s4)
    /* 16310 8019F288 00000000 */  nop
    /* 16314 8019F28C FF004230 */  andi       $v0, $v0, 0xFF
    /* 16318 8019F290 0A004314 */  bne        $v0, $v1, .L8019F2BC
    /* 1631C 8019F294 01000424 */   addiu     $a0, $zero, 0x1
    /* 16320 8019F298 21280000 */  addu       $a1, $zero, $zero
    /* 16324 8019F29C 7F98060C */  jal        func_801A61FC
    /* 16328 8019F2A0 21300000 */   addu      $a2, $zero, $zero
    /* 1632C 8019F2A4 16000224 */  addiu      $v0, $zero, 0x16
    /* 16330 8019F2A8 1E80013C */  lui        $at, %hi(D_801D81A1)
    /* 16334 8019F2AC A18122A0 */  sb         $v0, %lo(D_801D81A1)($at)
    /* 16338 8019F2B0 29000224 */  addiu      $v0, $zero, 0x29
    /* 1633C 8019F2B4 D47C0608 */  j          .L8019F350
    /* 16340 8019F2B8 DE0282A2 */   sb        $v0, 0x2DE($s4)
  .L8019F2BC:
    /* 16344 8019F2BC 21280000 */  addu       $a1, $zero, $zero
    /* 16348 8019F2C0 7F98060C */  jal        func_801A61FC
    /* 1634C 8019F2C4 2F000624 */   addiu     $a2, $zero, 0x2F
    /* 16350 8019F2C8 45000224 */  addiu      $v0, $zero, 0x45
    /* 16354 8019F2CC 1E80013C */  lui        $at, %hi(D_801D81A1)
    /* 16358 8019F2D0 A18122A0 */  sb         $v0, %lo(D_801D81A1)($at)
    /* 1635C 8019F2D4 28000224 */  addiu      $v0, $zero, 0x28
    /* 16360 8019F2D8 D47C0608 */  j          .L8019F350
    /* 16364 8019F2DC DE0282A2 */   sb        $v0, 0x2DE($s4)
  .L8019F2E0:
    /* 16368 8019F2E0 DE028392 */  lbu        $v1, 0x2DE($s4)
    /* 1636C 8019F2E4 2EBA043C */  lui        $a0, (0xBA2E8BA3 >> 16)
    /* 16370 8019F2E8 A38B8434 */  ori        $a0, $a0, (0xBA2E8BA3 & 0xFFFF)
    /* 16374 8019F2EC FF006330 */  andi       $v1, $v1, 0xFF
    /* 16378 8019F2F0 19006400 */  multu      $v1, $a0
    /* 1637C 8019F2F4 10400000 */  mfhi       $t0
    /* 16380 8019F2F8 DE028292 */  lbu        $v0, 0x2DE($s4)
    /* 16384 8019F2FC 00000000 */  nop
    /* 16388 8019F300 19004400 */  multu      $v0, $a0
    /* 1638C 8019F304 C2200800 */  srl        $a0, $t0, 3
    /* 16390 8019F308 40100400 */  sll        $v0, $a0, 1
    /* 16394 8019F30C 21104400 */  addu       $v0, $v0, $a0
    /* 16398 8019F310 80100200 */  sll        $v0, $v0, 2
    /* 1639C 8019F314 23104400 */  subu       $v0, $v0, $a0
    /* 163A0 8019F318 23186200 */  subu       $v1, $v1, $v0
    /* 163A4 8019F31C FF006330 */  andi       $v1, $v1, 0xFF
    /* 163A8 8019F320 40110300 */  sll        $v0, $v1, 5
    /* 163AC 8019F324 23104300 */  subu       $v0, $v0, $v1
    /* 163B0 8019F328 705EA2A6 */  sh         $v0, 0x5E70($s5)
    /* 163B4 8019F32C 10280000 */  mfhi       $a1
    /* 163B8 8019F330 C2180500 */  srl        $v1, $a1, 3
    /* 163BC 8019F334 FF006330 */  andi       $v1, $v1, 0xFF
    /* 163C0 8019F338 40100300 */  sll        $v0, $v1, 1
    /* 163C4 8019F33C 21104300 */  addu       $v0, $v0, $v1
    /* 163C8 8019F340 80100200 */  sll        $v0, $v0, 2
    /* 163CC 8019F344 23104300 */  subu       $v0, $v0, $v1
    /* 163D0 8019F348 40100200 */  sll        $v0, $v0, 1
    /* 163D4 8019F34C 725EA2A6 */  sh         $v0, 0x5E72($s5)
  .L8019F350:
    /* 163D8 8019F350 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 163DC 8019F354 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 163E0 8019F358 00000000 */  nop
    /* 163E4 8019F35C 21004014 */  bnez       $v0, .L8019F3E4
    /* 163E8 8019F360 01000424 */   addiu     $a0, $zero, 0x1
    /* 163EC 8019F364 01000524 */  addiu      $a1, $zero, 0x1
    /* 163F0 8019F368 21300000 */  addu       $a2, $zero, $zero
    /* 163F4 8019F36C 798E060C */  jal        func_801A39E4
    /* 163F8 8019F370 21380000 */   addu      $a3, $zero, $zero
    /* 163FC 8019F374 20000324 */  addiu      $v1, $zero, 0x20
    /* 16400 8019F378 3B004314 */  bne        $v0, $v1, .L8019F468
    /* 16404 8019F37C 03000324 */   addiu     $v1, $zero, 0x3
    /* 16408 8019F380 E1028292 */  lbu        $v0, 0x2E1($s4)
    /* 1640C 8019F384 00000000 */  nop
    /* 16410 8019F388 FF004230 */  andi       $v0, $v0, 0xFF
    /* 16414 8019F38C 06004314 */  bne        $v0, $v1, .L8019F3A8
    /* 16418 8019F390 04000424 */   addiu     $a0, $zero, 0x4
    /* 1641C 8019F394 01000224 */  addiu      $v0, $zero, 0x1
    /* 16420 8019F398 1E80013C */  lui        $at, %hi(D_801D819D)
    /* 16424 8019F39C 9D8122A0 */  sb         $v0, %lo(D_801D819D)($at)
    /* 16428 8019F3A0 F37C0608 */  j          .L8019F3CC
    /* 1642C 8019F3A4 00000000 */   nop
  .L8019F3A8:
    /* 16430 8019F3A8 FF00C532 */  andi       $a1, $s6, 0xFF
    /* 16434 8019F3AC DE028292 */  lbu        $v0, 0x2DE($s4)
    /* 16438 8019F3B0 01000324 */  addiu      $v1, $zero, 0x1
    /* 1643C 8019F3B4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 16440 8019F3B8 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 16444 8019F3BC 21082200 */  addu       $at, $at, $v0
    /* 16448 8019F3C0 88AD23A0 */  sb         $v1, %lo(D_801DAD88)($at)
    /* 1644C 8019F3C4 AABE010C */  jal        func_8006FAA8
    /* 16450 8019F3C8 6E30A524 */   addiu     $a1, $a1, 0x306E
  .L8019F3CC:
    /* 16454 8019F3CC 88AD020C */  jal        func_800AB620
    /* 16458 8019F3D0 28050424 */   addiu     $a0, $zero, 0x528
    /* 1645C 8019F3D4 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 16460 8019F3D8 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 16464 8019F3DC 187D0608 */  j          .L8019F460
    /* 16468 8019F3E0 01004224 */   addiu     $v0, $v0, 0x1
  .L8019F3E4:
    /* 1646C 8019F3E4 01000524 */  addiu      $a1, $zero, 0x1
    /* 16470 8019F3E8 01000624 */  addiu      $a2, $zero, 0x1
    /* 16474 8019F3EC 798E060C */  jal        func_801A39E4
    /* 16478 8019F3F0 21380000 */   addu      $a3, $zero, $zero
    /* 1647C 8019F3F4 40000324 */  addiu      $v1, $zero, 0x40
    /* 16480 8019F3F8 1B004314 */  bne        $v0, $v1, .L8019F468
    /* 16484 8019F3FC 03000324 */   addiu     $v1, $zero, 0x3
    /* 16488 8019F400 E1028292 */  lbu        $v0, 0x2E1($s4)
    /* 1648C 8019F404 00000000 */  nop
    /* 16490 8019F408 FF004230 */  andi       $v0, $v0, 0xFF
    /* 16494 8019F40C 05004314 */  bne        $v0, $v1, .L8019F424
    /* 16498 8019F410 04000424 */   addiu     $a0, $zero, 0x4
    /* 1649C 8019F414 1E80013C */  lui        $at, %hi(D_801D819D)
    /* 164A0 8019F418 9D8120A0 */  sb         $zero, %lo(D_801D819D)($at)
    /* 164A4 8019F41C 127D0608 */  j          .L8019F448
    /* 164A8 8019F420 00000000 */   nop
  .L8019F424:
    /* 164AC 8019F424 FF00C532 */  andi       $a1, $s6, 0xFF
    /* 164B0 8019F428 DE028292 */  lbu        $v0, 0x2DE($s4)
    /* 164B4 8019F42C 00000000 */  nop
    /* 164B8 8019F430 FF004230 */  andi       $v0, $v0, 0xFF
    /* 164BC 8019F434 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 164C0 8019F438 21082200 */  addu       $at, $at, $v0
    /* 164C4 8019F43C 88AD20A0 */  sb         $zero, %lo(D_801DAD88)($at)
    /* 164C8 8019F440 AABE010C */  jal        func_8006FAA8
    /* 164CC 8019F444 6730A524 */   addiu     $a1, $a1, 0x3067
  .L8019F448:
    /* 164D0 8019F448 88AD020C */  jal        func_800AB620
    /* 164D4 8019F44C 29050424 */   addiu     $a0, $zero, 0x529
    /* 164D8 8019F450 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 164DC 8019F454 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 164E0 8019F458 00000000 */  nop
    /* 164E4 8019F45C FFFF4224 */  addiu      $v0, $v0, -0x1
  .L8019F460:
    /* 164E8 8019F460 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 164EC 8019F464 5CA022AC */  sw         $v0, %lo(D_801DA05C)($at)
  .L8019F468:
    /* 164F0 8019F468 1E80023C */  lui        $v0, %hi(D_801DA058)
    /* 164F4 8019F46C 58A0428C */  lw         $v0, %lo(D_801DA058)($v0)
    /* 164F8 8019F470 00000000 */  nop
    /* 164FC 8019F474 37014010 */  beqz       $v0, .L8019F954
    /* 16500 8019F478 00000000 */   nop
    /* 16504 8019F47C 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 16508 8019F480 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 1650C 8019F484 00000000 */  nop
    /* 16510 8019F488 32014010 */  beqz       $v0, .L8019F954
    /* 16514 8019F48C 02000224 */   addiu     $v0, $zero, 0x2
    /* 16518 8019F490 AE7D0608 */  j          .L8019F6B8
    /* 1651C 8019F494 00000000 */   nop
  jlabel .L8019F498
    /* 16520 8019F498 DD028392 */  lbu        $v1, 0x2DD($s4)
    /* 16524 8019F49C DE028292 */  lbu        $v0, 0x2DE($s4)
    /* 16528 8019F4A0 00000000 */  nop
    /* 1652C 8019F4A4 0F006214 */  bne        $v1, $v0, .L8019F4E4
    /* 16530 8019F4A8 01000224 */   addiu     $v0, $zero, 0x1
    /* 16534 8019F4AC 9002828E */  lw         $v0, 0x290($s4)
    /* 16538 8019F4B0 00000000 */  nop
    /* 1653C 8019F4B4 10004230 */  andi       $v0, $v0, 0x10
    /* 16540 8019F4B8 02004010 */  beqz       $v0, .L8019F4C4
    /* 16544 8019F4BC 04000424 */   addiu     $a0, $zero, 0x4
    /* 16548 8019F4C0 01000424 */  addiu      $a0, $zero, 0x1
  .L8019F4C4:
    /* 1654C 8019F4C4 9002828E */  lw         $v0, 0x290($s4)
    /* 16550 8019F4C8 01000324 */  addiu      $v1, $zero, 0x1
    /* 16554 8019F4CC 10004230 */  andi       $v0, $v0, 0x10
    /* 16558 8019F4D0 02004010 */  beqz       $v0, .L8019F4DC
    /* 1655C 8019F4D4 385EA4AE */   sw        $a0, 0x5E38($s5)
    /* 16560 8019F4D8 04000324 */  addiu      $v1, $zero, 0x4
  .L8019F4DC:
    /* 16564 8019F4DC 3B7D0608 */  j          .L8019F4EC
    /* 16568 8019F4E0 605EA3AE */   sw        $v1, 0x5E60($s5)
  .L8019F4E4:
    /* 1656C 8019F4E4 385EA2AE */  sw         $v0, 0x5E38($s5)
    /* 16570 8019F4E8 605EA2AE */  sw         $v0, 0x5E60($s5)
  .L8019F4EC:
    /* 16574 8019F4EC E1028292 */  lbu        $v0, 0x2E1($s4)
    /* 16578 8019F4F0 03001024 */  addiu      $s0, $zero, 0x3
    /* 1657C 8019F4F4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 16580 8019F4F8 0C005010 */  beq        $v0, $s0, .L8019F52C
    /* 16584 8019F4FC 54000424 */   addiu     $a0, $zero, 0x54
    /* 16588 8019F500 01000524 */  addiu      $a1, $zero, 0x1
    /* 1658C 8019F504 02BF010C */  jal        func_8006FC08
    /* 16590 8019F508 0D000624 */   addiu     $a2, $zero, 0xD
    /* 16594 8019F50C 55000424 */  addiu      $a0, $zero, 0x55
    /* 16598 8019F510 01000524 */  addiu      $a1, $zero, 0x1
    /* 1659C 8019F514 02BF010C */  jal        func_8006FC08
    /* 165A0 8019F518 0D000624 */   addiu     $a2, $zero, 0xD
    /* 165A4 8019F51C 56000424 */  addiu      $a0, $zero, 0x56
    /* 165A8 8019F520 01000524 */  addiu      $a1, $zero, 0x1
    /* 165AC 8019F524 02BF010C */  jal        func_8006FC08
    /* 165B0 8019F528 0D000624 */   addiu     $a2, $zero, 0xD
  .L8019F52C:
    /* 165B4 8019F52C 01000424 */  addiu      $a0, $zero, 0x1
    /* 165B8 8019F530 288B060C */  jal        func_801A2CA0
    /* 165BC 8019F534 01000524 */   addiu     $a1, $zero, 0x1
    /* 165C0 8019F538 01000424 */  addiu      $a0, $zero, 0x1
    /* 165C4 8019F53C E48B060C */  jal        func_801A2F90
    /* 165C8 8019F540 01000524 */   addiu     $a1, $zero, 0x1
    /* 165CC 8019F544 01000424 */  addiu      $a0, $zero, 0x1
    /* 165D0 8019F548 3D8C060C */  jal        func_801A30F4
    /* 165D4 8019F54C 01000524 */   addiu     $a1, $zero, 0x1
    /* 165D8 8019F550 01000424 */  addiu      $a0, $zero, 0x1
    /* 165DC 8019F554 1B8D060C */  jal        func_801A346C
    /* 165E0 8019F558 01000524 */   addiu     $a1, $zero, 0x1
    /* 165E4 8019F55C E1028392 */  lbu        $v1, 0x2E1($s4)
    /* 165E8 8019F560 01000224 */  addiu      $v0, $zero, 0x1
    /* 165EC 8019F564 1D80013C */  lui        $at, %hi(D_801D1F60)
    /* 165F0 8019F568 601F22A0 */  sb         $v0, %lo(D_801D1F60)($at)
    /* 165F4 8019F56C 1D80013C */  lui        $at, %hi(D_801D1F61)
    /* 165F8 8019F570 611F22A0 */  sb         $v0, %lo(D_801D1F61)($at)
    /* 165FC 8019F574 16007014 */  bne        $v1, $s0, .L8019F5D0
    /* 16600 8019F578 28000324 */   addiu     $v1, $zero, 0x28
    /* 16604 8019F57C DE028292 */  lbu        $v0, 0x2DE($s4)
    /* 16608 8019F580 00000000 */  nop
    /* 1660C 8019F584 FF004230 */  andi       $v0, $v0, 0xFF
    /* 16610 8019F588 09004314 */  bne        $v0, $v1, .L8019F5B0
    /* 16614 8019F58C 01000424 */   addiu     $a0, $zero, 0x1
    /* 16618 8019F590 21280000 */  addu       $a1, $zero, $zero
    /* 1661C 8019F594 7F98060C */  jal        func_801A61FC
    /* 16620 8019F598 2E000624 */   addiu     $a2, $zero, 0x2E
    /* 16624 8019F59C 45000224 */  addiu      $v0, $zero, 0x45
    /* 16628 8019F5A0 1E80013C */  lui        $at, %hi(D_801D81A1)
    /* 1662C 8019F5A4 A18122A0 */  sb         $v0, %lo(D_801D81A1)($at)
    /* 16630 8019F5A8 917D0608 */  j          .L8019F644
    /* 16634 8019F5AC 01000424 */   addiu     $a0, $zero, 0x1
  .L8019F5B0:
    /* 16638 8019F5B0 21280000 */  addu       $a1, $zero, $zero
    /* 1663C 8019F5B4 7F98060C */  jal        func_801A61FC
    /* 16640 8019F5B8 21300000 */   addu      $a2, $zero, $zero
    /* 16644 8019F5BC 16000224 */  addiu      $v0, $zero, 0x16
    /* 16648 8019F5C0 1E80013C */  lui        $at, %hi(D_801D81A1)
    /* 1664C 8019F5C4 A18122A0 */  sb         $v0, %lo(D_801D81A1)($at)
    /* 16650 8019F5C8 917D0608 */  j          .L8019F644
    /* 16654 8019F5CC 01000424 */   addiu     $a0, $zero, 0x1
  .L8019F5D0:
    /* 16658 8019F5D0 DE028392 */  lbu        $v1, 0x2DE($s4)
    /* 1665C 8019F5D4 2EBA043C */  lui        $a0, (0xBA2E8BA3 >> 16)
    /* 16660 8019F5D8 A38B8434 */  ori        $a0, $a0, (0xBA2E8BA3 & 0xFFFF)
    /* 16664 8019F5DC FF006330 */  andi       $v1, $v1, 0xFF
    /* 16668 8019F5E0 19006400 */  multu      $v1, $a0
    /* 1666C 8019F5E4 10400000 */  mfhi       $t0
    /* 16670 8019F5E8 DE028292 */  lbu        $v0, 0x2DE($s4)
    /* 16674 8019F5EC 00000000 */  nop
    /* 16678 8019F5F0 19004400 */  multu      $v0, $a0
    /* 1667C 8019F5F4 C2200800 */  srl        $a0, $t0, 3
    /* 16680 8019F5F8 40100400 */  sll        $v0, $a0, 1
    /* 16684 8019F5FC 21104400 */  addu       $v0, $v0, $a0
    /* 16688 8019F600 80100200 */  sll        $v0, $v0, 2
    /* 1668C 8019F604 23104400 */  subu       $v0, $v0, $a0
    /* 16690 8019F608 23186200 */  subu       $v1, $v1, $v0
    /* 16694 8019F60C FF006330 */  andi       $v1, $v1, 0xFF
    /* 16698 8019F610 40110300 */  sll        $v0, $v1, 5
    /* 1669C 8019F614 23104300 */  subu       $v0, $v0, $v1
    /* 166A0 8019F618 705EA2A6 */  sh         $v0, 0x5E70($s5)
    /* 166A4 8019F61C 10280000 */  mfhi       $a1
    /* 166A8 8019F620 C2180500 */  srl        $v1, $a1, 3
    /* 166AC 8019F624 FF006330 */  andi       $v1, $v1, 0xFF
    /* 166B0 8019F628 40100300 */  sll        $v0, $v1, 1
    /* 166B4 8019F62C 21104300 */  addu       $v0, $v0, $v1
    /* 166B8 8019F630 80100200 */  sll        $v0, $v0, 2
    /* 166BC 8019F634 23104300 */  subu       $v0, $v0, $v1
    /* 166C0 8019F638 40100200 */  sll        $v0, $v0, 1
    /* 166C4 8019F63C 725EA2A6 */  sh         $v0, 0x5E72($s5)
    /* 166C8 8019F640 01000424 */  addiu      $a0, $zero, 0x1
  .L8019F644:
    /* 166CC 8019F644 21280000 */  addu       $a1, $zero, $zero
    /* 166D0 8019F648 21300000 */  addu       $a2, $zero, $zero
    /* 166D4 8019F64C 798E060C */  jal        func_801A39E4
    /* 166D8 8019F650 21380000 */   addu      $a3, $zero, $zero
    /* 166DC 8019F654 21184000 */  addu       $v1, $v0, $zero
    /* 166E0 8019F658 20000224 */  addiu      $v0, $zero, 0x20
    /* 166E4 8019F65C 05006210 */  beq        $v1, $v0, .L8019F674
    /* 166E8 8019F660 40000224 */   addiu     $v0, $zero, 0x40
    /* 166EC 8019F664 1C006210 */  beq        $v1, $v0, .L8019F6D8
    /* 166F0 8019F668 03000424 */   addiu     $a0, $zero, 0x3
    /* 166F4 8019F66C 557E0608 */  j          .L8019F954
    /* 166F8 8019F670 00000000 */   nop
  .L8019F674:
    /* 166FC 8019F674 04000424 */  addiu      $a0, $zero, 0x4
    /* 16700 8019F678 FF00C532 */  andi       $a1, $s6, 0xFF
    /* 16704 8019F67C DE028392 */  lbu        $v1, 0x2DE($s4)
    /* 16708 8019F680 01000224 */  addiu      $v0, $zero, 0x1
    /* 1670C 8019F684 1E80013C */  lui        $at, %hi(D_801D8199)
    /* 16710 8019F688 998122A0 */  sb         $v0, %lo(D_801D8199)($at)
    /* 16714 8019F68C 1E80013C */  lui        $at, %hi(D_801D819D)
    /* 16718 8019F690 9D8122A0 */  sb         $v0, %lo(D_801D819D)($at)
    /* 1671C 8019F694 FF006330 */  andi       $v1, $v1, 0xFF
    /* 16720 8019F698 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 16724 8019F69C 21082300 */  addu       $at, $at, $v1
    /* 16728 8019F6A0 88AD22A0 */  sb         $v0, %lo(D_801DAD88)($at)
    /* 1672C 8019F6A4 AABE010C */  jal        func_8006FAA8
    /* 16730 8019F6A8 6E30A524 */   addiu     $a1, $a1, 0x306E
    /* 16734 8019F6AC 88AD020C */  jal        func_800AB620
    /* 16738 8019F6B0 28050424 */   addiu     $a0, $zero, 0x528
  .L8019F6B4:
    /* 1673C 8019F6B4 02000224 */  addiu      $v0, $zero, 0x2
  .L8019F6B8:
    /* 16740 8019F6B8 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 16744 8019F6BC 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
    /* 16748 8019F6C0 1E000224 */  addiu      $v0, $zero, 0x1E
    /* 1674C 8019F6C4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 16750 8019F6C8 2108A102 */  addu       $at, $s5, $at
    /* 16754 8019F6CC DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 16758 8019F6D0 557E0608 */  j          .L8019F954
    /* 1675C 8019F6D4 00000000 */   nop
  .L8019F6D8:
    /* 16760 8019F6D8 FF002532 */  andi       $a1, $s1, 0xFF
    /* 16764 8019F6DC DD028292 */  lbu        $v0, 0x2DD($s4)
    /* 16768 8019F6E0 1E80013C */  lui        $at, %hi(D_801D8199)
    /* 1676C 8019F6E4 998120A0 */  sb         $zero, %lo(D_801D8199)($at)
    /* 16770 8019F6E8 1E80013C */  lui        $at, %hi(D_801D819C)
    /* 16774 8019F6EC 9C8120A0 */  sb         $zero, %lo(D_801D819C)($at)
    /* 16778 8019F6F0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1677C 8019F6F4 2108A102 */  addu       $at, $s5, $at
    /* 16780 8019F6F8 21AC20A0 */  sb         $zero, -0x53DF($at)
    /* 16784 8019F6FC 1E80013C */  lui        $at, %hi(D_801D819F)
    /* 16788 8019F700 9F8120A0 */  sb         $zero, %lo(D_801D819F)($at)
    /* 1678C 8019F704 FF004230 */  andi       $v0, $v0, 0xFF
    /* 16790 8019F708 1E80013C */  lui        $at, %hi(D_801DAD88)
    /* 16794 8019F70C 21082200 */  addu       $at, $at, $v0
    /* 16798 8019F710 88AD20A0 */  sb         $zero, %lo(D_801DAD88)($at)
    /* 1679C 8019F714 AABE010C */  jal        func_8006FAA8
    /* 167A0 8019F718 6730A524 */   addiu     $a1, $a1, 0x3067
    /* 167A4 8019F71C 88AD020C */  jal        func_800AB620
    /* 167A8 8019F720 29050424 */   addiu     $a0, $zero, 0x529
    /* 167AC 8019F724 04000424 */  addiu      $a0, $zero, 0x4
    /* 167B0 8019F728 A1BE010C */  jal        func_8006FA84
    /* 167B4 8019F72C 21280000 */   addu      $a1, $zero, $zero
    /* 167B8 8019F730 0A000224 */  addiu      $v0, $zero, 0xA
    /* 167BC 8019F734 0100013C */  lui        $at, (0x10000 >> 16)
    /* 167C0 8019F738 2108A102 */  addu       $at, $s5, $at
    /* 167C4 8019F73C DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 167C8 8019F740 557E0608 */  j          .L8019F954
    /* 167CC 8019F744 00000000 */   nop
  jlabel .L8019F748
    /* 167D0 8019F748 E1028392 */  lbu        $v1, 0x2E1($s4)
    /* 167D4 8019F74C 03000224 */  addiu      $v0, $zero, 0x3
    /* 167D8 8019F750 3C5EA0A2 */  sb         $zero, 0x5E3C($s5)
    /* 167DC 8019F754 645EA0A2 */  sb         $zero, 0x5E64($s5)
    /* 167E0 8019F758 1E80013C */  lui        $at, %hi(D_801D8FE8)
    /* 167E4 8019F75C E88F20A0 */  sb         $zero, %lo(D_801D8FE8)($at)
    /* 167E8 8019F760 1E80013C */  lui        $at, %hi(D_801D9000)
    /* 167EC 8019F764 009020A0 */  sb         $zero, %lo(D_801D9000)($at)
    /* 167F0 8019F768 1E80013C */  lui        $at, %hi(D_801D9018)
    /* 167F4 8019F76C 189020A0 */  sb         $zero, %lo(D_801D9018)($at)
    /* 167F8 8019F770 1E80013C */  lui        $at, %hi(D_801D803B)
    /* 167FC 8019F774 3B8020A0 */  sb         $zero, %lo(D_801D803B)($at)
    /* 16800 8019F778 FF006330 */  andi       $v1, $v1, 0xFF
    /* 16804 8019F77C 20006214 */  bne        $v1, $v0, .L8019F800
    /* 16808 8019F780 21200000 */   addu      $a0, $zero, $zero
    /* 1680C 8019F784 12000424 */  addiu      $a0, $zero, 0x12
    /* 16810 8019F788 30310524 */  addiu      $a1, $zero, 0x3130
    /* 16814 8019F78C 21300000 */  addu       $a2, $zero, $zero
    /* 16818 8019F790 21380000 */  addu       $a3, $zero, $zero
    /* 1681C 8019F794 1B000224 */  addiu      $v0, $zero, 0x1B
    /* 16820 8019F798 1400A2AF */  sw         $v0, 0x14($sp)
    /* 16824 8019F79C 00100224 */  addiu      $v0, $zero, 0x1000
    /* 16828 8019F7A0 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 1682C 8019F7A4 2000A2AF */  sw         $v0, 0x20($sp)
    /* 16830 8019F7A8 80000224 */  addiu      $v0, $zero, 0x80
    /* 16834 8019F7AC 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 16838 8019F7B0 3000A2AF */  sw         $v0, 0x30($sp)
    /* 1683C 8019F7B4 3400A2AF */  sw         $v0, 0x34($sp)
    /* 16840 8019F7B8 02000224 */  addiu      $v0, $zero, 0x2
    /* 16844 8019F7BC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 16848 8019F7C0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1684C 8019F7C4 2400A0AF */  sw         $zero, 0x24($sp)
    /* 16850 8019F7C8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 16854 8019F7CC 3800A0AF */  sw         $zero, 0x38($sp)
    /* 16858 8019F7D0 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 1685C 8019F7D4 ED4F060C */  jal        func_80193FB4
    /* 16860 8019F7D8 4000A0AF */   sw        $zero, 0x40($sp)
    /* 16864 8019F7DC 1E80013C */  lui        $at, %hi(D_801D8198)
    /* 16868 8019F7E0 988120A0 */  sb         $zero, %lo(D_801D8198)($at)
    /* 1686C 8019F7E4 1E80013C */  lui        $at, %hi(D_801D8199)
    /* 16870 8019F7E8 998120A0 */  sb         $zero, %lo(D_801D8199)($at)
    /* 16874 8019F7EC 1E80013C */  lui        $at, %hi(D_801D819C)
    /* 16878 8019F7F0 9C8120A0 */  sb         $zero, %lo(D_801D819C)($at)
    /* 1687C 8019F7F4 1E80013C */  lui        $at, %hi(D_801D819D)
    /* 16880 8019F7F8 9D8120A0 */  sb         $zero, %lo(D_801D819D)($at)
    /* 16884 8019F7FC 21200000 */  addu       $a0, $zero, $zero
  .L8019F800:
    /* 16888 8019F800 3D8C060C */  jal        func_801A30F4
    /* 1688C 8019F804 21280000 */   addu      $a1, $zero, $zero
    /* 16890 8019F808 21200000 */  addu       $a0, $zero, $zero
    /* 16894 8019F80C 1B8D060C */  jal        func_801A346C
    /* 16898 8019F810 21280000 */   addu      $a1, $zero, $zero
    /* 1689C 8019F814 0100013C */  lui        $at, (0x10000 >> 16)
    /* 168A0 8019F818 2108A102 */  addu       $at, $s5, $at
    /* 168A4 8019F81C DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 168A8 8019F820 1E80033C */  lui        $v1, %hi(D_801DAE50)
    /* 168AC 8019F824 50AE6390 */  lbu        $v1, %lo(D_801DAE50)($v1)
    /* 168B0 8019F828 1D80013C */  lui        $at, %hi(D_801D1F60)
    /* 168B4 8019F82C 601F20A0 */  sb         $zero, %lo(D_801D1F60)($at)
    /* 168B8 8019F830 1D80013C */  lui        $at, %hi(D_801D1F61)
    /* 168BC 8019F834 611F20A0 */  sb         $zero, %lo(D_801D1F61)($at)
    /* 168C0 8019F838 0100013C */  lui        $at, (0x10000 >> 16)
    /* 168C4 8019F83C 2108A102 */  addu       $at, $s5, $at
    /* 168C8 8019F840 21AC20A0 */  sb         $zero, -0x53DF($at)
    /* 168CC 8019F844 0100013C */  lui        $at, (0x10000 >> 16)
    /* 168D0 8019F848 2108A102 */  addu       $at, $s5, $at
    /* 168D4 8019F84C 20AC20A0 */  sb         $zero, -0x53E0($at)
    /* 168D8 8019F850 1E80013C */  lui        $at, %hi(D_801D819E)
    /* 168DC 8019F854 9E8120A0 */  sb         $zero, %lo(D_801D819E)($at)
    /* 168E0 8019F858 1E80013C */  lui        $at, %hi(D_801D819F)
    /* 168E4 8019F85C 9F8120A0 */  sb         $zero, %lo(D_801D819F)($at)
    /* 168E8 8019F860 21104300 */  addu       $v0, $v0, $v1
    /* 168EC 8019F864 0100013C */  lui        $at, (0x10000 >> 16)
    /* 168F0 8019F868 2108A102 */  addu       $at, $s5, $at
    /* 168F4 8019F86C DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 168F8 8019F870 557E0608 */  j          .L8019F954
    /* 168FC 8019F874 00000000 */   nop
  jlabel .L8019F878
    /* 16900 8019F878 CF8A060C */  jal        func_801A2B3C
    /* 16904 8019F87C 00000000 */   nop
    /* 16908 8019F880 E1028392 */  lbu        $v1, 0x2E1($s4)
    /* 1690C 8019F884 24800202 */  and        $s0, $s0, $v0
    /* 16910 8019F888 03000224 */  addiu      $v0, $zero, 0x3
    /* 16914 8019F88C FF006330 */  andi       $v1, $v1, 0xFF
    /* 16918 8019F890 03006214 */  bne        $v1, $v0, .L8019F8A0
    /* 1691C 8019F894 0A000224 */   addiu     $v0, $zero, 0xA
    /* 16920 8019F898 DD0280A2 */  sb         $zero, 0x2DD($s4)
    /* 16924 8019F89C DE0282A2 */  sb         $v0, 0x2DE($s4)
  .L8019F8A0:
    /* 16928 8019F8A0 E1028292 */  lbu        $v0, 0x2E1($s4)
    /* 1692C 8019F8A4 05001124 */  addiu      $s1, $zero, 0x5
    /* 16930 8019F8A8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 16934 8019F8AC 0A005114 */  bne        $v0, $s1, .L8019F8D8
    /* 16938 8019F8B0 085EA426 */   addiu     $a0, $s5, 0x5E08
    /* 1693C 8019F8B4 21280000 */  addu       $a1, $zero, $zero
    /* 16940 8019F8B8 653A060C */  jal        func_8018E994
    /* 16944 8019F8BC 00010624 */   addiu     $a2, $zero, 0x100
    /* 16948 8019F8C0 24800202 */  and        $s0, $s0, $v0
    /* 1694C 8019F8C4 305EA426 */  addiu      $a0, $s5, 0x5E30
    /* 16950 8019F8C8 21280000 */  addu       $a1, $zero, $zero
    /* 16954 8019F8CC 653A060C */  jal        func_8018E994
    /* 16958 8019F8D0 00010624 */   addiu     $a2, $zero, 0x100
    /* 1695C 8019F8D4 24800202 */  and        $s0, $s0, $v0
  .L8019F8D8:
    /* 16960 8019F8D8 1E000012 */  beqz       $s0, .L8019F954
    /* 16964 8019F8DC 00000000 */   nop
    /* 16968 8019F8E0 E1028292 */  lbu        $v0, 0x2E1($s4)
    /* 1696C 8019F8E4 00000000 */  nop
    /* 16970 8019F8E8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 16974 8019F8EC 04005110 */  beq        $v0, $s1, .L8019F900
    /* 16978 8019F8F0 A20280A2 */   sb        $zero, 0x2A2($s4)
    /* 1697C 8019F8F4 21200000 */  addu       $a0, $zero, $zero
    /* 16980 8019F8F8 437E0608 */  j          .L8019F90C
    /* 16984 8019F8FC 01004524 */   addiu     $a1, $v0, 0x1
  .L8019F900:
    /* 16988 8019F900 E2028592 */  lbu        $a1, 0x2E2($s4)
    /* 1698C 8019F904 21200000 */  addu       $a0, $zero, $zero
    /* 16990 8019F908 1D00A524 */  addiu      $a1, $a1, 0x1D
  .L8019F90C:
    /* 16994 8019F90C C839060C */  jal        func_8018E720
    /* 16998 8019F910 00000000 */   nop
    /* 1699C 8019F914 03000424 */  addiu      $a0, $zero, 0x3
    /* 169A0 8019F918 0F000524 */  addiu      $a1, $zero, 0xF
    /* 169A4 8019F91C 2B39060C */  jal        func_8018E4AC
    /* 169A8 8019F920 21300000 */   addu      $a2, $zero, $zero
    /* 169AC 8019F924 587E0608 */  j          .L8019F960
    /* 169B0 8019F928 01000224 */   addiu     $v0, $zero, 0x1
  jlabel .L8019F92C
    /* 169B4 8019F92C CF8A060C */  jal        func_801A2B3C
    /* 169B8 8019F930 00000000 */   nop
    /* 169BC 8019F934 07004010 */  beqz       $v0, .L8019F954
    /* 169C0 8019F938 03000424 */   addiu     $a0, $zero, 0x3
    /* 169C4 8019F93C A20280A2 */  sb         $zero, 0x2A2($s4)
    /* 169C8 8019F940 0F000524 */  addiu      $a1, $zero, 0xF
    /* 169CC 8019F944 2B39060C */  jal        func_8018E4AC
    /* 169D0 8019F948 21300000 */   addu      $a2, $zero, $zero
    /* 169D4 8019F94C 587E0608 */  j          .L8019F960
    /* 169D8 8019F950 02000224 */   addiu     $v0, $zero, 0x2
  jlabel .L8019F954
    /* 169DC 8019F954 EA98060C */  jal        func_801A63A8
    /* 169E0 8019F958 00000000 */   nop
    /* 169E4 8019F95C 21100000 */  addu       $v0, $zero, $zero
  .L8019F960:
    /* 169E8 8019F960 6C00BF8F */  lw         $ra, 0x6C($sp)
    /* 169EC 8019F964 6800BE8F */  lw         $fp, 0x68($sp)
    /* 169F0 8019F968 6400B78F */  lw         $s7, 0x64($sp)
    /* 169F4 8019F96C 6000B68F */  lw         $s6, 0x60($sp)
    /* 169F8 8019F970 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 169FC 8019F974 5800B48F */  lw         $s4, 0x58($sp)
    /* 16A00 8019F978 5400B38F */  lw         $s3, 0x54($sp)
    /* 16A04 8019F97C 5000B28F */  lw         $s2, 0x50($sp)
    /* 16A08 8019F980 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 16A0C 8019F984 4800B08F */  lw         $s0, 0x48($sp)
    /* 16A10 8019F988 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 16A14 8019F98C 0800E003 */  jr         $ra
    /* 16A18 8019F990 00000000 */   nop
endlabel func_8019E620
