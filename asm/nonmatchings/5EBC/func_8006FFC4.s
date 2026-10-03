nonmatching func_8006FFC4, 0x44

glabel func_8006FFC4
    /* 607C4 8006FFC4 801F023C */  lui        $v0, (0x1F8002A0 >> 16)
    /* 607C8 8006FFC8 A0024290 */  lbu        $v0, (0x1F8002A0 & 0xFFFF)($v0)
    /* 607CC 8006FFCC 01000424 */  addiu      $a0, $zero, 0x1
    /* 607D0 8006FFD0 05004414 */  bne        $v0, $a0, .L8006FFE8
    /* 607D4 8006FFD4 00000000 */   nop
    /* 607D8 8006FFD8 1080023C */  lui        $v0, %hi(D_800FF740)
    /* 607DC 8006FFDC 40F74290 */  lbu        $v0, %lo(D_800FF740)($v0)
    /* 607E0 8006FFE0 00C00108 */  j          .L80070000
    /* 607E4 8006FFE4 00000000 */   nop
  .L8006FFE8:
    /* 607E8 8006FFE8 801F033C */  lui        $v1, (0x1F8002E2 >> 16)
    /* 607EC 8006FFEC E2026390 */  lbu        $v1, (0x1F8002E2 & 0xFFFF)($v1)
    /* 607F0 8006FFF0 00000000 */  nop
    /* 607F4 8006FFF4 02006414 */  bne        $v1, $a0, .L80070000
    /* 607F8 8006FFF8 21100000 */   addu      $v0, $zero, $zero
    /* 607FC 8006FFFC 02000224 */  addiu      $v0, $zero, 0x2
  .L80070000:
    /* 60800 80070000 0800E003 */  jr         $ra
    /* 60804 80070004 00000000 */   nop
endlabel func_8006FFC4
