nonmatching func_800AF590, 0x270

glabel func_800AF590
    /* 9FD90 800AF590 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9FD94 800AF594 1800B0AF */  sw         $s0, 0x18($sp)
    /* 9FD98 800AF598 2180A000 */  addu       $s0, $a1, $zero
    /* 9FD9C 800AF59C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 9FDA0 800AF5A0 21888000 */  addu       $s1, $a0, $zero
    /* 9FDA4 800AF5A4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 9FDA8 800AF5A8 00000486 */  lh         $a0, 0x0($s0)
    /* 9FDAC 800AF5AC 02000586 */  lh         $a1, 0x2($s0)
    /* 9FDB0 800AF5B0 08BE020C */  jal        func_800AF820
    /* 9FDB4 800AF5B4 00000000 */   nop
    /* 9FDB8 800AF5B8 040022AE */  sw         $v0, 0x4($s1)
    /* 9FDBC 800AF5BC 04000496 */  lhu        $a0, 0x4($s0)
    /* 9FDC0 800AF5C0 00000296 */  lhu        $v0, 0x0($s0)
    /* 9FDC4 800AF5C4 02000596 */  lhu        $a1, 0x2($s0)
    /* 9FDC8 800AF5C8 21208200 */  addu       $a0, $a0, $v0
    /* 9FDCC 800AF5CC FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 9FDD0 800AF5D0 00240400 */  sll        $a0, $a0, 16
    /* 9FDD4 800AF5D4 06000296 */  lhu        $v0, 0x6($s0)
    /* 9FDD8 800AF5D8 03240400 */  sra        $a0, $a0, 16
    /* 9FDDC 800AF5DC 2128A200 */  addu       $a1, $a1, $v0
    /* 9FDE0 800AF5E0 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 9FDE4 800AF5E4 002C0500 */  sll        $a1, $a1, 16
    /* 9FDE8 800AF5E8 2EBE020C */  jal        func_800AF8B8
    /* 9FDEC 800AF5EC 032C0500 */   sra       $a1, $a1, 16
    /* 9FDF0 800AF5F0 080022AE */  sw         $v0, 0x8($s1)
    /* 9FDF4 800AF5F4 08000486 */  lh         $a0, 0x8($s0)
    /* 9FDF8 800AF5F8 0A000586 */  lh         $a1, 0xA($s0)
    /* 9FDFC 800AF5FC 54BE020C */  jal        func_800AF950
    /* 9FE00 800AF600 00000000 */   nop
    /* 9FE04 800AF604 0C0022AE */  sw         $v0, 0xC($s1)
    /* 9FE08 800AF608 17000492 */  lbu        $a0, 0x17($s0)
    /* 9FE0C 800AF60C 16000592 */  lbu        $a1, 0x16($s0)
    /* 9FE10 800AF610 14000696 */  lhu        $a2, 0x14($s0)
    /* 9FE14 800AF614 00BE020C */  jal        func_800AF800
    /* 9FE18 800AF618 00000000 */   nop
    /* 9FE1C 800AF61C 0C000426 */  addiu      $a0, $s0, 0xC
    /* 9FE20 800AF620 5BBE020C */  jal        func_800AF96C
    /* 9FE24 800AF624 100022AE */   sw        $v0, 0x10($s1)
    /* 9FE28 800AF628 140022AE */  sw         $v0, 0x14($s1)
    /* 9FE2C 800AF62C 00E6023C */  lui        $v0, (0xE6000000 >> 16)
    /* 9FE30 800AF630 180022AE */  sw         $v0, 0x18($s1)
    /* 9FE34 800AF634 18000292 */  lbu        $v0, 0x18($s0)
    /* 9FE38 800AF638 00000000 */  nop
    /* 9FE3C 800AF63C 69004010 */  beqz       $v0, .L800AF7E4
    /* 9FE40 800AF640 07000824 */   addiu     $t0, $zero, 0x7
    /* 9FE44 800AF644 00000296 */  lhu        $v0, 0x0($s0)
    /* 9FE48 800AF648 00000000 */  nop
    /* 9FE4C 800AF64C 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 9FE50 800AF650 02000296 */  lhu        $v0, 0x2($s0)
    /* 9FE54 800AF654 00000000 */  nop
    /* 9FE58 800AF658 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 9FE5C 800AF65C 04000496 */  lhu        $a0, 0x4($s0)
    /* 9FE60 800AF660 00000000 */  nop
    /* 9FE64 800AF664 1400A4A7 */  sh         $a0, 0x14($sp)
    /* 9FE68 800AF668 06000296 */  lhu        $v0, 0x6($s0)
    /* 9FE6C 800AF66C 00000000 */  nop
    /* 9FE70 800AF670 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 9FE74 800AF674 00140400 */  sll        $v0, $a0, 16
    /* 9FE78 800AF678 031C0200 */  sra        $v1, $v0, 16
    /* 9FE7C 800AF67C 0B006004 */  bltz       $v1, .L800AF6AC
    /* 9FE80 800AF680 21100000 */   addu      $v0, $zero, $zero
    /* 9FE84 800AF684 0D80023C */  lui        $v0, %hi(D_800CEAC8)
    /* 9FE88 800AF688 C8EA4284 */  lh         $v0, %lo(D_800CEAC8)($v0)
    /* 9FE8C 800AF68C 00000000 */  nop
    /* 9FE90 800AF690 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9FE94 800AF694 2A104300 */  slt        $v0, $v0, $v1
    /* 9FE98 800AF698 0D80033C */  lui        $v1, %hi(D_800CEAC8)
    /* 9FE9C 800AF69C C8EA6394 */  lhu        $v1, %lo(D_800CEAC8)($v1)
    /* 9FEA0 800AF6A0 02004014 */  bnez       $v0, .L800AF6AC
    /* 9FEA4 800AF6A4 FFFF6224 */   addiu     $v0, $v1, -0x1
    /* 9FEA8 800AF6A8 21108000 */  addu       $v0, $a0, $zero
  .L800AF6AC:
    /* 9FEAC 800AF6AC 1600A387 */  lh         $v1, 0x16($sp)
    /* 9FEB0 800AF6B0 1600A497 */  lhu        $a0, 0x16($sp)
    /* 9FEB4 800AF6B4 0C006004 */  bltz       $v1, .L800AF6E8
    /* 9FEB8 800AF6B8 1400A2A7 */   sh        $v0, 0x14($sp)
    /* 9FEBC 800AF6BC 0D80023C */  lui        $v0, %hi(D_800CEACA)
    /* 9FEC0 800AF6C0 CAEA4284 */  lh         $v0, %lo(D_800CEACA)($v0)
    /* 9FEC4 800AF6C4 00000000 */  nop
    /* 9FEC8 800AF6C8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9FECC 800AF6CC 2A104300 */  slt        $v0, $v0, $v1
    /* 9FED0 800AF6D0 0D80033C */  lui        $v1, %hi(D_800CEACA)
    /* 9FED4 800AF6D4 CAEA6394 */  lhu        $v1, %lo(D_800CEACA)($v1)
    /* 9FED8 800AF6D8 04004014 */  bnez       $v0, .L800AF6EC
    /* 9FEDC 800AF6DC FFFF6224 */   addiu     $v0, $v1, -0x1
    /* 9FEE0 800AF6E0 BBBD0208 */  j          .L800AF6EC
    /* 9FEE4 800AF6E4 21108000 */   addu      $v0, $a0, $zero
  .L800AF6E8:
    /* 9FEE8 800AF6E8 21100000 */  addu       $v0, $zero, $zero
  .L800AF6EC:
    /* 9FEEC 800AF6EC 1000A397 */  lhu        $v1, 0x10($sp)
    /* 9FEF0 800AF6F0 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 9FEF4 800AF6F4 3F006230 */  andi       $v0, $v1, 0x3F
    /* 9FEF8 800AF6F8 06004014 */  bnez       $v0, .L800AF714
    /* 9FEFC 800AF6FC 80300800 */   sll       $a2, $t0, 2
    /* 9FF00 800AF700 1400A297 */  lhu        $v0, 0x14($sp)
    /* 9FF04 800AF704 00000000 */  nop
    /* 9FF08 800AF708 3F004230 */  andi       $v0, $v0, 0x3F
    /* 9FF0C 800AF70C 1F004010 */  beqz       $v0, .L800AF78C
    /* 9FF10 800AF710 80280800 */   sll       $a1, $t0, 2
  .L800AF714:
    /* 9FF14 800AF714 01000825 */  addiu      $t0, $t0, 0x1
    /* 9FF18 800AF718 80380800 */  sll        $a3, $t0, 2
    /* 9FF1C 800AF71C 01000825 */  addiu      $t0, $t0, 0x1
    /* 9FF20 800AF720 80280800 */  sll        $a1, $t0, 2
    /* 9FF24 800AF724 01000825 */  addiu      $t0, $t0, 0x1
    /* 9FF28 800AF728 08000296 */  lhu        $v0, 0x8($s0)
    /* 9FF2C 800AF72C 2130D100 */  addu       $a2, $a2, $s1
    /* 9FF30 800AF730 23106200 */  subu       $v0, $v1, $v0
    /* 9FF34 800AF734 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 9FF38 800AF738 1200A297 */  lhu        $v0, 0x12($sp)
    /* 9FF3C 800AF73C 0A000396 */  lhu        $v1, 0xA($s0)
    /* 9FF40 800AF740 0060043C */  lui        $a0, (0x60000000 >> 16)
    /* 9FF44 800AF744 23104300 */  subu       $v0, $v0, $v1
    /* 9FF48 800AF748 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 9FF4C 800AF74C 1B000292 */  lbu        $v0, 0x1B($s0)
    /* 9FF50 800AF750 1A000392 */  lbu        $v1, 0x1A($s0)
    /* 9FF54 800AF754 00140200 */  sll        $v0, $v0, 16
    /* 9FF58 800AF758 001A0300 */  sll        $v1, $v1, 8
    /* 9FF5C 800AF75C 25186400 */  or         $v1, $v1, $a0
    /* 9FF60 800AF760 19000492 */  lbu        $a0, 0x19($s0)
    /* 9FF64 800AF764 25104300 */  or         $v0, $v0, $v1
    /* 9FF68 800AF768 25104400 */  or         $v0, $v0, $a0
    /* 9FF6C 800AF76C 0000C2AC */  sw         $v0, 0x0($a2)
    /* 9FF70 800AF770 1000A28F */  lw         $v0, 0x10($sp)
    /* 9FF74 800AF774 2138F100 */  addu       $a3, $a3, $s1
    /* 9FF78 800AF778 0000E2AC */  sw         $v0, 0x0($a3)
    /* 9FF7C 800AF77C 1400A28F */  lw         $v0, 0x14($sp)
    /* 9FF80 800AF780 2128B100 */  addu       $a1, $a1, $s1
    /* 9FF84 800AF784 F9BD0208 */  j          .L800AF7E4
    /* 9FF88 800AF788 0000A2AC */   sw        $v0, 0x0($a1)
  .L800AF78C:
    /* 9FF8C 800AF78C 01000825 */  addiu      $t0, $t0, 0x1
    /* 9FF90 800AF790 80300800 */  sll        $a2, $t0, 2
    /* 9FF94 800AF794 01000825 */  addiu      $t0, $t0, 0x1
    /* 9FF98 800AF798 80380800 */  sll        $a3, $t0, 2
    /* 9FF9C 800AF79C 01000825 */  addiu      $t0, $t0, 0x1
    /* 9FFA0 800AF7A0 2128B100 */  addu       $a1, $a1, $s1
    /* 9FFA4 800AF7A4 0002043C */  lui        $a0, (0x2000000 >> 16)
    /* 9FFA8 800AF7A8 1B000292 */  lbu        $v0, 0x1B($s0)
    /* 9FFAC 800AF7AC 1A000392 */  lbu        $v1, 0x1A($s0)
    /* 9FFB0 800AF7B0 00140200 */  sll        $v0, $v0, 16
    /* 9FFB4 800AF7B4 001A0300 */  sll        $v1, $v1, 8
    /* 9FFB8 800AF7B8 25186400 */  or         $v1, $v1, $a0
    /* 9FFBC 800AF7BC 19000492 */  lbu        $a0, 0x19($s0)
    /* 9FFC0 800AF7C0 25104300 */  or         $v0, $v0, $v1
    /* 9FFC4 800AF7C4 25104400 */  or         $v0, $v0, $a0
    /* 9FFC8 800AF7C8 0000A2AC */  sw         $v0, 0x0($a1)
    /* 9FFCC 800AF7CC 1000A28F */  lw         $v0, 0x10($sp)
    /* 9FFD0 800AF7D0 2130D100 */  addu       $a2, $a2, $s1
    /* 9FFD4 800AF7D4 0000C2AC */  sw         $v0, 0x0($a2)
    /* 9FFD8 800AF7D8 1400A28F */  lw         $v0, 0x14($sp)
    /* 9FFDC 800AF7DC 2138F100 */  addu       $a3, $a3, $s1
    /* 9FFE0 800AF7E0 0000E2AC */  sw         $v0, 0x0($a3)
  .L800AF7E4:
    /* 9FFE4 800AF7E4 FFFF0225 */  addiu      $v0, $t0, -0x1
    /* 9FFE8 800AF7E8 030022A2 */  sb         $v0, 0x3($s1)
    /* 9FFEC 800AF7EC 2000BF8F */  lw         $ra, 0x20($sp)
    /* 9FFF0 800AF7F0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 9FFF4 800AF7F4 1800B08F */  lw         $s0, 0x18($sp)
    /* 9FFF8 800AF7F8 0800E003 */  jr         $ra
    /* 9FFFC 800AF7FC 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800AF590
