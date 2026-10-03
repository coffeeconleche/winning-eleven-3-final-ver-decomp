nonmatching func_800BBF78, 0x3AC

glabel func_800BBF78
    /* AC778 800BBF78 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* AC77C 800BBF7C 00140400 */  sll        $v0, $a0, 16
    /* AC780 800BBF80 034C0200 */  sra        $t1, $v0, 16
    /* AC784 800BBF84 1180023C */  lui        $v0, %hi(D_8010C2A8)
    /* AC788 800BBF88 A8C24224 */  addiu      $v0, $v0, %lo(D_8010C2A8)
    /* AC78C 800BBF8C 80300900 */  sll        $a2, $t1, 2
    /* AC790 800BBF90 2130C200 */  addu       $a2, $a2, $v0
    /* AC794 800BBF94 00140500 */  sll        $v0, $a1, 16
    /* AC798 800BBF98 03440200 */  sra        $t0, $v0, 16
    /* AC79C 800BBF9C 40100800 */  sll        $v0, $t0, 1
    /* AC7A0 800BBFA0 21104800 */  addu       $v0, $v0, $t0
    /* AC7A4 800BBFA4 80100200 */  sll        $v0, $v0, 2
    /* AC7A8 800BBFA8 23104800 */  subu       $v0, $v0, $t0
    /* AC7AC 800BBFAC 00110200 */  sll        $v0, $v0, 4
    /* AC7B0 800BBFB0 2800BFAF */  sw         $ra, 0x28($sp)
    /* AC7B4 800BBFB4 2400B5AF */  sw         $s5, 0x24($sp)
    /* AC7B8 800BBFB8 2000B4AF */  sw         $s4, 0x20($sp)
    /* AC7BC 800BBFBC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* AC7C0 800BBFC0 1800B2AF */  sw         $s2, 0x18($sp)
    /* AC7C4 800BBFC4 1400B1AF */  sw         $s1, 0x14($sp)
    /* AC7C8 800BBFC8 1000B0AF */  sw         $s0, 0x10($sp)
    /* AC7CC 800BBFCC 0000C38C */  lw         $v1, 0x0($a2)
    /* AC7D0 800BBFD0 00000000 */  nop
    /* AC7D4 800BBFD4 21986200 */  addu       $s3, $v1, $v0
    /* AC7D8 800BBFD8 0000678E */  lw         $a3, 0x0($s3)
    /* AC7DC 800BBFDC 00000000 */  nop
    /* AC7E0 800BBFE0 0000F290 */  lbu        $s2, 0x0($a3)
    /* AC7E4 800BBFE4 0100E724 */  addiu      $a3, $a3, 0x1
    /* AC7E8 800BBFE8 000067AE */  sw         $a3, 0x0($s3)
    /* AC7EC 800BBFEC 0000C38C */  lw         $v1, 0x0($a2)
    /* AC7F0 800BBFF0 00000000 */  nop
    /* AC7F4 800BBFF4 21104300 */  addu       $v0, $v0, $v1
    /* AC7F8 800BBFF8 9800428C */  lw         $v0, 0x98($v0)
    /* AC7FC 800BBFFC 01040324 */  addiu      $v1, $zero, 0x401
    /* AC800 800BC000 01044230 */  andi       $v0, $v0, 0x401
    /* AC804 800BC004 0C004314 */  bne        $v0, $v1, .L800BC038
    /* AC808 800BC008 21A80000 */   addu      $s5, $zero, $zero
    /* AC80C 800BC00C 1000638E */  lw         $v1, 0x10($s3)
    /* AC810 800BC010 00000000 */  nop
    /* AC814 800BC014 01006224 */  addiu      $v0, $v1, 0x1
    /* AC818 800BC018 0800E214 */  bne        $a3, $v0, .L800BC03C
    /* AC81C 800BC01C 80004232 */   andi      $v0, $s2, 0x80
    /* AC820 800BC020 21202001 */  addu       $a0, $t1, $zero
    /* AC824 800BC024 01006690 */  lbu        $a2, 0x1($v1)
    /* AC828 800BC028 4DEF020C */  jal        func_800BBD34
    /* AC82C 800BC02C 21280001 */   addu      $a1, $t0, $zero
    /* AC830 800BC030 C0F00208 */  j          .L800BC300
    /* AC834 800BC034 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800BC038:
    /* AC838 800BC038 80004232 */  andi       $v0, $s2, 0x80
  .L800BC03C:
    /* AC83C 800BC03C 57004010 */  beqz       $v0, .L800BC19C
    /* AC840 800BC040 0F004232 */   andi      $v0, $s2, 0xF
    /* AC844 800BC044 170062A2 */  sb         $v0, 0x17($s3)
    /* AC848 800BC048 F0004632 */  andi       $a2, $s2, 0xF0
    /* AC84C 800BC04C C0000224 */  addiu      $v0, $zero, 0xC0
    /* AC850 800BC050 3200C210 */  beq        $a2, $v0, .L800BC11C
    /* AC854 800BC054 C100C228 */   slti      $v0, $a2, 0xC1
    /* AC858 800BC058 07004010 */  beqz       $v0, .L800BC078
    /* AC85C 800BC05C 90000224 */   addiu     $v0, $zero, 0x90
    /* AC860 800BC060 0C00C210 */  beq        $a2, $v0, .L800BC094
    /* AC864 800BC064 B0000224 */   addiu     $v0, $zero, 0xB0
    /* AC868 800BC068 2000C210 */  beq        $a2, $v0, .L800BC0EC
    /* AC86C 800BC06C 2110A002 */   addu      $v0, $s5, $zero
    /* AC870 800BC070 C0F00208 */  j          .L800BC300
    /* AC874 800BC074 00000000 */   nop
  .L800BC078:
    /* AC878 800BC078 E0000224 */  addiu      $v0, $zero, 0xE0
    /* AC87C 800BC07C 3300C210 */  beq        $a2, $v0, .L800BC14C
    /* AC880 800BC080 F0000224 */   addiu     $v0, $zero, 0xF0
    /* AC884 800BC084 3900C210 */  beq        $a2, $v0, .L800BC16C
    /* AC888 800BC088 2110A002 */   addu      $v0, $s5, $zero
    /* AC88C 800BC08C C0F00208 */  j          .L800BC300
    /* AC890 800BC090 00000000 */   nop
  .L800BC094:
    /* AC894 800BC094 008C0400 */  sll        $s1, $a0, 16
    /* AC898 800BC098 038C1100 */  sra        $s1, $s1, 16
    /* AC89C 800BC09C 21202002 */  addu       $a0, $s1, $zero
    /* AC8A0 800BC0A0 00840500 */  sll        $s0, $a1, 16
    /* AC8A4 800BC0A4 03841000 */  sra        $s0, $s0, 16
    /* AC8A8 800BC0A8 0000628E */  lw         $v0, 0x0($s3)
    /* AC8AC 800BC0AC 21280002 */  addu       $a1, $s0, $zero
    /* AC8B0 800BC0B0 160066A2 */  sb         $a2, 0x16($s3)
    /* AC8B4 800BC0B4 00005290 */  lbu        $s2, 0x0($v0)
    /* AC8B8 800BC0B8 01004224 */  addiu      $v0, $v0, 0x1
    /* AC8BC 800BC0BC 000062AE */  sw         $v0, 0x0($s3)
    /* AC8C0 800BC0C0 00005490 */  lbu        $s4, 0x0($v0)
    /* AC8C4 800BC0C4 01004224 */  addiu      $v0, $v0, 0x1
    /* AC8C8 800BC0C8 CAF0020C */  jal        func_800BC328
    /* AC8CC 800BC0CC 000062AE */   sw        $v0, 0x0($s3)
    /* AC8D0 800BC0D0 21202002 */  addu       $a0, $s1, $zero
    /* AC8D4 800BC0D4 21280002 */  addu       $a1, $s0, $zero
    /* AC8D8 800BC0D8 900062AE */  sw         $v0, 0x90($s3)
    /* AC8DC 800BC0DC 0E80023C */  lui        $v0, %hi(D_800E7808)
    /* AC8E0 800BC0E0 0878428C */  lw         $v0, %lo(D_800E7808)($v0)
    /* AC8E4 800BC0E4 8CF00208 */  j          .L800BC230
    /* AC8E8 800BC0E8 21304002 */   addu      $a2, $s2, $zero
  .L800BC0EC:
    /* AC8EC 800BC0EC 00240400 */  sll        $a0, $a0, 16
    /* AC8F0 800BC0F0 03240400 */  sra        $a0, $a0, 16
    /* AC8F4 800BC0F4 002C0500 */  sll        $a1, $a1, 16
    /* AC8F8 800BC0F8 0000628E */  lw         $v0, 0x0($s3)
    /* AC8FC 800BC0FC 160066A2 */  sb         $a2, 0x16($s3)
    /* AC900 800BC100 00004690 */  lbu        $a2, 0x0($v0)
    /* AC904 800BC104 01004224 */  addiu      $v0, $v0, 0x1
    /* AC908 800BC108 000062AE */  sw         $v0, 0x0($s3)
    /* AC90C 800BC10C 0E80023C */  lui        $v0, %hi(D_800E7818)
    /* AC910 800BC110 1878428C */  lw         $v0, %lo(D_800E7818)($v0)
    /* AC914 800BC114 BDF00208 */  j          .L800BC2F4
    /* AC918 800BC118 032C0500 */   sra       $a1, $a1, 16
  .L800BC11C:
    /* AC91C 800BC11C 00240400 */  sll        $a0, $a0, 16
    /* AC920 800BC120 03240400 */  sra        $a0, $a0, 16
    /* AC924 800BC124 002C0500 */  sll        $a1, $a1, 16
    /* AC928 800BC128 0000628E */  lw         $v0, 0x0($s3)
    /* AC92C 800BC12C 160066A2 */  sb         $a2, 0x16($s3)
    /* AC930 800BC130 00004690 */  lbu        $a2, 0x0($v0)
    /* AC934 800BC134 01004224 */  addiu      $v0, $v0, 0x1
    /* AC938 800BC138 000062AE */  sw         $v0, 0x0($s3)
    /* AC93C 800BC13C 0E80023C */  lui        $v0, %hi(D_800E780C)
    /* AC940 800BC140 0C78428C */  lw         $v0, %lo(D_800E780C)($v0)
    /* AC944 800BC144 BDF00208 */  j          .L800BC2F4
    /* AC948 800BC148 032C0500 */   sra       $a1, $a1, 16
  .L800BC14C:
    /* AC94C 800BC14C 00240400 */  sll        $a0, $a0, 16
    /* AC950 800BC150 03240400 */  sra        $a0, $a0, 16
    /* AC954 800BC154 0000628E */  lw         $v0, 0x0($s3)
    /* AC958 800BC158 002C0500 */  sll        $a1, $a1, 16
    /* AC95C 800BC15C 160066A2 */  sb         $a2, 0x16($s3)
    /* AC960 800BC160 01004224 */  addiu      $v0, $v0, 0x1
    /* AC964 800BC164 A3F00208 */  j          .L800BC28C
    /* AC968 800BC168 000062AE */   sw        $v0, 0x0($s3)
  .L800BC16C:
    /* AC96C 800BC16C 0000628E */  lw         $v0, 0x0($s3)
    /* AC970 800BC170 FF000324 */  addiu      $v1, $zero, 0xFF
    /* AC974 800BC174 160063A2 */  sb         $v1, 0x16($s3)
    /* AC978 800BC178 00004690 */  lbu        $a2, 0x0($v0)
    /* AC97C 800BC17C 01004224 */  addiu      $v0, $v0, 0x1
    /* AC980 800BC180 000062AE */  sw         $v0, 0x0($s3)
    /* AC984 800BC184 2F000224 */  addiu      $v0, $zero, 0x2F
    /* AC988 800BC188 FF00C630 */  andi       $a2, $a2, 0xFF
    /* AC98C 800BC18C 4A00C210 */  beq        $a2, $v0, .L800BC2B8
    /* AC990 800BC190 00000000 */   nop
    /* AC994 800BC194 B8F00208 */  j          .L800BC2E0
    /* AC998 800BC198 00240400 */   sll       $a0, $a0, 16
  .L800BC19C:
    /* AC99C 800BC19C 16006392 */  lbu        $v1, 0x16($s3)
    /* AC9A0 800BC1A0 C0000224 */  addiu      $v0, $zero, 0xC0
    /* AC9A4 800BC1A4 2E006210 */  beq        $v1, $v0, .L800BC260
    /* AC9A8 800BC1A8 C1006228 */   slti      $v0, $v1, 0xC1
    /* AC9AC 800BC1AC 07004010 */  beqz       $v0, .L800BC1CC
    /* AC9B0 800BC1B0 90000224 */   addiu     $v0, $zero, 0x90
    /* AC9B4 800BC1B4 0C006210 */  beq        $v1, $v0, .L800BC1E8
    /* AC9B8 800BC1B8 B0000224 */   addiu     $v0, $zero, 0xB0
    /* AC9BC 800BC1BC 20006210 */  beq        $v1, $v0, .L800BC240
    /* AC9C0 800BC1C0 2110A002 */   addu      $v0, $s5, $zero
    /* AC9C4 800BC1C4 C0F00208 */  j          .L800BC300
    /* AC9C8 800BC1C8 00000000 */   nop
  .L800BC1CC:
    /* AC9CC 800BC1CC E0000224 */  addiu      $v0, $zero, 0xE0
    /* AC9D0 800BC1D0 2B006210 */  beq        $v1, $v0, .L800BC280
    /* AC9D4 800BC1D4 FF000224 */   addiu     $v0, $zero, 0xFF
    /* AC9D8 800BC1D8 33006210 */  beq        $v1, $v0, .L800BC2A8
    /* AC9DC 800BC1DC 2110A002 */   addu      $v0, $s5, $zero
    /* AC9E0 800BC1E0 C0F00208 */  j          .L800BC300
    /* AC9E4 800BC1E4 00000000 */   nop
  .L800BC1E8:
    /* AC9E8 800BC1E8 008C0400 */  sll        $s1, $a0, 16
    /* AC9EC 800BC1EC 038C1100 */  sra        $s1, $s1, 16
    /* AC9F0 800BC1F0 21202002 */  addu       $a0, $s1, $zero
    /* AC9F4 800BC1F4 00840500 */  sll        $s0, $a1, 16
    /* AC9F8 800BC1F8 03841000 */  sra        $s0, $s0, 16
    /* AC9FC 800BC1FC 0000628E */  lw         $v0, 0x0($s3)
    /* ACA00 800BC200 21280002 */  addu       $a1, $s0, $zero
    /* ACA04 800BC204 00005490 */  lbu        $s4, 0x0($v0)
    /* ACA08 800BC208 01004224 */  addiu      $v0, $v0, 0x1
    /* ACA0C 800BC20C CAF0020C */  jal        func_800BC328
    /* ACA10 800BC210 000062AE */   sw        $v0, 0x0($s3)
    /* ACA14 800BC214 21202002 */  addu       $a0, $s1, $zero
    /* ACA18 800BC218 21280002 */  addu       $a1, $s0, $zero
    /* ACA1C 800BC21C 21304002 */  addu       $a2, $s2, $zero
    /* ACA20 800BC220 900062AE */  sw         $v0, 0x90($s3)
    /* ACA24 800BC224 0E80023C */  lui        $v0, %hi(D_800E7808)
    /* ACA28 800BC228 0878428C */  lw         $v0, %lo(D_800E7808)($v0)
    /* ACA2C 800BC22C 00000000 */  nop
  .L800BC230:
    /* ACA30 800BC230 09F84000 */  jalr       $v0
    /* ACA34 800BC234 21388002 */   addu      $a3, $s4, $zero
    /* ACA38 800BC238 C0F00208 */  j          .L800BC300
    /* ACA3C 800BC23C 2110A002 */   addu      $v0, $s5, $zero
  .L800BC240:
    /* ACA40 800BC240 00240400 */  sll        $a0, $a0, 16
    /* ACA44 800BC244 03240400 */  sra        $a0, $a0, 16
    /* ACA48 800BC248 002C0500 */  sll        $a1, $a1, 16
    /* ACA4C 800BC24C 032C0500 */  sra        $a1, $a1, 16
    /* ACA50 800BC250 0E80023C */  lui        $v0, %hi(D_800E7818)
    /* ACA54 800BC254 1878428C */  lw         $v0, %lo(D_800E7818)($v0)
    /* ACA58 800BC258 BDF00208 */  j          .L800BC2F4
    /* ACA5C 800BC25C 21304002 */   addu      $a2, $s2, $zero
  .L800BC260:
    /* ACA60 800BC260 00240400 */  sll        $a0, $a0, 16
    /* ACA64 800BC264 03240400 */  sra        $a0, $a0, 16
    /* ACA68 800BC268 002C0500 */  sll        $a1, $a1, 16
    /* ACA6C 800BC26C 032C0500 */  sra        $a1, $a1, 16
    /* ACA70 800BC270 0E80023C */  lui        $v0, %hi(D_800E780C)
    /* ACA74 800BC274 0C78428C */  lw         $v0, %lo(D_800E780C)($v0)
    /* ACA78 800BC278 BDF00208 */  j          .L800BC2F4
    /* ACA7C 800BC27C 21304002 */   addu      $a2, $s2, $zero
  .L800BC280:
    /* ACA80 800BC280 00240400 */  sll        $a0, $a0, 16
    /* ACA84 800BC284 03240400 */  sra        $a0, $a0, 16
    /* ACA88 800BC288 002C0500 */  sll        $a1, $a1, 16
  .L800BC28C:
    /* ACA8C 800BC28C 0E80023C */  lui        $v0, %hi(D_800E7810)
    /* ACA90 800BC290 1078428C */  lw         $v0, %lo(D_800E7810)($v0)
    /* ACA94 800BC294 00000000 */  nop
    /* ACA98 800BC298 09F84000 */  jalr       $v0
    /* ACA9C 800BC29C 032C0500 */   sra       $a1, $a1, 16
    /* ACAA0 800BC2A0 C0F00208 */  j          .L800BC300
    /* ACAA4 800BC2A4 2110A002 */   addu      $v0, $s5, $zero
  .L800BC2A8:
    /* ACAA8 800BC2A8 FF004632 */  andi       $a2, $s2, 0xFF
    /* ACAAC 800BC2AC 2F000224 */  addiu      $v0, $zero, 0x2F
    /* ACAB0 800BC2B0 0A00C214 */  bne        $a2, $v0, .L800BC2DC
    /* ACAB4 800BC2B4 00000000 */   nop
  .L800BC2B8:
    /* ACAB8 800BC2B8 01001524 */  addiu      $s5, $zero, 0x1
    /* ACABC 800BC2BC 00240400 */  sll        $a0, $a0, 16
    /* ACAC0 800BC2C0 03240400 */  sra        $a0, $a0, 16
    /* ACAC4 800BC2C4 002C0500 */  sll        $a1, $a1, 16
    /* ACAC8 800BC2C8 032C0500 */  sra        $a1, $a1, 16
    /* ACACC 800BC2CC 4DEF020C */  jal        func_800BBD34
    /* ACAD0 800BC2D0 2F000624 */   addiu     $a2, $zero, 0x2F
    /* ACAD4 800BC2D4 C0F00208 */  j          .L800BC300
    /* ACAD8 800BC2D8 2110A002 */   addu      $v0, $s5, $zero
  .L800BC2DC:
    /* ACADC 800BC2DC 00240400 */  sll        $a0, $a0, 16
  .L800BC2E0:
    /* ACAE0 800BC2E0 03240400 */  sra        $a0, $a0, 16
    /* ACAE4 800BC2E4 002C0500 */  sll        $a1, $a1, 16
    /* ACAE8 800BC2E8 0E80023C */  lui        $v0, %hi(D_800E7814)
    /* ACAEC 800BC2EC 1478428C */  lw         $v0, %lo(D_800E7814)($v0)
    /* ACAF0 800BC2F0 032C0500 */  sra        $a1, $a1, 16
  .L800BC2F4:
    /* ACAF4 800BC2F4 09F84000 */  jalr       $v0
    /* ACAF8 800BC2F8 00000000 */   nop
    /* ACAFC 800BC2FC 2110A002 */  addu       $v0, $s5, $zero
  .L800BC300:
    /* ACB00 800BC300 2800BF8F */  lw         $ra, 0x28($sp)
    /* ACB04 800BC304 2400B58F */  lw         $s5, 0x24($sp)
    /* ACB08 800BC308 2000B48F */  lw         $s4, 0x20($sp)
    /* ACB0C 800BC30C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* ACB10 800BC310 1800B28F */  lw         $s2, 0x18($sp)
    /* ACB14 800BC314 1400B18F */  lw         $s1, 0x14($sp)
    /* ACB18 800BC318 1000B08F */  lw         $s0, 0x10($sp)
    /* ACB1C 800BC31C 0800E003 */  jr         $ra
    /* ACB20 800BC320 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_800BBF78
    /* ACB24 800BC324 00000000 */  nop
