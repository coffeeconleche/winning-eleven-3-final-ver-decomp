nonmatching func_800ACF18, 0x9C

glabel func_800ACF18
    /* 9D718 800ACF18 FFFF8830 */  andi       $t0, $a0, 0xFFFF
    /* 9D71C 800ACF1C 03000229 */  slti       $v0, $t0, 0x3
    /* 9D720 800ACF20 03004014 */  bnez       $v0, .L800ACF30
    /* 9D724 800ACF24 48000724 */   addiu     $a3, $zero, 0x48
    /* 9D728 800ACF28 EBB30208 */  j          .L800ACFAC
    /* 9D72C 800ACF2C 21100000 */   addu      $v0, $zero, $zero
  .L800ACF30:
    /* 9D730 800ACF30 0D80023C */  lui        $v0, %hi(D_800CEA48)
    /* 9D734 800ACF34 48EA428C */  lw         $v0, %lo(D_800CEA48)($v0)
    /* 9D738 800ACF38 00190800 */  sll        $v1, $t0, 4
    /* 9D73C 800ACF3C 21186200 */  addu       $v1, $v1, $v0
    /* 9D740 800ACF40 0200022D */  sltiu      $v0, $t0, 0x2
    /* 9D744 800ACF44 040060A4 */  sh         $zero, 0x4($v1)
    /* 9D748 800ACF48 080065A4 */  sh         $a1, 0x8($v1)
    /* 9D74C 800ACF4C 08004010 */  beqz       $v0, .L800ACF70
    /* 9D750 800ACF50 1000C230 */   andi      $v0, $a2, 0x10
    /* 9D754 800ACF54 02004010 */  beqz       $v0, .L800ACF60
    /* 9D758 800ACF58 0100C230 */   andi      $v0, $a2, 0x1
    /* 9D75C 800ACF5C 49000724 */  addiu      $a3, $zero, 0x49
  .L800ACF60:
    /* 9D760 800ACF60 0A004014 */  bnez       $v0, .L800ACF8C
    /* 9D764 800ACF64 0010C230 */   andi      $v0, $a2, 0x1000
    /* 9D768 800ACF68 E3B30208 */  j          .L800ACF8C
    /* 9D76C 800ACF6C 0001E734 */   ori       $a3, $a3, 0x100
  .L800ACF70:
    /* 9D770 800ACF70 02000224 */  addiu      $v0, $zero, 0x2
    /* 9D774 800ACF74 05000215 */  bne        $t0, $v0, .L800ACF8C
    /* 9D778 800ACF78 0010C230 */   andi      $v0, $a2, 0x1000
    /* 9D77C 800ACF7C 0100C230 */  andi       $v0, $a2, 0x1
    /* 9D780 800ACF80 02004014 */  bnez       $v0, .L800ACF8C
    /* 9D784 800ACF84 0010C230 */   andi      $v0, $a2, 0x1000
    /* 9D788 800ACF88 48020724 */  addiu      $a3, $zero, 0x248
  .L800ACF8C:
    /* 9D78C 800ACF8C 02004010 */  beqz       $v0, .L800ACF98
    /* 9D790 800ACF90 01000224 */   addiu     $v0, $zero, 0x1
    /* 9D794 800ACF94 1000E734 */  ori        $a3, $a3, 0x10
  .L800ACF98:
    /* 9D798 800ACF98 0D80043C */  lui        $a0, %hi(D_800CEA48)
    /* 9D79C 800ACF9C 48EA848C */  lw         $a0, %lo(D_800CEA48)($a0)
    /* 9D7A0 800ACFA0 00190800 */  sll        $v1, $t0, 4
    /* 9D7A4 800ACFA4 21186400 */  addu       $v1, $v1, $a0
    /* 9D7A8 800ACFA8 040067A4 */  sh         $a3, 0x4($v1)
  .L800ACFAC:
    /* 9D7AC 800ACFAC 0800E003 */  jr         $ra
    /* 9D7B0 800ACFB0 00000000 */   nop
endlabel func_800ACF18
