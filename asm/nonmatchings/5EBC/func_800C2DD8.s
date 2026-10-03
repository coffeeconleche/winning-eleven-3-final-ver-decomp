nonmatching func_800C2DD8, 0x48

glabel func_800C2DD8
    /* B35D8 800C2DD8 21108000 */  addu       $v0, $a0, $zero
    /* B35DC 800C2DDC 06004004 */  bltz       $v0, .L800C2DF8
    /* B35E0 800C2DE0 21280000 */   addu      $a1, $zero, $zero
    /* B35E4 800C2DE4 21284000 */  addu       $a1, $v0, $zero
    /* B35E8 800C2DE8 4000A228 */  slti       $v0, $a1, 0x40
    /* B35EC 800C2DEC 02004014 */  bnez       $v0, .L800C2DF8
    /* B35F0 800C2DF0 00000000 */   nop
    /* B35F4 800C2DF4 3F000524 */  addiu      $a1, $zero, 0x3F
  .L800C2DF8:
    /* B35F8 800C2DF8 0D80043C */  lui        $a0, %hi(D_800D558C)
    /* B35FC 800C2DFC 8C55848C */  lw         $a0, %lo(D_800D558C)($a0)
    /* B3600 800C2E00 3F00A230 */  andi       $v0, $a1, 0x3F
    /* B3604 800C2E04 AA018394 */  lhu        $v1, 0x1AA($a0)
    /* B3608 800C2E08 00120200 */  sll        $v0, $v0, 8
    /* B360C 800C2E0C FFC06330 */  andi       $v1, $v1, 0xC0FF
    /* B3610 800C2E10 25186200 */  or         $v1, $v1, $v0
    /* B3614 800C2E14 2110A000 */  addu       $v0, $a1, $zero
    /* B3618 800C2E18 0800E003 */  jr         $ra
    /* B361C 800C2E1C AA0183A4 */   sh        $v1, 0x1AA($a0)
endlabel func_800C2DD8
    /* B3620 800C2E20 00000000 */  nop
    /* B3624 800C2E24 00000000 */  nop
