nonmatching func_800AD01C, 0x34

glabel func_800AD01C
    /* 9D81C 800AD01C FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* 9D820 800AD020 80200400 */  sll        $a0, $a0, 2
    /* 9D824 800AD024 0D80053C */  lui        $a1, %hi(D_800CEA44)
    /* 9D828 800AD028 44EAA58C */  lw         $a1, %lo(D_800CEA44)($a1)
    /* 9D82C 800AD02C 0D80023C */  lui        $v0, %hi(D_800CEA4C)
    /* 9D830 800AD030 21104400 */  addu       $v0, $v0, $a0
    /* 9D834 800AD034 4CEA428C */  lw         $v0, %lo(D_800CEA4C)($v0)
    /* 9D838 800AD038 0400A38C */  lw         $v1, 0x4($a1)
    /* 9D83C 800AD03C 27100200 */  nor        $v0, $zero, $v0
    /* 9D840 800AD040 24186200 */  and        $v1, $v1, $v0
    /* 9D844 800AD044 01000224 */  addiu      $v0, $zero, 0x1
    /* 9D848 800AD048 0800E003 */  jr         $ra
    /* 9D84C 800AD04C 0400A3AC */   sw        $v1, 0x4($a1)
endlabel func_800AD01C
