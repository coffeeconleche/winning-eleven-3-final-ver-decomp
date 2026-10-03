nonmatching func_801A85B0, 0x298

glabel func_801A85B0
    /* 1F638 801A85B0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1F63C 801A85B4 21188000 */  addu       $v1, $a0, $zero
    /* 1F640 801A85B8 2140A000 */  addu       $t0, $a1, $zero
    /* 1F644 801A85BC 2148C000 */  addu       $t1, $a2, $zero
    /* 1F648 801A85C0 FF00E730 */  andi       $a3, $a3, 0xFF
    /* 1F64C 801A85C4 FFFFE724 */  addiu      $a3, $a3, -0x1
    /* 1F650 801A85C8 4000AA93 */  lbu        $t2, 0x40($sp)
    /* 1F654 801A85CC 0A00E22C */  sltiu      $v0, $a3, 0xA
    /* 1F658 801A85D0 19004010 */  beqz       $v0, .L801A8638
    /* 1F65C 801A85D4 2800BFAF */   sw        $ra, 0x28($sp)
    /* 1F660 801A85D8 80100700 */  sll        $v0, $a3, 2
    /* 1F664 801A85DC 1980013C */  lui        $at, %hi(jtbl_8018A298)
    /* 1F668 801A85E0 21082200 */  addu       $at, $at, $v0
    /* 1F66C 801A85E4 98A2228C */  lw         $v0, %lo(jtbl_8018A298)($at)
    /* 1F670 801A85E8 00000000 */  nop
    /* 1F674 801A85EC 08004000 */  jr         $v0
    /* 1F678 801A85F0 00000000 */   nop
  jlabel .L801A85F4
    /* 1F67C 801A85F4 21200000 */  addu       $a0, $zero, $zero
    /* 1F680 801A85F8 002C0300 */  sll        $a1, $v1, 16
    /* 1F684 801A85FC 032C0500 */  sra        $a1, $a1, 16
    /* 1F688 801A8600 00340800 */  sll        $a2, $t0, 16
    /* 1F68C 801A8604 03340600 */  sra        $a2, $a2, 16
    /* 1F690 801A8608 08000724 */  addiu      $a3, $zero, 0x8
    /* 1F694 801A860C 10000224 */  addiu      $v0, $zero, 0x10
    /* 1F698 801A8610 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1F69C 801A8614 FF002231 */  andi       $v0, $t1, 0xFF
    /* 1F6A0 801A8618 C0100200 */  sll        $v0, $v0, 3
    /* 1F6A4 801A861C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1F6A8 801A8620 70000224 */  addiu      $v0, $zero, 0x70
    /* 1F6AC 801A8624 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1F6B0 801A8628 0A000224 */  addiu      $v0, $zero, 0xA
    /* 1F6B4 801A862C 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 1F6B8 801A8630 0BA20608 */  j          .L801A882C
    /* 1F6BC 801A8634 5A000224 */   addiu     $v0, $zero, 0x5A
  jlabel .L801A8638
    /* 1F6C0 801A8638 21200000 */  addu       $a0, $zero, $zero
    /* 1F6C4 801A863C 002C0300 */  sll        $a1, $v1, 16
    /* 1F6C8 801A8640 032C0500 */  sra        $a1, $a1, 16
    /* 1F6CC 801A8644 00340800 */  sll        $a2, $t0, 16
    /* 1F6D0 801A8648 03340600 */  sra        $a2, $a2, 16
    /* 1F6D4 801A864C 08000724 */  addiu      $a3, $zero, 0x8
    /* 1F6D8 801A8650 10000224 */  addiu      $v0, $zero, 0x10
    /* 1F6DC 801A8654 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1F6E0 801A8658 FF002231 */  andi       $v0, $t1, 0xFF
    /* 1F6E4 801A865C C0100200 */  sll        $v0, $v0, 3
    /* 1F6E8 801A8660 B0004224 */  addiu      $v0, $v0, 0xB0
    /* 1F6EC 801A8664 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1F6F0 801A8668 70000224 */  addiu      $v0, $zero, 0x70
    /* 1F6F4 801A866C 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1F6F8 801A8670 0C000224 */  addiu      $v0, $zero, 0xC
    /* 1F6FC 801A8674 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 1F700 801A8678 0BA20608 */  j          .L801A882C
    /* 1F704 801A867C 68000224 */   addiu     $v0, $zero, 0x68
  jlabel .L801A8680
    /* 1F708 801A8680 21200000 */  addu       $a0, $zero, $zero
    /* 1F70C 801A8684 002C0300 */  sll        $a1, $v1, 16
    /* 1F710 801A8688 032C0500 */  sra        $a1, $a1, 16
    /* 1F714 801A868C 00340800 */  sll        $a2, $t0, 16
    /* 1F718 801A8690 03340600 */  sra        $a2, $a2, 16
    /* 1F71C 801A8694 08000724 */  addiu      $a3, $zero, 0x8
    /* 1F720 801A8698 08000224 */  addiu      $v0, $zero, 0x8
    /* 1F724 801A869C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1F728 801A86A0 FF002231 */  andi       $v0, $t1, 0xFF
    /* 1F72C 801A86A4 C0100200 */  sll        $v0, $v0, 3
    /* 1F730 801A86A8 80004224 */  addiu      $v0, $v0, 0x80
    /* 1F734 801A86AC 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1F738 801A86B0 F8000224 */  addiu      $v0, $zero, 0xF8
    /* 1F73C 801A86B4 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1F740 801A86B8 1A000224 */  addiu      $v0, $zero, 0x1A
    /* 1F744 801A86BC 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 1F748 801A86C0 0BA20608 */  j          .L801A882C
    /* 1F74C 801A86C4 57000224 */   addiu     $v0, $zero, 0x57
  jlabel .L801A86C8
    /* 1F750 801A86C8 21200000 */  addu       $a0, $zero, $zero
    /* 1F754 801A86CC 002C0300 */  sll        $a1, $v1, 16
    /* 1F758 801A86D0 032C0500 */  sra        $a1, $a1, 16
    /* 1F75C 801A86D4 00340800 */  sll        $a2, $t0, 16
    /* 1F760 801A86D8 03340600 */  sra        $a2, $a2, 16
    /* 1F764 801A86DC 08000724 */  addiu      $a3, $zero, 0x8
    /* 1F768 801A86E0 10000224 */  addiu      $v0, $zero, 0x10
    /* 1F76C 801A86E4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1F770 801A86E8 FF002231 */  andi       $v0, $t1, 0xFF
    /* 1F774 801A86EC C0100200 */  sll        $v0, $v0, 3
    /* 1F778 801A86F0 B0004224 */  addiu      $v0, $v0, 0xB0
    /* 1F77C 801A86F4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1F780 801A86F8 60000224 */  addiu      $v0, $zero, 0x60
    /* 1F784 801A86FC 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1F788 801A8700 1A000224 */  addiu      $v0, $zero, 0x1A
    /* 1F78C 801A8704 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 1F790 801A8708 0BA20608 */  j          .L801A882C
    /* 1F794 801A870C 91000224 */   addiu     $v0, $zero, 0x91
  jlabel .L801A8710
    /* 1F798 801A8710 21200000 */  addu       $a0, $zero, $zero
    /* 1F79C 801A8714 002C0300 */  sll        $a1, $v1, 16
    /* 1F7A0 801A8718 032C0500 */  sra        $a1, $a1, 16
    /* 1F7A4 801A871C 00340800 */  sll        $a2, $t0, 16
    /* 1F7A8 801A8720 03340600 */  sra        $a2, $a2, 16
    /* 1F7AC 801A8724 08000724 */  addiu      $a3, $zero, 0x8
    /* 1F7B0 801A8728 10000224 */  addiu      $v0, $zero, 0x10
    /* 1F7B4 801A872C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1F7B8 801A8730 F8000224 */  addiu      $v0, $zero, 0xF8
    /* 1F7BC 801A8734 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1F7C0 801A8738 FF002231 */  andi       $v0, $t1, 0xFF
    /* 1F7C4 801A873C 00110200 */  sll        $v0, $v0, 4
    /* 1F7C8 801A8740 60004224 */  addiu      $v0, $v0, 0x60
    /* 1F7CC 801A8744 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1F7D0 801A8748 1D000224 */  addiu      $v0, $zero, 0x1D
    /* 1F7D4 801A874C 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 1F7D8 801A8750 0BA20608 */  j          .L801A882C
    /* 1F7DC 801A8754 73000224 */   addiu     $v0, $zero, 0x73
  jlabel .L801A8758
    /* 1F7E0 801A8758 21200000 */  addu       $a0, $zero, $zero
    /* 1F7E4 801A875C 002C0300 */  sll        $a1, $v1, 16
    /* 1F7E8 801A8760 032C0500 */  sra        $a1, $a1, 16
    /* 1F7EC 801A8764 00340800 */  sll        $a2, $t0, 16
    /* 1F7F0 801A8768 03340600 */  sra        $a2, $a2, 16
    /* 1F7F4 801A876C 08000724 */  addiu      $a3, $zero, 0x8
    /* 1F7F8 801A8770 10000224 */  addiu      $v0, $zero, 0x10
    /* 1F7FC 801A8774 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1F800 801A8778 F8000224 */  addiu      $v0, $zero, 0xF8
    /* 1F804 801A877C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1F808 801A8780 FF002231 */  andi       $v0, $t1, 0xFF
    /* 1F80C 801A8784 00110200 */  sll        $v0, $v0, 4
    /* 1F810 801A8788 60004224 */  addiu      $v0, $v0, 0x60
    /* 1F814 801A878C 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1F818 801A8790 1D000224 */  addiu      $v0, $zero, 0x1D
    /* 1F81C 801A8794 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 1F820 801A8798 0BA20608 */  j          .L801A882C
    /* 1F824 801A879C 94000224 */   addiu     $v0, $zero, 0x94
  jlabel .L801A87A0
    /* 1F828 801A87A0 21200000 */  addu       $a0, $zero, $zero
    /* 1F82C 801A87A4 002C0300 */  sll        $a1, $v1, 16
    /* 1F830 801A87A8 032C0500 */  sra        $a1, $a1, 16
    /* 1F834 801A87AC 00340800 */  sll        $a2, $t0, 16
    /* 1F838 801A87B0 03340600 */  sra        $a2, $a2, 16
    /* 1F83C 801A87B4 08000724 */  addiu      $a3, $zero, 0x8
    /* 1F840 801A87B8 10000224 */  addiu      $v0, $zero, 0x10
    /* 1F844 801A87BC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1F848 801A87C0 FF002231 */  andi       $v0, $t1, 0xFF
    /* 1F84C 801A87C4 C0100200 */  sll        $v0, $v0, 3
    /* 1F850 801A87C8 80004224 */  addiu      $v0, $v0, 0x80
    /* 1F854 801A87CC 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1F858 801A87D0 90000224 */  addiu      $v0, $zero, 0x90
    /* 1F85C 801A87D4 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1F860 801A87D8 1D000224 */  addiu      $v0, $zero, 0x1D
    /* 1F864 801A87DC 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 1F868 801A87E0 0BA20608 */  j          .L801A882C
    /* 1F86C 801A87E4 BC000224 */   addiu     $v0, $zero, 0xBC
  jlabel .L801A87E8
    /* 1F870 801A87E8 21200000 */  addu       $a0, $zero, $zero
    /* 1F874 801A87EC 002C0300 */  sll        $a1, $v1, 16
    /* 1F878 801A87F0 032C0500 */  sra        $a1, $a1, 16
    /* 1F87C 801A87F4 00340800 */  sll        $a2, $t0, 16
    /* 1F880 801A87F8 03340600 */  sra        $a2, $a2, 16
    /* 1F884 801A87FC 08000724 */  addiu      $a3, $zero, 0x8
    /* 1F888 801A8800 10000224 */  addiu      $v0, $zero, 0x10
    /* 1F88C 801A8804 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1F890 801A8808 FF002231 */  andi       $v0, $t1, 0xFF
    /* 1F894 801A880C C0100200 */  sll        $v0, $v0, 3
    /* 1F898 801A8810 80004224 */  addiu      $v0, $v0, 0x80
    /* 1F89C 801A8814 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1F8A0 801A8818 90000224 */  addiu      $v0, $zero, 0x90
    /* 1F8A4 801A881C 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1F8A8 801A8820 1D000224 */  addiu      $v0, $zero, 0x1D
    /* 1F8AC 801A8824 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 1F8B0 801A8828 B3000224 */  addiu      $v0, $zero, 0xB3
  .L801A882C:
    /* 1F8B4 801A882C 2000A2AF */  sw         $v0, 0x20($sp)
    /* 1F8B8 801A8830 DE58060C */  jal        func_80196378
    /* 1F8BC 801A8834 2400AAAF */   sw        $t2, 0x24($sp)
    /* 1F8C0 801A8838 2800BF8F */  lw         $ra, 0x28($sp)
    /* 1F8C4 801A883C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 1F8C8 801A8840 0800E003 */  jr         $ra
    /* 1F8CC 801A8844 00000000 */   nop
endlabel func_801A85B0
