nonmatching func_800BA690, 0x98

glabel func_800BA690
    /* AAE90 800BA690 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* AAE94 800BA694 C02B0500 */  sll        $a1, $a1, 15
    /* AAE98 800BA698 1000A5AF */  sw         $a1, 0x10($sp)
    /* AAE9C 800BA69C 0D80023C */  lui        $v0, %hi(D_800D4EB4)
    /* AAEA0 800BA6A0 B44E428C */  lw         $v0, %lo(D_800D4EB4)($v0)
    /* AAEA4 800BA6A4 00000000 */  nop
    /* AAEA8 800BA6A8 2A104400 */  slt        $v0, $v0, $a0
    /* AAEAC 800BA6AC 1A004010 */  beqz       $v0, .L800BA718
    /* AAEB0 800BA6B0 1800BFAF */   sw        $ra, 0x18($sp)
    /* AAEB4 800BA6B4 FFFF0324 */  addiu      $v1, $zero, -0x1
  .L800BA6B8:
    /* AAEB8 800BA6B8 1000A28F */  lw         $v0, 0x10($sp)
    /* AAEBC 800BA6BC 00000000 */  nop
    /* AAEC0 800BA6C0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* AAEC4 800BA6C4 1000A2AF */  sw         $v0, 0x10($sp)
    /* AAEC8 800BA6C8 1000A28F */  lw         $v0, 0x10($sp)
    /* AAECC 800BA6CC 00000000 */  nop
    /* AAED0 800BA6D0 0B004314 */  bne        $v0, $v1, .L800BA700
    /* AAED4 800BA6D4 00000000 */   nop
    /* AAED8 800BA6D8 0180043C */  lui        $a0, %hi(D_8001544C)
    /* AAEDC 800BA6DC 60E3020C */  jal        func_800B8D80
    /* AAEE0 800BA6E0 4C548424 */   addiu     $a0, $a0, %lo(D_8001544C)
    /* AAEE4 800BA6E4 C2B3020C */  jal        func_800ACF08
    /* AAEE8 800BA6E8 21200000 */   addu      $a0, $zero, $zero
    /* AAEEC 800BA6EC 03000424 */  addiu      $a0, $zero, 0x3
    /* AAEF0 800BA6F0 CAE9020C */  jal        func_800BA728
    /* AAEF4 800BA6F4 21280000 */   addu      $a1, $zero, $zero
    /* AAEF8 800BA6F8 C6E90208 */  j          .L800BA718
    /* AAEFC 800BA6FC 00000000 */   nop
  .L800BA700:
    /* AAF00 800BA700 0D80023C */  lui        $v0, %hi(D_800D4EB4)
    /* AAF04 800BA704 B44E428C */  lw         $v0, %lo(D_800D4EB4)($v0)
    /* AAF08 800BA708 00000000 */  nop
    /* AAF0C 800BA70C 2A104400 */  slt        $v0, $v0, $a0
    /* AAF10 800BA710 E9FF4014 */  bnez       $v0, .L800BA6B8
    /* AAF14 800BA714 00000000 */   nop
  .L800BA718:
    /* AAF18 800BA718 1800BF8F */  lw         $ra, 0x18($sp)
    /* AAF1C 800BA71C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* AAF20 800BA720 0800E003 */  jr         $ra
    /* AAF24 800BA724 00000000 */   nop
endlabel func_800BA690
