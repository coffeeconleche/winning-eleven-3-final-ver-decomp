nonmatching func_800B3578, 0x98

glabel func_800B3578
    /* A3D78 800B3578 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A3D7C 800B357C 1000B0AF */  sw         $s0, 0x10($sp)
    /* A3D80 800B3580 21808000 */  addu       $s0, $a0, $zero
    /* A3D84 800B3584 1800B2AF */  sw         $s2, 0x18($sp)
    /* A3D88 800B3588 2190A000 */  addu       $s2, $a1, $zero
    /* A3D8C 800B358C 2000B4AF */  sw         $s4, 0x20($sp)
    /* A3D90 800B3590 21A0E000 */  addu       $s4, $a3, $zero
    /* A3D94 800B3594 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A3D98 800B3598 2400BFAF */  sw         $ra, 0x24($sp)
    /* A3D9C 800B359C 1400B1AF */  sw         $s1, 0x14($sp)
    /* A3DA0 800B35A0 0800428E */  lw         $v0, 0x8($s2)
    /* A3DA4 800B35A4 FFFFC630 */  andi       $a2, $a2, 0xFFFF
    /* A3DA8 800B35A8 2388C200 */  subu       $s1, $a2, $v0
    /* A3DAC 800B35AC 04002106 */  bgez       $s1, .L800B35C0
    /* A3DB0 800B35B0 21988002 */   addu      $s3, $s4, $zero
    /* A3DB4 800B35B4 0180043C */  lui        $a0, %hi(D_8001504C)
    /* A3DB8 800B35B8 A6B5020C */  jal        func_800AD698
    /* A3DBC 800B35BC 4C508424 */   addiu     $a0, $a0, %lo(D_8001504C)
  .L800B35C0:
    /* A3DC0 800B35C0 0400438E */  lw         $v1, 0x4($s2)
    /* A3DC4 800B35C4 80101100 */  sll        $v0, $s1, 2
    /* A3DC8 800B35C8 21186200 */  addu       $v1, $v1, $v0
    /* A3DCC 800B35CC FF006232 */  andi       $v0, $s3, 0xFF
    /* A3DD0 800B35D0 80100200 */  sll        $v0, $v0, 2
    /* A3DD4 800B35D4 04004224 */  addiu      $v0, $v0, 0x4
    /* A3DD8 800B35D8 0000648C */  lw         $a0, 0x0($v1)
    /* A3DDC 800B35DC 21100202 */  addu       $v0, $s0, $v0
    /* A3DE0 800B35E0 000004AE */  sw         $a0, 0x0($s0)
    /* A3DE4 800B35E4 030014A2 */  sb         $s4, 0x3($s0)
    /* A3DE8 800B35E8 000070AC */  sw         $s0, 0x0($v1)
    /* A3DEC 800B35EC 030060A0 */  sb         $zero, 0x3($v1)
    /* A3DF0 800B35F0 2400BF8F */  lw         $ra, 0x24($sp)
    /* A3DF4 800B35F4 2000B48F */  lw         $s4, 0x20($sp)
    /* A3DF8 800B35F8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A3DFC 800B35FC 1800B28F */  lw         $s2, 0x18($sp)
    /* A3E00 800B3600 1400B18F */  lw         $s1, 0x14($sp)
    /* A3E04 800B3604 1000B08F */  lw         $s0, 0x10($sp)
    /* A3E08 800B3608 0800E003 */  jr         $ra
    /* A3E0C 800B360C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800B3578
    /* A3E10 800B3610 00000000 */  nop
    /* A3E14 800B3614 00000000 */  nop
