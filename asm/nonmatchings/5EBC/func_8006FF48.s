nonmatching func_8006FF48, 0x7C

glabel func_8006FF48
    /* 60748 8006FF48 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 6074C 8006FF4C FF008430 */  andi       $a0, $a0, 0xFF
    /* 60750 8006FF50 11000224 */  addiu      $v0, $zero, 0x11
    /* 60754 8006FF54 23104400 */  subu       $v0, $v0, $a0
    /* 60758 8006FF58 C0100200 */  sll        $v0, $v0, 3
    /* 6075C 8006FF5C 06000324 */  addiu      $v1, $zero, 0x6
    /* 60760 8006FF60 1400A3AF */  sw         $v1, 0x14($sp)
    /* 60764 8006FF64 00700324 */  addiu      $v1, $zero, 0x7000
    /* 60768 8006FF68 FF004230 */  andi       $v0, $v0, 0xFF
    /* 6076C 8006FF6C 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 60770 8006FF70 3000A2AF */  sw         $v0, 0x30($sp)
    /* 60774 8006FF74 3400A2AF */  sw         $v0, 0x34($sp)
    /* 60778 8006FF78 01000224 */  addiu      $v0, $zero, 0x1
    /* 6077C 8006FF7C 28000424 */  addiu      $a0, $zero, 0x28
    /* 60780 8006FF80 04000524 */  addiu      $a1, $zero, 0x4
    /* 60784 8006FF84 0060063C */  lui        $a2, (0x60000000 >> 16)
    /* 60788 8006FF88 21380000 */  addu       $a3, $zero, $zero
    /* 6078C 8006FF8C 4000BFAF */  sw         $ra, 0x40($sp)
    /* 60790 8006FF90 1000A0AF */  sw         $zero, 0x10($sp)
    /* 60794 8006FF94 1800A0AF */  sw         $zero, 0x18($sp)
    /* 60798 8006FF98 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* 6079C 8006FF9C 2000A3AF */  sw         $v1, 0x20($sp)
    /* 607A0 8006FFA0 2400A0AF */  sw         $zero, 0x24($sp)
    /* 607A4 8006FFA4 2800A0AF */  sw         $zero, 0x28($sp)
    /* 607A8 8006FFA8 3800A0AF */  sw         $zero, 0x38($sp)
    /* 607AC 8006FFAC 6B73000C */  jal        func_8001CDAC
    /* 607B0 8006FFB0 3C00A2AF */   sw        $v0, 0x3C($sp)
    /* 607B4 8006FFB4 4000BF8F */  lw         $ra, 0x40($sp)
    /* 607B8 8006FFB8 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 607BC 8006FFBC 0800E003 */  jr         $ra
    /* 607C0 8006FFC0 00000000 */   nop
endlabel func_8006FF48
