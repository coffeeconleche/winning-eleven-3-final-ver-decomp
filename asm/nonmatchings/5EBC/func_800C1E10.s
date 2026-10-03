nonmatching func_800C1E10, 0x5C

glabel func_800C1E10
    /* B2610 800C1E10 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* B2614 800C1E14 0D000224 */  addiu      $v0, $zero, 0xD
    /* B2618 800C1E18 0400A2AF */  sw         $v0, 0x4($sp)
    /* B261C 800C1E1C 94070308 */  j          .L800C1E50
    /* B2620 800C1E20 0000A0AF */   sw        $zero, 0x0($sp)
  .L800C1E24:
    /* B2624 800C1E24 0400A38F */  lw         $v1, 0x4($sp)
    /* B2628 800C1E28 00000000 */  nop
    /* B262C 800C1E2C 40100300 */  sll        $v0, $v1, 1
    /* B2630 800C1E30 21104300 */  addu       $v0, $v0, $v1
    /* B2634 800C1E34 80100200 */  sll        $v0, $v0, 2
    /* B2638 800C1E38 21104300 */  addu       $v0, $v0, $v1
    /* B263C 800C1E3C 0400A2AF */  sw         $v0, 0x4($sp)
    /* B2640 800C1E40 0000A28F */  lw         $v0, 0x0($sp)
    /* B2644 800C1E44 00000000 */  nop
    /* B2648 800C1E48 01004224 */  addiu      $v0, $v0, 0x1
    /* B264C 800C1E4C 0000A2AF */  sw         $v0, 0x0($sp)
  .L800C1E50:
    /* B2650 800C1E50 0000A28F */  lw         $v0, 0x0($sp)
    /* B2654 800C1E54 00000000 */  nop
    /* B2658 800C1E58 3C004228 */  slti       $v0, $v0, 0x3C
    /* B265C 800C1E5C F1FF4014 */  bnez       $v0, .L800C1E24
    /* B2660 800C1E60 00000000 */   nop
    /* B2664 800C1E64 0800E003 */  jr         $ra
    /* B2668 800C1E68 0800BD27 */   addiu     $sp, $sp, 0x8
endlabel func_800C1E10
    /* B266C 800C1E6C 00000000 */  nop
    /* B2670 800C1E70 00000000 */  nop
    /* B2674 800C1E74 00000000 */  nop
