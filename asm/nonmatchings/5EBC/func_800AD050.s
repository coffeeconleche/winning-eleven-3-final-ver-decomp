nonmatching func_800AD050, 0x34

glabel func_800AD050
    /* 9D850 800AD050 FFFF8330 */  andi       $v1, $a0, 0xFFFF
    /* 9D854 800AD054 03006228 */  slti       $v0, $v1, 0x3
    /* 9D858 800AD058 07004010 */  beqz       $v0, .L800AD078
    /* 9D85C 800AD05C 01000224 */   addiu     $v0, $zero, 0x1
    /* 9D860 800AD060 0D80043C */  lui        $a0, %hi(D_800CEA48)
    /* 9D864 800AD064 48EA848C */  lw         $a0, %lo(D_800CEA48)($a0)
    /* 9D868 800AD068 00190300 */  sll        $v1, $v1, 4
    /* 9D86C 800AD06C 21186400 */  addu       $v1, $v1, $a0
    /* 9D870 800AD070 1FB40208 */  j          .L800AD07C
    /* 9D874 800AD074 000060A4 */   sh        $zero, 0x0($v1)
  .L800AD078:
    /* 9D878 800AD078 21100000 */  addu       $v0, $zero, $zero
  .L800AD07C:
    /* 9D87C 800AD07C 0800E003 */  jr         $ra
    /* 9D880 800AD080 00000000 */   nop
endlabel func_800AD050
    /* 9D884 800AD084 00000000 */  nop
