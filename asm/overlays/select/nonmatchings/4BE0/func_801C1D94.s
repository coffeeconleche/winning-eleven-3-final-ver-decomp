nonmatching func_801C1D94, 0x2D0

glabel func_801C1D94
    /* 38E1C 801C1D94 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 38E20 801C1D98 1180023C */  lui        $v0, %hi(D_80108668)
    /* 38E24 801C1D9C 68864290 */  lbu        $v0, %lo(D_80108668)($v0)
    /* 38E28 801C1DA0 21380000 */  addu       $a3, $zero, $zero
    /* 38E2C 801C1DA4 2400B1AF */  sw         $s1, 0x24($sp)
    /* 38E30 801C1DA8 1080113C */  lui        $s1, %hi(D_800FF748)
    /* 38E34 801C1DAC 48F73126 */  addiu      $s1, $s1, %lo(D_800FF748)
    /* 38E38 801C1DB0 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 38E3C 801C1DB4 2800B2AF */  sw         $s2, 0x28($sp)
    /* 38E40 801C1DB8 3E004018 */  blez       $v0, .L801C1EB4
    /* 38E44 801C1DBC 2000B0AF */   sw        $s0, 0x20($sp)
    /* 38E48 801C1DC0 1E80093C */  lui        $t1, %hi(D_801D8968)
    /* 38E4C 801C1DC4 68892925 */  addiu      $t1, $t1, %lo(D_801D8968)
    /* 38E50 801C1DC8 21402002 */  addu       $t0, $s1, $zero
  .L801C1DCC:
    /* 38E54 801C1DCC 1E80013C */  lui        $at, %hi(D_801D89C8)
    /* 38E58 801C1DD0 21082700 */  addu       $at, $at, $a3
    /* 38E5C 801C1DD4 C88927A0 */  sb         $a3, %lo(D_801D89C8)($at)
    /* 38E60 801C1DD8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38E64 801C1DDC 21080101 */  addu       $at, $t0, $at
    /* 38E68 801C1DE0 288F2390 */  lbu        $v1, -0x70D8($at)
    /* 38E6C 801C1DE4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38E70 801C1DE8 21080101 */  addu       $at, $t0, $at
    /* 38E74 801C1DEC 2C8F2694 */  lhu        $a2, -0x70D4($at)
    /* 38E78 801C1DF0 40110300 */  sll        $v0, $v1, 5
    /* 38E7C 801C1DF4 23104300 */  subu       $v0, $v0, $v1
    /* 38E80 801C1DF8 80210200 */  sll        $a0, $v0, 6
    /* 38E84 801C1DFC 23208200 */  subu       $a0, $a0, $v0
    /* 38E88 801C1E00 C0200400 */  sll        $a0, $a0, 3
    /* 38E8C 801C1E04 21208300 */  addu       $a0, $a0, $v1
    /* 38E90 801C1E08 80100400 */  sll        $v0, $a0, 2
    /* 38E94 801C1E0C 21208200 */  addu       $a0, $a0, $v0
    /* 38E98 801C1E10 C0210400 */  sll        $a0, $a0, 7
    /* 38E9C 801C1E14 80280600 */  sll        $a1, $a2, 2
    /* 38EA0 801C1E18 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38EA4 801C1E1C 21080101 */  addu       $at, $t0, $at
    /* 38EA8 801C1E20 2E8F2394 */  lhu        $v1, -0x70D2($at)
    /* 38EAC 801C1E24 2128A600 */  addu       $a1, $a1, $a2
    /* 38EB0 801C1E28 2318C300 */  subu       $v1, $a2, $v1
    /* 38EB4 801C1E2C 80100300 */  sll        $v0, $v1, 2
    /* 38EB8 801C1E30 21104300 */  addu       $v0, $v0, $v1
    /* 38EBC 801C1E34 C0100200 */  sll        $v0, $v0, 3
    /* 38EC0 801C1E38 23104300 */  subu       $v0, $v0, $v1
    /* 38EC4 801C1E3C 00110200 */  sll        $v0, $v0, 4
    /* 38EC8 801C1E40 21104300 */  addu       $v0, $v0, $v1
    /* 38ECC 801C1E44 00110200 */  sll        $v0, $v0, 4
    /* 38ED0 801C1E48 21208200 */  addu       $a0, $a0, $v0
    /* 38ED4 801C1E4C 21102702 */  addu       $v0, $s1, $a3
    /* 38ED8 801C1E50 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38EDC 801C1E54 21084100 */  addu       $at, $v0, $at
    /* 38EE0 801C1E58 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 38EE4 801C1E5C 40280500 */  sll        $a1, $a1, 1
    /* 38EE8 801C1E60 C0100300 */  sll        $v0, $v1, 3
    /* 38EEC 801C1E64 21104300 */  addu       $v0, $v0, $v1
    /* 38EF0 801C1E68 80100200 */  sll        $v0, $v0, 2
    /* 38EF4 801C1E6C 21102202 */  addu       $v0, $s1, $v0
    /* 38EF8 801C1E70 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38EFC 801C1E74 21084100 */  addu       $at, $v0, $at
    /* 38F00 801C1E78 248F2290 */  lbu        $v0, -0x70DC($at)
    /* 38F04 801C1E7C 00000000 */  nop
    /* 38F08 801C1E80 C0004230 */  andi       $v0, $v0, 0xC0
    /* 38F0C 801C1E84 02004014 */  bnez       $v0, .L801C1E90
    /* 38F10 801C1E88 21208500 */   addu      $a0, $a0, $a1
    /* 38F14 801C1E8C 01008424 */  addiu      $a0, $a0, 0x1
  .L801C1E90:
    /* 38F18 801C1E90 000024AD */  sw         $a0, 0x0($t1)
    /* 38F1C 801C1E94 04002925 */  addiu      $t1, $t1, 0x4
    /* 38F20 801C1E98 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38F24 801C1E9C 21082102 */  addu       $at, $s1, $at
    /* 38F28 801C1EA0 208F2290 */  lbu        $v0, -0x70E0($at)
    /* 38F2C 801C1EA4 0100E724 */  addiu      $a3, $a3, 0x1
    /* 38F30 801C1EA8 2A10E200 */  slt        $v0, $a3, $v0
    /* 38F34 801C1EAC C7FF4014 */  bnez       $v0, .L801C1DCC
    /* 38F38 801C1EB0 24000825 */   addiu     $t0, $t0, 0x24
  .L801C1EB4:
    /* 38F3C 801C1EB4 1E80103C */  lui        $s0, %hi(D_801D89C8)
    /* 38F40 801C1EB8 C8891026 */  addiu      $s0, $s0, %lo(D_801D89C8)
    /* 38F44 801C1EBC 1E80123C */  lui        $s2, %hi(D_801D8968)
    /* 38F48 801C1EC0 68895226 */  addiu      $s2, $s2, %lo(D_801D8968)
    /* 38F4C 801C1EC4 21200002 */  addu       $a0, $s0, $zero
    /* 38F50 801C1EC8 21284002 */  addu       $a1, $s2, $zero
    /* 38F54 801C1ECC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38F58 801C1ED0 21082102 */  addu       $at, $s1, $at
    /* 38F5C 801C1ED4 208F2790 */  lbu        $a3, -0x70E0($at)
    /* 38F60 801C1ED8 21300000 */  addu       $a2, $zero, $zero
    /* 38F64 801C1EDC FFA5060C */  jal        func_801A97FC
    /* 38F68 801C1EE0 FFFFE724 */   addiu     $a3, $a3, -0x1
    /* 38F6C 801C1EE4 01000724 */  addiu      $a3, $zero, 0x1
    /* 38F70 801C1EE8 01000224 */  addiu      $v0, $zero, 0x1
    /* 38F74 801C1EEC 1E80043C */  lui        $a0, %hi(D_801D89A8)
    /* 38F78 801C1EF0 A8898424 */  addiu      $a0, $a0, %lo(D_801D89A8)
    /* 38F7C 801C1EF4 1E80013C */  lui        $at, %hi(D_801D89A9)
    /* 38F80 801C1EF8 A98922A0 */  sb         $v0, %lo(D_801D89A9)($at)
    /* 38F84 801C1EFC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38F88 801C1F00 21082102 */  addu       $at, $s1, $at
    /* 38F8C 801C1F04 208F2290 */  lbu        $v0, -0x70E0($at)
    /* 38F90 801C1F08 00000392 */  lbu        $v1, 0x0($s0)
    /* 38F94 801C1F0C 2A10E200 */  slt        $v0, $a3, $v0
    /* 38F98 801C1F10 2F004010 */  beqz       $v0, .L801C1FD0
    /* 38F9C 801C1F14 000083A0 */   sb        $v1, 0x0($a0)
    /* 38FA0 801C1F18 66660C3C */  lui        $t4, (0x66666667 >> 16)
    /* 38FA4 801C1F1C 67668C35 */  ori        $t4, $t4, (0x66666667 & 0xFFFF)
    /* 38FA8 801C1F20 03008A24 */  addiu      $t2, $a0, 0x3
    /* 38FAC 801C1F24 02000924 */  addiu      $t1, $zero, 0x2
    /* 38FB0 801C1F28 21400000 */  addu       $t0, $zero, $zero
    /* 38FB4 801C1F2C 21284002 */  addu       $a1, $s2, $zero
    /* 38FB8 801C1F30 0400AB24 */  addiu      $t3, $a1, 0x4
  .L801C1F34:
    /* 38FBC 801C1F34 1E80013C */  lui        $at, %hi(D_801D89C7)
    /* 38FC0 801C1F38 21082900 */  addu       $at, $at, $t1
    /* 38FC4 801C1F3C C7892290 */  lbu        $v0, %lo(D_801D89C7)($at)
    /* 38FC8 801C1F40 1E80013C */  lui        $at, %hi(D_801D89AA)
    /* 38FCC 801C1F44 21082800 */  addu       $at, $at, $t0
    /* 38FD0 801C1F48 AA8922A0 */  sb         $v0, %lo(D_801D89AA)($at)
    /* 38FD4 801C1F4C 0000628D */  lw         $v0, 0x0($t3)
    /* 38FD8 801C1F50 00000000 */  nop
    /* 38FDC 801C1F54 18004C00 */  mult       $v0, $t4
    /* 38FE0 801C1F58 10700000 */  mfhi       $t6
    /* 38FE4 801C1F5C 0000A38C */  lw         $v1, 0x0($a1)
    /* 38FE8 801C1F60 00000000 */  nop
    /* 38FEC 801C1F64 18006C00 */  mult       $v1, $t4
    /* 38FF0 801C1F68 C3170200 */  sra        $v0, $v0, 31
    /* 38FF4 801C1F6C 83200E00 */  sra        $a0, $t6, 2
    /* 38FF8 801C1F70 23208200 */  subu       $a0, $a0, $v0
    /* 38FFC 801C1F74 C31F0300 */  sra        $v1, $v1, 31
    /* 39000 801C1F78 10300000 */  mfhi       $a2
    /* 39004 801C1F7C 83100600 */  sra        $v0, $a2, 2
    /* 39008 801C1F80 23104300 */  subu       $v0, $v0, $v1
    /* 3900C 801C1F84 06008214 */  bne        $a0, $v0, .L801C1FA0
    /* 39010 801C1F88 00000000 */   nop
    /* 39014 801C1F8C 1E80013C */  lui        $at, %hi(D_801D89A9)
    /* 39018 801C1F90 21082800 */  addu       $at, $at, $t0
    /* 3901C 801C1F94 A9892290 */  lbu        $v0, %lo(D_801D89A9)($at)
    /* 39020 801C1F98 E9070708 */  j          .L801C1FA4
    /* 39024 801C1F9C 000042A1 */   sb        $v0, 0x0($t2)
  .L801C1FA0:
    /* 39028 801C1FA0 000049A1 */  sb         $t1, 0x0($t2)
  .L801C1FA4:
    /* 3902C 801C1FA4 02004A25 */  addiu      $t2, $t2, 0x2
    /* 39030 801C1FA8 01002925 */  addiu      $t1, $t1, 0x1
    /* 39034 801C1FAC 02000825 */  addiu      $t0, $t0, 0x2
    /* 39038 801C1FB0 0400A524 */  addiu      $a1, $a1, 0x4
    /* 3903C 801C1FB4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 39040 801C1FB8 21082102 */  addu       $at, $s1, $at
    /* 39044 801C1FBC 208F2290 */  lbu        $v0, -0x70E0($at)
    /* 39048 801C1FC0 0100E724 */  addiu      $a3, $a3, 0x1
    /* 3904C 801C1FC4 2A10E200 */  slt        $v0, $a3, $v0
    /* 39050 801C1FC8 DAFF4014 */  bnez       $v0, .L801C1F34
    /* 39054 801C1FCC 04006B25 */   addiu     $t3, $t3, 0x4
  .L801C1FD0:
    /* 39058 801C1FD0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3905C 801C1FD4 21082102 */  addu       $at, $s1, $at
    /* 39060 801C1FD8 208F2290 */  lbu        $v0, -0x70E0($at)
    /* 39064 801C1FDC 00000000 */  nop
    /* 39068 801C1FE0 17004018 */  blez       $v0, .L801C2040
    /* 3906C 801C1FE4 21380000 */   addu      $a3, $zero, $zero
    /* 39070 801C1FE8 50AB0834 */  ori        $t0, $zero, 0xAB50
    /* 39074 801C1FEC 60AB0634 */  ori        $a2, $zero, 0xAB60
    /* 39078 801C1FF0 21280000 */  addu       $a1, $zero, $zero
  .L801C1FF4:
    /* 3907C 801C1FF4 21182702 */  addu       $v1, $s1, $a3
    /* 39080 801C1FF8 0100E724 */  addiu      $a3, $a3, 0x1
    /* 39084 801C1FFC 1E80013C */  lui        $at, %hi(D_801D89A8)
    /* 39088 801C2000 21082500 */  addu       $at, $at, $a1
    /* 3908C 801C2004 A8892490 */  lbu        $a0, %lo(D_801D89A8)($at)
    /* 39090 801C2008 21106800 */  addu       $v0, $v1, $t0
    /* 39094 801C200C 000044A0 */  sb         $a0, 0x0($v0)
    /* 39098 801C2010 1E80013C */  lui        $at, %hi(D_801D89A9)
    /* 3909C 801C2014 21082500 */  addu       $at, $at, $a1
    /* 390A0 801C2018 A9892290 */  lbu        $v0, %lo(D_801D89A9)($at)
    /* 390A4 801C201C 21186600 */  addu       $v1, $v1, $a2
    /* 390A8 801C2020 000062A0 */  sb         $v0, 0x0($v1)
    /* 390AC 801C2024 0100013C */  lui        $at, (0x10000 >> 16)
    /* 390B0 801C2028 21082102 */  addu       $at, $s1, $at
    /* 390B4 801C202C 208F2290 */  lbu        $v0, -0x70E0($at)
    /* 390B8 801C2030 00000000 */  nop
    /* 390BC 801C2034 2A10E200 */  slt        $v0, $a3, $v0
    /* 390C0 801C2038 EEFF4014 */  bnez       $v0, .L801C1FF4
    /* 390C4 801C203C 0200A524 */   addiu     $a1, $a1, 0x2
  .L801C2040:
    /* 390C8 801C2040 1E80023C */  lui        $v0, %hi(D_801D89A8)
    /* 390CC 801C2044 A8894224 */  addiu      $v0, $v0, %lo(D_801D89A8)
    /* 390D0 801C2048 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 390D4 801C204C 2800B28F */  lw         $s2, 0x28($sp)
    /* 390D8 801C2050 2400B18F */  lw         $s1, 0x24($sp)
    /* 390DC 801C2054 2000B08F */  lw         $s0, 0x20($sp)
    /* 390E0 801C2058 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 390E4 801C205C 0800E003 */  jr         $ra
    /* 390E8 801C2060 00000000 */   nop
endlabel func_801C1D94
