/* Handwritten function */
nonmatching func_800B4E48, 0x160

glabel func_800B4E48
    /* A5648 800B4E48 0000888C */  lw         $t0, 0x0($a0)
    /* A564C 800B4E4C 0400898C */  lw         $t1, 0x4($a0)
    /* A5650 800B4E50 08008A8C */  lw         $t2, 0x8($a0)
    /* A5654 800B4E54 0C008B8C */  lw         $t3, 0xC($a0)
    /* A5658 800B4E58 10008C8C */  lw         $t4, 0x10($a0)
    /* A565C 800B4E5C 0000C848 */  ctc2       $t0, $0 /* handwritten instruction */
    /* A5660 800B4E60 0008C948 */  ctc2       $t1, $1 /* handwritten instruction */
    /* A5664 800B4E64 0010CA48 */  ctc2       $t2, $2 /* handwritten instruction */
    /* A5668 800B4E68 0018CB48 */  ctc2       $t3, $3 /* handwritten instruction */
    /* A566C 800B4E6C 0020CC48 */  ctc2       $t4, $4 /* handwritten instruction */
    /* A5670 800B4E70 0000A88C */  lw         $t0, 0x0($a1)
    /* A5674 800B4E74 0400A98C */  lw         $t1, 0x4($a1)
    /* A5678 800B4E78 0800AA8C */  lw         $t2, 0x8($a1)
    /* A567C 800B4E7C 07000105 */  bgez       $t0, .L800B4E9C
    /* A5680 800B4E80 00000000 */   nop
    /* A5684 800B4E84 23400800 */  negu       $t0, $t0
    /* A5688 800B4E88 C35B0800 */  sra        $t3, $t0, 15
    /* A568C 800B4E8C 23580B00 */  negu       $t3, $t3
    /* A5690 800B4E90 FF7F0831 */  andi       $t0, $t0, 0x7FFF
    /* A5694 800B4E94 03000010 */  b          .L800B4EA4
    /* A5698 800B4E98 23400800 */   negu      $t0, $t0
  .L800B4E9C:
    /* A569C 800B4E9C C35B0800 */  sra        $t3, $t0, 15
    /* A56A0 800B4EA0 FF7F0831 */  andi       $t0, $t0, 0x7FFF
  .L800B4EA4:
    /* A56A4 800B4EA4 07002105 */  bgez       $t1, .L800B4EC4
    /* A56A8 800B4EA8 00000000 */   nop
    /* A56AC 800B4EAC 23480900 */  negu       $t1, $t1
    /* A56B0 800B4EB0 C3630900 */  sra        $t4, $t1, 15
    /* A56B4 800B4EB4 23600C00 */  negu       $t4, $t4
    /* A56B8 800B4EB8 FF7F2931 */  andi       $t1, $t1, 0x7FFF
    /* A56BC 800B4EBC 03000010 */  b          .L800B4ECC
    /* A56C0 800B4EC0 23480900 */   negu      $t1, $t1
  .L800B4EC4:
    /* A56C4 800B4EC4 C3630900 */  sra        $t4, $t1, 15
    /* A56C8 800B4EC8 FF7F2931 */  andi       $t1, $t1, 0x7FFF
  .L800B4ECC:
    /* A56CC 800B4ECC 07004105 */  bgez       $t2, .L800B4EEC
    /* A56D0 800B4ED0 00000000 */   nop
    /* A56D4 800B4ED4 23500A00 */  negu       $t2, $t2
    /* A56D8 800B4ED8 C36B0A00 */  sra        $t5, $t2, 15
    /* A56DC 800B4EDC 23680D00 */  negu       $t5, $t5
    /* A56E0 800B4EE0 FF7F4A31 */  andi       $t2, $t2, 0x7FFF
    /* A56E4 800B4EE4 03000010 */  b          .L800B4EF4
    /* A56E8 800B4EE8 23500A00 */   negu      $t2, $t2
  .L800B4EEC:
    /* A56EC 800B4EEC C36B0A00 */  sra        $t5, $t2, 15
    /* A56F0 800B4EF0 FF7F4A31 */  andi       $t2, $t2, 0x7FFF
  .L800B4EF4:
    /* A56F4 800B4EF4 00488B48 */  mtc2       $t3, $9 /* handwritten instruction */
    /* A56F8 800B4EF8 00508C48 */  mtc2       $t4, $10 /* handwritten instruction */
    /* A56FC 800B4EFC 00588D48 */  mtc2       $t5, $11 /* handwritten instruction */
    /* A5700 800B4F00 00000000 */  nop
    /* A5704 800B4F04 12E0414A */  mvmva      0, 0, 3, 3, 0
    /* A5708 800B4F08 00C80B48 */  mfc2       $t3, $25 /* handwritten instruction */
    /* A570C 800B4F0C 00D00C48 */  mfc2       $t4, $26 /* handwritten instruction */
    /* A5710 800B4F10 00D80D48 */  mfc2       $t5, $27 /* handwritten instruction */
    /* A5714 800B4F14 00488848 */  mtc2       $t0, $9 /* handwritten instruction */
    /* A5718 800B4F18 00508948 */  mtc2       $t1, $10 /* handwritten instruction */
    /* A571C 800B4F1C 00588A48 */  mtc2       $t2, $11 /* handwritten instruction */
    /* A5720 800B4F20 00000000 */  nop
    /* A5724 800B4F24 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* A5728 800B4F28 05006105 */  bgez       $t3, .L800B4F40
    /* A572C 800B4F2C 00000000 */   nop
    /* A5730 800B4F30 23580B00 */  negu       $t3, $t3
    /* A5734 800B4F34 C0580B00 */  sll        $t3, $t3, 3
    /* A5738 800B4F38 02000010 */  b          .L800B4F44
    /* A573C 800B4F3C 23580B00 */   negu      $t3, $t3
  .L800B4F40:
    /* A5740 800B4F40 C0580B00 */  sll        $t3, $t3, 3
  .L800B4F44:
    /* A5744 800B4F44 05008105 */  bgez       $t4, .L800B4F5C
    /* A5748 800B4F48 00000000 */   nop
    /* A574C 800B4F4C 23600C00 */  negu       $t4, $t4
    /* A5750 800B4F50 C0600C00 */  sll        $t4, $t4, 3
    /* A5754 800B4F54 02000010 */  b          .L800B4F60
    /* A5758 800B4F58 23600C00 */   negu      $t4, $t4
  .L800B4F5C:
    /* A575C 800B4F5C C0600C00 */  sll        $t4, $t4, 3
  .L800B4F60:
    /* A5760 800B4F60 0500A105 */  bgez       $t5, .L800B4F78
    /* A5764 800B4F64 00000000 */   nop
    /* A5768 800B4F68 23680D00 */  negu       $t5, $t5
    /* A576C 800B4F6C C0680D00 */  sll        $t5, $t5, 3
    /* A5770 800B4F70 02000010 */  b          .L800B4F7C
    /* A5774 800B4F74 23680D00 */   negu      $t5, $t5
  .L800B4F78:
    /* A5778 800B4F78 C0680D00 */  sll        $t5, $t5, 3
  .L800B4F7C:
    /* A577C 800B4F7C 00C80848 */  mfc2       $t0, $25 /* handwritten instruction */
    /* A5780 800B4F80 00D00948 */  mfc2       $t1, $26 /* handwritten instruction */
    /* A5784 800B4F84 00D80A48 */  mfc2       $t2, $27 /* handwritten instruction */
    /* A5788 800B4F88 21400B01 */  addu       $t0, $t0, $t3
    /* A578C 800B4F8C 21482C01 */  addu       $t1, $t1, $t4
    /* A5790 800B4F90 21504D01 */  addu       $t2, $t2, $t5
    /* A5794 800B4F94 0000C8AC */  sw         $t0, 0x0($a2)
    /* A5798 800B4F98 0400C9AC */  sw         $t1, 0x4($a2)
    /* A579C 800B4F9C 0800CAAC */  sw         $t2, 0x8($a2)
    /* A57A0 800B4FA0 0800E003 */  jr         $ra
    /* A57A4 800B4FA4 2110C000 */   addu      $v0, $a2, $zero
endlabel func_800B4E48
