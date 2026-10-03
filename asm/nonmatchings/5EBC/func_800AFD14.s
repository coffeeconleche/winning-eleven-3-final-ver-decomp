nonmatching func_800AFD14, 0x23C

glabel func_800AFD14
    /* A0514 800AFD14 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* A0518 800AFD18 1400B1AF */  sw         $s1, 0x14($sp)
    /* A051C 800AFD1C 21888000 */  addu       $s1, $a0, $zero
    /* A0520 800AFD20 1800B2AF */  sw         $s2, 0x18($sp)
    /* A0524 800AFD24 2190A000 */  addu       $s2, $a1, $zero
    /* A0528 800AFD28 2800BFAF */  sw         $ra, 0x28($sp)
    /* A052C 800AFD2C 2400B5AF */  sw         $s5, 0x24($sp)
    /* A0530 800AFD30 2000B4AF */  sw         $s4, 0x20($sp)
    /* A0534 800AFD34 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A0538 800AFD38 A0C2020C */  jal        func_800B0A80
    /* A053C 800AFD3C 1000B0AF */   sw        $s0, 0x10($sp)
    /* A0540 800AFD40 04002586 */  lh         $a1, 0x4($s1)
    /* A0544 800AFD44 04002396 */  lhu        $v1, 0x4($s1)
    /* A0548 800AFD48 0B00A004 */  bltz       $a1, .L800AFD78
    /* A054C 800AFD4C 21A80000 */   addu      $s5, $zero, $zero
    /* A0550 800AFD50 21206000 */  addu       $a0, $v1, $zero
    /* A0554 800AFD54 0D80023C */  lui        $v0, %hi(D_800CEAC8)
    /* A0558 800AFD58 C8EA4284 */  lh         $v0, %lo(D_800CEAC8)($v0)
    /* A055C 800AFD5C 0D80033C */  lui        $v1, %hi(D_800CEAC8)
    /* A0560 800AFD60 C8EA6394 */  lhu        $v1, %lo(D_800CEAC8)($v1)
    /* A0564 800AFD64 2A104500 */  slt        $v0, $v0, $a1
    /* A0568 800AFD68 04004010 */  beqz       $v0, .L800AFD7C
    /* A056C 800AFD6C 00000000 */   nop
    /* A0570 800AFD70 5FBF0208 */  j          .L800AFD7C
    /* A0574 800AFD74 21206000 */   addu      $a0, $v1, $zero
  .L800AFD78:
    /* A0578 800AFD78 21200000 */  addu       $a0, $zero, $zero
  .L800AFD7C:
    /* A057C 800AFD7C 06002586 */  lh         $a1, 0x6($s1)
    /* A0580 800AFD80 06002396 */  lhu        $v1, 0x6($s1)
    /* A0584 800AFD84 0B00A004 */  bltz       $a1, .L800AFDB4
    /* A0588 800AFD88 040024A6 */   sh        $a0, 0x4($s1)
    /* A058C 800AFD8C 21206000 */  addu       $a0, $v1, $zero
    /* A0590 800AFD90 0D80023C */  lui        $v0, %hi(D_800CEACA)
    /* A0594 800AFD94 CAEA4284 */  lh         $v0, %lo(D_800CEACA)($v0)
    /* A0598 800AFD98 0D80033C */  lui        $v1, %hi(D_800CEACA)
    /* A059C 800AFD9C CAEA6394 */  lhu        $v1, %lo(D_800CEACA)($v1)
    /* A05A0 800AFDA0 2A104500 */  slt        $v0, $v0, $a1
    /* A05A4 800AFDA4 05004010 */  beqz       $v0, .L800AFDBC
    /* A05A8 800AFDA8 00140400 */   sll       $v0, $a0, 16
    /* A05AC 800AFDAC 6EBF0208 */  j          .L800AFDB8
    /* A05B0 800AFDB0 21206000 */   addu      $a0, $v1, $zero
  .L800AFDB4:
    /* A05B4 800AFDB4 21200000 */  addu       $a0, $zero, $zero
  .L800AFDB8:
    /* A05B8 800AFDB8 00140400 */  sll        $v0, $a0, 16
  .L800AFDBC:
    /* A05BC 800AFDBC 04002386 */  lh         $v1, 0x4($s1)
    /* A05C0 800AFDC0 03140200 */  sra        $v0, $v0, 16
    /* A05C4 800AFDC4 18006200 */  mult       $v1, $v0
    /* A05C8 800AFDC8 060024A6 */  sh         $a0, 0x6($s1)
    /* A05CC 800AFDCC 12300000 */  mflo       $a2
    /* A05D0 800AFDD0 0100C324 */  addiu      $v1, $a2, 0x1
    /* A05D4 800AFDD4 C2170300 */  srl        $v0, $v1, 31
    /* A05D8 800AFDD8 21186200 */  addu       $v1, $v1, $v0
    /* A05DC 800AFDDC 43200300 */  sra        $a0, $v1, 1
    /* A05E0 800AFDE0 0300801C */  bgtz       $a0, .L800AFDF0
    /* A05E4 800AFDE4 43810300 */   sra       $s0, $v1, 5
    /* A05E8 800AFDE8 CBBF0208 */  j          .L800AFF2C
    /* A05EC 800AFDEC FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800AFDF0:
    /* A05F0 800AFDF0 21180002 */  addu       $v1, $s0, $zero
    /* A05F4 800AFDF4 00110300 */  sll        $v0, $v1, 4
    /* A05F8 800AFDF8 23808200 */  subu       $s0, $a0, $v0
    /* A05FC 800AFDFC 0D80023C */  lui        $v0, %hi(D_800CEB9C)
    /* A0600 800AFE00 9CEB428C */  lw         $v0, %lo(D_800CEB9C)($v0)
    /* A0604 800AFE04 21A06000 */  addu       $s4, $v1, $zero
    /* A0608 800AFE08 0000428C */  lw         $v0, 0x0($v0)
    /* A060C 800AFE0C 0004033C */  lui        $v1, (0x4000000 >> 16)
    /* A0610 800AFE10 24104300 */  and        $v0, $v0, $v1
    /* A0614 800AFE14 0E004014 */  bnez       $v0, .L800AFE50
    /* A0618 800AFE18 00A0043C */   lui       $a0, (0xA0000000 >> 16)
    /* A061C 800AFE1C 0004133C */  lui        $s3, (0x4000000 >> 16)
  .L800AFE20:
    /* A0620 800AFE20 ADC2020C */  jal        func_800B0AB4
    /* A0624 800AFE24 00000000 */   nop
    /* A0628 800AFE28 40004014 */  bnez       $v0, .L800AFF2C
    /* A062C 800AFE2C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A0630 800AFE30 0D80023C */  lui        $v0, %hi(D_800CEB9C)
    /* A0634 800AFE34 9CEB428C */  lw         $v0, %lo(D_800CEB9C)($v0)
    /* A0638 800AFE38 00000000 */  nop
    /* A063C 800AFE3C 0000428C */  lw         $v0, 0x0($v0)
    /* A0640 800AFE40 00000000 */  nop
    /* A0644 800AFE44 24105300 */  and        $v0, $v0, $s3
    /* A0648 800AFE48 F5FF4010 */  beqz       $v0, .L800AFE20
    /* A064C 800AFE4C 00A0043C */   lui       $a0, (0xA0000000 >> 16)
  .L800AFE50:
    /* A0650 800AFE50 0D80033C */  lui        $v1, %hi(D_800CEB9C)
    /* A0654 800AFE54 9CEB638C */  lw         $v1, %lo(D_800CEB9C)($v1)
    /* A0658 800AFE58 0004023C */  lui        $v0, (0x4000000 >> 16)
    /* A065C 800AFE5C 000062AC */  sw         $v0, 0x0($v1)
    /* A0660 800AFE60 0D80033C */  lui        $v1, %hi(D_800CEB98)
    /* A0664 800AFE64 98EB638C */  lw         $v1, %lo(D_800CEB98)($v1)
    /* A0668 800AFE68 0001023C */  lui        $v0, (0x1000000 >> 16)
    /* A066C 800AFE6C 000062AC */  sw         $v0, 0x0($v1)
    /* A0670 800AFE70 0D80023C */  lui        $v0, %hi(D_800CEB98)
    /* A0674 800AFE74 98EB428C */  lw         $v0, %lo(D_800CEB98)($v0)
    /* A0678 800AFE78 0200A012 */  beqz       $s5, .L800AFE84
    /* A067C 800AFE7C 00000000 */   nop
    /* A0680 800AFE80 00B0043C */  lui        $a0, (0xB0000000 >> 16)
  .L800AFE84:
    /* A0684 800AFE84 000044AC */  sw         $a0, 0x0($v0)
    /* A0688 800AFE88 0D80033C */  lui        $v1, %hi(D_800CEB98)
    /* A068C 800AFE8C 98EB638C */  lw         $v1, %lo(D_800CEB98)($v1)
    /* A0690 800AFE90 0000228E */  lw         $v0, 0x0($s1)
    /* A0694 800AFE94 00000000 */  nop
    /* A0698 800AFE98 000062AC */  sw         $v0, 0x0($v1)
    /* A069C 800AFE9C 0D80033C */  lui        $v1, %hi(D_800CEB98)
    /* A06A0 800AFEA0 98EB638C */  lw         $v1, %lo(D_800CEB98)($v1)
    /* A06A4 800AFEA4 0400228E */  lw         $v0, 0x4($s1)
    /* A06A8 800AFEA8 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* A06AC 800AFEAC 000062AC */  sw         $v0, 0x0($v1)
    /* A06B0 800AFEB0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* A06B4 800AFEB4 09000212 */  beq        $s0, $v0, .L800AFEDC
    /* A06B8 800AFEB8 00000000 */   nop
    /* A06BC 800AFEBC FFFF0424 */  addiu      $a0, $zero, -0x1
  .L800AFEC0:
    /* A06C0 800AFEC0 0000438E */  lw         $v1, 0x0($s2)
    /* A06C4 800AFEC4 04005226 */  addiu      $s2, $s2, 0x4
    /* A06C8 800AFEC8 0D80023C */  lui        $v0, %hi(D_800CEB98)
    /* A06CC 800AFECC 98EB428C */  lw         $v0, %lo(D_800CEB98)($v0)
    /* A06D0 800AFED0 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* A06D4 800AFED4 FAFF0416 */  bne        $s0, $a0, .L800AFEC0
    /* A06D8 800AFED8 000043AC */   sw        $v1, 0x0($v0)
  .L800AFEDC:
    /* A06DC 800AFEDC 12008012 */  beqz       $s4, .L800AFF28
    /* A06E0 800AFEE0 0004033C */   lui       $v1, (0x4000002 >> 16)
    /* A06E4 800AFEE4 0D80023C */  lui        $v0, %hi(D_800CEB9C)
    /* A06E8 800AFEE8 9CEB428C */  lw         $v0, %lo(D_800CEB9C)($v0)
    /* A06EC 800AFEEC 02006334 */  ori        $v1, $v1, (0x4000002 & 0xFFFF)
    /* A06F0 800AFEF0 000043AC */  sw         $v1, 0x0($v0)
    /* A06F4 800AFEF4 0D80023C */  lui        $v0, %hi(D_800CEBA0)
    /* A06F8 800AFEF8 A0EB428C */  lw         $v0, %lo(D_800CEBA0)($v0)
    /* A06FC 800AFEFC 0001043C */  lui        $a0, (0x1000201 >> 16)
    /* A0700 800AFF00 000052AC */  sw         $s2, 0x0($v0)
    /* A0704 800AFF04 00141400 */  sll        $v0, $s4, 16
    /* A0708 800AFF08 0D80033C */  lui        $v1, %hi(D_800CEBA4)
    /* A070C 800AFF0C A4EB638C */  lw         $v1, %lo(D_800CEBA4)($v1)
    /* A0710 800AFF10 10004234 */  ori        $v0, $v0, 0x10
    /* A0714 800AFF14 000062AC */  sw         $v0, 0x0($v1)
    /* A0718 800AFF18 0D80023C */  lui        $v0, %hi(D_800CEBA8)
    /* A071C 800AFF1C A8EB428C */  lw         $v0, %lo(D_800CEBA8)($v0)
    /* A0720 800AFF20 01028434 */  ori        $a0, $a0, (0x1000201 & 0xFFFF)
    /* A0724 800AFF24 000044AC */  sw         $a0, 0x0($v0)
  .L800AFF28:
    /* A0728 800AFF28 21100000 */  addu       $v0, $zero, $zero
  .L800AFF2C:
    /* A072C 800AFF2C 2800BF8F */  lw         $ra, 0x28($sp)
    /* A0730 800AFF30 2400B58F */  lw         $s5, 0x24($sp)
    /* A0734 800AFF34 2000B48F */  lw         $s4, 0x20($sp)
    /* A0738 800AFF38 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A073C 800AFF3C 1800B28F */  lw         $s2, 0x18($sp)
    /* A0740 800AFF40 1400B18F */  lw         $s1, 0x14($sp)
    /* A0744 800AFF44 1000B08F */  lw         $s0, 0x10($sp)
    /* A0748 800AFF48 0800E003 */  jr         $ra
    /* A074C 800AFF4C 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_800AFD14
