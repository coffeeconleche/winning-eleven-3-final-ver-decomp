nonmatching func_801C3888, 0x1E4

glabel func_801C3888
    /* 3A910 801C3888 1180023C */  lui        $v0, %hi(D_8010A5B1)
    /* 3A914 801C388C B1A54290 */  lbu        $v0, %lo(D_8010A5B1)($v0)
    /* 3A918 801C3890 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3A91C 801C3894 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3A920 801C3898 21908000 */  addu       $s2, $a0, $zero
    /* 3A924 801C389C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3A928 801C38A0 6A001024 */  addiu      $s0, $zero, 0x6A
    /* 3A92C 801C38A4 2400BFAF */  sw         $ra, 0x24($sp)
    /* 3A930 801C38A8 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3A934 801C38AC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3A938 801C38B0 0C004230 */  andi       $v0, $v0, 0xC
    /* 3A93C 801C38B4 02004010 */  beqz       $v0, .L801C38C0
    /* 3A940 801C38B8 1400B1AF */   sw        $s1, 0x14($sp)
    /* 3A944 801C38BC 91001024 */  addiu      $s0, $zero, 0x91
  .L801C38C0:
    /* 3A948 801C38C0 0174000C */  jal        func_8001D004
    /* 3A94C 801C38C4 01700424 */   addiu     $a0, $zero, 0x7001
    /* 3A950 801C38C8 21204000 */  addu       $a0, $v0, $zero
    /* 3A954 801C38CC 21980000 */  addu       $s3, $zero, $zero
    /* 3A958 801C38D0 160090A0 */  sb         $s0, 0x16($a0)
    /* 3A95C 801C38D4 0A0090A0 */  sb         $s0, 0xA($a0)
  .L801C38D8:
    /* 3A960 801C38D8 FF006432 */  andi       $a0, $s3, 0xFF
    /* 3A964 801C38DC 0174000C */  jal        func_8001D004
    /* 3A968 801C38E0 04708424 */   addiu     $a0, $a0, 0x7004
    /* 3A96C 801C38E4 21204000 */  addu       $a0, $v0, $zero
    /* 3A970 801C38E8 21880000 */  addu       $s1, $zero, $zero
  .L801C38EC:
    /* 3A974 801C38EC FF002232 */  andi       $v0, $s1, 0xFF
    /* 3A978 801C38F0 40180200 */  sll        $v1, $v0, 1
    /* 3A97C 801C38F4 21186200 */  addu       $v1, $v1, $v0
    /* 3A980 801C38F8 80180300 */  sll        $v1, $v1, 2
    /* 3A984 801C38FC 21186400 */  addu       $v1, $v1, $a0
    /* 3A988 801C3900 01003126 */  addiu      $s1, $s1, 0x1
    /* 3A98C 801C3904 FF002232 */  andi       $v0, $s1, 0xFF
    /* 3A990 801C3908 0600422C */  sltiu      $v0, $v0, 0x6
    /* 3A994 801C390C F7FF4014 */  bnez       $v0, .L801C38EC
    /* 3A998 801C3910 0A0070A0 */   sb        $s0, 0xA($v1)
    /* 3A99C 801C3914 01007326 */  addiu      $s3, $s3, 0x1
    /* 3A9A0 801C3918 FF006232 */  andi       $v0, $s3, 0xFF
    /* 3A9A4 801C391C 0800422C */  sltiu      $v0, $v0, 0x8
    /* 3A9A8 801C3920 EDFF4014 */  bnez       $v0, .L801C38D8
    /* 3A9AC 801C3924 FF004232 */   andi      $v0, $s2, 0xFF
    /* 3A9B0 801C3928 0900422C */  sltiu      $v0, $v0, 0x9
    /* 3A9B4 801C392C 1A004010 */  beqz       $v0, .L801C3998
    /* 3A9B8 801C3930 00161200 */   sll       $v0, $s2, 24
    /* 3A9BC 801C3934 03160200 */  sra        $v0, $v0, 24
    /* 3A9C0 801C3938 08004014 */  bnez       $v0, .L801C395C
    /* 3A9C4 801C393C 00000000 */   nop
    /* 3A9C8 801C3940 0174000C */  jal        func_8001D004
    /* 3A9CC 801C3944 01700424 */   addiu     $a0, $zero, 0x7001
    /* 3A9D0 801C3948 21204000 */  addu       $a0, $v0, $zero
    /* 3A9D4 801C394C 69000224 */  addiu      $v0, $zero, 0x69
    /* 3A9D8 801C3950 160082A0 */  sb         $v0, 0x16($a0)
    /* 3A9DC 801C3954 660E0708 */  j          .L801C3998
    /* 3A9E0 801C3958 0A0082A0 */   sb        $v0, 0xA($a0)
  .L801C395C:
    /* 3A9E4 801C395C 0174000C */  jal        func_8001D004
    /* 3A9E8 801C3960 03704424 */   addiu     $a0, $v0, 0x7003
    /* 3A9EC 801C3964 21204000 */  addu       $a0, $v0, $zero
    /* 3A9F0 801C3968 21980000 */  addu       $s3, $zero, $zero
    /* 3A9F4 801C396C 69000524 */  addiu      $a1, $zero, 0x69
  .L801C3970:
    /* 3A9F8 801C3970 FF006232 */  andi       $v0, $s3, 0xFF
    /* 3A9FC 801C3974 40180200 */  sll        $v1, $v0, 1
    /* 3AA00 801C3978 21186200 */  addu       $v1, $v1, $v0
    /* 3AA04 801C397C 80180300 */  sll        $v1, $v1, 2
    /* 3AA08 801C3980 21186400 */  addu       $v1, $v1, $a0
    /* 3AA0C 801C3984 01007326 */  addiu      $s3, $s3, 0x1
    /* 3AA10 801C3988 FF006232 */  andi       $v0, $s3, 0xFF
    /* 3AA14 801C398C 0600422C */  sltiu      $v0, $v0, 0x6
    /* 3AA18 801C3990 F7FF4014 */  bnez       $v0, .L801C3970
    /* 3AA1C 801C3994 0A0065A0 */   sb        $a1, 0xA($v1)
  .L801C3998:
    /* 3AA20 801C3998 0174000C */  jal        func_8001D004
    /* 3AA24 801C399C 02700424 */   addiu     $a0, $zero, 0x7002
    /* 3AA28 801C39A0 21204000 */  addu       $a0, $v0, $zero
    /* 3AA2C 801C39A4 00161200 */  sll        $v0, $s2, 24
    /* 3AA30 801C39A8 04004014 */  bnez       $v0, .L801C39BC
    /* 3AA34 801C39AC C4000224 */   addiu     $v0, $zero, 0xC4
    /* 3AA38 801C39B0 0A0082A0 */  sb         $v0, 0xA($a0)
    /* 3AA3C 801C39B4 720E0708 */  j          .L801C39C8
    /* 3AA40 801C39B8 AEFF0224 */   addiu     $v0, $zero, -0x52
  .L801C39BC:
    /* 3AA44 801C39BC C5000224 */  addiu      $v0, $zero, 0xC5
    /* 3AA48 801C39C0 0A0082A0 */  sb         $v0, 0xA($a0)
    /* 3AA4C 801C39C4 AFFF0224 */  addiu      $v0, $zero, -0x51
  .L801C39C8:
    /* 3AA50 801C39C8 080082A4 */  sh         $v0, 0x8($a0)
    /* 3AA54 801C39CC 01001324 */  addiu      $s3, $zero, 0x1
    /* 3AA58 801C39D0 00161200 */  sll        $v0, $s2, 24
    /* 3AA5C 801C39D4 03A60200 */  sra        $s4, $v0, 24
    /* 3AA60 801C39D8 FF006432 */  andi       $a0, $s3, 0xFF
  .L801C39DC:
    /* 3AA64 801C39DC 02009414 */  bne        $a0, $s4, .L801C39E8
    /* 3AA68 801C39E0 C5001124 */   addiu     $s1, $zero, 0xC5
    /* 3AA6C 801C39E4 C4001124 */  addiu      $s1, $zero, 0xC4
  .L801C39E8:
    /* 3AA70 801C39E8 C0100400 */  sll        $v0, $a0, 3
    /* 3AA74 801C39EC 23104400 */  subu       $v0, $v0, $a0
    /* 3AA78 801C39F0 40100200 */  sll        $v0, $v0, 1
    /* 3AA7C 801C39F4 B4FF0334 */  ori        $v1, $zero, 0xFFB4
    /* 3AA80 801C39F8 03009414 */  bne        $a0, $s4, .L801C3A08
    /* 3AA84 801C39FC 21104300 */   addu      $v0, $v0, $v1
    /* 3AA88 801C3A00 830E0708 */  j          .L801C3A0C
    /* 3AA8C 801C3A04 FFFF5224 */   addiu     $s2, $v0, -0x1
  .L801C3A08:
    /* 3AA90 801C3A08 21904000 */  addu       $s2, $v0, $zero
  .L801C3A0C:
    /* 3AA94 801C3A0C FF007032 */  andi       $s0, $s3, 0xFF
    /* 3AA98 801C3A10 0174000C */  jal        func_8001D004
    /* 3AA9C 801C3A14 0B700426 */   addiu     $a0, $s0, 0x700B
    /* 3AAA0 801C3A18 21204000 */  addu       $a0, $v0, $zero
    /* 3AAA4 801C3A1C 0500102E */  sltiu      $s0, $s0, 0x5
    /* 3AAA8 801C3A20 0A0091A0 */  sb         $s1, 0xA($a0)
    /* 3AAAC 801C3A24 03000012 */  beqz       $s0, .L801C3A34
    /* 3AAB0 801C3A28 080092A4 */   sh        $s2, 0x8($a0)
    /* 3AAB4 801C3A2C 160091A0 */  sb         $s1, 0x16($a0)
    /* 3AAB8 801C3A30 140092A4 */  sh         $s2, 0x14($a0)
  .L801C3A34:
    /* 3AABC 801C3A34 01007326 */  addiu      $s3, $s3, 0x1
    /* 3AAC0 801C3A38 FF006232 */  andi       $v0, $s3, 0xFF
    /* 3AAC4 801C3A3C 0900422C */  sltiu      $v0, $v0, 0x9
    /* 3AAC8 801C3A40 E6FF4014 */  bnez       $v0, .L801C39DC
    /* 3AACC 801C3A44 FF006432 */   andi      $a0, $s3, 0xFF
    /* 3AAD0 801C3A48 2400BF8F */  lw         $ra, 0x24($sp)
    /* 3AAD4 801C3A4C 2000B48F */  lw         $s4, 0x20($sp)
    /* 3AAD8 801C3A50 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3AADC 801C3A54 1800B28F */  lw         $s2, 0x18($sp)
    /* 3AAE0 801C3A58 1400B18F */  lw         $s1, 0x14($sp)
    /* 3AAE4 801C3A5C 1000B08F */  lw         $s0, 0x10($sp)
    /* 3AAE8 801C3A60 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3AAEC 801C3A64 0800E003 */  jr         $ra
    /* 3AAF0 801C3A68 00000000 */   nop
endlabel func_801C3888
