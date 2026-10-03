nonmatching func_800BF758, 0x580

glabel func_800BF758
    /* AFF58 800BF758 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* AFF5C 800BF75C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* AFF60 800BF760 21988000 */  addu       $s3, $a0, $zero
    /* AFF64 800BF764 0F80023C */  lui        $v0, %hi(D_800F20AC)
    /* AFF68 800BF768 AC20428C */  lw         $v0, %lo(D_800F20AC)($v0)
    /* AFF6C 800BF76C 1180083C */  lui        $t0, %hi(D_8010A3DE)
    /* AFF70 800BF770 DEA30825 */  addiu      $t0, $t0, %lo(D_8010A3DE)
    /* AFF74 800BF774 2000BFAF */  sw         $ra, 0x20($sp)
    /* AFF78 800BF778 1800B2AF */  sw         $s2, 0x18($sp)
    /* AFF7C 800BF77C 1400B1AF */  sw         $s1, 0x14($sp)
    /* AFF80 800BF780 1000B0AF */  sw         $s0, 0x10($sp)
    /* AFF84 800BF784 18004490 */  lbu        $a0, 0x18($v0)
    /* AFF88 800BF788 EEFF0381 */  lb         $v1, -0x12($t0)
    /* AFF8C 800BF78C 80130400 */  sll        $v0, $a0, 14
    /* AFF90 800BF790 23104400 */  subu       $v0, $v0, $a0
    /* AFF94 800BF794 18006200 */  mult       $v1, $v0
    /* AFF98 800BF798 12180000 */  mflo       $v1
    /* AFF9C 800BF79C 0682023C */  lui        $v0, (0x82061029 >> 16)
    /* AFFA0 800BF7A0 29104234 */  ori        $v0, $v0, (0x82061029 & 0xFFFF)
    /* AFFA4 800BF7A4 18006200 */  mult       $v1, $v0
    /* AFFA8 800BF7A8 F4FF0481 */  lb         $a0, -0xC($t0)
    /* AFFAC 800BF7AC 10280000 */  mfhi       $a1
    /* AFFB0 800BF7B0 2110A300 */  addu       $v0, $a1, $v1
    /* AFFB4 800BF7B4 43130200 */  sra        $v0, $v0, 13
    /* AFFB8 800BF7B8 C31F0300 */  sra        $v1, $v1, 31
    /* AFFBC 800BF7BC 23384300 */  subu       $a3, $v0, $v1
    /* AFFC0 800BF7C0 1800E400 */  mult       $a3, $a0
    /* AFFC4 800BF7C4 12180000 */  mflo       $v1
    /* AFFC8 800BF7C8 F7FF0281 */  lb         $v0, -0x9($t0)
    /* AFFCC 800BF7CC 00000000 */  nop
    /* AFFD0 800BF7D0 18006200 */  mult       $v1, $v0
    /* AFFD4 800BF7D4 12100000 */  mflo       $v0
    /* AFFD8 800BF7D8 0C04033C */  lui        $v1, (0x40C2051 >> 16)
    /* AFFDC 800BF7DC 51206334 */  ori        $v1, $v1, (0x40C2051 & 0xFFFF)
    /* AFFE0 800BF7E0 19004300 */  multu      $v0, $v1
    /* AFFE4 800BF7E4 00000495 */  lhu        $a0, 0x0($t0)
    /* AFFE8 800BF7E8 00000000 */  nop
    /* AFFEC 800BF7EC FF008530 */  andi       $a1, $a0, 0xFF
    /* AFFF0 800BF7F0 80280500 */  sll        $a1, $a1, 2
    /* AFFF4 800BF7F4 00240400 */  sll        $a0, $a0, 16
    /* AFFF8 800BF7F8 03240400 */  sra        $a0, $a0, 16
    /* AFFFC 800BF7FC 10180000 */  mfhi       $v1
    /* B0000 800BF800 23104300 */  subu       $v0, $v0, $v1
    /* B0004 800BF804 42100200 */  srl        $v0, $v0, 1
    /* B0008 800BF808 21186200 */  addu       $v1, $v1, $v0
    /* B000C 800BF80C 42330300 */  srl        $a2, $v1, 13
    /* B0010 800BF810 00FF8330 */  andi       $v1, $a0, 0xFF00
    /* B0014 800BF814 031A0300 */  sra        $v1, $v1, 8
    /* B0018 800BF818 40100300 */  sll        $v0, $v1, 1
    /* B001C 800BF81C 21104300 */  addu       $v0, $v0, $v1
    /* B0020 800BF820 80100200 */  sll        $v0, $v0, 2
    /* B0024 800BF824 23104300 */  subu       $v0, $v0, $v1
    /* B0028 800BF828 1180033C */  lui        $v1, %hi(D_8010C2A8)
    /* B002C 800BF82C 21186500 */  addu       $v1, $v1, $a1
    /* B0030 800BF830 A8C2638C */  lw         $v1, %lo(D_8010C2A8)($v1)
    /* B0034 800BF834 00110200 */  sll        $v0, $v0, 4
    /* B0038 800BF838 21186200 */  addu       $v1, $v1, $v0
    /* B003C 800BF83C 21000224 */  addiu      $v0, $zero, 0x21
    /* B0040 800BF840 19008210 */  beq        $a0, $v0, .L800BF8A8
    /* B0044 800BF844 2138C000 */   addu      $a3, $a2, $zero
    /* B0048 800BF848 58006294 */  lhu        $v0, 0x58($v1)
    /* B004C 800BF84C 00000000 */  nop
    /* B0050 800BF850 1800C200 */  mult       $a2, $v0
    /* B0054 800BF854 12100000 */  mflo       $v0
    /* B0058 800BF858 5A006394 */  lhu        $v1, 0x5A($v1)
    /* B005C 800BF85C 00000000 */  nop
    /* B0060 800BF860 1800C300 */  mult       $a2, $v1
    /* B0064 800BF864 12180000 */  mflo       $v1
    /* B0068 800BF868 0402043C */  lui        $a0, (0x2040811 >> 16)
    /* B006C 800BF86C 11088434 */  ori        $a0, $a0, (0x2040811 & 0xFFFF)
    /* B0070 800BF870 19004400 */  multu      $v0, $a0
    /* B0074 800BF874 10280000 */  mfhi       $a1
    /* B0078 800BF878 00000000 */  nop
    /* B007C 800BF87C 00000000 */  nop
    /* B0080 800BF880 19006400 */  multu      $v1, $a0
    /* B0084 800BF884 23104500 */  subu       $v0, $v0, $a1
    /* B0088 800BF888 42100200 */  srl        $v0, $v0, 1
    /* B008C 800BF88C 2128A200 */  addu       $a1, $a1, $v0
    /* B0090 800BF890 82390500 */  srl        $a3, $a1, 6
    /* B0094 800BF894 10200000 */  mfhi       $a0
    /* B0098 800BF898 23186400 */  subu       $v1, $v1, $a0
    /* B009C 800BF89C 42180300 */  srl        $v1, $v1, 1
    /* B00A0 800BF8A0 21208300 */  addu       $a0, $a0, $v1
    /* B00A4 800BF8A4 82310400 */  srl        $a2, $a0, 6
  .L800BF8A8:
    /* B00A8 800BF8A8 F8FF0481 */  lb         $a0, -0x8($t0)
    /* B00AC 800BF8AC 00000000 */  nop
    /* B00B0 800BF8B0 4000822C */  sltiu      $v0, $a0, 0x40
    /* B00B4 800BF8B4 0C004010 */  beqz       $v0, .L800BF8E8
    /* B00B8 800BF8B8 1800C400 */   mult      $a2, $a0
    /* B00BC 800BF8BC 12100000 */  mflo       $v0
    /* B00C0 800BF8C0 1004033C */  lui        $v1, (0x4104105 >> 16)
    /* B00C4 800BF8C4 05416334 */  ori        $v1, $v1, (0x4104105 & 0xFFFF)
    /* B00C8 800BF8C8 19004300 */  multu      $v0, $v1
    /* B00CC 800BF8CC 2190E000 */  addu       $s2, $a3, $zero
    /* B00D0 800BF8D0 10180000 */  mfhi       $v1
    /* B00D4 800BF8D4 23104300 */  subu       $v0, $v0, $v1
    /* B00D8 800BF8D8 42100200 */  srl        $v0, $v0, 1
    /* B00DC 800BF8DC 21186200 */  addu       $v1, $v1, $v0
    /* B00E0 800BF8E0 47FE0208 */  j          .L800BF91C
    /* B00E4 800BF8E4 42890300 */   srl       $s1, $v1, 5
  .L800BF8E8:
    /* B00E8 800BF8E8 7F000224 */  addiu      $v0, $zero, 0x7F
    /* B00EC 800BF8EC 23104400 */  subu       $v0, $v0, $a0
    /* B00F0 800BF8F0 1800E200 */  mult       $a3, $v0
    /* B00F4 800BF8F4 12100000 */  mflo       $v0
    /* B00F8 800BF8F8 1004033C */  lui        $v1, (0x4104105 >> 16)
    /* B00FC 800BF8FC 05416334 */  ori        $v1, $v1, (0x4104105 & 0xFFFF)
    /* B0100 800BF900 19004300 */  multu      $v0, $v1
    /* B0104 800BF904 2188C000 */  addu       $s1, $a2, $zero
    /* B0108 800BF908 10180000 */  mfhi       $v1
    /* B010C 800BF90C 23104300 */  subu       $v0, $v0, $v1
    /* B0110 800BF910 42100200 */  srl        $v0, $v0, 1
    /* B0114 800BF914 21186200 */  addu       $v1, $v1, $v0
    /* B0118 800BF918 42910300 */  srl        $s2, $v1, 5
  .L800BF91C:
    /* B011C 800BF91C 1180043C */  lui        $a0, %hi(D_8010A3D3)
    /* B0120 800BF920 D3A38480 */  lb         $a0, %lo(D_8010A3D3)($a0)
    /* B0124 800BF924 00000000 */  nop
    /* B0128 800BF928 4000822C */  sltiu      $v0, $a0, 0x40
    /* B012C 800BF92C 0B004010 */  beqz       $v0, .L800BF95C
    /* B0130 800BF930 18002402 */   mult      $s1, $a0
    /* B0134 800BF934 12100000 */  mflo       $v0
    /* B0138 800BF938 1004033C */  lui        $v1, (0x4104105 >> 16)
    /* B013C 800BF93C 05416334 */  ori        $v1, $v1, (0x4104105 & 0xFFFF)
    /* B0140 800BF940 19004300 */  multu      $v0, $v1
    /* B0144 800BF944 10180000 */  mfhi       $v1
    /* B0148 800BF948 23104300 */  subu       $v0, $v0, $v1
    /* B014C 800BF94C 42100200 */  srl        $v0, $v0, 1
    /* B0150 800BF950 21186200 */  addu       $v1, $v1, $v0
    /* B0154 800BF954 63FE0208 */  j          .L800BF98C
    /* B0158 800BF958 42890300 */   srl       $s1, $v1, 5
  .L800BF95C:
    /* B015C 800BF95C 7F000224 */  addiu      $v0, $zero, 0x7F
    /* B0160 800BF960 23104400 */  subu       $v0, $v0, $a0
    /* B0164 800BF964 18004202 */  mult       $s2, $v0
    /* B0168 800BF968 12100000 */  mflo       $v0
    /* B016C 800BF96C 1004033C */  lui        $v1, (0x4104105 >> 16)
    /* B0170 800BF970 05416334 */  ori        $v1, $v1, (0x4104105 & 0xFFFF)
    /* B0174 800BF974 19004300 */  multu      $v0, $v1
    /* B0178 800BF978 10180000 */  mfhi       $v1
    /* B017C 800BF97C 23104300 */  subu       $v0, $v0, $v1
    /* B0180 800BF980 42100200 */  srl        $v0, $v0, 1
    /* B0184 800BF984 21186200 */  addu       $v1, $v1, $v0
    /* B0188 800BF988 42910300 */  srl        $s2, $v1, 5
  .L800BF98C:
    /* B018C 800BF98C 1180043C */  lui        $a0, %hi(D_8010A3CD)
    /* B0190 800BF990 CDA38480 */  lb         $a0, %lo(D_8010A3CD)($a0)
    /* B0194 800BF994 00000000 */  nop
    /* B0198 800BF998 4000822C */  sltiu      $v0, $a0, 0x40
    /* B019C 800BF99C 0B004010 */  beqz       $v0, .L800BF9CC
    /* B01A0 800BF9A0 18009100 */   mult      $a0, $s1
    /* B01A4 800BF9A4 12100000 */  mflo       $v0
    /* B01A8 800BF9A8 1004033C */  lui        $v1, (0x4104105 >> 16)
    /* B01AC 800BF9AC 05416334 */  ori        $v1, $v1, (0x4104105 & 0xFFFF)
    /* B01B0 800BF9B0 19004300 */  multu      $v0, $v1
    /* B01B4 800BF9B4 10180000 */  mfhi       $v1
    /* B01B8 800BF9B8 23104300 */  subu       $v0, $v0, $v1
    /* B01BC 800BF9BC 42100200 */  srl        $v0, $v0, 1
    /* B01C0 800BF9C0 21186200 */  addu       $v1, $v1, $v0
    /* B01C4 800BF9C4 7FFE0208 */  j          .L800BF9FC
    /* B01C8 800BF9C8 42890300 */   srl       $s1, $v1, 5
  .L800BF9CC:
    /* B01CC 800BF9CC 7F000224 */  addiu      $v0, $zero, 0x7F
    /* B01D0 800BF9D0 23104400 */  subu       $v0, $v0, $a0
    /* B01D4 800BF9D4 18004202 */  mult       $s2, $v0
    /* B01D8 800BF9D8 12100000 */  mflo       $v0
    /* B01DC 800BF9DC 1004033C */  lui        $v1, (0x4104105 >> 16)
    /* B01E0 800BF9E0 05416334 */  ori        $v1, $v1, (0x4104105 & 0xFFFF)
    /* B01E4 800BF9E4 19004300 */  multu      $v0, $v1
    /* B01E8 800BF9E8 10180000 */  mfhi       $v1
    /* B01EC 800BF9EC 23104300 */  subu       $v0, $v0, $v1
    /* B01F0 800BF9F0 42100200 */  srl        $v0, $v0, 1
    /* B01F4 800BF9F4 21186200 */  addu       $v1, $v1, $v0
    /* B01F8 800BF9F8 42910300 */  srl        $s2, $v1, 5
  .L800BF9FC:
    /* B01FC 800BF9FC 0F80033C */  lui        $v1, %hi(D_800F0F70)
    /* B0200 800BFA00 700F6384 */  lh         $v1, %lo(D_800F0F70)($v1)
    /* B0204 800BFA04 01000224 */  addiu      $v0, $zero, 0x1
    /* B0208 800BFA08 06006214 */  bne        $v1, $v0, .L800BFA24
    /* B020C 800BFA0C 2B105102 */   sltu      $v0, $s2, $s1
    /* B0210 800BFA10 03004010 */  beqz       $v0, .L800BFA20
    /* B0214 800BFA14 00000000 */   nop
    /* B0218 800BFA18 89FE0208 */  j          .L800BFA24
    /* B021C 800BFA1C 21902002 */   addu      $s2, $s1, $zero
  .L800BFA20:
    /* B0220 800BFA20 21884002 */  addu       $s1, $s2, $zero
  .L800BFA24:
    /* B0224 800BFA24 1180063C */  lui        $a2, %hi(D_8010A3DE)
    /* B0228 800BFA28 DEA3C624 */  addiu      $a2, $a2, %lo(D_8010A3DE)
    /* B022C 800BFA2C 0000C384 */  lh         $v1, 0x0($a2)
    /* B0230 800BFA30 21000224 */  addiu      $v0, $zero, 0x21
    /* B0234 800BFA34 16006210 */  beq        $v1, $v0, .L800BFA90
    /* B0238 800BFA38 18005202 */   mult      $s2, $s2
    /* B023C 800BFA3C 12200000 */  mflo       $a0
    /* B0240 800BFA40 00000000 */  nop
    /* B0244 800BFA44 00000000 */  nop
    /* B0248 800BFA48 18003102 */  mult       $s1, $s1
    /* B024C 800BFA4C 12280000 */  mflo       $a1
    /* B0250 800BFA50 0400023C */  lui        $v0, (0x40011 >> 16)
    /* B0254 800BFA54 11004234 */  ori        $v0, $v0, (0x40011 & 0xFFFF)
    /* B0258 800BFA58 19008200 */  multu      $a0, $v0
    /* B025C 800BFA5C 10180000 */  mfhi       $v1
    /* B0260 800BFA60 00000000 */  nop
    /* B0264 800BFA64 00000000 */  nop
    /* B0268 800BFA68 1900A200 */  multu      $a1, $v0
    /* B026C 800BFA6C 23208300 */  subu       $a0, $a0, $v1
    /* B0270 800BFA70 42200400 */  srl        $a0, $a0, 1
    /* B0274 800BFA74 21186400 */  addu       $v1, $v1, $a0
    /* B0278 800BFA78 42930300 */  srl        $s2, $v1, 13
    /* B027C 800BFA7C 10100000 */  mfhi       $v0
    /* B0280 800BFA80 2328A200 */  subu       $a1, $a1, $v0
    /* B0284 800BFA84 42280500 */  srl        $a1, $a1, 1
    /* B0288 800BFA88 21104500 */  addu       $v0, $v0, $a1
    /* B028C 800BFA8C 428B0200 */  srl        $s1, $v0, 13
  .L800BFA90:
    /* B0290 800BFA90 ECFFC480 */  lb         $a0, -0x14($a2)
    /* B0294 800BFA94 FAFFC280 */  lb         $v0, -0x6($a2)
    /* B0298 800BFA98 00000000 */  nop
    /* B029C 800BFA9C 23208200 */  subu       $a0, $a0, $v0
    /* B02A0 800BFAA0 760B030C */  jal        func_800C2DD8
    /* B02A4 800BFAA4 3F008430 */   andi      $a0, $a0, 0x3F
    /* B02A8 800BFAA8 FF007032 */  andi       $s0, $s3, 0xFF
    /* B02AC 800BFAAC 00191000 */  sll        $v1, $s0, 4
    /* B02B0 800BFAB0 1180013C */  lui        $at, %hi(D_8010A41A)
    /* B02B4 800BFAB4 21082300 */  addu       $at, $at, $v1
    /* B02B8 800BFAB8 1AA431A4 */  sh         $s1, %lo(D_8010A41A)($at)
    /* B02BC 800BFABC 0F80023C */  lui        $v0, %hi(D_800E81E0)
    /* B02C0 800BFAC0 21105000 */  addu       $v0, $v0, $s0
    /* B02C4 800BFAC4 E0814290 */  lbu        $v0, %lo(D_800E81E0)($v0)
    /* B02C8 800BFAC8 1180013C */  lui        $at, %hi(D_8010A418)
    /* B02CC 800BFACC 21082300 */  addu       $at, $at, $v1
    /* B02D0 800BFAD0 18A432A4 */  sh         $s2, %lo(D_8010A418)($at)
    /* B02D4 800BFAD4 03004234 */  ori        $v0, $v0, 0x3
    /* B02D8 800BFAD8 0F80013C */  lui        $at, %hi(D_800E81E0)
    /* B02DC 800BFADC 21083000 */  addu       $at, $at, $s0
    /* B02E0 800BFAE0 E08122A0 */  sb         $v0, %lo(D_800E81E0)($at)
    /* B02E4 800BFAE4 1000022E */  sltiu      $v0, $s0, 0x10
    /* B02E8 800BFAE8 04004010 */  beqz       $v0, .L800BFAFC
    /* B02EC 800BFAEC 01000224 */   addiu     $v0, $zero, 0x1
    /* B02F0 800BFAF0 04380202 */  sllv       $a3, $v0, $s0
    /* B02F4 800BFAF4 C2FE0208 */  j          .L800BFB08
    /* B02F8 800BFAF8 21300000 */   addu      $a2, $zero, $zero
  .L800BFAFC:
    /* B02FC 800BFAFC 21380000 */  addu       $a3, $zero, $zero
    /* B0300 800BFB00 F0FF0326 */  addiu      $v1, $s0, -0x10
    /* B0304 800BFB04 04306200 */  sllv       $a2, $v0, $v1
  .L800BFB08:
    /* B0308 800BFB08 FF006332 */  andi       $v1, $s3, 0xFF
    /* B030C 800BFB0C C0100300 */  sll        $v0, $v1, 3
    /* B0310 800BFB10 23104300 */  subu       $v0, $v0, $v1
    /* B0314 800BFB14 80100200 */  sll        $v0, $v0, 2
    /* B0318 800BFB18 23104300 */  subu       $v0, $v0, $v1
    /* B031C 800BFB1C 40100200 */  sll        $v0, $v0, 1
    /* B0320 800BFB20 1080043C */  lui        $a0, %hi(D_800FB578)
    /* B0324 800BFB24 78B58480 */  lb         $a0, %lo(D_800FB578)($a0)
    /* B0328 800BFB28 0A000324 */  addiu      $v1, $zero, 0xA
    /* B032C 800BFB2C 0E80013C */  lui        $at, %hi(D_800E78DC)
    /* B0330 800BFB30 21082200 */  addu       $at, $at, $v0
    /* B0334 800BFB34 DC7823A4 */  sh         $v1, %lo(D_800E78DC)($at)
    /* B0338 800BFB38 20008018 */  blez       $a0, .L800BFBBC
    /* B033C 800BFB3C 21280000 */   addu      $a1, $zero, $zero
    /* B0340 800BFB40 01000824 */  addiu      $t0, $zero, 0x1
    /* B0344 800BFB44 00140500 */  sll        $v0, $a1, 16
  .L800BFB48:
    /* B0348 800BFB48 03240200 */  sra        $a0, $v0, 16
    /* B034C 800BFB4C 0D80023C */  lui        $v0, %hi(D_800D4F0C)
    /* B0350 800BFB50 0C4F428C */  lw         $v0, %lo(D_800D4F0C)($v0)
    /* B0354 800BFB54 04188800 */  sllv       $v1, $t0, $a0
    /* B0358 800BFB58 24104300 */  and        $v0, $v0, $v1
    /* B035C 800BFB5C 0F004014 */  bnez       $v0, .L800BFB9C
    /* B0360 800BFB60 0100A224 */   addiu     $v0, $a1, 0x1
    /* B0364 800BFB64 C0100400 */  sll        $v0, $a0, 3
    /* B0368 800BFB68 23104400 */  subu       $v0, $v0, $a0
    /* B036C 800BFB6C 80100200 */  sll        $v0, $v0, 2
    /* B0370 800BFB70 23104400 */  subu       $v0, $v0, $a0
    /* B0374 800BFB74 40100200 */  sll        $v0, $v0, 1
    /* B0378 800BFB78 0E80033C */  lui        $v1, %hi(D_800E78F5)
    /* B037C 800BFB7C 21186200 */  addu       $v1, $v1, $v0
    /* B0380 800BFB80 F5786390 */  lbu        $v1, %lo(D_800E78F5)($v1)
    /* B0384 800BFB84 00000000 */  nop
    /* B0388 800BFB88 01006330 */  andi       $v1, $v1, 0x1
    /* B038C 800BFB8C 0E80013C */  lui        $at, %hi(D_800E78F5)
    /* B0390 800BFB90 21082200 */  addu       $at, $at, $v0
    /* B0394 800BFB94 F57823A0 */  sb         $v1, %lo(D_800E78F5)($at)
    /* B0398 800BFB98 0100A224 */  addiu      $v0, $a1, 0x1
  .L800BFB9C:
    /* B039C 800BFB9C 21284000 */  addu       $a1, $v0, $zero
    /* B03A0 800BFBA0 00140200 */  sll        $v0, $v0, 16
    /* B03A4 800BFBA4 1080033C */  lui        $v1, %hi(D_800FB578)
    /* B03A8 800BFBA8 78B56380 */  lb         $v1, %lo(D_800FB578)($v1)
    /* B03AC 800BFBAC 03140200 */  sra        $v0, $v0, 16
    /* B03B0 800BFBB0 2A104300 */  slt        $v0, $v0, $v1
    /* B03B4 800BFBB4 E4FF4014 */  bnez       $v0, .L800BFB48
    /* B03B8 800BFBB8 00140500 */   sll       $v0, $a1, 16
  .L800BFBBC:
    /* B03BC 800BFBBC FF006332 */  andi       $v1, $s3, 0xFF
    /* B03C0 800BFBC0 C0100300 */  sll        $v0, $v1, 3
    /* B03C4 800BFBC4 23104300 */  subu       $v0, $v0, $v1
    /* B03C8 800BFBC8 80100200 */  sll        $v0, $v0, 2
    /* B03CC 800BFBCC 23104300 */  subu       $v0, $v0, $v1
    /* B03D0 800BFBD0 40100200 */  sll        $v0, $v0, 1
    /* B03D4 800BFBD4 02000324 */  addiu      $v1, $zero, 0x2
    /* B03D8 800BFBD8 0E80013C */  lui        $at, %hi(D_800E78F5)
    /* B03DC 800BFBDC 21082200 */  addu       $at, $at, $v0
    /* B03E0 800BFBE0 F57823A0 */  sb         $v1, %lo(D_800E78F5)($at)
    /* B03E4 800BFBE4 0E80033C */  lui        $v1, %hi(D_800E75F8)
    /* B03E8 800BFBE8 F8756394 */  lhu        $v1, %lo(D_800E75F8)($v1)
    /* B03EC 800BFBEC 0E80043C */  lui        $a0, %hi(D_800E75FA)
    /* B03F0 800BFBF0 FA758494 */  lhu        $a0, %lo(D_800E75FA)($a0)
    /* B03F4 800BFBF4 1180023C */  lui        $v0, %hi(D_8010CE6C)
    /* B03F8 800BFBF8 6CCE4294 */  lhu        $v0, %lo(D_8010CE6C)($v0)
    /* B03FC 800BFBFC 25186700 */  or         $v1, $v1, $a3
    /* B0400 800BFC00 25208600 */  or         $a0, $a0, $a2
    /* B0404 800BFC04 0E80013C */  lui        $at, %hi(D_800E75F8)
    /* B0408 800BFC08 F87523A4 */  sh         $v1, %lo(D_800E75F8)($at)
    /* B040C 800BFC0C 27180300 */  nor        $v1, $zero, $v1
    /* B0410 800BFC10 24104300 */  and        $v0, $v0, $v1
    /* B0414 800BFC14 0E80013C */  lui        $at, %hi(D_800E75FA)
    /* B0418 800BFC18 FA7524A4 */  sh         $a0, %lo(D_800E75FA)($at)
    /* B041C 800BFC1C 27200400 */  nor        $a0, $zero, $a0
    /* B0420 800BFC20 1180013C */  lui        $at, %hi(D_8010CE6C)
    /* B0424 800BFC24 6CCE22A4 */  sh         $v0, %lo(D_8010CE6C)($at)
    /* B0428 800BFC28 1180023C */  lui        $v0, %hi(D_8010CE6E)
    /* B042C 800BFC2C 6ECE4294 */  lhu        $v0, %lo(D_8010CE6E)($v0)
    /* B0430 800BFC30 1180033C */  lui        $v1, %hi(D_8010A3DC)
    /* B0434 800BFC34 DCA36390 */  lbu        $v1, %lo(D_8010A3DC)($v1)
    /* B0438 800BFC38 24104400 */  and        $v0, $v0, $a0
    /* B043C 800BFC3C 04006330 */  andi       $v1, $v1, 0x4
    /* B0440 800BFC40 1180013C */  lui        $at, %hi(D_8010CE6E)
    /* B0444 800BFC44 6ECE22A4 */  sh         $v0, %lo(D_8010CE6E)($at)
    /* B0448 800BFC48 0C006010 */  beqz       $v1, .L800BFC7C
    /* B044C 800BFC4C 27180700 */   nor       $v1, $zero, $a3
    /* B0450 800BFC50 0E80023C */  lui        $v0, %hi(D_800E75FC)
    /* B0454 800BFC54 FC754294 */  lhu        $v0, %lo(D_800E75FC)($v0)
    /* B0458 800BFC58 0E80033C */  lui        $v1, %hi(D_800E75FE)
    /* B045C 800BFC5C FE756394 */  lhu        $v1, %lo(D_800E75FE)($v1)
    /* B0460 800BFC60 25104700 */  or         $v0, $v0, $a3
    /* B0464 800BFC64 25186600 */  or         $v1, $v1, $a2
    /* B0468 800BFC68 0E80013C */  lui        $at, %hi(D_800E75FC)
    /* B046C 800BFC6C FC7522A4 */  sh         $v0, %lo(D_800E75FC)($at)
    /* B0470 800BFC70 0E80013C */  lui        $at, %hi(D_800E75FE)
    /* B0474 800BFC74 2BFF0208 */  j          .L800BFCAC
    /* B0478 800BFC78 FE7523A4 */   sh        $v1, %lo(D_800E75FE)($at)
  .L800BFC7C:
    /* B047C 800BFC7C 0E80023C */  lui        $v0, %hi(D_800E75FC)
    /* B0480 800BFC80 FC754294 */  lhu        $v0, %lo(D_800E75FC)($v0)
    /* B0484 800BFC84 00000000 */  nop
    /* B0488 800BFC88 24104300 */  and        $v0, $v0, $v1
    /* B048C 800BFC8C 0E80013C */  lui        $at, %hi(D_800E75FC)
    /* B0490 800BFC90 FC7522A4 */  sh         $v0, %lo(D_800E75FC)($at)
    /* B0494 800BFC94 0E80023C */  lui        $v0, %hi(D_800E75FE)
    /* B0498 800BFC98 FE754294 */  lhu        $v0, %lo(D_800E75FE)($v0)
    /* B049C 800BFC9C 27180600 */  nor        $v1, $zero, $a2
    /* B04A0 800BFCA0 24104300 */  and        $v0, $v0, $v1
    /* B04A4 800BFCA4 0E80013C */  lui        $at, %hi(D_800E75FE)
    /* B04A8 800BFCA8 FE7522A4 */  sh         $v0, %lo(D_800E75FE)($at)
  .L800BFCAC:
    /* B04AC 800BFCAC 0E80013C */  lui        $at, %hi(D_800E7600)
    /* B04B0 800BFCB0 007627A4 */  sh         $a3, %lo(D_800E7600)($at)
    /* B04B4 800BFCB4 0E80013C */  lui        $at, %hi(D_800E764C)
    /* B04B8 800BFCB8 4C7626A4 */  sh         $a2, %lo(D_800E764C)($at)
    /* B04BC 800BFCBC 2000BF8F */  lw         $ra, 0x20($sp)
    /* B04C0 800BFCC0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* B04C4 800BFCC4 1800B28F */  lw         $s2, 0x18($sp)
    /* B04C8 800BFCC8 1400B18F */  lw         $s1, 0x14($sp)
    /* B04CC 800BFCCC 1000B08F */  lw         $s0, 0x10($sp)
    /* B04D0 800BFCD0 0800E003 */  jr         $ra
    /* B04D4 800BFCD4 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800BF758
