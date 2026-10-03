nonmatching func_800B4C14, 0x80

glabel func_800B4C14
    /* A5414 800B4C14 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* A5418 800B4C18 2000B0AF */  sw         $s0, 0x20($sp)
    /* A541C 800B4C1C 21808000 */  addu       $s0, $a0, $zero
    /* A5420 800B4C20 2400B1AF */  sw         $s1, 0x24($sp)
    /* A5424 800B4C24 2188A000 */  addu       $s1, $a1, $zero
    /* A5428 800B4C28 14002526 */  addiu      $a1, $s1, 0x14
    /* A542C 800B4C2C 2800BFAF */  sw         $ra, 0x28($sp)
    /* A5430 800B4C30 92D3020C */  jal        func_800B4E48
    /* A5434 800B4C34 1000A627 */   addiu     $a2, $sp, 0x10
    /* A5438 800B4C38 21200002 */  addu       $a0, $s0, $zero
    /* A543C 800B4C3C 3ED4020C */  jal        func_800B50F8
    /* A5440 800B4C40 21282002 */   addu      $a1, $s1, $zero
    /* A5444 800B4C44 1000A28F */  lw         $v0, 0x10($sp)
    /* A5448 800B4C48 1400038E */  lw         $v1, 0x14($s0)
    /* A544C 800B4C4C 00000000 */  nop
    /* A5450 800B4C50 21104300 */  addu       $v0, $v0, $v1
    /* A5454 800B4C54 140002AE */  sw         $v0, 0x14($s0)
    /* A5458 800B4C58 1400A28F */  lw         $v0, 0x14($sp)
    /* A545C 800B4C5C 1800038E */  lw         $v1, 0x18($s0)
    /* A5460 800B4C60 00000000 */  nop
    /* A5464 800B4C64 21104300 */  addu       $v0, $v0, $v1
    /* A5468 800B4C68 180002AE */  sw         $v0, 0x18($s0)
    /* A546C 800B4C6C 1800A28F */  lw         $v0, 0x18($sp)
    /* A5470 800B4C70 1C00038E */  lw         $v1, 0x1C($s0)
    /* A5474 800B4C74 00000000 */  nop
    /* A5478 800B4C78 21104300 */  addu       $v0, $v0, $v1
    /* A547C 800B4C7C 1C0002AE */  sw         $v0, 0x1C($s0)
    /* A5480 800B4C80 2800BF8F */  lw         $ra, 0x28($sp)
    /* A5484 800B4C84 2400B18F */  lw         $s1, 0x24($sp)
    /* A5488 800B4C88 2000B08F */  lw         $s0, 0x20($sp)
    /* A548C 800B4C8C 0800E003 */  jr         $ra
    /* A5490 800B4C90 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_800B4C14
