nonmatching func_800B7DF4, 0x2C8

glabel func_800B7DF4
    /* A85F4 800B7DF4 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* A85F8 800B7DF8 3400B7AF */  sw         $s7, 0x34($sp)
    /* A85FC 800B7DFC 21B88000 */  addu       $s7, $a0, $zero
    /* A8600 800B7E00 2400B3AF */  sw         $s3, 0x24($sp)
    /* A8604 800B7E04 2198A000 */  addu       $s3, $a1, $zero
    /* A8608 800B7E08 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* A860C 800B7E0C 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* A8610 800B7E10 3800BEAF */  sw         $fp, 0x38($sp)
    /* A8614 800B7E14 3000B6AF */  sw         $s6, 0x30($sp)
    /* A8618 800B7E18 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* A861C 800B7E1C 2800B4AF */  sw         $s4, 0x28($sp)
    /* A8620 800B7E20 2000B2AF */  sw         $s2, 0x20($sp)
    /* A8624 800B7E24 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* A8628 800B7E28 46E9020C */  jal        func_800BA518
    /* A862C 800B7E2C 1800B0AF */   sw        $s0, 0x18($sp)
    /* A8630 800B7E30 0D801E3C */  lui        $fp, %hi(D_800D3974)
    /* A8634 800B7E34 7439DE27 */  addiu      $fp, $fp, %lo(D_800D3974)
    /* A8638 800B7E38 0D80153C */  lui        $s5, %hi(D_800D39F4)
    /* A863C 800B7E3C F439B526 */  addiu      $s5, $s5, %lo(D_800D39F4)
    /* A8640 800B7E40 0D80123C */  lui        $s2, %hi(D_800D3C2C)
    /* A8644 800B7E44 2C3C5226 */  addiu      $s2, $s2, %lo(D_800D3C2C)
    /* A8648 800B7E48 01005626 */  addiu      $s6, $s2, 0x1
    /* A864C 800B7E4C 02005426 */  addiu      $s4, $s2, 0x2
    /* A8650 800B7E50 C0034224 */  addiu      $v0, $v0, 0x3C0
    /* A8654 800B7E54 0E80013C */  lui        $at, %hi(D_800E71E0)
    /* A8658 800B7E58 E07122AC */  sw         $v0, %lo(D_800E71E0)($at)
    /* A865C 800B7E5C 0180023C */  lui        $v0, %hi(D_80015358)
    /* A8660 800B7E60 58534224 */  addiu      $v0, $v0, %lo(D_80015358)
    /* A8664 800B7E64 0E80013C */  lui        $at, %hi(D_800E71E4)
    /* A8668 800B7E68 E47120AC */  sw         $zero, %lo(D_800E71E4)($at)
    /* A866C 800B7E6C 0E80013C */  lui        $at, %hi(D_800E71E8)
    /* A8670 800B7E70 E87122AC */  sw         $v0, %lo(D_800E71E8)($at)
  .L800B7E74:
    /* A8674 800B7E74 46E9020C */  jal        func_800BA518
    /* A8678 800B7E78 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* A867C 800B7E7C 0E80033C */  lui        $v1, %hi(D_800E71E0)
    /* A8680 800B7E80 E071638C */  lw         $v1, %lo(D_800E71E0)($v1)
    /* A8684 800B7E84 00000000 */  nop
    /* A8688 800B7E88 2A186200 */  slt        $v1, $v1, $v0
    /* A868C 800B7E8C 0C006014 */  bnez       $v1, .L800B7EC0
    /* A8690 800B7E90 00000000 */   nop
    /* A8694 800B7E94 0E80023C */  lui        $v0, %hi(D_800E71E4)
    /* A8698 800B7E98 E471428C */  lw         $v0, %lo(D_800E71E4)($v0)
    /* A869C 800B7E9C 00000000 */  nop
    /* A86A0 800B7EA0 21184000 */  addu       $v1, $v0, $zero
    /* A86A4 800B7EA4 01004224 */  addiu      $v0, $v0, 0x1
    /* A86A8 800B7EA8 0E80013C */  lui        $at, %hi(D_800E71E4)
    /* A86AC 800B7EAC E47122AC */  sw         $v0, %lo(D_800E71E4)($at)
    /* A86B0 800B7EB0 3C00023C */  lui        $v0, (0x3C0000 >> 16)
    /* A86B4 800B7EB4 2A104300 */  slt        $v0, $v0, $v1
    /* A86B8 800B7EB8 1B004010 */  beqz       $v0, .L800B7F28
    /* A86BC 800B7EBC 00000000 */   nop
  .L800B7EC0:
    /* A86C0 800B7EC0 0180043C */  lui        $a0, %hi(D_800152C8)
    /* A86C4 800B7EC4 60E3020C */  jal        func_800B8D80
    /* A86C8 800B7EC8 C8528424 */   addiu     $a0, $a0, %lo(D_800152C8)
    /* A86CC 800B7ECC 00004492 */  lbu        $a0, 0x0($s2)
    /* A86D0 800B7ED0 01004292 */  lbu        $v0, 0x1($s2)
    /* A86D4 800B7ED4 0E80053C */  lui        $a1, %hi(D_800E71E8)
    /* A86D8 800B7ED8 E871A58C */  lw         $a1, %lo(D_800E71E8)($a1)
    /* A86DC 800B7EDC 80100200 */  sll        $v0, $v0, 2
    /* A86E0 800B7EE0 21105500 */  addu       $v0, $v0, $s5
    /* A86E4 800B7EE4 80200400 */  sll        $a0, $a0, 2
    /* A86E8 800B7EE8 0000438C */  lw         $v1, 0x0($v0)
    /* A86EC 800B7EEC 0D80023C */  lui        $v0, %hi(D_800D396D)
    /* A86F0 800B7EF0 6D394290 */  lbu        $v0, %lo(D_800D396D)($v0)
    /* A86F4 800B7EF4 21209500 */  addu       $a0, $a0, $s5
    /* A86F8 800B7EF8 80100200 */  sll        $v0, $v0, 2
    /* A86FC 800B7EFC 21105E00 */  addu       $v0, $v0, $fp
    /* A8700 800B7F00 1000A3AF */  sw         $v1, 0x10($sp)
    /* A8704 800B7F04 0000468C */  lw         $a2, 0x0($v0)
    /* A8708 800B7F08 0000878C */  lw         $a3, 0x0($a0)
    /* A870C 800B7F0C 0180043C */  lui        $a0, %hi(D_800152D8)
    /* A8710 800B7F10 A6B5020C */  jal        func_800AD698
    /* A8714 800B7F14 D8528424 */   addiu     $a0, $a0, %lo(D_800152D8)
    /* A8718 800B7F18 54E1020C */  jal        func_800B8550
    /* A871C 800B7F1C 00000000 */   nop
    /* A8720 800B7F20 CBDF0208 */  j          .L800B7F2C
    /* A8724 800B7F24 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800B7F28:
    /* A8728 800B7F28 21100000 */  addu       $v0, $zero, $zero
  .L800B7F2C:
    /* A872C 800B7F2C 57004014 */  bnez       $v0, .L800B808C
    /* A8730 800B7F30 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A8734 800B7F34 23EA020C */  jal        func_800BA88C
    /* A8738 800B7F38 00000000 */   nop
    /* A873C 800B7F3C 29004010 */  beqz       $v0, .L800B7FE4
    /* A8740 800B7F40 00000000 */   nop
    /* A8744 800B7F44 0D80023C */  lui        $v0, %hi(D_800D3C14)
    /* A8748 800B7F48 143C428C */  lw         $v0, %lo(D_800D3C14)($v0)
    /* A874C 800B7F4C 00000000 */  nop
    /* A8750 800B7F50 00004290 */  lbu        $v0, 0x0($v0)
    /* A8754 800B7F54 00000000 */  nop
    /* A8758 800B7F58 03005130 */  andi       $s1, $v0, 0x3
  .L800B7F5C:
    /* A875C 800B7F5C 86DD020C */  jal        func_800B7618
    /* A8760 800B7F60 00000000 */   nop
    /* A8764 800B7F64 21804000 */  addu       $s0, $v0, $zero
    /* A8768 800B7F68 1A000012 */  beqz       $s0, .L800B7FD4
    /* A876C 800B7F6C 04000232 */   andi      $v0, $s0, 0x4
    /* A8770 800B7F70 0B004010 */  beqz       $v0, .L800B7FA0
    /* A8774 800B7F74 02000232 */   andi      $v0, $s0, 0x2
    /* A8778 800B7F78 0D80023C */  lui        $v0, %hi(D_800D3950)
    /* A877C 800B7F7C 5039428C */  lw         $v0, %lo(D_800D3950)($v0)
    /* A8780 800B7F80 00000000 */  nop
    /* A8784 800B7F84 05004010 */  beqz       $v0, .L800B7F9C
    /* A8788 800B7F88 00000000 */   nop
    /* A878C 800B7F8C 0000C492 */  lbu        $a0, 0x0($s6)
    /* A8790 800B7F90 0E80053C */  lui        $a1, %hi(D_800E71D0)
    /* A8794 800B7F94 09F84000 */  jalr       $v0
    /* A8798 800B7F98 D071A524 */   addiu     $a1, $a1, %lo(D_800E71D0)
  .L800B7F9C:
    /* A879C 800B7F9C 02000232 */  andi       $v0, $s0, 0x2
  .L800B7FA0:
    /* A87A0 800B7FA0 EEFF4010 */  beqz       $v0, .L800B7F5C
    /* A87A4 800B7FA4 00000000 */   nop
    /* A87A8 800B7FA8 0D80023C */  lui        $v0, %hi(D_800D394C)
    /* A87AC 800B7FAC 4C39428C */  lw         $v0, %lo(D_800D394C)($v0)
    /* A87B0 800B7FB0 00000000 */  nop
    /* A87B4 800B7FB4 E9FF4010 */  beqz       $v0, .L800B7F5C
    /* A87B8 800B7FB8 00000000 */   nop
    /* A87BC 800B7FBC 00004492 */  lbu        $a0, 0x0($s2)
    /* A87C0 800B7FC0 0E80053C */  lui        $a1, %hi(D_800E71C8)
    /* A87C4 800B7FC4 09F84000 */  jalr       $v0
    /* A87C8 800B7FC8 C871A524 */   addiu     $a1, $a1, %lo(D_800E71C8)
    /* A87CC 800B7FCC D7DF0208 */  j          .L800B7F5C
    /* A87D0 800B7FD0 00000000 */   nop
  .L800B7FD4:
    /* A87D4 800B7FD4 0D80023C */  lui        $v0, %hi(D_800D3C14)
    /* A87D8 800B7FD8 143C428C */  lw         $v0, %lo(D_800D3C14)($v0)
    /* A87DC 800B7FDC 00000000 */  nop
    /* A87E0 800B7FE0 000051A0 */  sb         $s1, 0x0($v0)
  .L800B7FE4:
    /* A87E4 800B7FE4 00008292 */  lbu        $v0, 0x0($s4)
    /* A87E8 800B7FE8 00000000 */  nop
    /* A87EC 800B7FEC FF004630 */  andi       $a2, $v0, 0xFF
    /* A87F0 800B7FF0 1000C010 */  beqz       $a2, .L800B8034
    /* A87F4 800B7FF4 00000000 */   nop
    /* A87F8 800B7FF8 020040A2 */  sb         $zero, 0x2($s2)
    /* A87FC 800B7FFC 0E80043C */  lui        $a0, %hi(D_800E71D8)
    /* A8800 800B8000 D8718424 */  addiu      $a0, $a0, %lo(D_800E71D8)
    /* A8804 800B8004 1D006012 */  beqz       $s3, .L800B807C
    /* A8808 800B8008 21286002 */   addu      $a1, $s3, $zero
    /* A880C 800B800C 07000324 */  addiu      $v1, $zero, 0x7
    /* A8810 800B8010 FFFF0724 */  addiu      $a3, $zero, -0x1
  .L800B8014:
    /* A8814 800B8014 00008290 */  lbu        $v0, 0x0($a0)
    /* A8818 800B8018 01008424 */  addiu      $a0, $a0, 0x1
    /* A881C 800B801C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* A8820 800B8020 0000A2A0 */  sb         $v0, 0x0($a1)
    /* A8824 800B8024 FBFF6714 */  bne        $v1, $a3, .L800B8014
    /* A8828 800B8028 0100A524 */   addiu     $a1, $a1, 0x1
    /* A882C 800B802C 23E00208 */  j          .L800B808C
    /* A8830 800B8030 2110C000 */   addu      $v0, $a2, $zero
  .L800B8034:
    /* A8834 800B8034 FFFF8292 */  lbu        $v0, -0x1($s4)
    /* A8838 800B8038 00000000 */  nop
    /* A883C 800B803C FF004630 */  andi       $a2, $v0, 0xFF
    /* A8840 800B8040 1000C010 */  beqz       $a2, .L800B8084
    /* A8844 800B8044 00000000 */   nop
    /* A8848 800B8048 010040A2 */  sb         $zero, 0x1($s2)
    /* A884C 800B804C 21286002 */  addu       $a1, $s3, $zero
    /* A8850 800B8050 0E80043C */  lui        $a0, %hi(D_800E71D0)
    /* A8854 800B8054 D0718424 */  addiu      $a0, $a0, %lo(D_800E71D0)
    /* A8858 800B8058 0800A010 */  beqz       $a1, .L800B807C
    /* A885C 800B805C 07000324 */   addiu     $v1, $zero, 0x7
    /* A8860 800B8060 FFFF0724 */  addiu      $a3, $zero, -0x1
  .L800B8064:
    /* A8864 800B8064 00008290 */  lbu        $v0, 0x0($a0)
    /* A8868 800B8068 01008424 */  addiu      $a0, $a0, 0x1
    /* A886C 800B806C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* A8870 800B8070 0000A2A0 */  sb         $v0, 0x0($a1)
    /* A8874 800B8074 FBFF6714 */  bne        $v1, $a3, .L800B8064
    /* A8878 800B8078 0100A524 */   addiu     $a1, $a1, 0x1
  .L800B807C:
    /* A887C 800B807C 23E00208 */  j          .L800B808C
    /* A8880 800B8080 2110C000 */   addu      $v0, $a2, $zero
  .L800B8084:
    /* A8884 800B8084 7BFFE012 */  beqz       $s7, .L800B7E74
    /* A8888 800B8088 21100000 */   addu      $v0, $zero, $zero
  .L800B808C:
    /* A888C 800B808C 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* A8890 800B8090 3800BE8F */  lw         $fp, 0x38($sp)
    /* A8894 800B8094 3400B78F */  lw         $s7, 0x34($sp)
    /* A8898 800B8098 3000B68F */  lw         $s6, 0x30($sp)
    /* A889C 800B809C 2C00B58F */  lw         $s5, 0x2C($sp)
    /* A88A0 800B80A0 2800B48F */  lw         $s4, 0x28($sp)
    /* A88A4 800B80A4 2400B38F */  lw         $s3, 0x24($sp)
    /* A88A8 800B80A8 2000B28F */  lw         $s2, 0x20($sp)
    /* A88AC 800B80AC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* A88B0 800B80B0 1800B08F */  lw         $s0, 0x18($sp)
    /* A88B4 800B80B4 0800E003 */  jr         $ra
    /* A88B8 800B80B8 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_800B7DF4
