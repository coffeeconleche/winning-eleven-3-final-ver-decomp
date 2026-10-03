nonmatching func_800ABD5C, 0x120

glabel func_800ABD5C
    /* 9C55C 800ABD5C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9C560 800ABD60 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9C564 800ABD64 21808000 */  addu       $s0, $a0, $zero
    /* 9C568 800ABD68 7F000434 */  ori        $a0, $zero, 0x7F
    /* 9C56C 800ABD6C 7F000534 */  ori        $a1, $zero, 0x7F
    /* 9C570 800ABD70 1800BFAF */  sw         $ra, 0x18($sp)
    /* 9C574 800ABD74 C6F1020C */  jal        func_800BC718
    /* 9C578 800ABD78 1400B1AF */   sw        $s1, 0x14($sp)
    /* 9C57C 800ABD7C EA008397 */  lhu        $v1, %gp_rel(D_800E6B76)($gp)
    /* 9C580 800ABD80 00000000 */  nop
    /* 9C584 800ABD84 1E006010 */  beqz       $v1, .L800ABE00
    /* 9C588 800ABD88 21880000 */   addu      $s1, $zero, $zero
    /* 9C58C 800ABD8C 26107000 */  xor        $v0, $v1, $s0
    /* 9C590 800ABD90 0100512C */  sltiu      $s1, $v0, 0x1
    /* 9C594 800ABD94 0002622C */  sltiu      $v0, $v1, 0x200
    /* 9C598 800ABD98 0E004014 */  bnez       $v0, .L800ABDD4
    /* 9C59C 800ABD9C 0002022A */   slti      $v0, $s0, 0x200
    /* 9C5A0 800ABDA0 18004010 */  beqz       $v0, .L800ABE04
    /* 9C5A4 800ABDA4 00000000 */   nop
    /* 9C5A8 800ABDA8 C0008287 */  lh         $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9C5AC 800ABDAC 00000000 */  nop
    /* 9C5B0 800ABDB0 03004228 */  slti       $v0, $v0, 0x3
    /* 9C5B4 800ABDB4 02004014 */  bnez       $v0, .L800ABDC0
    /* 9C5B8 800ABDB8 08000234 */   ori       $v0, $zero, 0x8
    /* 9C5BC 800ABDBC C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
  .L800ABDC0:
    /* 9C5C0 800ABDC0 7AA5020C */  jal        func_800A95E8
    /* 9C5C4 800ABDC4 00000000 */   nop
    /* 9C5C8 800ABDC8 C00080A7 */  sh         $zero, %gp_rel(D_800E6B4C)($gp)
    /* 9C5CC 800ABDCC 81AF0208 */  j          .L800ABE04
    /* 9C5D0 800ABDD0 0002022A */   slti      $v0, $s0, 0x200
  .L800ABDD4:
    /* 9C5D4 800ABDD4 0B002016 */  bnez       $s1, .L800ABE04
    /* 9C5D8 800ABDD8 00000000 */   nop
    /* 9C5DC 800ABDDC F6008297 */  lhu        $v0, %gp_rel(D_800E6B82)($gp)
    /* 9C5E0 800ABDE0 00000000 */  nop
    /* 9C5E4 800ABDE4 40110200 */  sll        $v0, $v0, 5
    /* 9C5E8 800ABDE8 0D80013C */  lui        $at, %hi(D_800CE845)
    /* 9C5EC 800ABDEC 45E82124 */  addiu      $at, $at, %lo(D_800CE845)
    /* 9C5F0 800ABDF0 21082200 */  addu       $at, $at, $v0
    /* 9C5F4 800ABDF4 00002490 */  lbu        $a0, 0x0($at)
    /* 9C5F8 800ABDF8 FEF2020C */  jal        func_800BCBF8
    /* 9C5FC 800ABDFC 00000000 */   nop
  .L800ABE00:
    /* 9C600 800ABE00 0002022A */  slti       $v0, $s0, 0x200
  .L800ABE04:
    /* 9C604 800ABE04 EA0090A7 */  sh         $s0, %gp_rel(D_800E6B76)($gp)
    /* 9C608 800ABE08 4C0180A3 */  sb         $zero, %gp_rel(D_800E6BD8)($gp)
    /* 9C60C 800ABE0C 8A0080A7 */  sh         $zero, %gp_rel(D_800E6B16)($gp)
    /* 9C610 800ABE10 14004014 */  bnez       $v0, .L800ABE64
    /* 9C614 800ABE14 00000000 */   nop
    /* 9C618 800ABE18 0004022A */  slti       $v0, $s0, 0x400
    /* 9C61C 800ABE1C 0B004014 */  bnez       $v0, .L800ABE4C
    /* 9C620 800ABE20 0003022A */   slti      $v0, $s0, 0x300
    /* 9C624 800ABE24 1EF7020C */  jal        func_800BDC78
    /* 9C628 800ABE28 12000434 */   ori       $a0, $zero, 0x12
    /* 9C62C 800ABE2C 1EF7020C */  jal        func_800BDC78
    /* 9C630 800ABE30 13000434 */   ori       $a0, $zero, 0x13
    /* 9C634 800ABE34 1EF7020C */  jal        func_800BDC78
    /* 9C638 800ABE38 14000434 */   ori       $a0, $zero, 0x14
    /* 9C63C 800ABE3C 1EF7020C */  jal        func_800BDC78
    /* 9C640 800ABE40 15000434 */   ori       $a0, $zero, 0x15
    /* 9C644 800ABE44 99AF0208 */  j          .L800ABE64
    /* 9C648 800ABE48 00000000 */   nop
  .L800ABE4C:
    /* 9C64C 800ABE4C 03004010 */  beqz       $v0, .L800ABE5C
    /* 9C650 800ABE50 00000000 */   nop
    /* 9C654 800ABE54 03002016 */  bnez       $s1, .L800ABE64
    /* 9C658 800ABE58 00000000 */   nop
  .L800ABE5C:
    /* 9C65C 800ABE5C 08000234 */  ori        $v0, $zero, 0x8
    /* 9C660 800ABE60 C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
  .L800ABE64:
    /* 9C664 800ABE64 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9C668 800ABE68 1400B18F */  lw         $s1, 0x14($sp)
    /* 9C66C 800ABE6C 1000B08F */  lw         $s0, 0x10($sp)
    /* 9C670 800ABE70 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 9C674 800ABE74 0800E003 */  jr         $ra
    /* 9C678 800ABE78 00000000 */   nop
endlabel func_800ABD5C
