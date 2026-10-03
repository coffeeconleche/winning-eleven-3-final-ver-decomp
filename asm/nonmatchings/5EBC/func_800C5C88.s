nonmatching func_800C5C88, 0x70

glabel func_800C5C88
    /* B6488 800C5C88 0E80013C */  lui        $at, %hi(D_800E7338)
    /* B648C 800C5C8C 38733FAC */  sw         $ra, %lo(D_800E7338)($at)
    /* B6490 800C5C90 F6B4020C */  jal        func_800AD3D8
    /* B6494 800C5C94 00000000 */   nop
    /* B6498 800C5C98 56000924 */  addiu      $t1, $zero, 0x56
    /* B649C 800C5C9C B0000A24 */  addiu      $t2, $zero, 0xB0
    /* B64A0 800C5CA0 09F84001 */  jalr       $t2
    /* B64A4 800C5CA4 00000000 */   nop
    /* B64A8 800C5CA8 1800428C */  lw         $v0, 0x18($v0)
    /* B64AC 800C5CAC 0C800A3C */  lui        $t2, %hi(D_800C5CF8)
    /* B64B0 800C5CB0 F85C4A25 */  addiu      $t2, $t2, %lo(D_800C5CF8)
    /* B64B4 800C5CB4 0C80093C */  lui        $t1, %hi(D_800C5D04)
    /* B64B8 800C5CB8 045D2925 */  addiu      $t1, $t1, %lo(D_800C5D04)
  .L800C5CBC:
    /* B64BC 800C5CBC 0000438D */  lw         $v1, 0x0($t2)
    /* B64C0 800C5CC0 00000000 */  nop
    /* B64C4 800C5CC4 700043AC */  sw         $v1, 0x70($v0)
    /* B64C8 800C5CC8 04004A25 */  addiu      $t2, $t2, 0x4
    /* B64CC 800C5CCC FBFF4915 */  bne        $t2, $t1, .L800C5CBC
    /* B64D0 800C5CD0 04004224 */   addiu     $v0, $v0, 0x4
    /* B64D4 800C5CD4 2AB5020C */  jal        func_800AD4A8
    /* B64D8 800C5CD8 00000000 */   nop
    /* B64DC 800C5CDC 9AB3020C */  jal        func_800ACE68
    /* B64E0 800C5CE0 00000000 */   nop
    /* B64E4 800C5CE4 0E801F3C */  lui        $ra, %hi(D_800E7338)
    /* B64E8 800C5CE8 3873FF8F */  lw         $ra, %lo(D_800E7338)($ra)
    /* B64EC 800C5CEC 00000000 */  nop
    /* B64F0 800C5CF0 0800E003 */  jr         $ra
    /* B64F4 800C5CF4 00000000 */   nop
endlabel func_800C5C88
  alabel D_800C5CF8
    /* B64F8 800C5CF8 00000000 */  nop
    /* B64FC 800C5CFC 00000000 */  nop
    /* B6500 800C5D00 00000000 */  nop
  alabel D_800C5D04
    /* B6504 800C5D04 00000000 */  nop
