nonmatching func_8001DBE8, 0x98

glabel func_8001DBE8
    /* E3E8 8001DBE8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* E3EC 8001DBEC 1180043C */  lui        $a0, %hi(D_8010A5A8)
    /* E3F0 8001DBF0 A8A58424 */  addiu      $a0, $a0, %lo(D_8010A5A8)
    /* E3F4 8001DBF4 1000BFAF */  sw         $ra, 0x10($sp)
    /* E3F8 8001DBF8 96B5020C */  jal        func_800AD658
    /* E3FC 8001DBFC 10000524 */   addiu     $a1, $zero, 0x10
    /* E400 8001DC00 1180043C */  lui        $a0, %hi(D_8010A5E0)
    /* E404 8001DC04 E0A58424 */  addiu      $a0, $a0, %lo(D_8010A5E0)
    /* E408 8001DC08 96B5020C */  jal        func_800AD658
    /* E40C 8001DC0C D4030524 */   addiu     $a1, $zero, 0x3D4
    /* E410 8001DC10 801F043C */  lui        $a0, (0x1F800000 >> 16)
    /* E414 8001DC14 96B5020C */  jal        func_800AD658
    /* E418 8001DC18 00040524 */   addiu     $a1, $zero, 0x400
    /* E41C 8001DC1C 7F80043C */  lui        $a0, (0x807F0000 >> 16)
    /* E420 8001DC20 21280000 */  addu       $a1, $zero, $zero
    /* E424 8001DC24 9AB5020C */  jal        func_800AD668
    /* E428 8001DC28 00F00634 */   ori       $a2, $zero, 0xF000
    /* E42C 8001DC2C C2B3020C */  jal        func_800ACF08
    /* E430 8001DC30 21200000 */   addu      $a0, $zero, $zero
    /* E434 8001DC34 1080023C */  lui        $v0, %hi(D_800FF748)
    /* E438 8001DC38 48F74224 */  addiu      $v0, $v0, %lo(D_800FF748)
    /* E43C 8001DC3C 801F013C */  lui        $at, (0x1F8002F4 >> 16)
    /* E440 8001DC40 F40222AC */  sw         $v0, (0x1F8002F4 & 0xFFFF)($at)
    /* E444 8001DC44 0F80023C */  lui        $v0, %hi(D_800E8208)
    /* E448 8001DC48 08824224 */  addiu      $v0, $v0, %lo(D_800E8208)
    /* E44C 8001DC4C 801F013C */  lui        $at, (0x1F800190 >> 16)
    /* E450 8001DC50 900122AC */  sw         $v0, (0x1F800190 & 0xFFFF)($at)
    /* E454 8001DC54 02000224 */  addiu      $v0, $zero, 0x2
    /* E458 8001DC58 1180013C */  lui        $at, %hi(D_8010A364)
    /* E45C 8001DC5C 64A320A0 */  sb         $zero, %lo(D_8010A364)($at)
    /* E460 8001DC60 1180013C */  lui        $at, %hi(D_8010A5B4)
    /* E464 8001DC64 B4A522A4 */  sh         $v0, %lo(D_8010A5B4)($at)
    /* E468 8001DC68 C478000C */  jal        func_8001E310
    /* E46C 8001DC6C 00000000 */   nop
    /* E470 8001DC70 1000BF8F */  lw         $ra, 0x10($sp)
    /* E474 8001DC74 1800BD27 */  addiu      $sp, $sp, 0x18
    /* E478 8001DC78 0800E003 */  jr         $ra
    /* E47C 8001DC7C 00000000 */   nop
endlabel func_8001DBE8
