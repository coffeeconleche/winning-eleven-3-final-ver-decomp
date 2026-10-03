nonmatching func_80059E7C, 0x284

glabel func_80059E7C
    /* 4A67C 80059E7C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4A680 80059E80 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4A684 80059E84 21888000 */  addu       $s1, $a0, $zero
    /* 4A688 80059E88 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4A68C 80059E8C 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 4A690 80059E90 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 4A694 80059E94 801F033C */  lui        $v1, (0x1F8002AF >> 16)
    /* 4A698 80059E98 AF026390 */  lbu        $v1, (0x1F8002AF & 0xFFFF)($v1)
    /* 4A69C 80059E9C 03000224 */  addiu      $v0, $zero, 0x3
    /* 4A6A0 80059EA0 20006214 */  bne        $v1, $v0, .L80059F24
    /* 4A6A4 80059EA4 1800BFAF */   sw        $ra, 0x18($sp)
    /* 4A6A8 80059EA8 1180043C */  lui        $a0, %hi(D_8010A3A8)
    /* 4A6AC 80059EAC A8A38490 */  lbu        $a0, %lo(D_8010A3A8)($a0)
    /* 4A6B0 80059EB0 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 4A6B4 80059EB4 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 4A6B8 80059EB8 19008200 */  multu      $a0, $v0
    /* 4A6BC 80059EBC 10380000 */  mfhi       $a3
    /* 4A6C0 80059EC0 42180700 */  srl        $v1, $a3, 1
    /* 4A6C4 80059EC4 40100300 */  sll        $v0, $v1, 1
    /* 4A6C8 80059EC8 21104300 */  addu       $v0, $v0, $v1
    /* 4A6CC 80059ECC 23208200 */  subu       $a0, $a0, $v0
    /* 4A6D0 80059ED0 FF008430 */  andi       $a0, $a0, 0xFF
    /* 4A6D4 80059ED4 88AD020C */  jal        func_800AB620
    /* 4A6D8 80059ED8 D60D8424 */   addiu     $a0, $a0, 0xDD6
    /* 4A6DC 80059EDC 1180023C */  lui        $v0, %hi(D_8010A3A8)
    /* 4A6E0 80059EE0 A8A34290 */  lbu        $v0, %lo(D_8010A3A8)($v0)
    /* 4A6E4 80059EE4 00000000 */  nop
    /* 4A6E8 80059EE8 01004224 */  addiu      $v0, $v0, 0x1
    /* 4A6EC 80059EEC 1180013C */  lui        $at, %hi(D_8010A3A8)
    /* 4A6F0 80059EF0 A8A322A0 */  sb         $v0, %lo(D_8010A3A8)($at)
    /* 4A6F4 80059EF4 AE79000C */  jal        func_8001E6B8
    /* 4A6F8 80059EF8 02000424 */   addiu     $a0, $zero, 0x2
    /* 4A6FC 80059EFC 7A004010 */  beqz       $v0, .L8005A0E8
    /* 4A700 80059F00 00000000 */   nop
    /* 4A704 80059F04 AE79000C */  jal        func_8001E6B8
    /* 4A708 80059F08 02000424 */   addiu     $a0, $zero, 0x2
    /* 4A70C 80059F0C 40100200 */  sll        $v0, $v0, 1
    /* 4A710 80059F10 0C80013C */  lui        $at, %hi(D_800C7DAC)
    /* 4A714 80059F14 21082200 */  addu       $at, $at, $v0
    /* 4A718 80059F18 AC7D2494 */  lhu        $a0, %lo(D_800C7DAC)($at)
    /* 4A71C 80059F1C 38680108 */  j          .L8005A0E0
    /* 4A720 80059F20 00000000 */   nop
  .L80059F24:
    /* 4A724 80059F24 21202002 */  addu       $a0, $s1, $zero
    /* 4A728 80059F28 21280000 */  addu       $a1, $zero, $zero
    /* 4A72C 80059F2C B95E010C */  jal        func_80057AE4
    /* 4A730 80059F30 21300000 */   addu      $a2, $zero, $zero
    /* 4A734 80059F34 801F033C */  lui        $v1, (0x1F8002AF >> 16)
    /* 4A738 80059F38 AF026390 */  lbu        $v1, (0x1F8002AF & 0xFFFF)($v1)
    /* 4A73C 80059F3C 02000224 */  addiu      $v0, $zero, 0x2
    /* 4A740 80059F40 69006214 */  bne        $v1, $v0, .L8005A0E8
    /* 4A744 80059F44 00000000 */   nop
    /* 4A748 80059F48 99032292 */  lbu        $v0, 0x399($s1)
    /* 4A74C 80059F4C 02002386 */  lh         $v1, 0x2($s1)
    /* 4A750 80059F50 06004010 */  beqz       $v0, .L80059F6C
    /* 4A754 80059F54 23100300 */   negu      $v0, $v1
    /* 4A758 80059F58 71E64228 */  slti       $v0, $v0, -0x198F
    /* 4A75C 80059F5C 06004010 */  beqz       $v0, .L80059F78
    /* 4A760 80059F60 00000000 */   nop
    /* 4A764 80059F64 F1670108 */  j          .L80059FC4
    /* 4A768 80059F68 00000000 */   nop
  .L80059F6C:
    /* 4A76C 80059F6C 71E66228 */  slti       $v0, $v1, -0x198F
    /* 4A770 80059F70 14004014 */  bnez       $v0, .L80059FC4
    /* 4A774 80059F74 00000000 */   nop
  .L80059F78:
    /* 4A778 80059F78 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4A77C 80059F7C 21080102 */  addu       $at, $s0, $at
    /* 4A780 80059F80 5EAC2590 */  lbu        $a1, -0x53A2($at)
    /* 4A784 80059F84 CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 4A788 80059F88 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 4A78C 80059F8C FF00A330 */  andi       $v1, $a1, 0xFF
    /* 4A790 80059F90 19006200 */  multu      $v1, $v0
    /* 4A794 80059F94 10380000 */  mfhi       $a3
    /* 4A798 80059F98 82200700 */  srl        $a0, $a3, 2
    /* 4A79C 80059F9C 80100400 */  sll        $v0, $a0, 2
    /* 4A7A0 80059FA0 21104400 */  addu       $v0, $v0, $a0
    /* 4A7A4 80059FA4 23186200 */  subu       $v1, $v1, $v0
    /* 4A7A8 80059FA8 FF006330 */  andi       $v1, $v1, 0xFF
    /* 4A7AC 80059FAC 01000224 */  addiu      $v0, $zero, 0x1
    /* 4A7B0 80059FB0 04006214 */  bne        $v1, $v0, .L80059FC4
    /* 4A7B4 80059FB4 0100A224 */   addiu     $v0, $a1, 0x1
    /* 4A7B8 80059FB8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4A7BC 80059FBC 21080102 */  addu       $at, $s0, $at
    /* 4A7C0 80059FC0 5EAC22A0 */  sb         $v0, -0x53A2($at)
  .L80059FC4:
    /* 4A7C4 80059FC4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4A7C8 80059FC8 21080102 */  addu       $at, $s0, $at
    /* 4A7CC 80059FCC 5EAC2490 */  lbu        $a0, -0x53A2($at)
    /* 4A7D0 80059FD0 00000000 */  nop
    /* 4A7D4 80059FD4 03008430 */  andi       $a0, $a0, 0x3
    /* 4A7D8 80059FD8 88AD020C */  jal        func_800AB620
    /* 4A7DC 80059FDC D20D8424 */   addiu     $a0, $a0, 0xDD2
    /* 4A7E0 80059FE0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4A7E4 80059FE4 21080102 */  addu       $at, $s0, $at
    /* 4A7E8 80059FE8 5EAC2290 */  lbu        $v0, -0x53A2($at)
    /* 4A7EC 80059FEC 00000000 */  nop
    /* 4A7F0 80059FF0 01004224 */  addiu      $v0, $v0, 0x1
    /* 4A7F4 80059FF4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4A7F8 80059FF8 21080102 */  addu       $at, $s0, $at
    /* 4A7FC 80059FFC 5EAC22A0 */  sb         $v0, -0x53A2($at)
    /* 4A800 8005A000 98032392 */  lbu        $v1, 0x398($s1)
    /* 4A804 8005A004 92032492 */  lbu        $a0, 0x392($s1)
    /* 4A808 8005A008 40100300 */  sll        $v0, $v1, 1
    /* 4A80C 8005A00C 21104300 */  addu       $v0, $v0, $v1
    /* 4A810 8005A010 80100200 */  sll        $v0, $v0, 2
    /* 4A814 8005A014 23104300 */  subu       $v0, $v0, $v1
    /* 4A818 8005A018 40100200 */  sll        $v0, $v0, 1
    /* 4A81C 8005A01C 21105000 */  addu       $v0, $v0, $s0
    /* 4A820 8005A020 A5880334 */  ori        $v1, $zero, 0x88A5
    /* 4A824 8005A024 21104300 */  addu       $v0, $v0, $v1
    /* 4A828 8005A028 21104400 */  addu       $v0, $v0, $a0
    /* 4A82C 8005A02C 00004390 */  lbu        $v1, 0x0($v0)
    /* 4A830 8005A030 02000224 */  addiu      $v0, $zero, 0x2
    /* 4A834 8005A034 16006214 */  bne        $v1, $v0, .L8005A090
    /* 4A838 8005A038 00000000 */   nop
    /* 4A83C 8005A03C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4A840 8005A040 21080102 */  addu       $at, $s0, $at
    /* 4A844 8005A044 5FAC2490 */  lbu        $a0, -0x53A1($at)
    /* 4A848 8005A048 00000000 */  nop
    /* 4A84C 8005A04C 01008430 */  andi       $a0, $a0, 0x1
    /* 4A850 8005A050 88AD020C */  jal        func_800AB620
    /* 4A854 8005A054 D90D8424 */   addiu     $a0, $a0, 0xDD9
    /* 4A858 8005A058 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4A85C 8005A05C 21080102 */  addu       $at, $s0, $at
    /* 4A860 8005A060 5FAC2290 */  lbu        $v0, -0x53A1($at)
    /* 4A864 8005A064 00000000 */  nop
    /* 4A868 8005A068 01004224 */  addiu      $v0, $v0, 0x1
    /* 4A86C 8005A06C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4A870 8005A070 21080102 */  addu       $at, $s0, $at
    /* 4A874 8005A074 5FAC22A0 */  sb         $v0, -0x53A1($at)
    /* 4A878 8005A078 AE79000C */  jal        func_8001E6B8
    /* 4A87C 8005A07C 03000424 */   addiu     $a0, $zero, 0x3
    /* 4A880 8005A080 19004014 */  bnez       $v0, .L8005A0E8
    /* 4A884 8005A084 DC0D0424 */   addiu     $a0, $zero, 0xDDC
    /* 4A888 8005A088 38680108 */  j          .L8005A0E0
    /* 4A88C 8005A08C 00000000 */   nop
  .L8005A090:
    /* 4A890 8005A090 AE79000C */  jal        func_8001E6B8
    /* 4A894 8005A094 02000424 */   addiu     $a0, $zero, 0x2
    /* 4A898 8005A098 13004010 */  beqz       $v0, .L8005A0E8
    /* 4A89C 8005A09C 00000000 */   nop
    /* 4A8A0 8005A0A0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4A8A4 8005A0A4 21080102 */  addu       $at, $s0, $at
    /* 4A8A8 8005A0A8 5EAC2490 */  lbu        $a0, -0x53A2($at)
    /* 4A8AC 8005A0AC 00000000 */  nop
    /* 4A8B0 8005A0B0 FFFF8324 */  addiu      $v1, $a0, -0x1
    /* 4A8B4 8005A0B4 02006104 */  bgez       $v1, .L8005A0C0
    /* 4A8B8 8005A0B8 21106000 */   addu      $v0, $v1, $zero
    /* 4A8BC 8005A0BC 02008224 */  addiu      $v0, $a0, 0x2
  .L8005A0C0:
    /* 4A8C0 8005A0C0 83100200 */  sra        $v0, $v0, 2
    /* 4A8C4 8005A0C4 80100200 */  sll        $v0, $v0, 2
    /* 4A8C8 8005A0C8 FDFF6324 */  addiu      $v1, $v1, -0x3
    /* 4A8CC 8005A0CC 06004310 */  beq        $v0, $v1, .L8005A0E8
    /* 4A8D0 8005A0D0 00000000 */   nop
    /* 4A8D4 8005A0D4 AE79000C */  jal        func_8001E6B8
    /* 4A8D8 8005A0D8 02000424 */   addiu     $a0, $zero, 0x2
    /* 4A8DC 8005A0DC DD0D4424 */  addiu      $a0, $v0, 0xDDD
  .L8005A0E0:
    /* 4A8E0 8005A0E0 88AD020C */  jal        func_800AB620
    /* 4A8E4 8005A0E4 00000000 */   nop
  .L8005A0E8:
    /* 4A8E8 8005A0E8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 4A8EC 8005A0EC 1400B18F */  lw         $s1, 0x14($sp)
    /* 4A8F0 8005A0F0 1000B08F */  lw         $s0, 0x10($sp)
    /* 4A8F4 8005A0F4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4A8F8 8005A0F8 0800E003 */  jr         $ra
    /* 4A8FC 8005A0FC 00000000 */   nop
endlabel func_80059E7C
