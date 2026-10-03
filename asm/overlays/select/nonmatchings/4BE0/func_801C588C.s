nonmatching func_801C588C, 0x138

glabel func_801C588C
    /* 3C914 801C588C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 3C918 801C5890 4000AB93 */  lbu        $t3, 0x40($sp)
    /* 3C91C 801C5894 1D80023C */  lui        $v0, %hi(D_801D42AC)
    /* 3C920 801C5898 AC424290 */  lbu        $v0, %lo(D_801D42AC)($v0)
    /* 3C924 801C589C 1D80033C */  lui        $v1, %hi(D_801D42A8 + 0x3)
    /* 3C928 801C58A0 AB426390 */  lbu        $v1, %lo(D_801D42A8 + 0x3)($v1)
    /* 3C92C 801C58A4 1800AA27 */  addiu      $t2, $sp, 0x18
    /* 3C930 801C58A8 03004010 */  beqz       $v0, .L801C58B8
    /* 3C934 801C58AC 2800BFAF */   sw        $ra, 0x28($sp)
    /* 3C938 801C58B0 2F160708 */  j          .L801C58BC
    /* 3C93C 801C58B4 FFFF6224 */   addiu     $v0, $v1, -0x1
  .L801C58B8:
    /* 3C940 801C58B8 01006224 */  addiu      $v0, $v1, 0x1
  .L801C58BC:
    /* 3C944 801C58BC 1D80013C */  lui        $at, %hi(D_801D42A8 + 0x3)
    /* 3C948 801C58C0 AB4222A0 */  sb         $v0, %lo(D_801D42A8 + 0x3)($at)
    /* 3C94C 801C58C4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3C950 801C58C8 03004014 */  bnez       $v0, .L801C58D8
    /* 3C954 801C58CC 00000000 */   nop
    /* 3C958 801C58D0 1D80013C */  lui        $at, %hi(D_801D42AC)
    /* 3C95C 801C58D4 AC4220A0 */  sb         $zero, %lo(D_801D42AC)($at)
  .L801C58D8:
    /* 3C960 801C58D8 3000422C */  sltiu      $v0, $v0, 0x30
    /* 3C964 801C58DC 05004014 */  bnez       $v0, .L801C58F4
    /* 3C968 801C58E0 00140400 */   sll       $v0, $a0, 16
    /* 3C96C 801C58E4 01000224 */  addiu      $v0, $zero, 0x1
    /* 3C970 801C58E8 1D80013C */  lui        $at, %hi(D_801D42AC)
    /* 3C974 801C58EC AC4222A0 */  sb         $v0, %lo(D_801D42AC)($at)
    /* 3C978 801C58F0 00140400 */  sll        $v0, $a0, 16
  .L801C58F4:
    /* 3C97C 801C58F4 031C0200 */  sra        $v1, $v0, 16
    /* 3C980 801C58F8 FF00C230 */  andi       $v0, $a2, 0xFF
    /* 3C984 801C58FC 03004014 */  bnez       $v0, .L801C590C
    /* 3C988 801C5900 3C006224 */   addiu     $v0, $v1, 0x3C
    /* 3C98C 801C5904 44160708 */  j          .L801C5910
    /* 3C990 801C5908 1000A2A7 */   sh        $v0, 0x10($sp)
  .L801C590C:
    /* 3C994 801C590C 1000A3A7 */  sh         $v1, 0x10($sp)
  .L801C5910:
    /* 3C998 801C5910 FF00C230 */  andi       $v0, $a2, 0xFF
    /* 3C99C 801C5914 03004010 */  beqz       $v0, .L801C5924
    /* 3C9A0 801C5918 1200A5A7 */   sh        $a1, 0x12($sp)
    /* 3C9A4 801C591C 4A160708 */  j          .L801C5928
    /* 3C9A8 801C5920 20000224 */   addiu     $v0, $zero, 0x20
  .L801C5924:
    /* 3C9AC 801C5924 2C000224 */  addiu      $v0, $zero, 0x2C
  .L801C5928:
    /* 3C9B0 801C5928 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 3C9B4 801C592C 12000224 */  addiu      $v0, $zero, 0x12
    /* 3C9B8 801C5930 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 3C9BC 801C5934 21400000 */  addu       $t0, $zero, $zero
    /* 3C9C0 801C5938 60000924 */  addiu      $t1, $zero, 0x60
  .L801C593C:
    /* 3C9C4 801C593C FF000431 */  andi       $a0, $t0, 0xFF
    /* 3C9C8 801C5940 1D80033C */  lui        $v1, %hi(D_801D42A8 + 0x3)
    /* 3C9CC 801C5944 AB426390 */  lbu        $v1, %lo(D_801D42A8 + 0x3)($v1)
    /* 3C9D0 801C5948 C0100400 */  sll        $v0, $a0, 3
    /* 3C9D4 801C594C 21186200 */  addu       $v1, $v1, $v0
    /* 3C9D8 801C5950 21286000 */  addu       $a1, $v1, $zero
    /* 3C9DC 801C5954 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 3C9E0 801C5958 3100422C */  sltiu      $v0, $v0, 0x31
    /* 3C9E4 801C595C 02004014 */  bnez       $v0, .L801C5968
    /* 3C9E8 801C5960 00000000 */   nop
    /* 3C9EC 801C5964 23282301 */  subu       $a1, $t1, $v1
  .L801C5968:
    /* 3C9F0 801C5968 01000825 */  addiu      $t0, $t0, 0x1
    /* 3C9F4 801C596C 40180400 */  sll        $v1, $a0, 1
    /* 3C9F8 801C5970 21186400 */  addu       $v1, $v1, $a0
    /* 3C9FC 801C5974 21186A00 */  addu       $v1, $v1, $t2
    /* 3CA00 801C5978 FF00A430 */  andi       $a0, $a1, 0xFF
    /* 3CA04 801C597C 40100400 */  sll        $v0, $a0, 1
    /* 3CA08 801C5980 21104400 */  addu       $v0, $v0, $a0
    /* 3CA0C 801C5984 80200400 */  sll        $a0, $a0, 2
    /* 3CA10 801C5988 000062A0 */  sb         $v0, 0x0($v1)
    /* 3CA14 801C598C FF000231 */  andi       $v0, $t0, 0xFF
    /* 3CA18 801C5990 0400422C */  sltiu      $v0, $v0, 0x4
    /* 3CA1C 801C5994 010065A0 */  sb         $a1, 0x1($v1)
    /* 3CA20 801C5998 E8FF4014 */  bnez       $v0, .L801C593C
    /* 3CA24 801C599C 020064A0 */   sb        $a0, 0x2($v1)
    /* 3CA28 801C59A0 04006011 */  beqz       $t3, .L801C59B4
    /* 3CA2C 801C59A4 21200000 */   addu      $a0, $zero, $zero
    /* 3CA30 801C59A8 1000A527 */  addiu      $a1, $sp, 0x10
    /* 3CA34 801C59AC 985A060C */  jal        func_80196A60
    /* 3CA38 801C59B0 FF00E630 */   andi      $a2, $a3, 0xFF
  .L801C59B4:
    /* 3CA3C 801C59B4 2800BF8F */  lw         $ra, 0x28($sp)
    /* 3CA40 801C59B8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 3CA44 801C59BC 0800E003 */  jr         $ra
    /* 3CA48 801C59C0 00000000 */   nop
endlabel func_801C588C
