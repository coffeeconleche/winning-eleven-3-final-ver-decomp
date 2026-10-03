nonmatching func_801BA564, 0xB0

glabel func_801BA564
    /* 315EC 801BA564 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 315F0 801BA568 1000BFAF */  sw         $ra, 0x10($sp)
    /* 315F4 801BA56C 04008390 */  lbu        $v1, 0x4($a0)
    /* 315F8 801BA570 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 315FC 801BA574 23006210 */  beq        $v1, $v0, .L801BA604
    /* 31600 801BA578 21100000 */   addu      $v0, $zero, $zero
    /* 31604 801BA57C 06008390 */  lbu        $v1, 0x6($a0)
    /* 31608 801BA580 00000000 */  nop
    /* 3160C 801BA584 0200622C */  sltiu      $v0, $v1, 0x2
    /* 31610 801BA588 1E004014 */  bnez       $v0, .L801BA604
    /* 31614 801BA58C 21100000 */   addu      $v0, $zero, $zero
    /* 31618 801BA590 02000224 */  addiu      $v0, $zero, 0x2
    /* 3161C 801BA594 16006210 */  beq        $v1, $v0, .L801BA5F0
    /* 31620 801BA598 05000224 */   addiu     $v0, $zero, 0x5
    /* 31624 801BA59C 14006210 */  beq        $v1, $v0, .L801BA5F0
    /* 31628 801BA5A0 FF00A530 */   andi      $a1, $a1, 0xFF
    /* 3162C 801BA5A4 08008290 */  lbu        $v0, 0x8($a0)
    /* 31630 801BA5A8 00000000 */  nop
    /* 31634 801BA5AC 12004514 */  bne        $v0, $a1, .L801BA5F8
    /* 31638 801BA5B0 00000000 */   nop
    /* 3163C 801BA5B4 1180023C */  lui        $v0, %hi(D_8010A2E8)
    /* 31640 801BA5B8 E8A24290 */  lbu        $v0, %lo(D_8010A2E8)($v0)
    /* 31644 801BA5BC 00000000 */  nop
    /* 31648 801BA5C0 06004510 */  beq        $v0, $a1, .L801BA5DC
    /* 3164C 801BA5C4 00000000 */   nop
    /* 31650 801BA5C8 1180023C */  lui        $v0, %hi(D_8010A2E9)
    /* 31654 801BA5CC E9A24290 */  lbu        $v0, %lo(D_8010A2E9)($v0)
    /* 31658 801BA5D0 00000000 */  nop
    /* 3165C 801BA5D4 0B004514 */  bne        $v0, $a1, .L801BA604
    /* 31660 801BA5D8 01000224 */   addiu     $v0, $zero, 0x1
  .L801BA5DC:
    /* 31664 801BA5DC 1E80033C */  lui        $v1, %hi(D_801DADB6)
    /* 31668 801BA5E0 B6AD6390 */  lbu        $v1, %lo(D_801DADB6)($v1)
    /* 3166C 801BA5E4 01000224 */  addiu      $v0, $zero, 0x1
    /* 31670 801BA5E8 06006214 */  bne        $v1, $v0, .L801BA604
    /* 31674 801BA5EC 00000000 */   nop
  .L801BA5F0:
    /* 31678 801BA5F0 81E90608 */  j          .L801BA604
    /* 3167C 801BA5F4 21100000 */   addu      $v0, $zero, $zero
  .L801BA5F8:
    /* 31680 801BA5F8 0000848C */  lw         $a0, 0x0($a0)
    /* 31684 801BA5FC 59E9060C */  jal        func_801BA564
    /* 31688 801BA600 00000000 */   nop
  .L801BA604:
    /* 3168C 801BA604 1000BF8F */  lw         $ra, 0x10($sp)
    /* 31690 801BA608 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 31694 801BA60C 0800E003 */  jr         $ra
    /* 31698 801BA610 00000000 */   nop
endlabel func_801BA564
