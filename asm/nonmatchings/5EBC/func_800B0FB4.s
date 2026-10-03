nonmatching func_800B0FB4, 0xFC

glabel func_800B0FB4
    /* A17B4 800B0FB4 0D80023C */  lui        $v0, %hi(D_800CEAC6)
    /* A17B8 800B0FB8 C6EA4290 */  lbu        $v0, %lo(D_800CEAC6)($v0)
    /* A17BC 800B0FBC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A17C0 800B0FC0 1000B0AF */  sw         $s0, 0x10($sp)
    /* A17C4 800B0FC4 21808000 */  addu       $s0, $a0, $zero
    /* A17C8 800B0FC8 0200422C */  sltiu      $v0, $v0, 0x2
    /* A17CC 800B0FCC 08004014 */  bnez       $v0, .L800B0FF0
    /* A17D0 800B0FD0 1400BFAF */   sw        $ra, 0x14($sp)
    /* A17D4 800B0FD4 0180043C */  lui        $a0, %hi(D_80014FA8)
    /* A17D8 800B0FD8 A84F8424 */  addiu      $a0, $a0, %lo(D_80014FA8)
    /* A17DC 800B0FDC 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* A17E0 800B0FE0 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* A17E4 800B0FE4 00000000 */  nop
    /* A17E8 800B0FE8 09F84000 */  jalr       $v0
    /* A17EC 800B0FEC 21280002 */   addu      $a1, $s0, $zero
  .L800B0FF0:
    /* A17F0 800B0FF0 46E9020C */  jal        func_800BA518
    /* A17F4 800B0FF4 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* A17F8 800B0FF8 0D80033C */  lui        $v1, %hi(D_800CEBA8)
    /* A17FC 800B0FFC A8EB638C */  lw         $v1, %lo(D_800CEBA8)($v1)
    /* A1800 800B1000 F0004224 */  addiu      $v0, $v0, 0xF0
    /* A1804 800B1004 0D80013C */  lui        $at, %hi(D_800CEBD0)
    /* A1808 800B1008 D0EB22AC */  sw         $v0, %lo(D_800CEBD0)($at)
    /* A180C 800B100C 0D80013C */  lui        $at, %hi(D_800CEBD4)
    /* A1810 800B1010 D4EB20AC */  sw         $zero, %lo(D_800CEBD4)($at)
    /* A1814 800B1014 0000628C */  lw         $v0, 0x0($v1)
    /* A1818 800B1018 11C40208 */  j          .L800B1044
    /* A181C 800B101C 0001033C */   lui       $v1, (0x1000000 >> 16)
  .L800B1020:
    /* A1820 800B1020 ADC2020C */  jal        func_800B0AB4
    /* A1824 800B1024 00000000 */   nop
    /* A1828 800B1028 1D004014 */  bnez       $v0, .L800B10A0
    /* A182C 800B102C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A1830 800B1030 0D80023C */  lui        $v0, %hi(D_800CEBA8)
    /* A1834 800B1034 A8EB428C */  lw         $v0, %lo(D_800CEBA8)($v0)
    /* A1838 800B1038 00000000 */  nop
    /* A183C 800B103C 0000428C */  lw         $v0, 0x0($v0)
    /* A1840 800B1040 0001033C */  lui        $v1, (0x1000000 >> 16)
  .L800B1044:
    /* A1844 800B1044 24104300 */  and        $v0, $v0, $v1
    /* A1848 800B1048 F5FF4014 */  bnez       $v0, .L800B1020
    /* A184C 800B104C 00000000 */   nop
    /* A1850 800B1050 0D80023C */  lui        $v0, %hi(D_800CEB9C)
    /* A1854 800B1054 9CEB428C */  lw         $v0, %lo(D_800CEB9C)($v0)
    /* A1858 800B1058 00000000 */  nop
    /* A185C 800B105C 0000428C */  lw         $v0, 0x0($v0)
    /* A1860 800B1060 0004033C */  lui        $v1, (0x4000000 >> 16)
    /* A1864 800B1064 24104300 */  and        $v0, $v0, $v1
    /* A1868 800B1068 EDFF4010 */  beqz       $v0, .L800B1020
    /* A186C 800B106C 00000000 */   nop
    /* A1870 800B1070 0B80053C */  lui        $a1, %hi(func_800B10B0)
    /* A1874 800B1074 B010A524 */  addiu      $a1, $a1, %lo(func_800B10B0)
    /* A1878 800B1078 E6E9020C */  jal        func_800BA798
    /* A187C 800B107C 02000424 */   addiu     $a0, $zero, 0x2
    /* A1880 800B1080 0D80023C */  lui        $v0, %hi(D_800CEABC)
    /* A1884 800B1084 BCEA428C */  lw         $v0, %lo(D_800CEABC)($v0)
    /* A1888 800B1088 00000000 */  nop
    /* A188C 800B108C 1800428C */  lw         $v0, 0x18($v0)
    /* A1890 800B1090 00000000 */  nop
    /* A1894 800B1094 09F84000 */  jalr       $v0
    /* A1898 800B1098 21200002 */   addu      $a0, $s0, $zero
    /* A189C 800B109C 21100000 */  addu       $v0, $zero, $zero
  .L800B10A0:
    /* A18A0 800B10A0 1400BF8F */  lw         $ra, 0x14($sp)
    /* A18A4 800B10A4 1000B08F */  lw         $s0, 0x10($sp)
    /* A18A8 800B10A8 0800E003 */  jr         $ra
    /* A18AC 800B10AC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B0FB4
