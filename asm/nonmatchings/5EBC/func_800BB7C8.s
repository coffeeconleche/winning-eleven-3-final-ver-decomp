nonmatching func_800BB7C8, 0x3A0

glabel func_800BB7C8
    /* ABFC8 800BB7C8 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* ABFCC 800BB7CC 21388000 */  addu       $a3, $a0, $zero
    /* ABFD0 800BB7D0 00140700 */  sll        $v0, $a3, 16
    /* ABFD4 800BB7D4 1180033C */  lui        $v1, %hi(D_8010C2A8)
    /* ABFD8 800BB7D8 A8C26324 */  addiu      $v1, $v1, %lo(D_8010C2A8)
    /* ABFDC 800BB7DC 83130200 */  sra        $v0, $v0, 14
    /* ABFE0 800BB7E0 2400B3AF */  sw         $s3, 0x24($sp)
    /* ABFE4 800BB7E4 21984300 */  addu       $s3, $v0, $v1
    /* ABFE8 800BB7E8 001C0500 */  sll        $v1, $a1, 16
    /* ABFEC 800BB7EC 031C0300 */  sra        $v1, $v1, 16
    /* ABFF0 800BB7F0 40100300 */  sll        $v0, $v1, 1
    /* ABFF4 800BB7F4 21104300 */  addu       $v0, $v0, $v1
    /* ABFF8 800BB7F8 80100200 */  sll        $v0, $v0, 2
    /* ABFFC 800BB7FC 23104300 */  subu       $v0, $v0, $v1
    /* AC000 800BB800 2000B2AF */  sw         $s2, 0x20($sp)
    /* AC004 800BB804 00910200 */  sll        $s2, $v0, 4
    /* AC008 800BB808 3000BFAF */  sw         $ra, 0x30($sp)
    /* AC00C 800BB80C 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* AC010 800BB810 2800B4AF */  sw         $s4, 0x28($sp)
    /* AC014 800BB814 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* AC018 800BB818 1800B0AF */  sw         $s0, 0x18($sp)
    /* AC01C 800BB81C 0000638E */  lw         $v1, 0x0($s3)
    /* AC020 800BB820 21A8E000 */  addu       $s5, $a3, $zero
    /* AC024 800BB824 21807200 */  addu       $s0, $v1, $s2
    /* AC028 800BB828 A000028E */  lw         $v0, 0xA0($s0)
    /* AC02C 800BB82C 21A0A000 */  addu       $s4, $a1, $zero
    /* AC030 800BB830 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* AC034 800BB834 04004104 */  bgez       $v0, .L800BB848
    /* AC038 800BB838 A00002AE */   sw        $v0, 0xA0($s0)
    /* AC03C 800BB83C 0000628E */  lw         $v0, 0x0($s3)
    /* AC040 800BB840 C6EE0208 */  j          .L800BBB18
    /* AC044 800BB844 21104202 */   addu      $v0, $s2, $v0
  .L800BB848:
    /* AC048 800BB848 4C000686 */  lh         $a2, 0x4C($s0)
    /* AC04C 800BB84C 4C000396 */  lhu        $v1, 0x4C($s0)
    /* AC050 800BB850 3600C018 */  blez       $a2, .L800BB92C
    /* AC054 800BB854 00000000 */   nop
    /* AC058 800BB858 1A004600 */  div        $zero, $v0, $a2
    /* AC05C 800BB85C 0200C014 */  bnez       $a2, .L800BB868
    /* AC060 800BB860 00000000 */   nop
    /* AC064 800BB864 0D000700 */  break      7
  .L800BB868:
    /* AC068 800BB868 FFFF0124 */  addiu      $at, $zero, -0x1
    /* AC06C 800BB86C 0400C114 */  bne        $a2, $at, .L800BB880
    /* AC070 800BB870 0080013C */   lui       $at, (0x80000000 >> 16)
    /* AC074 800BB874 02004114 */  bne        $v0, $at, .L800BB880
    /* AC078 800BB878 00000000 */   nop
    /* AC07C 800BB87C 0D000600 */  break      6
  .L800BB880:
    /* AC080 800BB880 10100000 */  mfhi       $v0
    /* AC084 800BB884 A9004014 */  bnez       $v0, .L800BBB2C
    /* AC088 800BB888 00221400 */   sll       $a0, $s4, 8
    /* AC08C 800BB88C 4A000296 */  lhu        $v0, 0x4A($s0)
    /* AC090 800BB890 00000000 */  nop
    /* AC094 800BB894 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* AC098 800BB898 4A0002A6 */  sh         $v0, 0x4A($s0)
    /* AC09C 800BB89C 00140200 */  sll        $v0, $v0, 16
    /* AC0A0 800BB8A0 79004004 */  bltz       $v0, .L800BBA88
    /* AC0A4 800BB8A4 00120500 */   sll       $v0, $a1, 8
    /* AC0A8 800BB8A8 2510E200 */  or         $v0, $a3, $v0
    /* AC0AC 800BB8AC 00140200 */  sll        $v0, $v0, 16
    /* AC0B0 800BB8B0 038C0200 */  sra        $s1, $v0, 16
    /* AC0B4 800BB8B4 21202002 */  addu       $a0, $s1, $zero
    /* AC0B8 800BB8B8 1000A527 */  addiu      $a1, $sp, 0x10
    /* AC0BC 800BB8BC 0F02030C */  jal        func_800C083C
    /* AC0C0 800BB8C0 1200A627 */   addiu     $a2, $sp, 0x12
    /* AC0C4 800BB8C4 1000A497 */  lhu        $a0, 0x10($sp)
    /* AC0C8 800BB8C8 4A000686 */  lh         $a2, 0x4A($s0)
    /* AC0CC 800BB8CC FFFF8524 */  addiu      $a1, $a0, -0x1
    /* AC0D0 800BB8D0 23108600 */  subu       $v0, $a0, $a2
    /* AC0D4 800BB8D4 2A10A200 */  slt        $v0, $a1, $v0
    /* AC0D8 800BB8D8 08004010 */  beqz       $v0, .L800BB8FC
    /* AC0DC 800BB8DC 00000000 */   nop
    /* AC0E0 800BB8E0 1200A297 */  lhu        $v0, 0x12($sp)
    /* AC0E4 800BB8E4 00000000 */  nop
    /* AC0E8 800BB8E8 FFFF4324 */  addiu      $v1, $v0, -0x1
    /* AC0EC 800BB8EC 23104600 */  subu       $v0, $v0, $a2
    /* AC0F0 800BB8F0 2A186200 */  slt        $v1, $v1, $v0
    /* AC0F4 800BB8F4 73006014 */  bnez       $v1, .L800BBAC4
    /* AC0F8 800BB8F8 00000000 */   nop
  .L800BB8FC:
    /* AC0FC 800BB8FC 05008010 */  beqz       $a0, .L800BB914
    /* AC100 800BB900 00000000 */   nop
    /* AC104 800BB904 1200A697 */  lhu        $a2, 0x12($sp)
    /* AC108 800BB908 00000000 */  nop
    /* AC10C 800BB90C 0400C014 */  bnez       $a2, .L800BB920
    /* AC110 800BB910 21202002 */   addu      $a0, $s1, $zero
  .L800BB914:
    /* AC114 800BB914 0000628E */  lw         $v0, 0x0($s3)
    /* AC118 800BB918 92EE0208 */  j          .L800BBA48
    /* AC11C 800BB91C 21104202 */   addu      $v0, $s2, $v0
  .L800BB920:
    /* AC120 800BB920 FFFFA530 */  andi       $a1, $a1, 0xFFFF
    /* AC124 800BB924 9DEE0208 */  j          .L800BBA74
    /* AC128 800BB928 FFFFC624 */   addiu     $a2, $a2, -0x1
  .L800BB92C:
    /* AC12C 800BB92C 7F00C104 */  bgez       $a2, .L800BBB2C
    /* AC130 800BB930 00221400 */   sll       $a0, $s4, 8
    /* AC134 800BB934 4A000296 */  lhu        $v0, 0x4A($s0)
    /* AC138 800BB938 00000000 */  nop
    /* AC13C 800BB93C 21104300 */  addu       $v0, $v0, $v1
    /* AC140 800BB940 4A0002A6 */  sh         $v0, 0x4A($s0)
    /* AC144 800BB944 00140200 */  sll        $v0, $v0, 16
    /* AC148 800BB948 4F004004 */  bltz       $v0, .L800BBA88
    /* AC14C 800BB94C 00120500 */   sll       $v0, $a1, 8
    /* AC150 800BB950 2510E200 */  or         $v0, $a3, $v0
    /* AC154 800BB954 00140200 */  sll        $v0, $v0, 16
    /* AC158 800BB958 038C0200 */  sra        $s1, $v0, 16
    /* AC15C 800BB95C 21202002 */  addu       $a0, $s1, $zero
    /* AC160 800BB960 1000A527 */  addiu      $a1, $sp, 0x10
    /* AC164 800BB964 0F02030C */  jal        func_800C083C
    /* AC168 800BB968 1200A627 */   addiu     $a2, $sp, 0x12
    /* AC16C 800BB96C 1000A297 */  lhu        $v0, 0x10($sp)
    /* AC170 800BB970 4C000386 */  lh         $v1, 0x4C($s0)
    /* AC174 800BB974 00000000 */  nop
    /* AC178 800BB978 21104300 */  addu       $v0, $v0, $v1
    /* AC17C 800BB97C 1100401C */  bgtz       $v0, .L800BB9C4
    /* AC180 800BB980 00000000 */   nop
    /* AC184 800BB984 1200A297 */  lhu        $v0, 0x12($sp)
    /* AC188 800BB988 00000000 */  nop
    /* AC18C 800BB98C 21104300 */  addu       $v0, $v0, $v1
    /* AC190 800BB990 0C00401C */  bgtz       $v0, .L800BB9C4
    /* AC194 800BB994 21202002 */   addu      $a0, $s1, $zero
    /* AC198 800BB998 21280000 */  addu       $a1, $zero, $zero
    /* AC19C 800BB99C 21300000 */  addu       $a2, $zero, $zero
    /* AC1A0 800BB9A0 AE00030C */  jal        func_800C02B8
    /* AC1A4 800BB9A4 01000724 */   addiu     $a3, $zero, 0x1
    /* AC1A8 800BB9A8 0000628E */  lw         $v0, 0x0($s3)
    /* AC1AC 800BB9AC 00000000 */  nop
    /* AC1B0 800BB9B0 21104202 */  addu       $v0, $s2, $v0
    /* AC1B4 800BB9B4 9800438C */  lw         $v1, 0x98($v0)
    /* AC1B8 800BB9B8 DFFF0424 */  addiu      $a0, $zero, -0x21
    /* AC1BC 800BB9BC 24186400 */  and        $v1, $v1, $a0
    /* AC1C0 800BB9C0 980043AC */  sw         $v1, 0x98($v0)
  .L800BB9C4:
    /* AC1C4 800BB9C4 9C00038E */  lw         $v1, 0x9C($s0)
    /* AC1C8 800BB9C8 A000048E */  lw         $a0, 0xA0($s0)
    /* AC1CC 800BB9CC 4C000286 */  lh         $v0, 0x4C($s0)
    /* AC1D0 800BB9D0 23186400 */  subu       $v1, $v1, $a0
    /* AC1D4 800BB9D4 23100200 */  negu       $v0, $v0
    /* AC1D8 800BB9D8 18006200 */  mult       $v1, $v0
    /* AC1DC 800BB9DC 48000286 */  lh         $v0, 0x48($s0)
    /* AC1E0 800BB9E0 4C000396 */  lhu        $v1, 0x4C($s0)
    /* AC1E4 800BB9E4 12400000 */  mflo       $t0
    /* AC1E8 800BB9E8 2A100201 */  slt        $v0, $t0, $v0
    /* AC1EC 800BB9EC 35004010 */  beqz       $v0, .L800BBAC4
    /* AC1F0 800BB9F0 00000000 */   nop
    /* AC1F4 800BB9F4 1000A597 */  lhu        $a1, 0x10($sp)
    /* AC1F8 800BB9F8 00000000 */  nop
    /* AC1FC 800BB9FC 0600A010 */  beqz       $a1, .L800BBA18
    /* AC200 800BBA00 00241500 */   sll       $a0, $s5, 16
    /* AC204 800BBA04 1200A697 */  lhu        $a2, 0x12($sp)
    /* AC208 800BBA08 00000000 */  nop
    /* AC20C 800BBA0C 1300C014 */  bnez       $a2, .L800BBA5C
    /* AC210 800BBA10 00221400 */   sll       $a0, $s4, 8
    /* AC214 800BBA14 00241500 */  sll        $a0, $s5, 16
  .L800BBA18:
    /* AC218 800BBA18 83230400 */  sra        $a0, $a0, 14
    /* AC21C 800BBA1C 001C1400 */  sll        $v1, $s4, 16
    /* AC220 800BBA20 031C0300 */  sra        $v1, $v1, 16
    /* AC224 800BBA24 40100300 */  sll        $v0, $v1, 1
    /* AC228 800BBA28 21104300 */  addu       $v0, $v0, $v1
    /* AC22C 800BBA2C 80100200 */  sll        $v0, $v0, 2
    /* AC230 800BBA30 23104300 */  subu       $v0, $v0, $v1
    /* AC234 800BBA34 1180033C */  lui        $v1, %hi(D_8010C2A8)
    /* AC238 800BBA38 21186400 */  addu       $v1, $v1, $a0
    /* AC23C 800BBA3C A8C2638C */  lw         $v1, %lo(D_8010C2A8)($v1)
    /* AC240 800BBA40 00110200 */  sll        $v0, $v0, 4
    /* AC244 800BBA44 21104300 */  addu       $v0, $v0, $v1
  .L800BBA48:
    /* AC248 800BBA48 9800438C */  lw         $v1, 0x98($v0)
    /* AC24C 800BBA4C DFFF0424 */  addiu      $a0, $zero, -0x21
    /* AC250 800BBA50 24186400 */  and        $v1, $v1, $a0
    /* AC254 800BBA54 B1EE0208 */  j          .L800BBAC4
    /* AC258 800BBA58 980043AC */   sw        $v1, 0x98($v0)
  .L800BBA5C:
    /* AC25C 800BBA5C 2520A402 */  or         $a0, $s5, $a0
    /* AC260 800BBA60 00240400 */  sll        $a0, $a0, 16
    /* AC264 800BBA64 03240400 */  sra        $a0, $a0, 16
    /* AC268 800BBA68 2128A300 */  addu       $a1, $a1, $v1
    /* AC26C 800BBA6C FFFFA530 */  andi       $a1, $a1, 0xFFFF
    /* AC270 800BBA70 2130C300 */  addu       $a2, $a2, $v1
  .L800BBA74:
    /* AC274 800BBA74 FFFFC630 */  andi       $a2, $a2, 0xFFFF
    /* AC278 800BBA78 AE00030C */  jal        func_800C02B8
    /* AC27C 800BBA7C 01000724 */   addiu     $a3, $zero, 0x1
    /* AC280 800BBA80 B1EE0208 */  j          .L800BBAC4
    /* AC284 800BBA84 00000000 */   nop
  .L800BBA88:
    /* AC288 800BBA88 00220500 */  sll        $a0, $a1, 8
    /* AC28C 800BBA8C 2520E400 */  or         $a0, $a3, $a0
    /* AC290 800BBA90 00240400 */  sll        $a0, $a0, 16
    /* AC294 800BBA94 03240400 */  sra        $a0, $a0, 16
    /* AC298 800BBA98 21280000 */  addu       $a1, $zero, $zero
    /* AC29C 800BBA9C 21300000 */  addu       $a2, $zero, $zero
    /* AC2A0 800BBAA0 AE00030C */  jal        func_800C02B8
    /* AC2A4 800BBAA4 01000724 */   addiu     $a3, $zero, 0x1
    /* AC2A8 800BBAA8 0000638E */  lw         $v1, 0x0($s3)
    /* AC2AC 800BBAAC 00000000 */  nop
    /* AC2B0 800BBAB0 21184302 */  addu       $v1, $s2, $v1
    /* AC2B4 800BBAB4 9800628C */  lw         $v0, 0x98($v1)
    /* AC2B8 800BBAB8 DFFF0424 */  addiu      $a0, $zero, -0x21
    /* AC2BC 800BBABC 24104400 */  and        $v0, $v0, $a0
    /* AC2C0 800BBAC0 980062AC */  sw         $v0, 0x98($v1)
  .L800BBAC4:
    /* AC2C4 800BBAC4 A000028E */  lw         $v0, 0xA0($s0)
    /* AC2C8 800BBAC8 00000000 */  nop
    /* AC2CC 800BBACC 06004010 */  beqz       $v0, .L800BBAE8
    /* AC2D0 800BBAD0 00241500 */   sll       $a0, $s5, 16
    /* AC2D4 800BBAD4 4A000286 */  lh         $v0, 0x4A($s0)
    /* AC2D8 800BBAD8 00000000 */  nop
    /* AC2DC 800BBADC 1300401C */  bgtz       $v0, .L800BBB2C
    /* AC2E0 800BBAE0 00221400 */   sll       $a0, $s4, 8
    /* AC2E4 800BBAE4 00241500 */  sll        $a0, $s5, 16
  .L800BBAE8:
    /* AC2E8 800BBAE8 83230400 */  sra        $a0, $a0, 14
    /* AC2EC 800BBAEC 001C1400 */  sll        $v1, $s4, 16
    /* AC2F0 800BBAF0 031C0300 */  sra        $v1, $v1, 16
    /* AC2F4 800BBAF4 40100300 */  sll        $v0, $v1, 1
    /* AC2F8 800BBAF8 21104300 */  addu       $v0, $v0, $v1
    /* AC2FC 800BBAFC 80100200 */  sll        $v0, $v0, 2
    /* AC300 800BBB00 23104300 */  subu       $v0, $v0, $v1
    /* AC304 800BBB04 1180033C */  lui        $v1, %hi(D_8010C2A8)
    /* AC308 800BBB08 21186400 */  addu       $v1, $v1, $a0
    /* AC30C 800BBB0C A8C2638C */  lw         $v1, %lo(D_8010C2A8)($v1)
    /* AC310 800BBB10 00110200 */  sll        $v0, $v0, 4
    /* AC314 800BBB14 21104300 */  addu       $v0, $v0, $v1
  .L800BBB18:
    /* AC318 800BBB18 9800438C */  lw         $v1, 0x98($v0)
    /* AC31C 800BBB1C DFFF0424 */  addiu      $a0, $zero, -0x21
    /* AC320 800BBB20 24186400 */  and        $v1, $v1, $a0
    /* AC324 800BBB24 980043AC */  sw         $v1, 0x98($v0)
    /* AC328 800BBB28 00221400 */  sll        $a0, $s4, 8
  .L800BBB2C:
    /* AC32C 800BBB2C 2520A402 */  or         $a0, $s5, $a0
    /* AC330 800BBB30 00240400 */  sll        $a0, $a0, 16
    /* AC334 800BBB34 03240400 */  sra        $a0, $a0, 16
    /* AC338 800BBB38 5C000526 */  addiu      $a1, $s0, 0x5C
    /* AC33C 800BBB3C 0F02030C */  jal        func_800C083C
    /* AC340 800BBB40 5E000626 */   addiu     $a2, $s0, 0x5E
    /* AC344 800BBB44 3000BF8F */  lw         $ra, 0x30($sp)
    /* AC348 800BBB48 2C00B58F */  lw         $s5, 0x2C($sp)
    /* AC34C 800BBB4C 2800B48F */  lw         $s4, 0x28($sp)
    /* AC350 800BBB50 2400B38F */  lw         $s3, 0x24($sp)
    /* AC354 800BBB54 2000B28F */  lw         $s2, 0x20($sp)
    /* AC358 800BBB58 1C00B18F */  lw         $s1, 0x1C($sp)
    /* AC35C 800BBB5C 1800B08F */  lw         $s0, 0x18($sp)
    /* AC360 800BBB60 0800E003 */  jr         $ra
    /* AC364 800BBB64 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_800BB7C8
