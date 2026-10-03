nonmatching func_80198688, 0x798

glabel func_80198688
    /* F710 80198688 58F7BD27 */  addiu      $sp, $sp, -0x8A8
    /* F714 8019868C A408BFAF */  sw         $ra, 0x8A4($sp)
    /* F718 80198690 A008BEAF */  sw         $fp, 0x8A0($sp)
    /* F71C 80198694 9C08B7AF */  sw         $s7, 0x89C($sp)
    /* F720 80198698 9808B6AF */  sw         $s6, 0x898($sp)
    /* F724 8019869C 9408B5AF */  sw         $s5, 0x894($sp)
    /* F728 801986A0 9008B4AF */  sw         $s4, 0x890($sp)
    /* F72C 801986A4 8C08B3AF */  sw         $s3, 0x88C($sp)
    /* F730 801986A8 8808B2AF */  sw         $s2, 0x888($sp)
    /* F734 801986AC 8408B1AF */  sw         $s1, 0x884($sp)
    /* F738 801986B0 00C4040C */  jal        func_80131000
    /* F73C 801986B4 8008B0AF */   sw        $s0, 0x880($sp)
    /* F740 801986B8 21900000 */  addu       $s2, $zero, $zero
    /* F744 801986BC 21880000 */  addu       $s1, $zero, $zero
    /* F748 801986C0 21A00000 */  addu       $s4, $zero, $zero
    /* F74C 801986C4 3808A0AF */  sw         $zero, 0x838($sp)
  .L801986C8:
    /* F750 801986C8 1180053C */  lui        $a1, %hi(D_8010C328)
    /* F754 801986CC 28C3A524 */  addiu      $a1, $a1, %lo(D_8010C328)
    /* F758 801986D0 21288502 */  addu       $a1, $s4, $a1
    /* F75C 801986D4 3808AF8F */  lw         $t7, 0x838($sp)
    /* F760 801986D8 801F0E3C */  lui        $t6, (0x1F8002DD >> 16)
    /* F764 801986DC 2180CF01 */  addu       $s0, $t6, $t7
    /* F768 801986E0 DD020292 */  lbu        $v0, (0x1F8002DD & 0xFFFF)($s0)
    /* F76C 801986E4 08010624 */  addiu      $a2, $zero, 0x108
    /* F770 801986E8 40210200 */  sll        $a0, $v0, 5
    /* F774 801986EC 21208200 */  addu       $a0, $a0, $v0
    /* F778 801986F0 C0200400 */  sll        $a0, $a0, 3
    /* F77C 801986F4 1380023C */  lui        $v0, %hi(D_80134A90)
    /* F780 801986F8 904A4224 */  addiu      $v0, $v0, %lo(D_80134A90)
    /* F784 801986FC 92B5020C */  jal        func_800AD648
    /* F788 80198700 21208200 */   addu      $a0, $a0, $v0
    /* F78C 80198704 0E80053C */  lui        $a1, %hi(D_800E78A8)
    /* F790 80198708 A878A524 */  addiu      $a1, $a1, %lo(D_800E78A8)
    /* F794 8019870C 21282502 */  addu       $a1, $s1, $a1
    /* F798 80198710 DD020292 */  lbu        $v0, (0x1F8002DD & 0xFFFF)($s0)
    /* F79C 80198714 16000624 */  addiu      $a2, $zero, 0x16
    /* F7A0 80198718 40200200 */  sll        $a0, $v0, 1
    /* F7A4 8019871C 21208200 */  addu       $a0, $a0, $v0
    /* F7A8 80198720 80200400 */  sll        $a0, $a0, 2
    /* F7AC 80198724 23208200 */  subu       $a0, $a0, $v0
    /* F7B0 80198728 40200400 */  sll        $a0, $a0, 1
    /* F7B4 8019872C 1380023C */  lui        $v0, %hi(D_80134328)
    /* F7B8 80198730 28434224 */  addiu      $v0, $v0, %lo(D_80134328)
    /* F7BC 80198734 92B5020C */  jal        func_800AD648
    /* F7C0 80198738 21208200 */   addu      $a0, $a0, $v0
    /* F7C4 8019873C 0F80053C */  lui        $a1, %hi(D_800F0420)
    /* F7C8 80198740 2004A524 */  addiu      $a1, $a1, %lo(D_800F0420)
    /* F7CC 80198744 21282502 */  addu       $a1, $s1, $a1
    /* F7D0 80198748 DD020292 */  lbu        $v0, (0x1F8002DD & 0xFFFF)($s0)
    /* F7D4 8019874C 16000624 */  addiu      $a2, $zero, 0x16
    /* F7D8 80198750 40200200 */  sll        $a0, $v0, 1
    /* F7DC 80198754 21208200 */  addu       $a0, $a0, $v0
    /* F7E0 80198758 80200400 */  sll        $a0, $a0, 2
    /* F7E4 8019875C 23208200 */  subu       $a0, $a0, $v0
    /* F7E8 80198760 40200400 */  sll        $a0, $a0, 1
    /* F7EC 80198764 1380023C */  lui        $v0, %hi(D_801346DC)
    /* F7F0 80198768 DC464224 */  addiu      $v0, $v0, %lo(D_801346DC)
    /* F7F4 8019876C 92B5020C */  jal        func_800AD648
    /* F7F8 80198770 21208200 */   addu      $a0, $a0, $v0
    /* F7FC 80198774 DD020392 */  lbu        $v1, (0x1F8002DD & 0xFFFF)($s0)
    /* F800 80198778 23000224 */  addiu      $v0, $zero, 0x23
    /* F804 8019877C 04006214 */  bne        $v1, $v0, .L80198790
    /* F808 80198780 00000000 */   nop
    /* F80C 80198784 3808AE8F */  lw         $t6, 0x838($sp)
    /* F810 80198788 00000000 */  nop
    /* F814 8019878C 0100D225 */  addiu      $s2, $t6, 0x1
  .L80198790:
    /* F818 80198790 16003126 */  addiu      $s1, $s1, 0x16
    /* F81C 80198794 3808AF8F */  lw         $t7, 0x838($sp)
    /* F820 80198798 08019426 */  addiu      $s4, $s4, 0x108
    /* F824 8019879C 0100EF25 */  addiu      $t7, $t7, 0x1
    /* F828 801987A0 0200E229 */  slti       $v0, $t7, 0x2
    /* F82C 801987A4 C8FF4014 */  bnez       $v0, .L801986C8
    /* F830 801987A8 3808AFAF */   sw        $t7, 0x838($sp)
    /* F834 801987AC FF00043C */  lui        $a0, (0xFFFF00 >> 16)
    /* F838 801987B0 00FF8434 */  ori        $a0, $a0, (0xFFFF00 & 0xFFFF)
    /* F83C 801987B4 2300033C */  lui        $v1, (0x232300 >> 16)
    /* F840 801987B8 00236334 */  ori        $v1, $v1, (0x232300 & 0xFFFF)
    /* F844 801987BC 801F023C */  lui        $v0, (0x1F8002DC >> 16)
    /* F848 801987C0 DC02428C */  lw         $v0, (0x1F8002DC & 0xFFFF)($v0)
    /* F84C 801987C4 00000000 */  nop
    /* F850 801987C8 24104400 */  and        $v0, $v0, $a0
    /* F854 801987CC 87014310 */  beq        $v0, $v1, .L80198DEC
    /* F858 801987D0 02000524 */   addiu     $a1, $zero, 0x2
    /* F85C 801987D4 01000224 */  addiu      $v0, $zero, 0x1
    /* F860 801987D8 1B004212 */  beq        $s2, $v0, .L80198848
    /* F864 801987DC 0200422A */   slti      $v0, $s2, 0x2
    /* F868 801987E0 05004010 */  beqz       $v0, .L801987F8
    /* F86C 801987E4 00000000 */   nop
    /* F870 801987E8 09004012 */  beqz       $s2, .L80198810
    /* F874 801987EC 3008A427 */   addiu     $a0, $sp, 0x830
    /* F878 801987F0 31620608 */  j          .L801988C4
    /* F87C 801987F4 00000000 */   nop
  .L801987F8:
    /* F880 801987F8 23004512 */  beq        $s2, $a1, .L80198888
    /* F884 801987FC 03000224 */   addiu     $v0, $zero, 0x3
    /* F888 80198800 7A014212 */  beq        $s2, $v0, .L80198DEC
    /* F88C 80198804 00000000 */   nop
    /* F890 80198808 31620608 */  j          .L801988C4
    /* F894 8019880C 00000000 */   nop
  .L80198810:
    /* F898 80198810 21280000 */  addu       $a1, $zero, $zero
    /* F89C 80198814 21300000 */  addu       $a2, $zero, $zero
    /* F8A0 80198818 21380000 */  addu       $a3, $zero, $zero
    /* F8A4 8019881C C0010224 */  addiu      $v0, $zero, 0x1C0
    /* F8A8 80198820 3008A2A7 */  sh         $v0, 0x830($sp)
    /* F8AC 80198824 40000224 */  addiu      $v0, $zero, 0x40
    /* F8B0 80198828 3408A2A7 */  sh         $v0, 0x834($sp)
    /* F8B4 8019882C B0000224 */  addiu      $v0, $zero, 0xB0
    /* F8B8 80198830 3208A0A7 */  sh         $zero, 0x832($sp)
    /* F8BC 80198834 AEB9020C */  jal        func_800AE6B8
    /* F8C0 80198838 3608A2A7 */   sh        $v0, 0x836($sp)
    /* F8C4 8019883C 21F00000 */  addu       $fp, $zero, $zero
    /* F8C8 80198840 30620608 */  j          .L801988C0
    /* F8CC 80198844 02000E24 */   addiu     $t6, $zero, 0x2
  .L80198848:
    /* F8D0 80198848 3008A427 */  addiu      $a0, $sp, 0x830
    /* F8D4 8019884C 21280000 */  addu       $a1, $zero, $zero
    /* F8D8 80198850 21300000 */  addu       $a2, $zero, $zero
    /* F8DC 80198854 21380000 */  addu       $a3, $zero, $zero
    /* F8E0 80198858 E0010224 */  addiu      $v0, $zero, 0x1E0
    /* F8E4 8019885C 3008A2A7 */  sh         $v0, 0x830($sp)
    /* F8E8 80198860 20000224 */  addiu      $v0, $zero, 0x20
    /* F8EC 80198864 3408A2A7 */  sh         $v0, 0x834($sp)
    /* F8F0 80198868 B0000224 */  addiu      $v0, $zero, 0xB0
    /* F8F4 8019886C 3208A0A7 */  sh         $zero, 0x832($sp)
    /* F8F8 80198870 AEB9020C */  jal        func_800AE6B8
    /* F8FC 80198874 3608A2A7 */   sh        $v0, 0x836($sp)
    /* F900 80198878 01001E24 */  addiu      $fp, $zero, 0x1
    /* F904 8019887C 02000F24 */  addiu      $t7, $zero, 0x2
    /* F908 80198880 31620608 */  j          .L801988C4
    /* F90C 80198884 4008AFAF */   sw        $t7, 0x840($sp)
  .L80198888:
    /* F910 80198888 3008A427 */  addiu      $a0, $sp, 0x830
    /* F914 8019888C 21280000 */  addu       $a1, $zero, $zero
    /* F918 80198890 21300000 */  addu       $a2, $zero, $zero
    /* F91C 80198894 21380000 */  addu       $a3, $zero, $zero
    /* F920 80198898 C0010224 */  addiu      $v0, $zero, 0x1C0
    /* F924 8019889C 3008A2A7 */  sh         $v0, 0x830($sp)
    /* F928 801988A0 20000224 */  addiu      $v0, $zero, 0x20
    /* F92C 801988A4 3408A2A7 */  sh         $v0, 0x834($sp)
    /* F930 801988A8 B0000224 */  addiu      $v0, $zero, 0xB0
    /* F934 801988AC 3208A0A7 */  sh         $zero, 0x832($sp)
    /* F938 801988B0 AEB9020C */  jal        func_800AE6B8
    /* F93C 801988B4 3608A2A7 */   sh        $v0, 0x836($sp)
    /* F940 801988B8 21F00000 */  addu       $fp, $zero, $zero
    /* F944 801988BC 01000E24 */  addiu      $t6, $zero, 0x1
  .L801988C0:
    /* F948 801988C0 4008AEAF */  sw         $t6, 0x840($sp)
  .L801988C4:
    /* F94C 801988C4 4008AE8F */  lw         $t6, 0x840($sp)
    /* F950 801988C8 2178C003 */  addu       $t7, $fp, $zero
    /* F954 801988CC 2A10EE01 */  slt        $v0, $t7, $t6
    /* F958 801988D0 46014010 */  beqz       $v0, .L80198DEC
    /* F95C 801988D4 3808BEAF */   sw        $fp, 0x838($sp)
    /* F960 801988D8 1000AF27 */  addiu      $t7, $sp, 0x10
    /* F964 801988DC 5008AFAF */  sw         $t7, 0x850($sp)
  .L801988E0:
    /* F968 801988E0 21680000 */  addu       $t5, $zero, $zero
    /* F96C 801988E4 21380000 */  addu       $a3, $zero, $zero
  .L801988E8:
    /* F970 801988E8 3808AF8F */  lw         $t7, 0x838($sp)
    /* F974 801988EC 801F0E3C */  lui        $t6, (0x1F8002DD >> 16)
    /* F978 801988F0 2110CF01 */  addu       $v0, $t6, $t7
    /* F97C 801988F4 DD024390 */  lbu        $v1, (0x1F8002DD & 0xFFFF)($v0)
    /* F980 801988F8 0D80043C */  lui        $a0, %hi(D_800C8568)
    /* F984 801988FC 68858424 */  addiu      $a0, $a0, %lo(D_800C8568)
    /* F988 80198900 40100300 */  sll        $v0, $v1, 1
    /* F98C 80198904 21104300 */  addu       $v0, $v0, $v1
    /* F990 80198908 80100200 */  sll        $v0, $v0, 2
    /* F994 8019890C 23104300 */  subu       $v0, $v0, $v1
    /* F998 80198910 00110200 */  sll        $v0, $v0, 4
    /* F99C 80198914 C0180D00 */  sll        $v1, $t5, 3
    /* F9A0 80198918 21186400 */  addu       $v1, $v1, $a0
    /* F9A4 8019891C 21904300 */  addu       $s2, $v0, $v1
    /* F9A8 80198920 00004492 */  lbu        $a0, 0x0($s2)
    /* F9AC 80198924 21A00000 */  addu       $s4, $zero, $zero
    /* F9B0 80198928 1D008010 */  beqz       $a0, .L801989A0
    /* F9B4 8019892C 4808B2AF */   sw        $s2, 0x848($sp)
    /* F9B8 80198930 2110E000 */  addu       $v0, $a3, $zero
  .L80198934:
    /* F9BC 80198934 08004228 */  slti       $v0, $v0, 0x8
    /* F9C0 80198938 19004010 */  beqz       $v0, .L801989A0
    /* F9C4 8019893C 0100E724 */   addiu     $a3, $a3, 0x1
    /* F9C8 80198940 FF008330 */  andi       $v1, $a0, 0xFF
    /* F9CC 80198944 8000622C */  sltiu      $v0, $v1, 0x80
    /* F9D0 80198948 0B004014 */  bnez       $v0, .L80198978
    /* F9D4 8019894C E0FF6224 */   addiu     $v0, $v1, -0x20
    /* F9D8 80198950 7A008224 */  addiu      $v0, $a0, 0x7A
    /* F9DC 80198954 FF004230 */  andi       $v0, $v0, 0xFF
    /* F9E0 80198958 1A00422C */  sltiu      $v0, $v0, 0x1A
    /* F9E4 8019895C 03004010 */  beqz       $v0, .L8019896C
    /* F9E8 80198960 00000000 */   nop
    /* F9EC 80198964 5C620608 */  j          .L80198970
    /* F9F0 80198968 0A009426 */   addiu     $s4, $s4, 0xA
  .L8019896C:
    /* F9F4 8019896C 08009426 */  addiu      $s4, $s4, 0x8
  .L80198970:
    /* F9F8 80198970 64620608 */  j          .L80198990
    /* F9FC 80198974 01005226 */   addiu     $s2, $s2, 0x1
  .L80198978:
    /* FA00 80198978 40100200 */  sll        $v0, $v0, 1
    /* FA04 8019897C 1D80013C */  lui        $at, %hi(D_801D1BF9)
    /* FA08 80198980 21082200 */  addu       $at, $at, $v0
    /* FA0C 80198984 F91B2290 */  lbu        $v0, %lo(D_801D1BF9)($at)
    /* FA10 80198988 01005226 */  addiu      $s2, $s2, 0x1
    /* FA14 8019898C 21A08202 */  addu       $s4, $s4, $v0
  .L80198990:
    /* FA18 80198990 00004492 */  lbu        $a0, 0x0($s2)
    /* FA1C 80198994 00000000 */  nop
    /* FA20 80198998 E6FF8014 */  bnez       $a0, .L80198934
    /* FA24 8019899C 2110E000 */   addu      $v0, $a3, $zero
  .L801989A0:
    /* FA28 801989A0 21800000 */  addu       $s0, $zero, $zero
    /* FA2C 801989A4 1008A427 */  addiu      $a0, $sp, 0x810
  .L801989A8:
    /* FA30 801989A8 20000524 */  addiu      $a1, $zero, 0x20
    /* FA34 801989AC 7008A7AF */  sw         $a3, 0x870($sp)
    /* FA38 801989B0 96B5020C */  jal        func_800AD658
    /* FA3C 801989B4 7808ADAF */   sw        $t5, 0x878($sp)
    /* FA40 801989B8 21F00000 */  addu       $fp, $zero, $zero
    /* FA44 801989BC 4808B28F */  lw         $s2, 0x848($sp)
    /* FA48 801989C0 7008A78F */  lw         $a3, 0x870($sp)
    /* FA4C 801989C4 7808AD8F */  lw         $t5, 0x878($sp)
    /* FA50 801989C8 9800E018 */  blez       $a3, .L80198C2C
    /* FA54 801989CC 21880000 */   addu      $s1, $zero, $zero
    /* FA58 801989D0 80411000 */  sll        $t0, $s0, 6
  .L801989D4:
    /* FA5C 801989D4 00004492 */  lbu        $a0, 0x0($s2)
    /* FA60 801989D8 20000224 */  addiu      $v0, $zero, 0x20
    /* FA64 801989DC FF008330 */  andi       $v1, $a0, 0xFF
    /* FA68 801989E0 06006214 */  bne        $v1, $v0, .L801989FC
    /* FA6C 801989E4 8000622C */   sltiu     $v0, $v1, 0x80
    /* FA70 801989E8 F8011724 */  addiu      $s7, $zero, 0x1F8
    /* FA74 801989EC 1D80163C */  lui        $s6, %hi(D_801D1BF9)
    /* FA78 801989F0 F91BD692 */  lbu        $s6, %lo(D_801D1BF9)($s6)
    /* FA7C 801989F4 DB620608 */  j          .L80198B6C
    /* FA80 801989F8 10011524 */   addiu     $s5, $zero, 0x110
  .L801989FC:
    /* FA84 801989FC 45004014 */  bnez       $v0, .L80198B14
    /* FA88 80198A00 E0FF6224 */   addiu     $v0, $v1, -0x20
    /* FA8C 80198A04 7A008224 */  addiu      $v0, $a0, 0x7A
    /* FA90 80198A08 FF004230 */  andi       $v0, $v0, 0xFF
    /* FA94 80198A0C 0C00422C */  sltiu      $v0, $v0, 0xC
    /* FA98 80198A10 0B004010 */  beqz       $v0, .L80198A40
    /* FA9C 80198A14 21980000 */   addu      $s3, $zero, $zero
    /* FAA0 80198A18 7AFF6224 */  addiu      $v0, $v1, -0x86
    /* FAA4 80198A1C 80180200 */  sll        $v1, $v0, 2
    /* FAA8 80198A20 21186200 */  addu       $v1, $v1, $v0
    /* FAAC 80198A24 40180300 */  sll        $v1, $v1, 1
    /* FAB0 80198A28 80007324 */  addiu      $s3, $v1, 0x80
    /* FAB4 80198A2C 83101300 */  sra        $v0, $s3, 2
    /* FAB8 80198A30 C0015724 */  addiu      $s7, $v0, 0x1C0
    /* FABC 80198A34 60011526 */  addiu      $s5, $s0, 0x160
    /* FAC0 80198A38 DB620608 */  j          .L80198B6C
    /* FAC4 80198A3C 0A001624 */   addiu     $s6, $zero, 0xA
  .L80198A40:
    /* FAC8 80198A40 6E008224 */  addiu      $v0, $a0, 0x6E
    /* FACC 80198A44 FF004230 */  andi       $v0, $v0, 0xFF
    /* FAD0 80198A48 0D00422C */  sltiu      $v0, $v0, 0xD
    /* FAD4 80198A4C 09004010 */  beqz       $v0, .L80198A74
    /* FAD8 80198A50 6EFF6224 */   addiu     $v0, $v1, -0x92
    /* FADC 80198A54 80180200 */  sll        $v1, $v0, 2
    /* FAE0 80198A58 21186200 */  addu       $v1, $v1, $v0
    /* FAE4 80198A5C 40980300 */  sll        $s3, $v1, 1
    /* FAE8 80198A60 83101300 */  sra        $v0, $s3, 2
    /* FAEC 80198A64 C0015724 */  addiu      $s7, $v0, 0x1C0
    /* FAF0 80198A68 70011526 */  addiu      $s5, $s0, 0x170
    /* FAF4 80198A6C DB620608 */  j          .L80198B6C
    /* FAF8 80198A70 0A001624 */   addiu     $s6, $zero, 0xA
  .L80198A74:
    /* FAFC 80198A74 5A008224 */  addiu      $v0, $a0, 0x5A
    /* FB00 80198A78 FF004230 */  andi       $v0, $v0, 0xFF
    /* FB04 80198A7C 0A00422C */  sltiu      $v0, $v0, 0xA
    /* FB08 80198A80 05004010 */  beqz       $v0, .L80198A98
    /* FB0C 80198A84 40100300 */   sll       $v0, $v1, 1
    /* FB10 80198A88 96005724 */  addiu      $s7, $v0, 0x96
    /* FB14 80198A8C 70011526 */  addiu      $s5, $s0, 0x170
    /* FB18 80198A90 DB620608 */  j          .L80198B6C
    /* FB1C 80198A94 08001624 */   addiu     $s6, $zero, 0x8
  .L80198A98:
    /* FB20 80198A98 4F008224 */  addiu      $v0, $a0, 0x4F
    /* FB24 80198A9C FF004230 */  andi       $v0, $v0, 0xFF
    /* FB28 80198AA0 1F00422C */  sltiu      $v0, $v0, 0x1F
    /* FB2C 80198AA4 05004010 */  beqz       $v0, .L80198ABC
    /* FB30 80198AA8 40100300 */   sll       $v0, $v1, 1
    /* FB34 80198AAC 5E005724 */  addiu      $s7, $v0, 0x5E
    /* FB38 80198AB0 50011526 */  addiu      $s5, $s0, 0x150
    /* FB3C 80198AB4 DB620608 */  j          .L80198B6C
    /* FB40 80198AB8 08001624 */   addiu     $s6, $zero, 0x8
  .L80198ABC:
    /* FB44 80198ABC 30008224 */  addiu      $v0, $a0, 0x30
    /* FB48 80198AC0 FF004230 */  andi       $v0, $v0, 0xFF
    /* FB4C 80198AC4 0E00422C */  sltiu      $v0, $v0, 0xE
    /* FB50 80198AC8 05004010 */  beqz       $v0, .L80198AE0
    /* FB54 80198ACC 40100300 */   sll       $v0, $v1, 1
    /* FB58 80198AD0 20005724 */  addiu      $s7, $v0, 0x20
    /* FB5C 80198AD4 60011526 */  addiu      $s5, $s0, 0x160
    /* FB60 80198AD8 DB620608 */  j          .L80198B6C
    /* FB64 80198ADC 08001624 */   addiu     $s6, $zero, 0x8
  .L80198AE0:
    /* FB68 80198AE0 B0000224 */  addiu      $v0, $zero, 0xB0
    /* FB6C 80198AE4 05006214 */  bne        $v1, $v0, .L80198AFC
    /* FB70 80198AE8 9F000224 */   addiu     $v0, $zero, 0x9F
    /* FB74 80198AEC D8011724 */  addiu      $s7, $zero, 0x1D8
    /* FB78 80198AF0 10011526 */  addiu      $s5, $s0, 0x110
    /* FB7C 80198AF4 DB620608 */  j          .L80198B6C
    /* FB80 80198AF8 06001624 */   addiu     $s6, $zero, 0x6
  .L80198AFC:
    /* FB84 80198AFC 1B006214 */  bne        $v1, $v0, .L80198B6C
    /* FB88 80198B00 00000000 */   nop
    /* FB8C 80198B04 F6011724 */  addiu      $s7, $zero, 0x1F6
    /* FB90 80198B08 40011526 */  addiu      $s5, $s0, 0x140
    /* FB94 80198B0C DB620608 */  j          .L80198B6C
    /* FB98 80198B10 0A001624 */   addiu     $s6, $zero, 0xA
  .L80198B14:
    /* FB9C 80198B14 40100200 */  sll        $v0, $v0, 1
    /* FBA0 80198B18 1D80013C */  lui        $at, %hi(D_801D1BF8)
    /* FBA4 80198B1C 21082200 */  addu       $at, $at, $v0
    /* FBA8 80198B20 F81B3390 */  lbu        $s3, %lo(D_801D1BF8)($at)
    /* FBAC 80198B24 00000000 */  nop
    /* FBB0 80198B28 83101300 */  sra        $v0, $s3, 2
    /* FBB4 80198B2C C0015724 */  addiu      $s7, $v0, 0x1C0
    /* FBB8 80198B30 6100622C */  sltiu      $v0, $v1, 0x61
    /* FBBC 80198B34 03004014 */  bnez       $v0, .L80198B44
    /* FBC0 80198B38 4100622C */   sltiu     $v0, $v1, 0x41
    /* FBC4 80198B3C D4620608 */  j          .L80198B50
    /* FBC8 80198B40 30011526 */   addiu     $s5, $s0, 0x130
  .L80198B44:
    /* FBCC 80198B44 02004014 */  bnez       $v0, .L80198B50
    /* FBD0 80198B48 10011526 */   addiu     $s5, $s0, 0x110
    /* FBD4 80198B4C 20011526 */  addiu      $s5, $s0, 0x120
  .L80198B50:
    /* FBD8 80198B50 00004292 */  lbu        $v0, 0x0($s2)
    /* FBDC 80198B54 00000000 */  nop
    /* FBE0 80198B58 E0FF4224 */  addiu      $v0, $v0, -0x20
    /* FBE4 80198B5C 40100200 */  sll        $v0, $v0, 1
    /* FBE8 80198B60 1D80013C */  lui        $at, %hi(D_801D1BF9)
    /* FBEC 80198B64 21082200 */  addu       $at, $at, $v0
    /* FBF0 80198B68 F91B3690 */  lbu        $s6, %lo(D_801D1BF9)($at)
  .L80198B6C:
    /* FBF4 80198B6C 3008A427 */  addiu      $a0, $sp, 0x830
    /* FBF8 80198B70 1008A527 */  addiu      $a1, $sp, 0x810
    /* FBFC 80198B74 10000224 */  addiu      $v0, $zero, 0x10
    /* FC00 80198B78 3408A2A7 */  sh         $v0, 0x834($sp)
    /* FC04 80198B7C 01000224 */  addiu      $v0, $zero, 0x1
    /* FC08 80198B80 3008B7A7 */  sh         $s7, 0x830($sp)
    /* FC0C 80198B84 3208B5A7 */  sh         $s5, 0x832($sp)
    /* FC10 80198B88 3608A2A7 */  sh         $v0, 0x836($sp)
    /* FC14 80198B8C 7008A7AF */  sw         $a3, 0x870($sp)
    /* FC18 80198B90 7408A8AF */  sw         $t0, 0x874($sp)
    /* FC1C 80198B94 10BA020C */  jal        func_800AE840
    /* FC20 80198B98 7808ADAF */   sw        $t5, 0x878($sp)
    /* FC24 80198B9C 4DB9020C */  jal        func_800AE534
    /* FC28 80198BA0 21200000 */   addu      $a0, $zero, $zero
    /* FC2C 80198BA4 03007332 */  andi       $s3, $s3, 0x3
    /* FC30 80198BA8 7008A78F */  lw         $a3, 0x870($sp)
    /* FC34 80198BAC 7408A88F */  lw         $t0, 0x874($sp)
    /* FC38 80198BB0 7808AD8F */  lw         $t5, 0x878($sp)
    /* FC3C 80198BB4 1900C01A */  blez       $s6, .L80198C1C
    /* FC40 80198BB8 21300000 */   addu      $a2, $zero, $zero
    /* FC44 80198BBC 5008A58F */  lw         $a1, 0x850($sp)
    /* FC48 80198BC0 00000000 */  nop
    /* FC4C 80198BC4 21100501 */  addu       $v0, $t0, $a1
    /* FC50 80198BC8 2120C203 */  addu       $a0, $fp, $v0
    /* FC54 80198BCC 0100DE27 */  addiu      $fp, $fp, 0x1
  .L80198BD0:
    /* FC58 80198BD0 03000E24 */  addiu      $t6, $zero, 0x3
    /* FC5C 80198BD4 2318D301 */  subu       $v1, $t6, $s3
    /* FC60 80198BD8 01006226 */  addiu      $v0, $s3, 0x1
    /* FC64 80198BDC 03005330 */  andi       $s3, $v0, 0x3
    /* FC68 80198BE0 80180300 */  sll        $v1, $v1, 2
    /* FC6C 80198BE4 0C000F24 */  addiu      $t7, $zero, 0xC
    /* FC70 80198BE8 0008A294 */  lhu        $v0, 0x800($a1)
    /* FC74 80198BEC 2318E301 */  subu       $v1, $t7, $v1
    /* FC78 80198BF0 07106200 */  srav       $v0, $v0, $v1
    /* FC7C 80198BF4 0F004230 */  andi       $v0, $v0, 0xF
    /* FC80 80198BF8 000082A0 */  sb         $v0, 0x0($a0)
    /* FC84 80198BFC 02006016 */  bnez       $s3, .L80198C08
    /* FC88 80198C00 01008424 */   addiu     $a0, $a0, 0x1
    /* FC8C 80198C04 0200A524 */  addiu      $a1, $a1, 0x2
  .L80198C08:
    /* FC90 80198C08 0100C624 */  addiu      $a2, $a2, 0x1
    /* FC94 80198C0C 2A10D600 */  slt        $v0, $a2, $s6
    /* FC98 80198C10 EFFF4014 */  bnez       $v0, .L80198BD0
    /* FC9C 80198C14 0100DE27 */   addiu     $fp, $fp, 0x1
    /* FCA0 80198C18 FFFFDE27 */  addiu      $fp, $fp, -0x1
  .L80198C1C:
    /* FCA4 80198C1C 01003126 */  addiu      $s1, $s1, 0x1
    /* FCA8 80198C20 2A102702 */  slt        $v0, $s1, $a3
    /* FCAC 80198C24 6BFF4014 */  bnez       $v0, .L801989D4
    /* FCB0 80198C28 01005226 */   addiu     $s2, $s2, 0x1
  .L80198C2C:
    /* FCB4 80198C2C 01001026 */  addiu      $s0, $s0, 0x1
    /* FCB8 80198C30 1000022A */  slti       $v0, $s0, 0x10
    /* FCBC 80198C34 5CFF4014 */  bnez       $v0, .L801989A8
    /* FCC0 80198C38 1008A427 */   addiu     $a0, $sp, 0x810
    /* FCC4 80198C3C 1004A427 */  addiu      $a0, $sp, 0x410
    /* FCC8 80198C40 00040524 */  addiu      $a1, $zero, 0x400
    /* FCCC 80198C44 96B5020C */  jal        func_800AD658
    /* FCD0 80198C48 7808ADAF */   sw        $t5, 0x878($sp)
    /* FCD4 80198C4C 40000224 */  addiu      $v0, $zero, 0x40
    /* FCD8 80198C50 23105400 */  subu       $v0, $v0, $s4
    /* FCDC 80198C54 C21F0200 */  srl        $v1, $v0, 31
    /* FCE0 80198C58 21104300 */  addu       $v0, $v0, $v1
    /* FCE4 80198C5C 43980200 */  sra        $s3, $v0, 1
    /* FCE8 80198C60 21800000 */  addu       $s0, $zero, $zero
    /* FCEC 80198C64 5008A58F */  lw         $a1, 0x850($sp)
    /* FCF0 80198C68 7808AD8F */  lw         $t5, 0x878($sp)
  .L80198C6C:
    /* FCF4 80198C6C 0B00801A */  blez       $s4, .L80198C9C
    /* FCF8 80198C70 21880000 */   addu      $s1, $zero, $zero
    /* FCFC 80198C74 0004A624 */  addiu      $a2, $a1, 0x400
    /* FD00 80198C78 2120A000 */  addu       $a0, $a1, $zero
  .L80198C7C:
    /* FD04 80198C7C 00008390 */  lbu        $v1, 0x0($a0)
    /* FD08 80198C80 21103302 */  addu       $v0, $s1, $s3
    /* FD0C 80198C84 01003126 */  addiu      $s1, $s1, 0x1
    /* FD10 80198C88 2110C200 */  addu       $v0, $a2, $v0
    /* FD14 80198C8C 000043A0 */  sb         $v1, 0x0($v0)
    /* FD18 80198C90 2A103402 */  slt        $v0, $s1, $s4
    /* FD1C 80198C94 F9FF4014 */  bnez       $v0, .L80198C7C
    /* FD20 80198C98 01008424 */   addiu     $a0, $a0, 0x1
  .L80198C9C:
    /* FD24 80198C9C 01001026 */  addiu      $s0, $s0, 0x1
    /* FD28 80198CA0 1000022A */  slti       $v0, $s0, 0x10
    /* FD2C 80198CA4 F1FF4014 */  bnez       $v0, .L80198C6C
    /* FD30 80198CA8 4000A524 */   addiu     $a1, $a1, 0x40
    /* FD34 80198CAC 21800000 */  addu       $s0, $zero, $zero
  .L80198CB0:
    /* FD38 80198CB0 21880000 */  addu       $s1, $zero, $zero
    /* FD3C 80198CB4 0F000C24 */  addiu      $t4, $zero, 0xF
    /* FD40 80198CB8 80591000 */  sll        $t3, $s0, 6
    /* FD44 80198CBC 5008A88F */  lw         $t0, 0x850($sp)
  .L80198CC0:
    /* FD48 80198CC0 21300000 */  addu       $a2, $zero, $zero
    /* FD4C 80198CC4 21380001 */  addu       $a3, $t0, $zero
    /* FD50 80198CC8 5008AE8F */  lw         $t6, 0x850($sp)
    /* FD54 80198CCC 80481100 */  sll        $t1, $s1, 2
    /* FD58 80198CD0 21106E01 */  addu       $v0, $t3, $t6
    /* FD5C 80198CD4 00044A24 */  addiu      $t2, $v0, 0x400
    /* FD60 80198CD8 03000F24 */  addiu      $t7, $zero, 0x3
  .L80198CDC:
    /* FD64 80198CDC 2328E601 */  subu       $a1, $t7, $a2
    /* FD68 80198CE0 21182601 */  addu       $v1, $t1, $a2
    /* FD6C 80198CE4 0100C624 */  addiu      $a2, $a2, 0x1
    /* FD70 80198CE8 80280500 */  sll        $a1, $a1, 2
    /* FD74 80198CEC 0C000E24 */  addiu      $t6, $zero, 0xC
    /* FD78 80198CF0 2328C501 */  subu       $a1, $t6, $a1
    /* FD7C 80198CF4 0420AC00 */  sllv       $a0, $t4, $a1
    /* FD80 80198CF8 27200400 */  nor        $a0, $zero, $a0
    /* FD84 80198CFC 21184301 */  addu       $v1, $t2, $v1
    /* FD88 80198D00 0008E294 */  lhu        $v0, 0x800($a3)
    /* FD8C 80198D04 00006390 */  lbu        $v1, 0x0($v1)
    /* FD90 80198D08 24104400 */  and        $v0, $v0, $a0
    /* FD94 80198D0C 0418A300 */  sllv       $v1, $v1, $a1
    /* FD98 80198D10 25104300 */  or         $v0, $v0, $v1
    /* FD9C 80198D14 0008E2A4 */  sh         $v0, 0x800($a3)
    /* FDA0 80198D18 0400C228 */  slti       $v0, $a2, 0x4
    /* FDA4 80198D1C EFFF4014 */  bnez       $v0, .L80198CDC
    /* FDA8 80198D20 00000000 */   nop
    /* FDAC 80198D24 01003126 */  addiu      $s1, $s1, 0x1
    /* FDB0 80198D28 1000222A */  slti       $v0, $s1, 0x10
    /* FDB4 80198D2C E4FF4014 */  bnez       $v0, .L80198CC0
    /* FDB8 80198D30 02000825 */   addiu     $t0, $t0, 0x2
    /* FDBC 80198D34 8B2E023C */  lui        $v0, (0x2E8BA2E9 >> 16)
    /* FDC0 80198D38 E9A24234 */  ori        $v0, $v0, (0x2E8BA2E9 & 0xFFFF)
    /* FDC4 80198D3C 1800A201 */  mult       $t5, $v0
    /* FDC8 80198D40 3008A427 */  addiu      $a0, $sp, 0x830
    /* FDCC 80198D44 1008A527 */  addiu      $a1, $sp, 0x810
    /* FDD0 80198D48 3808AF8F */  lw         $t7, 0x838($sp)
    /* FDD4 80198D4C 10000224 */  addiu      $v0, $zero, 0x10
    /* FDD8 80198D50 3408A2A7 */  sh         $v0, 0x834($sp)
    /* FDDC 80198D54 01000224 */  addiu      $v0, $zero, 0x1
    /* FDE0 80198D58 3608A2A7 */  sh         $v0, 0x836($sp)
    /* FDE4 80198D5C C3170D00 */  sra        $v0, $t5, 31
    /* FDE8 80198D60 7808ADAF */  sw         $t5, 0x878($sp)
    /* FDEC 80198D64 40310F00 */  sll        $a2, $t7, 5
    /* FDF0 80198D68 10700000 */  mfhi       $t6
    /* FDF4 80198D6C 43180E00 */  sra        $v1, $t6, 1
    /* FDF8 80198D70 23186200 */  subu       $v1, $v1, $v0
    /* FDFC 80198D74 00110300 */  sll        $v0, $v1, 4
    /* FE00 80198D78 C0014224 */  addiu      $v0, $v0, 0x1C0
    /* FE04 80198D7C 2130C200 */  addu       $a2, $a2, $v0
    /* FE08 80198D80 40100300 */  sll        $v0, $v1, 1
    /* FE0C 80198D84 21104300 */  addu       $v0, $v0, $v1
    /* FE10 80198D88 80100200 */  sll        $v0, $v0, 2
    /* FE14 80198D8C 23104300 */  subu       $v0, $v0, $v1
    /* FE18 80198D90 2310A201 */  subu       $v0, $t5, $v0
    /* FE1C 80198D94 00110200 */  sll        $v0, $v0, 4
    /* FE20 80198D98 21105000 */  addu       $v0, $v0, $s0
    /* FE24 80198D9C 3008A6A7 */  sh         $a2, 0x830($sp)
    /* FE28 80198DA0 F8B9020C */  jal        func_800AE7E0
    /* FE2C 80198DA4 3208A2A7 */   sh        $v0, 0x832($sp)
    /* FE30 80198DA8 4DB9020C */  jal        func_800AE534
    /* FE34 80198DAC 21200000 */   addu      $a0, $zero, $zero
    /* FE38 80198DB0 01001026 */  addiu      $s0, $s0, 0x1
    /* FE3C 80198DB4 1000022A */  slti       $v0, $s0, 0x10
    /* FE40 80198DB8 7808AD8F */  lw         $t5, 0x878($sp)
    /* FE44 80198DBC BCFF4014 */  bnez       $v0, .L80198CB0
    /* FE48 80198DC0 00000000 */   nop
    /* FE4C 80198DC4 0100AD25 */  addiu      $t5, $t5, 0x1
    /* FE50 80198DC8 1600A229 */  slti       $v0, $t5, 0x16
    /* FE54 80198DCC C6FE4014 */  bnez       $v0, .L801988E8
    /* FE58 80198DD0 21380000 */   addu      $a3, $zero, $zero
    /* FE5C 80198DD4 3808AF8F */  lw         $t7, 0x838($sp)
    /* FE60 80198DD8 4008AE8F */  lw         $t6, 0x840($sp)
    /* FE64 80198DDC 0100EF25 */  addiu      $t7, $t7, 0x1
    /* FE68 80198DE0 2A10EE01 */  slt        $v0, $t7, $t6
    /* FE6C 80198DE4 BEFE4014 */  bnez       $v0, .L801988E0
    /* FE70 80198DE8 3808AFAF */   sw        $t7, 0x838($sp)
  .L80198DEC:
    /* FE74 80198DEC A408BF8F */  lw         $ra, 0x8A4($sp)
    /* FE78 80198DF0 A008BE8F */  lw         $fp, 0x8A0($sp)
    /* FE7C 80198DF4 9C08B78F */  lw         $s7, 0x89C($sp)
    /* FE80 80198DF8 9808B68F */  lw         $s6, 0x898($sp)
    /* FE84 80198DFC 9408B58F */  lw         $s5, 0x894($sp)
    /* FE88 80198E00 9008B48F */  lw         $s4, 0x890($sp)
    /* FE8C 80198E04 8C08B38F */  lw         $s3, 0x88C($sp)
    /* FE90 80198E08 8808B28F */  lw         $s2, 0x888($sp)
    /* FE94 80198E0C 8408B18F */  lw         $s1, 0x884($sp)
    /* FE98 80198E10 8008B08F */  lw         $s0, 0x880($sp)
    /* FE9C 80198E14 A808BD27 */  addiu      $sp, $sp, 0x8A8
    /* FEA0 80198E18 0800E003 */  jr         $ra
    /* FEA4 80198E1C 00000000 */   nop
endlabel func_80198688
