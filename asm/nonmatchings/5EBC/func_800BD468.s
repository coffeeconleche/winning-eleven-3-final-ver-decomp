nonmatching func_800BD468, 0x810

glabel func_800BD468
    /* ADC68 800BD468 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* ADC6C 800BD46C 1000B0AF */  sw         $s0, 0x10($sp)
    /* ADC70 800BD470 4C00B08F */  lw         $s0, 0x4C($sp)
    /* ADC74 800BD474 1400B1AF */  sw         $s1, 0x14($sp)
    /* ADC78 800BD478 5000B18F */  lw         $s1, 0x50($sp)
    /* ADC7C 800BD47C 0F80023C */  lui        $v0, %hi(D_800F1014)
    /* ADC80 800BD480 1410428C */  lw         $v0, %lo(D_800F1014)($v0)
    /* ADC84 800BD484 3000BEAF */  sw         $fp, 0x30($sp)
    /* ADC88 800BD488 21F08000 */  addu       $fp, $a0, $zero
    /* ADC8C 800BD48C 2800B6AF */  sw         $s6, 0x28($sp)
    /* ADC90 800BD490 21B0A000 */  addu       $s6, $a1, $zero
    /* ADC94 800BD494 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* ADC98 800BD498 2198C000 */  addu       $s3, $a2, $zero
    /* ADC9C 800BD49C 2400B5AF */  sw         $s5, 0x24($sp)
    /* ADCA0 800BD4A0 21A8E000 */  addu       $s5, $a3, $zero
    /* ADCA4 800BD4A4 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* ADCA8 800BD4A8 4800B797 */  lhu        $s7, 0x48($sp)
    /* ADCAC 800BD4AC 01000324 */  addiu      $v1, $zero, 0x1
    /* ADCB0 800BD4B0 3400BFAF */  sw         $ra, 0x34($sp)
    /* ADCB4 800BD4B4 2000B4AF */  sw         $s4, 0x20($sp)
    /* ADCB8 800BD4B8 1800B2AF */  sw         $s2, 0x18($sp)
    /* ADCBC 800BD4BC 21900002 */  addu       $s2, $s0, $zero
    /* ADCC0 800BD4C0 03004314 */  bne        $v0, $v1, .L800BD4D0
    /* ADCC4 800BD4C4 21A02002 */   addu      $s4, $s1, $zero
    /* ADCC8 800BD4C8 E6F50208 */  j          .L800BD798
    /* ADCCC 800BD4CC FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800BD4D0:
    /* ADCD0 800BD4D0 0F80013C */  lui        $at, %hi(D_800F1014)
    /* ADCD4 800BD4D4 141023AC */  sw         $v1, %lo(D_800F1014)($at)
    /* ADCD8 800BD4D8 00240400 */  sll        $a0, $a0, 16
    /* ADCDC 800BD4DC 03240400 */  sra        $a0, $a0, 16
    /* ADCE0 800BD4E0 002C0500 */  sll        $a1, $a1, 16
    /* ADCE4 800BD4E4 AE02030C */  jal        func_800C0AB8
    /* ADCE8 800BD4E8 032C0500 */   sra       $a1, $a1, 16
    /* ADCEC 800BD4EC 6C004014 */  bnez       $v0, .L800BD6A0
    /* ADCF0 800BD4F0 21000224 */   addiu     $v0, $zero, 0x21
    /* ADCF4 800BD4F4 1180053C */  lui        $a1, %hi(D_8010A3DE)
    /* ADCF8 800BD4F8 DEA3A524 */  addiu      $a1, $a1, %lo(D_8010A3DE)
    /* ADCFC 800BD4FC 0000A2A4 */  sh         $v0, 0x0($a1)
    /* ADD00 800BD500 00141000 */  sll        $v0, $s0, 16
    /* ADD04 800BD504 031C0200 */  sra        $v1, $v0, 16
    /* ADD08 800BD508 00141100 */  sll        $v0, $s1, 16
    /* ADD0C 800BD50C 03240200 */  sra        $a0, $v0, 16
    /* ADD10 800BD510 ECFFB5A0 */  sb         $s5, -0x14($a1)
    /* ADD14 800BD514 EDFFB7A0 */  sb         $s7, -0x13($a1)
    /* ADD18 800BD518 05006414 */  bne        $v1, $a0, .L800BD530
    /* ADD1C 800BD51C F6FFB3A0 */   sb        $s3, -0xA($a1)
    /* ADD20 800BD520 40000224 */  addiu      $v0, $zero, 0x40
    /* ADD24 800BD524 EFFFA2A0 */  sb         $v0, -0x11($a1)
    /* ADD28 800BD528 6CF50208 */  j          .L800BD5B0
    /* ADD2C 800BD52C EEFFB2A0 */   sb        $s2, -0x12($a1)
  .L800BD530:
    /* ADD30 800BD530 2A108300 */  slt        $v0, $a0, $v1
    /* ADD34 800BD534 0E004010 */  beqz       $v0, .L800BD570
    /* ADD38 800BD538 80110400 */   sll       $v0, $a0, 6
    /* ADD3C 800BD53C 1A004300 */  div        $zero, $v0, $v1
    /* ADD40 800BD540 02006014 */  bnez       $v1, .L800BD54C
    /* ADD44 800BD544 00000000 */   nop
    /* ADD48 800BD548 0D000700 */  break      7
  .L800BD54C:
    /* ADD4C 800BD54C FFFF0124 */  addiu      $at, $zero, -0x1
    /* ADD50 800BD550 04006114 */  bne        $v1, $at, .L800BD564
    /* ADD54 800BD554 0080013C */   lui       $at, (0x80000000 >> 16)
    /* ADD58 800BD558 02004114 */  bne        $v0, $at, .L800BD564
    /* ADD5C 800BD55C 00000000 */   nop
    /* ADD60 800BD560 0D000600 */  break      6
  .L800BD564:
    /* ADD64 800BD564 12100000 */  mflo       $v0
    /* ADD68 800BD568 6BF50208 */  j          .L800BD5AC
    /* ADD6C 800BD56C EEFFB2A0 */   sb        $s2, -0x12($a1)
  .L800BD570:
    /* ADD70 800BD570 80190300 */  sll        $v1, $v1, 6
    /* ADD74 800BD574 1A006400 */  div        $zero, $v1, $a0
    /* ADD78 800BD578 02008014 */  bnez       $a0, .L800BD584
    /* ADD7C 800BD57C 00000000 */   nop
    /* ADD80 800BD580 0D000700 */  break      7
  .L800BD584:
    /* ADD84 800BD584 FFFF0124 */  addiu      $at, $zero, -0x1
    /* ADD88 800BD588 04008114 */  bne        $a0, $at, .L800BD59C
    /* ADD8C 800BD58C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* ADD90 800BD590 02006114 */  bne        $v1, $at, .L800BD59C
    /* ADD94 800BD594 00000000 */   nop
    /* ADD98 800BD598 0D000600 */  break      6
  .L800BD59C:
    /* ADD9C 800BD59C 12180000 */  mflo       $v1
    /* ADDA0 800BD5A0 7F000224 */  addiu      $v0, $zero, 0x7F
    /* ADDA4 800BD5A4 EEFFB4A0 */  sb         $s4, -0x12($a1)
    /* ADDA8 800BD5A8 23104300 */  subu       $v0, $v0, $v1
  .L800BD5AC:
    /* ADDAC 800BD5AC EFFFA2A0 */  sb         $v0, -0x11($a1)
  .L800BD5B0:
    /* ADDB0 800BD5B0 001C1600 */  sll        $v1, $s6, 16
    /* ADDB4 800BD5B4 0F80023C */  lui        $v0, %hi(D_800F1098)
    /* ADDB8 800BD5B8 9810428C */  lw         $v0, %lo(D_800F1098)($v0)
    /* ADDBC 800BD5BC 031B0300 */  sra        $v1, $v1, 12
    /* ADDC0 800BD5C0 21186200 */  addu       $v1, $v1, $v0
    /* ADDC4 800BD5C4 01006290 */  lbu        $v0, 0x1($v1)
    /* ADDC8 800BD5C8 1180103C */  lui        $s0, %hi(D_8010A3D2)
    /* ADDCC 800BD5CC D2A31026 */  addiu      $s0, $s0, %lo(D_8010A3D2)
    /* ADDD0 800BD5D0 000002A2 */  sb         $v0, 0x0($s0)
    /* ADDD4 800BD5D4 02000292 */  lbu        $v0, 0x2($s0)
    /* ADDD8 800BD5D8 04006490 */  lbu        $a0, 0x4($v1)
    /* ADDDC 800BD5DC 00160200 */  sll        $v0, $v0, 24
    /* ADDE0 800BD5E0 010004A2 */  sb         $a0, 0x1($s0)
    /* ADDE4 800BD5E4 00006490 */  lbu        $a0, 0x0($v1)
    /* ADDE8 800BD5E8 FDFF0382 */  lb         $v1, -0x3($s0)
    /* ADDEC 800BD5EC 03160200 */  sra        $v0, $v0, 24
    /* ADDF0 800BD5F0 00190300 */  sll        $v1, $v1, 4
    /* ADDF4 800BD5F4 21104300 */  addu       $v0, $v0, $v1
    /* ADDF8 800BD5F8 00140200 */  sll        $v0, $v0, 16
    /* ADDFC 800BD5FC F6FF04A2 */  sb         $a0, -0xA($s0)
    /* ADE00 800BD600 0F80033C */  lui        $v1, %hi(D_800F20B0)
    /* ADE04 800BD604 B020638C */  lw         $v1, %lo(D_800F20B0)($v1)
    /* ADE08 800BD608 C3120200 */  sra        $v0, $v0, 11
    /* ADE0C 800BD60C 21104300 */  addu       $v0, $v0, $v1
    /* ADE10 800BD610 00004390 */  lbu        $v1, 0x0($v0)
    /* ADE14 800BD614 00000000 */  nop
    /* ADE18 800BD618 050003A2 */  sb         $v1, 0x5($s0)
    /* ADE1C 800BD61C 16004494 */  lhu        $a0, 0x16($v0)
    /* ADE20 800BD620 00000000 */  nop
    /* ADE24 800BD624 0E0004A6 */  sh         $a0, 0xE($s0)
    /* ADE28 800BD628 02004390 */  lbu        $v1, 0x2($v0)
    /* ADE2C 800BD62C 00000000 */  nop
    /* ADE30 800BD630 030003A2 */  sb         $v1, 0x3($s0)
    /* ADE34 800BD634 03004390 */  lbu        $v1, 0x3($v0)
    /* ADE38 800BD638 00000000 */  nop
    /* ADE3C 800BD63C 040003A2 */  sb         $v1, 0x4($s0)
    /* ADE40 800BD640 04004390 */  lbu        $v1, 0x4($v0)
    /* ADE44 800BD644 00000000 */  nop
    /* ADE48 800BD648 060003A2 */  sb         $v1, 0x6($s0)
    /* ADE4C 800BD64C 05004390 */  lbu        $v1, 0x5($v0)
    /* ADE50 800BD650 00000000 */  nop
    /* ADE54 800BD654 070003A2 */  sb         $v1, 0x7($s0)
    /* ADE58 800BD658 01004390 */  lbu        $v1, 0x1($v0)
    /* ADE5C 800BD65C 00000000 */  nop
    /* ADE60 800BD660 0A0003A2 */  sb         $v1, 0xA($s0)
    /* ADE64 800BD664 06004390 */  lbu        $v1, 0x6($v0)
    /* ADE68 800BD668 00240400 */  sll        $a0, $a0, 16
    /* ADE6C 800BD66C 080003A2 */  sb         $v1, 0x8($s0)
    /* ADE70 800BD670 07004290 */  lbu        $v0, 0x7($v0)
    /* ADE74 800BD674 03240400 */  sra        $a0, $a0, 16
    /* ADE78 800BD678 09008010 */  beqz       $a0, .L800BD6A0
    /* ADE7C 800BD67C 090002A2 */   sb        $v0, 0x9($s0)
    /* ADE80 800BD680 0AF8020C */  jal        func_800BE028
    /* ADE84 800BD684 00000000 */   nop
    /* ADE88 800BD688 FF005130 */  andi       $s1, $v0, 0xFF
    /* ADE8C 800BD68C 1080023C */  lui        $v0, %hi(D_800FB578)
    /* ADE90 800BD690 78B54280 */  lb         $v0, %lo(D_800FB578)($v0)
    /* ADE94 800BD694 21182002 */  addu       $v1, $s1, $zero
    /* ADE98 800BD698 05006214 */  bne        $v1, $v0, .L800BD6B0
    /* ADE9C 800BD69C C0100300 */   sll       $v0, $v1, 3
  .L800BD6A0:
    /* ADEA0 800BD6A0 0F80013C */  lui        $at, %hi(D_800F1014)
    /* ADEA4 800BD6A4 141020AC */  sw         $zero, %lo(D_800F1014)($at)
    /* ADEA8 800BD6A8 E6F50208 */  j          .L800BD798
    /* ADEAC 800BD6AC FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800BD6B0:
    /* ADEB0 800BD6B0 23104300 */  subu       $v0, $v0, $v1
    /* ADEB4 800BD6B4 80100200 */  sll        $v0, $v0, 2
    /* ADEB8 800BD6B8 23104300 */  subu       $v0, $v0, $v1
    /* ADEBC 800BD6BC 40100200 */  sll        $v0, $v0, 1
    /* ADEC0 800BD6C0 21000324 */  addiu      $v1, $zero, 0x21
    /* ADEC4 800BD6C4 100011A6 */  sh         $s1, 0x10($s0)
    /* ADEC8 800BD6C8 0E80013C */  lui        $at, %hi(D_800E78E8)
    /* ADECC 800BD6CC 21082200 */  addu       $at, $at, $v0
    /* ADED0 800BD6D0 E87823A4 */  sh         $v1, %lo(D_800E78E8)($at)
    /* ADED4 800BD6D4 0E80013C */  lui        $at, %hi(D_800E78F0)
    /* ADED8 800BD6D8 21082200 */  addu       $at, $at, $v0
    /* ADEDC 800BD6DC F0783EA4 */  sh         $fp, %lo(D_800E78F0)($at)
    /* ADEE0 800BD6E0 FDFF0392 */  lbu        $v1, -0x3($s0)
    /* ADEE4 800BD6E4 0E80013C */  lui        $at, %hi(D_800E78EC)
    /* ADEE8 800BD6E8 21082200 */  addu       $at, $at, $v0
    /* ADEEC 800BD6EC EC7836A4 */  sh         $s6, %lo(D_800E78EC)($at)
    /* ADEF0 800BD6F0 001E0300 */  sll        $v1, $v1, 24
    /* ADEF4 800BD6F4 031E0300 */  sra        $v1, $v1, 24
    /* ADEF8 800BD6F8 0E80013C */  lui        $at, %hi(D_800E78EA)
    /* ADEFC 800BD6FC 21082200 */  addu       $at, $at, $v0
    /* ADF00 800BD700 EA7823A4 */  sh         $v1, %lo(D_800E78EA)($at)
    /* ADF04 800BD704 0E000396 */  lhu        $v1, 0xE($s0)
    /* ADF08 800BD708 0E80013C */  lui        $at, %hi(D_800E78D8)
    /* ADF0C 800BD70C 21082200 */  addu       $at, $at, $v0
    /* ADF10 800BD710 D87823A4 */  sh         $v1, %lo(D_800E78D8)($at)
    /* ADF14 800BD714 02000492 */  lbu        $a0, 0x2($s0)
    /* ADF18 800BD718 01000324 */  addiu      $v1, $zero, 0x1
    /* ADF1C 800BD71C 0E80013C */  lui        $at, %hi(D_800E78E6)
    /* ADF20 800BD720 21082200 */  addu       $at, $at, $v0
    /* ADF24 800BD724 E67835A4 */  sh         $s5, %lo(D_800E78E6)($at)
    /* ADF28 800BD728 0E80013C */  lui        $at, %hi(D_800E78F5)
    /* ADF2C 800BD72C 21082200 */  addu       $at, $at, $v0
    /* ADF30 800BD730 F57823A0 */  sb         $v1, %lo(D_800E78F5)($at)
    /* ADF34 800BD734 0E80013C */  lui        $at, %hi(D_800E78DA)
    /* ADF38 800BD738 21082200 */  addu       $at, $at, $v0
    /* ADF3C 800BD73C DA7820A4 */  sh         $zero, %lo(D_800E78DA)($at)
    /* ADF40 800BD740 00260400 */  sll        $a0, $a0, 24
    /* ADF44 800BD744 03260400 */  sra        $a0, $a0, 24
    /* ADF48 800BD748 0E80013C */  lui        $at, %hi(D_800E78EE)
    /* ADF4C 800BD74C 21082200 */  addu       $at, $at, $v0
    /* ADF50 800BD750 AEF8020C */  jal        func_800BE2B8
    /* ADF54 800BD754 EE7824A4 */   sh        $a0, %lo(D_800E78EE)($at)
    /* ADF58 800BD758 0E000386 */  lh         $v1, 0xE($s0)
    /* ADF5C 800BD75C FF000224 */  addiu      $v0, $zero, 0xFF
    /* ADF60 800BD760 05006214 */  bne        $v1, $v0, .L800BD778
    /* ADF64 800BD764 FFFFA432 */   andi      $a0, $s5, 0xFFFF
    /* ADF68 800BD768 D6FD020C */  jal        func_800BF758
    /* ADF6C 800BD76C 21202002 */   addu      $a0, $s1, $zero
    /* ADF70 800BD770 E3F50208 */  j          .L800BD78C
    /* ADF74 800BD774 00000000 */   nop
  .L800BD778:
    /* ADF78 800BD778 5BFD020C */  jal        func_800BF56C
    /* ADF7C 800BD77C 2128E002 */   addu      $a1, $s7, $zero
    /* ADF80 800BD780 01000424 */  addiu      $a0, $zero, 0x1
    /* ADF84 800BD784 7AFF020C */  jal        func_800BFDE8
    /* ADF88 800BD788 FFFF4530 */   andi      $a1, $v0, 0xFFFF
  .L800BD78C:
    /* ADF8C 800BD78C 0F80013C */  lui        $at, %hi(D_800F1014)
    /* ADF90 800BD790 141020AC */  sw         $zero, %lo(D_800F1014)($at)
    /* ADF94 800BD794 21102002 */  addu       $v0, $s1, $zero
  .L800BD798:
    /* ADF98 800BD798 3400BF8F */  lw         $ra, 0x34($sp)
    /* ADF9C 800BD79C 3000BE8F */  lw         $fp, 0x30($sp)
    /* ADFA0 800BD7A0 2C00B78F */  lw         $s7, 0x2C($sp)
    /* ADFA4 800BD7A4 2800B68F */  lw         $s6, 0x28($sp)
    /* ADFA8 800BD7A8 2400B58F */  lw         $s5, 0x24($sp)
    /* ADFAC 800BD7AC 2000B48F */  lw         $s4, 0x20($sp)
    /* ADFB0 800BD7B0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* ADFB4 800BD7B4 1800B28F */  lw         $s2, 0x18($sp)
    /* ADFB8 800BD7B8 1400B18F */  lw         $s1, 0x14($sp)
    /* ADFBC 800BD7BC 1000B08F */  lw         $s0, 0x10($sp)
    /* ADFC0 800BD7C0 0800E003 */  jr         $ra
    /* ADFC4 800BD7C4 3800BD27 */   addiu     $sp, $sp, 0x38
    /* ADFC8 800BD7C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* ADFCC 800BD7CC 1000B0AF */  sw         $s0, 0x10($sp)
    /* ADFD0 800BD7D0 21808000 */  addu       $s0, $a0, $zero
    /* ADFD4 800BD7D4 0F80023C */  lui        $v0, %hi(D_800F1014)
    /* ADFD8 800BD7D8 1410428C */  lw         $v0, %lo(D_800F1014)($v0)
    /* ADFDC 800BD7DC 2800A88F */  lw         $t0, 0x28($sp)
    /* ADFE0 800BD7E0 01000324 */  addiu      $v1, $zero, 0x1
    /* ADFE4 800BD7E4 47004310 */  beq        $v0, $v1, .L800BD904
    /* ADFE8 800BD7E8 1400BFAF */   sw        $ra, 0x14($sp)
    /* ADFEC 800BD7EC 0F80013C */  lui        $at, %hi(D_800F1014)
    /* ADFF0 800BD7F0 141023AC */  sw         $v1, %lo(D_800F1014)($at)
    /* ADFF4 800BD7F4 FFFF0232 */  andi       $v0, $s0, 0xFFFF
    /* ADFF8 800BD7F8 1800422C */  sltiu      $v0, $v0, 0x18
    /* ADFFC 800BD7FC 3F004010 */  beqz       $v0, .L800BD8FC
    /* AE000 800BD800 001C0400 */   sll       $v1, $a0, 16
    /* AE004 800BD804 031C0300 */  sra        $v1, $v1, 16
    /* AE008 800BD808 C0100300 */  sll        $v0, $v1, 3
    /* AE00C 800BD80C 23104300 */  subu       $v0, $v0, $v1
    /* AE010 800BD810 80100200 */  sll        $v0, $v0, 2
    /* AE014 800BD814 23104300 */  subu       $v0, $v0, $v1
    /* AE018 800BD818 40200200 */  sll        $a0, $v0, 1
    /* AE01C 800BD81C 0E80033C */  lui        $v1, %hi(D_800E78F0)
    /* AE020 800BD820 21186400 */  addu       $v1, $v1, $a0
    /* AE024 800BD824 F0786384 */  lh         $v1, %lo(D_800E78F0)($v1)
    /* AE028 800BD828 00140500 */  sll        $v0, $a1, 16
    /* AE02C 800BD82C 03140200 */  sra        $v0, $v0, 16
    /* AE030 800BD830 1D006214 */  bne        $v1, $v0, .L800BD8A8
    /* AE034 800BD834 00140600 */   sll       $v0, $a2, 16
    /* AE038 800BD838 0E80033C */  lui        $v1, %hi(D_800E78EC)
    /* AE03C 800BD83C 21186400 */  addu       $v1, $v1, $a0
    /* AE040 800BD840 EC786384 */  lh         $v1, %lo(D_800E78EC)($v1)
    /* AE044 800BD844 03140200 */  sra        $v0, $v0, 16
    /* AE048 800BD848 17006214 */  bne        $v1, $v0, .L800BD8A8
    /* AE04C 800BD84C 00140700 */   sll       $v0, $a3, 16
    /* AE050 800BD850 0E80033C */  lui        $v1, %hi(D_800E78EE)
    /* AE054 800BD854 21186400 */  addu       $v1, $v1, $a0
    /* AE058 800BD858 EE786384 */  lh         $v1, %lo(D_800E78EE)($v1)
    /* AE05C 800BD85C 03140200 */  sra        $v0, $v0, 16
    /* AE060 800BD860 11006214 */  bne        $v1, $v0, .L800BD8A8
    /* AE064 800BD864 00140800 */   sll       $v0, $t0, 16
    /* AE068 800BD868 0E80033C */  lui        $v1, %hi(D_800E78E6)
    /* AE06C 800BD86C 21186400 */  addu       $v1, $v1, $a0
    /* AE070 800BD870 E6786384 */  lh         $v1, %lo(D_800E78E6)($v1)
    /* AE074 800BD874 03140200 */  sra        $v0, $v0, 16
    /* AE078 800BD878 0B006214 */  bne        $v1, $v0, .L800BD8A8
    /* AE07C 800BD87C FF000224 */   addiu     $v0, $zero, 0xFF
    /* AE080 800BD880 0E80033C */  lui        $v1, %hi(D_800E78D8)
    /* AE084 800BD884 21186400 */  addu       $v1, $v1, $a0
    /* AE088 800BD888 D8786384 */  lh         $v1, %lo(D_800E78D8)($v1)
    /* AE08C 800BD88C 00000000 */  nop
    /* AE090 800BD890 05006214 */  bne        $v1, $v0, .L800BD8A8
    /* AE094 800BD894 00000000 */   nop
    /* AE098 800BD898 36FF020C */  jal        func_800BFCD8
    /* AE09C 800BD89C FF000432 */   andi      $a0, $s0, 0xFF
    /* AE0A0 800BD8A0 2FF60208 */  j          .L800BD8BC
    /* AE0A4 800BD8A4 21100000 */   addu      $v0, $zero, $zero
  .L800BD8A8:
    /* AE0A8 800BD8A8 1180013C */  lui        $at, %hi(D_8010A3E2)
    /* AE0AC 800BD8AC E2A330A4 */  sh         $s0, %lo(D_8010A3E2)($at)
    /* AE0B0 800BD8B0 46FF020C */  jal        func_800BFD18
    /* AE0B4 800BD8B4 21200000 */   addu      $a0, $zero, $zero
    /* AE0B8 800BD8B8 21100000 */  addu       $v0, $zero, $zero
  .L800BD8BC:
    /* AE0BC 800BD8BC 00241000 */  sll        $a0, $s0, 16
    /* AE0C0 800BD8C0 03240400 */  sra        $a0, $a0, 16
    /* AE0C4 800BD8C4 C0180400 */  sll        $v1, $a0, 3
    /* AE0C8 800BD8C8 23186400 */  subu       $v1, $v1, $a0
    /* AE0CC 800BD8CC 80180300 */  sll        $v1, $v1, 2
    /* AE0D0 800BD8D0 23186400 */  subu       $v1, $v1, $a0
    /* AE0D4 800BD8D4 40180300 */  sll        $v1, $v1, 1
    /* AE0D8 800BD8D8 0E80013C */  lui        $at, %hi(D_800E7902)
    /* AE0DC 800BD8DC 21082300 */  addu       $at, $at, $v1
    /* AE0E0 800BD8E0 027920A4 */  sh         $zero, %lo(D_800E7902)($at)
    /* AE0E4 800BD8E4 0E80013C */  lui        $at, %hi(D_800E78F6)
    /* AE0E8 800BD8E8 21082300 */  addu       $at, $at, $v1
    /* AE0EC 800BD8EC F67820A4 */  sh         $zero, %lo(D_800E78F6)($at)
    /* AE0F0 800BD8F0 0F80013C */  lui        $at, %hi(D_800F1014)
    /* AE0F4 800BD8F4 42F60208 */  j          .L800BD908
    /* AE0F8 800BD8F8 141020AC */   sw        $zero, %lo(D_800F1014)($at)
  .L800BD8FC:
    /* AE0FC 800BD8FC 0F80013C */  lui        $at, %hi(D_800F1014)
    /* AE100 800BD900 141020AC */  sw         $zero, %lo(D_800F1014)($at)
  .L800BD904:
    /* AE104 800BD904 FFFF0224 */  addiu      $v0, $zero, -0x1
  .L800BD908:
    /* AE108 800BD908 1400BF8F */  lw         $ra, 0x14($sp)
    /* AE10C 800BD90C 1000B08F */  lw         $s0, 0x10($sp)
    /* AE110 800BD910 0800E003 */  jr         $ra
    /* AE114 800BD914 1800BD27 */   addiu     $sp, $sp, 0x18
    /* AE118 800BD918 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* AE11C 800BD91C 1800B0AF */  sw         $s0, 0x18($sp)
    /* AE120 800BD920 5800B08F */  lw         $s0, 0x58($sp)
    /* AE124 800BD924 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* AE128 800BD928 5C00B18F */  lw         $s1, 0x5C($sp)
    /* AE12C 800BD92C 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* AE130 800BD930 5000B597 */  lhu        $s5, 0x50($sp)
    /* AE134 800BD934 0F80023C */  lui        $v0, %hi(D_800F1014)
    /* AE138 800BD938 1410428C */  lw         $v0, %lo(D_800F1014)($v0)
    /* AE13C 800BD93C 2000B2AF */  sw         $s2, 0x20($sp)
    /* AE140 800BD940 21908000 */  addu       $s2, $a0, $zero
    /* AE144 800BD944 3400B7AF */  sw         $s7, 0x34($sp)
    /* AE148 800BD948 21B8C000 */  addu       $s7, $a2, $zero
    /* AE14C 800BD94C 2800B4AF */  sw         $s4, 0x28($sp)
    /* AE150 800BD950 21A0E000 */  addu       $s4, $a3, $zero
    /* AE154 800BD954 3800BEAF */  sw         $fp, 0x38($sp)
    /* AE158 800BD958 5400BE97 */  lhu        $fp, 0x54($sp)
    /* AE15C 800BD95C 01000324 */  addiu      $v1, $zero, 0x1
    /* AE160 800BD960 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* AE164 800BD964 3000B6AF */  sw         $s6, 0x30($sp)
    /* AE168 800BD968 2400B3AF */  sw         $s3, 0x24($sp)
    /* AE16C 800BD96C 1000A5A7 */  sh         $a1, 0x10($sp)
    /* AE170 800BD970 21980002 */  addu       $s3, $s0, $zero
    /* AE174 800BD974 03004314 */  bne        $v0, $v1, .L800BD984
    /* AE178 800BD978 21B02002 */   addu      $s6, $s1, $zero
    /* AE17C 800BD97C 12F70208 */  j          .L800BDC48
    /* AE180 800BD980 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800BD984:
    /* AE184 800BD984 0F80013C */  lui        $at, %hi(D_800F1014)
    /* AE188 800BD988 141023AC */  sw         $v1, %lo(D_800F1014)($at)
    /* AE18C 800BD98C FFFF4232 */  andi       $v0, $s2, 0xFFFF
    /* AE190 800BD990 1800422C */  sltiu      $v0, $v0, 0x18
    /* AE194 800BD994 69004010 */  beqz       $v0, .L800BDB3C
    /* AE198 800BD998 00240500 */   sll       $a0, $a1, 16
    /* AE19C 800BD99C 03240400 */  sra        $a0, $a0, 16
    /* AE1A0 800BD9A0 002C0600 */  sll        $a1, $a2, 16
    /* AE1A4 800BD9A4 AE02030C */  jal        func_800C0AB8
    /* AE1A8 800BD9A8 032C0500 */   sra       $a1, $a1, 16
    /* AE1AC 800BD9AC 63004014 */  bnez       $v0, .L800BDB3C
    /* AE1B0 800BD9B0 21000224 */   addiu     $v0, $zero, 0x21
    /* AE1B4 800BD9B4 1180053C */  lui        $a1, %hi(D_8010A3DE)
    /* AE1B8 800BD9B8 DEA3A524 */  addiu      $a1, $a1, %lo(D_8010A3DE)
    /* AE1BC 800BD9BC 0000A2A4 */  sh         $v0, 0x0($a1)
    /* AE1C0 800BD9C0 00141000 */  sll        $v0, $s0, 16
    /* AE1C4 800BD9C4 031C0200 */  sra        $v1, $v0, 16
    /* AE1C8 800BD9C8 00141100 */  sll        $v0, $s1, 16
    /* AE1CC 800BD9CC 03240200 */  sra        $a0, $v0, 16
    /* AE1D0 800BD9D0 ECFFB5A0 */  sb         $s5, -0x14($a1)
    /* AE1D4 800BD9D4 EDFFBEA0 */  sb         $fp, -0x13($a1)
    /* AE1D8 800BD9D8 05006414 */  bne        $v1, $a0, .L800BD9F0
    /* AE1DC 800BD9DC F6FFB4A0 */   sb        $s4, -0xA($a1)
    /* AE1E0 800BD9E0 40000224 */  addiu      $v0, $zero, 0x40
    /* AE1E4 800BD9E4 EFFFA2A0 */  sb         $v0, -0x11($a1)
    /* AE1E8 800BD9E8 9CF60208 */  j          .L800BDA70
    /* AE1EC 800BD9EC EEFFB3A0 */   sb        $s3, -0x12($a1)
  .L800BD9F0:
    /* AE1F0 800BD9F0 2A108300 */  slt        $v0, $a0, $v1
    /* AE1F4 800BD9F4 0E004010 */  beqz       $v0, .L800BDA30
    /* AE1F8 800BD9F8 80110400 */   sll       $v0, $a0, 6
    /* AE1FC 800BD9FC 1A004300 */  div        $zero, $v0, $v1
    /* AE200 800BDA00 02006014 */  bnez       $v1, .L800BDA0C
    /* AE204 800BDA04 00000000 */   nop
    /* AE208 800BDA08 0D000700 */  break      7
  .L800BDA0C:
    /* AE20C 800BDA0C FFFF0124 */  addiu      $at, $zero, -0x1
    /* AE210 800BDA10 04006114 */  bne        $v1, $at, .L800BDA24
    /* AE214 800BDA14 0080013C */   lui       $at, (0x80000000 >> 16)
    /* AE218 800BDA18 02004114 */  bne        $v0, $at, .L800BDA24
    /* AE21C 800BDA1C 00000000 */   nop
    /* AE220 800BDA20 0D000600 */  break      6
  .L800BDA24:
    /* AE224 800BDA24 12100000 */  mflo       $v0
    /* AE228 800BDA28 9BF60208 */  j          .L800BDA6C
    /* AE22C 800BDA2C EEFFB3A0 */   sb        $s3, -0x12($a1)
  .L800BDA30:
    /* AE230 800BDA30 80190300 */  sll        $v1, $v1, 6
    /* AE234 800BDA34 1A006400 */  div        $zero, $v1, $a0
    /* AE238 800BDA38 02008014 */  bnez       $a0, .L800BDA44
    /* AE23C 800BDA3C 00000000 */   nop
    /* AE240 800BDA40 0D000700 */  break      7
  .L800BDA44:
    /* AE244 800BDA44 FFFF0124 */  addiu      $at, $zero, -0x1
    /* AE248 800BDA48 04008114 */  bne        $a0, $at, .L800BDA5C
    /* AE24C 800BDA4C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* AE250 800BDA50 02006114 */  bne        $v1, $at, .L800BDA5C
    /* AE254 800BDA54 00000000 */   nop
    /* AE258 800BDA58 0D000600 */  break      6
  .L800BDA5C:
    /* AE25C 800BDA5C 12180000 */  mflo       $v1
    /* AE260 800BDA60 7F000224 */  addiu      $v0, $zero, 0x7F
    /* AE264 800BDA64 EEFFB6A0 */  sb         $s6, -0x12($a1)
    /* AE268 800BDA68 23104300 */  subu       $v0, $v0, $v1
  .L800BDA6C:
    /* AE26C 800BDA6C EFFFA2A0 */  sb         $v0, -0x11($a1)
  .L800BDA70:
    /* AE270 800BDA70 001C1700 */  sll        $v1, $s7, 16
    /* AE274 800BDA74 0F80023C */  lui        $v0, %hi(D_800F1098)
    /* AE278 800BDA78 9810428C */  lw         $v0, %lo(D_800F1098)($v0)
    /* AE27C 800BDA7C 031B0300 */  sra        $v1, $v1, 12
    /* AE280 800BDA80 21186200 */  addu       $v1, $v1, $v0
    /* AE284 800BDA84 01006290 */  lbu        $v0, 0x1($v1)
    /* AE288 800BDA88 1180103C */  lui        $s0, %hi(D_8010A3D2)
    /* AE28C 800BDA8C D2A31026 */  addiu      $s0, $s0, %lo(D_8010A3D2)
    /* AE290 800BDA90 000002A2 */  sb         $v0, 0x0($s0)
    /* AE294 800BDA94 02000292 */  lbu        $v0, 0x2($s0)
    /* AE298 800BDA98 04006490 */  lbu        $a0, 0x4($v1)
    /* AE29C 800BDA9C 00160200 */  sll        $v0, $v0, 24
    /* AE2A0 800BDAA0 010004A2 */  sb         $a0, 0x1($s0)
    /* AE2A4 800BDAA4 00006490 */  lbu        $a0, 0x0($v1)
    /* AE2A8 800BDAA8 FDFF0382 */  lb         $v1, -0x3($s0)
    /* AE2AC 800BDAAC 03160200 */  sra        $v0, $v0, 24
    /* AE2B0 800BDAB0 00190300 */  sll        $v1, $v1, 4
    /* AE2B4 800BDAB4 21104300 */  addu       $v0, $v0, $v1
    /* AE2B8 800BDAB8 00140200 */  sll        $v0, $v0, 16
    /* AE2BC 800BDABC F6FF04A2 */  sb         $a0, -0xA($s0)
    /* AE2C0 800BDAC0 0F80033C */  lui        $v1, %hi(D_800F20B0)
    /* AE2C4 800BDAC4 B020638C */  lw         $v1, %lo(D_800F20B0)($v1)
    /* AE2C8 800BDAC8 C3120200 */  sra        $v0, $v0, 11
    /* AE2CC 800BDACC 21104300 */  addu       $v0, $v0, $v1
    /* AE2D0 800BDAD0 00004390 */  lbu        $v1, 0x0($v0)
    /* AE2D4 800BDAD4 00000000 */  nop
    /* AE2D8 800BDAD8 050003A2 */  sb         $v1, 0x5($s0)
    /* AE2DC 800BDADC 16004494 */  lhu        $a0, 0x16($v0)
    /* AE2E0 800BDAE0 00000000 */  nop
    /* AE2E4 800BDAE4 0E0004A6 */  sh         $a0, 0xE($s0)
    /* AE2E8 800BDAE8 02004390 */  lbu        $v1, 0x2($v0)
    /* AE2EC 800BDAEC 00000000 */  nop
    /* AE2F0 800BDAF0 030003A2 */  sb         $v1, 0x3($s0)
    /* AE2F4 800BDAF4 03004390 */  lbu        $v1, 0x3($v0)
    /* AE2F8 800BDAF8 00000000 */  nop
    /* AE2FC 800BDAFC 040003A2 */  sb         $v1, 0x4($s0)
    /* AE300 800BDB00 04004390 */  lbu        $v1, 0x4($v0)
    /* AE304 800BDB04 00000000 */  nop
    /* AE308 800BDB08 060003A2 */  sb         $v1, 0x6($s0)
    /* AE30C 800BDB0C 05004390 */  lbu        $v1, 0x5($v0)
    /* AE310 800BDB10 00000000 */  nop
    /* AE314 800BDB14 070003A2 */  sb         $v1, 0x7($s0)
    /* AE318 800BDB18 01004390 */  lbu        $v1, 0x1($v0)
    /* AE31C 800BDB1C 00000000 */  nop
    /* AE320 800BDB20 0A0003A2 */  sb         $v1, 0xA($s0)
    /* AE324 800BDB24 06004390 */  lbu        $v1, 0x6($v0)
    /* AE328 800BDB28 00000000 */  nop
    /* AE32C 800BDB2C 080003A2 */  sb         $v1, 0x8($s0)
    /* AE330 800BDB30 07004290 */  lbu        $v0, 0x7($v0)
    /* AE334 800BDB34 05008014 */  bnez       $a0, .L800BDB4C
    /* AE338 800BDB38 090002A2 */   sb        $v0, 0x9($s0)
  .L800BDB3C:
    /* AE33C 800BDB3C 0F80013C */  lui        $at, %hi(D_800F1014)
    /* AE340 800BDB40 141020AC */  sw         $zero, %lo(D_800F1014)($at)
    /* AE344 800BDB44 12F70208 */  j          .L800BDC48
    /* AE348 800BDB48 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800BDB4C:
    /* AE34C 800BDB4C 001C1200 */  sll        $v1, $s2, 16
    /* AE350 800BDB50 031C0300 */  sra        $v1, $v1, 16
    /* AE354 800BDB54 C0100300 */  sll        $v0, $v1, 3
    /* AE358 800BDB58 23104300 */  subu       $v0, $v0, $v1
    /* AE35C 800BDB5C 80100200 */  sll        $v0, $v0, 2
    /* AE360 800BDB60 23104300 */  subu       $v0, $v0, $v1
    /* AE364 800BDB64 40100200 */  sll        $v0, $v0, 1
    /* AE368 800BDB68 100012A6 */  sh         $s2, 0x10($s0)
    /* AE36C 800BDB6C 1000A897 */  lhu        $t0, 0x10($sp)
    /* AE370 800BDB70 21000324 */  addiu      $v1, $zero, 0x21
    /* AE374 800BDB74 0E80013C */  lui        $at, %hi(D_800E78E8)
    /* AE378 800BDB78 21082200 */  addu       $at, $at, $v0
    /* AE37C 800BDB7C E87823A4 */  sh         $v1, %lo(D_800E78E8)($at)
    /* AE380 800BDB80 0E80013C */  lui        $at, %hi(D_800E78F0)
    /* AE384 800BDB84 21082200 */  addu       $at, $at, $v0
    /* AE388 800BDB88 F07828A4 */  sh         $t0, %lo(D_800E78F0)($at)
    /* AE38C 800BDB8C FDFF0392 */  lbu        $v1, -0x3($s0)
    /* AE390 800BDB90 0E80013C */  lui        $at, %hi(D_800E78EC)
    /* AE394 800BDB94 21082200 */  addu       $at, $at, $v0
    /* AE398 800BDB98 EC7837A4 */  sh         $s7, %lo(D_800E78EC)($at)
    /* AE39C 800BDB9C 001E0300 */  sll        $v1, $v1, 24
    /* AE3A0 800BDBA0 031E0300 */  sra        $v1, $v1, 24
    /* AE3A4 800BDBA4 0E80013C */  lui        $at, %hi(D_800E78EA)
    /* AE3A8 800BDBA8 21082200 */  addu       $at, $at, $v0
    /* AE3AC 800BDBAC EA7823A4 */  sh         $v1, %lo(D_800E78EA)($at)
    /* AE3B0 800BDBB0 0E000396 */  lhu        $v1, 0xE($s0)
    /* AE3B4 800BDBB4 0E80013C */  lui        $at, %hi(D_800E78D8)
    /* AE3B8 800BDBB8 21082200 */  addu       $at, $at, $v0
    /* AE3BC 800BDBBC D87823A4 */  sh         $v1, %lo(D_800E78D8)($at)
    /* AE3C0 800BDBC0 02000492 */  lbu        $a0, 0x2($s0)
    /* AE3C4 800BDBC4 01000324 */  addiu      $v1, $zero, 0x1
    /* AE3C8 800BDBC8 0E80013C */  lui        $at, %hi(D_800E78E6)
    /* AE3CC 800BDBCC 21082200 */  addu       $at, $at, $v0
    /* AE3D0 800BDBD0 E67835A4 */  sh         $s5, %lo(D_800E78E6)($at)
    /* AE3D4 800BDBD4 0E80013C */  lui        $at, %hi(D_800E78F5)
    /* AE3D8 800BDBD8 21082200 */  addu       $at, $at, $v0
    /* AE3DC 800BDBDC F57823A0 */  sb         $v1, %lo(D_800E78F5)($at)
    /* AE3E0 800BDBE0 0E80013C */  lui        $at, %hi(D_800E78DA)
    /* AE3E4 800BDBE4 21082200 */  addu       $at, $at, $v0
    /* AE3E8 800BDBE8 DA7820A4 */  sh         $zero, %lo(D_800E78DA)($at)
    /* AE3EC 800BDBEC 00260400 */  sll        $a0, $a0, 24
    /* AE3F0 800BDBF0 03260400 */  sra        $a0, $a0, 24
    /* AE3F4 800BDBF4 0E80013C */  lui        $at, %hi(D_800E78EE)
    /* AE3F8 800BDBF8 21082200 */  addu       $at, $at, $v0
    /* AE3FC 800BDBFC AEF8020C */  jal        func_800BE2B8
    /* AE400 800BDC00 EE7824A4 */   sh        $a0, %lo(D_800E78EE)($at)
    /* AE404 800BDC04 0E000386 */  lh         $v1, 0xE($s0)
    /* AE408 800BDC08 FF000224 */  addiu      $v0, $zero, 0xFF
    /* AE40C 800BDC0C 05006214 */  bne        $v1, $v0, .L800BDC24
    /* AE410 800BDC10 2120A002 */   addu      $a0, $s5, $zero
    /* AE414 800BDC14 D6FD020C */  jal        func_800BF758
    /* AE418 800BDC18 FF004432 */   andi      $a0, $s2, 0xFF
    /* AE41C 800BDC1C 0EF70208 */  j          .L800BDC38
    /* AE420 800BDC20 00000000 */   nop
  .L800BDC24:
    /* AE424 800BDC24 5BFD020C */  jal        func_800BF56C
    /* AE428 800BDC28 2128C003 */   addu      $a1, $fp, $zero
    /* AE42C 800BDC2C 01000424 */  addiu      $a0, $zero, 0x1
    /* AE430 800BDC30 7AFF020C */  jal        func_800BFDE8
    /* AE434 800BDC34 FFFF4530 */   andi      $a1, $v0, 0xFFFF
  .L800BDC38:
    /* AE438 800BDC38 0F80013C */  lui        $at, %hi(D_800F1014)
    /* AE43C 800BDC3C 141020AC */  sw         $zero, %lo(D_800F1014)($at)
    /* AE440 800BDC40 00141200 */  sll        $v0, $s2, 16
    /* AE444 800BDC44 03140200 */  sra        $v0, $v0, 16
  .L800BDC48:
    /* AE448 800BDC48 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* AE44C 800BDC4C 3800BE8F */  lw         $fp, 0x38($sp)
    /* AE450 800BDC50 3400B78F */  lw         $s7, 0x34($sp)
    /* AE454 800BDC54 3000B68F */  lw         $s6, 0x30($sp)
    /* AE458 800BDC58 2C00B58F */  lw         $s5, 0x2C($sp)
    /* AE45C 800BDC5C 2800B48F */  lw         $s4, 0x28($sp)
    /* AE460 800BDC60 2400B38F */  lw         $s3, 0x24($sp)
    /* AE464 800BDC64 2000B28F */  lw         $s2, 0x20($sp)
    /* AE468 800BDC68 1C00B18F */  lw         $s1, 0x1C($sp)
    /* AE46C 800BDC6C 1800B08F */  lw         $s0, 0x18($sp)
    /* AE470 800BDC70 0800E003 */  jr         $ra
    /* AE474 800BDC74 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_800BD468
