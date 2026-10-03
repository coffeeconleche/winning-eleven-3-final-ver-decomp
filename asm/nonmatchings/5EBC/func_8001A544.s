nonmatching func_8001A544, 0x2D0

glabel func_8001A544
    /* AD44 8001A544 801F033C */  lui        $v1, (0x1F80029D >> 16)
    /* AD48 8001A548 9D026390 */  lbu        $v1, (0x1F80029D & 0xFFFF)($v1)
    /* AD4C 8001A54C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* AD50 8001A550 2000B0AF */  sw         $s0, 0x20($sp)
    /* AD54 8001A554 21808000 */  addu       $s0, $a0, $zero
    /* AD58 8001A558 3000B4AF */  sw         $s4, 0x30($sp)
    /* AD5C 8001A55C 1080143C */  lui        $s4, %hi(D_800FF748)
    /* AD60 8001A560 48F79426 */  addiu      $s4, $s4, %lo(D_800FF748)
    /* AD64 8001A564 2800B2AF */  sw         $s2, 0x28($sp)
    /* AD68 8001A568 801F123C */  lui        $s2, (0x1F800128 >> 16)
    /* AD6C 8001A56C 3400BFAF */  sw         $ra, 0x34($sp)
    /* AD70 8001A570 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* AD74 8001A574 2400B1AF */  sw         $s1, 0x24($sp)
    /* AD78 8001A578 8D030492 */  lbu        $a0, 0x38D($s0)
    /* AD7C 8001A57C 00110300 */  sll        $v0, $v1, 4
    /* AD80 8001A580 23104300 */  subu       $v0, $v0, $v1
    /* AD84 8001A584 80100200 */  sll        $v0, $v0, 2
    /* AD88 8001A588 23104300 */  subu       $v0, $v0, $v1
    /* AD8C 8001A58C 80100200 */  sll        $v0, $v0, 2
    /* AD90 8001A590 23104300 */  subu       $v0, $v0, $v1
    /* AD94 8001A594 80110200 */  sll        $v0, $v0, 6
    /* AD98 8001A598 0F80033C */  lui        $v1, %hi(D_800E8208)
    /* AD9C 8001A59C 08826324 */  addiu      $v1, $v1, %lo(D_800E8208)
    /* ADA0 8001A5A0 21984300 */  addu       $s3, $v0, $v1
    /* ADA4 8001A5A4 9C030392 */  lbu        $v1, 0x39C($s0)
    /* ADA8 8001A5A8 01000224 */  addiu      $v0, $zero, 0x1
    /* ADAC 8001A5AC 56006214 */  bne        $v1, $v0, .L8001A708
    /* ADB0 8001A5B0 FFFF9124 */   addiu     $s1, $a0, -0x1
    /* ADB4 8001A5B4 21200002 */  addu       $a0, $s0, $zero
    /* ADB8 8001A5B8 7370010C */  jal        func_8005C1CC
    /* ADBC 8001A5BC 01000524 */   addiu     $a1, $zero, 0x1
    /* ADC0 8001A5C0 02000286 */  lh         $v0, 0x2($s0)
    /* ADC4 8001A5C4 801F043C */  lui        $a0, (0x1F8000F2 >> 16)
    /* ADC8 8001A5C8 F2008484 */  lh         $a0, (0x1F8000F2 & 0xFFFF)($a0)
    /* ADCC 8001A5CC 801F013C */  lui        $at, (0x1F800140 >> 16)
    /* ADD0 8001A5D0 400120AC */  sw         $zero, (0x1F800140 & 0xFFFF)($at)
    /* ADD4 8001A5D4 801F013C */  lui        $at, (0x1F80013C >> 16)
    /* ADD8 8001A5D8 3C0122AC */  sw         $v0, (0x1F80013C & 0xFFFF)($at)
    /* ADDC 8001A5DC 06000286 */  lh         $v0, 0x6($s0)
    /* ADE0 8001A5E0 801F013C */  lui        $at, (0x1F800144 >> 16)
    /* ADE4 8001A5E4 440122AC */  sw         $v0, (0x1F800144 & 0xFFFF)($at)
    /* ADE8 8001A5E8 10FF8228 */  slti       $v0, $a0, -0xF0
    /* ADEC 8001A5EC 03004010 */  beqz       $v0, .L8001A5FC
    /* ADF0 8001A5F0 21188000 */   addu      $v1, $a0, $zero
    /* ADF4 8001A5F4 BC690008 */  j          .L8001A6F0
    /* ADF8 8001A5F8 E0000224 */   addiu     $v0, $zero, 0xE0
  .L8001A5FC:
    /* ADFC 8001A5FC A1FF8228 */  slti       $v0, $a0, -0x5F
    /* AE00 8001A600 05004014 */  bnez       $v0, .L8001A618
    /* AE04 8001A604 60006224 */   addiu     $v0, $v1, 0x60
    /* AE08 8001A608 801F013C */  lui        $at, (0x1F8000F2 >> 16)
    /* AE0C 8001A60C F20020A4 */  sh         $zero, (0x1F8000F2 & 0xFFFF)($at)
    /* AE10 8001A610 88690008 */  j          .L8001A620
    /* AE14 8001A614 00000000 */   nop
  .L8001A618:
    /* AE18 8001A618 801F013C */  lui        $at, (0x1F8000F2 >> 16)
    /* AE1C 8001A61C F20022A4 */  sh         $v0, (0x1F8000F2 & 0xFFFF)($at)
  .L8001A620:
    /* AE20 8001A620 8E030296 */  lhu        $v0, 0x38E($s0)
    /* AE24 8001A624 00000000 */  nop
    /* AE28 8001A628 E2FF4324 */  addiu      $v1, $v0, -0x1E
    /* AE2C 8001A62C 5A00622C */  sltiu      $v0, $v1, 0x5A
    /* AE30 8001A630 1A004010 */  beqz       $v0, .L8001A69C
    /* AE34 8001A634 80100300 */   sll       $v0, $v1, 2
    /* AE38 8001A638 0180013C */  lui        $at, %hi(jtbl_800101E8)
    /* AE3C 8001A63C 21082200 */  addu       $at, $at, $v0
    /* AE40 8001A640 E801228C */  lw         $v0, %lo(jtbl_800101E8)($at)
    /* AE44 8001A644 00000000 */  nop
    /* AE48 8001A648 08004000 */  jr         $v0
    /* AE4C 8001A64C 00000000 */   nop
  jlabel .L8001A650
    /* AE50 8001A650 AA030392 */  lbu        $v1, 0x3AA($s0)
    /* AE54 8001A654 A9690008 */  j          .L8001A6A4
    /* AE58 8001A658 40000224 */   addiu     $v0, $zero, 0x40
  jlabel .L8001A65C
    /* AE5C 8001A65C C0010224 */  addiu      $v0, $zero, 0x1C0
    /* AE60 8001A660 AA030392 */  lbu        $v1, 0x3AA($s0)
    /* AE64 8001A664 AC030492 */  lbu        $a0, 0x3AC($s0)
    /* AE68 8001A668 00000000 */  nop
    /* AE6C 8001A66C 09008014 */  bnez       $a0, .L8001A694
    /* AE70 8001A670 23104300 */   subu      $v0, $v0, $v1
  .L8001A674:
    /* AE74 8001A674 AA690008 */  j          .L8001A6A8
    /* AE78 8001A678 40004224 */   addiu     $v0, $v0, 0x40
  jlabel .L8001A67C
    /* AE7C 8001A67C C0010224 */  addiu      $v0, $zero, 0x1C0
    /* AE80 8001A680 AA030392 */  lbu        $v1, 0x3AA($s0)
    /* AE84 8001A684 AC030492 */  lbu        $a0, 0x3AC($s0)
    /* AE88 8001A688 00000000 */  nop
    /* AE8C 8001A68C F9FF8014 */  bnez       $a0, .L8001A674
    /* AE90 8001A690 23104300 */   subu      $v0, $v0, $v1
  .L8001A694:
    /* AE94 8001A694 AA690008 */  j          .L8001A6A8
    /* AE98 8001A698 C0FF4224 */   addiu     $v0, $v0, -0x40
  jlabel .L8001A69C
    /* AE9C 8001A69C AA030392 */  lbu        $v1, 0x3AA($s0)
    /* AEA0 8001A6A0 C0000224 */  addiu      $v0, $zero, 0xC0
  .L8001A6A4:
    /* AEA4 8001A6A4 23104300 */  subu       $v0, $v0, $v1
  .L8001A6A8:
    /* AEA8 8001A6A8 F2004396 */  lhu        $v1, (0x1F8000F2 & 0xFFFF)($s2)
    /* AEAC 8001A6AC FF004430 */  andi       $a0, $v0, 0xFF
    /* AEB0 8001A6B0 001C0300 */  sll        $v1, $v1, 16
    /* AEB4 8001A6B4 031C0300 */  sra        $v1, $v1, 16
    /* AEB8 8001A6B8 90006224 */  addiu      $v0, $v1, 0x90
    /* AEBC 8001A6BC 18008200 */  mult       $a0, $v0
    /* AEC0 8001A6C0 E338043C */  lui        $a0, (0x38E38E39 >> 16)
    /* AEC4 8001A6C4 398E8434 */  ori        $a0, $a0, (0x38E38E39 & 0xFFFF)
    /* AEC8 8001A6C8 C0100300 */  sll        $v0, $v1, 3
    /* AECC 8001A6CC 23104300 */  subu       $v0, $v0, $v1
    /* AED0 8001A6D0 12400000 */  mflo       $t0
    /* AED4 8001A6D4 40110200 */  sll        $v0, $v0, 5
    /* AED8 8001A6D8 23100201 */  subu       $v0, $t0, $v0
    /* AEDC 8001A6DC 18004400 */  mult       $v0, $a0
    /* AEE0 8001A6E0 C3170200 */  sra        $v0, $v0, 31
    /* AEE4 8001A6E4 10400000 */  mfhi       $t0
    /* AEE8 8001A6E8 43190800 */  sra        $v1, $t0, 5
    /* AEEC 8001A6EC 23106200 */  subu       $v0, $v1, $v0
  .L8001A6F0:
    /* AEF0 8001A6F0 FF004230 */  andi       $v0, $v0, 0xFF
    /* AEF4 8001A6F4 00110200 */  sll        $v0, $v0, 4
    /* AEF8 8001A6F8 240140A6 */  sh         $zero, (0x1F800124 & 0xFFFF)($s2)
    /* AEFC 8001A6FC 260142A6 */  sh         $v0, (0x1F800126 & 0xFFFF)($s2)
    /* AF00 8001A700 D3690008 */  j          .L8001A74C
    /* AF04 8001A704 280140A6 */   sh        $zero, (0x1F800128 & 0xFFFF)($s2)
  .L8001A708:
    /* AF08 8001A708 39006014 */  bnez       $v1, .L8001A7F0
    /* AF0C 8001A70C 00000000 */   nop
    /* AF10 8001A710 02000286 */  lh         $v0, 0x2($s0)
    /* AF14 8001A714 801F013C */  lui        $at, (0x1F800140 >> 16)
    /* AF18 8001A718 400120AC */  sw         $zero, (0x1F800140 & 0xFFFF)($at)
    /* AF1C 8001A71C 801F013C */  lui        $at, (0x1F80013C >> 16)
    /* AF20 8001A720 3C0122AC */  sw         $v0, (0x1F80013C & 0xFFFF)($at)
    /* AF24 8001A724 06000386 */  lh         $v1, 0x6($s0)
    /* AF28 8001A728 000E0224 */  addiu      $v0, $zero, 0xE00
    /* AF2C 8001A72C 801F013C */  lui        $at, (0x1F800124 >> 16)
    /* AF30 8001A730 240120A4 */  sh         $zero, (0x1F800124 & 0xFFFF)($at)
    /* AF34 8001A734 801F013C */  lui        $at, (0x1F800126 >> 16)
    /* AF38 8001A738 260122A4 */  sh         $v0, (0x1F800126 & 0xFFFF)($at)
    /* AF3C 8001A73C 801F013C */  lui        $at, (0x1F800128 >> 16)
    /* AF40 8001A740 280120A4 */  sh         $zero, (0x1F800128 & 0xFFFF)($at)
    /* AF44 8001A744 801F013C */  lui        $at, (0x1F800144 >> 16)
    /* AF48 8001A748 440123AC */  sw         $v1, (0x1F800144 & 0xFFFF)($at)
  .L8001A74C:
    /* AF4C 8001A74C C0211100 */  sll        $a0, $s1, 7
    /* AF50 8001A750 24748424 */  addiu      $a0, $a0, 0x7424
    /* AF54 8001A754 21208402 */  addu       $a0, $s4, $a0
    /* AF58 8001A758 80801100 */  sll        $s0, $s1, 2
    /* AF5C 8001A75C 21801102 */  addu       $s0, $s0, $s1
    /* AF60 8001A760 40811000 */  sll        $s0, $s0, 5
    /* AF64 8001A764 50001126 */  addiu      $s1, $s0, 0x50
    /* AF68 8001A768 21887102 */  addu       $s1, $s3, $s1
    /* AF6C 8001A76C A467000C */  jal        func_80019E90
    /* AF70 8001A770 21282002 */   addu      $a1, $s1, $zero
    /* AF74 8001A774 FF00063C */  lui        $a2, (0xFFFFFF >> 16)
    /* AF78 8001A778 FFFFC634 */  ori        $a2, $a2, (0xFFFFFF & 0xFFFF)
    /* AF7C 8001A77C 21801302 */  addu       $s0, $s0, $s3
    /* AF80 8001A780 04000524 */  addiu      $a1, $zero, 0x4
    /* AF84 8001A784 00FF073C */  lui        $a3, (0xFF000000 >> 16)
    /* AF88 8001A788 5000048E */  lw         $a0, 0x50($s0)
    /* AF8C 8001A78C 0000438E */  lw         $v1, (0x1F800000 & 0xFFFF)($s2)
    /* AF90 8001A790 9D024292 */  lbu        $v0, (0x1F80029D & 0xFFFF)($s2)
    /* AF94 8001A794 04186500 */  sllv       $v1, $a1, $v1
    /* AF98 8001A798 80130200 */  sll        $v0, $v0, 14
    /* AF9C 8001A79C 21104300 */  addu       $v0, $v0, $v1
    /* AFA0 8001A7A0 0F80013C */  lui        $at, %hi(D_800F3560)
    /* AFA4 8001A7A4 21082200 */  addu       $at, $at, $v0
    /* AFA8 8001A7A8 6035228C */  lw         $v0, %lo(D_800F3560)($at)
    /* AFAC 8001A7AC 24208700 */  and        $a0, $a0, $a3
    /* AFB0 8001A7B0 24104600 */  and        $v0, $v0, $a2
    /* AFB4 8001A7B4 25208200 */  or         $a0, $a0, $v0
    /* AFB8 8001A7B8 500004AE */  sw         $a0, 0x50($s0)
    /* AFBC 8001A7BC 0F80043C */  lui        $a0, %hi(D_800F3560)
    /* AFC0 8001A7C0 60358424 */  addiu      $a0, $a0, %lo(D_800F3560)
    /* AFC4 8001A7C4 0000438E */  lw         $v1, (0x1F800000 & 0xFFFF)($s2)
    /* AFC8 8001A7C8 9D024292 */  lbu        $v0, (0x1F80029D & 0xFFFF)($s2)
    /* AFCC 8001A7CC 04286500 */  sllv       $a1, $a1, $v1
    /* AFD0 8001A7D0 80130200 */  sll        $v0, $v0, 14
    /* AFD4 8001A7D4 21104500 */  addu       $v0, $v0, $a1
    /* AFD8 8001A7D8 21104400 */  addu       $v0, $v0, $a0
    /* AFDC 8001A7DC 0000438C */  lw         $v1, 0x0($v0)
    /* AFE0 8001A7E0 24882602 */  and        $s1, $s1, $a2
    /* AFE4 8001A7E4 24186700 */  and        $v1, $v1, $a3
    /* AFE8 8001A7E8 25187100 */  or         $v1, $v1, $s1
    /* AFEC 8001A7EC 000043AC */  sw         $v1, 0x0($v0)
  .L8001A7F0:
    /* AFF0 8001A7F0 3400BF8F */  lw         $ra, 0x34($sp)
    /* AFF4 8001A7F4 3000B48F */  lw         $s4, 0x30($sp)
    /* AFF8 8001A7F8 2C00B38F */  lw         $s3, 0x2C($sp)
    /* AFFC 8001A7FC 2800B28F */  lw         $s2, 0x28($sp)
    /* B000 8001A800 2400B18F */  lw         $s1, 0x24($sp)
    /* B004 8001A804 2000B08F */  lw         $s0, 0x20($sp)
    /* B008 8001A808 3800BD27 */  addiu      $sp, $sp, 0x38
    /* B00C 8001A80C 0800E003 */  jr         $ra
    /* B010 8001A810 00000000 */   nop
endlabel func_8001A544
