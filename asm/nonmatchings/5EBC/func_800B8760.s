nonmatching func_800B8760, 0x1E0

glabel func_800B8760
    /* A8F60 800B8760 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A8F64 800B8764 0180043C */  lui        $a0, %hi(D_800153B8)
    /* A8F68 800B8768 B8538424 */  addiu      $a0, $a0, %lo(D_800153B8)
    /* A8F6C 800B876C 1000BFAF */  sw         $ra, 0x10($sp)
    /* A8F70 800B8770 60E3020C */  jal        func_800B8D80
    /* A8F74 800B8774 00000000 */   nop
    /* A8F78 800B8778 0180043C */  lui        $a0, %hi(D_800153C4)
    /* A8F7C 800B877C C4538424 */  addiu      $a0, $a0, %lo(D_800153C4)
    /* A8F80 800B8780 0D80053C */  lui        $a1, %hi(D_800D3C30)
    /* A8F84 800B8784 A6B5020C */  jal        func_800AD698
    /* A8F88 800B8788 303CA524 */   addiu     $a1, $a1, %lo(D_800D3C30)
    /* A8F8C 800B878C 0D80013C */  lui        $at, %hi(D_800D396D)
    /* A8F90 800B8790 6D3920A0 */  sb         $zero, %lo(D_800D396D)($at)
    /* A8F94 800B8794 0D80013C */  lui        $at, %hi(D_800D396C)
    /* A8F98 800B8798 6C3920A0 */  sb         $zero, %lo(D_800D396C)($at)
    /* A8F9C 800B879C 0D80013C */  lui        $at, %hi(D_800D3950)
    /* A8FA0 800B87A0 503920AC */  sw         $zero, %lo(D_800D3950)($at)
    /* A8FA4 800B87A4 0D80013C */  lui        $at, %hi(D_800D394C)
    /* A8FA8 800B87A8 4C3920AC */  sw         $zero, %lo(D_800D394C)($at)
    /* A8FAC 800B87AC 0D80013C */  lui        $at, %hi(D_800D3960)
    /* A8FB0 800B87B0 603920AC */  sw         $zero, %lo(D_800D3960)($at)
    /* A8FB4 800B87B4 0D80013C */  lui        $at, %hi(D_800D395C)
    /* A8FB8 800B87B8 CEE9020C */  jal        func_800BA738
    /* A8FBC 800B87BC 5C3920AC */   sw        $zero, %lo(D_800D395C)($at)
    /* A8FC0 800B87C0 0C80053C */  lui        $a1, %hi(D_800B8CA0)
    /* A8FC4 800B87C4 A08CA524 */  addiu      $a1, $a1, %lo(D_800B8CA0)
    /* A8FC8 800B87C8 DAE9020C */  jal        func_800BA768
    /* A8FCC 800B87CC 02000424 */   addiu     $a0, $zero, 0x2
    /* A8FD0 800B87D0 0D80033C */  lui        $v1, %hi(D_800D3C14)
    /* A8FD4 800B87D4 143C638C */  lw         $v1, %lo(D_800D3C14)($v1)
    /* A8FD8 800B87D8 01000224 */  addiu      $v0, $zero, 0x1
    /* A8FDC 800B87DC 000062A0 */  sb         $v0, 0x0($v1)
    /* A8FE0 800B87E0 0D80023C */  lui        $v0, %hi(D_800D3C20)
    /* A8FE4 800B87E4 203C428C */  lw         $v0, %lo(D_800D3C20)($v0)
    /* A8FE8 800B87E8 00000000 */  nop
    /* A8FEC 800B87EC 00004290 */  lbu        $v0, 0x0($v0)
    /* A8FF0 800B87F0 00000000 */  nop
    /* A8FF4 800B87F4 07004230 */  andi       $v0, $v0, 0x7
    /* A8FF8 800B87F8 16004010 */  beqz       $v0, .L800B8854
    /* A8FFC 800B87FC 01000424 */   addiu     $a0, $zero, 0x1
    /* A9000 800B8800 07000324 */  addiu      $v1, $zero, 0x7
  .L800B8804:
    /* A9004 800B8804 0D80023C */  lui        $v0, %hi(D_800D3C14)
    /* A9008 800B8808 143C428C */  lw         $v0, %lo(D_800D3C14)($v0)
    /* A900C 800B880C 00000000 */  nop
    /* A9010 800B8810 000044A0 */  sb         $a0, 0x0($v0)
    /* A9014 800B8814 0D80023C */  lui        $v0, %hi(D_800D3C20)
    /* A9018 800B8818 203C428C */  lw         $v0, %lo(D_800D3C20)($v0)
    /* A901C 800B881C 00000000 */  nop
    /* A9020 800B8820 000043A0 */  sb         $v1, 0x0($v0)
    /* A9024 800B8824 0D80023C */  lui        $v0, %hi(D_800D3C1C)
    /* A9028 800B8828 1C3C428C */  lw         $v0, %lo(D_800D3C1C)($v0)
    /* A902C 800B882C 00000000 */  nop
    /* A9030 800B8830 000043A0 */  sb         $v1, 0x0($v0)
    /* A9034 800B8834 0D80023C */  lui        $v0, %hi(D_800D3C20)
    /* A9038 800B8838 203C428C */  lw         $v0, %lo(D_800D3C20)($v0)
    /* A903C 800B883C 00000000 */  nop
    /* A9040 800B8840 00004290 */  lbu        $v0, 0x0($v0)
    /* A9044 800B8844 00000000 */  nop
    /* A9048 800B8848 07004230 */  andi       $v0, $v0, 0x7
    /* A904C 800B884C EDFF4014 */  bnez       $v0, .L800B8804
    /* A9050 800B8850 00000000 */   nop
  .L800B8854:
    /* A9054 800B8854 01000424 */  addiu      $a0, $zero, 0x1
    /* A9058 800B8858 21280000 */  addu       $a1, $zero, $zero
    /* A905C 800B885C 0D80033C */  lui        $v1, %hi(D_800D3C2C)
    /* A9060 800B8860 2C3C6324 */  addiu      $v1, $v1, %lo(D_800D3C2C)
    /* A9064 800B8864 020060A0 */  sb         $zero, 0x2($v1)
    /* A9068 800B8868 02006290 */  lbu        $v0, 0x2($v1)
    /* A906C 800B886C 21300000 */  addu       $a2, $zero, $zero
    /* A9070 800B8870 010062A0 */  sb         $v0, 0x1($v1)
    /* A9074 800B8874 0D80073C */  lui        $a3, %hi(D_800D3C14)
    /* A9078 800B8878 143CE78C */  lw         $a3, %lo(D_800D3C14)($a3)
    /* A907C 800B887C 02000224 */  addiu      $v0, $zero, 0x2
    /* A9080 800B8880 000062A0 */  sb         $v0, 0x0($v1)
    /* A9084 800B8884 0000E0A0 */  sb         $zero, 0x0($a3)
    /* A9088 800B8888 0D80023C */  lui        $v0, %hi(D_800D3C20)
    /* A908C 800B888C 203C428C */  lw         $v0, %lo(D_800D3C20)($v0)
    /* A9090 800B8890 21380000 */  addu       $a3, $zero, $zero
    /* A9094 800B8894 000040A0 */  sb         $zero, 0x0($v0)
    /* A9098 800B8898 0D80033C */  lui        $v1, %hi(D_800D3C24)
    /* A909C 800B889C 243C638C */  lw         $v1, %lo(D_800D3C24)($v1)
    /* A90A0 800B88A0 25130224 */  addiu      $v0, $zero, 0x1325
    /* A90A4 800B88A4 2FE0020C */  jal        func_800B80BC
    /* A90A8 800B88A8 000062AC */   sw        $v0, 0x0($v1)
    /* A90AC 800B88AC 0D80023C */  lui        $v0, %hi(D_800D395C)
    /* A90B0 800B88B0 5C39428C */  lw         $v0, %lo(D_800D395C)($v0)
    /* A90B4 800B88B4 00000000 */  nop
    /* A90B8 800B88B8 10004230 */  andi       $v0, $v0, 0x10
    /* A90BC 800B88BC 05004010 */  beqz       $v0, .L800B88D4
    /* A90C0 800B88C0 01000424 */   addiu     $a0, $zero, 0x1
    /* A90C4 800B88C4 21280000 */  addu       $a1, $zero, $zero
    /* A90C8 800B88C8 21300000 */  addu       $a2, $zero, $zero
    /* A90CC 800B88CC 2FE0020C */  jal        func_800B80BC
    /* A90D0 800B88D0 21380000 */   addu      $a3, $zero, $zero
  .L800B88D4:
    /* A90D4 800B88D4 0A000424 */  addiu      $a0, $zero, 0xA
    /* A90D8 800B88D8 21280000 */  addu       $a1, $zero, $zero
    /* A90DC 800B88DC 21300000 */  addu       $a2, $zero, $zero
    /* A90E0 800B88E0 2FE0020C */  jal        func_800B80BC
    /* A90E4 800B88E4 21380000 */   addu      $a3, $zero, $zero
    /* A90E8 800B88E8 11004014 */  bnez       $v0, .L800B8930
    /* A90EC 800B88EC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A90F0 800B88F0 0C000424 */  addiu      $a0, $zero, 0xC
    /* A90F4 800B88F4 21280000 */  addu       $a1, $zero, $zero
    /* A90F8 800B88F8 21300000 */  addu       $a2, $zero, $zero
    /* A90FC 800B88FC 2FE0020C */  jal        func_800B80BC
    /* A9100 800B8900 21380000 */   addu      $a3, $zero, $zero
    /* A9104 800B8904 09004014 */  bnez       $v0, .L800B892C
    /* A9108 800B8908 21200000 */   addu      $a0, $zero, $zero
    /* A910C 800B890C DDDE020C */  jal        func_800B7B74
    /* A9110 800B8910 21280000 */   addu      $a1, $zero, $zero
    /* A9114 800B8914 21204000 */  addu       $a0, $v0, $zero
    /* A9118 800B8918 02000324 */  addiu      $v1, $zero, 0x2
    /* A911C 800B891C 04008314 */  bne        $a0, $v1, .L800B8930
    /* A9120 800B8920 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A9124 800B8924 4CE20208 */  j          .L800B8930
    /* A9128 800B8928 21100000 */   addu      $v0, $zero, $zero
  .L800B892C:
    /* A912C 800B892C FFFF0224 */  addiu      $v0, $zero, -0x1
  .L800B8930:
    /* A9130 800B8930 1000BF8F */  lw         $ra, 0x10($sp)
    /* A9134 800B8934 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A9138 800B8938 0800E003 */  jr         $ra
    /* A913C 800B893C 00000000 */   nop
endlabel func_800B8760
