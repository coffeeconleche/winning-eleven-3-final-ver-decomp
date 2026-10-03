nonmatching func_800ADB2C, 0x60

glabel func_800ADB2C
    /* 9E32C 800ADB2C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9E330 800ADB30 FFFF8730 */  andi       $a3, $a0, 0xFFFF
    /* 9E334 800ADB34 00190700 */  sll        $v1, $a3, 4
    /* 9E338 800ADB38 00016330 */  andi       $v1, $v1, 0x100
    /* 9E33C 800ADB3C 82100700 */  srl        $v0, $a3, 2
    /* 9E340 800ADB40 00024230 */  andi       $v0, $v0, 0x200
    /* 9E344 800ADB44 25186200 */  or         $v1, $v1, $v0
    /* 9E348 800ADB48 C2290700 */  srl        $a1, $a3, 7
    /* 9E34C 800ADB4C 42310700 */  srl        $a2, $a3, 5
    /* 9E350 800ADB50 80390700 */  sll        $a3, $a3, 6
    /* 9E354 800ADB54 0180043C */  lui        $a0, %hi(D_80014D5C)
    /* 9E358 800ADB58 5C4D8424 */  addiu      $a0, $a0, %lo(D_80014D5C)
    /* 9E35C 800ADB5C 0300A530 */  andi       $a1, $a1, 0x3
    /* 9E360 800ADB60 0300C630 */  andi       $a2, $a2, 0x3
    /* 9E364 800ADB64 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9E368 800ADB68 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9E36C 800ADB6C C007E730 */  andi       $a3, $a3, 0x7C0
    /* 9E370 800ADB70 1800BFAF */  sw         $ra, 0x18($sp)
    /* 9E374 800ADB74 09F84000 */  jalr       $v0
    /* 9E378 800ADB78 1000A3AF */   sw        $v1, 0x10($sp)
    /* 9E37C 800ADB7C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9E380 800ADB80 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 9E384 800ADB84 0800E003 */  jr         $ra
    /* 9E388 800ADB88 00000000 */   nop
endlabel func_800ADB2C
