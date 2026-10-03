nonmatching func_8004ED68, 0x4F4

glabel func_8004ED68
    /* 3F568 8004ED68 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3F56C 8004ED6C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3F570 8004ED70 21808000 */  addu       $s0, $a0, $zero
    /* 3F574 8004ED74 06000424 */  addiu      $a0, $zero, 0x6
    /* 3F578 8004ED78 2400BFAF */  sw         $ra, 0x24($sp)
    /* 3F57C 8004ED7C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3F580 8004ED80 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3F584 8004ED84 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3F588 8004ED88 0174000C */  jal        func_8001D004
    /* 3F58C 8004ED8C 1400B1AF */   sw        $s1, 0x14($sp)
    /* 3F590 8004ED90 21384000 */  addu       $a3, $v0, $zero
    /* 3F594 8004ED94 1080133C */  lui        $s3, %hi(D_800FF748)
    /* 3F598 8004ED98 48F77326 */  addiu      $s3, $s3, %lo(D_800FF748)
    /* 3F59C 8004ED9C FF001032 */  andi       $s0, $s0, 0xFF
    /* 3F5A0 8004EDA0 77000016 */  bnez       $s0, .L8004EF80
    /* 3F5A4 8004EDA4 801F143C */   lui       $s4, (0x1F8002FD >> 16)
    /* 3F5A8 8004EDA8 801F033C */  lui        $v1, (0x1F8002E2 >> 16)
    /* 3F5AC 8004EDAC E2026390 */  lbu        $v1, (0x1F8002E2 & 0xFFFF)($v1)
    /* 3F5B0 8004EDB0 02000224 */  addiu      $v0, $zero, 0x2
    /* 3F5B4 8004EDB4 07006214 */  bne        $v1, $v0, .L8004EDD4
    /* 3F5B8 8004EDB8 00000000 */   nop
    /* 3F5BC 8004EDBC 801F033C */  lui        $v1, (0x1F800240 >> 16)
    /* 3F5C0 8004EDC0 40026390 */  lbu        $v1, (0x1F800240 & 0xFFFF)($v1)
    /* 3F5C4 8004EDC4 7A3B0108 */  j          .L8004EDE8
    /* 3F5C8 8004EDC8 00000000 */   nop
  .L8004EDCC:
    /* 3F5CC 8004EDCC AA3B0108 */  j          .L8004EEA8
    /* 3F5D0 8004EDD0 2190C000 */   addu      $s2, $a2, $zero
  .L8004EDD4:
    /* 3F5D4 8004EDD4 801F023C */  lui        $v0, (0x1F8002E0 >> 16)
    /* 3F5D8 8004EDD8 E0024290 */  lbu        $v0, (0x1F8002E0 & 0xFFFF)($v0)
    /* 3F5DC 8004EDDC 801F013C */  lui        $at, (0x1F800240 >> 16)
    /* 3F5E0 8004EDE0 21084100 */  addu       $at, $v0, $at
    /* 3F5E4 8004EDE4 40022390 */  lbu        $v1, (0x1F800240 & 0xFFFF)($at)
  .L8004EDE8:
    /* 3F5E8 8004EDE8 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 3F5EC 8004EDEC ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 3F5F0 8004EDF0 19006200 */  multu      $v1, $v0
    /* 3F5F4 8004EDF4 10480000 */  mfhi       $t1
    /* 3F5F8 8004EDF8 02210900 */  srl        $a0, $t1, 4
    /* 3F5FC 8004EDFC 40100400 */  sll        $v0, $a0, 1
    /* 3F600 8004EE00 21104400 */  addu       $v0, $v0, $a0
    /* 3F604 8004EE04 C0100200 */  sll        $v0, $v0, 3
    /* 3F608 8004EE08 23186200 */  subu       $v1, $v1, $v0
    /* 3F60C 8004EE0C FF006330 */  andi       $v1, $v1, 0xFF
    /* 3F610 8004EE10 40110300 */  sll        $v0, $v1, 5
    /* 3F614 8004EE14 23104300 */  subu       $v0, $v0, $v1
    /* 3F618 8004EE18 80100200 */  sll        $v0, $v0, 2
    /* 3F61C 8004EE1C 21104300 */  addu       $v0, $v0, $v1
    /* 3F620 8004EE20 C0100200 */  sll        $v0, $v0, 3
    /* 3F624 8004EE24 21205300 */  addu       $a0, $v0, $s3
    /* 3F628 8004EE28 21300000 */  addu       $a2, $zero, $zero
    /* 3F62C 8004EE2C 98039190 */  lbu        $s1, 0x398($a0)
    /* 3F630 8004EE30 99038390 */  lbu        $v1, 0x399($a0)
    /* 3F634 8004EE34 92038590 */  lbu        $a1, 0x392($a0)
    /* 3F638 8004EE38 40100300 */  sll        $v0, $v1, 1
    /* 3F63C 8004EE3C 21104300 */  addu       $v0, $v0, $v1
    /* 3F640 8004EE40 80100200 */  sll        $v0, $v0, 2
    /* 3F644 8004EE44 23104300 */  subu       $v0, $v0, $v1
    /* 3F648 8004EE48 8D038390 */  lbu        $v1, 0x38D($a0)
    /* 3F64C 8004EE4C 01004224 */  addiu      $v0, $v0, 0x1
    /* 3F650 8004EE50 23906200 */  subu       $s2, $v1, $v0
    /* 3F654 8004EE54 FF002332 */  andi       $v1, $s1, 0xFF
    /* 3F658 8004EE58 40100300 */  sll        $v0, $v1, 1
    /* 3F65C 8004EE5C 21104300 */  addu       $v0, $v0, $v1
    /* 3F660 8004EE60 80100200 */  sll        $v0, $v0, 2
    /* 3F664 8004EE64 23104300 */  subu       $v0, $v0, $v1
    /* 3F668 8004EE68 40100200 */  sll        $v0, $v0, 1
    /* 3F66C 8004EE6C 21105300 */  addu       $v0, $v0, $s3
    /* 3F670 8004EE70 9C8E0334 */  ori        $v1, $zero, 0x8E9C
    /* 3F674 8004EE74 21204300 */  addu       $a0, $v0, $v1
    /* 3F678 8004EE78 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 3F67C 8004EE7C FF00C230 */  andi       $v0, $a2, 0xFF
  .L8004EE80:
    /* 3F680 8004EE80 21108200 */  addu       $v0, $a0, $v0
    /* 3F684 8004EE84 00004290 */  lbu        $v0, 0x0($v0)
    /* 3F688 8004EE88 00000000 */  nop
    /* 3F68C 8004EE8C CFFF4310 */  beq        $v0, $v1, .L8004EDCC
    /* 3F690 8004EE90 00000000 */   nop
    /* 3F694 8004EE94 0100C624 */  addiu      $a2, $a2, 0x1
    /* 3F698 8004EE98 FF00C230 */  andi       $v0, $a2, 0xFF
    /* 3F69C 8004EE9C 0B00422C */  sltiu      $v0, $v0, 0xB
    /* 3F6A0 8004EEA0 F7FF4014 */  bnez       $v0, .L8004EE80
    /* 3F6A4 8004EEA4 FF00C230 */   andi      $v0, $a2, 0xFF
  .L8004EEA8:
    /* 3F6A8 8004EEA8 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 3F6AC 8004EEAC 2EBA023C */  lui        $v0, (0xBA2E8BA3 >> 16)
    /* 3F6B0 8004EEB0 A38B4234 */  ori        $v0, $v0, (0xBA2E8BA3 & 0xFFFF)
    /* 3F6B4 8004EEB4 1900A200 */  multu      $a1, $v0
    /* 3F6B8 8004EEB8 27000424 */  addiu      $a0, $zero, 0x27
    /* 3F6BC 8004EEBC FF003032 */  andi       $s0, $s1, 0xFF
    /* 3F6C0 8004EEC0 C0191000 */  sll        $v1, $s0, 7
    /* 3F6C4 8004EEC4 10480000 */  mfhi       $t1
    /* 3F6C8 8004EEC8 C2300900 */  srl        $a2, $t1, 3
    /* 3F6CC 8004EECC FF00C230 */  andi       $v0, $a2, 0xFF
    /* 3F6D0 8004EED0 80110200 */  sll        $v0, $v0, 6
    /* 3F6D4 8004EED4 21104300 */  addu       $v0, $v0, $v1
    /* 3F6D8 8004EED8 0300E2A0 */  sb         $v0, 0x3($a3)
    /* 3F6DC 8004EEDC 40100600 */  sll        $v0, $a2, 1
    /* 3F6E0 8004EEE0 21104600 */  addu       $v0, $v0, $a2
    /* 3F6E4 8004EEE4 80100200 */  sll        $v0, $v0, 2
    /* 3F6E8 8004EEE8 23104600 */  subu       $v0, $v0, $a2
    /* 3F6EC 8004EEEC 2328A200 */  subu       $a1, $a1, $v0
    /* 3F6F0 8004EEF0 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 3F6F4 8004EEF4 00290500 */  sll        $a1, $a1, 4
    /* 3F6F8 8004EEF8 0174000C */  jal        func_8001D004
    /* 3F6FC 8004EEFC 0400E5A0 */   sb        $a1, 0x4($a3)
    /* 3F700 8004EF00 21809002 */  addu       $s0, $s4, $s0
    /* 3F704 8004EF04 FD020492 */  lbu        $a0, (0x1F8002FD & 0xFFFF)($s0)
    /* 3F708 8004EF08 0D80053C */  lui        $a1, %hi(D_800CA30C)
    /* 3F70C 8004EF0C 0CA3A524 */  addiu      $a1, $a1, %lo(D_800CA30C)
    /* 3F710 8004EF10 40180400 */  sll        $v1, $a0, 1
    /* 3F714 8004EF14 21186400 */  addu       $v1, $v1, $a0
    /* 3F718 8004EF18 80180300 */  sll        $v1, $v1, 2
    /* 3F71C 8004EF1C 23186400 */  subu       $v1, $v1, $a0
    /* 3F720 8004EF20 21186500 */  addu       $v1, $v1, $a1
    /* 3F724 8004EF24 FF004432 */  andi       $a0, $s2, 0xFF
    /* 3F728 8004EF28 21186400 */  addu       $v1, $v1, $a0
    /* 3F72C 8004EF2C 00006390 */  lbu        $v1, 0x0($v1)
    /* 3F730 8004EF30 21384000 */  addu       $a3, $v0, $zero
    /* 3F734 8004EF34 01006330 */  andi       $v1, $v1, 0x1
    /* 3F738 8004EF38 00190300 */  sll        $v1, $v1, 4
    /* 3F73C 8004EF3C 80FF6324 */  addiu      $v1, $v1, -0x80
    /* 3F740 8004EF40 0300E3A0 */  sb         $v1, 0x3($a3)
    /* 3F744 8004EF44 FD020392 */  lbu        $v1, (0x1F8002FD & 0xFFFF)($s0)
    /* 3F748 8004EF48 00000000 */  nop
    /* 3F74C 8004EF4C 40100300 */  sll        $v0, $v1, 1
    /* 3F750 8004EF50 21104300 */  addu       $v0, $v0, $v1
    /* 3F754 8004EF54 80100200 */  sll        $v0, $v0, 2
    /* 3F758 8004EF58 23104300 */  subu       $v0, $v0, $v1
    /* 3F75C 8004EF5C 21104500 */  addu       $v0, $v0, $a1
    /* 3F760 8004EF60 21104400 */  addu       $v0, $v0, $a0
    /* 3F764 8004EF64 00004290 */  lbu        $v0, 0x0($v0)
    /* 3F768 8004EF68 21200000 */  addu       $a0, $zero, $zero
    /* 3F76C 8004EF6C 42100200 */  srl        $v0, $v0, 1
    /* 3F770 8004EF70 00110200 */  sll        $v0, $v0, 4
    /* 3F774 8004EF74 90FF4224 */  addiu      $v0, $v0, -0x70
    /* 3F778 8004EF78 573C0108 */  j          .L8004F15C
    /* 3F77C 8004EF7C 0400E2A0 */   sb        $v0, 0x4($a3)
  .L8004EF80:
    /* 3F780 8004EF80 801F033C */  lui        $v1, (0x1F8002E2 >> 16)
    /* 3F784 8004EF84 E2026390 */  lbu        $v1, (0x1F8002E2 & 0xFFFF)($v1)
    /* 3F788 8004EF88 02000224 */  addiu      $v0, $zero, 0x2
    /* 3F78C 8004EF8C 07006214 */  bne        $v1, $v0, .L8004EFAC
    /* 3F790 8004EF90 00000000 */   nop
    /* 3F794 8004EF94 801F033C */  lui        $v1, (0x1F800241 >> 16)
    /* 3F798 8004EF98 41026390 */  lbu        $v1, (0x1F800241 & 0xFFFF)($v1)
    /* 3F79C 8004EF9C F23B0108 */  j          .L8004EFC8
    /* 3F7A0 8004EFA0 00000000 */   nop
  .L8004EFA4:
    /* 3F7A4 8004EFA4 223C0108 */  j          .L8004F088
    /* 3F7A8 8004EFA8 2190C000 */   addu      $s2, $a2, $zero
  .L8004EFAC:
    /* 3F7AC 8004EFAC 801F023C */  lui        $v0, (0x1F8002E0 >> 16)
    /* 3F7B0 8004EFB0 E0024290 */  lbu        $v0, (0x1F8002E0 & 0xFFFF)($v0)
    /* 3F7B4 8004EFB4 00000000 */  nop
    /* 3F7B8 8004EFB8 01004238 */  xori       $v0, $v0, 0x1
    /* 3F7BC 8004EFBC 801F013C */  lui        $at, (0x1F800240 >> 16)
    /* 3F7C0 8004EFC0 21084100 */  addu       $at, $v0, $at
    /* 3F7C4 8004EFC4 40022390 */  lbu        $v1, (0x1F800240 & 0xFFFF)($at)
  .L8004EFC8:
    /* 3F7C8 8004EFC8 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 3F7CC 8004EFCC ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 3F7D0 8004EFD0 19006200 */  multu      $v1, $v0
    /* 3F7D4 8004EFD4 10480000 */  mfhi       $t1
    /* 3F7D8 8004EFD8 02210900 */  srl        $a0, $t1, 4
    /* 3F7DC 8004EFDC 40100400 */  sll        $v0, $a0, 1
    /* 3F7E0 8004EFE0 21104400 */  addu       $v0, $v0, $a0
    /* 3F7E4 8004EFE4 C0100200 */  sll        $v0, $v0, 3
    /* 3F7E8 8004EFE8 23186200 */  subu       $v1, $v1, $v0
    /* 3F7EC 8004EFEC FF006330 */  andi       $v1, $v1, 0xFF
    /* 3F7F0 8004EFF0 40110300 */  sll        $v0, $v1, 5
    /* 3F7F4 8004EFF4 23104300 */  subu       $v0, $v0, $v1
    /* 3F7F8 8004EFF8 80100200 */  sll        $v0, $v0, 2
    /* 3F7FC 8004EFFC 21104300 */  addu       $v0, $v0, $v1
    /* 3F800 8004F000 C0100200 */  sll        $v0, $v0, 3
    /* 3F804 8004F004 21205300 */  addu       $a0, $v0, $s3
    /* 3F808 8004F008 21300000 */  addu       $a2, $zero, $zero
    /* 3F80C 8004F00C 98039190 */  lbu        $s1, 0x398($a0)
    /* 3F810 8004F010 99038390 */  lbu        $v1, 0x399($a0)
    /* 3F814 8004F014 92038590 */  lbu        $a1, 0x392($a0)
    /* 3F818 8004F018 40100300 */  sll        $v0, $v1, 1
    /* 3F81C 8004F01C 21104300 */  addu       $v0, $v0, $v1
    /* 3F820 8004F020 80100200 */  sll        $v0, $v0, 2
    /* 3F824 8004F024 23104300 */  subu       $v0, $v0, $v1
    /* 3F828 8004F028 8D038390 */  lbu        $v1, 0x38D($a0)
    /* 3F82C 8004F02C 01004224 */  addiu      $v0, $v0, 0x1
    /* 3F830 8004F030 23906200 */  subu       $s2, $v1, $v0
    /* 3F834 8004F034 FF002332 */  andi       $v1, $s1, 0xFF
    /* 3F838 8004F038 40100300 */  sll        $v0, $v1, 1
    /* 3F83C 8004F03C 21104300 */  addu       $v0, $v0, $v1
    /* 3F840 8004F040 80100200 */  sll        $v0, $v0, 2
    /* 3F844 8004F044 23104300 */  subu       $v0, $v0, $v1
    /* 3F848 8004F048 40100200 */  sll        $v0, $v0, 1
    /* 3F84C 8004F04C 21105300 */  addu       $v0, $v0, $s3
    /* 3F850 8004F050 9C8E0334 */  ori        $v1, $zero, 0x8E9C
    /* 3F854 8004F054 21204300 */  addu       $a0, $v0, $v1
    /* 3F858 8004F058 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 3F85C 8004F05C FF00C230 */  andi       $v0, $a2, 0xFF
  .L8004F060:
    /* 3F860 8004F060 21108200 */  addu       $v0, $a0, $v0
    /* 3F864 8004F064 00004290 */  lbu        $v0, 0x0($v0)
    /* 3F868 8004F068 00000000 */  nop
    /* 3F86C 8004F06C CDFF4310 */  beq        $v0, $v1, .L8004EFA4
    /* 3F870 8004F070 00000000 */   nop
    /* 3F874 8004F074 0100C624 */  addiu      $a2, $a2, 0x1
    /* 3F878 8004F078 FF00C230 */  andi       $v0, $a2, 0xFF
    /* 3F87C 8004F07C 0B00422C */  sltiu      $v0, $v0, 0xB
    /* 3F880 8004F080 F7FF4014 */  bnez       $v0, .L8004F060
    /* 3F884 8004F084 FF00C230 */   andi      $v0, $a2, 0xFF
  .L8004F088:
    /* 3F888 8004F088 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 3F88C 8004F08C 2EBA023C */  lui        $v0, (0xBA2E8BA3 >> 16)
    /* 3F890 8004F090 A38B4234 */  ori        $v0, $v0, (0xBA2E8BA3 & 0xFFFF)
    /* 3F894 8004F094 1900A200 */  multu      $a1, $v0
    /* 3F898 8004F098 27000424 */  addiu      $a0, $zero, 0x27
    /* 3F89C 8004F09C FF003032 */  andi       $s0, $s1, 0xFF
    /* 3F8A0 8004F0A0 C0191000 */  sll        $v1, $s0, 7
    /* 3F8A4 8004F0A4 10480000 */  mfhi       $t1
    /* 3F8A8 8004F0A8 C2300900 */  srl        $a2, $t1, 3
    /* 3F8AC 8004F0AC FF00C230 */  andi       $v0, $a2, 0xFF
    /* 3F8B0 8004F0B0 80110200 */  sll        $v0, $v0, 6
    /* 3F8B4 8004F0B4 21104300 */  addu       $v0, $v0, $v1
    /* 3F8B8 8004F0B8 0F00E2A0 */  sb         $v0, 0xF($a3)
    /* 3F8BC 8004F0BC 40100600 */  sll        $v0, $a2, 1
    /* 3F8C0 8004F0C0 21104600 */  addu       $v0, $v0, $a2
    /* 3F8C4 8004F0C4 80100200 */  sll        $v0, $v0, 2
    /* 3F8C8 8004F0C8 23104600 */  subu       $v0, $v0, $a2
    /* 3F8CC 8004F0CC 2328A200 */  subu       $a1, $a1, $v0
    /* 3F8D0 8004F0D0 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 3F8D4 8004F0D4 00290500 */  sll        $a1, $a1, 4
    /* 3F8D8 8004F0D8 0174000C */  jal        func_8001D004
    /* 3F8DC 8004F0DC 1000E5A0 */   sb        $a1, 0x10($a3)
    /* 3F8E0 8004F0E0 21809002 */  addu       $s0, $s4, $s0
    /* 3F8E4 8004F0E4 FD020492 */  lbu        $a0, (0x1F8002FD & 0xFFFF)($s0)
    /* 3F8E8 8004F0E8 0D80053C */  lui        $a1, %hi(D_800CA30C)
    /* 3F8EC 8004F0EC 0CA3A524 */  addiu      $a1, $a1, %lo(D_800CA30C)
    /* 3F8F0 8004F0F0 40180400 */  sll        $v1, $a0, 1
    /* 3F8F4 8004F0F4 21186400 */  addu       $v1, $v1, $a0
    /* 3F8F8 8004F0F8 80180300 */  sll        $v1, $v1, 2
    /* 3F8FC 8004F0FC 23186400 */  subu       $v1, $v1, $a0
    /* 3F900 8004F100 21186500 */  addu       $v1, $v1, $a1
    /* 3F904 8004F104 FF004432 */  andi       $a0, $s2, 0xFF
    /* 3F908 8004F108 21186400 */  addu       $v1, $v1, $a0
    /* 3F90C 8004F10C 00006390 */  lbu        $v1, 0x0($v1)
    /* 3F910 8004F110 21384000 */  addu       $a3, $v0, $zero
    /* 3F914 8004F114 01006330 */  andi       $v1, $v1, 0x1
    /* 3F918 8004F118 00190300 */  sll        $v1, $v1, 4
    /* 3F91C 8004F11C 80FF6324 */  addiu      $v1, $v1, -0x80
    /* 3F920 8004F120 0F00E3A0 */  sb         $v1, 0xF($a3)
    /* 3F924 8004F124 FD020392 */  lbu        $v1, (0x1F8002FD & 0xFFFF)($s0)
    /* 3F928 8004F128 00000000 */  nop
    /* 3F92C 8004F12C 40100300 */  sll        $v0, $v1, 1
    /* 3F930 8004F130 21104300 */  addu       $v0, $v0, $v1
    /* 3F934 8004F134 80100200 */  sll        $v0, $v0, 2
    /* 3F938 8004F138 23104300 */  subu       $v0, $v0, $v1
    /* 3F93C 8004F13C 21104500 */  addu       $v0, $v0, $a1
    /* 3F940 8004F140 21104400 */  addu       $v0, $v0, $a0
    /* 3F944 8004F144 00004290 */  lbu        $v0, 0x0($v0)
    /* 3F948 8004F148 01000424 */  addiu      $a0, $zero, 0x1
    /* 3F94C 8004F14C 42100200 */  srl        $v0, $v0, 1
    /* 3F950 8004F150 00110200 */  sll        $v0, $v0, 4
    /* 3F954 8004F154 90FF4224 */  addiu      $v0, $v0, -0x70
    /* 3F958 8004F158 1000E2A0 */  sb         $v0, 0x10($a3)
  .L8004F15C:
    /* 3F95C 8004F15C 0174000C */  jal        func_8001D004
    /* 3F960 8004F160 00000000 */   nop
    /* 3F964 8004F164 21384000 */  addu       $a3, $v0, $zero
    /* 3F968 8004F168 9002828E */  lw         $v0, (0x1F800290 & 0xFFFF)($s4)
    /* 3F96C 8004F16C 00000000 */  nop
    /* 3F970 8004F170 08004230 */  andi       $v0, $v0, 0x8
    /* 3F974 8004F174 1A004010 */  beqz       $v0, .L8004F1E0
    /* 3F978 8004F178 25203402 */   or        $a0, $s1, $s4
    /* 3F97C 8004F17C 05038290 */  lbu        $v0, (0x1F800305 & 0xFFFF)($a0)
    /* 3F980 8004F180 00000000 */  nop
    /* 3F984 8004F184 13004010 */  beqz       $v0, .L8004F1D4
    /* 3F988 8004F188 05000324 */   addiu     $v1, $zero, 0x5
    /* 3F98C 8004F18C 23186200 */  subu       $v1, $v1, $v0
    /* 3F990 8004F190 40100300 */  sll        $v0, $v1, 1
    /* 3F994 8004F194 21104300 */  addu       $v0, $v0, $v1
    /* 3F998 8004F198 80100200 */  sll        $v0, $v0, 2
    /* 3F99C 8004F19C 21104700 */  addu       $v0, $v0, $a3
    /* 3F9A0 8004F1A0 09000324 */  addiu      $v1, $zero, 0x9
    /* 3F9A4 8004F1A4 0A0043A0 */  sb         $v1, 0xA($v0)
    /* 3F9A8 8004F1A8 05038290 */  lbu        $v0, (0x1F800305 & 0xFFFF)($a0)
    /* 3F9AC 8004F1AC 02000324 */  addiu      $v1, $zero, 0x2
    /* 3F9B0 8004F1B0 23186200 */  subu       $v1, $v1, $v0
    /* 3F9B4 8004F1B4 01006338 */  xori       $v1, $v1, 0x1
    /* 3F9B8 8004F1B8 40100300 */  sll        $v0, $v1, 1
    /* 3F9BC 8004F1BC 21104300 */  addu       $v0, $v0, $v1
    /* 3F9C0 8004F1C0 80100200 */  sll        $v0, $v0, 2
    /* 3F9C4 8004F1C4 21104700 */  addu       $v0, $v0, $a3
    /* 3F9C8 8004F1C8 5B000324 */  addiu      $v1, $zero, 0x5B
    /* 3F9CC 8004F1CC 783C0108 */  j          .L8004F1E0
    /* 3F9D0 8004F1D0 2E0043A0 */   sb        $v1, 0x2E($v0)
  .L8004F1D4:
    /* 3F9D4 8004F1D4 5B000224 */  addiu      $v0, $zero, 0x5B
    /* 3F9D8 8004F1D8 2E00E2A0 */  sb         $v0, 0x2E($a3)
    /* 3F9DC 8004F1DC 3A00E2A0 */  sb         $v0, 0x3A($a3)
  .L8004F1E0:
    /* 3F9E0 8004F1E0 21300000 */  addu       $a2, $zero, $zero
    /* 3F9E4 8004F1E4 25183402 */  or         $v1, $s1, $s4
    /* 3F9E8 8004F1E8 79000824 */  addiu      $t0, $zero, 0x79
    /* 3F9EC 8004F1EC 5B000524 */  addiu      $a1, $zero, 0x5B
  .L8004F1F0:
    /* 3F9F0 8004F1F0 FF026290 */  lbu        $v0, 0x2FF($v1)
    /* 3F9F4 8004F1F4 FF00C430 */  andi       $a0, $a2, 0xFF
    /* 3F9F8 8004F1F8 06008214 */  bne        $a0, $v0, .L8004F214
    /* 3F9FC 8004F1FC 40100400 */   sll       $v0, $a0, 1
    /* 3FA00 8004F200 21104400 */  addu       $v0, $v0, $a0
    /* 3FA04 8004F204 80100200 */  sll        $v0, $v0, 2
    /* 3FA08 8004F208 21104700 */  addu       $v0, $v0, $a3
    /* 3FA0C 8004F20C 893C0108 */  j          .L8004F224
    /* 3FA10 8004F210 0A0048A0 */   sb        $t0, 0xA($v0)
  .L8004F214:
    /* 3FA14 8004F214 21104400 */  addu       $v0, $v0, $a0
    /* 3FA18 8004F218 80100200 */  sll        $v0, $v0, 2
    /* 3FA1C 8004F21C 21104700 */  addu       $v0, $v0, $a3
    /* 3FA20 8004F220 0A0045A0 */  sb         $a1, 0xA($v0)
  .L8004F224:
    /* 3FA24 8004F224 0100C624 */  addiu      $a2, $a2, 0x1
    /* 3FA28 8004F228 FF00C230 */  andi       $v0, $a2, 0xFF
    /* 3FA2C 8004F22C 0300422C */  sltiu      $v0, $v0, 0x3
    /* 3FA30 8004F230 EFFF4014 */  bnez       $v0, .L8004F1F0
    /* 3FA34 8004F234 00000000 */   nop
    /* 3FA38 8004F238 2400BF8F */  lw         $ra, 0x24($sp)
    /* 3FA3C 8004F23C 2000B48F */  lw         $s4, 0x20($sp)
    /* 3FA40 8004F240 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3FA44 8004F244 1800B28F */  lw         $s2, 0x18($sp)
    /* 3FA48 8004F248 1400B18F */  lw         $s1, 0x14($sp)
    /* 3FA4C 8004F24C 1000B08F */  lw         $s0, 0x10($sp)
    /* 3FA50 8004F250 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3FA54 8004F254 0800E003 */  jr         $ra
    /* 3FA58 8004F258 00000000 */   nop
endlabel func_8004ED68
