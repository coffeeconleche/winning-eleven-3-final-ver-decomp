nonmatching func_800B7618, 0x55C

glabel func_800B7618
    /* A7E18 800B7618 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* A7E1C 800B761C 0D80033C */  lui        $v1, %hi(D_800D3C14)
    /* A7E20 800B7620 143C638C */  lw         $v1, %lo(D_800D3C14)($v1)
    /* A7E24 800B7624 01000224 */  addiu      $v0, $zero, 0x1
    /* A7E28 800B7628 2800BFAF */  sw         $ra, 0x28($sp)
    /* A7E2C 800B762C 2400B1AF */  sw         $s1, 0x24($sp)
    /* A7E30 800B7630 2000B0AF */  sw         $s0, 0x20($sp)
    /* A7E34 800B7634 000062A0 */  sb         $v0, 0x0($v1)
    /* A7E38 800B7638 0D80043C */  lui        $a0, %hi(D_800D3C20)
    /* A7E3C 800B763C 203C848C */  lw         $a0, %lo(D_800D3C20)($a0)
    /* A7E40 800B7640 00000000 */  nop
    /* A7E44 800B7644 00008290 */  lbu        $v0, 0x0($a0)
    /* A7E48 800B7648 00000000 */  nop
    /* A7E4C 800B764C 07004230 */  andi       $v0, $v0, 0x7
    /* A7E50 800B7650 1000A2A3 */  sb         $v0, 0x10($sp)
    /* A7E54 800B7654 1000A293 */  lbu        $v0, 0x10($sp)
    /* A7E58 800B7658 00000000 */  nop
    /* A7E5C 800B765C 3F014010 */  beqz       $v0, .L800B7B5C
    /* A7E60 800B7660 21880000 */   addu      $s1, $zero, $zero
    /* A7E64 800B7664 9FDD0208 */  j          .L800B767C
    /* A7E68 800B7668 00000000 */   nop
  .L800B766C:
    /* A7E6C 800B766C 00008290 */  lbu        $v0, 0x0($a0)
    /* A7E70 800B7670 00000000 */  nop
    /* A7E74 800B7674 07004230 */  andi       $v0, $v0, 0x7
    /* A7E78 800B7678 1000A2A3 */  sb         $v0, 0x10($sp)
  .L800B767C:
    /* A7E7C 800B767C 00008290 */  lbu        $v0, 0x0($a0)
    /* A7E80 800B7680 1000A393 */  lbu        $v1, 0x10($sp)
    /* A7E84 800B7684 07004230 */  andi       $v0, $v0, 0x7
    /* A7E88 800B7688 F8FF6214 */  bne        $v1, $v0, .L800B766C
    /* A7E8C 800B768C 21800000 */   addu      $s0, $zero, $zero
    /* A7E90 800B7690 1800A427 */  addiu      $a0, $sp, 0x18
  .L800B7694:
    /* A7E94 800B7694 0D80023C */  lui        $v0, %hi(D_800D3C14)
    /* A7E98 800B7698 143C428C */  lw         $v0, %lo(D_800D3C14)($v0)
    /* A7E9C 800B769C 00000000 */  nop
    /* A7EA0 800B76A0 00004290 */  lbu        $v0, 0x0($v0)
    /* A7EA4 800B76A4 00000000 */  nop
    /* A7EA8 800B76A8 20004230 */  andi       $v0, $v0, 0x20
    /* A7EAC 800B76AC 0A004010 */  beqz       $v0, .L800B76D8
    /* A7EB0 800B76B0 21189000 */   addu      $v1, $a0, $s0
    /* A7EB4 800B76B4 0D80023C */  lui        $v0, %hi(D_800D3C18)
    /* A7EB8 800B76B8 183C428C */  lw         $v0, %lo(D_800D3C18)($v0)
    /* A7EBC 800B76BC 00000000 */  nop
    /* A7EC0 800B76C0 00004290 */  lbu        $v0, 0x0($v0)
    /* A7EC4 800B76C4 01001026 */  addiu      $s0, $s0, 0x1
    /* A7EC8 800B76C8 000062A0 */  sb         $v0, 0x0($v1)
    /* A7ECC 800B76CC 0800022A */  slti       $v0, $s0, 0x8
    /* A7ED0 800B76D0 F0FF4014 */  bnez       $v0, .L800B7694
    /* A7ED4 800B76D4 00000000 */   nop
  .L800B76D8:
    /* A7ED8 800B76D8 0800022A */  slti       $v0, $s0, 0x8
    /* A7EDC 800B76DC 08004010 */  beqz       $v0, .L800B7700
    /* A7EE0 800B76E0 21180002 */   addu      $v1, $s0, $zero
    /* A7EE4 800B76E4 1800A427 */  addiu      $a0, $sp, 0x18
    /* A7EE8 800B76E8 21108300 */  addu       $v0, $a0, $v1
  .L800B76EC:
    /* A7EEC 800B76EC 000040A0 */  sb         $zero, 0x0($v0)
    /* A7EF0 800B76F0 01006324 */  addiu      $v1, $v1, 0x1
    /* A7EF4 800B76F4 08006228 */  slti       $v0, $v1, 0x8
    /* A7EF8 800B76F8 FCFF4014 */  bnez       $v0, .L800B76EC
    /* A7EFC 800B76FC 21108300 */   addu      $v0, $a0, $v1
  .L800B7700:
    /* A7F00 800B7700 0D80033C */  lui        $v1, %hi(D_800D3C14)
    /* A7F04 800B7704 143C638C */  lw         $v1, %lo(D_800D3C14)($v1)
    /* A7F08 800B7708 01000224 */  addiu      $v0, $zero, 0x1
    /* A7F0C 800B770C 000062A0 */  sb         $v0, 0x0($v1)
    /* A7F10 800B7710 0D80023C */  lui        $v0, %hi(D_800D3C20)
    /* A7F14 800B7714 203C428C */  lw         $v0, %lo(D_800D3C20)($v0)
    /* A7F18 800B7718 07000324 */  addiu      $v1, $zero, 0x7
    /* A7F1C 800B771C 000043A0 */  sb         $v1, 0x0($v0)
    /* A7F20 800B7720 0D80023C */  lui        $v0, %hi(D_800D3C1C)
    /* A7F24 800B7724 1C3C428C */  lw         $v0, %lo(D_800D3C1C)($v0)
    /* A7F28 800B7728 00000000 */  nop
    /* A7F2C 800B772C 000043A0 */  sb         $v1, 0x0($v0)
    /* A7F30 800B7730 1000A393 */  lbu        $v1, 0x10($sp)
    /* A7F34 800B7734 03000224 */  addiu      $v0, $zero, 0x3
    /* A7F38 800B7738 0B006214 */  bne        $v1, $v0, .L800B7768
    /* A7F3C 800B773C 00000000 */   nop
    /* A7F40 800B7740 0D80023C */  lui        $v0, %hi(D_800D396D)
    /* A7F44 800B7744 6D394290 */  lbu        $v0, %lo(D_800D396D)($v0)
    /* A7F48 800B7748 00000000 */  nop
    /* A7F4C 800B774C 80100200 */  sll        $v0, $v0, 2
    /* A7F50 800B7750 0D80013C */  lui        $at, %hi(D_800D3B14)
    /* A7F54 800B7754 21082200 */  addu       $at, $at, $v0
    /* A7F58 800B7758 143B228C */  lw         $v0, %lo(D_800D3B14)($at)
    /* A7F5C 800B775C 00000000 */  nop
    /* A7F60 800B7760 1A004010 */  beqz       $v0, .L800B77CC
    /* A7F64 800B7764 00000000 */   nop
  .L800B7768:
    /* A7F68 800B7768 0D80023C */  lui        $v0, %hi(D_800D395C)
    /* A7F6C 800B776C 5C39428C */  lw         $v0, %lo(D_800D395C)($v0)
    /* A7F70 800B7770 00000000 */  nop
    /* A7F74 800B7774 10004230 */  andi       $v0, $v0, 0x10
    /* A7F78 800B7778 0C004014 */  bnez       $v0, .L800B77AC
    /* A7F7C 800B777C 00000000 */   nop
    /* A7F80 800B7780 1800A293 */  lbu        $v0, 0x18($sp)
    /* A7F84 800B7784 00000000 */  nop
    /* A7F88 800B7788 10004230 */  andi       $v0, $v0, 0x10
    /* A7F8C 800B778C 07004010 */  beqz       $v0, .L800B77AC
    /* A7F90 800B7790 00000000 */   nop
    /* A7F94 800B7794 0D80023C */  lui        $v0, %hi(D_800D3964)
    /* A7F98 800B7798 6439428C */  lw         $v0, %lo(D_800D3964)($v0)
    /* A7F9C 800B779C 00000000 */  nop
    /* A7FA0 800B77A0 01004224 */  addiu      $v0, $v0, 0x1
    /* A7FA4 800B77A4 0D80013C */  lui        $at, %hi(D_800D3964)
    /* A7FA8 800B77A8 643922AC */  sw         $v0, %lo(D_800D3964)($at)
  .L800B77AC:
    /* A7FAC 800B77AC 1800A293 */  lbu        $v0, 0x18($sp)
    /* A7FB0 800B77B0 1900A393 */  lbu        $v1, 0x19($sp)
    /* A7FB4 800B77B4 FF004230 */  andi       $v0, $v0, 0xFF
    /* A7FB8 800B77B8 1D005130 */  andi       $s1, $v0, 0x1D
    /* A7FBC 800B77BC 0D80013C */  lui        $at, %hi(D_800D395C)
    /* A7FC0 800B77C0 5C3922AC */  sw         $v0, %lo(D_800D395C)($at)
    /* A7FC4 800B77C4 0D80013C */  lui        $at, %hi(D_800D3960)
    /* A7FC8 800B77C8 603923AC */  sw         $v1, %lo(D_800D3960)($at)
  .L800B77CC:
    /* A7FCC 800B77CC 1000A393 */  lbu        $v1, 0x10($sp)
    /* A7FD0 800B77D0 05000224 */  addiu      $v0, $zero, 0x5
    /* A7FD4 800B77D4 1B006214 */  bne        $v1, $v0, .L800B7844
    /* A7FD8 800B77D8 00000000 */   nop
    /* A7FDC 800B77DC 0D80023C */  lui        $v0, %hi(D_800D3958)
    /* A7FE0 800B77E0 5839428C */  lw         $v0, %lo(D_800D3958)($v0)
    /* A7FE4 800B77E4 00000000 */  nop
    /* A7FE8 800B77E8 16004018 */  blez       $v0, .L800B7844
    /* A7FEC 800B77EC 00000000 */   nop
    /* A7FF0 800B77F0 0180043C */  lui        $a0, %hi(D_800152F4)
    /* A7FF4 800B77F4 A6B5020C */  jal        func_800AD698
    /* A7FF8 800B77F8 F4528424 */   addiu     $a0, $a0, %lo(D_800152F4)
    /* A7FFC 800B77FC 0D80023C */  lui        $v0, %hi(D_800D3958)
    /* A8000 800B7800 5839428C */  lw         $v0, %lo(D_800D3958)($v0)
    /* A8004 800B7804 00000000 */  nop
    /* A8008 800B7808 0E004018 */  blez       $v0, .L800B7844
    /* A800C 800B780C 00000000 */   nop
    /* A8010 800B7810 0D80023C */  lui        $v0, %hi(D_800D396D)
    /* A8014 800B7814 6D394290 */  lbu        $v0, %lo(D_800D396D)($v0)
    /* A8018 800B7818 0D80063C */  lui        $a2, %hi(D_800D395C)
    /* A801C 800B781C 5C39C68C */  lw         $a2, %lo(D_800D395C)($a2)
    /* A8020 800B7820 0D80073C */  lui        $a3, %hi(D_800D3960)
    /* A8024 800B7824 6039E78C */  lw         $a3, %lo(D_800D3960)($a3)
    /* A8028 800B7828 80100200 */  sll        $v0, $v0, 2
    /* A802C 800B782C 0D80053C */  lui        $a1, %hi(D_800D3974)
    /* A8030 800B7830 2128A200 */  addu       $a1, $a1, $v0
    /* A8034 800B7834 7439A58C */  lw         $a1, %lo(D_800D3974)($a1)
    /* A8038 800B7838 0180043C */  lui        $a0, %hi(D_80015300)
    /* A803C 800B783C A6B5020C */  jal        func_800AD698
    /* A8040 800B7840 00538424 */   addiu     $a0, $a0, %lo(D_80015300)
  .L800B7844:
    /* A8044 800B7844 1000A293 */  lbu        $v0, 0x10($sp)
    /* A8048 800B7848 00000000 */  nop
    /* A804C 800B784C FFFF4324 */  addiu      $v1, $v0, -0x1
    /* A8050 800B7850 0500622C */  sltiu      $v0, $v1, 0x5
    /* A8054 800B7854 BA004010 */  beqz       $v0, .L800B7B40
    /* A8058 800B7858 80100300 */   sll       $v0, $v1, 2
    /* A805C 800B785C 0180013C */  lui        $at, %hi(jtbl_8001533C)
    /* A8060 800B7860 21082200 */  addu       $at, $at, $v0
    /* A8064 800B7864 3C53228C */  lw         $v0, %lo(jtbl_8001533C)($at)
    /* A8068 800B7868 00000000 */  nop
    /* A806C 800B786C 08004000 */  jr         $v0
    /* A8070 800B7870 00000000 */   nop
  jlabel .L800B7874
    /* A8074 800B7874 12002012 */  beqz       $s1, .L800B78C0
    /* A8078 800B7878 05000224 */   addiu     $v0, $zero, 0x5
    /* A807C 800B787C 0D80033C */  lui        $v1, %hi(D_800D3C2C)
    /* A8080 800B7880 2C3C6324 */  addiu      $v1, $v1, %lo(D_800D3C2C)
    /* A8084 800B7884 000062A0 */  sb         $v0, 0x0($v1)
    /* A8088 800B7888 0E80033C */  lui        $v1, %hi(D_800E71C8)
    /* A808C 800B788C C8716324 */  addiu      $v1, $v1, %lo(D_800E71C8)
    /* A8090 800B7890 49006010 */  beqz       $v1, .L800B79B8
    /* A8094 800B7894 1800A527 */   addiu     $a1, $sp, 0x18
    /* A8098 800B7898 07000424 */  addiu      $a0, $zero, 0x7
    /* A809C 800B789C FFFF0624 */  addiu      $a2, $zero, -0x1
  .L800B78A0:
    /* A80A0 800B78A0 0000A290 */  lbu        $v0, 0x0($a1)
    /* A80A4 800B78A4 0100A524 */  addiu      $a1, $a1, 0x1
    /* A80A8 800B78A8 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* A80AC 800B78AC 000062A0 */  sb         $v0, 0x0($v1)
    /* A80B0 800B78B0 FBFF8614 */  bne        $a0, $a2, .L800B78A0
    /* A80B4 800B78B4 01006324 */   addiu     $v1, $v1, 0x1
    /* A80B8 800B78B8 D8DE0208 */  j          .L800B7B60
    /* A80BC 800B78BC 02000224 */   addiu     $v0, $zero, 0x2
  .L800B78C0:
    /* A80C0 800B78C0 0D80023C */  lui        $v0, %hi(D_800D396D)
    /* A80C4 800B78C4 6D394290 */  lbu        $v0, %lo(D_800D396D)($v0)
    /* A80C8 800B78C8 00000000 */  nop
    /* A80CC 800B78CC 80100200 */  sll        $v0, $v0, 2
    /* A80D0 800B78D0 0D80013C */  lui        $at, %hi(D_800D3A14)
    /* A80D4 800B78D4 21082200 */  addu       $at, $at, $v0
    /* A80D8 800B78D8 143A228C */  lw         $v0, %lo(D_800D3A14)($at)
    /* A80DC 800B78DC 00000000 */  nop
    /* A80E0 800B78E0 12004010 */  beqz       $v0, .L800B792C
    /* A80E4 800B78E4 03000224 */   addiu     $v0, $zero, 0x3
    /* A80E8 800B78E8 0D80033C */  lui        $v1, %hi(D_800D3C2C)
    /* A80EC 800B78EC 2C3C6324 */  addiu      $v1, $v1, %lo(D_800D3C2C)
    /* A80F0 800B78F0 000062A0 */  sb         $v0, 0x0($v1)
    /* A80F4 800B78F4 0E80033C */  lui        $v1, %hi(D_800E71C8)
    /* A80F8 800B78F8 C8716324 */  addiu      $v1, $v1, %lo(D_800E71C8)
    /* A80FC 800B78FC 09006010 */  beqz       $v1, .L800B7924
    /* A8100 800B7900 1800A527 */   addiu     $a1, $sp, 0x18
    /* A8104 800B7904 07000424 */  addiu      $a0, $zero, 0x7
    /* A8108 800B7908 FFFF0624 */  addiu      $a2, $zero, -0x1
  .L800B790C:
    /* A810C 800B790C 0000A290 */  lbu        $v0, 0x0($a1)
    /* A8110 800B7910 0100A524 */  addiu      $a1, $a1, 0x1
    /* A8114 800B7914 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* A8118 800B7918 000062A0 */  sb         $v0, 0x0($v1)
    /* A811C 800B791C FBFF8614 */  bne        $a0, $a2, .L800B790C
    /* A8120 800B7920 01006324 */   addiu     $v1, $v1, 0x1
  .L800B7924:
    /* A8124 800B7924 D8DE0208 */  j          .L800B7B60
    /* A8128 800B7928 01000224 */   addiu     $v0, $zero, 0x1
  .L800B792C:
    /* A812C 800B792C 0D80033C */  lui        $v1, %hi(D_800D3C2C)
    /* A8130 800B7930 2C3C6324 */  addiu      $v1, $v1, %lo(D_800D3C2C)
    /* A8134 800B7934 02000224 */  addiu      $v0, $zero, 0x2
    /* A8138 800B7938 000062A0 */  sb         $v0, 0x0($v1)
    /* A813C 800B793C 0E80033C */  lui        $v1, %hi(D_800E71C8)
    /* A8140 800B7940 C8716324 */  addiu      $v1, $v1, %lo(D_800E71C8)
    /* A8144 800B7944 1C006010 */  beqz       $v1, .L800B79B8
    /* A8148 800B7948 1800A527 */   addiu     $a1, $sp, 0x18
    /* A814C 800B794C 07000424 */  addiu      $a0, $zero, 0x7
    /* A8150 800B7950 FFFF0624 */  addiu      $a2, $zero, -0x1
  .L800B7954:
    /* A8154 800B7954 0000A290 */  lbu        $v0, 0x0($a1)
    /* A8158 800B7958 0100A524 */  addiu      $a1, $a1, 0x1
    /* A815C 800B795C FFFF8424 */  addiu      $a0, $a0, -0x1
    /* A8160 800B7960 000062A0 */  sb         $v0, 0x0($v1)
    /* A8164 800B7964 FBFF8614 */  bne        $a0, $a2, .L800B7954
    /* A8168 800B7968 01006324 */   addiu     $v1, $v1, 0x1
    /* A816C 800B796C D8DE0208 */  j          .L800B7B60
    /* A8170 800B7970 02000224 */   addiu     $v0, $zero, 0x2
  jlabel .L800B7974
    /* A8174 800B7974 02002012 */  beqz       $s1, .L800B7980
    /* A8178 800B7978 02000224 */   addiu     $v0, $zero, 0x2
    /* A817C 800B797C 05000224 */  addiu      $v0, $zero, 0x5
  .L800B7980:
    /* A8180 800B7980 0D80013C */  lui        $at, %hi(D_800D3C2C)
    /* A8184 800B7984 2C3C22A0 */  sb         $v0, %lo(D_800D3C2C)($at)
    /* A8188 800B7988 0E80033C */  lui        $v1, %hi(D_800E71C8)
    /* A818C 800B798C C8716324 */  addiu      $v1, $v1, %lo(D_800E71C8)
    /* A8190 800B7990 09006010 */  beqz       $v1, .L800B79B8
    /* A8194 800B7994 1800A527 */   addiu     $a1, $sp, 0x18
    /* A8198 800B7998 07000424 */  addiu      $a0, $zero, 0x7
    /* A819C 800B799C FFFF0624 */  addiu      $a2, $zero, -0x1
  .L800B79A0:
    /* A81A0 800B79A0 0000A290 */  lbu        $v0, 0x0($a1)
    /* A81A4 800B79A4 0100A524 */  addiu      $a1, $a1, 0x1
    /* A81A8 800B79A8 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* A81AC 800B79AC 000062A0 */  sb         $v0, 0x0($v1)
    /* A81B0 800B79B0 FBFF8614 */  bne        $a0, $a2, .L800B79A0
    /* A81B4 800B79B4 01006324 */   addiu     $v1, $v1, 0x1
  .L800B79B8:
    /* A81B8 800B79B8 D8DE0208 */  j          .L800B7B60
    /* A81BC 800B79BC 02000224 */   addiu     $v0, $zero, 0x2
  jlabel .L800B79C0
    /* A81C0 800B79C0 04002012 */  beqz       $s1, .L800B79D4
    /* A81C4 800B79C4 01000224 */   addiu     $v0, $zero, 0x1
    /* A81C8 800B79C8 02000216 */  bne        $s0, $v0, .L800B79D4
    /* A81CC 800B79CC 00000000 */   nop
    /* A81D0 800B79D0 21880000 */  addu       $s1, $zero, $zero
  .L800B79D4:
    /* A81D4 800B79D4 02002012 */  beqz       $s1, .L800B79E0
    /* A81D8 800B79D8 01000324 */   addiu     $v1, $zero, 0x1
    /* A81DC 800B79DC 05000324 */  addiu      $v1, $zero, 0x5
  .L800B79E0:
    /* A81E0 800B79E0 0D80023C */  lui        $v0, %hi(D_800D3C2C)
    /* A81E4 800B79E4 2C3C4224 */  addiu      $v0, $v0, %lo(D_800D3C2C)
    /* A81E8 800B79E8 010043A0 */  sb         $v1, 0x1($v0)
    /* A81EC 800B79EC 0E80033C */  lui        $v1, %hi(D_800E71D0)
    /* A81F0 800B79F0 D0716324 */  addiu      $v1, $v1, %lo(D_800E71D0)
    /* A81F4 800B79F4 09006010 */  beqz       $v1, .L800B7A1C
    /* A81F8 800B79F8 1800A527 */   addiu     $a1, $sp, 0x18
    /* A81FC 800B79FC 07000424 */  addiu      $a0, $zero, 0x7
    /* A8200 800B7A00 FFFF0624 */  addiu      $a2, $zero, -0x1
  .L800B7A04:
    /* A8204 800B7A04 0000A290 */  lbu        $v0, 0x0($a1)
    /* A8208 800B7A08 0100A524 */  addiu      $a1, $a1, 0x1
    /* A820C 800B7A0C FFFF8424 */  addiu      $a0, $a0, -0x1
    /* A8210 800B7A10 000062A0 */  sb         $v0, 0x0($v1)
    /* A8214 800B7A14 FBFF8614 */  bne        $a0, $a2, .L800B7A04
    /* A8218 800B7A18 01006324 */   addiu     $v1, $v1, 0x1
  .L800B7A1C:
    /* A821C 800B7A1C 0D80023C */  lui        $v0, %hi(D_800D3C14)
    /* A8220 800B7A20 143C428C */  lw         $v0, %lo(D_800D3C14)($v0)
    /* A8224 800B7A24 00000000 */  nop
    /* A8228 800B7A28 000040A0 */  sb         $zero, 0x0($v0)
    /* A822C 800B7A2C 0D80033C */  lui        $v1, %hi(D_800D3C20)
    /* A8230 800B7A30 203C638C */  lw         $v1, %lo(D_800D3C20)($v1)
    /* A8234 800B7A34 04000224 */  addiu      $v0, $zero, 0x4
    /* A8238 800B7A38 D8DE0208 */  j          .L800B7B60
    /* A823C 800B7A3C 000060A0 */   sb        $zero, 0x0($v1)
  jlabel .L800B7A40
    /* A8240 800B7A40 0E80043C */  lui        $a0, %hi(D_800E71D8)
    /* A8244 800B7A44 D8718424 */  addiu      $a0, $a0, %lo(D_800E71D8)
    /* A8248 800B7A48 0D80023C */  lui        $v0, %hi(D_800D3C2C)
    /* A824C 800B7A4C 2C3C4224 */  addiu      $v0, $v0, %lo(D_800D3C2C)
    /* A8250 800B7A50 04000324 */  addiu      $v1, $zero, 0x4
    /* A8254 800B7A54 020043A0 */  sb         $v1, 0x2($v0)
    /* A8258 800B7A58 02004390 */  lbu        $v1, 0x2($v0)
    /* A825C 800B7A5C 1800A527 */  addiu      $a1, $sp, 0x18
    /* A8260 800B7A60 010043A0 */  sb         $v1, 0x1($v0)
    /* A8264 800B7A64 08008010 */  beqz       $a0, .L800B7A88
    /* A8268 800B7A68 07000324 */   addiu     $v1, $zero, 0x7
    /* A826C 800B7A6C FFFF0624 */  addiu      $a2, $zero, -0x1
  .L800B7A70:
    /* A8270 800B7A70 0000A290 */  lbu        $v0, 0x0($a1)
    /* A8274 800B7A74 0100A524 */  addiu      $a1, $a1, 0x1
    /* A8278 800B7A78 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* A827C 800B7A7C 000082A0 */  sb         $v0, 0x0($a0)
    /* A8280 800B7A80 FBFF6614 */  bne        $v1, $a2, .L800B7A70
    /* A8284 800B7A84 01008424 */   addiu     $a0, $a0, 0x1
  .L800B7A88:
    /* A8288 800B7A88 0E80033C */  lui        $v1, %hi(D_800E71D0)
    /* A828C 800B7A8C D0716324 */  addiu      $v1, $v1, %lo(D_800E71D0)
    /* A8290 800B7A90 09006010 */  beqz       $v1, .L800B7AB8
    /* A8294 800B7A94 1800A527 */   addiu     $a1, $sp, 0x18
    /* A8298 800B7A98 07000424 */  addiu      $a0, $zero, 0x7
    /* A829C 800B7A9C FFFF0624 */  addiu      $a2, $zero, -0x1
  .L800B7AA0:
    /* A82A0 800B7AA0 0000A290 */  lbu        $v0, 0x0($a1)
    /* A82A4 800B7AA4 0100A524 */  addiu      $a1, $a1, 0x1
    /* A82A8 800B7AA8 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* A82AC 800B7AAC 000062A0 */  sb         $v0, 0x0($v1)
    /* A82B0 800B7AB0 FBFF8614 */  bne        $a0, $a2, .L800B7AA0
    /* A82B4 800B7AB4 01006324 */   addiu     $v1, $v1, 0x1
  .L800B7AB8:
    /* A82B8 800B7AB8 D8DE0208 */  j          .L800B7B60
    /* A82BC 800B7ABC 04000224 */   addiu     $v0, $zero, 0x4
  jlabel .L800B7AC0
    /* A82C0 800B7AC0 0E80043C */  lui        $a0, %hi(D_800E71C8)
    /* A82C4 800B7AC4 C8718424 */  addiu      $a0, $a0, %lo(D_800E71C8)
    /* A82C8 800B7AC8 0D80023C */  lui        $v0, %hi(D_800D3C2C)
    /* A82CC 800B7ACC 2C3C4224 */  addiu      $v0, $v0, %lo(D_800D3C2C)
    /* A82D0 800B7AD0 05000324 */  addiu      $v1, $zero, 0x5
    /* A82D4 800B7AD4 010043A0 */  sb         $v1, 0x1($v0)
    /* A82D8 800B7AD8 01004390 */  lbu        $v1, 0x1($v0)
    /* A82DC 800B7ADC 1800A527 */  addiu      $a1, $sp, 0x18
    /* A82E0 800B7AE0 000043A0 */  sb         $v1, 0x0($v0)
    /* A82E4 800B7AE4 08008010 */  beqz       $a0, .L800B7B08
    /* A82E8 800B7AE8 07000324 */   addiu     $v1, $zero, 0x7
    /* A82EC 800B7AEC FFFF0624 */  addiu      $a2, $zero, -0x1
  .L800B7AF0:
    /* A82F0 800B7AF0 0000A290 */  lbu        $v0, 0x0($a1)
    /* A82F4 800B7AF4 0100A524 */  addiu      $a1, $a1, 0x1
    /* A82F8 800B7AF8 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* A82FC 800B7AFC 000082A0 */  sb         $v0, 0x0($a0)
    /* A8300 800B7B00 FBFF6614 */  bne        $v1, $a2, .L800B7AF0
    /* A8304 800B7B04 01008424 */   addiu     $a0, $a0, 0x1
  .L800B7B08:
    /* A8308 800B7B08 0E80033C */  lui        $v1, %hi(D_800E71D0)
    /* A830C 800B7B0C D0716324 */  addiu      $v1, $v1, %lo(D_800E71D0)
    /* A8310 800B7B10 09006010 */  beqz       $v1, .L800B7B38
    /* A8314 800B7B14 1800A527 */   addiu     $a1, $sp, 0x18
    /* A8318 800B7B18 07000424 */  addiu      $a0, $zero, 0x7
    /* A831C 800B7B1C FFFF0624 */  addiu      $a2, $zero, -0x1
  .L800B7B20:
    /* A8320 800B7B20 0000A290 */  lbu        $v0, 0x0($a1)
    /* A8324 800B7B24 0100A524 */  addiu      $a1, $a1, 0x1
    /* A8328 800B7B28 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* A832C 800B7B2C 000062A0 */  sb         $v0, 0x0($v1)
    /* A8330 800B7B30 FBFF8614 */  bne        $a0, $a2, .L800B7B20
    /* A8334 800B7B34 01006324 */   addiu     $v1, $v1, 0x1
  .L800B7B38:
    /* A8338 800B7B38 D8DE0208 */  j          .L800B7B60
    /* A833C 800B7B3C 06000224 */   addiu     $v0, $zero, 0x6
  .L800B7B40:
    /* A8340 800B7B40 0180043C */  lui        $a0, %hi(D_8001531C)
    /* A8344 800B7B44 60E3020C */  jal        func_800B8D80
    /* A8348 800B7B48 1C538424 */   addiu     $a0, $a0, %lo(D_8001531C)
    /* A834C 800B7B4C 1000A593 */  lbu        $a1, 0x10($sp)
    /* A8350 800B7B50 0180043C */  lui        $a0, %hi(D_80015330)
    /* A8354 800B7B54 A6B5020C */  jal        func_800AD698
    /* A8358 800B7B58 30538424 */   addiu     $a0, $a0, %lo(D_80015330)
  .L800B7B5C:
    /* A835C 800B7B5C 21100000 */  addu       $v0, $zero, $zero
  .L800B7B60:
    /* A8360 800B7B60 2800BF8F */  lw         $ra, 0x28($sp)
    /* A8364 800B7B64 2400B18F */  lw         $s1, 0x24($sp)
    /* A8368 800B7B68 2000B08F */  lw         $s0, 0x20($sp)
    /* A836C 800B7B6C 0800E003 */  jr         $ra
    /* A8370 800B7B70 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_800B7618
