nonmatching func_800C0B78, 0x10

glabel func_800C0B78
    /* B1378 800C0B78 01000224 */  addiu      $v0, $zero, 0x1
    /* B137C 800C0B7C 0F80013C */  lui        $at, %hi(D_800F0F70)
    /* B1380 800C0B80 0800E003 */  jr         $ra
    /* B1384 800C0B84 700F22A4 */   sh        $v0, %lo(D_800F0F70)($at)
endlabel func_800C0B78
