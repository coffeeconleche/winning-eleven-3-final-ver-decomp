nonmatching func_8002A83C, 0xB8

glabel func_8002A83C
    /* 1B03C 8002A83C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1B040 8002A840 1800BFAF */  sw         $ra, 0x18($sp)
    /* 1B044 8002A844 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1B048 8002A848 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1B04C 8002A84C 9A038290 */  lbu        $v0, 0x39A($a0)
    /* 1B050 8002A850 00000000 */  nop
    /* 1B054 8002A854 21004014 */  bnez       $v0, .L8002A8DC
    /* 1B058 8002A858 2180A000 */   addu      $s0, $a1, $zero
    /* 1B05C 8002A85C 801F033C */  lui        $v1, (0x1F8002E2 >> 16)
    /* 1B060 8002A860 E2026390 */  lbu        $v1, (0x1F8002E2 & 0xFFFF)($v1)
    /* 1B064 8002A864 02000224 */  addiu      $v0, $zero, 0x2
    /* 1B068 8002A868 05006214 */  bne        $v1, $v0, .L8002A880
    /* 1B06C 8002A86C 00000000 */   nop
    /* 1B070 8002A870 676E010C */  jal        func_8005B99C
    /* 1B074 8002A874 00000000 */   nop
    /* 1B078 8002A878 23AA0008 */  j          .L8002A88C
    /* 1B07C 8002A87C FF004430 */   andi      $a0, $v0, 0xFF
  .L8002A880:
    /* 1B080 8002A880 99038290 */  lbu        $v0, 0x399($a0)
    /* 1B084 8002A884 00000000 */  nop
    /* 1B088 8002A888 FF004430 */  andi       $a0, $v0, 0xFF
  .L8002A88C:
    /* 1B08C 8002A88C 05008010 */  beqz       $a0, .L8002A8A4
    /* 1B090 8002A890 01000224 */   addiu     $v0, $zero, 0x1
    /* 1B094 8002A894 04008210 */  beq        $a0, $v0, .L8002A8A8
    /* 1B098 8002A898 08000424 */   addiu     $a0, $zero, 0x8
    /* 1B09C 8002A89C 2EAA0008 */  j          .L8002A8B8
    /* 1B0A0 8002A8A0 FF000232 */   andi      $v0, $s0, 0xFF
  .L8002A8A4:
    /* 1B0A4 8002A8A4 07000424 */  addiu      $a0, $zero, 0x7
  .L8002A8A8:
    /* 1B0A8 8002A8A8 0174000C */  jal        func_8001D004
    /* 1B0AC 8002A8AC 00000000 */   nop
    /* 1B0B0 8002A8B0 21884000 */  addu       $s1, $v0, $zero
    /* 1B0B4 8002A8B4 FF000232 */  andi       $v0, $s0, 0xFF
  .L8002A8B8:
    /* 1B0B8 8002A8B8 1100422C */  sltiu      $v0, $v0, 0x11
    /* 1B0BC 8002A8BC 03004014 */  bnez       $v0, .L8002A8CC
    /* 1B0C0 8002A8C0 FF000332 */   andi      $v1, $s0, 0xFF
    /* 1B0C4 8002A8C4 10001024 */  addiu      $s0, $zero, 0x10
    /* 1B0C8 8002A8C8 FF000332 */  andi       $v1, $s0, 0xFF
  .L8002A8CC:
    /* 1B0CC 8002A8CC 40100300 */  sll        $v0, $v1, 1
    /* 1B0D0 8002A8D0 21104300 */  addu       $v0, $v0, $v1
    /* 1B0D4 8002A8D4 40100200 */  sll        $v0, $v0, 1
    /* 1B0D8 8002A8D8 010022A2 */  sb         $v0, 0x1($s1)
  .L8002A8DC:
    /* 1B0DC 8002A8DC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1B0E0 8002A8E0 1400B18F */  lw         $s1, 0x14($sp)
    /* 1B0E4 8002A8E4 1000B08F */  lw         $s0, 0x10($sp)
    /* 1B0E8 8002A8E8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1B0EC 8002A8EC 0800E003 */  jr         $ra
    /* 1B0F0 8002A8F0 00000000 */   nop
endlabel func_8002A83C
