nonmatching func_800B4B94, 0x80

glabel func_800B4B94
    /* A5394 800B4B94 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* A5398 800B4B98 2000B0AF */  sw         $s0, 0x20($sp)
    /* A539C 800B4B9C 21808000 */  addu       $s0, $a0, $zero
    /* A53A0 800B4BA0 2400B1AF */  sw         $s1, 0x24($sp)
    /* A53A4 800B4BA4 2188A000 */  addu       $s1, $a1, $zero
    /* A53A8 800B4BA8 14002526 */  addiu      $a1, $s1, 0x14
    /* A53AC 800B4BAC 2800BFAF */  sw         $ra, 0x28($sp)
    /* A53B0 800B4BB0 92D3020C */  jal        func_800B4E48
    /* A53B4 800B4BB4 1000A627 */   addiu     $a2, $sp, 0x10
    /* A53B8 800B4BB8 21200002 */  addu       $a0, $s0, $zero
    /* A53BC 800B4BBC 6EC4020C */  jal        func_800B11B8
    /* A53C0 800B4BC0 21282002 */   addu      $a1, $s1, $zero
    /* A53C4 800B4BC4 1000A28F */  lw         $v0, 0x10($sp)
    /* A53C8 800B4BC8 1400038E */  lw         $v1, 0x14($s0)
    /* A53CC 800B4BCC 00000000 */  nop
    /* A53D0 800B4BD0 21104300 */  addu       $v0, $v0, $v1
    /* A53D4 800B4BD4 140022AE */  sw         $v0, 0x14($s1)
    /* A53D8 800B4BD8 1400A28F */  lw         $v0, 0x14($sp)
    /* A53DC 800B4BDC 1800038E */  lw         $v1, 0x18($s0)
    /* A53E0 800B4BE0 00000000 */  nop
    /* A53E4 800B4BE4 21104300 */  addu       $v0, $v0, $v1
    /* A53E8 800B4BE8 180022AE */  sw         $v0, 0x18($s1)
    /* A53EC 800B4BEC 1800A28F */  lw         $v0, 0x18($sp)
    /* A53F0 800B4BF0 1C00038E */  lw         $v1, 0x1C($s0)
    /* A53F4 800B4BF4 00000000 */  nop
    /* A53F8 800B4BF8 21104300 */  addu       $v0, $v0, $v1
    /* A53FC 800B4BFC 1C0022AE */  sw         $v0, 0x1C($s1)
    /* A5400 800B4C00 2800BF8F */  lw         $ra, 0x28($sp)
    /* A5404 800B4C04 2400B18F */  lw         $s1, 0x24($sp)
    /* A5408 800B4C08 2000B08F */  lw         $s0, 0x20($sp)
    /* A540C 800B4C0C 0800E003 */  jr         $ra
    /* A5410 800B4C10 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_800B4B94
