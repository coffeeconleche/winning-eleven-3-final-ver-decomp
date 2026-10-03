nonmatching func_800BCC58, 0x104

glabel func_800BCC58
    /* AD458 800BCC58 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* AD45C 800BCC5C 3800BFAF */  sw         $ra, 0x38($sp)
    /* AD460 800BCC60 2138A000 */  addu       $a3, $a1, $zero
    /* AD464 800BCC64 21488000 */  addu       $t1, $a0, $zero
    /* AD468 800BCC68 00260400 */  sll        $a0, $a0, 24
    /* AD46C 800BCC6C 19008014 */  bnez       $a0, .L800BCCD4
    /* AD470 800BCC70 2140C000 */   addu      $t0, $a2, $zero
    /* AD474 800BCC74 C0000224 */  addiu      $v0, $zero, 0xC0
    /* AD478 800BCC78 1000A2AF */  sw         $v0, 0x10($sp)
    /* AD47C 800BCC7C 00140500 */  sll        $v0, $a1, 16
    /* AD480 800BCC80 03140200 */  sra        $v0, $v0, 16
    /* AD484 800BCC84 80004228 */  slti       $v0, $v0, 0x80
    /* AD488 800BCC88 02004014 */  bnez       $v0, .L800BCC94
    /* AD48C 800BCC8C 00140600 */   sll       $v0, $a2, 16
    /* AD490 800BCC90 7F000724 */  addiu      $a3, $zero, 0x7F
  .L800BCC94:
    /* AD494 800BCC94 03140200 */  sra        $v0, $v0, 16
    /* AD498 800BCC98 80004228 */  slti       $v0, $v0, 0x80
    /* AD49C 800BCC9C 02004014 */  bnez       $v0, .L800BCCA8
    /* AD4A0 800BCCA0 001C0700 */   sll       $v1, $a3, 16
    /* AD4A4 800BCCA4 7F000824 */  addiu      $t0, $zero, 0x7F
  .L800BCCA8:
    /* AD4A8 800BCCA8 031C0300 */  sra        $v1, $v1, 16
    /* AD4AC 800BCCAC C0110300 */  sll        $v0, $v1, 7
    /* AD4B0 800BCCB0 21104300 */  addu       $v0, $v0, $v1
    /* AD4B4 800BCCB4 40100200 */  sll        $v0, $v0, 1
    /* AD4B8 800BCCB8 001C0800 */  sll        $v1, $t0, 16
    /* AD4BC 800BCCBC 031C0300 */  sra        $v1, $v1, 16
    /* AD4C0 800BCCC0 2000A2A7 */  sh         $v0, 0x20($sp)
    /* AD4C4 800BCCC4 C0110300 */  sll        $v0, $v1, 7
    /* AD4C8 800BCCC8 21104300 */  addu       $v0, $v0, $v1
    /* AD4CC 800BCCCC 40100200 */  sll        $v0, $v0, 1
    /* AD4D0 800BCCD0 2200A2A7 */  sh         $v0, 0x22($sp)
  .L800BCCD4:
    /* AD4D4 800BCCD4 00160900 */  sll        $v0, $t1, 24
    /* AD4D8 800BCCD8 03160200 */  sra        $v0, $v0, 24
    /* AD4DC 800BCCDC 01000324 */  addiu      $v1, $zero, 0x1
    /* AD4E0 800BCCE0 18004314 */  bne        $v0, $v1, .L800BCD44
    /* AD4E4 800BCCE4 000C0224 */   addiu     $v0, $zero, 0xC00
    /* AD4E8 800BCCE8 1000A2AF */  sw         $v0, 0x10($sp)
    /* AD4EC 800BCCEC 00140700 */  sll        $v0, $a3, 16
    /* AD4F0 800BCCF0 03140200 */  sra        $v0, $v0, 16
    /* AD4F4 800BCCF4 80004228 */  slti       $v0, $v0, 0x80
    /* AD4F8 800BCCF8 02004014 */  bnez       $v0, .L800BCD04
    /* AD4FC 800BCCFC 00140800 */   sll       $v0, $t0, 16
    /* AD500 800BCD00 7F000724 */  addiu      $a3, $zero, 0x7F
  .L800BCD04:
    /* AD504 800BCD04 03140200 */  sra        $v0, $v0, 16
    /* AD508 800BCD08 80004228 */  slti       $v0, $v0, 0x80
    /* AD50C 800BCD0C 02004014 */  bnez       $v0, .L800BCD18
    /* AD510 800BCD10 001C0700 */   sll       $v1, $a3, 16
    /* AD514 800BCD14 7F000824 */  addiu      $t0, $zero, 0x7F
  .L800BCD18:
    /* AD518 800BCD18 031C0300 */  sra        $v1, $v1, 16
    /* AD51C 800BCD1C C0110300 */  sll        $v0, $v1, 7
    /* AD520 800BCD20 21104300 */  addu       $v0, $v0, $v1
    /* AD524 800BCD24 40100200 */  sll        $v0, $v0, 1
    /* AD528 800BCD28 001C0800 */  sll        $v1, $t0, 16
    /* AD52C 800BCD2C 031C0300 */  sra        $v1, $v1, 16
    /* AD530 800BCD30 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* AD534 800BCD34 C0110300 */  sll        $v0, $v1, 7
    /* AD538 800BCD38 21104300 */  addu       $v0, $v0, $v1
    /* AD53C 800BCD3C 40100200 */  sll        $v0, $v0, 1
    /* AD540 800BCD40 2E00A2A7 */  sh         $v0, 0x2E($sp)
  .L800BCD44:
    /* AD544 800BCD44 F20F030C */  jal        func_800C3FC8
    /* AD548 800BCD48 1000A427 */   addiu     $a0, $sp, 0x10
    /* AD54C 800BCD4C 3800BF8F */  lw         $ra, 0x38($sp)
    /* AD550 800BCD50 4000BD27 */  addiu      $sp, $sp, 0x40
    /* AD554 800BCD54 0800E003 */  jr         $ra
    /* AD558 800BCD58 00000000 */   nop
endlabel func_800BCC58
    /* AD55C 800BCD5C 00000000 */  nop
    /* AD560 800BCD60 00000000 */  nop
    /* AD564 800BCD64 00000000 */  nop
