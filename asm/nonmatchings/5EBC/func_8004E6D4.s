nonmatching func_8004E6D4, 0x654

glabel func_8004E6D4
    /* 3EED4 8004E6D4 FF008430 */  andi       $a0, $a0, 0xFF
    /* 3EED8 8004E6D8 FAFF8424 */  addiu      $a0, $a0, -0x6
    /* 3EEDC 8004E6DC 7200822C */  sltiu      $v0, $a0, 0x72
    /* 3EEE0 8004E6E0 8D014010 */  beqz       $v0, .L8004ED18
    /* 3EEE4 8004E6E4 80100400 */   sll       $v0, $a0, 2
    /* 3EEE8 8004E6E8 0180013C */  lui        $at, %hi(jtbl_80011B1C)
    /* 3EEEC 8004E6EC 21082200 */  addu       $at, $at, $v0
    /* 3EEF0 8004E6F0 1C1B228C */  lw         $v0, %lo(jtbl_80011B1C)($at)
    /* 3EEF4 8004E6F4 00000000 */  nop
    /* 3EEF8 8004E6F8 08004000 */  jr         $v0
    /* 3EEFC 8004E6FC 00000000 */   nop
  jlabel .L8004E700
    /* 3EF00 8004E700 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 3EF04 8004E704 0600422C */  sltiu      $v0, $v0, 0x6
    /* 3EF08 8004E708 03004014 */  bnez       $v0, .L8004E718
    /* 3EF0C 8004E70C FF00A330 */   andi      $v1, $a1, 0xFF
    /* 3EF10 8004E710 05000524 */  addiu      $a1, $zero, 0x5
    /* 3EF14 8004E714 FF00A330 */  andi       $v1, $a1, 0xFF
  .L8004E718:
    /* 3EF18 8004E718 40100300 */  sll        $v0, $v1, 1
    /* 3EF1C 8004E71C 21104300 */  addu       $v0, $v0, $v1
    /* 3EF20 8004E720 40100200 */  sll        $v0, $v0, 1
    /* 3EF24 8004E724 0C80033C */  lui        $v1, %hi(D_800C6DC0)
    /* 3EF28 8004E728 C06D6324 */  addiu      $v1, $v1, %lo(D_800C6DC0)
    /* 3EF2C 8004E72C 483B0108 */  j          .L8004ED20
    /* 3EF30 8004E730 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004E734
    /* 3EF34 8004E734 0C80023C */  lui        $v0, %hi(D_800C6DB8)
    /* 3EF38 8004E738 B86D4224 */  addiu      $v0, $v0, %lo(D_800C6DB8)
    /* 3EF3C 8004E73C 483B0108 */  j          .L8004ED20
    /* 3EF40 8004E740 00000000 */   nop
  jlabel .L8004E744
    /* 3EF44 8004E744 0C80023C */  lui        $v0, %hi(D_800C6EA8)
    /* 3EF48 8004E748 A86E4224 */  addiu      $v0, $v0, %lo(D_800C6EA8)
    /* 3EF4C 8004E74C 483B0108 */  j          .L8004ED20
    /* 3EF50 8004E750 00000000 */   nop
  jlabel .L8004E754
    /* 3EF54 8004E754 0C80023C */  lui        $v0, %hi(D_800C6EB0)
    /* 3EF58 8004E758 B06E4224 */  addiu      $v0, $v0, %lo(D_800C6EB0)
    /* 3EF5C 8004E75C 483B0108 */  j          .L8004ED20
    /* 3EF60 8004E760 00000000 */   nop
  jlabel .L8004E764
    /* 3EF64 8004E764 0C80023C */  lui        $v0, %hi(D_800C6EB8)
    /* 3EF68 8004E768 B86E4224 */  addiu      $v0, $v0, %lo(D_800C6EB8)
    /* 3EF6C 8004E76C 483B0108 */  j          .L8004ED20
    /* 3EF70 8004E770 00000000 */   nop
  jlabel .L8004E774
    /* 3EF74 8004E774 0C80023C */  lui        $v0, %hi(D_800C70A4)
    /* 3EF78 8004E778 A4704224 */  addiu      $v0, $v0, %lo(D_800C70A4)
    /* 3EF7C 8004E77C 483B0108 */  j          .L8004ED20
    /* 3EF80 8004E780 00000000 */   nop
  jlabel .L8004E784
    /* 3EF84 8004E784 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 3EF88 8004E788 0300422C */  sltiu      $v0, $v0, 0x3
    /* 3EF8C 8004E78C 03004014 */  bnez       $v0, .L8004E79C
    /* 3EF90 8004E790 FF00A330 */   andi      $v1, $a1, 0xFF
    /* 3EF94 8004E794 02000524 */  addiu      $a1, $zero, 0x2
    /* 3EF98 8004E798 FF00A330 */  andi       $v1, $a1, 0xFF
  .L8004E79C:
    /* 3EF9C 8004E79C 40100300 */  sll        $v0, $v1, 1
    /* 3EFA0 8004E7A0 21104300 */  addu       $v0, $v0, $v1
    /* 3EFA4 8004E7A4 40100200 */  sll        $v0, $v0, 1
    /* 3EFA8 8004E7A8 0C80033C */  lui        $v1, %hi(D_800C6DE4)
    /* 3EFAC 8004E7AC E46D6324 */  addiu      $v1, $v1, %lo(D_800C6DE4)
    /* 3EFB0 8004E7B0 483B0108 */  j          .L8004ED20
    /* 3EFB4 8004E7B4 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004E7B8
    /* 3EFB8 8004E7B8 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 3EFBC 8004E7BC 0500422C */  sltiu      $v0, $v0, 0x5
    /* 3EFC0 8004E7C0 03004014 */  bnez       $v0, .L8004E7D0
    /* 3EFC4 8004E7C4 FF00A330 */   andi      $v1, $a1, 0xFF
    /* 3EFC8 8004E7C8 04000524 */  addiu      $a1, $zero, 0x4
    /* 3EFCC 8004E7CC FF00A330 */  andi       $v1, $a1, 0xFF
  .L8004E7D0:
    /* 3EFD0 8004E7D0 40100300 */  sll        $v0, $v1, 1
    /* 3EFD4 8004E7D4 21104300 */  addu       $v0, $v0, $v1
    /* 3EFD8 8004E7D8 40100200 */  sll        $v0, $v0, 1
    /* 3EFDC 8004E7DC 0C80033C */  lui        $v1, %hi(D_800C6E34)
    /* 3EFE0 8004E7E0 346E6324 */  addiu      $v1, $v1, %lo(D_800C6E34)
    /* 3EFE4 8004E7E4 483B0108 */  j          .L8004ED20
    /* 3EFE8 8004E7E8 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004E7EC
    /* 3EFEC 8004E7EC FF00A330 */  andi       $v1, $a1, 0xFF
    /* 3EFF0 8004E7F0 40100300 */  sll        $v0, $v1, 1
    /* 3EFF4 8004E7F4 21104300 */  addu       $v0, $v0, $v1
    /* 3EFF8 8004E7F8 40100200 */  sll        $v0, $v0, 1
    /* 3EFFC 8004E7FC 0C80033C */  lui        $v1, %hi(D_800C6E54)
    /* 3F000 8004E800 546E6324 */  addiu      $v1, $v1, %lo(D_800C6E54)
    /* 3F004 8004E804 483B0108 */  j          .L8004ED20
    /* 3F008 8004E808 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004E80C
    /* 3F00C 8004E80C FF00A230 */  andi       $v0, $a1, 0xFF
    /* 3F010 8004E810 0400422C */  sltiu      $v0, $v0, 0x4
    /* 3F014 8004E814 03004014 */  bnez       $v0, .L8004E824
    /* 3F018 8004E818 FF00A330 */   andi      $v1, $a1, 0xFF
    /* 3F01C 8004E81C 03000524 */  addiu      $a1, $zero, 0x3
    /* 3F020 8004E820 FF00A330 */  andi       $v1, $a1, 0xFF
  .L8004E824:
    /* 3F024 8004E824 40100300 */  sll        $v0, $v1, 1
    /* 3F028 8004E828 21104300 */  addu       $v0, $v0, $v1
    /* 3F02C 8004E82C 40100200 */  sll        $v0, $v0, 1
    /* 3F030 8004E830 0C80033C */  lui        $v1, %hi(D_800C6E90)
    /* 3F034 8004E834 906E6324 */  addiu      $v1, $v1, %lo(D_800C6E90)
    /* 3F038 8004E838 483B0108 */  j          .L8004ED20
    /* 3F03C 8004E83C 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004E840
    /* 3F040 8004E840 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 3F044 8004E844 0C00422C */  sltiu      $v0, $v0, 0xC
    /* 3F048 8004E848 03004014 */  bnez       $v0, .L8004E858
    /* 3F04C 8004E84C FF00A330 */   andi      $v1, $a1, 0xFF
    /* 3F050 8004E850 0B000524 */  addiu      $a1, $zero, 0xB
    /* 3F054 8004E854 FF00A330 */  andi       $v1, $a1, 0xFF
  .L8004E858:
    /* 3F058 8004E858 40100300 */  sll        $v0, $v1, 1
    /* 3F05C 8004E85C 21104300 */  addu       $v0, $v0, $v1
    /* 3F060 8004E860 40100200 */  sll        $v0, $v0, 1
    /* 3F064 8004E864 0C80033C */  lui        $v1, %hi(D_800C6EC0)
    /* 3F068 8004E868 C06E6324 */  addiu      $v1, $v1, %lo(D_800C6EC0)
    /* 3F06C 8004E86C 483B0108 */  j          .L8004ED20
    /* 3F070 8004E870 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004E874
    /* 3F074 8004E874 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 3F078 8004E878 0C00422C */  sltiu      $v0, $v0, 0xC
    /* 3F07C 8004E87C 03004014 */  bnez       $v0, .L8004E88C
    /* 3F080 8004E880 FF00A330 */   andi      $v1, $a1, 0xFF
    /* 3F084 8004E884 0B000524 */  addiu      $a1, $zero, 0xB
    /* 3F088 8004E888 FF00A330 */  andi       $v1, $a1, 0xFF
  .L8004E88C:
    /* 3F08C 8004E88C 40100300 */  sll        $v0, $v1, 1
    /* 3F090 8004E890 21104300 */  addu       $v0, $v0, $v1
    /* 3F094 8004E894 40100200 */  sll        $v0, $v0, 1
    /* 3F098 8004E898 0C80033C */  lui        $v1, %hi(D_800C70D0)
    /* 3F09C 8004E89C D0706324 */  addiu      $v1, $v1, %lo(D_800C70D0)
    /* 3F0A0 8004E8A0 483B0108 */  j          .L8004ED20
    /* 3F0A4 8004E8A4 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004E8A8
    /* 3F0A8 8004E8A8 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 3F0AC 8004E8AC 40100300 */  sll        $v0, $v1, 1
    /* 3F0B0 8004E8B0 21104300 */  addu       $v0, $v0, $v1
    /* 3F0B4 8004E8B4 40100200 */  sll        $v0, $v0, 1
    /* 3F0B8 8004E8B8 0C80033C */  lui        $v1, %hi(D_800C6F58)
    /* 3F0BC 8004E8BC 586F6324 */  addiu      $v1, $v1, %lo(D_800C6F58)
    /* 3F0C0 8004E8C0 483B0108 */  j          .L8004ED20
    /* 3F0C4 8004E8C4 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004E8C8
    /* 3F0C8 8004E8C8 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 3F0CC 8004E8CC 0600422C */  sltiu      $v0, $v0, 0x6
    /* 3F0D0 8004E8D0 03004014 */  bnez       $v0, .L8004E8E0
    /* 3F0D4 8004E8D4 FF00A330 */   andi      $v1, $a1, 0xFF
    /* 3F0D8 8004E8D8 05000524 */  addiu      $a1, $zero, 0x5
    /* 3F0DC 8004E8DC FF00A330 */  andi       $v1, $a1, 0xFF
  .L8004E8E0:
    /* 3F0E0 8004E8E0 40100300 */  sll        $v0, $v1, 1
    /* 3F0E4 8004E8E4 21104300 */  addu       $v0, $v0, $v1
    /* 3F0E8 8004E8E8 40100200 */  sll        $v0, $v0, 1
    /* 3F0EC 8004E8EC 0C80033C */  lui        $v1, %hi(D_800C7018)
    /* 3F0F0 8004E8F0 18706324 */  addiu      $v1, $v1, %lo(D_800C7018)
    /* 3F0F4 8004E8F4 483B0108 */  j          .L8004ED20
    /* 3F0F8 8004E8F8 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004E8FC
    /* 3F0FC 8004E8FC FF00A230 */  andi       $v0, $a1, 0xFF
    /* 3F100 8004E900 0900422C */  sltiu      $v0, $v0, 0x9
    /* 3F104 8004E904 03004014 */  bnez       $v0, .L8004E914
    /* 3F108 8004E908 FF00A330 */   andi      $v1, $a1, 0xFF
    /* 3F10C 8004E90C 08000524 */  addiu      $a1, $zero, 0x8
    /* 3F110 8004E910 FF00A330 */  andi       $v1, $a1, 0xFF
  .L8004E914:
    /* 3F114 8004E914 40100300 */  sll        $v0, $v1, 1
    /* 3F118 8004E918 21104300 */  addu       $v0, $v0, $v1
    /* 3F11C 8004E91C 40100200 */  sll        $v0, $v0, 1
    /* 3F120 8004E920 0C80033C */  lui        $v1, %hi(D_800C703C)
    /* 3F124 8004E924 3C706324 */  addiu      $v1, $v1, %lo(D_800C703C)
    /* 3F128 8004E928 483B0108 */  j          .L8004ED20
    /* 3F12C 8004E92C 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004E930
    /* 3F130 8004E930 0C80023C */  lui        $v0, %hi(D_800C7074)
    /* 3F134 8004E934 74704224 */  addiu      $v0, $v0, %lo(D_800C7074)
    /* 3F138 8004E938 483B0108 */  j          .L8004ED20
    /* 3F13C 8004E93C 00000000 */   nop
  jlabel .L8004E940
    /* 3F140 8004E940 0C80023C */  lui        $v0, %hi(D_800C707C)
    /* 3F144 8004E944 7C704224 */  addiu      $v0, $v0, %lo(D_800C707C)
    /* 3F148 8004E948 483B0108 */  j          .L8004ED20
    /* 3F14C 8004E94C 00000000 */   nop
  jlabel .L8004E950
    /* 3F150 8004E950 0C80023C */  lui        $v0, %hi(D_800C708C)
    /* 3F154 8004E954 8C704224 */  addiu      $v0, $v0, %lo(D_800C708C)
    /* 3F158 8004E958 483B0108 */  j          .L8004ED20
    /* 3F15C 8004E95C 00000000 */   nop
  jlabel .L8004E960
    /* 3F160 8004E960 0C80023C */  lui        $v0, %hi(D_800C7094)
    /* 3F164 8004E964 94704224 */  addiu      $v0, $v0, %lo(D_800C7094)
    /* 3F168 8004E968 483B0108 */  j          .L8004ED20
    /* 3F16C 8004E96C 00000000 */   nop
  jlabel .L8004E970
    /* 3F170 8004E970 0C80023C */  lui        $v0, %hi(D_800C709C)
    /* 3F174 8004E974 9C704224 */  addiu      $v0, $v0, %lo(D_800C709C)
    /* 3F178 8004E978 483B0108 */  j          .L8004ED20
    /* 3F17C 8004E97C 00000000 */   nop
  jlabel .L8004E980
    /* 3F180 8004E980 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 3F184 8004E984 0300422C */  sltiu      $v0, $v0, 0x3
    /* 3F188 8004E988 03004014 */  bnez       $v0, .L8004E998
    /* 3F18C 8004E98C FF00A330 */   andi      $v1, $a1, 0xFF
    /* 3F190 8004E990 02000524 */  addiu      $a1, $zero, 0x2
    /* 3F194 8004E994 FF00A330 */  andi       $v1, $a1, 0xFF
  .L8004E998:
    /* 3F198 8004E998 40100300 */  sll        $v0, $v1, 1
    /* 3F19C 8004E99C 21104300 */  addu       $v0, $v0, $v1
    /* 3F1A0 8004E9A0 40100200 */  sll        $v0, $v0, 1
    /* 3F1A4 8004E9A4 0C80033C */  lui        $v1, %hi(D_800C70AC)
    /* 3F1A8 8004E9A8 AC706324 */  addiu      $v1, $v1, %lo(D_800C70AC)
    /* 3F1AC 8004E9AC 483B0108 */  j          .L8004ED20
    /* 3F1B0 8004E9B0 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004E9B4
    /* 3F1B4 8004E9B4 0C80023C */  lui        $v0, %hi(D_800C70C0)
    /* 3F1B8 8004E9B8 C0704224 */  addiu      $v0, $v0, %lo(D_800C70C0)
    /* 3F1BC 8004E9BC 483B0108 */  j          .L8004ED20
    /* 3F1C0 8004E9C0 00000000 */   nop
  jlabel .L8004E9C4
    /* 3F1C4 8004E9C4 0C80023C */  lui        $v0, %hi(D_800C70C8)
    /* 3F1C8 8004E9C8 C8704224 */  addiu      $v0, $v0, %lo(D_800C70C8)
    /* 3F1CC 8004E9CC 483B0108 */  j          .L8004ED20
    /* 3F1D0 8004E9D0 00000000 */   nop
  jlabel .L8004E9D4
    /* 3F1D4 8004E9D4 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 3F1D8 8004E9D8 40100300 */  sll        $v0, $v1, 1
    /* 3F1DC 8004E9DC 21104300 */  addu       $v0, $v0, $v1
    /* 3F1E0 8004E9E0 40100200 */  sll        $v0, $v0, 1
    /* 3F1E4 8004E9E4 0C80033C */  lui        $v1, %hi(D_800C7118)
    /* 3F1E8 8004E9E8 18716324 */  addiu      $v1, $v1, %lo(D_800C7118)
    /* 3F1EC 8004E9EC 483B0108 */  j          .L8004ED20
    /* 3F1F0 8004E9F0 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004E9F4
    /* 3F1F4 8004E9F4 0C80023C */  lui        $v0, %hi(D_800C71B4)
    /* 3F1F8 8004E9F8 B4714224 */  addiu      $v0, $v0, %lo(D_800C71B4)
    /* 3F1FC 8004E9FC 483B0108 */  j          .L8004ED20
    /* 3F200 8004EA00 00000000 */   nop
  jlabel .L8004EA04
    /* 3F204 8004EA04 0C80023C */  lui        $v0, %hi(D_800C71BC)
    /* 3F208 8004EA08 BC714224 */  addiu      $v0, $v0, %lo(D_800C71BC)
    /* 3F20C 8004EA0C 483B0108 */  j          .L8004ED20
    /* 3F210 8004EA10 00000000 */   nop
  jlabel .L8004EA14
    /* 3F214 8004EA14 0C80023C */  lui        $v0, %hi(D_800C71C4)
    /* 3F218 8004EA18 C4714224 */  addiu      $v0, $v0, %lo(D_800C71C4)
    /* 3F21C 8004EA1C 483B0108 */  j          .L8004ED20
    /* 3F220 8004EA20 00000000 */   nop
  jlabel .L8004EA24
    /* 3F224 8004EA24 0C80023C */  lui        $v0, %hi(D_800C71CC)
    /* 3F228 8004EA28 CC714224 */  addiu      $v0, $v0, %lo(D_800C71CC)
    /* 3F22C 8004EA2C 483B0108 */  j          .L8004ED20
    /* 3F230 8004EA30 00000000 */   nop
  jlabel .L8004EA34
    /* 3F234 8004EA34 0C80023C */  lui        $v0, %hi(D_800C71D4)
    /* 3F238 8004EA38 D4714224 */  addiu      $v0, $v0, %lo(D_800C71D4)
    /* 3F23C 8004EA3C 483B0108 */  j          .L8004ED20
    /* 3F240 8004EA40 00000000 */   nop
  jlabel .L8004EA44
    /* 3F244 8004EA44 0C80023C */  lui        $v0, %hi(D_800C71DC)
    /* 3F248 8004EA48 DC714224 */  addiu      $v0, $v0, %lo(D_800C71DC)
    /* 3F24C 8004EA4C 483B0108 */  j          .L8004ED20
    /* 3F250 8004EA50 00000000 */   nop
  jlabel .L8004EA54
    /* 3F254 8004EA54 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 3F258 8004EA58 40100300 */  sll        $v0, $v1, 1
    /* 3F25C 8004EA5C 21104300 */  addu       $v0, $v0, $v1
    /* 3F260 8004EA60 40100200 */  sll        $v0, $v0, 1
    /* 3F264 8004EA64 0C80033C */  lui        $v1, %hi(D_800C71E4)
    /* 3F268 8004EA68 E4716324 */  addiu      $v1, $v1, %lo(D_800C71E4)
    /* 3F26C 8004EA6C 483B0108 */  j          .L8004ED20
    /* 3F270 8004EA70 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004EA74
    /* 3F274 8004EA74 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 3F278 8004EA78 40100300 */  sll        $v0, $v1, 1
    /* 3F27C 8004EA7C 21104300 */  addu       $v0, $v0, $v1
    /* 3F280 8004EA80 40100200 */  sll        $v0, $v0, 1
    /* 3F284 8004EA84 0C80033C */  lui        $v1, %hi(D_800C7210)
    /* 3F288 8004EA88 10726324 */  addiu      $v1, $v1, %lo(D_800C7210)
    /* 3F28C 8004EA8C 483B0108 */  j          .L8004ED20
    /* 3F290 8004EA90 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004EA94
    /* 3F294 8004EA94 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 3F298 8004EA98 40100300 */  sll        $v0, $v1, 1
    /* 3F29C 8004EA9C 21104300 */  addu       $v0, $v0, $v1
    /* 3F2A0 8004EAA0 40100200 */  sll        $v0, $v0, 1
    /* 3F2A4 8004EAA4 0C80033C */  lui        $v1, %hi(D_800C7278)
    /* 3F2A8 8004EAA8 78726324 */  addiu      $v1, $v1, %lo(D_800C7278)
    /* 3F2AC 8004EAAC 483B0108 */  j          .L8004ED20
    /* 3F2B0 8004EAB0 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004EAB4
    /* 3F2B4 8004EAB4 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 3F2B8 8004EAB8 40100300 */  sll        $v0, $v1, 1
    /* 3F2BC 8004EABC 21104300 */  addu       $v0, $v0, $v1
    /* 3F2C0 8004EAC0 40100200 */  sll        $v0, $v0, 1
    /* 3F2C4 8004EAC4 0C80033C */  lui        $v1, %hi(D_800C72F0)
    /* 3F2C8 8004EAC8 F0726324 */  addiu      $v1, $v1, %lo(D_800C72F0)
    /* 3F2CC 8004EACC 483B0108 */  j          .L8004ED20
    /* 3F2D0 8004EAD0 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004EAD4
    /* 3F2D4 8004EAD4 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 3F2D8 8004EAD8 40100300 */  sll        $v0, $v1, 1
    /* 3F2DC 8004EADC 21104300 */  addu       $v0, $v0, $v1
    /* 3F2E0 8004EAE0 40100200 */  sll        $v0, $v0, 1
    /* 3F2E4 8004EAE4 0C80033C */  lui        $v1, %hi(D_800C7458)
    /* 3F2E8 8004EAE8 58746324 */  addiu      $v1, $v1, %lo(D_800C7458)
    /* 3F2EC 8004EAEC 483B0108 */  j          .L8004ED20
    /* 3F2F0 8004EAF0 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004EAF4
    /* 3F2F4 8004EAF4 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 3F2F8 8004EAF8 40100300 */  sll        $v0, $v1, 1
    /* 3F2FC 8004EAFC 21104300 */  addu       $v0, $v0, $v1
    /* 3F300 8004EB00 40100200 */  sll        $v0, $v0, 1
    /* 3F304 8004EB04 0C80033C */  lui        $v1, %hi(D_800C7500)
    /* 3F308 8004EB08 00756324 */  addiu      $v1, $v1, %lo(D_800C7500)
    /* 3F30C 8004EB0C 483B0108 */  j          .L8004ED20
    /* 3F310 8004EB10 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004EB14
    /* 3F314 8004EB14 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 3F318 8004EB18 0A00422C */  sltiu      $v0, $v0, 0xA
    /* 3F31C 8004EB1C 02004010 */  beqz       $v0, .L8004EB28
    /* 3F320 8004EB20 F7FFA524 */   addiu     $a1, $a1, -0x9
    /* 3F324 8004EB24 21280000 */  addu       $a1, $zero, $zero
  .L8004EB28:
    /* 3F328 8004EB28 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 3F32C 8004EB2C 40100300 */  sll        $v0, $v1, 1
    /* 3F330 8004EB30 21104300 */  addu       $v0, $v0, $v1
    /* 3F334 8004EB34 40100200 */  sll        $v0, $v0, 1
    /* 3F338 8004EB38 0C80033C */  lui        $v1, %hi(D_800C7578)
    /* 3F33C 8004EB3C 78756324 */  addiu      $v1, $v1, %lo(D_800C7578)
    /* 3F340 8004EB40 483B0108 */  j          .L8004ED20
    /* 3F344 8004EB44 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004EB48
    /* 3F348 8004EB48 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 3F34C 8004EB4C 40100300 */  sll        $v0, $v1, 1
    /* 3F350 8004EB50 21104300 */  addu       $v0, $v0, $v1
    /* 3F354 8004EB54 40100200 */  sll        $v0, $v0, 1
    /* 3F358 8004EB58 0C80033C */  lui        $v1, %hi(D_800C75D4)
    /* 3F35C 8004EB5C D4756324 */  addiu      $v1, $v1, %lo(D_800C75D4)
    /* 3F360 8004EB60 483B0108 */  j          .L8004ED20
    /* 3F364 8004EB64 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004EB68
    /* 3F368 8004EB68 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 3F36C 8004EB6C 1900422C */  sltiu      $v0, $v0, 0x19
    /* 3F370 8004EB70 03004014 */  bnez       $v0, .L8004EB80
    /* 3F374 8004EB74 FF00A330 */   andi      $v1, $a1, 0xFF
    /* 3F378 8004EB78 18000524 */  addiu      $a1, $zero, 0x18
    /* 3F37C 8004EB7C FF00A330 */  andi       $v1, $a1, 0xFF
  .L8004EB80:
    /* 3F380 8004EB80 40100300 */  sll        $v0, $v1, 1
    /* 3F384 8004EB84 21104300 */  addu       $v0, $v0, $v1
    /* 3F388 8004EB88 40100200 */  sll        $v0, $v0, 1
    /* 3F38C 8004EB8C 0C80033C */  lui        $v1, %hi(D_800C76AC)
    /* 3F390 8004EB90 AC766324 */  addiu      $v1, $v1, %lo(D_800C76AC)
    /* 3F394 8004EB94 483B0108 */  j          .L8004ED20
    /* 3F398 8004EB98 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004EB9C
    /* 3F39C 8004EB9C 0C80023C */  lui        $v0, %hi(D_800C7744)
    /* 3F3A0 8004EBA0 44774224 */  addiu      $v0, $v0, %lo(D_800C7744)
    /* 3F3A4 8004EBA4 483B0108 */  j          .L8004ED20
    /* 3F3A8 8004EBA8 00000000 */   nop
  jlabel .L8004EBAC
    /* 3F3AC 8004EBAC FF00A330 */  andi       $v1, $a1, 0xFF
    /* 3F3B0 8004EBB0 1600622C */  sltiu      $v0, $v1, 0x16
    /* 3F3B4 8004EBB4 03004014 */  bnez       $v0, .L8004EBC4
    /* 3F3B8 8004EBB8 00000000 */   nop
    /* 3F3BC 8004EBBC F53A0108 */  j          .L8004EBD4
    /* 3F3C0 8004EBC0 0C000524 */   addiu     $a1, $zero, 0xC
  .L8004EBC4:
    /* 3F3C4 8004EBC4 0900622C */  sltiu      $v0, $v1, 0x9
    /* 3F3C8 8004EBC8 02004010 */  beqz       $v0, .L8004EBD4
    /* 3F3CC 8004EBCC F7FFA524 */   addiu     $a1, $a1, -0x9
    /* 3F3D0 8004EBD0 21280000 */  addu       $a1, $zero, $zero
  .L8004EBD4:
    /* 3F3D4 8004EBD4 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 3F3D8 8004EBD8 40100300 */  sll        $v0, $v1, 1
    /* 3F3DC 8004EBDC 21104300 */  addu       $v0, $v0, $v1
    /* 3F3E0 8004EBE0 40100200 */  sll        $v0, $v0, 1
    /* 3F3E4 8004EBE4 0C80033C */  lui        $v1, %hi(D_800C774C)
    /* 3F3E8 8004EBE8 4C776324 */  addiu      $v1, $v1, %lo(D_800C774C)
    /* 3F3EC 8004EBEC 483B0108 */  j          .L8004ED20
    /* 3F3F0 8004EBF0 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004EBF4
    /* 3F3F4 8004EBF4 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 3F3F8 8004EBF8 40100300 */  sll        $v0, $v1, 1
    /* 3F3FC 8004EBFC 21104300 */  addu       $v0, $v0, $v1
    /* 3F400 8004EC00 40100200 */  sll        $v0, $v0, 1
    /* 3F404 8004EC04 0C80033C */  lui        $v1, %hi(D_800C782C)
    /* 3F408 8004EC08 2C786324 */  addiu      $v1, $v1, %lo(D_800C782C)
    /* 3F40C 8004EC0C 483B0108 */  j          .L8004ED20
    /* 3F410 8004EC10 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004EC14
    /* 3F414 8004EC14 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 3F418 8004EC18 40100300 */  sll        $v0, $v1, 1
    /* 3F41C 8004EC1C 21104300 */  addu       $v0, $v0, $v1
    /* 3F420 8004EC20 40100200 */  sll        $v0, $v0, 1
    /* 3F424 8004EC24 0C80033C */  lui        $v1, %hi(D_800C779C)
    /* 3F428 8004EC28 9C776324 */  addiu      $v1, $v1, %lo(D_800C779C)
    /* 3F42C 8004EC2C 483B0108 */  j          .L8004ED20
    /* 3F430 8004EC30 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004EC34
    /* 3F434 8004EC34 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 3F438 8004EC38 1400422C */  sltiu      $v0, $v0, 0x14
    /* 3F43C 8004EC3C 03004014 */  bnez       $v0, .L8004EC4C
    /* 3F440 8004EC40 FF00A330 */   andi      $v1, $a1, 0xFF
    /* 3F444 8004EC44 13000524 */  addiu      $a1, $zero, 0x13
    /* 3F448 8004EC48 FF00A330 */  andi       $v1, $a1, 0xFF
  .L8004EC4C:
    /* 3F44C 8004EC4C 40100300 */  sll        $v0, $v1, 1
    /* 3F450 8004EC50 21104300 */  addu       $v0, $v0, $v1
    /* 3F454 8004EC54 40100200 */  sll        $v0, $v0, 1
    /* 3F458 8004EC58 0C80033C */  lui        $v1, %hi(D_800C7964)
    /* 3F45C 8004EC5C 64796324 */  addiu      $v1, $v1, %lo(D_800C7964)
    /* 3F460 8004EC60 483B0108 */  j          .L8004ED20
    /* 3F464 8004EC64 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004EC68
    /* 3F468 8004EC68 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 3F46C 8004EC6C 40100300 */  sll        $v0, $v1, 1
    /* 3F470 8004EC70 21104300 */  addu       $v0, $v0, $v1
    /* 3F474 8004EC74 40100200 */  sll        $v0, $v0, 1
    /* 3F478 8004EC78 0C80033C */  lui        $v1, %hi(D_800C73C8)
    /* 3F47C 8004EC7C C8736324 */  addiu      $v1, $v1, %lo(D_800C73C8)
    /* 3F480 8004EC80 483B0108 */  j          .L8004ED20
    /* 3F484 8004EC84 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004EC88
    /* 3F488 8004EC88 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 3F48C 8004EC8C 40100300 */  sll        $v0, $v1, 1
    /* 3F490 8004EC90 21104300 */  addu       $v0, $v0, $v1
    /* 3F494 8004EC94 40100200 */  sll        $v0, $v0, 1
    /* 3F498 8004EC98 0C80033C */  lui        $v1, %hi(D_800C79DC)
    /* 3F49C 8004EC9C DC796324 */  addiu      $v1, $v1, %lo(D_800C79DC)
    /* 3F4A0 8004ECA0 483B0108 */  j          .L8004ED20
    /* 3F4A4 8004ECA4 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004ECA8
    /* 3F4A8 8004ECA8 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 3F4AC 8004ECAC 40100300 */  sll        $v0, $v1, 1
    /* 3F4B0 8004ECB0 21104300 */  addu       $v0, $v0, $v1
    /* 3F4B4 8004ECB4 40100200 */  sll        $v0, $v0, 1
    /* 3F4B8 8004ECB8 0C80033C */  lui        $v1, %hi(D_800C7A70)
    /* 3F4BC 8004ECBC 707A6324 */  addiu      $v1, $v1, %lo(D_800C7A70)
    /* 3F4C0 8004ECC0 483B0108 */  j          .L8004ED20
    /* 3F4C4 8004ECC4 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004ECC8
    /* 3F4C8 8004ECC8 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 3F4CC 8004ECCC 40100300 */  sll        $v0, $v1, 1
    /* 3F4D0 8004ECD0 21104300 */  addu       $v0, $v0, $v1
    /* 3F4D4 8004ECD4 40100200 */  sll        $v0, $v0, 1
    /* 3F4D8 8004ECD8 0C80033C */  lui        $v1, %hi(D_800C7AE4)
    /* 3F4DC 8004ECDC E47A6324 */  addiu      $v1, $v1, %lo(D_800C7AE4)
    /* 3F4E0 8004ECE0 483B0108 */  j          .L8004ED20
    /* 3F4E4 8004ECE4 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8004ECE8
    /* 3F4E8 8004ECE8 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 3F4EC 8004ECEC 0D00422C */  sltiu      $v0, $v0, 0xD
    /* 3F4F0 8004ECF0 05004010 */  beqz       $v0, .L8004ED08
    /* 3F4F4 8004ECF4 00000000 */   nop
    /* 3F4F8 8004ECF8 0C80023C */  lui        $v0, %hi(D_800C7A68)
    /* 3F4FC 8004ECFC 687A4224 */  addiu      $v0, $v0, %lo(D_800C7A68)
    /* 3F500 8004ED00 483B0108 */  j          .L8004ED20
    /* 3F504 8004ED04 00000000 */   nop
  jlabel .L8004ED08
    /* 3F508 8004ED08 0C80023C */  lui        $v0, %hi(D_800C7B74)
    /* 3F50C 8004ED0C 747B4224 */  addiu      $v0, $v0, %lo(D_800C7B74)
    /* 3F510 8004ED10 483B0108 */  j          .L8004ED20
    /* 3F514 8004ED14 00000000 */   nop
  jlabel .L8004ED18
    /* 3F518 8004ED18 0C80023C */  lui        $v0, %hi(D_800C6DA8)
    /* 3F51C 8004ED1C A86D4224 */  addiu      $v0, $v0, %lo(D_800C6DA8)
  .L8004ED20:
    /* 3F520 8004ED20 0800E003 */  jr         $ra
    /* 3F524 8004ED24 00000000 */   nop
endlabel func_8004E6D4
