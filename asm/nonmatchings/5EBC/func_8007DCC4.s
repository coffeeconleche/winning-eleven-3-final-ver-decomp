nonmatching func_8007DCC4, 0x50

glabel func_8007DCC4
    /* 6E4C4 8007DCC4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6E4C8 8007DCC8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 6E4CC 8007DCCC F13E010C */  jal        func_8004FBC4
    /* 6E4D0 8007DCD0 21200000 */   addu      $a0, $zero, $zero
    /* 6E4D4 8007DCD4 0B004010 */  beqz       $v0, .L8007DD04
    /* 6E4D8 8007DCD8 00000000 */   nop
    /* 6E4DC 8007DCDC 1180013C */  lui        $at, %hi(D_8010A369)
    /* 6E4E0 8007DCE0 69A320A0 */  sb         $zero, %lo(D_8010A369)($at)
    /* 6E4E4 8007DCE4 1180013C */  lui        $at, %hi(D_8010A368)
    /* 6E4E8 8007DCE8 68A320A0 */  sb         $zero, %lo(D_8010A368)($at)
    /* 6E4EC 8007DCEC 801F013C */  lui        $at, (0x1F8001E8 >> 16)
    /* 6E4F0 8007DCF0 E80120A0 */  sb         $zero, (0x1F8001E8 & 0xFFFF)($at)
    /* 6E4F4 8007DCF4 0F80013C */  lui        $at, %hi(D_800EF9C8)
    /* 6E4F8 8007DCF8 C8F920A0 */  sb         $zero, %lo(D_800EF9C8)($at)
    /* 6E4FC 8007DCFC 715C000C */  jal        func_800171C4
    /* 6E500 8007DD00 0B000424 */   addiu     $a0, $zero, 0xB
  .L8007DD04:
    /* 6E504 8007DD04 1000BF8F */  lw         $ra, 0x10($sp)
    /* 6E508 8007DD08 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6E50C 8007DD0C 0800E003 */  jr         $ra
    /* 6E510 8007DD10 00000000 */   nop
endlabel func_8007DCC4
