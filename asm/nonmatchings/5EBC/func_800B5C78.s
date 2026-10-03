/* Handwritten function */
nonmatching func_800B5C78, 0xDC

glabel func_800B5C78
    /* A6478 800B5C78 0E80013C */  lui        $at, %hi(D_800E71B8)
    /* A647C 800B5C7C B8713FAC */  sw         $ra, %lo(D_800E71B8)($at)
    /* A6480 800B5C80 F6B4020C */  jal        func_800AD3D8
    /* A6484 800B5C84 00000000 */   nop
    /* A6488 800B5C88 56000924 */  addiu      $t1, $zero, 0x56
    /* A648C 800B5C8C B0000A24 */  addiu      $t2, $zero, 0xB0
    /* A6490 800B5C90 09F84001 */  jalr       $t2
    /* A6494 800B5C94 00000000 */   nop
    /* A6498 800B5C98 1800428C */  lw         $v0, 0x18($v0)
    /* A649C 800B5C9C 00000000 */  nop
    /* A64A0 800B5CA0 28004224 */  addiu      $v0, $v0, 0x28
    /* A64A4 800B5CA4 21784000 */  addu       $t7, $v0, $zero
    /* A64A8 800B5CA8 0B800A3C */  lui        $t2, %hi(D_800B5D24)
    /* A64AC 800B5CAC 245D4A25 */  addiu      $t2, $t2, %lo(D_800B5D24)
    /* A64B0 800B5CB0 0B80093C */  lui        $t1, %hi(D_800B5D3C)
    /* A64B4 800B5CB4 3C5D2925 */  addiu      $t1, $t1, %lo(D_800B5D3C)
  .L800B5CB8:
    /* A64B8 800B5CB8 0000438D */  lw         $v1, 0x0($t2)
    /* A64BC 800B5CBC 00004B8C */  lw         $t3, 0x0($v0)
    /* A64C0 800B5CC0 04004A25 */  addiu      $t2, $t2, 0x4
    /* A64C4 800B5CC4 0E006B14 */  bne        $v1, $t3, .L800B5D00
    /* A64C8 800B5CC8 04004224 */   addiu     $v0, $v0, 0x4
    /* A64CC 800B5CCC FAFF4915 */  bne        $t2, $t1, .L800B5CB8
    /* A64D0 800B5CD0 00000000 */   nop
    /* A64D4 800B5CD4 2110E001 */  addu       $v0, $t7, $zero
    /* A64D8 800B5CD8 0B800A3C */  lui        $t2, %hi(D_800B5D3C)
    /* A64DC 800B5CDC 3C5D4A25 */  addiu      $t2, $t2, %lo(D_800B5D3C)
    /* A64E0 800B5CE0 0B80093C */  lui        $t1, %hi(D_800B5D54)
    /* A64E4 800B5CE4 545D2925 */  addiu      $t1, $t1, %lo(D_800B5D54)
  .L800B5CE8:
    /* A64E8 800B5CE8 0000438D */  lw         $v1, 0x0($t2)
    /* A64EC 800B5CEC 00000000 */  nop
    /* A64F0 800B5CF0 000043AC */  sw         $v1, 0x0($v0)
    /* A64F4 800B5CF4 04004A25 */  addiu      $t2, $t2, 0x4
    /* A64F8 800B5CF8 FBFF4915 */  bne        $t2, $t1, .L800B5CE8
    /* A64FC 800B5CFC 04004224 */   addiu     $v0, $v0, 0x4
  .L800B5D00:
    /* A6500 800B5D00 2AB5020C */  jal        func_800AD4A8
    /* A6504 800B5D04 00000000 */   nop
    /* A6508 800B5D08 9AB3020C */  jal        func_800ACE68
    /* A650C 800B5D0C 00000000 */   nop
    /* A6510 800B5D10 0E801F3C */  lui        $ra, %hi(D_800E71B8)
    /* A6514 800B5D14 B871FF8F */  lw         $ra, %lo(D_800E71B8)($ra)
    /* A6518 800B5D18 00000000 */  nop
    /* A651C 800B5D1C 0800E003 */  jr         $ra
    /* A6520 800B5D20 00000000 */   nop
  alabel D_800B5D24
    /* A6524 800B5D24 040041AF */  sw         $at, 0x4($k0) /* handwritten instruction */
    /* A6528 800B5D28 080042AF */  sw         $v0, 0x8($k0) /* handwritten instruction */
    /* A652C 800B5D2C 0C0043AF */  sw         $v1, 0xC($k0) /* handwritten instruction */
    /* A6530 800B5D30 7C005FAF */  sw         $ra, 0x7C($k0) /* handwritten instruction */
    /* A6534 800B5D34 00700340 */  mfc0       $v1, $14 /* handwritten instruction */
    /* A6538 800B5D38 00000000 */  nop
  alabel D_800B5D3C
    /* A653C 800B5D3C 040041AF */  sw         $at, 0x4($k0) /* handwritten instruction */
    /* A6540 800B5D40 080042AF */  sw         $v0, 0x8($k0) /* handwritten instruction */
    /* A6544 800B5D44 00680240 */  mfc0       $v0, $13 /* handwritten instruction */
    /* A6548 800B5D48 0C0043AF */  sw         $v1, 0xC($k0) /* handwritten instruction */
    /* A654C 800B5D4C 00700340 */  mfc0       $v1, $14 /* handwritten instruction */
    /* A6550 800B5D50 7C005FAF */  sw         $ra, 0x7C($k0) /* handwritten instruction */
endlabel func_800B5C78
  alabel D_800B5D54
    /* A6554 800B5D54 00000000 */  nop
