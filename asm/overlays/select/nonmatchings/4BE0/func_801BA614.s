nonmatching func_801BA614, 0x1D8

glabel func_801BA614
    /* 3169C 801BA614 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 316A0 801BA618 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 316A4 801BA61C 21A88000 */  addu       $s5, $a0, $zero
    /* 316A8 801BA620 4000BFAF */  sw         $ra, 0x40($sp)
    /* 316AC 801BA624 3800B4AF */  sw         $s4, 0x38($sp)
    /* 316B0 801BA628 3400B3AF */  sw         $s3, 0x34($sp)
    /* 316B4 801BA62C 3000B2AF */  sw         $s2, 0x30($sp)
    /* 316B8 801BA630 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 316BC 801BA634 2800B0AF */  sw         $s0, 0x28($sp)
    /* 316C0 801BA638 0400A392 */  lbu        $v1, 0x4($s5)
    /* 316C4 801BA63C FF000224 */  addiu      $v0, $zero, 0xFF
    /* 316C8 801BA640 11006214 */  bne        $v1, $v0, .L801BA688
    /* 316CC 801BA644 00000000 */   nop
    /* 316D0 801BA648 0E00B496 */  lhu        $s4, 0xE($s5)
    /* 316D4 801BA64C 1000B396 */  lhu        $s3, 0x10($s5)
    /* 316D8 801BA650 0A00A296 */  lhu        $v0, 0xA($s5)
    /* 316DC 801BA654 0C00A396 */  lhu        $v1, 0xC($s5)
    /* 316E0 801BA658 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 316E4 801BA65C 59008012 */  beqz       $s4, .L801BA7C4
    /* 316E8 801BA660 FFFF6324 */   addiu     $v1, $v1, -0x1
    /* 316EC 801BA664 57006012 */  beqz       $s3, .L801BA7C4
    /* 316F0 801BA668 02009426 */   addiu     $s4, $s4, 0x2
    /* 316F4 801BA66C 02007326 */  addiu      $s3, $s3, 0x2
    /* 316F8 801BA670 21200000 */  addu       $a0, $zero, $zero
    /* 316FC 801BA674 008C0200 */  sll        $s1, $v0, 16
    /* 31700 801BA678 038C1100 */  sra        $s1, $s1, 16
    /* 31704 801BA67C 21282002 */  addu       $a1, $s1, $zero
    /* 31708 801BA680 DBE90608 */  j          .L801BA76C
    /* 3170C 801BA684 00840300 */   sll       $s0, $v1, 16
  .L801BA688:
    /* 31710 801BA688 0000A48E */  lw         $a0, 0x0($s5)
    /* 31714 801BA68C 85E9060C */  jal        func_801BA614
    /* 31718 801BA690 00000000 */   nop
    /* 3171C 801BA694 0E00B496 */  lhu        $s4, 0xE($s5)
    /* 31720 801BA698 1000B396 */  lhu        $s3, 0x10($s5)
    /* 31724 801BA69C 0A00A296 */  lhu        $v0, 0xA($s5)
    /* 31728 801BA6A0 0C00A396 */  lhu        $v1, 0xC($s5)
    /* 3172C 801BA6A4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 31730 801BA6A8 1F008012 */  beqz       $s4, .L801BA728
    /* 31734 801BA6AC FFFF6324 */   addiu     $v1, $v1, -0x1
    /* 31738 801BA6B0 1D006012 */  beqz       $s3, .L801BA728
    /* 3173C 801BA6B4 02009426 */   addiu     $s4, $s4, 0x2
    /* 31740 801BA6B8 02007326 */  addiu      $s3, $s3, 0x2
    /* 31744 801BA6BC 21200000 */  addu       $a0, $zero, $zero
    /* 31748 801BA6C0 008C0200 */  sll        $s1, $v0, 16
    /* 3174C 801BA6C4 038C1100 */  sra        $s1, $s1, 16
    /* 31750 801BA6C8 21282002 */  addu       $a1, $s1, $zero
    /* 31754 801BA6CC 00840300 */  sll        $s0, $v1, 16
    /* 31758 801BA6D0 03841000 */  sra        $s0, $s0, 16
    /* 3175C 801BA6D4 21300002 */  addu       $a2, $s0, $zero
    /* 31760 801BA6D8 FFFF9432 */  andi       $s4, $s4, 0xFFFF
    /* 31764 801BA6DC 21388002 */  addu       $a3, $s4, $zero
    /* 31768 801BA6E0 FFFF7332 */  andi       $s3, $s3, 0xFFFF
    /* 3176C 801BA6E4 06001224 */  addiu      $s2, $zero, 0x6
    /* 31770 801BA6E8 1000B3AF */  sw         $s3, 0x10($sp)
    /* 31774 801BA6EC 1400A0AF */  sw         $zero, 0x14($sp)
    /* 31778 801BA6F0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3177C 801BA6F4 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 31780 801BA6F8 005A060C */  jal        func_80196800
    /* 31784 801BA6FC 2000B2AF */   sw        $s2, 0x20($sp)
    /* 31788 801BA700 21200000 */  addu       $a0, $zero, $zero
    /* 3178C 801BA704 05002526 */  addiu      $a1, $s1, 0x5
    /* 31790 801BA708 05000626 */  addiu      $a2, $s0, 0x5
    /* 31794 801BA70C 21388002 */  addu       $a3, $s4, $zero
    /* 31798 801BA710 1000B3AF */  sw         $s3, 0x10($sp)
    /* 3179C 801BA714 1400A0AF */  sw         $zero, 0x14($sp)
    /* 317A0 801BA718 1800A0AF */  sw         $zero, 0x18($sp)
    /* 317A4 801BA71C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 317A8 801BA720 005A060C */  jal        func_80196800
    /* 317AC 801BA724 2000B2AF */   sw        $s2, 0x20($sp)
  .L801BA728:
    /* 317B0 801BA728 1600B496 */  lhu        $s4, 0x16($s5)
    /* 317B4 801BA72C 1800B396 */  lhu        $s3, 0x18($s5)
    /* 317B8 801BA730 1200A296 */  lhu        $v0, 0x12($s5)
    /* 317BC 801BA734 1400A396 */  lhu        $v1, 0x14($s5)
    /* 317C0 801BA738 FFFF5124 */  addiu      $s1, $v0, -0x1
    /* 317C4 801BA73C FFFF7024 */  addiu      $s0, $v1, -0x1
    /* 317C8 801BA740 2B101400 */  sltu       $v0, $zero, $s4
    /* 317CC 801BA744 2B181300 */  sltu       $v1, $zero, $s3
    /* 317D0 801BA748 25104300 */  or         $v0, $v0, $v1
    /* 317D4 801BA74C 1D004010 */  beqz       $v0, .L801BA7C4
    /* 317D8 801BA750 02009426 */   addiu     $s4, $s4, 0x2
    /* 317DC 801BA754 02007326 */  addiu      $s3, $s3, 0x2
    /* 317E0 801BA758 21200000 */  addu       $a0, $zero, $zero
    /* 317E4 801BA75C 008C1100 */  sll        $s1, $s1, 16
    /* 317E8 801BA760 038C1100 */  sra        $s1, $s1, 16
    /* 317EC 801BA764 21282002 */  addu       $a1, $s1, $zero
    /* 317F0 801BA768 00841000 */  sll        $s0, $s0, 16
  .L801BA76C:
    /* 317F4 801BA76C 03841000 */  sra        $s0, $s0, 16
    /* 317F8 801BA770 21300002 */  addu       $a2, $s0, $zero
    /* 317FC 801BA774 FFFF9432 */  andi       $s4, $s4, 0xFFFF
    /* 31800 801BA778 21388002 */  addu       $a3, $s4, $zero
    /* 31804 801BA77C FFFF7332 */  andi       $s3, $s3, 0xFFFF
    /* 31808 801BA780 06001224 */  addiu      $s2, $zero, 0x6
    /* 3180C 801BA784 1000B3AF */  sw         $s3, 0x10($sp)
    /* 31810 801BA788 1400A0AF */  sw         $zero, 0x14($sp)
    /* 31814 801BA78C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 31818 801BA790 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 3181C 801BA794 005A060C */  jal        func_80196800
    /* 31820 801BA798 2000B2AF */   sw        $s2, 0x20($sp)
    /* 31824 801BA79C 21200000 */  addu       $a0, $zero, $zero
    /* 31828 801BA7A0 05002526 */  addiu      $a1, $s1, 0x5
    /* 3182C 801BA7A4 05000626 */  addiu      $a2, $s0, 0x5
    /* 31830 801BA7A8 21388002 */  addu       $a3, $s4, $zero
    /* 31834 801BA7AC 1000B3AF */  sw         $s3, 0x10($sp)
    /* 31838 801BA7B0 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3183C 801BA7B4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 31840 801BA7B8 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 31844 801BA7BC 005A060C */  jal        func_80196800
    /* 31848 801BA7C0 2000B2AF */   sw        $s2, 0x20($sp)
  .L801BA7C4:
    /* 3184C 801BA7C4 4000BF8F */  lw         $ra, 0x40($sp)
    /* 31850 801BA7C8 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 31854 801BA7CC 3800B48F */  lw         $s4, 0x38($sp)
    /* 31858 801BA7D0 3400B38F */  lw         $s3, 0x34($sp)
    /* 3185C 801BA7D4 3000B28F */  lw         $s2, 0x30($sp)
    /* 31860 801BA7D8 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 31864 801BA7DC 2800B08F */  lw         $s0, 0x28($sp)
    /* 31868 801BA7E0 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 3186C 801BA7E4 0800E003 */  jr         $ra
    /* 31870 801BA7E8 00000000 */   nop
endlabel func_801BA614
