nonmatching func_8001CEE0, 0x7C

glabel func_8001CEE0
    /* D6E0 8001CEE0 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* D6E4 8001CEE4 6400A38F */  lw         $v1, 0x64($sp)
    /* D6E8 8001CEE8 5C00A993 */  lbu        $t1, 0x5C($sp)
    /* D6EC 8001CEEC 6000AA93 */  lbu        $t2, 0x60($sp)
    /* D6F0 8001CEF0 5800A887 */  lh         $t0, 0x58($sp)
    /* D6F4 8001CEF4 00100224 */  addiu      $v0, $zero, 0x1000
    /* D6F8 8001CEF8 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* D6FC 8001CEFC 2000A2AF */  sw         $v0, 0x20($sp)
    /* D700 8001CF00 80000224 */  addiu      $v0, $zero, 0x80
    /* D704 8001CF04 003C0700 */  sll        $a3, $a3, 16
    /* D708 8001CF08 FF008430 */  andi       $a0, $a0, 0xFF
    /* D70C 8001CF0C FFFFA530 */  andi       $a1, $a1, 0xFFFF
    /* D710 8001CF10 033C0700 */  sra        $a3, $a3, 16
    /* D714 8001CF14 4000BFAF */  sw         $ra, 0x40($sp)
    /* D718 8001CF18 2400A0AF */  sw         $zero, 0x24($sp)
    /* D71C 8001CF1C 2800A0AF */  sw         $zero, 0x28($sp)
    /* D720 8001CF20 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* D724 8001CF24 3000A2AF */  sw         $v0, 0x30($sp)
    /* D728 8001CF28 3400A2AF */  sw         $v0, 0x34($sp)
    /* D72C 8001CF2C 3800A0AF */  sw         $zero, 0x38($sp)
    /* D730 8001CF30 001C0300 */  sll        $v1, $v1, 16
    /* D734 8001CF34 031C0300 */  sra        $v1, $v1, 16
    /* D738 8001CF38 1000A8AF */  sw         $t0, 0x10($sp)
    /* D73C 8001CF3C 1400A9AF */  sw         $t1, 0x14($sp)
    /* D740 8001CF40 1800AAAF */  sw         $t2, 0x18($sp)
    /* D744 8001CF44 6B73000C */  jal        func_8001CDAC
    /* D748 8001CF48 3C00A3AF */   sw        $v1, 0x3C($sp)
    /* D74C 8001CF4C 4000BF8F */  lw         $ra, 0x40($sp)
    /* D750 8001CF50 4800BD27 */  addiu      $sp, $sp, 0x48
    /* D754 8001CF54 0800E003 */  jr         $ra
    /* D758 8001CF58 00000000 */   nop
endlabel func_8001CEE0
