/* Handwritten function */
nonmatching func_800B5BD0, 0x80

glabel func_800B5BD0
    /* A63D0 800B5BD0 0D80013C */  lui        $at, %hi(D_800D3084)
    /* A63D4 800B5BD4 84303FAC */  sw         $ra, %lo(D_800D3084)($at)
    /* A63D8 800B5BD8 1ED7020C */  jal        func_800B5C78
    /* A63DC 800B5BDC 00000000 */   nop
    /* A63E0 800B5BE0 0D801F3C */  lui        $ra, %hi(D_800D3084)
    /* A63E4 800B5BE4 8430FF8F */  lw         $ra, %lo(D_800D3084)($ra)
    /* A63E8 800B5BE8 00000000 */  nop
    /* A63EC 800B5BEC 00600240 */  mfc0       $v0, $12 /* handwritten instruction */
    /* A63F0 800B5BF0 0040033C */  lui        $v1, (0x40000000 >> 16)
    /* A63F4 800B5BF4 25104300 */  or         $v0, $v0, $v1
    /* A63F8 800B5BF8 00608240 */  mtc0       $v0, $12 /* handwritten instruction */
    /* A63FC 800B5BFC 00000000 */  nop
    /* A6400 800B5C00 55010824 */  addiu      $t0, $zero, 0x155
    /* A6404 800B5C04 00E8C848 */  ctc2       $t0, $29 /* handwritten instruction */
    /* A6408 800B5C08 00000000 */  nop
    /* A640C 800B5C0C 00010824 */  addiu      $t0, $zero, 0x100
    /* A6410 800B5C10 00F0C848 */  ctc2       $t0, $30 /* handwritten instruction */
    /* A6414 800B5C14 00000000 */  nop
    /* A6418 800B5C18 E8030824 */  addiu      $t0, $zero, 0x3E8
    /* A641C 800B5C1C 00D0C848 */  ctc2       $t0, $26 /* handwritten instruction */
    /* A6420 800B5C20 00000000 */  nop
    /* A6424 800B5C24 9EEF0824 */  addiu      $t0, $zero, -0x1062
    /* A6428 800B5C28 00D8C848 */  ctc2       $t0, $27 /* handwritten instruction */
    /* A642C 800B5C2C 00000000 */  nop
    /* A6430 800B5C30 4001083C */  lui        $t0, (0x1400000 >> 16)
    /* A6434 800B5C34 00E0C848 */  ctc2       $t0, $28 /* handwritten instruction */
    /* A6438 800B5C38 00000000 */  nop
    /* A643C 800B5C3C 00C0C048 */  ctc2       $zero, $24 /* handwritten instruction */
    /* A6440 800B5C40 00C8C048 */  ctc2       $zero, $25 /* handwritten instruction */
    /* A6444 800B5C44 00000000 */  nop
    /* A6448 800B5C48 0800E003 */  jr         $ra
    /* A644C 800B5C4C 00000000 */   nop
endlabel func_800B5BD0
    /* A6450 800B5C50 00000000 */  nop
    /* A6454 800B5C54 00000000 */  nop
