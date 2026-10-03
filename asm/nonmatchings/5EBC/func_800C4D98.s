nonmatching func_800C4D98, 0x60

glabel func_800C4D98
    /* B5598 800C4D98 0D80023C */  lui        $v0, %hi(D_800D558C)
    /* B559C 800C4D9C 8C55428C */  lw         $v0, %lo(D_800D558C)($v0)
    /* B55A0 800C4DA0 00210400 */  sll        $a0, $a0, 4
    /* B55A4 800C4DA4 21208200 */  addu       $a0, $a0, $v0
    /* B55A8 800C4DA8 00008394 */  lhu        $v1, 0x0($a0)
    /* B55AC 800C4DAC 02008494 */  lhu        $a0, 0x2($a0)
    /* B55B0 800C4DB0 FFFF6730 */  andi       $a3, $v1, 0xFFFF
    /* B55B4 800C4DB4 0040E22C */  sltiu      $v0, $a3, 0x4000
    /* B55B8 800C4DB8 04004014 */  bnez       $v0, .L800C4DCC
    /* B55BC 800C4DBC 00800234 */   ori       $v0, $zero, 0x8000
    /* B55C0 800C4DC0 2310E200 */  subu       $v0, $a3, $v0
    /* B55C4 800C4DC4 74130308 */  j          .L800C4DD0
    /* B55C8 800C4DC8 0000A2A4 */   sh        $v0, 0x0($a1)
  .L800C4DCC:
    /* B55CC 800C4DCC 0000A3A4 */  sh         $v1, 0x0($a1)
  .L800C4DD0:
    /* B55D0 800C4DD0 FFFF8330 */  andi       $v1, $a0, 0xFFFF
    /* B55D4 800C4DD4 0040622C */  sltiu      $v0, $v1, 0x4000
    /* B55D8 800C4DD8 04004014 */  bnez       $v0, .L800C4DEC
    /* B55DC 800C4DDC 00800234 */   ori       $v0, $zero, 0x8000
    /* B55E0 800C4DE0 23106200 */  subu       $v0, $v1, $v0
    /* B55E4 800C4DE4 7C130308 */  j          .L800C4DF0
    /* B55E8 800C4DE8 0000C2A4 */   sh        $v0, 0x0($a2)
  .L800C4DEC:
    /* B55EC 800C4DEC 0000C4A4 */  sh         $a0, 0x0($a2)
  .L800C4DF0:
    /* B55F0 800C4DF0 0800E003 */  jr         $ra
    /* B55F4 800C4DF4 00000000 */   nop
endlabel func_800C4D98
