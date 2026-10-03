nonmatching func_800AE388, 0xA4

glabel func_800AE388
    /* 9EB88 800AE388 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9EB8C 800AE38C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9EB90 800AE390 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9EB94 800AE394 0D80113C */  lui        $s1, %hi(D_800CEAC5)
    /* 9EB98 800AE398 C5EA3126 */  addiu      $s1, $s1, %lo(D_800CEAC5)
    /* 9EB9C 800AE39C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 9EBA0 800AE3A0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9EBA4 800AE3A4 01002292 */  lbu        $v0, 0x1($s1)
    /* 9EBA8 800AE3A8 00003292 */  lbu        $s2, 0x0($s1)
    /* 9EBAC 800AE3AC 0200422C */  sltiu      $v0, $v0, 0x2
    /* 9EBB0 800AE3B0 08004014 */  bnez       $v0, .L800AE3D4
    /* 9EBB4 800AE3B4 21808000 */   addu      $s0, $a0, $zero
    /* 9EBB8 800AE3B8 0180043C */  lui        $a0, %hi(D_80014EC0)
    /* 9EBBC 800AE3BC C04E8424 */  addiu      $a0, $a0, %lo(D_80014EC0)
    /* 9EBC0 800AE3C0 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9EBC4 800AE3C4 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9EBC8 800AE3C8 00000000 */  nop
    /* 9EBCC 800AE3CC 09F84000 */  jalr       $v0
    /* 9EBD0 800AE3D0 21280002 */   addu      $a1, $s0, $zero
  .L800AE3D4:
    /* 9EBD4 800AE3D4 00002292 */  lbu        $v0, 0x0($s1)
    /* 9EBD8 800AE3D8 00000000 */  nop
    /* 9EBDC 800AE3DC 0D000212 */  beq        $s0, $v0, .L800AE414
    /* 9EBE0 800AE3E0 21104002 */   addu      $v0, $s2, $zero
    /* 9EBE4 800AE3E4 0D80023C */  lui        $v0, %hi(D_800CEABC)
    /* 9EBE8 800AE3E8 BCEA428C */  lw         $v0, %lo(D_800CEABC)($v0)
    /* 9EBEC 800AE3EC 00000000 */  nop
    /* 9EBF0 800AE3F0 3400428C */  lw         $v0, 0x34($v0)
    /* 9EBF4 800AE3F4 00000000 */  nop
    /* 9EBF8 800AE3F8 09F84000 */  jalr       $v0
    /* 9EBFC 800AE3FC 01000424 */   addiu     $a0, $zero, 0x1
    /* 9EC00 800AE400 02000424 */  addiu      $a0, $zero, 0x2
    /* 9EC04 800AE404 21280000 */  addu       $a1, $zero, $zero
    /* 9EC08 800AE408 E6E9020C */  jal        func_800BA798
    /* 9EC0C 800AE40C 000030A2 */   sb        $s0, 0x0($s1)
    /* 9EC10 800AE410 21104002 */  addu       $v0, $s2, $zero
  .L800AE414:
    /* 9EC14 800AE414 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 9EC18 800AE418 1800B28F */  lw         $s2, 0x18($sp)
    /* 9EC1C 800AE41C 1400B18F */  lw         $s1, 0x14($sp)
    /* 9EC20 800AE420 1000B08F */  lw         $s0, 0x10($sp)
    /* 9EC24 800AE424 0800E003 */  jr         $ra
    /* 9EC28 800AE428 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800AE388
