nonmatching func_800C0BF8, 0x60

glabel func_800C0BF8
    /* B13F8 800C0BF8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B13FC 800C0BFC 1000BFAF */  sw         $ra, 0x10($sp)
    /* B1400 800C0C00 2138C000 */  addu       $a3, $a2, $zero
    /* B1404 800C0C04 002C0500 */  sll        $a1, $a1, 16
    /* B1408 800C0C08 032C0500 */  sra        $a1, $a1, 16
    /* B140C 800C0C0C 1603030C */  jal        func_800C0C58
    /* B1410 800C0C10 01000624 */   addiu     $a2, $zero, 0x1
    /* B1414 800C0C14 00140200 */  sll        $v0, $v0, 16
    /* B1418 800C0C18 1000BF8F */  lw         $ra, 0x10($sp)
    /* B141C 800C0C1C 03140200 */  sra        $v0, $v0, 16
    /* B1420 800C0C20 0800E003 */  jr         $ra
    /* B1424 800C0C24 1800BD27 */   addiu     $sp, $sp, 0x18
    /* B1428 800C0C28 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B142C 800C0C2C 1000BFAF */  sw         $ra, 0x10($sp)
    /* B1430 800C0C30 2138C000 */  addu       $a3, $a2, $zero
    /* B1434 800C0C34 002C0500 */  sll        $a1, $a1, 16
    /* B1438 800C0C38 032C0500 */  sra        $a1, $a1, 16
    /* B143C 800C0C3C 1603030C */  jal        func_800C0C58
    /* B1440 800C0C40 01000624 */   addiu     $a2, $zero, 0x1
    /* B1444 800C0C44 00140200 */  sll        $v0, $v0, 16
    /* B1448 800C0C48 1000BF8F */  lw         $ra, 0x10($sp)
    /* B144C 800C0C4C 03140200 */  sra        $v0, $v0, 16
    /* B1450 800C0C50 0800E003 */  jr         $ra
    /* B1454 800C0C54 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800C0BF8
