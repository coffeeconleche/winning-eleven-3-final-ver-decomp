nonmatching func_8005A72C, 0x40

glabel func_8005A72C
    /* 4AF2C 8005A72C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4AF30 8005A730 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4AF34 8005A734 21808000 */  addu       $s0, $a0, $zero
    /* 4AF38 8005A738 0A000424 */  addiu      $a0, $zero, 0xA
    /* 4AF3C 8005A73C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 4AF40 8005A740 DE0300A6 */  sh         $zero, 0x3DE($s0)
    /* 4AF44 8005A744 AE79000C */  jal        func_8001E6B8
    /* 4AF48 8005A748 DC0300A6 */   sh        $zero, 0x3DC($s0)
    /* 4AF4C 8005A74C DA0302A2 */  sb         $v0, 0x3DA($s0)
    /* 4AF50 8005A750 E10300A2 */  sb         $zero, 0x3E1($s0)
    /* 4AF54 8005A754 E00300A2 */  sb         $zero, 0x3E0($s0)
    /* 4AF58 8005A758 1400BF8F */  lw         $ra, 0x14($sp)
    /* 4AF5C 8005A75C 1000B08F */  lw         $s0, 0x10($sp)
    /* 4AF60 8005A760 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4AF64 8005A764 0800E003 */  jr         $ra
    /* 4AF68 8005A768 00000000 */   nop
endlabel func_8005A72C
