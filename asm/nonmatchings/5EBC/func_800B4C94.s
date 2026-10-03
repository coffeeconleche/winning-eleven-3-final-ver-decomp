nonmatching func_800B4C94, 0x70

glabel func_800B4C94
    /* A5494 800B4C94 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* A5498 800B4C98 2800BFAF */  sw         $ra, 0x28($sp)
    /* A549C 800B4C9C 06008284 */  lh         $v0, 0x6($a0)
    /* A54A0 800B4CA0 00008584 */  lh         $a1, 0x0($a0)
    /* A54A4 800B4CA4 02008684 */  lh         $a2, 0x2($a0)
    /* A54A8 800B4CA8 04008784 */  lh         $a3, 0x4($a0)
    /* A54AC 800B4CAC 1000A2AF */  sw         $v0, 0x10($sp)
    /* A54B0 800B4CB0 08008284 */  lh         $v0, 0x8($a0)
    /* A54B4 800B4CB4 00000000 */  nop
    /* A54B8 800B4CB8 1400A2AF */  sw         $v0, 0x14($sp)
    /* A54BC 800B4CBC 0A008284 */  lh         $v0, 0xA($a0)
    /* A54C0 800B4CC0 00000000 */  nop
    /* A54C4 800B4CC4 1800A2AF */  sw         $v0, 0x18($sp)
    /* A54C8 800B4CC8 0C008284 */  lh         $v0, 0xC($a0)
    /* A54CC 800B4CCC 00000000 */  nop
    /* A54D0 800B4CD0 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* A54D4 800B4CD4 0E008284 */  lh         $v0, 0xE($a0)
    /* A54D8 800B4CD8 00000000 */  nop
    /* A54DC 800B4CDC 2000A2AF */  sw         $v0, 0x20($sp)
    /* A54E0 800B4CE0 10008284 */  lh         $v0, 0x10($a0)
    /* A54E4 800B4CE4 0180043C */  lui        $a0, %hi(D_8001507C)
    /* A54E8 800B4CE8 7C508424 */  addiu      $a0, $a0, %lo(D_8001507C)
    /* A54EC 800B4CEC A6B5020C */  jal        func_800AD698
    /* A54F0 800B4CF0 2400A2AF */   sw        $v0, 0x24($sp)
    /* A54F4 800B4CF4 2800BF8F */  lw         $ra, 0x28($sp)
    /* A54F8 800B4CF8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* A54FC 800B4CFC 0800E003 */  jr         $ra
    /* A5500 800B4D00 00000000 */   nop
endlabel func_800B4C94
