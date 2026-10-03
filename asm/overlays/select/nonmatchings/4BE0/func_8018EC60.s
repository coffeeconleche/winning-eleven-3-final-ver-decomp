nonmatching func_8018EC60, 0x50

glabel func_8018EC60
    /* 5CE8 8018EC60 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5CEC 8018EC64 FF008430 */  andi       $a0, $a0, 0xFF
    /* 5CF0 8018EC68 40100400 */  sll        $v0, $a0, 1
    /* 5CF4 8018EC6C 21104400 */  addu       $v0, $v0, $a0
    /* 5CF8 8018EC70 C0100200 */  sll        $v0, $v0, 3
    /* 5CFC 8018EC74 1E80033C */  lui        $v1, %hi(D_801D8F90)
    /* 5D00 8018EC78 908F6324 */  addiu      $v1, $v1, %lo(D_801D8F90)
    /* 5D04 8018EC7C 21104300 */  addu       $v0, $v0, $v1
    /* 5D08 8018EC80 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5D0C 8018EC84 0B004390 */  lbu        $v1, 0xB($v0)
    /* 5D10 8018EC88 140045AC */  sw         $a1, 0x14($v0)
    /* 5D14 8018EC8C 03000224 */  addiu      $v0, $zero, 0x3
    /* 5D18 8018EC90 03006214 */  bne        $v1, $v0, .L8018ECA0
    /* 5D1C 8018EC94 00000000 */   nop
    /* 5D20 8018EC98 E451060C */  jal        func_80194790
    /* 5D24 8018EC9C 2120A000 */   addu      $a0, $a1, $zero
  .L8018ECA0:
    /* 5D28 8018ECA0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5D2C 8018ECA4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 5D30 8018ECA8 0800E003 */  jr         $ra
    /* 5D34 8018ECAC 00000000 */   nop
endlabel func_8018EC60
