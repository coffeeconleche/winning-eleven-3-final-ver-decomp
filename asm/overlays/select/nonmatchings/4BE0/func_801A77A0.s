nonmatching func_801A77A0, 0x2AC

glabel func_801A77A0
    /* 1E828 801A77A0 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 1E82C 801A77A4 6400BFAF */  sw         $ra, 0x64($sp)
    /* 1E830 801A77A8 6000B4AF */  sw         $s4, 0x60($sp)
    /* 1E834 801A77AC 5C00B3AF */  sw         $s3, 0x5C($sp)
    /* 1E838 801A77B0 5800B2AF */  sw         $s2, 0x58($sp)
    /* 1E83C 801A77B4 5400B1AF */  sw         $s1, 0x54($sp)
    /* 1E840 801A77B8 5000B0AF */  sw         $s0, 0x50($sp)
    /* 1E844 801A77BC 1980053C */  lui        $a1, %hi(D_8018A260)
    /* 1E848 801A77C0 60A2A524 */  addiu      $a1, $a1, %lo(D_8018A260)
    /* 1E84C 801A77C4 0300A288 */  lwl        $v0, 0x3($a1)
    /* 1E850 801A77C8 0000A298 */  lwr        $v0, 0x0($a1)
    /* 1E854 801A77CC 0700A388 */  lwl        $v1, 0x7($a1)
    /* 1E858 801A77D0 0400A398 */  lwr        $v1, 0x4($a1)
    /* 1E85C 801A77D4 4B00A2AB */  swl        $v0, 0x4B($sp)
    /* 1E860 801A77D8 4800A2BB */  swr        $v0, 0x48($sp)
    /* 1E864 801A77DC 4F00A3AB */  swl        $v1, 0x4F($sp)
    /* 1E868 801A77E0 4C00A3BB */  swr        $v1, 0x4C($sp)
    /* 1E86C 801A77E4 0B000424 */  addiu      $a0, $zero, 0xB
    /* 1E870 801A77E8 9D300524 */  addiu      $a1, $zero, 0x309D
    /* 1E874 801A77EC 21300000 */  addu       $a2, $zero, $zero
    /* 1E878 801A77F0 21380000 */  addu       $a3, $zero, $zero
    /* 1E87C 801A77F4 19001424 */  addiu      $s4, $zero, 0x19
    /* 1E880 801A77F8 F0000224 */  addiu      $v0, $zero, 0xF0
    /* 1E884 801A77FC 00101124 */  addiu      $s1, $zero, 0x1000
    /* 1E888 801A7800 80001024 */  addiu      $s0, $zero, 0x80
    /* 1E88C 801A7804 02001324 */  addiu      $s3, $zero, 0x2
    /* 1E890 801A7808 01001224 */  addiu      $s2, $zero, 0x1
    /* 1E894 801A780C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1E898 801A7810 1400B4AF */  sw         $s4, 0x14($sp)
    /* 1E89C 801A7814 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1E8A0 801A7818 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1E8A4 801A781C 2000B1AF */  sw         $s1, 0x20($sp)
    /* 1E8A8 801A7820 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1E8AC 801A7824 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1E8B0 801A7828 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 1E8B4 801A782C 3000B0AF */  sw         $s0, 0x30($sp)
    /* 1E8B8 801A7830 3400B0AF */  sw         $s0, 0x34($sp)
    /* 1E8BC 801A7834 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1E8C0 801A7838 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 1E8C4 801A783C ED4F060C */  jal        func_80193FB4
    /* 1E8C8 801A7840 4000B2AF */   sw        $s2, 0x40($sp)
    /* 1E8CC 801A7844 0C000424 */  addiu      $a0, $zero, 0xC
    /* 1E8D0 801A7848 9E300524 */  addiu      $a1, $zero, 0x309E
    /* 1E8D4 801A784C 21300000 */  addu       $a2, $zero, $zero
    /* 1E8D8 801A7850 21380000 */  addu       $a3, $zero, $zero
    /* 1E8DC 801A7854 F2000224 */  addiu      $v0, $zero, 0xF2
    /* 1E8E0 801A7858 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1E8E4 801A785C 1400B4AF */  sw         $s4, 0x14($sp)
    /* 1E8E8 801A7860 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1E8EC 801A7864 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1E8F0 801A7868 2000B1AF */  sw         $s1, 0x20($sp)
    /* 1E8F4 801A786C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1E8F8 801A7870 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1E8FC 801A7874 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 1E900 801A7878 3000B0AF */  sw         $s0, 0x30($sp)
    /* 1E904 801A787C 3400B0AF */  sw         $s0, 0x34($sp)
    /* 1E908 801A7880 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1E90C 801A7884 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 1E910 801A7888 ED4F060C */  jal        func_80193FB4
    /* 1E914 801A788C 4000B2AF */   sw        $s2, 0x40($sp)
    /* 1E918 801A7890 0174000C */  jal        func_8001D004
    /* 1E91C 801A7894 9D300424 */   addiu     $a0, $zero, 0x309D
    /* 1E920 801A7898 21284000 */  addu       $a1, $v0, $zero
    /* 1E924 801A789C 1080113C */  lui        $s1, %hi(D_800FF748)
    /* 1E928 801A78A0 48F73126 */  addiu      $s1, $s1, %lo(D_800FF748)
    /* 1E92C 801A78A4 1180023C */  lui        $v0, %hi(D_8010865E)
    /* 1E930 801A78A8 5E864290 */  lbu        $v0, %lo(D_8010865E)($v0)
    /* 1E934 801A78AC 801F043C */  lui        $a0, (0x1F8002DD >> 16)
    /* 1E938 801A78B0 DD028490 */  lbu        $a0, (0x1F8002DD & 0xFFFF)($a0)
    /* 1E93C 801A78B4 12004014 */  bnez       $v0, .L801A7900
    /* 1E940 801A78B8 4800B027 */   addiu     $s0, $sp, 0x48
    /* 1E944 801A78BC C0180400 */  sll        $v1, $a0, 3
    /* 1E948 801A78C0 1280013C */  lui        $at, %hi(D_8011C904)
    /* 1E94C 801A78C4 21082300 */  addu       $at, $at, $v1
    /* 1E950 801A78C8 04C92294 */  lhu        $v0, %lo(D_8011C904)($at)
    /* 1E954 801A78CC 00000000 */  nop
    /* 1E958 801A78D0 2B100200 */  sltu       $v0, $zero, $v0
    /* 1E95C 801A78D4 80110200 */  sll        $v0, $v0, 6
    /* 1E960 801A78D8 0400A2A0 */  sb         $v0, 0x4($a1)
    /* 1E964 801A78DC 1080023C */  lui        $v0, %hi(D_80107AAE)
    /* 1E968 801A78E0 AE7A4294 */  lhu        $v0, %lo(D_80107AAE)($v0)
    /* 1E96C 801A78E4 00000000 */  nop
    /* 1E970 801A78E8 4800A2A7 */  sh         $v0, 0x48($sp)
    /* 1E974 801A78EC 1280013C */  lui        $at, %hi(D_8011C906)
    /* 1E978 801A78F0 21082300 */  addu       $at, $at, $v1
    /* 1E97C 801A78F4 06C92594 */  lhu        $a1, %lo(D_8011C906)($at)
    /* 1E980 801A78F8 4F9E0608 */  j          .L801A793C
    /* 1E984 801A78FC 21200002 */   addu      $a0, $s0, $zero
  .L801A7900:
    /* 1E988 801A7900 C0180400 */  sll        $v1, $a0, 3
    /* 1E98C 801A7904 1280013C */  lui        $at, %hi(D_8011C908)
    /* 1E990 801A7908 21082300 */  addu       $at, $at, $v1
    /* 1E994 801A790C 08C92294 */  lhu        $v0, %lo(D_8011C908)($at)
    /* 1E998 801A7910 00000000 */  nop
    /* 1E99C 801A7914 2B100200 */  sltu       $v0, $zero, $v0
    /* 1E9A0 801A7918 80110200 */  sll        $v0, $v0, 6
    /* 1E9A4 801A791C 0400A2A0 */  sb         $v0, 0x4($a1)
    /* 1E9A8 801A7920 1080023C */  lui        $v0, %hi(D_80107AAE)
    /* 1E9AC 801A7924 AE7A4294 */  lhu        $v0, %lo(D_80107AAE)($v0)
    /* 1E9B0 801A7928 21200002 */  addu       $a0, $s0, $zero
    /* 1E9B4 801A792C 4800A2A7 */  sh         $v0, 0x48($sp)
    /* 1E9B8 801A7930 1280013C */  lui        $at, %hi(D_8011C90A)
    /* 1E9BC 801A7934 21082300 */  addu       $at, $at, $v1
    /* 1E9C0 801A7938 0AC92594 */  lhu        $a1, %lo(D_8011C90A)($at)
  .L801A793C:
    /* 1E9C4 801A793C 1280023C */  lui        $v0, %hi(D_8011BE44)
    /* 1E9C8 801A7940 44BE4224 */  addiu      $v0, $v0, %lo(D_8011BE44)
    /* 1E9CC 801A7944 40290500 */  sll        $a1, $a1, 5
    /* 1E9D0 801A7948 F8B9020C */  jal        func_800AE7E0
    /* 1E9D4 801A794C 2128A200 */   addu      $a1, $a1, $v0
    /* 1E9D8 801A7950 4DB9020C */  jal        func_800AE534
    /* 1E9DC 801A7954 21200000 */   addu      $a0, $zero, $zero
    /* 1E9E0 801A7958 0174000C */  jal        func_8001D004
    /* 1E9E4 801A795C 9E300424 */   addiu     $a0, $zero, 0x309E
    /* 1E9E8 801A7960 21284000 */  addu       $a1, $v0, $zero
    /* 1E9EC 801A7964 801F023C */  lui        $v0, (0x1F8002DE >> 16)
    /* 1E9F0 801A7968 DE024290 */  lbu        $v0, (0x1F8002DE & 0xFFFF)($v0)
    /* 1E9F4 801A796C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1E9F8 801A7970 21082102 */  addu       $at, $s1, $at
    /* 1E9FC 801A7974 178F2390 */  lbu        $v1, -0x70E9($at)
    /* 1EA00 801A7978 00000000 */  nop
    /* 1EA04 801A797C 13006014 */  bnez       $v1, .L801A79CC
    /* 1EA08 801A7980 FF004430 */   andi      $a0, $v0, 0xFF
    /* 1EA0C 801A7984 C0180400 */  sll        $v1, $a0, 3
    /* 1EA10 801A7988 1280013C */  lui        $at, %hi(D_8011C904)
    /* 1EA14 801A798C 21082300 */  addu       $at, $at, $v1
    /* 1EA18 801A7990 04C92294 */  lhu        $v0, %lo(D_8011C904)($at)
    /* 1EA1C 801A7994 00000000 */  nop
    /* 1EA20 801A7998 2B100200 */  sltu       $v0, $zero, $v0
    /* 1EA24 801A799C 80110200 */  sll        $v0, $v0, 6
    /* 1EA28 801A79A0 0400A2A0 */  sb         $v0, 0x4($a1)
    /* 1EA2C 801A79A4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1EA30 801A79A8 21082102 */  addu       $at, $s1, $at
    /* 1EA34 801A79AC 6E832294 */  lhu        $v0, -0x7C92($at)
    /* 1EA38 801A79B0 00000000 */  nop
    /* 1EA3C 801A79B4 4800A2A7 */  sh         $v0, 0x48($sp)
    /* 1EA40 801A79B8 1280013C */  lui        $at, %hi(D_8011C906)
    /* 1EA44 801A79BC 21082300 */  addu       $at, $at, $v1
    /* 1EA48 801A79C0 06C92594 */  lhu        $a1, %lo(D_8011C906)($at)
    /* 1EA4C 801A79C4 839E0608 */  j          .L801A7A0C
    /* 1EA50 801A79C8 4800A427 */   addiu     $a0, $sp, 0x48
  .L801A79CC:
    /* 1EA54 801A79CC C0180400 */  sll        $v1, $a0, 3
    /* 1EA58 801A79D0 1280013C */  lui        $at, %hi(D_8011C908)
    /* 1EA5C 801A79D4 21082300 */  addu       $at, $at, $v1
    /* 1EA60 801A79D8 08C92294 */  lhu        $v0, %lo(D_8011C908)($at)
    /* 1EA64 801A79DC 00000000 */  nop
    /* 1EA68 801A79E0 2B100200 */  sltu       $v0, $zero, $v0
    /* 1EA6C 801A79E4 80110200 */  sll        $v0, $v0, 6
    /* 1EA70 801A79E8 0400A2A0 */  sb         $v0, 0x4($a1)
    /* 1EA74 801A79EC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1EA78 801A79F0 21082102 */  addu       $at, $s1, $at
    /* 1EA7C 801A79F4 6E832294 */  lhu        $v0, -0x7C92($at)
    /* 1EA80 801A79F8 4800A427 */  addiu      $a0, $sp, 0x48
    /* 1EA84 801A79FC 4800A2A7 */  sh         $v0, 0x48($sp)
    /* 1EA88 801A7A00 1280013C */  lui        $at, %hi(D_8011C90A)
    /* 1EA8C 801A7A04 21082300 */  addu       $at, $at, $v1
    /* 1EA90 801A7A08 0AC92594 */  lhu        $a1, %lo(D_8011C90A)($at)
  .L801A7A0C:
    /* 1EA94 801A7A0C 1280023C */  lui        $v0, %hi(D_8011BE44)
    /* 1EA98 801A7A10 44BE4224 */  addiu      $v0, $v0, %lo(D_8011BE44)
    /* 1EA9C 801A7A14 40290500 */  sll        $a1, $a1, 5
    /* 1EAA0 801A7A18 F8B9020C */  jal        func_800AE7E0
    /* 1EAA4 801A7A1C 2128A200 */   addu      $a1, $a1, $v0
    /* 1EAA8 801A7A20 4DB9020C */  jal        func_800AE534
    /* 1EAAC 801A7A24 21200000 */   addu      $a0, $zero, $zero
    /* 1EAB0 801A7A28 6400BF8F */  lw         $ra, 0x64($sp)
    /* 1EAB4 801A7A2C 6000B48F */  lw         $s4, 0x60($sp)
    /* 1EAB8 801A7A30 5C00B38F */  lw         $s3, 0x5C($sp)
    /* 1EABC 801A7A34 5800B28F */  lw         $s2, 0x58($sp)
    /* 1EAC0 801A7A38 5400B18F */  lw         $s1, 0x54($sp)
    /* 1EAC4 801A7A3C 5000B08F */  lw         $s0, 0x50($sp)
    /* 1EAC8 801A7A40 6800BD27 */  addiu      $sp, $sp, 0x68
    /* 1EACC 801A7A44 0800E003 */  jr         $ra
    /* 1EAD0 801A7A48 00000000 */   nop
endlabel func_801A77A0
