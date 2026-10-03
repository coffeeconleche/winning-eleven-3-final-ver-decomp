nonmatching func_801B8EB8, 0x80

glabel func_801B8EB8
    /* 2FF40 801B8EB8 801F033C */  lui        $v1, (0x1F8002D3 >> 16)
    /* 2FF44 801B8EBC D3026390 */  lbu        $v1, (0x1F8002D3 & 0xFFFF)($v1)
    /* 2FF48 801B8EC0 801F043C */  lui        $a0, (0x1F8002D4 >> 16)
    /* 2FF4C 801B8EC4 D4028490 */  lbu        $a0, (0x1F8002D4 & 0xFFFF)($a0)
    /* 2FF50 801B8EC8 1180023C */  lui        $v0, %hi(D_8010A2EA)
    /* 2FF54 801B8ECC EAA24290 */  lbu        $v0, %lo(D_8010A2EA)($v0)
    /* 2FF58 801B8ED0 801F053C */  lui        $a1, (0x1F8002D8 >> 16)
    /* 2FF5C 801B8ED4 D802A590 */  lbu        $a1, (0x1F8002D8 & 0xFFFF)($a1)
    /* 2FF60 801B8ED8 21186400 */  addu       $v1, $v1, $a0
    /* 2FF64 801B8EDC 21104300 */  addu       $v0, $v0, $v1
    /* 2FF68 801B8EE0 801F033C */  lui        $v1, (0x1F8002D7 >> 16)
    /* 2FF6C 801B8EE4 D7026390 */  lbu        $v1, (0x1F8002D7 & 0xFFFF)($v1)
    /* 2FF70 801B8EE8 1180043C */  lui        $a0, %hi(D_8010A2EB)
    /* 2FF74 801B8EEC EBA28490 */  lbu        $a0, %lo(D_8010A2EB)($a0)
    /* 2FF78 801B8EF0 1E80013C */  lui        $at, %hi(D_801DA333)
    /* 2FF7C 801B8EF4 33A322A0 */  sb         $v0, %lo(D_801DA333)($at)
    /* 2FF80 801B8EF8 21186500 */  addu       $v1, $v1, $a1
    /* 2FF84 801B8EFC 21208300 */  addu       $a0, $a0, $v1
    /* 2FF88 801B8F00 21284000 */  addu       $a1, $v0, $zero
    /* 2FF8C 801B8F04 25104400 */  or         $v0, $v0, $a0
    /* 2FF90 801B8F08 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2FF94 801B8F0C 1E80013C */  lui        $at, %hi(D_801DA334)
    /* 2FF98 801B8F10 34A324A0 */  sb         $a0, %lo(D_801DA334)($at)
    /* 2FF9C 801B8F14 05004010 */  beqz       $v0, .L801B8F2C
    /* 2FFA0 801B8F18 21188000 */   addu      $v1, $a0, $zero
    /* 2FFA4 801B8F1C 26106500 */  xor        $v0, $v1, $a1
    /* 2FFA8 801B8F20 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2FFAC 801B8F24 CCE30608 */  j          .L801B8F30
    /* 2FFB0 801B8F28 0100422C */   sltiu     $v0, $v0, 0x1
  .L801B8F2C:
    /* 2FFB4 801B8F2C 21100000 */  addu       $v0, $zero, $zero
  .L801B8F30:
    /* 2FFB8 801B8F30 0800E003 */  jr         $ra
    /* 2FFBC 801B8F34 00000000 */   nop
endlabel func_801B8EB8
