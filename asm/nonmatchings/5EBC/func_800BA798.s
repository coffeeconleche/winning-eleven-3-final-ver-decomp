nonmatching func_800BA798, 0x30

glabel func_800BA798
    /* AAF98 800BA798 0D80023C */  lui        $v0, %hi(D_800D4E74)
    /* AAF9C 800BA79C 744E428C */  lw         $v0, %lo(D_800D4E74)($v0)
    /* AAFA0 800BA7A0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AAFA4 800BA7A4 1000BFAF */  sw         $ra, 0x10($sp)
    /* AAFA8 800BA7A8 0400428C */  lw         $v0, 0x4($v0)
    /* AAFAC 800BA7AC 00000000 */  nop
    /* AAFB0 800BA7B0 09F84000 */  jalr       $v0
    /* AAFB4 800BA7B4 00000000 */   nop
    /* AAFB8 800BA7B8 1000BF8F */  lw         $ra, 0x10($sp)
    /* AAFBC 800BA7BC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AAFC0 800BA7C0 0800E003 */  jr         $ra
    /* AAFC4 800BA7C4 00000000 */   nop
endlabel func_800BA798
