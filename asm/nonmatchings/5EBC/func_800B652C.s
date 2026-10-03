nonmatching func_800B652C, 0x1C

glabel func_800B652C
    /* A6D2C 800B652C 04008018 */  blez       $a0, .L800B6540
    /* A6D30 800B6530 21100000 */   addu      $v0, $zero, $zero
  .L800B6534:
    /* A6D34 800B6534 43200400 */  sra        $a0, $a0, 1
    /* A6D38 800B6538 FEFF801C */  bgtz       $a0, .L800B6534
    /* A6D3C 800B653C 01004224 */   addiu     $v0, $v0, 0x1
  .L800B6540:
    /* A6D40 800B6540 0800E003 */  jr         $ra
    /* A6D44 800B6544 00000000 */   nop
endlabel func_800B652C
