nonmatching func_800B10D8, 0x24

glabel func_800B10D8
    /* A18D8 800B10D8 0600C010 */  beqz       $a2, .L800B10F4
    /* A18DC 800B10DC FFFFC224 */   addiu     $v0, $a2, -0x1
    /* A18E0 800B10E0 FFFF0324 */  addiu      $v1, $zero, -0x1
  .L800B10E4:
    /* A18E4 800B10E4 000085A0 */  sb         $a1, 0x0($a0)
    /* A18E8 800B10E8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A18EC 800B10EC FDFF4314 */  bne        $v0, $v1, .L800B10E4
    /* A18F0 800B10F0 01008424 */   addiu     $a0, $a0, 0x1
  .L800B10F4:
    /* A18F4 800B10F4 0800E003 */  jr         $ra
    /* A18F8 800B10F8 00000000 */   nop
endlabel func_800B10D8
    /* A18FC 800B10FC 00000000 */  nop
    /* A1900 800B1100 00000000 */  nop
    /* A1904 800B1104 00000000 */  nop
