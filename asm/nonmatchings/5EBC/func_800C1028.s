nonmatching func_800C1028, 0x158

glabel func_800C1028
    /* B1828 800C1028 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* B182C 800C102C 2000B4AF */  sw         $s4, 0x20($sp)
    /* B1830 800C1030 21A08000 */  addu       $s4, $a0, $zero
    /* B1834 800C1034 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* B1838 800C1038 2198A000 */  addu       $s3, $a1, $zero
    /* B183C 800C103C FFFFC230 */  andi       $v0, $a2, 0xFFFF
    /* B1840 800C1040 1100422C */  sltiu      $v0, $v0, 0x11
    /* B1844 800C1044 2400BFAF */  sw         $ra, 0x24($sp)
    /* B1848 800C1048 1800B2AF */  sw         $s2, 0x18($sp)
    /* B184C 800C104C 1400B1AF */  sw         $s1, 0x14($sp)
    /* B1850 800C1050 21004010 */  beqz       $v0, .L800C10D8
    /* B1854 800C1054 1000B0AF */   sw        $s0, 0x10($sp)
    /* B1858 800C1058 00140600 */  sll        $v0, $a2, 16
    /* B185C 800C105C 038C0200 */  sra        $s1, $v0, 16
    /* B1860 800C1060 1180033C */  lui        $v1, %hi(D_8010A3F0)
    /* B1864 800C1064 21187100 */  addu       $v1, $v1, $s1
    /* B1868 800C1068 F0A36390 */  lbu        $v1, %lo(D_8010A3F0)($v1)
    /* B186C 800C106C 02000224 */  addiu      $v0, $zero, 0x2
    /* B1870 800C1070 19006214 */  bne        $v1, $v0, .L800C10D8
    /* B1874 800C1074 00000000 */   nop
    /* B1878 800C1078 0D80023C */  lui        $v0, %hi(D_800D50FC)
    /* B187C 800C107C FC50428C */  lw         $v0, %lo(D_800D50FC)($v0)
    /* B1880 800C1080 00000000 */  nop
    /* B1884 800C1084 0F004014 */  bnez       $v0, .L800C10C4
    /* B1888 800C1088 80801100 */   sll       $s0, $s1, 2
    /* B188C 800C108C 1180023C */  lui        $v0, %hi(D_8010CD98)
    /* B1890 800C1090 21105000 */  addu       $v0, $v0, $s0
    /* B1894 800C1094 98CD428C */  lw         $v0, %lo(D_8010CD98)($v0)
    /* B1898 800C1098 0D80013C */  lui        $at, %hi(D_800D5100)
    /* B189C 800C109C 005126A4 */  sh         $a2, %lo(D_800D5100)($at)
    /* B18A0 800C10A0 0D80013C */  lui        $at, %hi(D_800D50FC)
    /* B18A4 800C10A4 FC5022AC */  sw         $v0, %lo(D_800D50FC)($at)
    /* B18A8 800C10A8 860F030C */  jal        func_800C3E18
    /* B18AC 800C10AC 21200000 */   addu      $a0, $zero, $zero
    /* B18B0 800C10B0 1180043C */  lui        $a0, %hi(D_8010CDE0)
    /* B18B4 800C10B4 21209000 */  addu       $a0, $a0, $s0
    /* B18B8 800C10B8 E0CD848C */  lw         $a0, %lo(D_8010CDE0)($a0)
    /* B18BC 800C10BC 6E0F030C */  jal        func_800C3DB8
    /* B18C0 800C10C0 00000000 */   nop
  .L800C10C4:
    /* B18C4 800C10C4 0D80123C */  lui        $s2, %hi(D_800D5100)
    /* B18C8 800C10C8 00515286 */  lh         $s2, %lo(D_800D5100)($s2)
    /* B18CC 800C10CC 00000000 */  nop
    /* B18D0 800C10D0 05005112 */  beq        $s2, $s1, .L800C10E8
    /* B18D4 800C10D4 21806002 */   addu      $s0, $s3, $zero
  .L800C10D8:
    /* B18D8 800C10D8 E20F030C */  jal        func_800C3F88
    /* B18DC 800C10DC 21200000 */   addu      $a0, $zero, $zero
    /* B18E0 800C10E0 58040308 */  j          .L800C1160
    /* B18E4 800C10E4 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800C10E8:
    /* B18E8 800C10E8 0D80033C */  lui        $v1, %hi(D_800D50FC)
    /* B18EC 800C10EC FC50638C */  lw         $v1, %lo(D_800D50FC)($v1)
    /* B18F0 800C10F0 00000000 */  nop
    /* B18F4 800C10F4 2B107000 */  sltu       $v0, $v1, $s0
    /* B18F8 800C10F8 02004010 */  beqz       $v0, .L800C1104
    /* B18FC 800C10FC 00000000 */   nop
    /* B1900 800C1100 21806000 */  addu       $s0, $v1, $zero
  .L800C1104:
    /* B1904 800C1104 E20F030C */  jal        func_800C3F88
    /* B1908 800C1108 01000424 */   addiu     $a0, $zero, 0x1
    /* B190C 800C110C 21208002 */  addu       $a0, $s4, $zero
    /* B1910 800C1110 920F030C */  jal        func_800C3E48
    /* B1914 800C1114 21280002 */   addu      $a1, $s0, $zero
    /* B1918 800C1118 0D80023C */  lui        $v0, %hi(D_800D50FC)
    /* B191C 800C111C FC50428C */  lw         $v0, %lo(D_800D50FC)($v0)
    /* B1920 800C1120 00000000 */  nop
    /* B1924 800C1124 23105000 */  subu       $v0, $v0, $s0
    /* B1928 800C1128 0D80013C */  lui        $at, %hi(D_800D50FC)
    /* B192C 800C112C FC5022AC */  sw         $v0, %lo(D_800D50FC)($at)
    /* B1930 800C1130 0B004014 */  bnez       $v0, .L800C1160
    /* B1934 800C1134 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* B1938 800C1138 21104002 */  addu       $v0, $s2, $zero
    /* B193C 800C113C FFFF0324 */  addiu      $v1, $zero, -0x1
    /* B1940 800C1140 0D80013C */  lui        $at, %hi(D_800D5100)
    /* B1944 800C1144 005123A4 */  sh         $v1, %lo(D_800D5100)($at)
    /* B1948 800C1148 01000324 */  addiu      $v1, $zero, 0x1
    /* B194C 800C114C 0D80013C */  lui        $at, %hi(D_800D50FC)
    /* B1950 800C1150 FC5020AC */  sw         $zero, %lo(D_800D50FC)($at)
    /* B1954 800C1154 1180013C */  lui        $at, %hi(D_8010A3F0)
    /* B1958 800C1158 21082200 */  addu       $at, $at, $v0
    /* B195C 800C115C F0A323A0 */  sb         $v1, %lo(D_8010A3F0)($at)
  .L800C1160:
    /* B1960 800C1160 2400BF8F */  lw         $ra, 0x24($sp)
    /* B1964 800C1164 2000B48F */  lw         $s4, 0x20($sp)
    /* B1968 800C1168 1C00B38F */  lw         $s3, 0x1C($sp)
    /* B196C 800C116C 1800B28F */  lw         $s2, 0x18($sp)
    /* B1970 800C1170 1400B18F */  lw         $s1, 0x14($sp)
    /* B1974 800C1174 1000B08F */  lw         $s0, 0x10($sp)
    /* B1978 800C1178 0800E003 */  jr         $ra
    /* B197C 800C117C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800C1028
    /* B1980 800C1180 00000000 */  nop
    /* B1984 800C1184 00000000 */  nop
