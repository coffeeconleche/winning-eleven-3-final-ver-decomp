/* Handwritten function */
nonmatching func_800BADD4, 0x2C

glabel func_800BADD4
    /* AB5D4 800BADD4 0600A010 */  beqz       $a1, .L800BADF0
    /* AB5D8 800BADD8 FFFFA224 */   addiu     $v0, $a1, -0x1
    /* AB5DC 800BADDC FFFF0324 */  addiu      $v1, $zero, -0x1
  .L800BADE0:
    /* AB5E0 800BADE0 000080AC */  sw         $zero, 0x0($a0)
    /* AB5E4 800BADE4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* AB5E8 800BADE8 FDFF4314 */  bne        $v0, $v1, .L800BADE0
    /* AB5EC 800BADEC 04008424 */   addiu     $a0, $a0, 0x4
  .L800BADF0:
    /* AB5F0 800BADF0 0800E003 */  jr         $ra
    /* AB5F4 800BADF4 00000000 */   nop
    /* AB5F8 800BADF8 50730019 */  blez       $t0, D_800D7B3C
    /* AB5FC 800BADFC B35B4100 */   tltu      $v0, $at, 366 /* handwritten instruction */
endlabel func_800BADD4
