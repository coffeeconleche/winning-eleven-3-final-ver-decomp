/* Handwritten function */
nonmatching func_800B504C, 0xA4

glabel func_800B504C
    /* A584C 800B504C 0D800E3C */  lui        $t6, %hi(D_800D2D80)
    /* A5850 800B5050 802DCE8D */  lw         $t6, %lo(D_800D2D80)($t6)
    /* A5854 800B5054 00000000 */  nop
    /* A5858 800B5058 0B00C01D */  bgtz       $t6, .L800B5088
    /* A585C 800B505C 00000000 */   nop
    /* A5860 800B5060 0D80013C */  lui        $at, %hi(D_800D2D74)
    /* A5864 800B5064 742D3FAC */  sw         $ra, %lo(D_800D2D74)($at)
    /* A5868 800B5068 0D80043C */  lui        $a0, %hi(D_800D3035)
    /* A586C 800B506C A6B5020C */  jal        func_800AD698
    /* A5870 800B5070 35308424 */   addiu     $a0, $a0, %lo(D_800D3035)
    /* A5874 800B5074 0D801F3C */  lui        $ra, %hi(D_800D2D74)
    /* A5878 800B5078 742DFF8F */  lw         $ra, %lo(D_800D2D74)($ra)
    /* A587C 800B507C 00000000 */  nop
    /* A5880 800B5080 0800E003 */  jr         $ra
    /* A5884 800B5084 00000000 */   nop
  .L800B5088:
    /* A5888 800B5088 E0FFCE21 */  addi       $t6, $t6, -0x20 /* handwritten instruction */
    /* A588C 800B508C 0D80013C */  lui        $at, %hi(D_800D2D80)
    /* A5890 800B5090 802D2EAC */  sw         $t6, %lo(D_800D2D80)($at)
    /* A5894 800B5094 0D800F3C */  lui        $t7, %hi(D_800D2D84)
    /* A5898 800B5098 842DEF25 */  addiu      $t7, $t7, %lo(D_800D2D84)
    /* A589C 800B509C 2178EE01 */  addu       $t7, $t7, $t6
    /* A58A0 800B50A0 0000E88D */  lw         $t0, 0x0($t7)
    /* A58A4 800B50A4 0400E98D */  lw         $t1, 0x4($t7)
    /* A58A8 800B50A8 0000C848 */  ctc2       $t0, $0 /* handwritten instruction */
    /* A58AC 800B50AC 0008C948 */  ctc2       $t1, $1 /* handwritten instruction */
    /* A58B0 800B50B0 0800E88D */  lw         $t0, 0x8($t7)
    /* A58B4 800B50B4 0C00E98D */  lw         $t1, 0xC($t7)
    /* A58B8 800B50B8 0010C848 */  ctc2       $t0, $2 /* handwritten instruction */
    /* A58BC 800B50BC 0018C948 */  ctc2       $t1, $3 /* handwritten instruction */
    /* A58C0 800B50C0 1000E88D */  lw         $t0, 0x10($t7)
    /* A58C4 800B50C4 00000000 */  nop
    /* A58C8 800B50C8 0020C848 */  ctc2       $t0, $4 /* handwritten instruction */
    /* A58CC 800B50CC 00000000 */  nop
    /* A58D0 800B50D0 1400E88D */  lw         $t0, 0x14($t7)
    /* A58D4 800B50D4 1800E98D */  lw         $t1, 0x18($t7)
    /* A58D8 800B50D8 1C00EA8D */  lw         $t2, 0x1C($t7)
    /* A58DC 800B50DC 0028C848 */  ctc2       $t0, $5 /* handwritten instruction */
    /* A58E0 800B50E0 0030C948 */  ctc2       $t1, $6 /* handwritten instruction */
    /* A58E4 800B50E4 0038CA48 */  ctc2       $t2, $7 /* handwritten instruction */
    /* A58E8 800B50E8 0800E003 */  jr         $ra
    /* A58EC 800B50EC 00000000 */   nop
endlabel func_800B504C
    /* A58F0 800B50F0 00000000 */  nop
    /* A58F4 800B50F4 00000000 */  nop
