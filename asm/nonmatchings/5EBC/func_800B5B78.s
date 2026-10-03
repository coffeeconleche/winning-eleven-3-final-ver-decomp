nonmatching func_800B5B78, 0x4C

glabel func_800B5B78
    /* A6378 800B5B78 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A637C 800B5B7C 1000BFAF */  sw         $ra, 0x10($sp)
    /* A6380 800B5B80 F4D6020C */  jal        func_800B5BD0
    /* A6384 800B5B84 00000000 */   nop
    /* A6388 800B5B88 21200000 */  addu       $a0, $zero, $zero
    /* A638C 800B5B8C 21280000 */  addu       $a1, $zero, $zero
    /* A6390 800B5B90 16D7020C */  jal        func_800B5C58
    /* A6394 800B5B94 21300000 */   addu      $a2, $zero, $zero
    /* A6398 800B5B98 21200000 */  addu       $a0, $zero, $zero
    /* A639C 800B5B9C EAD1020C */  jal        func_800B47A8
    /* A63A0 800B5BA0 21280000 */   addu      $a1, $zero, $zero
    /* A63A4 800B5BA4 0F80013C */  lui        $at, %hi(D_800F1072)
    /* A63A8 800B5BA8 721020A4 */  sh         $zero, %lo(D_800F1072)($at)
    /* A63AC 800B5BAC 0F80013C */  lui        $at, %hi(D_800F1070)
    /* A63B0 800B5BB0 701020A4 */  sh         $zero, %lo(D_800F1070)($at)
    /* A63B4 800B5BB4 1000BF8F */  lw         $ra, 0x10($sp)
    /* A63B8 800B5BB8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A63BC 800B5BBC 0800E003 */  jr         $ra
    /* A63C0 800B5BC0 00000000 */   nop
endlabel func_800B5B78
    /* A63C4 800B5BC4 00000000 */  nop
