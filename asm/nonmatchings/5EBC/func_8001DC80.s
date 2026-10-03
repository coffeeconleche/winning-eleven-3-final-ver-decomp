nonmatching func_8001DC80, 0x90

glabel func_8001DC80
    /* E480 8001DC80 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* E484 8001DC84 1000BFAF */  sw         $ra, 0x10($sp)
    /* E488 8001DC88 5477000C */  jal        func_8001DD50
    /* E48C 8001DC8C 0C000424 */   addiu     $a0, $zero, 0xC
    /* E490 8001DC90 4477000C */  jal        func_8001DD10
    /* E494 8001DC94 00000000 */   nop
    /* E498 8001DC98 F626020C */  jal        func_80089BD8
    /* E49C 8001DC9C 00000000 */   nop
    /* E4A0 8001DCA0 7477000C */  jal        func_8001DDD0
    /* E4A4 8001DCA4 00000000 */   nop
    /* E4A8 8001DCA8 3D78000C */  jal        func_8001E0F4
    /* E4AC 8001DCAC 00000000 */   nop
    /* E4B0 8001DCB0 0F80013C */  lui        $at, %hi(D_800F0EA0)
    /* E4B4 8001DCB4 A00E20A0 */  sb         $zero, %lo(D_800F0EA0)($at)
    /* E4B8 8001DCB8 A2B5020C */  jal        func_800AD688
    /* E4BC 8001DCBC 01000424 */   addiu     $a0, $zero, 0x1
    /* E4C0 8001DCC0 01000224 */  addiu      $v0, $zero, 0x1
    /* E4C4 8001DCC4 1080013C */  lui        $at, %hi(D_80106838)
    /* E4C8 8001DCC8 386822AC */  sw         $v0, %lo(D_80106838)($at)
    /* E4CC 8001DCCC 7F010224 */  addiu      $v0, $zero, 0x17F
    /* E4D0 8001DCD0 1080013C */  lui        $at, %hi(D_8010683C)
    /* E4D4 8001DCD4 3C6822AC */  sw         $v0, %lo(D_8010683C)($at)
    /* E4D8 8001DCD8 EF000224 */  addiu      $v0, $zero, 0xEF
    /* E4DC 8001DCDC 1080013C */  lui        $at, %hi(D_80106840)
    /* E4E0 8001DCE0 406822AC */  sw         $v0, %lo(D_80106840)($at)
    /* E4E4 8001DCE4 FF7F0224 */  addiu      $v0, $zero, 0x7FFF
    /* E4E8 8001DCE8 1180013C */  lui        $at, %hi(D_8010A368)
    /* E4EC 8001DCEC 68A320A0 */  sb         $zero, %lo(D_8010A368)($at)
    /* E4F0 8001DCF0 1180013C */  lui        $at, %hi(D_8010A369)
    /* E4F4 8001DCF4 69A320A0 */  sb         $zero, %lo(D_8010A369)($at)
    /* E4F8 8001DCF8 801F013C */  lui        $at, (0x1F8002B8 >> 16)
    /* E4FC 8001DCFC B80222A4 */  sh         $v0, (0x1F8002B8 & 0xFFFF)($at)
    /* E500 8001DD00 1000BF8F */  lw         $ra, 0x10($sp)
    /* E504 8001DD04 1800BD27 */  addiu      $sp, $sp, 0x18
    /* E508 8001DD08 0800E003 */  jr         $ra
    /* E50C 8001DD0C 00000000 */   nop
endlabel func_8001DC80
