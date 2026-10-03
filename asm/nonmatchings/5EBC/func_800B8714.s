nonmatching func_800B8714, 0x4C

glabel func_800B8714
    /* A8F14 800B8714 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A8F18 800B8718 1000BFAF */  sw         $ra, 0x10($sp)
    /* A8F1C 800B871C 0D80013C */  lui        $at, %hi(D_800D3950)
    /* A8F20 800B8720 503920AC */  sw         $zero, %lo(D_800D3950)($at)
    /* A8F24 800B8724 0D80013C */  lui        $at, %hi(D_800D394C)
    /* A8F28 800B8728 4C3920AC */  sw         $zero, %lo(D_800D394C)($at)
    /* A8F2C 800B872C 0D80013C */  lui        $at, %hi(D_800D3960)
    /* A8F30 800B8730 603920AC */  sw         $zero, %lo(D_800D3960)($at)
    /* A8F34 800B8734 0D80013C */  lui        $at, %hi(D_800D395C)
    /* A8F38 800B8738 CEE9020C */  jal        func_800BA738
    /* A8F3C 800B873C 5C3920AC */   sw        $zero, %lo(D_800D395C)($at)
    /* A8F40 800B8740 0C80053C */  lui        $a1, %hi(D_800B8CA0)
    /* A8F44 800B8744 A08CA524 */  addiu      $a1, $a1, %lo(D_800B8CA0)
    /* A8F48 800B8748 DAE9020C */  jal        func_800BA768
    /* A8F4C 800B874C 02000424 */   addiu     $a0, $zero, 0x2
    /* A8F50 800B8750 1000BF8F */  lw         $ra, 0x10($sp)
    /* A8F54 800B8754 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A8F58 800B8758 0800E003 */  jr         $ra
    /* A8F5C 800B875C 00000000 */   nop
endlabel func_800B8714
