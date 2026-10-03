nonmatching func_8004F66C, 0x124

glabel func_8004F66C
    /* 3FE6C 8004F66C B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 3FE70 8004F670 3000B2AF */  sw         $s2, 0x30($sp)
    /* 3FE74 8004F674 FF009230 */  andi       $s2, $a0, 0xFF
    /* 3FE78 8004F678 4000BFAF */  sw         $ra, 0x40($sp)
    /* 3FE7C 8004F67C 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 3FE80 8004F680 3800B4AF */  sw         $s4, 0x38($sp)
    /* 3FE84 8004F684 3400B3AF */  sw         $s3, 0x34($sp)
    /* 3FE88 8004F688 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 3FE8C 8004F68C 2800B0AF */  sw         $s0, 0x28($sp)
    /* 3FE90 8004F690 0C80013C */  lui        $at, %hi(D_800C7BB8)
    /* 3FE94 8004F694 21083200 */  addu       $at, $at, $s2
    /* 3FE98 8004F698 B87B2290 */  lbu        $v0, %lo(D_800C7BB8)($at)
    /* 3FE9C 8004F69C 00000000 */  nop
    /* 3FEA0 8004F6A0 31004018 */  blez       $v0, .L8004F768
    /* 3FEA4 8004F6A4 21880000 */   addu      $s1, $zero, $zero
    /* 3FEA8 8004F6A8 0C80153C */  lui        $s5, %hi(D_800C7C14)
    /* 3FEAC 8004F6AC 147CB526 */  addiu      $s5, $s5, %lo(D_800C7C14)
    /* 3FEB0 8004F6B0 0C80143C */  lui        $s4, %hi(D_800C7BC4)
    /* 3FEB4 8004F6B4 C47B9426 */  addiu      $s4, $s4, %lo(D_800C7BC4)
    /* 3FEB8 8004F6B8 0C80133C */  lui        $s3, %hi(D_800C7B88)
    /* 3FEBC 8004F6BC 887B7326 */  addiu      $s3, $s3, %lo(D_800C7B88)
    /* 3FEC0 8004F6C0 80101200 */  sll        $v0, $s2, 2
  .L8004F6C4:
    /* 3FEC4 8004F6C4 21105200 */  addu       $v0, $v0, $s2
    /* 3FEC8 8004F6C8 40180200 */  sll        $v1, $v0, 1
    /* 3FECC 8004F6CC 21187500 */  addu       $v1, $v1, $s5
    /* 3FED0 8004F6D0 21187100 */  addu       $v1, $v1, $s1
    /* 3FED4 8004F6D4 80100200 */  sll        $v0, $v0, 2
    /* 3FED8 8004F6D8 21105400 */  addu       $v0, $v0, $s4
    /* 3FEDC 8004F6DC 40801100 */  sll        $s0, $s1, 1
    /* 3FEE0 8004F6E0 21100202 */  addu       $v0, $s0, $v0
    /* 3FEE4 8004F6E4 00006590 */  lbu        $a1, 0x0($v1)
    /* 3FEE8 8004F6E8 00004784 */  lh         $a3, 0x0($v0)
    /* 3FEEC 8004F6EC 06000224 */  addiu      $v0, $zero, 0x6
    /* 3FEF0 8004F6F0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3FEF4 8004F6F4 01000224 */  addiu      $v0, $zero, 0x1
    /* 3FEF8 8004F6F8 1A002426 */  addiu      $a0, $s1, 0x1A
    /* 3FEFC 8004F6FC 21300000 */  addu       $a2, $zero, $zero
    /* 3FF00 8004F700 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3FF04 8004F704 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3FF08 8004F708 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 3FF0C 8004F70C C8FFA524 */  addiu      $a1, $a1, -0x38
    /* 3FF10 8004F710 B873000C */  jal        func_8001CEE0
    /* 3FF14 8004F714 E000E724 */   addiu     $a3, $a3, 0xE0
    /* 3FF18 8004F718 21204002 */  addu       $a0, $s2, $zero
    /* 3FF1C 8004F71C 40101200 */  sll        $v0, $s2, 1
    /* 3FF20 8004F720 21105200 */  addu       $v0, $v0, $s2
    /* 3FF24 8004F724 80100200 */  sll        $v0, $v0, 2
    /* 3FF28 8004F728 21105300 */  addu       $v0, $v0, $s3
    /* 3FF2C 8004F72C 21105100 */  addu       $v0, $v0, $s1
    /* 3FF30 8004F730 00004390 */  lbu        $v1, 0x0($v0)
    /* 3FF34 8004F734 0C80013C */  lui        $at, %hi(D_800C7BB8)
    /* 3FF38 8004F738 21082400 */  addu       $at, $at, $a0
    /* 3FF3C 8004F73C B87B2290 */  lbu        $v0, %lo(D_800C7BB8)($at)
    /* 3FF40 8004F740 01003126 */  addiu      $s1, $s1, 0x1
    /* 3FF44 8004F744 0E80013C */  lui        $at, %hi(D_800E6C28)
    /* 3FF48 8004F748 21083000 */  addu       $at, $at, $s0
    /* 3FF4C 8004F74C 286C20A4 */  sh         $zero, %lo(D_800E6C28)($at)
    /* 3FF50 8004F750 2A102202 */  slt        $v0, $s1, $v0
    /* 3FF54 8004F754 0E80013C */  lui        $at, %hi(D_800E6C48)
    /* 3FF58 8004F758 21083000 */  addu       $at, $at, $s0
    /* 3FF5C 8004F75C 486C23A4 */  sh         $v1, %lo(D_800E6C48)($at)
    /* 3FF60 8004F760 D8FF4014 */  bnez       $v0, .L8004F6C4
    /* 3FF64 8004F764 80101200 */   sll       $v0, $s2, 2
  .L8004F768:
    /* 3FF68 8004F768 4000BF8F */  lw         $ra, 0x40($sp)
    /* 3FF6C 8004F76C 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 3FF70 8004F770 3800B48F */  lw         $s4, 0x38($sp)
    /* 3FF74 8004F774 3400B38F */  lw         $s3, 0x34($sp)
    /* 3FF78 8004F778 3000B28F */  lw         $s2, 0x30($sp)
    /* 3FF7C 8004F77C 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 3FF80 8004F780 2800B08F */  lw         $s0, 0x28($sp)
    /* 3FF84 8004F784 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 3FF88 8004F788 0800E003 */  jr         $ra
    /* 3FF8C 8004F78C 00000000 */   nop
endlabel func_8004F66C
