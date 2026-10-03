nonmatching func_800BE4A8, 0x484

glabel func_800BE4A8
    /* AECA8 800BE4A8 1180023C */  lui        $v0, %hi(D_8010A5B8)
    /* AECAC 800BE4AC B8A5428C */  lw         $v0, %lo(D_8010A5B8)($v0)
    /* AECB0 800BE4B0 88FFBD27 */  addiu      $sp, $sp, -0x78
    /* AECB4 800BE4B4 5000B0AF */  sw         $s0, 0x50($sp)
    /* AECB8 800BE4B8 7000BFAF */  sw         $ra, 0x70($sp)
    /* AECBC 800BE4BC 6C00B7AF */  sw         $s7, 0x6C($sp)
    /* AECC0 800BE4C0 6800B6AF */  sw         $s6, 0x68($sp)
    /* AECC4 800BE4C4 6400B5AF */  sw         $s5, 0x64($sp)
    /* AECC8 800BE4C8 6000B4AF */  sw         $s4, 0x60($sp)
    /* AECCC 800BE4CC 5C00B3AF */  sw         $s3, 0x5C($sp)
    /* AECD0 800BE4D0 5800B2AF */  sw         $s2, 0x58($sp)
    /* AECD4 800BE4D4 5400B1AF */  sw         $s1, 0x54($sp)
    /* AECD8 800BE4D8 01004224 */  addiu      $v0, $v0, 0x1
    /* AECDC 800BE4DC 0F004230 */  andi       $v0, $v0, 0xF
    /* AECE0 800BE4E0 1180013C */  lui        $at, %hi(D_8010A5B8)
    /* AECE4 800BE4E4 B8A522AC */  sw         $v0, %lo(D_8010A5B8)($at)
    /* AECE8 800BE4E8 80100200 */  sll        $v0, $v0, 2
    /* AECEC 800BE4EC 1180013C */  lui        $at, %hi(D_8010CE28)
    /* AECF0 800BE4F0 21082200 */  addu       $at, $at, $v0
    /* AECF4 800BE4F4 28CE20AC */  sw         $zero, %lo(D_8010CE28)($at)
    /* AECF8 800BE4F8 1080023C */  lui        $v0, %hi(D_800FB578)
    /* AECFC 800BE4FC 78B54280 */  lb         $v0, %lo(D_800FB578)($v0)
    /* AED00 800BE500 1180033C */  lui        $v1, %hi(D_8010CE28)
    /* AED04 800BE504 28CE6324 */  addiu      $v1, $v1, %lo(D_8010CE28)
    /* AED08 800BE508 1F004018 */  blez       $v0, .L800BE588
    /* AED0C 800BE50C 21800000 */   addu      $s0, $zero, $zero
    /* AED10 800BE510 21A06000 */  addu       $s4, $v1, $zero
    /* AED14 800BE514 01001324 */  addiu      $s3, $zero, 0x1
    /* AED18 800BE518 0E80123C */  lui        $s2, %hi(D_800E78DE)
    /* AED1C 800BE51C DE785226 */  addiu      $s2, $s2, %lo(D_800E78DE)
    /* AED20 800BE520 21880000 */  addu       $s1, $zero, $zero
  .L800BE524:
    /* AED24 800BE524 21200002 */  addu       $a0, $s0, $zero
    /* AED28 800BE528 7E13030C */  jal        func_800C4DF8
    /* AED2C 800BE52C 21284002 */   addu      $a1, $s2, $zero
    /* AED30 800BE530 0E80023C */  lui        $v0, %hi(D_800E78DE)
    /* AED34 800BE534 21105100 */  addu       $v0, $v0, $s1
    /* AED38 800BE538 DE784294 */  lhu        $v0, %lo(D_800E78DE)($v0)
    /* AED3C 800BE53C 00000000 */  nop
    /* AED40 800BE540 0A004014 */  bnez       $v0, .L800BE56C
    /* AED44 800BE544 04201302 */   sllv      $a0, $s3, $s0
    /* AED48 800BE548 1180023C */  lui        $v0, %hi(D_8010A5B8)
    /* AED4C 800BE54C B8A5428C */  lw         $v0, %lo(D_8010A5B8)($v0)
    /* AED50 800BE550 00000000 */  nop
    /* AED54 800BE554 80100200 */  sll        $v0, $v0, 2
    /* AED58 800BE558 21105400 */  addu       $v0, $v0, $s4
    /* AED5C 800BE55C 0000438C */  lw         $v1, 0x0($v0)
    /* AED60 800BE560 00000000 */  nop
    /* AED64 800BE564 25186400 */  or         $v1, $v1, $a0
    /* AED68 800BE568 000043AC */  sw         $v1, 0x0($v0)
  .L800BE56C:
    /* AED6C 800BE56C 36005226 */  addiu      $s2, $s2, 0x36
    /* AED70 800BE570 1080023C */  lui        $v0, %hi(D_800FB578)
    /* AED74 800BE574 78B54280 */  lb         $v0, %lo(D_800FB578)($v0)
    /* AED78 800BE578 01001026 */  addiu      $s0, $s0, 0x1
    /* AED7C 800BE57C 2A100202 */  slt        $v0, $s0, $v0
    /* AED80 800BE580 E8FF4014 */  bnez       $v0, .L800BE524
    /* AED84 800BE584 36003126 */   addiu     $s1, $s1, 0x36
  .L800BE588:
    /* AED88 800BE588 1180023C */  lui        $v0, %hi(D_8010A5A0)
    /* AED8C 800BE58C A0A54280 */  lb         $v0, %lo(D_8010A5A0)($v0)
    /* AED90 800BE590 00000000 */  nop
    /* AED94 800BE594 2F004014 */  bnez       $v0, .L800BE654
    /* AED98 800BE598 21800000 */   addu      $s0, $zero, $zero
    /* AED9C 800BE59C FFFF1224 */  addiu      $s2, $zero, -0x1
    /* AEDA0 800BE5A0 1180033C */  lui        $v1, %hi(D_8010CE28)
    /* AEDA4 800BE5A4 28CE6324 */  addiu      $v1, $v1, %lo(D_8010CE28)
  .L800BE5A8:
    /* AEDA8 800BE5A8 0000628C */  lw         $v0, 0x0($v1)
    /* AEDAC 800BE5AC 01001026 */  addiu      $s0, $s0, 0x1
    /* AEDB0 800BE5B0 24904202 */  and        $s2, $s2, $v0
    /* AEDB4 800BE5B4 0F00022A */  slti       $v0, $s0, 0xF
    /* AEDB8 800BE5B8 FBFF4014 */  bnez       $v0, .L800BE5A8
    /* AEDBC 800BE5BC 04006324 */   addiu     $v1, $v1, 0x4
    /* AEDC0 800BE5C0 1080023C */  lui        $v0, %hi(D_800FB578)
    /* AEDC4 800BE5C4 78B54280 */  lb         $v0, %lo(D_800FB578)($v0)
    /* AEDC8 800BE5C8 00000000 */  nop
    /* AEDCC 800BE5CC 20004018 */  blez       $v0, .L800BE650
    /* AEDD0 800BE5D0 21800000 */   addu      $s0, $zero, $zero
    /* AEDD4 800BE5D4 01001324 */  addiu      $s3, $zero, 0x1
    /* AEDD8 800BE5D8 02001424 */  addiu      $s4, $zero, 0x2
    /* AEDDC 800BE5DC 0E80113C */  lui        $s1, %hi(D_800E78F5)
    /* AEDE0 800BE5E0 F5783126 */  addiu      $s1, $s1, %lo(D_800E78F5)
  .L800BE5E4:
    /* AEDE4 800BE5E4 04281302 */  sllv       $a1, $s3, $s0
    /* AEDE8 800BE5E8 24104502 */  and        $v0, $s2, $a1
    /* AEDEC 800BE5EC 12004010 */  beqz       $v0, .L800BE638
    /* AEDF0 800BE5F0 00000000 */   nop
    /* AEDF4 800BE5F4 00002282 */  lb         $v0, 0x0($s1)
    /* AEDF8 800BE5F8 00000000 */  nop
    /* AEDFC 800BE5FC 0D005414 */  bne        $v0, $s4, .L800BE634
    /* AEE00 800BE600 1000022A */   slti      $v0, $s0, 0x10
    /* AEE04 800BE604 04004014 */  bnez       $v0, .L800BE618
    /* AEE08 800BE608 21100000 */   addu      $v0, $zero, $zero
    /* AEE0C 800BE60C 21280000 */  addu       $a1, $zero, $zero
    /* AEE10 800BE610 F0FF0226 */  addiu      $v0, $s0, -0x10
    /* AEE14 800BE614 04105300 */  sllv       $v0, $s3, $v0
  .L800BE618:
    /* AEE18 800BE618 21200000 */  addu       $a0, $zero, $zero
    /* AEE1C 800BE61C FF004230 */  andi       $v0, $v0, 0xFF
    /* AEE20 800BE620 00140200 */  sll        $v0, $v0, 16
    /* AEE24 800BE624 002C0500 */  sll        $a1, $a1, 16
    /* AEE28 800BE628 032C0500 */  sra        $a1, $a1, 16
    /* AEE2C 800BE62C BA0A030C */  jal        func_800C2AE8
    /* AEE30 800BE630 25284500 */   or        $a1, $v0, $a1
  .L800BE634:
    /* AEE34 800BE634 000020A2 */  sb         $zero, 0x0($s1)
  .L800BE638:
    /* AEE38 800BE638 1080023C */  lui        $v0, %hi(D_800FB578)
    /* AEE3C 800BE63C 78B54280 */  lb         $v0, %lo(D_800FB578)($v0)
    /* AEE40 800BE640 01001026 */  addiu      $s0, $s0, 0x1
    /* AEE44 800BE644 2A100202 */  slt        $v0, $s0, $v0
    /* AEE48 800BE648 E6FF4014 */  bnez       $v0, .L800BE5E4
    /* AEE4C 800BE64C 36003126 */   addiu     $s1, $s1, 0x36
  .L800BE650:
    /* AEE50 800BE650 21800000 */  addu       $s0, $zero, $zero
  .L800BE654:
    /* AEE54 800BE654 1180023C */  lui        $v0, %hi(D_8010CE6C)
    /* AEE58 800BE658 6CCE4294 */  lhu        $v0, %lo(D_8010CE6C)($v0)
    /* AEE5C 800BE65C 0E80033C */  lui        $v1, %hi(D_800E75F8)
    /* AEE60 800BE660 F8756394 */  lhu        $v1, %lo(D_800E75F8)($v1)
    /* AEE64 800BE664 27100200 */  nor        $v0, $zero, $v0
    /* AEE68 800BE668 24186200 */  and        $v1, $v1, $v0
    /* AEE6C 800BE66C 1180023C */  lui        $v0, %hi(D_8010CE6E)
    /* AEE70 800BE670 6ECE4294 */  lhu        $v0, %lo(D_8010CE6E)($v0)
    /* AEE74 800BE674 21880000 */  addu       $s1, $zero, $zero
    /* AEE78 800BE678 0E80013C */  lui        $at, %hi(D_800E75F8)
    /* AEE7C 800BE67C F87523A4 */  sh         $v1, %lo(D_800E75F8)($at)
    /* AEE80 800BE680 0E80033C */  lui        $v1, %hi(D_800E75FA)
    /* AEE84 800BE684 FA756394 */  lhu        $v1, %lo(D_800E75FA)($v1)
    /* AEE88 800BE688 27100200 */  nor        $v0, $zero, $v0
    /* AEE8C 800BE68C 24186200 */  and        $v1, $v1, $v0
    /* AEE90 800BE690 0E80013C */  lui        $at, %hi(D_800E75FA)
    /* AEE94 800BE694 FA7523A4 */  sh         $v1, %lo(D_800E75FA)($at)
  .L800BE698:
    /* AEE98 800BE698 0E80023C */  lui        $v0, %hi(D_800E78F6)
    /* AEE9C 800BE69C 21105100 */  addu       $v0, $v0, $s1
    /* AEEA0 800BE6A0 F6784284 */  lh         $v0, %lo(D_800E78F6)($v0)
    /* AEEA4 800BE6A4 00000000 */  nop
    /* AEEA8 800BE6A8 06004010 */  beqz       $v0, .L800BE6C4
    /* AEEAC 800BE6AC 00000000 */   nop
    /* AEEB0 800BE6B0 1180023C */  lui        $v0, %hi(D_8010A598)
    /* AEEB4 800BE6B4 98A5428C */  lw         $v0, %lo(D_8010A598)($v0)
    /* AEEB8 800BE6B8 00000000 */  nop
    /* AEEBC 800BE6BC 09F84000 */  jalr       $v0
    /* AEEC0 800BE6C0 21200002 */   addu      $a0, $s0, $zero
  .L800BE6C4:
    /* AEEC4 800BE6C4 0E80023C */  lui        $v0, %hi(D_800E7902)
    /* AEEC8 800BE6C8 21105100 */  addu       $v0, $v0, $s1
    /* AEECC 800BE6CC 02794284 */  lh         $v0, %lo(D_800E7902)($v0)
    /* AEED0 800BE6D0 00000000 */  nop
    /* AEED4 800BE6D4 06004010 */  beqz       $v0, .L800BE6F0
    /* AEED8 800BE6D8 00000000 */   nop
    /* AEEDC 800BE6DC 1080023C */  lui        $v0, %hi(D_800FF730)
    /* AEEE0 800BE6E0 30F7428C */  lw         $v0, %lo(D_800FF730)($v0)
    /* AEEE4 800BE6E4 00000000 */  nop
    /* AEEE8 800BE6E8 09F84000 */  jalr       $v0
    /* AEEEC 800BE6EC 21200002 */   addu      $a0, $s0, $zero
  .L800BE6F0:
    /* AEEF0 800BE6F0 01001026 */  addiu      $s0, $s0, 0x1
    /* AEEF4 800BE6F4 1800022A */  slti       $v0, $s0, 0x18
    /* AEEF8 800BE6F8 E7FF4014 */  bnez       $v0, .L800BE698
    /* AEEFC 800BE6FC 36003126 */   addiu     $s1, $s1, 0x36
    /* AEF00 800BE700 21800000 */  addu       $s0, $zero, $zero
    /* AEF04 800BE704 0F80113C */  lui        $s1, %hi(D_800E81E0)
    /* AEF08 800BE708 E0813126 */  addiu      $s1, $s1, %lo(D_800E81E0)
    /* AEF0C 800BE70C 1180023C */  lui        $v0, %hi(D_8010A418)
    /* AEF10 800BE710 18A44224 */  addiu      $v0, $v0, %lo(D_8010A418)
    /* AEF14 800BE714 0A005724 */  addiu      $s7, $v0, 0xA
    /* AEF18 800BE718 08005624 */  addiu      $s6, $v0, 0x8
    /* AEF1C 800BE71C 06005524 */  addiu      $s5, $v0, 0x6
    /* AEF20 800BE720 04005424 */  addiu      $s4, $v0, 0x4
    /* AEF24 800BE724 02005324 */  addiu      $s3, $v0, 0x2
    /* AEF28 800BE728 21904000 */  addu       $s2, $v0, $zero
  .L800BE72C:
    /* AEF2C 800BE72C 01000224 */  addiu      $v0, $zero, 0x1
    /* AEF30 800BE730 04100202 */  sllv       $v0, $v0, $s0
    /* AEF34 800BE734 1400A0AF */  sw         $zero, 0x14($sp)
    /* AEF38 800BE738 1000A2AF */  sw         $v0, 0x10($sp)
    /* AEF3C 800BE73C 00002292 */  lbu        $v0, 0x0($s1)
    /* AEF40 800BE740 00000000 */  nop
    /* AEF44 800BE744 01004230 */  andi       $v0, $v0, 0x1
    /* AEF48 800BE748 08004010 */  beqz       $v0, .L800BE76C
    /* AEF4C 800BE74C 03000224 */   addiu     $v0, $zero, 0x3
    /* AEF50 800BE750 1400A2AF */  sw         $v0, 0x14($sp)
    /* AEF54 800BE754 00004296 */  lhu        $v0, 0x0($s2)
    /* AEF58 800BE758 00000000 */  nop
    /* AEF5C 800BE75C 1800A2A7 */  sh         $v0, 0x18($sp)
    /* AEF60 800BE760 00006296 */  lhu        $v0, 0x0($s3)
    /* AEF64 800BE764 00000000 */  nop
    /* AEF68 800BE768 1A00A2A7 */  sh         $v0, 0x1A($sp)
  .L800BE76C:
    /* AEF6C 800BE76C 00002292 */  lbu        $v0, 0x0($s1)
    /* AEF70 800BE770 00000000 */  nop
    /* AEF74 800BE774 04004230 */  andi       $v0, $v0, 0x4
    /* AEF78 800BE778 08004010 */  beqz       $v0, .L800BE79C
    /* AEF7C 800BE77C 00000000 */   nop
    /* AEF80 800BE780 1400A28F */  lw         $v0, 0x14($sp)
    /* AEF84 800BE784 00000000 */  nop
    /* AEF88 800BE788 10004234 */  ori        $v0, $v0, 0x10
    /* AEF8C 800BE78C 1400A2AF */  sw         $v0, 0x14($sp)
    /* AEF90 800BE790 00008296 */  lhu        $v0, 0x0($s4)
    /* AEF94 800BE794 00000000 */  nop
    /* AEF98 800BE798 2400A2A7 */  sh         $v0, 0x24($sp)
  .L800BE79C:
    /* AEF9C 800BE79C 00002292 */  lbu        $v0, 0x0($s1)
    /* AEFA0 800BE7A0 00000000 */  nop
    /* AEFA4 800BE7A4 08004230 */  andi       $v0, $v0, 0x8
    /* AEFA8 800BE7A8 09004010 */  beqz       $v0, .L800BE7D0
    /* AEFAC 800BE7AC 00000000 */   nop
    /* AEFB0 800BE7B0 1400A28F */  lw         $v0, 0x14($sp)
    /* AEFB4 800BE7B4 00000000 */  nop
    /* AEFB8 800BE7B8 80004234 */  ori        $v0, $v0, 0x80
    /* AEFBC 800BE7BC 1400A2AF */  sw         $v0, 0x14($sp)
    /* AEFC0 800BE7C0 0000A296 */  lhu        $v0, 0x0($s5)
    /* AEFC4 800BE7C4 00000000 */  nop
    /* AEFC8 800BE7C8 C0100200 */  sll        $v0, $v0, 3
    /* AEFCC 800BE7CC 2C00A2AF */  sw         $v0, 0x2C($sp)
  .L800BE7D0:
    /* AEFD0 800BE7D0 00002292 */  lbu        $v0, 0x0($s1)
    /* AEFD4 800BE7D4 00000000 */  nop
    /* AEFD8 800BE7D8 10004230 */  andi       $v0, $v0, 0x10
    /* AEFDC 800BE7DC 0B004010 */  beqz       $v0, .L800BE80C
    /* AEFE0 800BE7E0 0600033C */   lui       $v1, (0x60000 >> 16)
    /* AEFE4 800BE7E4 1400A28F */  lw         $v0, 0x14($sp)
    /* AEFE8 800BE7E8 00000000 */  nop
    /* AEFEC 800BE7EC 25104300 */  or         $v0, $v0, $v1
    /* AEFF0 800BE7F0 1400A2AF */  sw         $v0, 0x14($sp)
    /* AEFF4 800BE7F4 0000C296 */  lhu        $v0, 0x0($s6)
    /* AEFF8 800BE7F8 00000000 */  nop
    /* AEFFC 800BE7FC 4A00A2A7 */  sh         $v0, 0x4A($sp)
    /* AF000 800BE800 0000E296 */  lhu        $v0, 0x0($s7)
    /* AF004 800BE804 00000000 */  nop
    /* AF008 800BE808 4C00A2A7 */  sh         $v0, 0x4C($sp)
  .L800BE80C:
    /* AF00C 800BE80C 1400A28F */  lw         $v0, 0x14($sp)
    /* AF010 800BE810 00000000 */  nop
    /* AF014 800BE814 03004010 */  beqz       $v0, .L800BE824
    /* AF018 800BE818 00000000 */   nop
    /* AF01C 800BE81C 2A11030C */  jal        func_800C44A8
    /* AF020 800BE820 1000A427 */   addiu     $a0, $sp, 0x10
  .L800BE824:
    /* AF024 800BE824 000020A2 */  sb         $zero, 0x0($s1)
    /* AF028 800BE828 01003126 */  addiu      $s1, $s1, 0x1
    /* AF02C 800BE82C 1000F726 */  addiu      $s7, $s7, 0x10
    /* AF030 800BE830 1000D626 */  addiu      $s6, $s6, 0x10
    /* AF034 800BE834 1000B526 */  addiu      $s5, $s5, 0x10
    /* AF038 800BE838 10009426 */  addiu      $s4, $s4, 0x10
    /* AF03C 800BE83C 10007326 */  addiu      $s3, $s3, 0x10
    /* AF040 800BE840 01001026 */  addiu      $s0, $s0, 0x1
    /* AF044 800BE844 1800022A */  slti       $v0, $s0, 0x18
    /* AF048 800BE848 B8FF4014 */  bnez       $v0, .L800BE72C
    /* AF04C 800BE84C 10005226 */   addiu     $s2, $s2, 0x10
    /* AF050 800BE850 21200000 */  addu       $a0, $zero, $zero
    /* AF054 800BE854 1180053C */  lui        $a1, %hi(D_8010CE6E)
    /* AF058 800BE858 6ECEA590 */  lbu        $a1, %lo(D_8010CE6E)($a1)
    /* AF05C 800BE85C 1180023C */  lui        $v0, %hi(D_8010CE6C)
    /* AF060 800BE860 6CCE4294 */  lhu        $v0, %lo(D_8010CE6C)($v0)
    /* AF064 800BE864 002C0500 */  sll        $a1, $a1, 16
    /* AF068 800BE868 E60E030C */  jal        func_800C3B98
    /* AF06C 800BE86C 2528A200 */   or        $a1, $a1, $v0
    /* AF070 800BE870 01000424 */  addiu      $a0, $zero, 0x1
    /* AF074 800BE874 0E80053C */  lui        $a1, %hi(D_800E75FA)
    /* AF078 800BE878 FA75A590 */  lbu        $a1, %lo(D_800E75FA)($a1)
    /* AF07C 800BE87C 0E80023C */  lui        $v0, %hi(D_800E75F8)
    /* AF080 800BE880 F8754294 */  lhu        $v0, %lo(D_800E75F8)($v0)
    /* AF084 800BE884 002C0500 */  sll        $a1, $a1, 16
    /* AF088 800BE888 E60E030C */  jal        func_800C3B98
    /* AF08C 800BE88C 2528A200 */   or        $a1, $a1, $v0
    /* AF090 800BE890 08000424 */  addiu      $a0, $zero, 0x8
    /* AF094 800BE894 0E80053C */  lui        $a1, %hi(D_800E75FE)
    /* AF098 800BE898 FE75A590 */  lbu        $a1, %lo(D_800E75FE)($a1)
    /* AF09C 800BE89C 0E80023C */  lui        $v0, %hi(D_800E75FC)
    /* AF0A0 800BE8A0 FC754294 */  lhu        $v0, %lo(D_800E75FC)($v0)
    /* AF0A4 800BE8A4 002C0500 */  sll        $a1, $a1, 16
    /* AF0A8 800BE8A8 6E0E030C */  jal        func_800C39B8
    /* AF0AC 800BE8AC 2528A200 */   or        $a1, $a1, $v0
    /* AF0B0 800BE8B0 08000424 */  addiu      $a0, $zero, 0x8
    /* AF0B4 800BE8B4 0E80053C */  lui        $a1, %hi(D_800E764C)
    /* AF0B8 800BE8B8 4C76A590 */  lbu        $a1, %lo(D_800E764C)($a1)
    /* AF0BC 800BE8BC 0E80023C */  lui        $v0, %hi(D_800E7600)
    /* AF0C0 800BE8C0 00764294 */  lhu        $v0, %lo(D_800E7600)($v0)
    /* AF0C4 800BE8C4 002C0500 */  sll        $a1, $a1, 16
    /* AF0C8 800BE8C8 BA0A030C */  jal        func_800C2AE8
    /* AF0CC 800BE8CC 2528A200 */   or        $a1, $a1, $v0
    /* AF0D0 800BE8D0 1180013C */  lui        $at, %hi(D_8010CE6C)
    /* AF0D4 800BE8D4 6CCE20A4 */  sh         $zero, %lo(D_8010CE6C)($at)
    /* AF0D8 800BE8D8 1180013C */  lui        $at, %hi(D_8010CE6E)
    /* AF0DC 800BE8DC 6ECE20A4 */  sh         $zero, %lo(D_8010CE6E)($at)
    /* AF0E0 800BE8E0 0E80013C */  lui        $at, %hi(D_800E75F8)
    /* AF0E4 800BE8E4 F87520A4 */  sh         $zero, %lo(D_800E75F8)($at)
    /* AF0E8 800BE8E8 0E80013C */  lui        $at, %hi(D_800E75FA)
    /* AF0EC 800BE8EC FA7520A4 */  sh         $zero, %lo(D_800E75FA)($at)
    /* AF0F0 800BE8F0 0E80013C */  lui        $at, %hi(D_800E7600)
    /* AF0F4 800BE8F4 007620A4 */  sh         $zero, %lo(D_800E7600)($at)
    /* AF0F8 800BE8F8 0E80013C */  lui        $at, %hi(D_800E764C)
    /* AF0FC 800BE8FC 4C7620A4 */  sh         $zero, %lo(D_800E764C)($at)
    /* AF100 800BE900 7000BF8F */  lw         $ra, 0x70($sp)
    /* AF104 800BE904 6C00B78F */  lw         $s7, 0x6C($sp)
    /* AF108 800BE908 6800B68F */  lw         $s6, 0x68($sp)
    /* AF10C 800BE90C 6400B58F */  lw         $s5, 0x64($sp)
    /* AF110 800BE910 6000B48F */  lw         $s4, 0x60($sp)
    /* AF114 800BE914 5C00B38F */  lw         $s3, 0x5C($sp)
    /* AF118 800BE918 5800B28F */  lw         $s2, 0x58($sp)
    /* AF11C 800BE91C 5400B18F */  lw         $s1, 0x54($sp)
    /* AF120 800BE920 5000B08F */  lw         $s0, 0x50($sp)
    /* AF124 800BE924 0800E003 */  jr         $ra
    /* AF128 800BE928 7800BD27 */   addiu     $sp, $sp, 0x78
endlabel func_800BE4A8
    /* AF12C 800BE92C 00000000 */  nop
    /* AF130 800BE930 00000000 */  nop
    /* AF134 800BE934 00000000 */  nop
