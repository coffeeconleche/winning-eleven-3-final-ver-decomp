nonmatching func_8018A7C4, 0x6C8

glabel func_8018A7C4
    /* 184C 8018A7C4 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 1850 8018A7C8 F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 1854 8018A7CC 801F023C */  lui        $v0, (0x1F8001F0 >> 16)
    /* 1858 8018A7D0 F001428C */  lw         $v0, (0x1F8001F0 & 0xFFFF)($v0)
    /* 185C 8018A7D4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1860 8018A7D8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1864 8018A7DC 2000BFAF */  sw         $ra, 0x20($sp)
    /* 1868 8018A7E0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 186C 8018A7E4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1870 8018A7E8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1874 8018A7EC 020062A4 */  sh         $v0, 0x2($v1)
    /* 1878 8018A7F0 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 187C 8018A7F4 F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 1880 8018A7F8 801F023C */  lui        $v0, (0x1F8001F8 >> 16)
    /* 1884 8018A7FC F801428C */  lw         $v0, (0x1F8001F8 & 0xFFFF)($v0)
    /* 1888 8018A800 1080133C */  lui        $s3, %hi(D_800FF748)
    /* 188C 8018A804 48F77326 */  addiu      $s3, $s3, %lo(D_800FF748)
    /* 1890 8018A808 060062A4 */  sh         $v0, 0x6($v1)
    /* 1894 8018A80C 1180033C */  lui        $v1, %hi(D_8010A322)
    /* 1898 8018A810 22A36390 */  lbu        $v1, %lo(D_8010A322)($v1)
    /* 189C 8018A814 1180103C */  lui        $s0, %hi(D_8010C1D8)
    /* 18A0 8018A818 D8C11026 */  addiu      $s0, $s0, %lo(D_8010C1D8)
    /* 18A4 8018A81C 4100622C */  sltiu      $v0, $v1, 0x41
    /* 18A8 8018A820 8A014010 */  beqz       $v0, .L8018AE4C
    /* 18AC 8018A824 801F123C */   lui       $s2, (0x1F800294 >> 16)
    /* 18B0 8018A828 80100300 */  sll        $v0, $v1, 2
    /* 18B4 8018A82C 1980013C */  lui        $at, %hi(jtbl_801890F4)
    /* 18B8 8018A830 21082200 */  addu       $at, $at, $v0
    /* 18BC 8018A834 F490228C */  lw         $v0, %lo(jtbl_801890F4)($at)
    /* 18C0 8018A838 00000000 */  nop
    /* 18C4 8018A83C 08004000 */  jr         $v0
    /* 18C8 8018A840 00000000 */   nop
  jlabel .L8018A844
    /* 18CC 8018A844 F13E010C */  jal        func_8004FBC4
    /* 18D0 8018A848 21200000 */   addu      $a0, $zero, $zero
    /* 18D4 8018A84C 87014010 */  beqz       $v0, .L8018AE6C
    /* 18D8 8018A850 00000000 */   nop
    /* 18DC 8018A854 5477000C */  jal        func_8001DD50
    /* 18E0 8018A858 0C000424 */   addiu     $a0, $zero, 0xC
    /* 18E4 8018A85C C867020C */  jal        func_80099F20
    /* 18E8 8018A860 01000424 */   addiu     $a0, $zero, 0x1
    /* 18EC 8018A864 E1024292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s2)
    /* 18F0 8018A868 02000324 */  addiu      $v1, $zero, 0x2
    /* 18F4 8018A86C FF004230 */  andi       $v0, $v0, 0xFF
    /* 18F8 8018A870 1B004314 */  bne        $v0, $v1, .L8018A8E0
    /* 18FC 8018A874 00000000 */   nop
    /* 1900 8018A878 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1904 8018A87C 21086102 */  addu       $at, $s3, $at
    /* 1908 8018A880 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 190C 8018A884 00000000 */  nop
    /* 1910 8018A888 0F004330 */  andi       $v1, $v0, 0xF
    /* 1914 8018A88C 0600622C */  sltiu      $v0, $v1, 0x6
    /* 1918 8018A890 13004010 */  beqz       $v0, .L8018A8E0
    /* 191C 8018A894 80100300 */   sll       $v0, $v1, 2
    /* 1920 8018A898 1980013C */  lui        $at, %hi(jtbl_801891FC)
    /* 1924 8018A89C 21082200 */  addu       $at, $at, $v0
    /* 1928 8018A8A0 FC91228C */  lw         $v0, %lo(jtbl_801891FC)($at)
    /* 192C 8018A8A4 00000000 */  nop
    /* 1930 8018A8A8 08004000 */  jr         $v0
    /* 1934 8018A8AC 00000000 */   nop
  jlabel .L8018A8B0
    /* 1938 8018A8B0 3A2A0608 */  j          .L8018A8E8
    /* 193C 8018A8B4 01000224 */   addiu     $v0, $zero, 0x1
  jlabel .L8018A8B8
    /* 1940 8018A8B8 1980013C */  lui        $at, %hi(D_80193C88)
    /* 1944 8018A8BC 883C20A0 */  sb         $zero, %lo(D_80193C88)($at)
    /* 1948 8018A8C0 3C2A0608 */  j          .L8018A8F0
    /* 194C 8018A8C4 00000000 */   nop
  jlabel .L8018A8C8
    /* 1950 8018A8C8 3A2A0608 */  j          .L8018A8E8
    /* 1954 8018A8CC 03000224 */   addiu     $v0, $zero, 0x3
  jlabel .L8018A8D0
    /* 1958 8018A8D0 3A2A0608 */  j          .L8018A8E8
    /* 195C 8018A8D4 02000224 */   addiu     $v0, $zero, 0x2
  jlabel .L8018A8D8
    /* 1960 8018A8D8 3A2A0608 */  j          .L8018A8E8
    /* 1964 8018A8DC 01000224 */   addiu     $v0, $zero, 0x1
  .L8018A8E0:
    /* 1968 8018A8E0 AE79000C */  jal        func_8001E6B8
    /* 196C 8018A8E4 04000424 */   addiu     $a0, $zero, 0x4
  .L8018A8E8:
    /* 1970 8018A8E8 1980013C */  lui        $at, %hi(D_80193C88)
    /* 1974 8018A8EC 883C22A0 */  sb         $v0, %lo(D_80193C88)($at)
  .L8018A8F0:
    /* 1978 8018A8F0 973A060C */  jal        func_8018EA5C
    /* 197C 8018A8F4 00000000 */   nop
    /* 1980 8018A8F8 30010424 */  addiu      $a0, $zero, 0x130
    /* 1984 8018A8FC EB010524 */  addiu      $a1, $zero, 0x1EB
    /* 1988 8018A900 60000624 */  addiu      $a2, $zero, 0x60
    /* 198C 8018A904 F8010724 */  addiu      $a3, $zero, 0x1F8
    /* 1990 8018A908 1980013C */  lui        $at, %hi(D_801918F8)
    /* 1994 8018A90C F81820AC */  sw         $zero, %lo(D_801918F8)($at)
    /* 1998 8018A910 5040010C */  jal        func_80050140
    /* 199C 8018A914 E80140A2 */   sb        $zero, (0x1F8001E8 & 0xFFFF)($s2)
    /* 19A0 8018A918 30010424 */  addiu      $a0, $zero, 0x130
    /* 19A4 8018A91C EB010524 */  addiu      $a1, $zero, 0x1EB
    /* 19A8 8018A920 70000624 */  addiu      $a2, $zero, 0x70
    /* 19AC 8018A924 5040010C */  jal        func_80050140
    /* 19B0 8018A928 F8010724 */   addiu     $a3, $zero, 0x1F8
    /* 19B4 8018A92C 082C060C */  jal        func_8018B020
    /* 19B8 8018A930 00000000 */   nop
    /* 19BC 8018A934 1980103C */  lui        $s0, %hi(D_80193C98)
    /* 19C0 8018A938 983C1026 */  addiu      $s0, $s0, %lo(D_80193C98)
    /* 19C4 8018A93C 9033060C */  jal        func_8018CE40
    /* 19C8 8018A940 21200002 */   addu      $a0, $s0, $zero
    /* 19CC 8018A944 30051126 */  addiu      $s1, $s0, 0x530
    /* 19D0 8018A948 9033060C */  jal        func_8018CE40
    /* 19D4 8018A94C 21202002 */   addu      $a0, $s1, $zero
    /* 19D8 8018A950 343A060C */  jal        func_8018E8D0
    /* 19DC 8018A954 21200002 */   addu      $a0, $s0, $zero
    /* 19E0 8018A958 343A060C */  jal        func_8018E8D0
    /* 19E4 8018A95C 21202002 */   addu      $a0, $s1, $zero
    /* 19E8 8018A960 21206002 */  addu       $a0, $s3, $zero
    /* 19EC 8018A964 21180000 */  addu       $v1, $zero, $zero
    /* 19F0 8018A968 04000224 */  addiu      $v0, $zero, 0x4
    /* 19F4 8018A96C EC0142A2 */  sb         $v0, (0x1F8001EC & 0xFFFF)($s2)
  .L8018A970:
    /* 19F8 8018A970 000080A0 */  sb         $zero, 0x0($a0)
    /* 19FC 8018A974 01006324 */  addiu      $v1, $v1, 0x1
    /* 1A00 8018A978 FF006230 */  andi       $v0, $v1, 0xFF
    /* 1A04 8018A97C 1800422C */  sltiu      $v0, $v0, 0x18
    /* 1A08 8018A980 FBFF4014 */  bnez       $v0, .L8018A970
    /* 1A0C 8018A984 E8038424 */   addiu     $a0, $a0, 0x3E8
    /* 1A10 8018A988 A32B060C */  jal        func_8018AE8C
    /* 1A14 8018A98C 00000000 */   nop
    /* 1A18 8018A990 00020424 */  addiu      $a0, $zero, 0x200
    /* 1A1C 8018A994 00020224 */  addiu      $v0, $zero, 0x200
    /* 1A20 8018A998 F6D4020C */  jal        func_800B53D8
    /* 1A24 8018A99C 2C0342AE */   sw        $v0, (0x1F80032C & 0xFFFF)($s2)
    /* 1A28 8018A9A0 2242010C */  jal        func_80050888
    /* 1A2C 8018A9A4 21200000 */   addu      $a0, $zero, $zero
    /* 1A30 8018A9A8 10000224 */  addiu      $v0, $zero, 0x10
    /* 1A34 8018A9AC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1A38 8018A9B0 21086102 */  addu       $at, $s3, $at
    /* 1A3C 8018A9B4 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 1A40 8018A9B8 88AD020C */  jal        func_800AB620
    /* 1A44 8018A9BC E6140424 */   addiu     $a0, $zero, 0x14E6
    /* 1A48 8018A9C0 0C000424 */  addiu      $a0, $zero, 0xC
    /* 1A4C 8018A9C4 2439060C */  jal        func_8018E490
    /* 1A50 8018A9C8 940240A6 */   sh        $zero, (0x1F800294 & 0xFFFF)($s2)
    /* 1A54 8018A9CC 932B0608 */  j          .L8018AE4C
    /* 1A58 8018A9D0 00000000 */   nop
  jlabel .L8018A9D4
    /* 1A5C 8018A9D4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1A60 8018A9D8 21086102 */  addu       $at, $s3, $at
    /* 1A64 8018A9DC DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 1A68 8018A9E0 D85960A2 */  sb         $zero, 0x59D8($s3)
    /* 1A6C 8018A9E4 01004224 */  addiu      $v0, $v0, 0x1
    /* 1A70 8018A9E8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1A74 8018A9EC 21086102 */  addu       $at, $s3, $at
    /* 1A78 8018A9F0 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 1A7C 8018A9F4 AE79000C */  jal        func_8001E6B8
    /* 1A80 8018A9F8 0B000424 */   addiu     $a0, $zero, 0xB
    /* 1A84 8018A9FC 21184000 */  addu       $v1, $v0, $zero
    /* 1A88 8018AA00 0B00622C */  sltiu      $v0, $v1, 0xB
    /* 1A8C 8018AA04 0F004010 */  beqz       $v0, .L8018AA44
    /* 1A90 8018AA08 80100300 */   sll       $v0, $v1, 2
    /* 1A94 8018AA0C 1980013C */  lui        $at, %hi(jtbl_80189214)
    /* 1A98 8018AA10 21082200 */  addu       $at, $at, $v0
    /* 1A9C 8018AA14 1492228C */  lw         $v0, %lo(jtbl_80189214)($at)
    /* 1AA0 8018AA18 00000000 */  nop
    /* 1AA4 8018AA1C 08004000 */  jr         $v0
    /* 1AA8 8018AA20 00000000 */   nop
  jlabel .L8018AA24
    /* 1AAC 8018AA24 972A0608 */  j          .L8018AA5C
    /* 1AB0 8018AA28 200000AE */   sw        $zero, 0x20($s0)
  jlabel .L8018AA2C
    /* 1AB4 8018AA2C 962A0608 */  j          .L8018AA58
    /* 1AB8 8018AA30 01000224 */   addiu     $v0, $zero, 0x1
  jlabel .L8018AA34
    /* 1ABC 8018AA34 962A0608 */  j          .L8018AA58
    /* 1AC0 8018AA38 02000224 */   addiu     $v0, $zero, 0x2
  jlabel .L8018AA3C
    /* 1AC4 8018AA3C 962A0608 */  j          .L8018AA58
    /* 1AC8 8018AA40 03000224 */   addiu     $v0, $zero, 0x3
  jlabel .L8018AA44
    /* 1ACC 8018AA44 962A0608 */  j          .L8018AA58
    /* 1AD0 8018AA48 04000224 */   addiu     $v0, $zero, 0x4
  jlabel .L8018AA4C
    /* 1AD4 8018AA4C 962A0608 */  j          .L8018AA58
    /* 1AD8 8018AA50 05000224 */   addiu     $v0, $zero, 0x5
  jlabel .L8018AA54
    /* 1ADC 8018AA54 06000224 */  addiu      $v0, $zero, 0x6
  .L8018AA58:
    /* 1AE0 8018AA58 200002AE */  sw         $v0, 0x20($s0)
  .L8018AA5C:
    /* 1AE4 8018AA5C 0E004296 */  lhu        $v0, 0xE($s2)
    /* 1AE8 8018AA60 20000492 */  lbu        $a0, 0x20($s0)
    /* 1AEC 8018AA64 00F64224 */  addiu      $v0, $v0, -0xA00
    /* 1AF0 8018AA68 F02A0608 */  j          .L8018ABC0
    /* 1AF4 8018AA6C 0E0042A6 */   sh        $v0, 0xE($s2)
  jlabel .L8018AA70
    /* 1AF8 8018AA70 A32B060C */  jal        func_8018AE8C
    /* 1AFC 8018AA74 00000000 */   nop
    /* 1B00 8018AA78 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1B04 8018AA7C 21086102 */  addu       $at, $s3, $at
    /* 1B08 8018AA80 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 1B0C 8018AA84 01000324 */  addiu      $v1, $zero, 0x1
    /* 1B10 8018AA88 1980013C */  lui        $at, %hi(D_801918F8)
    /* 1B14 8018AA8C F81823AC */  sw         $v1, %lo(D_801918F8)($at)
    /* 1B18 8018AA90 502B0608 */  j          .L8018AD40
    /* 1B1C 8018AA94 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L8018AA98
    /* 1B20 8018AA98 94024296 */  lhu        $v0, 0x294($s2)
    /* 1B24 8018AA9C 00000000 */  nop
    /* 1B28 8018AAA0 01004324 */  addiu      $v1, $v0, 0x1
    /* 1B2C 8018AAA4 0500422C */  sltiu      $v0, $v0, 0x5
    /* 1B30 8018AAA8 03004014 */  bnez       $v0, .L8018AAB8
    /* 1B34 8018AAAC 940243A6 */   sh        $v1, 0x294($s2)
    /* 1B38 8018AAB0 DA3E010C */  jal        func_8004FB68
    /* 1B3C 8018AAB4 21200000 */   addu      $a0, $zero, $zero
  .L8018AAB8:
    /* 1B40 8018AAB8 94024296 */  lhu        $v0, 0x294($s2)
    /* 1B44 8018AABC 00000000 */  nop
    /* 1B48 8018AAC0 A501422C */  sltiu      $v0, $v0, 0x1A5
    /* 1B4C 8018AAC4 04004014 */  bnez       $v0, .L8018AAD8
    /* 1B50 8018AAC8 13000224 */   addiu     $v0, $zero, 0x13
    /* 1B54 8018AACC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1B58 8018AAD0 21086102 */  addu       $at, $s3, $at
    /* 1B5C 8018AAD4 DAAB22A0 */  sb         $v0, -0x5426($at)
  .L8018AAD8:
    /* 1B60 8018AAD8 6949010C */  jal        func_800525A4
    /* 1B64 8018AADC 00000000 */   nop
    /* 1B68 8018AAE0 DA004010 */  beqz       $v0, .L8018AE4C
    /* 1B6C 8018AAE4 13000224 */   addiu     $v0, $zero, 0x13
    /* 1B70 8018AAE8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1B74 8018AAEC 21086102 */  addu       $at, $s3, $at
    /* 1B78 8018AAF0 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 1B7C 8018AAF4 932B0608 */  j          .L8018AE4C
    /* 1B80 8018AAF8 00000000 */   nop
  jlabel .L8018AAFC
    /* 1B84 8018AAFC F13E010C */  jal        func_8004FBC4
    /* 1B88 8018AB00 21200000 */   addu      $a0, $zero, $zero
    /* 1B8C 8018AB04 D1004010 */  beqz       $v0, .L8018AE4C
    /* 1B90 8018AB08 20000224 */   addiu     $v0, $zero, 0x20
    /* 1B94 8018AB0C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1B98 8018AB10 21086102 */  addu       $at, $s3, $at
    /* 1B9C 8018AB14 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 1BA0 8018AB18 932B0608 */  j          .L8018AE4C
    /* 1BA4 8018AB1C 00000000 */   nop
  jlabel .L8018AB20
    /* 1BA8 8018AB20 E8036426 */  addiu      $a0, $s3, 0x3E8
    /* 1BAC 8018AB24 21180000 */  addu       $v1, $zero, $zero
    /* 1BB0 8018AB28 01000524 */  addiu      $a1, $zero, 0x1
    /* 1BB4 8018AB2C 01000224 */  addiu      $v0, $zero, 0x1
    /* 1BB8 8018AB30 E80140A2 */  sb         $zero, 0x1E8($s2)
    /* 1BBC 8018AB34 0D0002A2 */  sb         $v0, 0xD($s0)
    /* 1BC0 8018AB38 0E0002A2 */  sb         $v0, 0xE($s0)
    /* 1BC4 8018AB3C 04000224 */  addiu      $v0, $zero, 0x4
    /* 1BC8 8018AB40 EC0142A2 */  sb         $v0, 0x1EC($s2)
  .L8018AB44:
    /* 1BCC 8018AB44 000085A0 */  sb         $a1, 0x0($a0)
    /* 1BD0 8018AB48 01006324 */  addiu      $v1, $v1, 0x1
    /* 1BD4 8018AB4C FF006230 */  andi       $v0, $v1, 0xFF
    /* 1BD8 8018AB50 1600422C */  sltiu      $v0, $v0, 0x16
    /* 1BDC 8018AB54 FBFF4014 */  bnez       $v0, .L8018AB44
    /* 1BE0 8018AB58 E8038424 */   addiu     $a0, $a0, 0x3E8
    /* 1BE4 8018AB5C 8F5C000C */  jal        func_8001723C
    /* 1BE8 8018AB60 21200000 */   addu      $a0, $zero, $zero
    /* 1BEC 8018AB64 6D27060C */  jal        func_80189DB4
    /* 1BF0 8018AB68 00000000 */   nop
    /* 1BF4 8018AB6C 00030424 */  addiu      $a0, $zero, 0x300
    /* 1BF8 8018AB70 00030224 */  addiu      $v0, $zero, 0x300
    /* 1BFC 8018AB74 F6D4020C */  jal        func_800B53D8
    /* 1C00 8018AB78 2C0342AE */   sw        $v0, 0x32C($s2)
    /* 1C04 8018AB7C 2242010C */  jal        func_80050888
    /* 1C08 8018AB80 21200000 */   addu      $a0, $zero, $zero
    /* 1C0C 8018AB84 4F3E060C */  jal        func_8018F93C
    /* 1C10 8018AB88 00000000 */   nop
    /* 1C14 8018AB8C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1C18 8018AB90 21086102 */  addu       $at, $s3, $at
    /* 1C1C 8018AB94 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 1C20 8018AB98 00000000 */  nop
    /* 1C24 8018AB9C 01004224 */  addiu      $v0, $v0, 0x1
    /* 1C28 8018ABA0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1C2C 8018ABA4 21086102 */  addu       $at, $s3, $at
    /* 1C30 8018ABA8 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 1C34 8018ABAC AE79000C */  jal        func_8001E6B8
    /* 1C38 8018ABB0 06000424 */   addiu     $a0, $zero, 0x6
    /* 1C3C 8018ABB4 10004224 */  addiu      $v0, $v0, 0x10
    /* 1C40 8018ABB8 FF004430 */  andi       $a0, $v0, 0xFF
    /* 1C44 8018ABBC 200002AE */  sw         $v0, 0x20($s0)
  .L8018ABC0:
    /* 1C48 8018ABC0 8734060C */  jal        func_8018D21C
    /* 1C4C 8018ABC4 00000000 */   nop
    /* 1C50 8018ABC8 932B0608 */  j          .L8018AE4C
    /* 1C54 8018ABCC 940240A6 */   sh        $zero, 0x294($s2)
  jlabel .L8018ABD0
    /* 1C58 8018ABD0 94024296 */  lhu        $v0, 0x294($s2)
    /* 1C5C 8018ABD4 00000000 */  nop
    /* 1C60 8018ABD8 01004324 */  addiu      $v1, $v0, 0x1
    /* 1C64 8018ABDC 0500422C */  sltiu      $v0, $v0, 0x5
    /* 1C68 8018ABE0 03004014 */  bnez       $v0, .L8018ABF0
    /* 1C6C 8018ABE4 940243A6 */   sh        $v1, 0x294($s2)
    /* 1C70 8018ABE8 DA3E010C */  jal        func_8004FB68
    /* 1C74 8018ABEC 21200000 */   addu      $a0, $zero, $zero
  .L8018ABF0:
    /* 1C78 8018ABF0 EA28060C */  jal        func_8018A3A8
    /* 1C7C 8018ABF4 00000000 */   nop
    /* 1C80 8018ABF8 94024296 */  lhu        $v0, 0x294($s2)
    /* 1C84 8018ABFC 00000000 */  nop
    /* 1C88 8018AC00 6901422C */  sltiu      $v0, $v0, 0x169
    /* 1C8C 8018AC04 12004010 */  beqz       $v0, .L8018AC50
    /* 1C90 8018AC08 30000224 */   addiu     $v0, $zero, 0x30
    /* 1C94 8018AC0C 20000492 */  lbu        $a0, 0x20($s0)
    /* 1C98 8018AC10 EF36060C */  jal        func_8018DBBC
    /* 1C9C 8018AC14 00000000 */   nop
    /* 1CA0 8018AC18 1080043C */  lui        $a0, %hi(D_800FFB30)
    /* 1CA4 8018AC1C 30FB8424 */  addiu      $a0, $a0, %lo(D_800FFB30)
    /* 1CA8 8018AC20 21180000 */  addu       $v1, $zero, $zero
    /* 1CAC 8018AC24 01000524 */  addiu      $a1, $zero, 0x1
  .L8018AC28:
    /* 1CB0 8018AC28 D30385A0 */  sb         $a1, 0x3D3($a0)
    /* 1CB4 8018AC2C 01006324 */  addiu      $v1, $v1, 0x1
    /* 1CB8 8018AC30 FF006230 */  andi       $v0, $v1, 0xFF
    /* 1CBC 8018AC34 1600422C */  sltiu      $v0, $v0, 0x16
    /* 1CC0 8018AC38 FBFF4014 */  bnez       $v0, .L8018AC28
    /* 1CC4 8018AC3C E8038424 */   addiu     $a0, $a0, 0x3E8
    /* 1CC8 8018AC40 6949010C */  jal        func_800525A4
    /* 1CCC 8018AC44 00000000 */   nop
    /* 1CD0 8018AC48 80004010 */  beqz       $v0, .L8018AE4C
    /* 1CD4 8018AC4C 30000224 */   addiu     $v0, $zero, 0x30
  .L8018AC50:
    /* 1CD8 8018AC50 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1CDC 8018AC54 21086102 */  addu       $at, $s3, $at
    /* 1CE0 8018AC58 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 1CE4 8018AC5C 88AD020C */  jal        func_800AB620
    /* 1CE8 8018AC60 0E000424 */   addiu     $a0, $zero, 0xE
    /* 1CEC 8018AC64 932B0608 */  j          .L8018AE4C
    /* 1CF0 8018AC68 00000000 */   nop
  jlabel .L8018AC6C
    /* 1CF4 8018AC6C F13E010C */  jal        func_8004FBC4
    /* 1CF8 8018AC70 21200000 */   addu      $a0, $zero, $zero
    /* 1CFC 8018AC74 75004010 */  beqz       $v0, .L8018AE4C
    /* 1D00 8018AC78 00000000 */   nop
    /* 1D04 8018AC7C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1D08 8018AC80 21086102 */  addu       $at, $s3, $at
    /* 1D0C 8018AC84 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 1D10 8018AC88 E80140A2 */  sb         $zero, 0x1E8($s2)
    /* 1D14 8018AC8C 01004224 */  addiu      $v0, $v0, 0x1
    /* 1D18 8018AC90 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1D1C 8018AC94 21086102 */  addu       $at, $s3, $at
    /* 1D20 8018AC98 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 1D24 8018AC9C AE79000C */  jal        func_8001E6B8
    /* 1D28 8018ACA0 06000424 */   addiu     $a0, $zero, 0x6
    /* 1D2C 8018ACA4 20004224 */  addiu      $v0, $v0, 0x20
    /* 1D30 8018ACA8 FF004430 */  andi       $a0, $v0, 0xFF
    /* 1D34 8018ACAC 8734060C */  jal        func_8018D21C
    /* 1D38 8018ACB0 200002AE */   sw        $v0, 0x20($s0)
    /* 1D3C 8018ACB4 0228060C */  jal        func_8018A008
    /* 1D40 8018ACB8 00000000 */   nop
    /* 1D44 8018ACBC 877E000C */  jal        func_8001FA1C
    /* 1D48 8018ACC0 940240A6 */   sh        $zero, 0x294($s2)
    /* 1D4C 8018ACC4 2439060C */  jal        func_8018E490
    /* 1D50 8018ACC8 0C000424 */   addiu     $a0, $zero, 0xC
    /* 1D54 8018ACCC 932B0608 */  j          .L8018AE4C
    /* 1D58 8018ACD0 00000000 */   nop
  jlabel .L8018ACD4
    /* 1D5C 8018ACD4 E33E060C */  jal        func_8018FB8C
    /* 1D60 8018ACD8 00000000 */   nop
    /* 1D64 8018ACDC 94024296 */  lhu        $v0, 0x294($s2)
    /* 1D68 8018ACE0 00000000 */  nop
    /* 1D6C 8018ACE4 01004324 */  addiu      $v1, $v0, 0x1
    /* 1D70 8018ACE8 0500422C */  sltiu      $v0, $v0, 0x5
    /* 1D74 8018ACEC 03004014 */  bnez       $v0, .L8018ACFC
    /* 1D78 8018ACF0 940243A6 */   sh        $v1, 0x294($s2)
    /* 1D7C 8018ACF4 DA3E010C */  jal        func_8004FB68
    /* 1D80 8018ACF8 21200000 */   addu      $a0, $zero, $zero
  .L8018ACFC:
    /* 1D84 8018ACFC 6949010C */  jal        func_800525A4
    /* 1D88 8018AD00 00000000 */   nop
    /* 1D8C 8018AD04 42004014 */  bnez       $v0, .L8018AE10
    /* 1D90 8018AD08 40000224 */   addiu     $v0, $zero, 0x40
    /* 1D94 8018AD0C 20000492 */  lbu        $a0, 0x20($s0)
    /* 1D98 8018AD10 EF36060C */  jal        func_8018DBBC
    /* 1D9C 8018AD14 00000000 */   nop
    /* 1DA0 8018AD18 94024296 */  lhu        $v0, 0x294($s2)
    /* 1DA4 8018AD1C 00000000 */  nop
    /* 1DA8 8018AD20 5103422C */  sltiu      $v0, $v0, 0x351
    /* 1DAC 8018AD24 49004014 */  bnez       $v0, .L8018AE4C
    /* 1DB0 8018AD28 00000000 */   nop
    /* 1DB4 8018AD2C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1DB8 8018AD30 21086102 */  addu       $at, $s3, $at
    /* 1DBC 8018AD34 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 1DC0 8018AD38 00000000 */  nop
    /* 1DC4 8018AD3C 01004224 */  addiu      $v0, $v0, 0x1
  .L8018AD40:
    /* 1DC8 8018AD40 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1DCC 8018AD44 21086102 */  addu       $at, $s3, $at
    /* 1DD0 8018AD48 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 1DD4 8018AD4C 932B0608 */  j          .L8018AE4C
    /* 1DD8 8018AD50 00000000 */   nop
  jlabel .L8018AD54
    /* 1DDC 8018AD54 F13E010C */  jal        func_8004FBC4
    /* 1DE0 8018AD58 21200000 */   addu      $a0, $zero, $zero
    /* 1DE4 8018AD5C 3B004010 */  beqz       $v0, .L8018AE4C
    /* 1DE8 8018AD60 30000424 */   addiu     $a0, $zero, 0x30
    /* 1DEC 8018AD64 30000224 */  addiu      $v0, $zero, 0x30
    /* 1DF0 8018AD68 940240A6 */  sh         $zero, 0x294($s2)
    /* 1DF4 8018AD6C 8734060C */  jal        func_8018D21C
    /* 1DF8 8018AD70 200002AE */   sw        $v0, 0x20($s0)
    /* 1DFC 8018AD74 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1E00 8018AD78 21086102 */  addu       $at, $s3, $at
    /* 1E04 8018AD7C DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 1E08 8018AD80 00000000 */  nop
    /* 1E0C 8018AD84 01004224 */  addiu      $v0, $v0, 0x1
    /* 1E10 8018AD88 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1E14 8018AD8C 21086102 */  addu       $at, $s3, $at
    /* 1E18 8018AD90 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 1E1C 8018AD94 2439060C */  jal        func_8018E490
    /* 1E20 8018AD98 0C000424 */   addiu     $a0, $zero, 0xC
    /* 1E24 8018AD9C 932B0608 */  j          .L8018AE4C
    /* 1E28 8018ADA0 00000000 */   nop
  jlabel .L8018ADA4
    /* 1E2C 8018ADA4 E33E060C */  jal        func_8018FB8C
    /* 1E30 8018ADA8 00000000 */   nop
    /* 1E34 8018ADAC 94024296 */  lhu        $v0, 0x294($s2)
    /* 1E38 8018ADB0 00000000 */  nop
    /* 1E3C 8018ADB4 01004324 */  addiu      $v1, $v0, 0x1
    /* 1E40 8018ADB8 0500422C */  sltiu      $v0, $v0, 0x5
    /* 1E44 8018ADBC 03004014 */  bnez       $v0, .L8018ADCC
    /* 1E48 8018ADC0 940243A6 */   sh        $v1, 0x294($s2)
    /* 1E4C 8018ADC4 DA3E010C */  jal        func_8004FB68
    /* 1E50 8018ADC8 21200000 */   addu      $a0, $zero, $zero
  .L8018ADCC:
    /* 1E54 8018ADCC 20000492 */  lbu        $a0, 0x20($s0)
    /* 1E58 8018ADD0 EF36060C */  jal        func_8018DBBC
    /* 1E5C 8018ADD4 00000000 */   nop
    /* 1E60 8018ADD8 6949010C */  jal        func_800525A4
    /* 1E64 8018ADDC 00000000 */   nop
    /* 1E68 8018ADE0 0B004014 */  bnez       $v0, .L8018AE10
    /* 1E6C 8018ADE4 40000224 */   addiu     $v0, $zero, 0x40
    /* 1E70 8018ADE8 0E80023C */  lui        $v0, %hi(D_800E6B86)
    /* 1E74 8018ADEC 866B4294 */  lhu        $v0, %lo(D_800E6B86)($v0)
    /* 1E78 8018ADF0 00000000 */  nop
    /* 1E7C 8018ADF4 15004014 */  bnez       $v0, .L8018AE4C
    /* 1E80 8018ADF8 00000000 */   nop
    /* 1E84 8018ADFC 94024296 */  lhu        $v0, 0x294($s2)
    /* 1E88 8018AE00 00000000 */  nop
    /* 1E8C 8018AE04 7900422C */  sltiu      $v0, $v0, 0x79
    /* 1E90 8018AE08 10004014 */  bnez       $v0, .L8018AE4C
    /* 1E94 8018AE0C 40000224 */   addiu     $v0, $zero, 0x40
  .L8018AE10:
    /* 1E98 8018AE10 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1E9C 8018AE14 21086102 */  addu       $at, $s3, $at
    /* 1EA0 8018AE18 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 1EA4 8018AE1C 932B0608 */  j          .L8018AE4C
    /* 1EA8 8018AE20 00000000 */   nop
  jlabel .L8018AE24
    /* 1EAC 8018AE24 F13E010C */  jal        func_8004FBC4
    /* 1EB0 8018AE28 21200000 */   addu      $a0, $zero, $zero
    /* 1EB4 8018AE2C 07004010 */  beqz       $v0, .L8018AE4C
    /* 1EB8 8018AE30 00000000 */   nop
    /* 1EBC 8018AE34 C03A060C */  jal        func_8018EB00
    /* 1EC0 8018AE38 00000000 */   nop
    /* 1EC4 8018AE3C 88AD020C */  jal        func_800AB620
    /* 1EC8 8018AE40 11000424 */   addiu     $a0, $zero, 0x11
    /* 1ECC 8018AE44 9B2B0608 */  j          .L8018AE6C
    /* 1ED0 8018AE48 01000224 */   addiu     $v0, $zero, 0x1
  jlabel .L8018AE4C
    /* 1ED4 8018AE4C 1980033C */  lui        $v1, %hi(D_801918F8)
    /* 1ED8 8018AE50 F818638C */  lw         $v1, %lo(D_801918F8)($v1)
    /* 1EDC 8018AE54 01000224 */  addiu      $v0, $zero, 0x1
    /* 1EE0 8018AE58 04006214 */  bne        $v1, $v0, .L8018AE6C
    /* 1EE4 8018AE5C 21100000 */   addu      $v0, $zero, $zero
    /* 1EE8 8018AE60 2632060C */  jal        func_8018C898
    /* 1EEC 8018AE64 00000000 */   nop
    /* 1EF0 8018AE68 21100000 */  addu       $v0, $zero, $zero
  .L8018AE6C:
    /* 1EF4 8018AE6C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 1EF8 8018AE70 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1EFC 8018AE74 1800B28F */  lw         $s2, 0x18($sp)
    /* 1F00 8018AE78 1400B18F */  lw         $s1, 0x14($sp)
    /* 1F04 8018AE7C 1000B08F */  lw         $s0, 0x10($sp)
    /* 1F08 8018AE80 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1F0C 8018AE84 0800E003 */  jr         $ra
    /* 1F10 8018AE88 00000000 */   nop
endlabel func_8018A7C4
