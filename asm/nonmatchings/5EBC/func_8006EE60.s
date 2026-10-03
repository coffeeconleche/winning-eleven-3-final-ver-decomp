nonmatching func_8006EE60, 0x130

glabel func_8006EE60
    /* 5F660 8006EE60 21588000 */  addu       $t3, $a0, $zero
    /* 5F664 8006EE64 21300000 */  addu       $a2, $zero, $zero
    /* 5F668 8006EE68 801F043C */  lui        $a0, (0x1F800232 >> 16)
    /* 5F66C 8006EE6C FF006331 */  andi       $v1, $t3, 0xFF
    /* 5F670 8006EE70 C0100300 */  sll        $v0, $v1, 3
    /* 5F674 8006EE74 21504400 */  addu       $t2, $v0, $a0
    /* 5F678 8006EE78 0D800C3C */  lui        $t4, %hi(D_800C8544)
    /* 5F67C 8006EE7C 44858C25 */  addiu      $t4, $t4, %lo(D_800C8544)
    /* 5F680 8006EE80 1180023C */  lui        $v0, %hi(D_8010CD44)
    /* 5F684 8006EE84 44CD4224 */  addiu      $v0, $v0, %lo(D_8010CD44)
    /* 5F688 8006EE88 40180300 */  sll        $v1, $v1, 1
    /* 5F68C 8006EE8C 21406200 */  addu       $t0, $v1, $v0
    /* 5F690 8006EE90 0F80023C */  lui        $v0, %hi(D_800F10A0)
    /* 5F694 8006EE94 A0104224 */  addiu      $v0, $v0, %lo(D_800F10A0)
    /* 5F698 8006EE98 21186200 */  addu       $v1, $v1, $v0
    /* 5F69C 8006EE9C FF00C730 */  andi       $a3, $a2, 0xFF
  .L8006EEA0:
    /* 5F6A0 8006EEA0 40100700 */  sll        $v0, $a3, 1
    /* 5F6A4 8006EEA4 21484C00 */  addu       $t1, $v0, $t4
    /* 5F6A8 8006EEA8 34024295 */  lhu        $v0, (0x1F800234 & 0xFFFF)($t2)
    /* 5F6AC 8006EEAC 00002495 */  lhu        $a0, 0x0($t1)
    /* 5F6B0 8006EEB0 00000000 */  nop
    /* 5F6B4 8006EEB4 24108200 */  and        $v0, $a0, $v0
    /* 5F6B8 8006EEB8 FFFF8530 */  andi       $a1, $a0, 0xFFFF
    /* 5F6BC 8006EEBC 32004510 */  beq        $v0, $a1, .L8006EF88
    /* 5F6C0 8006EEC0 2110A000 */   addu      $v0, $a1, $zero
    /* 5F6C4 8006EEC4 32024295 */  lhu        $v0, (0x1F800232 & 0xFFFF)($t2)
    /* 5F6C8 8006EEC8 00000000 */  nop
    /* 5F6CC 8006EECC 24108200 */  and        $v0, $a0, $v0
    /* 5F6D0 8006EED0 1F004514 */  bne        $v0, $a1, .L8006EF50
    /* 5F6D4 8006EED4 0800E22C */   sltiu     $v0, $a3, 0x8
    /* 5F6D8 8006EED8 05004014 */  bnez       $v0, .L8006EEF0
    /* 5F6DC 8006EEDC F4FFC224 */   addiu     $v0, $a2, -0xC
    /* 5F6E0 8006EEE0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 5F6E4 8006EEE4 0200422C */  sltiu      $v0, $v0, 0x2
    /* 5F6E8 8006EEE8 19004010 */  beqz       $v0, .L8006EF50
    /* 5F6EC 8006EEEC 00000000 */   nop
  .L8006EEF0:
    /* 5F6F0 8006EEF0 00000495 */  lhu        $a0, 0x0($t0)
    /* 5F6F4 8006EEF4 00000000 */  nop
    /* 5F6F8 8006EEF8 1000822C */  sltiu      $v0, $a0, 0x10
    /* 5F6FC 8006EEFC 09004014 */  bnez       $v0, .L8006EF24
    /* 5F700 8006EF00 00000000 */   nop
    /* 5F704 8006EF04 000000A5 */  sh         $zero, 0x0($t0)
    /* 5F708 8006EF08 00006294 */  lhu        $v0, 0x0($v1)
    /* 5F70C 8006EF0C 00000000 */  nop
    /* 5F710 8006EF10 01004224 */  addiu      $v0, $v0, 0x1
    /* 5F714 8006EF14 000062A4 */  sh         $v0, 0x0($v1)
    /* 5F718 8006EF18 00002295 */  lhu        $v0, 0x0($t1)
    /* 5F71C 8006EF1C E2BB0108 */  j          .L8006EF88
    /* 5F720 8006EF20 00000000 */   nop
  .L8006EF24:
    /* 5F724 8006EF24 00006294 */  lhu        $v0, 0x0($v1)
    /* 5F728 8006EF28 00000000 */  nop
    /* 5F72C 8006EF2C 0200422C */  sltiu      $v0, $v0, 0x2
    /* 5F730 8006EF30 03004010 */  beqz       $v0, .L8006EF40
    /* 5F734 8006EF34 00000000 */   nop
    /* 5F738 8006EF38 D1BB0108 */  j          .L8006EF44
    /* 5F73C 8006EF3C 01008224 */   addiu     $v0, $a0, 0x1
  .L8006EF40:
    /* 5F740 8006EF40 03008224 */  addiu      $v0, $a0, 0x3
  .L8006EF44:
    /* 5F744 8006EF44 000002A5 */  sh         $v0, 0x0($t0)
    /* 5F748 8006EF48 E2BB0108 */  j          .L8006EF88
    /* 5F74C 8006EF4C 21100000 */   addu      $v0, $zero, $zero
  .L8006EF50:
    /* 5F750 8006EF50 0100C624 */  addiu      $a2, $a2, 0x1
    /* 5F754 8006EF54 FF00C230 */  andi       $v0, $a2, 0xFF
    /* 5F758 8006EF58 1200422C */  sltiu      $v0, $v0, 0x12
    /* 5F75C 8006EF5C D0FF4014 */  bnez       $v0, .L8006EEA0
    /* 5F760 8006EF60 FF00C730 */   andi      $a3, $a2, 0xFF
    /* 5F764 8006EF64 21100000 */  addu       $v0, $zero, $zero
    /* 5F768 8006EF68 FF006331 */  andi       $v1, $t3, 0xFF
    /* 5F76C 8006EF6C 40180300 */  sll        $v1, $v1, 1
    /* 5F770 8006EF70 1180013C */  lui        $at, %hi(D_8010CD44)
    /* 5F774 8006EF74 21082300 */  addu       $at, $at, $v1
    /* 5F778 8006EF78 44CD20A4 */  sh         $zero, %lo(D_8010CD44)($at)
    /* 5F77C 8006EF7C 0F80013C */  lui        $at, %hi(D_800F10A0)
    /* 5F780 8006EF80 21082300 */  addu       $at, $at, $v1
    /* 5F784 8006EF84 A01020A4 */  sh         $zero, %lo(D_800F10A0)($at)
  .L8006EF88:
    /* 5F788 8006EF88 0800E003 */  jr         $ra
    /* 5F78C 8006EF8C 00000000 */   nop
endlabel func_8006EE60
