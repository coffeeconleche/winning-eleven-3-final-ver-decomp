nonmatching func_800C5C54, 0x34

glabel func_800C5C54
    /* B6454 800C5C54 80DF0234 */  ori        $v0, $zero, 0xDF80
    /* B6458 800C5C58 0C800A3C */  lui        $t2, %hi(func_800C5AA8 + 0x10)
    /* B645C 800C5C5C B85A4A25 */  addiu      $t2, $t2, %lo(func_800C5AA8 + 0x10)
    /* B6460 800C5C60 0C80093C */  lui        $t1, %hi(D_800C5B28)
    /* B6464 800C5C64 285B2925 */  addiu      $t1, $t1, %lo(D_800C5B28)
  .L800C5C68:
    /* B6468 800C5C68 0000438D */  lw         $v1, 0x0($t2)
    /* B646C 800C5C6C 00000000 */  nop
    /* B6470 800C5C70 000043AC */  sw         $v1, 0x0($v0)
    /* B6474 800C5C74 04004A25 */  addiu      $t2, $t2, 0x4
    /* B6478 800C5C78 FBFF4915 */  bne        $t2, $t1, .L800C5C68
    /* B647C 800C5C7C 04004224 */   addiu     $v0, $v0, 0x4
    /* B6480 800C5C80 0800E003 */  jr         $ra
    /* B6484 800C5C84 00000000 */   nop
endlabel func_800C5C54
