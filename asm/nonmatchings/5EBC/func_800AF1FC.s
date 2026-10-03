nonmatching func_800AF1FC, 0x38

glabel func_800AF1FC
    /* 9F9FC 800AF1FC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9FA00 800AF200 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9FA04 800AF204 21808000 */  addu       $s0, $a0, $zero
    /* 9FA08 800AF208 02000224 */  addiu      $v0, $zero, 0x2
    /* 9FA0C 800AF20C 2120A000 */  addu       $a0, $a1, $zero
    /* 9FA10 800AF210 1400BFAF */  sw         $ra, 0x14($sp)
    /* 9FA14 800AF214 5BBE020C */  jal        func_800AF96C
    /* 9FA18 800AF218 030002A2 */   sb        $v0, 0x3($s0)
    /* 9FA1C 800AF21C 040002AE */  sw         $v0, 0x4($s0)
    /* 9FA20 800AF220 080000AE */  sw         $zero, 0x8($s0)
    /* 9FA24 800AF224 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9FA28 800AF228 1000B08F */  lw         $s0, 0x10($sp)
    /* 9FA2C 800AF22C 0800E003 */  jr         $ra
    /* 9FA30 800AF230 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AF1FC
