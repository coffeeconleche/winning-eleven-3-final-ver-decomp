nonmatching func_801926EC, 0x34

glabel func_801926EC
    /* 9774 801926EC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9778 801926F0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 977C 801926F4 21808000 */  addu       $s0, $a0, $zero
    /* 9780 801926F8 1400BFAF */  sw         $ra, 0x14($sp)
  .L801926FC:
    /* 9784 801926FC 9317030C */  jal        func_800C5E4C
    /* 9788 80192700 00211000 */   sll       $a0, $s0, 4
    /* 978C 80192704 FDFF4010 */  beqz       $v0, .L801926FC
    /* 9790 80192708 00000000 */   nop
    /* 9794 8019270C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9798 80192710 1000B08F */  lw         $s0, 0x10($sp)
    /* 979C 80192714 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 97A0 80192718 0800E003 */  jr         $ra
    /* 97A4 8019271C 00000000 */   nop
endlabel func_801926EC
