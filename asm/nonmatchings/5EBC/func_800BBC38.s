nonmatching func_800BBC38, 0xFC

glabel func_800BBC38
    /* AC438 800BBC38 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* AC43C 800BBC3C 003C0400 */  sll        $a3, $a0, 16
    /* AC440 800BBC40 83230700 */  sra        $a0, $a3, 14
    /* AC444 800BBC44 002C0500 */  sll        $a1, $a1, 16
    /* AC448 800BBC48 031C0500 */  sra        $v1, $a1, 16
    /* AC44C 800BBC4C 40100300 */  sll        $v0, $v1, 1
    /* AC450 800BBC50 21104300 */  addu       $v0, $v0, $v1
    /* AC454 800BBC54 80100200 */  sll        $v0, $v0, 2
    /* AC458 800BBC58 23104300 */  subu       $v0, $v0, $v1
    /* AC45C 800BBC5C 2000BFAF */  sw         $ra, 0x20($sp)
    /* AC460 800BBC60 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* AC464 800BBC64 1800B2AF */  sw         $s2, 0x18($sp)
    /* AC468 800BBC68 1400B1AF */  sw         $s1, 0x14($sp)
    /* AC46C 800BBC6C 1000B0AF */  sw         $s0, 0x10($sp)
    /* AC470 800BBC70 1180033C */  lui        $v1, %hi(D_8010C2A8)
    /* AC474 800BBC74 21186400 */  addu       $v1, $v1, $a0
    /* AC478 800BBC78 A8C2638C */  lw         $v1, %lo(D_8010C2A8)($v1)
    /* AC47C 800BBC7C 00110200 */  sll        $v0, $v0, 4
    /* AC480 800BBC80 21886200 */  addu       $s1, $v1, $v0
    /* AC484 800BBC84 54002286 */  lh         $v0, 0x54($s1)
    /* AC488 800BBC88 9000238E */  lw         $v1, 0x90($s1)
    /* AC48C 800BBC8C 54002496 */  lhu        $a0, 0x54($s1)
    /* AC490 800BBC90 23306200 */  subu       $a2, $v1, $v0
    /* AC494 800BBC94 0F00C018 */  blez       $a2, .L800BBCD4
    /* AC498 800BBC98 2A104300 */   slt       $v0, $v0, $v1
    /* AC49C 800BBC9C 52002386 */  lh         $v1, 0x52($s1)
    /* AC4A0 800BBCA0 52002296 */  lhu        $v0, 0x52($s1)
    /* AC4A4 800BBCA4 03006018 */  blez       $v1, .L800BBCB4
    /* AC4A8 800BBCA8 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* AC4AC 800BBCAC 46EF0208 */  j          .L800BBD18
    /* AC4B0 800BBCB0 520022A6 */   sh        $v0, 0x52($s1)
  .L800BBCB4:
    /* AC4B4 800BBCB4 05006014 */  bnez       $v1, .L800BBCCC
    /* AC4B8 800BBCB8 00000000 */   nop
    /* AC4BC 800BBCBC 9000228E */  lw         $v0, 0x90($s1)
    /* AC4C0 800BBCC0 520024A6 */  sh         $a0, 0x52($s1)
    /* AC4C4 800BBCC4 45EF0208 */  j          .L800BBD14
    /* AC4C8 800BBCC8 FFFF4224 */   addiu     $v0, $v0, -0x1
  .L800BBCCC:
    /* AC4CC 800BBCCC 46EF0208 */  j          .L800BBD18
    /* AC4D0 800BBCD0 900026AE */   sw        $a2, 0x90($s1)
  .L800BBCD4:
    /* AC4D4 800BBCD4 10004014 */  bnez       $v0, .L800BBD18
    /* AC4D8 800BBCD8 21806000 */   addu      $s0, $v1, $zero
    /* AC4DC 800BBCDC 2198E000 */  addu       $s3, $a3, $zero
    /* AC4E0 800BBCE0 2190A000 */  addu       $s2, $a1, $zero
    /* AC4E4 800BBCE4 03241300 */  sra        $a0, $s3, 16
  .L800BBCE8:
    /* AC4E8 800BBCE8 DEEF020C */  jal        func_800BBF78
    /* AC4EC 800BBCEC 032C1200 */   sra       $a1, $s2, 16
    /* AC4F0 800BBCF0 9000228E */  lw         $v0, 0x90($s1)
    /* AC4F4 800BBCF4 00000000 */  nop
    /* AC4F8 800BBCF8 FBFF4010 */  beqz       $v0, .L800BBCE8
    /* AC4FC 800BBCFC 03241300 */   sra       $a0, $s3, 16
    /* AC500 800BBD00 54002386 */  lh         $v1, 0x54($s1)
    /* AC504 800BBD04 21800202 */  addu       $s0, $s0, $v0
    /* AC508 800BBD08 2A100302 */  slt        $v0, $s0, $v1
    /* AC50C 800BBD0C F6FF4014 */  bnez       $v0, .L800BBCE8
    /* AC510 800BBD10 23100302 */   subu      $v0, $s0, $v1
  .L800BBD14:
    /* AC514 800BBD14 900022AE */  sw         $v0, 0x90($s1)
  .L800BBD18:
    /* AC518 800BBD18 2000BF8F */  lw         $ra, 0x20($sp)
    /* AC51C 800BBD1C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* AC520 800BBD20 1800B28F */  lw         $s2, 0x18($sp)
    /* AC524 800BBD24 1400B18F */  lw         $s1, 0x14($sp)
    /* AC528 800BBD28 1000B08F */  lw         $s0, 0x10($sp)
    /* AC52C 800BBD2C 0800E003 */  jr         $ra
    /* AC530 800BBD30 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800BBC38
