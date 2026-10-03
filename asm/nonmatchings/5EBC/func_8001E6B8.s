nonmatching func_8001E6B8, 0x78

glabel func_8001E6B8
    /* EEB8 8001E6B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* EEBC 8001E6BC 1000B0AF */  sw         $s0, 0x10($sp)
    /* EEC0 8001E6C0 21808000 */  addu       $s0, $a0, $zero
    /* EEC4 8001E6C4 14000012 */  beqz       $s0, .L8001E718
    /* EEC8 8001E6C8 1400BFAF */   sw        $ra, 0x14($sp)
    /* EECC 8001E6CC 9EB5020C */  jal        func_800AD678
    /* EED0 8001E6D0 00000000 */   nop
    /* EED4 8001E6D4 801F033C */  lui        $v1, (0x1F800290 >> 16)
    /* EED8 8001E6D8 9002638C */  lw         $v1, (0x1F800290 & 0xFFFF)($v1)
    /* EEDC 8001E6DC 00000000 */  nop
    /* EEE0 8001E6E0 21184300 */  addu       $v1, $v0, $v1
    /* EEE4 8001E6E4 1A007000 */  div        $zero, $v1, $s0
    /* EEE8 8001E6E8 02000016 */  bnez       $s0, .L8001E6F4
    /* EEEC 8001E6EC 00000000 */   nop
    /* EEF0 8001E6F0 0D000700 */  break      7
  .L8001E6F4:
    /* EEF4 8001E6F4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* EEF8 8001E6F8 04000116 */  bne        $s0, $at, .L8001E70C
    /* EEFC 8001E6FC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* EF00 8001E700 02006114 */  bne        $v1, $at, .L8001E70C
    /* EF04 8001E704 00000000 */   nop
    /* EF08 8001E708 0D000600 */  break      6
  .L8001E70C:
    /* EF0C 8001E70C 10100000 */  mfhi       $v0
    /* EF10 8001E710 C7790008 */  j          .L8001E71C
    /* EF14 8001E714 00000000 */   nop
  .L8001E718:
    /* EF18 8001E718 21100000 */  addu       $v0, $zero, $zero
  .L8001E71C:
    /* EF1C 8001E71C 1400BF8F */  lw         $ra, 0x14($sp)
    /* EF20 8001E720 1000B08F */  lw         $s0, 0x10($sp)
    /* EF24 8001E724 1800BD27 */  addiu      $sp, $sp, 0x18
    /* EF28 8001E728 0800E003 */  jr         $ra
    /* EF2C 8001E72C 00000000 */   nop
endlabel func_8001E6B8
