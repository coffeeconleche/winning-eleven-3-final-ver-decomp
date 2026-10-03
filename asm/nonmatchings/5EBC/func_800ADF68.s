nonmatching func_800ADF68, 0x6C

glabel func_800ADF68
    /* 9E768 800ADF68 0400A384 */  lh         $v1, 0x4($a1)
    /* 9E76C 800ADF6C 0600A284 */  lh         $v0, 0x6($a1)
    /* 9E770 800ADF70 00000000 */  nop
    /* 9E774 800ADF74 18006200 */  mult       $v1, $v0
    /* 9E778 800ADF78 12300000 */  mflo       $a2
    /* 9E77C 800ADF7C 0100C224 */  addiu      $v0, $a2, 0x1
    /* 9E780 800ADF80 C21F0200 */  srl        $v1, $v0, 31
    /* 9E784 800ADF84 21104300 */  addu       $v0, $v0, $v1
    /* 9E788 800ADF88 43100200 */  sra        $v0, $v0, 1
    /* 9E78C 800ADF8C 04004324 */  addiu      $v1, $v0, 0x4
    /* 9E790 800ADF90 0D00422C */  sltiu      $v0, $v0, 0xD
    /* 9E794 800ADF94 02004014 */  bnez       $v0, .L800ADFA0
    /* 9E798 800ADF98 00A0023C */   lui       $v0, (0xA0000000 >> 16)
    /* 9E79C 800ADF9C 21180000 */  addu       $v1, $zero, $zero
  .L800ADFA0:
    /* 9E7A0 800ADFA0 030083A0 */  sb         $v1, 0x3($a0)
    /* 9E7A4 800ADFA4 040082AC */  sw         $v0, 0x4($a0)
    /* 9E7A8 800ADFA8 0000A28C */  lw         $v0, 0x0($a1)
    /* 9E7AC 800ADFAC 00000000 */  nop
    /* 9E7B0 800ADFB0 080082AC */  sw         $v0, 0x8($a0)
    /* 9E7B4 800ADFB4 0400A28C */  lw         $v0, 0x4($a1)
    /* 9E7B8 800ADFB8 00000000 */  nop
    /* 9E7BC 800ADFBC 0C0082AC */  sw         $v0, 0xC($a0)
    /* 9E7C0 800ADFC0 80100300 */  sll        $v0, $v1, 2
    /* 9E7C4 800ADFC4 21108200 */  addu       $v0, $a0, $v0
    /* 9E7C8 800ADFC8 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* 9E7CC 800ADFCC 0800E003 */  jr         $ra
    /* 9E7D0 800ADFD0 000043AC */   sw        $v1, 0x0($v0)
endlabel func_800ADF68
