nonmatching func_800C5BE4, 0x70

glabel func_800C5BE4
    /* B63E4 800C5BE4 0E80013C */  lui        $at, %hi(D_800E7328)
    /* B63E8 800C5BE8 28733FAC */  sw         $ra, %lo(D_800E7328)($at)
    /* B63EC 800C5BEC F6B4020C */  jal        func_800AD3D8
    /* B63F0 800C5BF0 00000000 */   nop
    /* B63F4 800C5BF4 57000924 */  addiu      $t1, $zero, 0x57
    /* B63F8 800C5BF8 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* B63FC 800C5BFC 09F84001 */  jalr       $t2
    /* B6400 800C5C00 00000000 */   nop
    /* B6404 800C5C04 6C01428C */  lw         $v0, 0x16C($v0)
    /* B6408 800C5C08 00000000 */  nop
    /* B640C 800C5C0C C809438C */  lw         $v1, 0x9C8($v0)
    /* B6410 800C5C10 0C800A3C */  lui        $t2, %hi(D_800C5B3C)
    /* B6414 800C5C14 3C5B4A25 */  addiu      $t2, $t2, %lo(D_800C5B3C)
    /* B6418 800C5C18 0C80093C */  lui        $t1, %hi(func_800C5B50)
    /* B641C 800C5C1C 505B2925 */  addiu      $t1, $t1, %lo(func_800C5B50)
  .L800C5C20:
    /* B6420 800C5C20 0000488D */  lw         $t0, 0x0($t2)
    /* B6424 800C5C24 00000000 */  nop
    /* B6428 800C5C28 C80948AC */  sw         $t0, 0x9C8($v0)
    /* B642C 800C5C2C 04004A25 */  addiu      $t2, $t2, 0x4
    /* B6430 800C5C30 FBFF4915 */  bne        $t2, $t1, .L800C5C20
    /* B6434 800C5C34 04004224 */   addiu     $v0, $v0, 0x4
    /* B6438 800C5C38 2AB5020C */  jal        func_800AD4A8
    /* B643C 800C5C3C 00000000 */   nop
    /* B6440 800C5C40 0E801F3C */  lui        $ra, %hi(D_800E7328)
    /* B6444 800C5C44 2873FF8F */  lw         $ra, %lo(D_800E7328)($ra)
    /* B6448 800C5C48 00000000 */  nop
    /* B644C 800C5C4C 0800E003 */  jr         $ra
    /* B6450 800C5C50 00000000 */   nop
endlabel func_800C5BE4
