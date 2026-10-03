nonmatching func_800BB1F0, 0x24

glabel func_800BB1F0
    /* AB9F0 800BB1F0 0600A010 */  beqz       $a1, .L800BB20C
    /* AB9F4 800BB1F4 FFFFA224 */   addiu     $v0, $a1, -0x1
    /* AB9F8 800BB1F8 FFFF0324 */  addiu      $v1, $zero, -0x1
  .L800BB1FC:
    /* AB9FC 800BB1FC 000080AC */  sw         $zero, 0x0($a0)
    /* ABA00 800BB200 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* ABA04 800BB204 FDFF4314 */  bne        $v0, $v1, .L800BB1FC
    /* ABA08 800BB208 04008424 */   addiu     $a0, $a0, 0x4
  .L800BB20C:
    /* ABA0C 800BB20C 0800E003 */  jr         $ra
    /* ABA10 800BB210 00000000 */   nop
endlabel func_800BB1F0
    /* ABA14 800BB214 00000000 */  nop
