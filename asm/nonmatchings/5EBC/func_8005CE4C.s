nonmatching func_8005CE4C, 0x16C

glabel func_8005CE4C
    /* 4D64C 8005CE4C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4D650 8005CE50 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4D654 8005CE54 DA038290 */  lbu        $v0, 0x3DA($a0)
    /* 4D658 8005CE58 E2038390 */  lbu        $v1, 0x3E2($a0)
    /* 4D65C 8005CE5C D60380A4 */  sh         $zero, 0x3D6($a0)
    /* 4D660 8005CE60 D40380A4 */  sh         $zero, 0x3D4($a0)
    /* 4D664 8005CE64 01004224 */  addiu      $v0, $v0, 0x1
    /* 4D668 8005CE68 DA0382A0 */  sb         $v0, 0x3DA($a0)
    /* 4D66C 8005CE6C 2100622C */  sltiu      $v0, $v1, 0x21
    /* 4D670 8005CE70 4B004010 */  beqz       $v0, .L8005CFA0
    /* 4D674 8005CE74 80100300 */   sll       $v0, $v1, 2
    /* 4D678 8005CE78 0180013C */  lui        $at, %hi(jtbl_800120EC)
    /* 4D67C 8005CE7C 21082200 */  addu       $at, $at, $v0
    /* 4D680 8005CE80 EC20228C */  lw         $v0, %lo(jtbl_800120EC)($at)
    /* 4D684 8005CE84 00000000 */  nop
    /* 4D688 8005CE88 08004000 */  jr         $v0
    /* 4D68C 8005CE8C 00000000 */   nop
  jlabel .L8005CE90
    /* 4D690 8005CE90 E173020C */  jal        func_8009CF84
    /* 4D694 8005CE94 00000000 */   nop
    /* 4D698 8005CE98 EA730108 */  j          .L8005CFA8
    /* 4D69C 8005CE9C 00000000 */   nop
  jlabel .L8005CEA0
    /* 4D6A0 8005CEA0 0274020C */  jal        func_8009D008
    /* 4D6A4 8005CEA4 00000000 */   nop
    /* 4D6A8 8005CEA8 EA730108 */  j          .L8005CFA8
    /* 4D6AC 8005CEAC 00000000 */   nop
  jlabel .L8005CEB0
    /* 4D6B0 8005CEB0 5274020C */  jal        func_8009D148
    /* 4D6B4 8005CEB4 00000000 */   nop
    /* 4D6B8 8005CEB8 EA730108 */  j          .L8005CFA8
    /* 4D6BC 8005CEBC 00000000 */   nop
  jlabel .L8005CEC0
    /* 4D6C0 8005CEC0 9474020C */  jal        func_8009D250
    /* 4D6C4 8005CEC4 00000000 */   nop
    /* 4D6C8 8005CEC8 EA730108 */  j          .L8005CFA8
    /* 4D6CC 8005CECC 00000000 */   nop
  jlabel .L8005CED0
    /* 4D6D0 8005CED0 D774020C */  jal        func_8009D35C
    /* 4D6D4 8005CED4 00000000 */   nop
    /* 4D6D8 8005CED8 EA730108 */  j          .L8005CFA8
    /* 4D6DC 8005CEDC 00000000 */   nop
  jlabel .L8005CEE0
    /* 4D6E0 8005CEE0 E074020C */  jal        func_8009D380
    /* 4D6E4 8005CEE4 00000000 */   nop
    /* 4D6E8 8005CEE8 EA730108 */  j          .L8005CFA8
    /* 4D6EC 8005CEEC 00000000 */   nop
  jlabel .L8005CEF0
    /* 4D6F0 8005CEF0 F274020C */  jal        func_8009D3C8
    /* 4D6F4 8005CEF4 00000000 */   nop
    /* 4D6F8 8005CEF8 EA730108 */  j          .L8005CFA8
    /* 4D6FC 8005CEFC 00000000 */   nop
  jlabel .L8005CF00
    /* 4D700 8005CF00 9C75020C */  jal        func_8009D670
    /* 4D704 8005CF04 00000000 */   nop
    /* 4D708 8005CF08 EA730108 */  j          .L8005CFA8
    /* 4D70C 8005CF0C 00000000 */   nop
  jlabel .L8005CF10
    /* 4D710 8005CF10 3175020C */  jal        func_8009D4C4
    /* 4D714 8005CF14 00000000 */   nop
    /* 4D718 8005CF18 EA730108 */  j          .L8005CFA8
    /* 4D71C 8005CF1C 00000000 */   nop
  jlabel .L8005CF20
    /* 4D720 8005CF20 0776020C */  jal        func_8009D81C
    /* 4D724 8005CF24 00000000 */   nop
    /* 4D728 8005CF28 EA730108 */  j          .L8005CFA8
    /* 4D72C 8005CF2C 00000000 */   nop
  jlabel .L8005CF30
    /* 4D730 8005CF30 7176020C */  jal        func_8009D9C4
    /* 4D734 8005CF34 00000000 */   nop
    /* 4D738 8005CF38 EA730108 */  j          .L8005CFA8
    /* 4D73C 8005CF3C 00000000 */   nop
  jlabel .L8005CF40
    /* 4D740 8005CF40 3077020C */  jal        func_8009DCC0
    /* 4D744 8005CF44 00000000 */   nop
    /* 4D748 8005CF48 EA730108 */  j          .L8005CFA8
    /* 4D74C 8005CF4C 00000000 */   nop
  jlabel .L8005CF50
    /* 4D750 8005CF50 9178020C */  jal        func_8009E244
    /* 4D754 8005CF54 00000000 */   nop
    /* 4D758 8005CF58 EA730108 */  j          .L8005CFA8
    /* 4D75C 8005CF5C 00000000 */   nop
  jlabel .L8005CF60
    /* 4D760 8005CF60 E974020C */  jal        func_8009D3A4
    /* 4D764 8005CF64 00000000 */   nop
    /* 4D768 8005CF68 EA730108 */  j          .L8005CFA8
    /* 4D76C 8005CF6C 00000000 */   nop
  jlabel .L8005CF70
    /* 4D770 8005CF70 C678020C */  jal        func_8009E318
    /* 4D774 8005CF74 00000000 */   nop
    /* 4D778 8005CF78 EA730108 */  j          .L8005CFA8
    /* 4D77C 8005CF7C 00000000 */   nop
  jlabel .L8005CF80
    /* 4D780 8005CF80 9979020C */  jal        func_8009E664
    /* 4D784 8005CF84 00000000 */   nop
    /* 4D788 8005CF88 EA730108 */  j          .L8005CFA8
    /* 4D78C 8005CF8C 00000000 */   nop
  jlabel .L8005CF90
    /* 4D790 8005CF90 F07A020C */  jal        func_8009EBC0
    /* 4D794 8005CF94 00000000 */   nop
    /* 4D798 8005CF98 EA730108 */  j          .L8005CFA8
    /* 4D79C 8005CF9C 00000000 */   nop
  jlabel .L8005CFA0
    /* 4D7A0 8005CFA0 E20380A0 */  sb         $zero, 0x3E2($a0)
    /* 4D7A4 8005CFA4 E30380A0 */  sb         $zero, 0x3E3($a0)
  jlabel .L8005CFA8
    /* 4D7A8 8005CFA8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4D7AC 8005CFAC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4D7B0 8005CFB0 0800E003 */  jr         $ra
    /* 4D7B4 8005CFB4 00000000 */   nop
endlabel func_8005CE4C
