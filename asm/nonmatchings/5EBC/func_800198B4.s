nonmatching func_800198B4, 0x34

glabel func_800198B4
    /* A0B4 800198B4 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* A0B8 800198B8 0800A010 */  beqz       $a1, .L800198DC
    /* A0BC 800198BC FFFFA324 */   addiu     $v1, $a1, -0x1
    /* A0C0 800198C0 FFFF0524 */  addiu      $a1, $zero, -0x1
  .L800198C4:
    /* A0C4 800198C4 00008294 */  lhu        $v0, 0x0($a0)
    /* A0C8 800198C8 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* A0CC 800198CC 00804234 */  ori        $v0, $v0, 0x8000
    /* A0D0 800198D0 000082A4 */  sh         $v0, 0x0($a0)
    /* A0D4 800198D4 FBFF6514 */  bne        $v1, $a1, .L800198C4
    /* A0D8 800198D8 02008424 */   addiu     $a0, $a0, 0x2
  .L800198DC:
    /* A0DC 800198DC 0800BD27 */  addiu      $sp, $sp, 0x8
    /* A0E0 800198E0 0800E003 */  jr         $ra
    /* A0E4 800198E4 00000000 */   nop
endlabel func_800198B4
