nonmatching func_800B47C8, 0x78

glabel func_800B47C8
    /* A4FC8 800B47C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A4FCC 800B47CC 1180023C */  lui        $v0, %hi(D_8010CD54)
    /* A4FD0 800B47D0 54CD4284 */  lh         $v0, %lo(D_8010CD54)($v0)
    /* A4FD4 800B47D4 1080033C */  lui        $v1, %hi(D_800FF738)
    /* A4FD8 800B47D8 38F76324 */  addiu      $v1, $v1, %lo(D_800FF738)
    /* A4FDC 800B47DC 1000BFAF */  sw         $ra, 0x10($sp)
    /* A4FE0 800B47E0 06006594 */  lhu        $a1, 0x6($v1)
    /* A4FE4 800B47E4 40100200 */  sll        $v0, $v0, 1
    /* A4FE8 800B47E8 0E80063C */  lui        $a2, %hi(D_800E7800)
    /* A4FEC 800B47EC 2130C200 */  addu       $a2, $a2, $v0
    /* A4FF0 800B47F0 0078C684 */  lh         $a2, %lo(D_800E7800)($a2)
    /* A4FF4 800B47F4 0E80073C */  lui        $a3, %hi(D_800E789C)
    /* A4FF8 800B47F8 2138E200 */  addu       $a3, $a3, $v0
    /* A4FFC 800B47FC 9C78E784 */  lh         $a3, %lo(D_800E789C)($a3)
    /* A5000 800B4800 04006294 */  lhu        $v0, 0x4($v1)
    /* A5004 800B4804 0F80043C */  lui        $a0, %hi(D_800F0F78)
    /* A5008 800B4808 780F8424 */  addiu      $a0, $a0, %lo(D_800F0F78)
    /* A500C 800B480C 060085A4 */  sh         $a1, 0x6($a0)
    /* A5010 800B4810 040082A4 */  sh         $v0, 0x4($a0)
    /* A5014 800B4814 00006284 */  lh         $v0, 0x0($v1)
    /* A5018 800B4818 02006384 */  lh         $v1, 0x2($v1)
    /* A501C 800B481C 21104600 */  addu       $v0, $v0, $a2
    /* A5020 800B4820 21186700 */  addu       $v1, $v1, $a3
    /* A5024 800B4824 000082A4 */  sh         $v0, 0x0($a0)
    /* A5028 800B4828 E6BA020C */  jal        func_800AEB98
    /* A502C 800B482C 020083A4 */   sh        $v1, 0x2($a0)
    /* A5030 800B4830 1000BF8F */  lw         $ra, 0x10($sp)
    /* A5034 800B4834 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A5038 800B4838 0800E003 */  jr         $ra
    /* A503C 800B483C 00000000 */   nop
endlabel func_800B47C8
    /* A5040 800B4840 00000000 */  nop
    /* A5044 800B4844 00000000 */  nop
