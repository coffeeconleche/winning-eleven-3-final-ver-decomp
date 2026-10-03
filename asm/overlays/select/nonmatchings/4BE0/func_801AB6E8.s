nonmatching func_801AB6E8, 0x228

glabel func_801AB6E8
    /* 22770 801AB6E8 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 22774 801AB6EC 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 22778 801AB6F0 21988000 */  addu       $s3, $a0, $zero
    /* 2277C 801AB6F4 3400B1AF */  sw         $s1, 0x34($sp)
    /* 22780 801AB6F8 E0FF1124 */  addiu      $s1, $zero, -0x20
    /* 22784 801AB6FC 3800B2AF */  sw         $s2, 0x38($sp)
    /* 22788 801AB700 20001224 */  addiu      $s2, $zero, 0x20
    /* 2278C 801AB704 E8FF0724 */  addiu      $a3, $zero, -0x18
    /* 22790 801AB708 4000BFAF */  sw         $ra, 0x40($sp)
    /* 22794 801AB70C 07006106 */  bgez       $s3, .L801AB72C
    /* 22798 801AB710 3000B0AF */   sw        $s0, 0x30($sp)
    /* 2279C 801AB714 1E80013C */  lui        $at, %hi(D_801D92A3)
    /* 227A0 801AB718 A39220A0 */  sb         $zero, %lo(D_801D92A3)($at)
    /* 227A4 801AB71C 1E80013C */  lui        $at, %hi(D_801D8FA0)
    /* 227A8 801AB720 A08F20A0 */  sb         $zero, %lo(D_801D8FA0)($at)
    /* 227AC 801AB724 3CAE0608 */  j          .L801AB8F0
    /* 227B0 801AB728 02000224 */   addiu     $v0, $zero, 0x2
  .L801AB72C:
    /* 227B4 801AB72C 4D000224 */  addiu      $v0, $zero, 0x4D
    /* 227B8 801AB730 05006216 */  bne        $s3, $v0, .L801AB748
    /* 227BC 801AB734 ABFF6226 */   addiu     $v0, $s3, -0x55
    /* 227C0 801AB738 20001124 */  addiu      $s1, $zero, 0x20
    /* 227C4 801AB73C 34001224 */  addiu      $s2, $zero, 0x34
    /* 227C8 801AB740 D8AD0608 */  j          .L801AB760
    /* 227CC 801AB744 22000724 */   addiu     $a3, $zero, 0x22
  .L801AB748:
    /* 227D0 801AB748 0300422C */  sltiu      $v0, $v0, 0x3
    /* 227D4 801AB74C 04004010 */  beqz       $v0, .L801AB760
    /* 227D8 801AB750 00000000 */   nop
    /* 227DC 801AB754 20001124 */  addiu      $s1, $zero, 0x20
    /* 227E0 801AB758 30001224 */  addiu      $s2, $zero, 0x30
    /* 227E4 801AB75C 28000724 */  addiu      $a3, $zero, 0x28
  .L801AB760:
    /* 227E8 801AB760 21200000 */  addu       $a0, $zero, $zero
    /* 227EC 801AB764 9CFF0624 */  addiu      $a2, $zero, -0x64
    /* 227F0 801AB768 C8000224 */  addiu      $v0, $zero, 0xC8
    /* 227F4 801AB76C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 227F8 801AB770 03000224 */  addiu      $v0, $zero, 0x3
    /* 227FC 801AB774 01001024 */  addiu      $s0, $zero, 0x1
    /* 22800 801AB778 1400A2AF */  sw         $v0, 0x14($sp)
    /* 22804 801AB77C 2400A2AF */  sw         $v0, 0x24($sp)
    /* 22808 801AB780 80101300 */  sll        $v0, $s3, 2
    /* 2280C 801AB784 003C0700 */  sll        $a3, $a3, 16
    /* 22810 801AB788 1800A0AF */  sw         $zero, 0x18($sp)
    /* 22814 801AB78C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 22818 801AB790 2000A0AF */  sw         $zero, 0x20($sp)
    /* 2281C 801AB794 2800A0AF */  sw         $zero, 0x28($sp)
    /* 22820 801AB798 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 22824 801AB79C 1280013C */  lui        $at, %hi(D_8011D5F4)
    /* 22828 801AB7A0 21082200 */  addu       $at, $at, $v0
    /* 2282C 801AB7A4 F4D5258C */  lw         $a1, %lo(D_8011D5F4)($at)
    /* 22830 801AB7A8 B850060C */  jal        func_801942E0
    /* 22834 801AB7AC 033C0700 */   sra       $a3, $a3, 16
    /* 22838 801AB7B0 21200000 */  addu       $a0, $zero, $zero
    /* 2283C 801AB7B4 21280000 */  addu       $a1, $zero, $zero
    /* 22840 801AB7B8 1E80063C */  lui        $a2, %hi(D_801D8D90)
    /* 22844 801AB7BC 908DC624 */  addiu      $a2, $a2, %lo(D_801D8D90)
    /* 22848 801AB7C0 01000724 */  addiu      $a3, $zero, 0x1
    /* 2284C 801AB7C4 9CFF0224 */  addiu      $v0, $zero, -0x64
    /* 22850 801AB7C8 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 22854 801AB7CC C8000224 */  addiu      $v0, $zero, 0xC8
    /* 22858 801AB7D0 1E80013C */  lui        $at, %hi(D_801D8D94)
    /* 2285C 801AB7D4 948D22A4 */  sh         $v0, %lo(D_801D8D94)($at)
    /* 22860 801AB7D8 30000224 */  addiu      $v0, $zero, 0x30
    /* 22864 801AB7DC 1E80013C */  lui        $at, %hi(D_801D8D9A)
    /* 22868 801AB7E0 9A8D22A0 */  sb         $v0, %lo(D_801D8D9A)($at)
    /* 2286C 801AB7E4 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 22870 801AB7E8 1E80013C */  lui        $at, %hi(D_801D8D92)
    /* 22874 801AB7EC 928D31A4 */  sh         $s1, %lo(D_801D8D92)($at)
    /* 22878 801AB7F0 1E80013C */  lui        $at, %hi(D_801D8D96)
    /* 2287C 801AB7F4 968D32A4 */  sh         $s2, %lo(D_801D8D96)($at)
    /* 22880 801AB7F8 1E80013C */  lui        $at, %hi(D_801D8D98)
    /* 22884 801AB7FC 988D20A0 */  sb         $zero, %lo(D_801D8D98)($at)
    /* 22888 801AB800 1E80013C */  lui        $at, %hi(D_801D8D99)
    /* 2288C 801AB804 998D20A0 */  sb         $zero, %lo(D_801D8D99)($at)
    /* 22890 801AB808 1E80013C */  lui        $at, %hi(D_801D8D9B)
    /* 22894 801AB80C 9B8D22A0 */  sb         $v0, %lo(D_801D8D9B)($at)
    /* 22898 801AB810 1E80013C */  lui        $at, %hi(D_801D8D9C)
    /* 2289C 801AB814 9C8D22A0 */  sb         $v0, %lo(D_801D8D9C)($at)
    /* 228A0 801AB818 1E80013C */  lui        $at, %hi(D_801D8D9D)
    /* 228A4 801AB81C 9D8D22A0 */  sb         $v0, %lo(D_801D8D9D)($at)
    /* 228A8 801AB820 1000B0AF */  sw         $s0, 0x10($sp)
    /* 228AC 801AB824 3B50060C */  jal        func_801940EC
    /* 228B0 801AB828 1400B0AF */   sw        $s0, 0x14($sp)
    /* 228B4 801AB82C 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 228B8 801AB830 50AE20A0 */  sb         $zero, %lo(D_801DAE50)($at)
    /* 228BC 801AB834 20BB010C */  jal        func_8006EC80
    /* 228C0 801AB838 21200000 */   addu      $a0, $zero, $zero
    /* 228C4 801AB83C FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 228C8 801AB840 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 228CC 801AB844 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 228D0 801AB848 20000224 */  addiu      $v0, $zero, 0x20
    /* 228D4 801AB84C 12006210 */  beq        $v1, $v0, .L801AB898
    /* 228D8 801AB850 21006228 */   slti      $v0, $v1, 0x21
    /* 228DC 801AB854 05004010 */  beqz       $v0, .L801AB86C
    /* 228E0 801AB858 10000224 */   addiu     $v0, $zero, 0x10
    /* 228E4 801AB85C 08006210 */  beq        $v1, $v0, .L801AB880
    /* 228E8 801AB860 4D000224 */   addiu     $v0, $zero, 0x4D
    /* 228EC 801AB864 31AE0608 */  j          .L801AB8C4
    /* 228F0 801AB868 00000000 */   nop
  .L801AB86C:
    /* 228F4 801AB86C 40000224 */  addiu      $v0, $zero, 0x40
    /* 228F8 801AB870 0D006210 */  beq        $v1, $v0, .L801AB8A8
    /* 228FC 801AB874 4D000224 */   addiu     $v0, $zero, 0x4D
    /* 22900 801AB878 31AE0608 */  j          .L801AB8C4
    /* 22904 801AB87C 00000000 */   nop
  .L801AB880:
    /* 22908 801AB880 10006216 */  bne        $s3, $v0, .L801AB8C4
    /* 2290C 801AB884 00000000 */   nop
    /* 22910 801AB888 88AD020C */  jal        func_800AB620
    /* 22914 801AB88C 29050424 */   addiu     $a0, $zero, 0x529
    /* 22918 801AB890 2FAE0608 */  j          .L801AB8BC
    /* 2291C 801AB894 03000224 */   addiu     $v0, $zero, 0x3
  .L801AB898:
    /* 22920 801AB898 88AD020C */  jal        func_800AB620
    /* 22924 801AB89C 28050424 */   addiu     $a0, $zero, 0x528
    /* 22928 801AB8A0 2FAE0608 */  j          .L801AB8BC
    /* 2292C 801AB8A4 02000224 */   addiu     $v0, $zero, 0x2
  .L801AB8A8:
    /* 22930 801AB8A8 06006216 */  bne        $s3, $v0, .L801AB8C4
    /* 22934 801AB8AC 00000000 */   nop
    /* 22938 801AB8B0 88AD020C */  jal        func_800AB620
    /* 2293C 801AB8B4 29050424 */   addiu     $a0, $zero, 0x529
    /* 22940 801AB8B8 01000224 */  addiu      $v0, $zero, 0x1
  .L801AB8BC:
    /* 22944 801AB8BC 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 22948 801AB8C0 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
  .L801AB8C4:
    /* 2294C 801AB8C4 1E80023C */  lui        $v0, %hi(D_801DAE50)
    /* 22950 801AB8C8 50AE4290 */  lbu        $v0, %lo(D_801DAE50)($v0)
    /* 22954 801AB8CC 00000000 */  nop
    /* 22958 801AB8D0 07004010 */  beqz       $v0, .L801AB8F0
    /* 2295C 801AB8D4 00000000 */   nop
    /* 22960 801AB8D8 1E80013C */  lui        $at, %hi(D_801D92A3)
    /* 22964 801AB8DC A39220A0 */  sb         $zero, %lo(D_801D92A3)($at)
    /* 22968 801AB8E0 1E80013C */  lui        $at, %hi(D_801D8FA0)
    /* 2296C 801AB8E4 A08F20A0 */  sb         $zero, %lo(D_801D8FA0)($at)
    /* 22970 801AB8E8 1E80023C */  lui        $v0, %hi(D_801DAE50)
    /* 22974 801AB8EC 50AE4290 */  lbu        $v0, %lo(D_801DAE50)($v0)
  .L801AB8F0:
    /* 22978 801AB8F0 4000BF8F */  lw         $ra, 0x40($sp)
    /* 2297C 801AB8F4 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 22980 801AB8F8 3800B28F */  lw         $s2, 0x38($sp)
    /* 22984 801AB8FC 3400B18F */  lw         $s1, 0x34($sp)
    /* 22988 801AB900 3000B08F */  lw         $s0, 0x30($sp)
    /* 2298C 801AB904 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 22990 801AB908 0800E003 */  jr         $ra
    /* 22994 801AB90C 00000000 */   nop
endlabel func_801AB6E8
