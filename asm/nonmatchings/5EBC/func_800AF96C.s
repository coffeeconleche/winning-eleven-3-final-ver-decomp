nonmatching func_800AF96C, 0x80

glabel func_800AF96C
    /* A016C 800AF96C 03008014 */  bnez       $a0, .L800AF97C
    /* A0170 800AF970 F0FFBD27 */   addiu     $sp, $sp, -0x10
    /* A0174 800AF974 79BE0208 */  j          .L800AF9E4
    /* A0178 800AF978 21100000 */   addu      $v0, $zero, $zero
  .L800AF97C:
    /* A017C 800AF97C 00008590 */  lbu        $a1, 0x0($a0)
    /* A0180 800AF980 00000000 */  nop
    /* A0184 800AF984 C2280500 */  srl        $a1, $a1, 3
    /* A0188 800AF988 0000A5AF */  sw         $a1, 0x0($sp)
    /* A018C 800AF98C 04008684 */  lh         $a2, 0x4($a0)
    /* A0190 800AF990 00000000 */  nop
    /* A0194 800AF994 23300600 */  negu       $a2, $a2
    /* A0198 800AF998 FF00C630 */  andi       $a2, $a2, 0xFF
    /* A019C 800AF99C C3300600 */  sra        $a2, $a2, 3
    /* A01A0 800AF9A0 0800A6AF */  sw         $a2, 0x8($sp)
    /* A01A4 800AF9A4 02008290 */  lbu        $v0, 0x2($a0)
    /* A01A8 800AF9A8 802A0500 */  sll        $a1, $a1, 10
    /* A01AC 800AF9AC C2100200 */  srl        $v0, $v0, 3
    /* A01B0 800AF9B0 0400A2AF */  sw         $v0, 0x4($sp)
    /* A01B4 800AF9B4 C0130200 */  sll        $v0, $v0, 15
    /* A01B8 800AF9B8 06008384 */  lh         $v1, 0x6($a0)
    /* A01BC 800AF9BC 00E2043C */  lui        $a0, (0xE2000000 >> 16)
    /* A01C0 800AF9C0 2528A400 */  or         $a1, $a1, $a0
    /* A01C4 800AF9C4 25104500 */  or         $v0, $v0, $a1
    /* A01C8 800AF9C8 23180300 */  negu       $v1, $v1
    /* A01CC 800AF9CC FF006330 */  andi       $v1, $v1, 0xFF
    /* A01D0 800AF9D0 C3180300 */  sra        $v1, $v1, 3
    /* A01D4 800AF9D4 40210300 */  sll        $a0, $v1, 5
    /* A01D8 800AF9D8 25104400 */  or         $v0, $v0, $a0
    /* A01DC 800AF9DC 25104600 */  or         $v0, $v0, $a2
    /* A01E0 800AF9E0 0C00A3AF */  sw         $v1, 0xC($sp)
  .L800AF9E4:
    /* A01E4 800AF9E4 0800E003 */  jr         $ra
    /* A01E8 800AF9E8 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_800AF96C
