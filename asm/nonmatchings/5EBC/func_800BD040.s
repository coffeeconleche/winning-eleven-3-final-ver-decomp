nonmatching func_800BD040, 0xC4

glabel func_800BD040
    /* AD840 800BD040 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AD844 800BD044 21408000 */  addu       $t0, $a0, $zero
    /* AD848 800BD048 2148C000 */  addu       $t1, $a2, $zero
    /* AD84C 800BD04C 00240800 */  sll        $a0, $t0, 16
    /* AD850 800BD050 83230400 */  sra        $a0, $a0, 14
    /* AD854 800BD054 001C0500 */  sll        $v1, $a1, 16
    /* AD858 800BD058 031C0300 */  sra        $v1, $v1, 16
    /* AD85C 800BD05C 40100300 */  sll        $v0, $v1, 1
    /* AD860 800BD060 21104300 */  addu       $v0, $v0, $v1
    /* AD864 800BD064 80100200 */  sll        $v0, $v0, 2
    /* AD868 800BD068 23104300 */  subu       $v0, $v0, $v1
    /* AD86C 800BD06C 1000BFAF */  sw         $ra, 0x10($sp)
    /* AD870 800BD070 1180033C */  lui        $v1, %hi(D_8010C2A8)
    /* AD874 800BD074 21186400 */  addu       $v1, $v1, $a0
    /* AD878 800BD078 A8C2638C */  lw         $v1, %lo(D_8010C2A8)($v1)
    /* AD87C 800BD07C 00110200 */  sll        $v0, $v0, 4
    /* AD880 800BD080 21206200 */  addu       $a0, $v1, $v0
    /* AD884 800BD084 9800838C */  lw         $v1, 0x98($a0)
    /* AD888 800BD088 01000224 */  addiu      $v0, $zero, 0x1
    /* AD88C 800BD08C 04006210 */  beq        $v1, $v0, .L800BD0A0
    /* AD890 800BD090 2150E000 */   addu      $t2, $a3, $zero
    /* AD894 800BD094 580086A4 */  sh         $a2, 0x58($a0)
    /* AD898 800BD098 30F40208 */  j          .L800BD0C0
    /* AD89C 800BD09C 5A0087A4 */   sh        $a3, 0x5A($a0)
  .L800BD0A0:
    /* AD8A0 800BD0A0 00220500 */  sll        $a0, $a1, 8
    /* AD8A4 800BD0A4 25200401 */  or         $a0, $t0, $a0
    /* AD8A8 800BD0A8 00240400 */  sll        $a0, $a0, 16
    /* AD8AC 800BD0AC 03240400 */  sra        $a0, $a0, 16
    /* AD8B0 800BD0B0 FFFF2531 */  andi       $a1, $t1, 0xFFFF
    /* AD8B4 800BD0B4 FFFF4631 */  andi       $a2, $t2, 0xFFFF
    /* AD8B8 800BD0B8 AE00030C */  jal        func_800C02B8
    /* AD8BC 800BD0BC 01000724 */   addiu     $a3, $zero, 0x1
  .L800BD0C0:
    /* AD8C0 800BD0C0 1000BF8F */  lw         $ra, 0x10($sp)
    /* AD8C4 800BD0C4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AD8C8 800BD0C8 0800E003 */  jr         $ra
    /* AD8CC 800BD0CC 00000000 */   nop
    /* AD8D0 800BD0D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AD8D4 800BD0D4 1000BFAF */  sw         $ra, 0x10($sp)
    /* AD8D8 800BD0D8 002A0500 */  sll        $a1, $a1, 8
    /* AD8DC 800BD0DC 25208500 */  or         $a0, $a0, $a1
    /* AD8E0 800BD0E0 00240400 */  sll        $a0, $a0, 16
    /* AD8E4 800BD0E4 03240400 */  sra        $a0, $a0, 16
    /* AD8E8 800BD0E8 2128C000 */  addu       $a1, $a2, $zero
    /* AD8EC 800BD0EC 0F02030C */  jal        func_800C083C
    /* AD8F0 800BD0F0 2130E000 */   addu      $a2, $a3, $zero
    /* AD8F4 800BD0F4 1000BF8F */  lw         $ra, 0x10($sp)
    /* AD8F8 800BD0F8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AD8FC 800BD0FC 0800E003 */  jr         $ra
    /* AD900 800BD100 00000000 */   nop
endlabel func_800BD040
    /* AD904 800BD104 00000000 */  nop
