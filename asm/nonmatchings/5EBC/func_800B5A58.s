nonmatching func_800B5A58, 0x58

glabel func_800B5A58
    /* A6258 800B5A58 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A625C 800B5A5C FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* A6260 800B5A60 FFFFA530 */  andi       $a1, $a1, 0xFFFF
    /* A6264 800B5A64 1000BFAF */  sw         $ra, 0x10($sp)
    /* A6268 800B5A68 0800C4AC */  sw         $a0, 0x8($a2)
    /* A626C 800B5A6C 0000C48C */  lw         $a0, 0x0($a2)
    /* A6270 800B5A70 0400C28C */  lw         $v0, 0x4($a2)
    /* A6274 800B5A74 04000324 */  addiu      $v1, $zero, 0x4
    /* A6278 800B5A78 0C00C5AC */  sw         $a1, 0xC($a2)
    /* A627C 800B5A7C 0000C58C */  lw         $a1, 0x0($a2)
    /* A6280 800B5A80 04188300 */  sllv       $v1, $v1, $a0
    /* A6284 800B5A84 21104300 */  addu       $v0, $v0, $v1
    /* A6288 800B5A88 FCFF4224 */  addiu      $v0, $v0, -0x4
    /* A628C 800B5A8C 1000C2AC */  sw         $v0, 0x10($a2)
    /* A6290 800B5A90 01000224 */  addiu      $v0, $zero, 0x1
    /* A6294 800B5A94 0400C48C */  lw         $a0, 0x4($a2)
    /* A6298 800B5A98 88BA020C */  jal        func_800AEA20
    /* A629C 800B5A9C 0428A200 */   sllv      $a1, $v0, $a1
    /* A62A0 800B5AA0 1000BF8F */  lw         $ra, 0x10($sp)
    /* A62A4 800B5AA4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A62A8 800B5AA8 0800E003 */  jr         $ra
    /* A62AC 800B5AAC 00000000 */   nop
endlabel func_800B5A58
    /* A62B0 800B5AB0 00000000 */  nop
    /* A62B4 800B5AB4 00000000 */  nop
