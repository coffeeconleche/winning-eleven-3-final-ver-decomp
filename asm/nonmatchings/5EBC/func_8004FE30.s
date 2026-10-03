nonmatching func_8004FE30, 0xB8

glabel func_8004FE30
    /* 40630 8004FE30 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 40634 8004FE34 2400BFAF */  sw         $ra, 0x24($sp)
    /* 40638 8004FE38 5EDB020C */  jal        func_800B6D78
    /* 4063C 8004FE3C 2000B0AF */   sw        $s0, 0x20($sp)
    /* 40640 8004FE40 88AD020C */  jal        func_800AB620
    /* 40644 8004FE44 11000424 */   addiu     $a0, $zero, 0x11
    /* 40648 8004FE48 88AD020C */  jal        func_800AB620
    /* 4064C 8004FE4C 0F000424 */   addiu     $a0, $zero, 0xF
    /* 40650 8004FE50 01000224 */  addiu      $v0, $zero, 0x1
    /* 40654 8004FE54 801F013C */  lui        $at, (0x1F8001EC >> 16)
    /* 40658 8004FE58 EC0122A0 */  sb         $v0, (0x1F8001EC & 0xFFFF)($at)
    /* 4065C 8004FE5C 153F010C */  jal        func_8004FC54
    /* 40660 8004FE60 21200000 */   addu      $a0, $zero, $zero
    /* 40664 8004FE64 21200000 */  addu       $a0, $zero, $zero
    /* 40668 8004FE68 21280000 */  addu       $a1, $zero, $zero
    /* 4066C 8004FE6C 4E78000C */  jal        func_8001E138
    /* 40670 8004FE70 21300000 */   addu      $a2, $zero, $zero
    /* 40674 8004FE74 21200000 */  addu       $a0, $zero, $zero
    /* 40678 8004FE78 32000524 */  addiu      $a1, $zero, 0x32
    /* 4067C 8004FE7C 21300000 */  addu       $a2, $zero, $zero
    /* 40680 8004FE80 0A000224 */  addiu      $v0, $zero, 0xA
    /* 40684 8004FE84 01001024 */  addiu      $s0, $zero, 0x1
    /* 40688 8004FE88 21380000 */  addu       $a3, $zero, $zero
    /* 4068C 8004FE8C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 40690 8004FE90 1400A2AF */  sw         $v0, 0x14($sp)
    /* 40694 8004FE94 1800A0AF */  sw         $zero, 0x18($sp)
    /* 40698 8004FE98 B873000C */  jal        func_8001CEE0
    /* 4069C 8004FE9C 1C00B0AF */   sw        $s0, 0x1C($sp)
    /* 406A0 8004FEA0 32000424 */  addiu      $a0, $zero, 0x32
    /* 406A4 8004FEA4 801F013C */  lui        $at, (0x1F80019C >> 16)
    /* 406A8 8004FEA8 9C0130AC */  sw         $s0, (0x1F80019C & 0xFFFF)($at)
    /* 406AC 8004FEAC 801F013C */  lui        $at, (0x1F800198 >> 16)
    /* 406B0 8004FEB0 980120AC */  sw         $zero, (0x1F800198 & 0xFFFF)($at)
    /* 406B4 8004FEB4 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 406B8 8004FEB8 940220A4 */  sh         $zero, (0x1F800294 & 0xFFFF)($at)
    /* 406BC 8004FEBC 801F013C */  lui        $at, (0x1F80029F >> 16)
    /* 406C0 8004FEC0 9F0220A0 */  sb         $zero, (0x1F80029F & 0xFFFF)($at)
    /* 406C4 8004FEC4 0174000C */  jal        func_8001D004
    /* 406C8 8004FEC8 00000000 */   nop
    /* 406CC 8004FECC 010040A0 */  sb         $zero, 0x1($v0)
    /* 406D0 8004FED0 0D0040A0 */  sb         $zero, 0xD($v0)
    /* 406D4 8004FED4 2400BF8F */  lw         $ra, 0x24($sp)
    /* 406D8 8004FED8 2000B08F */  lw         $s0, 0x20($sp)
    /* 406DC 8004FEDC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 406E0 8004FEE0 0800E003 */  jr         $ra
    /* 406E4 8004FEE4 00000000 */   nop
endlabel func_8004FE30
