nonmatching func_8001EE84, 0x2B0

glabel func_8001EE84
    /* F684 8001EE84 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* F688 8001EE88 1080093C */  lui        $t1, %hi(D_800FF748)
    /* F68C 8001EE8C 48F72925 */  addiu      $t1, $t1, %lo(D_800FF748)
    /* F690 8001EE90 1180023C */  lui        $v0, %hi(D_8010865D)
    /* F694 8001EE94 5D864290 */  lbu        $v0, %lo(D_8010865D)($v0)
    /* F698 8001EE98 1180083C */  lui        $t0, %hi(D_8010A5A8)
    /* F69C 8001EE9C A8A50825 */  addiu      $t0, $t0, %lo(D_8010A5A8)
    /* F6A0 8001EEA0 1000B0AF */  sw         $s0, 0x10($sp)
    /* F6A4 8001EEA4 801F103C */  lui        $s0, (0x1F8001E8 >> 16)
    /* F6A8 8001EEA8 03004014 */  bnez       $v0, .L8001EEB8
    /* F6AC 8001EEAC 1400BFAF */   sw        $ra, 0x14($sp)
    /* F6B0 8001EEB0 AF7B0008 */  j          .L8001EEBC
    /* F6B4 8001EEB4 0B000224 */   addiu     $v0, $zero, 0xB
  .L8001EEB8:
    /* F6B8 8001EEB8 16000224 */  addiu      $v0, $zero, 0x16
  .L8001EEBC:
    /* F6BC 8001EEBC 801F013C */  lui        $at, (0x1F8002A8 >> 16)
    /* F6C0 8001EEC0 A80222A0 */  sb         $v0, (0x1F8002A8 & 0xFFFF)($at)
    /* F6C4 8001EEC4 DF020392 */  lbu        $v1, (0x1F8002DF & 0xFFFF)($s0)
    /* F6C8 8001EEC8 01000224 */  addiu      $v0, $zero, 0x1
    /* F6CC 8001EECC 980102AE */  sw         $v0, (0x1F800198 & 0xFFFF)($s0)
    /* F6D0 8001EED0 02000224 */  addiu      $v0, $zero, 0x2
    /* F6D4 8001EED4 C20200A2 */  sb         $zero, (0x1F8002C2 & 0xFFFF)($s0)
    /* F6D8 8001EED8 9C0102AE */  sw         $v0, (0x1F80019C & 0xFFFF)($s0)
    /* F6DC 8001EEDC 0200632C */  sltiu      $v1, $v1, 0x2
    /* F6E0 8001EEE0 0B006010 */  beqz       $v1, .L8001EF10
    /* F6E4 8001EEE4 E80100A2 */   sb        $zero, (0x1F8001E8 & 0xFFFF)($s0)
    /* F6E8 8001EEE8 00000291 */  lbu        $v0, 0x0($t0)
    /* F6EC 8001EEEC 00000000 */  nop
    /* F6F0 8001EEF0 01004224 */  addiu      $v0, $v0, 0x1
    /* F6F4 8001EEF4 80180200 */  sll        $v1, $v0, 2
    /* F6F8 8001EEF8 21186200 */  addu       $v1, $v1, $v0
    /* F6FC 8001EEFC 00210300 */  sll        $a0, $v1, 4
    /* F700 8001EF00 23208300 */  subu       $a0, $a0, $v1
    /* F704 8001EF04 00110400 */  sll        $v0, $a0, 4
    /* F708 8001EF08 CD7B0008 */  j          .L8001EF34
    /* F70C 8001EF0C 23104400 */   subu      $v0, $v0, $a0
  .L8001EF10:
    /* F710 8001EF10 00000391 */  lbu        $v1, 0x0($t0)
    /* F714 8001EF14 00000000 */  nop
    /* F718 8001EF18 01006324 */  addiu      $v1, $v1, 0x1
    /* F71C 8001EF1C 40100300 */  sll        $v0, $v1, 1
    /* F720 8001EF20 21104300 */  addu       $v0, $v0, $v1
    /* F724 8001EF24 00110200 */  sll        $v0, $v0, 4
    /* F728 8001EF28 23104300 */  subu       $v0, $v0, $v1
    /* F72C 8001EF2C C0100200 */  sll        $v0, $v0, 3
    /* F730 8001EF30 23104300 */  subu       $v0, $v0, $v1
  .L8001EF34:
    /* F734 8001EF34 C0100200 */  sll        $v0, $v0, 3
    /* F738 8001EF38 C40202AE */  sw         $v0, (0x1F8002C4 & 0xFFFF)($s0)
    /* F73C 8001EF3C 21300000 */  addu       $a2, $zero, $zero
    /* F740 8001EF40 78000224 */  addiu      $v0, $zero, 0x78
    /* F744 8001EF44 C80202AE */  sw         $v0, (0x1F8002C8 & 0xFFFF)($s0)
    /* F748 8001EF48 9203A490 */  lbu        $a0, 0x392($a1)
    /* F74C 8001EF4C 9803A390 */  lbu        $v1, 0x398($a1)
    /* F750 8001EF50 80200400 */  sll        $a0, $a0, 2
    /* F754 8001EF54 40100300 */  sll        $v0, $v1, 1
    /* F758 8001EF58 21104300 */  addu       $v0, $v0, $v1
    /* F75C 8001EF5C 80100200 */  sll        $v0, $v0, 2
    /* F760 8001EF60 23104300 */  subu       $v0, $v0, $v1
    /* F764 8001EF64 C0100200 */  sll        $v0, $v0, 3
    /* F768 8001EF68 21208200 */  addu       $a0, $a0, $v0
    /* F76C 8001EF6C 0F80013C */  lui        $at, %hi(D_800EF78A)
    /* F770 8001EF70 21082400 */  addu       $at, $at, $a0
    /* F774 8001EF74 8AF72290 */  lbu        $v0, %lo(D_800EF78A)($at)
    /* F778 8001EF78 96072525 */  addiu      $a1, $t1, 0x796
    /* F77C 8001EF7C FEFF4724 */  addiu      $a3, $v0, -0x2
  .L8001EF80:
    /* F780 8001EF80 DF020292 */  lbu        $v0, (0x1F8002DF & 0xFFFF)($s0)
    /* F784 8001EF84 00000000 */  nop
    /* F788 8001EF88 FF004330 */  andi       $v1, $v0, 0xFF
    /* F78C 8001EF8C 1E006014 */  bnez       $v1, .L8001F008
    /* F790 8001EF90 00000000 */   nop
    /* F794 8001EF94 E4FFA290 */  lbu        $v0, -0x1C($a1)
    /* F798 8001EF98 EAFFA490 */  lbu        $a0, -0x16($a1)
    /* F79C 8001EF9C 40180200 */  sll        $v1, $v0, 1
    /* F7A0 8001EFA0 21186200 */  addu       $v1, $v1, $v0
    /* F7A4 8001EFA4 80180300 */  sll        $v1, $v1, 2
    /* F7A8 8001EFA8 40110400 */  sll        $v0, $a0, 5
    /* F7AC 8001EFAC 21104400 */  addu       $v0, $v0, $a0
    /* F7B0 8001EFB0 C0100200 */  sll        $v0, $v0, 3
    /* F7B4 8001EFB4 21186200 */  addu       $v1, $v1, $v0
    /* F7B8 8001EFB8 1180013C */  lui        $at, %hi(D_8010C328)
    /* F7BC 8001EFBC 21082300 */  addu       $at, $at, $v1
    /* F7C0 8001EFC0 28C3228C */  lw         $v0, %lo(D_8010C328)($at)
    /* F7C4 8001EFC4 00000000 */  nop
    /* F7C8 8001EFC8 02120200 */  srl        $v0, $v0, 8
    /* F7CC 8001EFCC 0F004230 */  andi       $v0, $v0, 0xF
    /* F7D0 8001EFD0 0C80013C */  lui        $at, %hi(D_800C6AD8)
    /* F7D4 8001EFD4 21082200 */  addu       $at, $at, $v0
    /* F7D8 8001EFD8 D86A2390 */  lbu        $v1, %lo(D_800C6AD8)($at)
    /* F7DC 8001EFDC 00000000 */  nop
    /* F7E0 8001EFE0 21186200 */  addu       $v1, $v1, $v0
    /* F7E4 8001EFE4 21186700 */  addu       $v1, $v1, $a3
    /* F7E8 8001EFE8 40110300 */  sll        $v0, $v1, 5
    /* F7EC 8001EFEC 23104300 */  subu       $v0, $v0, $v1
    /* F7F0 8001EFF0 80100200 */  sll        $v0, $v0, 2
    /* F7F4 8001EFF4 21104300 */  addu       $v0, $v0, $v1
    /* F7F8 8001EFF8 C0100200 */  sll        $v0, $v0, 3
    /* F7FC 8001EFFC 00000391 */  lbu        $v1, 0x0($t0)
    /* F800 8001F000 217C0008 */  j          .L8001F084
    /* F804 8001F004 28234224 */   addiu     $v0, $v0, 0x2328
  .L8001F008:
    /* F808 8001F008 01000224 */  addiu      $v0, $zero, 0x1
    /* F80C 8001F00C 21006214 */  bne        $v1, $v0, .L8001F094
    /* F810 8001F010 00000000 */   nop
    /* F814 8001F014 E4FFA290 */  lbu        $v0, -0x1C($a1)
    /* F818 8001F018 EAFFA490 */  lbu        $a0, -0x16($a1)
    /* F81C 8001F01C 40180200 */  sll        $v1, $v0, 1
    /* F820 8001F020 21186200 */  addu       $v1, $v1, $v0
    /* F824 8001F024 80180300 */  sll        $v1, $v1, 2
    /* F828 8001F028 40110400 */  sll        $v0, $a0, 5
    /* F82C 8001F02C 21104400 */  addu       $v0, $v0, $a0
    /* F830 8001F030 C0100200 */  sll        $v0, $v0, 3
    /* F834 8001F034 21186200 */  addu       $v1, $v1, $v0
    /* F838 8001F038 1180013C */  lui        $at, %hi(D_8010C328)
    /* F83C 8001F03C 21082300 */  addu       $at, $at, $v1
    /* F840 8001F040 28C3228C */  lw         $v0, %lo(D_8010C328)($at)
    /* F844 8001F044 00000000 */  nop
    /* F848 8001F048 02120200 */  srl        $v0, $v0, 8
    /* F84C 8001F04C 0F004230 */  andi       $v0, $v0, 0xF
    /* F850 8001F050 0C80013C */  lui        $at, %hi(D_800C6AD8)
    /* F854 8001F054 21082200 */  addu       $at, $at, $v0
    /* F858 8001F058 D86A2390 */  lbu        $v1, %lo(D_800C6AD8)($at)
    /* F85C 8001F05C 00000000 */  nop
    /* F860 8001F060 21186200 */  addu       $v1, $v1, $v0
    /* F864 8001F064 21186700 */  addu       $v1, $v1, $a3
    /* F868 8001F068 40110300 */  sll        $v0, $v1, 5
    /* F86C 8001F06C 23104300 */  subu       $v0, $v0, $v1
    /* F870 8001F070 80100200 */  sll        $v0, $v0, 2
    /* F874 8001F074 21104300 */  addu       $v0, $v0, $v1
    /* F878 8001F078 C0100200 */  sll        $v0, $v0, 3
    /* F87C 8001F07C 00000391 */  lbu        $v1, 0x0($t0)
    /* F880 8001F080 94114224 */  addiu      $v0, $v0, 0x1194
  .L8001F084:
    /* F884 8001F084 01006324 */  addiu      $v1, $v1, 0x1
    /* F888 8001F088 18004300 */  mult       $v0, $v1
    /* F88C 8001F08C 12500000 */  mflo       $t2
    /* F890 8001F090 0000AAA4 */  sh         $t2, 0x0($a1)
  .L8001F094:
    /* F894 8001F094 0100C624 */  addiu      $a2, $a2, 0x1
    /* F898 8001F098 1600C228 */  slti       $v0, $a2, 0x16
    /* F89C 8001F09C B8FF4014 */  bnez       $v0, .L8001EF80
    /* F8A0 8001F0A0 E803A524 */   addiu     $a1, $a1, 0x3E8
    /* F8A4 8001F0A4 0100013C */  lui        $at, (0x10000 >> 16)
    /* F8A8 8001F0A8 21082101 */  addu       $at, $t1, $at
    /* F8AC 8001F0AC 73AC20A0 */  sb         $zero, -0x538D($at)
    /* F8B0 8001F0B0 973C010C */  jal        func_8004F25C
    /* F8B4 8001F0B4 00000000 */   nop
    /* F8B8 8001F0B8 E1020292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s0)
    /* F8BC 8001F0BC 00000000 */  nop
    /* F8C0 8001F0C0 FCFF4224 */  addiu      $v0, $v0, -0x4
    /* F8C4 8001F0C4 0200422C */  sltiu      $v0, $v0, 0x2
    /* F8C8 8001F0C8 13004014 */  bnez       $v0, .L8001F118
    /* F8CC 8001F0CC EC0100A2 */   sb        $zero, (0x1F8001EC & 0xFFFF)($s0)
    /* F8D0 8001F0D0 CE020292 */  lbu        $v0, (0x1F8002CE & 0xFFFF)($s0)
    /* F8D4 8001F0D4 00000000 */  nop
    /* F8D8 8001F0D8 0F004014 */  bnez       $v0, .L8001F118
    /* F8DC 8001F0DC 03000324 */   addiu     $v1, $zero, 0x3
    /* F8E0 8001F0E0 98020292 */  lbu        $v0, (0x1F800298 & 0xFFFF)($s0)
    /* F8E4 8001F0E4 00000000 */  nop
    /* F8E8 8001F0E8 FF004230 */  andi       $v0, $v0, 0xFF
    /* F8EC 8001F0EC 08004314 */  bne        $v0, $v1, .L8001F110
    /* F8F0 8001F0F0 10050424 */   addiu     $a0, $zero, 0x510
    /* F8F4 8001F0F4 0E80023C */  lui        $v0, %hi(D_800E7DE8)
    /* F8F8 8001F0F8 E87D4290 */  lbu        $v0, %lo(D_800E7DE8)($v0)
    /* F8FC 8001F0FC 00000000 */  nop
    /* F900 8001F100 01004230 */  andi       $v0, $v0, 0x1
    /* F904 8001F104 02004014 */  bnez       $v0, .L8001F110
    /* F908 8001F108 00000000 */   nop
    /* F90C 8001F10C 04020424 */  addiu      $a0, $zero, 0x204
  .L8001F110:
    /* F910 8001F110 88AD020C */  jal        func_800AB620
    /* F914 8001F114 00000000 */   nop
  .L8001F118:
    /* F918 8001F118 835C000C */  jal        func_8001720C
    /* F91C 8001F11C 00000000 */   nop
    /* F920 8001F120 1400BF8F */  lw         $ra, 0x14($sp)
    /* F924 8001F124 1000B08F */  lw         $s0, 0x10($sp)
    /* F928 8001F128 1800BD27 */  addiu      $sp, $sp, 0x18
    /* F92C 8001F12C 0800E003 */  jr         $ra
    /* F930 8001F130 00000000 */   nop
endlabel func_8001EE84
