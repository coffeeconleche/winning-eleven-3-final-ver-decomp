nonmatching func_800BD108, 0x21C

glabel func_800BD108
    /* AD908 800BD108 00140400 */  sll        $v0, $a0, 16
    /* AD90C 800BD10C 1180033C */  lui        $v1, %hi(D_8010C2A8)
    /* AD910 800BD110 A8C26324 */  addiu      $v1, $v1, %lo(D_8010C2A8)
    /* AD914 800BD114 83130200 */  sra        $v0, $v0, 14
    /* AD918 800BD118 21484300 */  addu       $t1, $v0, $v1
    /* AD91C 800BD11C 001C0500 */  sll        $v1, $a1, 16
    /* AD920 800BD120 031C0300 */  sra        $v1, $v1, 16
    /* AD924 800BD124 40100300 */  sll        $v0, $v1, 1
    /* AD928 800BD128 21104300 */  addu       $v0, $v0, $v1
    /* AD92C 800BD12C 80100200 */  sll        $v0, $v0, 2
    /* AD930 800BD130 23104300 */  subu       $v0, $v0, $v1
    /* AD934 800BD134 00410200 */  sll        $t0, $v0, 4
    /* AD938 800BD138 0000238D */  lw         $v1, 0x0($t1)
    /* AD93C 800BD13C 21308000 */  addu       $a2, $a0, $zero
    /* AD940 800BD140 21386800 */  addu       $a3, $v1, $t0
    /* AD944 800BD144 A800E28C */  lw         $v0, 0xA8($a3)
    /* AD948 800BD148 00000000 */  nop
    /* AD94C 800BD14C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* AD950 800BD150 0B004104 */  bgez       $v0, .L800BD180
    /* AD954 800BD154 A800E2AC */   sw        $v0, 0xA8($a3)
    /* AD958 800BD158 0000238D */  lw         $v1, 0x0($t1)
    /* AD95C 800BD15C 00000000 */  nop
    /* AD960 800BD160 21180301 */  addu       $v1, $t0, $v1
    /* AD964 800BD164 9800628C */  lw         $v0, 0x98($v1)
    /* AD968 800BD168 BFFF0424 */  addiu      $a0, $zero, -0x41
    /* AD96C 800BD16C 24104400 */  and        $v0, $v0, $a0
    /* AD970 800BD170 980062AC */  sw         $v0, 0x98($v1)
    /* AD974 800BD174 0000238D */  lw         $v1, 0x0($t1)
    /* AD978 800BD178 C3F40208 */  j          .L800BD30C
    /* AD97C 800BD17C 21180301 */   addu      $v1, $t0, $v1
  .L800BD180:
    /* AD980 800BD180 4E00E484 */  lh         $a0, 0x4E($a3)
    /* AD984 800BD184 00000000 */  nop
    /* AD988 800BD188 19008018 */  blez       $a0, .L800BD1F0
    /* AD98C 800BD18C 00000000 */   nop
    /* AD990 800BD190 1A004400 */  div        $zero, $v0, $a0
    /* AD994 800BD194 02008014 */  bnez       $a0, .L800BD1A0
    /* AD998 800BD198 00000000 */   nop
    /* AD99C 800BD19C 0D000700 */  break      7
  .L800BD1A0:
    /* AD9A0 800BD1A0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* AD9A4 800BD1A4 04008114 */  bne        $a0, $at, .L800BD1B8
    /* AD9A8 800BD1A8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* AD9AC 800BD1AC 02004114 */  bne        $v0, $at, .L800BD1B8
    /* AD9B0 800BD1B0 00000000 */   nop
    /* AD9B4 800BD1B4 0D000600 */  break      6
  .L800BD1B8:
    /* AD9B8 800BD1B8 10100000 */  mfhi       $v0
    /* AD9BC 800BD1BC 57004014 */  bnez       $v0, .L800BD31C
    /* AD9C0 800BD1C0 00000000 */   nop
    /* AD9C4 800BD1C4 9400E38C */  lw         $v1, 0x94($a3)
    /* AD9C8 800BD1C8 AC00E48C */  lw         $a0, 0xAC($a3)
    /* AD9CC 800BD1CC 00000000 */  nop
    /* AD9D0 800BD1D0 2B108300 */  sltu       $v0, $a0, $v1
    /* AD9D4 800BD1D4 04004014 */  bnez       $v0, .L800BD1E8
    /* AD9D8 800BD1D8 FFFF6224 */   addiu     $v0, $v1, -0x1
    /* AD9DC 800BD1DC 2B106400 */  sltu       $v0, $v1, $a0
    /* AD9E0 800BD1E0 15004010 */  beqz       $v0, .L800BD238
    /* AD9E4 800BD1E4 01006224 */   addiu     $v0, $v1, 0x1
  .L800BD1E8:
    /* AD9E8 800BD1E8 8EF40208 */  j          .L800BD238
    /* AD9EC 800BD1EC 9400E2AC */   sw        $v0, 0x94($a3)
  .L800BD1F0:
    /* AD9F0 800BD1F0 9400E38C */  lw         $v1, 0x94($a3)
    /* AD9F4 800BD1F4 AC00E88C */  lw         $t0, 0xAC($a3)
    /* AD9F8 800BD1F8 00000000 */  nop
    /* AD9FC 800BD1FC 2B100301 */  sltu       $v0, $t0, $v1
    /* ADA00 800BD200 04004010 */  beqz       $v0, .L800BD214
    /* ADA04 800BD204 21106400 */   addu      $v0, $v1, $a0
    /* ADA08 800BD208 9400E2AC */  sw         $v0, 0x94($a3)
    /* ADA0C 800BD20C 8BF40208 */  j          .L800BD22C
    /* ADA10 800BD210 2B104800 */   sltu      $v0, $v0, $t0
  .L800BD214:
    /* ADA14 800BD214 2B106800 */  sltu       $v0, $v1, $t0
    /* ADA18 800BD218 07004010 */  beqz       $v0, .L800BD238
    /* ADA1C 800BD21C 23106400 */   subu      $v0, $v1, $a0
    /* ADA20 800BD220 AC00E88C */  lw         $t0, 0xAC($a3)
    /* ADA24 800BD224 9400E2AC */  sw         $v0, 0x94($a3)
    /* ADA28 800BD228 2B100201 */  sltu       $v0, $t0, $v0
  .L800BD22C:
    /* ADA2C 800BD22C 02004010 */  beqz       $v0, .L800BD238
    /* ADA30 800BD230 00000000 */   nop
    /* ADA34 800BD234 9400E8AC */  sw         $t0, 0x94($a3)
  .L800BD238:
    /* ADA38 800BD238 5000E284 */  lh         $v0, 0x50($a3)
    /* ADA3C 800BD23C 9400E38C */  lw         $v1, 0x94($a3)
    /* ADA40 800BD240 00000000 */  nop
    /* ADA44 800BD244 18004300 */  mult       $v0, $v1
    /* ADA48 800BD248 1180043C */  lui        $a0, %hi(D_8010C1BC)
    /* ADA4C 800BD24C BCC1848C */  lw         $a0, %lo(D_8010C1BC)($a0)
    /* ADA50 800BD250 12100000 */  mflo       $v0
    /* ADA54 800BD254 80180200 */  sll        $v1, $v0, 2
    /* ADA58 800BD258 21186200 */  addu       $v1, $v1, $v0
    /* ADA5C 800BD25C 40180300 */  sll        $v1, $v1, 1
    /* ADA60 800BD260 00110400 */  sll        $v0, $a0, 4
    /* ADA64 800BD264 23104400 */  subu       $v0, $v0, $a0
    /* ADA68 800BD268 80100200 */  sll        $v0, $v0, 2
    /* ADA6C 800BD26C 1B006200 */  divu       $zero, $v1, $v0
    /* ADA70 800BD270 02004014 */  bnez       $v0, .L800BD27C
    /* ADA74 800BD274 00000000 */   nop
    /* ADA78 800BD278 0D000700 */  break      7
  .L800BD27C:
    /* ADA7C 800BD27C 12180000 */  mflo       $v1
    /* ADA80 800BD280 5400E3A4 */  sh         $v1, 0x54($a3)
    /* ADA84 800BD284 001C0300 */  sll        $v1, $v1, 16
    /* ADA88 800BD288 0200601C */  bgtz       $v1, .L800BD294
    /* ADA8C 800BD28C 01000224 */   addiu     $v0, $zero, 0x1
    /* ADA90 800BD290 5400E2A4 */  sh         $v0, 0x54($a3)
  .L800BD294:
    /* ADA94 800BD294 A800E28C */  lw         $v0, 0xA8($a3)
    /* ADA98 800BD298 00000000 */  nop
    /* ADA9C 800BD29C 06004010 */  beqz       $v0, .L800BD2B8
    /* ADAA0 800BD2A0 00000000 */   nop
    /* ADAA4 800BD2A4 9400E38C */  lw         $v1, 0x94($a3)
    /* ADAA8 800BD2A8 AC00E28C */  lw         $v0, 0xAC($a3)
    /* ADAAC 800BD2AC 00000000 */  nop
    /* ADAB0 800BD2B0 1A006214 */  bne        $v1, $v0, .L800BD31C
    /* ADAB4 800BD2B4 00000000 */   nop
  .L800BD2B8:
    /* ADAB8 800BD2B8 00340600 */  sll        $a2, $a2, 16
    /* ADABC 800BD2BC 1180023C */  lui        $v0, %hi(D_8010C2A8)
    /* ADAC0 800BD2C0 A8C24224 */  addiu      $v0, $v0, %lo(D_8010C2A8)
    /* ADAC4 800BD2C4 83330600 */  sra        $a2, $a2, 14
    /* ADAC8 800BD2C8 2130C200 */  addu       $a2, $a2, $v0
    /* ADACC 800BD2CC 00140500 */  sll        $v0, $a1, 16
    /* ADAD0 800BD2D0 03140200 */  sra        $v0, $v0, 16
    /* ADAD4 800BD2D4 40180200 */  sll        $v1, $v0, 1
    /* ADAD8 800BD2D8 21186200 */  addu       $v1, $v1, $v0
    /* ADADC 800BD2DC 80180300 */  sll        $v1, $v1, 2
    /* ADAE0 800BD2E0 23186200 */  subu       $v1, $v1, $v0
    /* ADAE4 800BD2E4 0000C58C */  lw         $a1, 0x0($a2)
    /* ADAE8 800BD2E8 00190300 */  sll        $v1, $v1, 4
    /* ADAEC 800BD2EC 21286500 */  addu       $a1, $v1, $a1
    /* ADAF0 800BD2F0 9800A28C */  lw         $v0, 0x98($a1)
    /* ADAF4 800BD2F4 BFFF0424 */  addiu      $a0, $zero, -0x41
    /* ADAF8 800BD2F8 24104400 */  and        $v0, $v0, $a0
    /* ADAFC 800BD2FC 9800A2AC */  sw         $v0, 0x98($a1)
    /* ADB00 800BD300 0000C28C */  lw         $v0, 0x0($a2)
    /* ADB04 800BD304 00000000 */  nop
    /* ADB08 800BD308 21186200 */  addu       $v1, $v1, $v0
  .L800BD30C:
    /* ADB0C 800BD30C 9800628C */  lw         $v0, 0x98($v1)
    /* ADB10 800BD310 7FFF0424 */  addiu      $a0, $zero, -0x81
    /* ADB14 800BD314 24104400 */  and        $v0, $v0, $a0
    /* ADB18 800BD318 980062AC */  sw         $v0, 0x98($v1)
  .L800BD31C:
    /* ADB1C 800BD31C 0800E003 */  jr         $ra
    /* ADB20 800BD320 00000000 */   nop
endlabel func_800BD108
    /* ADB24 800BD324 00000000 */  nop
