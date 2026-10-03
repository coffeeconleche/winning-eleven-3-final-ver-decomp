nonmatching func_8004A0B0, 0x64

glabel func_8004A0B0
    /* 3A8B0 8004A0B0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3A8B4 8004A0B4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3A8B8 8004A0B8 21808000 */  addu       $s0, $a0, $zero
    /* 3A8BC 8004A0BC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3A8C0 8004A0C0 2188A000 */  addu       $s1, $a1, $zero
    /* 3A8C4 8004A0C4 1800BFAF */  sw         $ra, 0x18($sp)
    /* 3A8C8 8004A0C8 02000486 */  lh         $a0, 0x2($s0)
    /* 3A8CC 8004A0CC 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 3A8D0 8004A0D0 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 3A8D4 8004A0D4 06000586 */  lh         $a1, 0x6($s0)
    /* 3A8D8 8004A0D8 02004684 */  lh         $a2, 0x2($v0)
    /* 3A8DC 8004A0DC 06004784 */  lh         $a3, 0x6($v0)
    /* 3A8E0 8004A0E0 DB6C010C */  jal        func_8005B36C
    /* 3A8E4 8004A0E4 00000000 */   nop
    /* 3A8E8 8004A0E8 FF004430 */  andi       $a0, $v0, 0xFF
    /* 3A8EC 8004A0EC AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 3A8F0 8004A0F0 F36D010C */  jal        func_8005B7CC
    /* 3A8F4 8004A0F4 FF002632 */   andi      $a2, $s1, 0xFF
    /* 3A8F8 8004A0F8 AA0302A2 */  sb         $v0, 0x3AA($s0)
    /* 3A8FC 8004A0FC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3A900 8004A100 1400B18F */  lw         $s1, 0x14($sp)
    /* 3A904 8004A104 1000B08F */  lw         $s0, 0x10($sp)
    /* 3A908 8004A108 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3A90C 8004A10C 0800E003 */  jr         $ra
    /* 3A910 8004A110 00000000 */   nop
endlabel func_8004A0B0
