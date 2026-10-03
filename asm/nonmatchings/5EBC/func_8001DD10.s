nonmatching func_8001DD10, 0x40

glabel func_8001DD10
    /* E510 8001DD10 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* E514 8001DD14 1000BFAF */  sw         $ra, 0x10($sp)
    /* E518 8001DD18 801F013C */  lui        $at, (0x1F8002A1 >> 16)
    /* E51C 8001DD1C A10220A0 */  sb         $zero, (0x1F8002A1 & 0xFFFF)($at)
    /* E520 8001DD20 801F013C */  lui        $at, (0x1F8002A0 >> 16)
    /* E524 8001DD24 A00220A0 */  sb         $zero, (0x1F8002A0 & 0xFFFF)($at)
    /* E528 8001DD28 801F013C */  lui        $at, (0x1F8001EC >> 16)
    /* E52C 8001DD2C EC0120A0 */  sb         $zero, (0x1F8001EC & 0xFFFF)($at)
    /* E530 8001DD30 801F013C */  lui        $at, (0x1F8002C2 >> 16)
    /* E534 8001DD34 C20220A0 */  sb         $zero, (0x1F8002C2 & 0xFFFF)($at)
    /* E538 8001DD38 8F5C000C */  jal        func_8001723C
    /* E53C 8001DD3C 21200000 */   addu      $a0, $zero, $zero
    /* E540 8001DD40 1000BF8F */  lw         $ra, 0x10($sp)
    /* E544 8001DD44 1800BD27 */  addiu      $sp, $sp, 0x18
    /* E548 8001DD48 0800E003 */  jr         $ra
    /* E54C 8001DD4C 00000000 */   nop
endlabel func_8001DD10
