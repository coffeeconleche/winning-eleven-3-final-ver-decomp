nonmatching func_800B8D80, 0x344

glabel func_800B8D80
    /* A9580 800B8D80 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* A9584 800B8D84 08004001 */  jr         $t2
    /* A9588 800B8D88 3F000924 */   addiu     $t1, $zero, 0x3F
    /* A958C 800B8D8C 00000000 */  nop
    /* A9590 800B8D90 00000000 */  nop
    /* A9594 800B8D94 00000000 */  nop
    /* A9598 800B8D98 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* A959C 800B8D9C 2400B1AF */  sw         $s1, 0x24($sp)
    /* A95A0 800B8DA0 2188A000 */  addu       $s1, $a1, $zero
    /* A95A4 800B8DA4 0D80053C */  lui        $a1, %hi(D_800D3C68)
    /* A95A8 800B8DA8 683CA524 */  addiu      $a1, $a1, %lo(D_800D3C68)
    /* A95AC 800B8DAC FF008430 */  andi       $a0, $a0, 0xFF
    /* A95B0 800B8DB0 01000224 */  addiu      $v0, $zero, 0x1
    /* A95B4 800B8DB4 2800BFAF */  sw         $ra, 0x28($sp)
    /* A95B8 800B8DB8 2000B0AF */  sw         $s0, 0x20($sp)
    /* A95BC 800B8DBC 3400B1AC */  sw         $s1, 0x34($a1)
    /* A95C0 800B8DC0 4A008214 */  bne        $a0, $v0, .L800B8EEC
    /* A95C4 800B8DC4 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A95C8 800B8DC8 1400A28C */  lw         $v0, 0x14($a1)
    /* A95CC 800B8DCC 00000000 */  nop
    /* A95D0 800B8DD0 47004018 */  blez       $v0, .L800B8EF0
    /* A95D4 800B8DD4 00000000 */   nop
    /* A95D8 800B8DD8 1000A38C */  lw         $v1, 0x10($a1)
    /* A95DC 800B8DDC 00020224 */  addiu      $v0, $zero, 0x200
    /* A95E0 800B8DE0 22006214 */  bne        $v1, $v0, .L800B8E6C
    /* A95E4 800B8DE4 00000000 */   nop
    /* A95E8 800B8DE8 3000A28C */  lw         $v0, 0x30($a1)
    /* A95EC 800B8DEC 00000000 */  nop
    /* A95F0 800B8DF0 01004230 */  andi       $v0, $v0, 0x1
    /* A95F4 800B8DF4 0D004010 */  beqz       $v0, .L800B8E2C
    /* A95F8 800B8DF8 1000A427 */   addiu     $a0, $sp, 0x10
    /* A95FC 800B8DFC 14DD020C */  jal        func_800B7450
    /* A9600 800B8E00 21200000 */   addu      $a0, $zero, $zero
    /* A9604 800B8E04 1000A427 */  addiu      $a0, $sp, 0x10
    /* A9608 800B8E08 0CDD020C */  jal        func_800B7430
    /* A960C 800B8E0C 03000524 */   addiu     $a1, $zero, 0x3
    /* A9610 800B8E10 1DDD020C */  jal        func_800B7474
    /* A9614 800B8E14 21200000 */   addu      $a0, $zero, $zero
    /* A9618 800B8E18 0C80043C */  lui        $a0, %hi(D_800B8FF8)
    /* A961C 800B8E1C 14DD020C */  jal        func_800B7450
    /* A9620 800B8E20 F88F8424 */   addiu     $a0, $a0, %lo(D_800B8FF8)
    /* A9624 800B8E24 8DE30208 */  j          .L800B8E34
    /* A9628 800B8E28 00000000 */   nop
  .L800B8E2C:
    /* A962C 800B8E2C 04DD020C */  jal        func_800B7410
    /* A9630 800B8E30 03000524 */   addiu     $a1, $zero, 0x3
  .L800B8E34:
    /* A9634 800B8E34 66DD020C */  jal        func_800B7598
    /* A9638 800B8E38 1000A427 */   addiu     $a0, $sp, 0x10
    /* A963C 800B8E3C 0D80103C */  lui        $s0, %hi(D_800D3C88)
    /* A9640 800B8E40 883C1026 */  addiu      $s0, $s0, %lo(D_800D3C88)
    /* A9644 800B8E44 0000038E */  lw         $v1, 0x0($s0)
    /* A9648 800B8E48 00000000 */  nop
    /* A964C 800B8E4C 07004310 */  beq        $v0, $v1, .L800B8E6C
    /* A9650 800B8E50 00000000 */   nop
    /* A9654 800B8E54 0180043C */  lui        $a0, %hi(D_800153DC)
    /* A9658 800B8E58 60E3020C */  jal        func_800B8D80
    /* A965C 800B8E5C DC538424 */   addiu     $a0, $a0, %lo(D_800153DC)
    /* A9660 800B8E60 E0FF0326 */  addiu      $v1, $s0, -0x20
    /* A9664 800B8E64 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* A9668 800B8E68 140062AC */  sw         $v0, 0x14($v1)
  .L800B8E6C:
    /* A966C 800B8E6C 0D80103C */  lui        $s0, %hi(D_800D3C98)
    /* A9670 800B8E70 983C1026 */  addiu      $s0, $s0, %lo(D_800D3C98)
    /* A9674 800B8E74 0000028E */  lw         $v0, 0x0($s0)
    /* A9678 800B8E78 00000000 */  nop
    /* A967C 800B8E7C 01004230 */  andi       $v0, $v0, 0x1
    /* A9680 800B8E80 07004010 */  beqz       $v0, .L800B8EA0
    /* A9684 800B8E84 00000000 */   nop
    /* A9688 800B8E88 D8FF048E */  lw         $a0, -0x28($s0)
    /* A968C 800B8E8C E0FF058E */  lw         $a1, -0x20($s0)
    /* A9690 800B8E90 0CDD020C */  jal        func_800B7430
    /* A9694 800B8E94 00000000 */   nop
    /* A9698 800B8E98 BCE30208 */  j          .L800B8EF0
    /* A969C 800B8E9C 00000000 */   nop
  .L800B8EA0:
    /* A96A0 800B8EA0 D8FF048E */  lw         $a0, -0x28($s0)
    /* A96A4 800B8EA4 E0FF058E */  lw         $a1, -0x20($s0)
    /* A96A8 800B8EA8 04DD020C */  jal        func_800B7410
    /* A96AC 800B8EAC 00000000 */   nop
    /* A96B0 800B8EB0 D0FF0426 */  addiu      $a0, $s0, -0x30
    /* A96B4 800B8EB4 E0FF028E */  lw         $v0, -0x20($s0)
    /* A96B8 800B8EB8 D8FF038E */  lw         $v1, -0x28($s0)
    /* A96BC 800B8EBC 80100200 */  sll        $v0, $v0, 2
    /* A96C0 800B8EC0 21186200 */  addu       $v1, $v1, $v0
    /* A96C4 800B8EC4 080083AC */  sw         $v1, 0x8($a0)
    /* A96C8 800B8EC8 1400828C */  lw         $v0, 0x14($a0)
    /* A96CC 800B8ECC 00000000 */  nop
    /* A96D0 800B8ED0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A96D4 800B8ED4 140082AC */  sw         $v0, 0x14($a0)
    /* A96D8 800B8ED8 2000828C */  lw         $v0, 0x20($a0)
    /* A96DC 800B8EDC 00000000 */  nop
    /* A96E0 800B8EE0 01004224 */  addiu      $v0, $v0, 0x1
    /* A96E4 800B8EE4 BCE30208 */  j          .L800B8EF0
    /* A96E8 800B8EE8 200082AC */   sw        $v0, 0x20($a0)
  .L800B8EEC:
    /* A96EC 800B8EEC 1400A2AC */  sw         $v0, 0x14($a1)
  .L800B8EF0:
    /* A96F0 800B8EF0 46E9020C */  jal        func_800BA518
    /* A96F4 800B8EF4 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* A96F8 800B8EF8 0D80103C */  lui        $s0, %hi(D_800D3C68)
    /* A96FC 800B8EFC 683C1026 */  addiu      $s0, $s0, %lo(D_800D3C68)
    /* A9700 800B8F00 180002AE */  sw         $v0, 0x18($s0)
    /* A9704 800B8F04 1400028E */  lw         $v0, 0x14($s0)
    /* A9708 800B8F08 00000000 */  nop
    /* A970C 800B8F0C 03004104 */  bgez       $v0, .L800B8F1C
    /* A9710 800B8F10 00000000 */   nop
    /* A9714 800B8F14 31E4020C */  jal        func_800B90C4
    /* A9718 800B8F18 01000424 */   addiu     $a0, $zero, 0x1
  .L800B8F1C:
    /* A971C 800B8F1C 46E9020C */  jal        func_800BA518
    /* A9720 800B8F20 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* A9724 800B8F24 1C00038E */  lw         $v1, 0x1C($s0)
    /* A9728 800B8F28 00000000 */  nop
    /* A972C 800B8F2C B0046324 */  addiu      $v1, $v1, 0x4B0
    /* A9730 800B8F30 2A186200 */  slt        $v1, $v1, $v0
    /* A9734 800B8F34 02006010 */  beqz       $v1, .L800B8F40
    /* A9738 800B8F38 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A973C 800B8F3C 140002AE */  sw         $v0, 0x14($s0)
  .L800B8F40:
    /* A9740 800B8F40 1400028E */  lw         $v0, 0x14($s0)
    /* A9744 800B8F44 00000000 */  nop
    /* A9748 800B8F48 09004010 */  beqz       $v0, .L800B8F70
    /* A974C 800B8F4C 00000000 */   nop
    /* A9750 800B8F50 46E9020C */  jal        func_800BA518
    /* A9754 800B8F54 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* A9758 800B8F58 1C00038E */  lw         $v1, 0x1C($s0)
    /* A975C 800B8F5C 00000000 */  nop
    /* A9760 800B8F60 B0046324 */  addiu      $v1, $v1, 0x4B0
    /* A9764 800B8F64 2A186200 */  slt        $v1, $v1, $v0
    /* A9768 800B8F68 1E006010 */  beqz       $v1, .L800B8FE4
    /* A976C 800B8F6C 00000000 */   nop
  .L800B8F70:
    /* A9770 800B8F70 2400048E */  lw         $a0, 0x24($s0)
    /* A9774 800B8F74 03DC020C */  jal        func_800B700C
    /* A9778 800B8F78 00000000 */   nop
    /* A977C 800B8F7C 2800048E */  lw         $a0, 0x28($s0)
    /* A9780 800B8F80 08DC020C */  jal        func_800B7020
    /* A9784 800B8F84 00000000 */   nop
    /* A9788 800B8F88 3000028E */  lw         $v0, 0x30($s0)
    /* A978C 800B8F8C 00000000 */  nop
    /* A9790 800B8F90 01004230 */  andi       $v0, $v0, 0x1
    /* A9794 800B8F94 05004010 */  beqz       $v0, .L800B8FAC
    /* A9798 800B8F98 09000424 */   addiu     $a0, $zero, 0x9
    /* A979C 800B8F9C 2C00048E */  lw         $a0, 0x2C($s0)
    /* A97A0 800B8FA0 14DD020C */  jal        func_800B7450
    /* A97A4 800B8FA4 00000000 */   nop
    /* A97A8 800B8FA8 09000424 */  addiu      $a0, $zero, 0x9
  .L800B8FAC:
    /* A97AC 800B8FAC 5CDC020C */  jal        func_800B7170
    /* A97B0 800B8FB0 21280000 */   addu      $a1, $zero, $zero
    /* A97B4 800B8FB4 0D80033C */  lui        $v1, %hi(D_800D3C64)
    /* A97B8 800B8FB8 643C638C */  lw         $v1, %lo(D_800D3C64)($v1)
    /* A97BC 800B8FBC 00000000 */  nop
    /* A97C0 800B8FC0 08006010 */  beqz       $v1, .L800B8FE4
    /* A97C4 800B8FC4 00000000 */   nop
    /* A97C8 800B8FC8 1400028E */  lw         $v0, 0x14($s0)
    /* A97CC 800B8FCC 00000000 */  nop
    /* A97D0 800B8FD0 02004014 */  bnez       $v0, .L800B8FDC
    /* A97D4 800B8FD4 05000424 */   addiu     $a0, $zero, 0x5
    /* A97D8 800B8FD8 02000424 */  addiu      $a0, $zero, 0x2
  .L800B8FDC:
    /* A97DC 800B8FDC 09F86000 */  jalr       $v1
    /* A97E0 800B8FE0 21282002 */   addu      $a1, $s1, $zero
  .L800B8FE4:
    /* A97E4 800B8FE4 2800BF8F */  lw         $ra, 0x28($sp)
    /* A97E8 800B8FE8 2400B18F */  lw         $s1, 0x24($sp)
    /* A97EC 800B8FEC 2000B08F */  lw         $s0, 0x20($sp)
    /* A97F0 800B8FF0 0800E003 */  jr         $ra
    /* A97F4 800B8FF4 3000BD27 */   addiu     $sp, $sp, 0x30
  alabel D_800B8FF8
    /* A97F8 800B8FF8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A97FC 800B8FFC 1000B0AF */  sw         $s0, 0x10($sp)
    /* A9800 800B9000 0D80103C */  lui        $s0, %hi(D_800D3C68)
    /* A9804 800B9004 683C1026 */  addiu      $s0, $s0, %lo(D_800D3C68)
    /* A9808 800B9008 1400BFAF */  sw         $ra, 0x14($sp)
    /* A980C 800B900C 1000028E */  lw         $v0, 0x10($s0)
    /* A9810 800B9010 0800038E */  lw         $v1, 0x8($s0)
    /* A9814 800B9014 80100200 */  sll        $v0, $v0, 2
    /* A9818 800B9018 21186200 */  addu       $v1, $v1, $v0
    /* A981C 800B901C 080003AE */  sw         $v1, 0x8($s0)
    /* A9820 800B9020 1400028E */  lw         $v0, 0x14($s0)
    /* A9824 800B9024 00000000 */  nop
    /* A9828 800B9028 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A982C 800B902C 140002AE */  sw         $v0, 0x14($s0)
    /* A9830 800B9030 2000028E */  lw         $v0, 0x20($s0)
    /* A9834 800B9034 00000000 */  nop
    /* A9838 800B9038 01004224 */  addiu      $v0, $v0, 0x1
    /* A983C 800B903C 200002AE */  sw         $v0, 0x20($s0)
    /* A9840 800B9040 1400028E */  lw         $v0, 0x14($s0)
    /* A9844 800B9044 00000000 */  nop
    /* A9848 800B9048 1A004014 */  bnez       $v0, .L800B90B4
    /* A984C 800B904C 00000000 */   nop
    /* A9850 800B9050 2400048E */  lw         $a0, 0x24($s0)
    /* A9854 800B9054 03DC020C */  jal        func_800B700C
    /* A9858 800B9058 00000000 */   nop
    /* A985C 800B905C 2800048E */  lw         $a0, 0x28($s0)
    /* A9860 800B9060 08DC020C */  jal        func_800B7020
    /* A9864 800B9064 00000000 */   nop
    /* A9868 800B9068 3000028E */  lw         $v0, 0x30($s0)
    /* A986C 800B906C 00000000 */  nop
    /* A9870 800B9070 01004230 */  andi       $v0, $v0, 0x1
    /* A9874 800B9074 05004010 */  beqz       $v0, .L800B908C
    /* A9878 800B9078 09000424 */   addiu     $a0, $zero, 0x9
    /* A987C 800B907C 2C00048E */  lw         $a0, 0x2C($s0)
    /* A9880 800B9080 14DD020C */  jal        func_800B7450
    /* A9884 800B9084 00000000 */   nop
    /* A9888 800B9088 09000424 */  addiu      $a0, $zero, 0x9
  .L800B908C:
    /* A988C 800B908C 5CDC020C */  jal        func_800B7170
    /* A9890 800B9090 21280000 */   addu      $a1, $zero, $zero
    /* A9894 800B9094 0D80023C */  lui        $v0, %hi(D_800D3C64)
    /* A9898 800B9098 643C428C */  lw         $v0, %lo(D_800D3C64)($v0)
    /* A989C 800B909C 00000000 */  nop
    /* A98A0 800B90A0 04004010 */  beqz       $v0, .L800B90B4
    /* A98A4 800B90A4 00000000 */   nop
    /* A98A8 800B90A8 3400058E */  lw         $a1, 0x34($s0)
    /* A98AC 800B90AC 09F84000 */  jalr       $v0
    /* A98B0 800B90B0 02000424 */   addiu     $a0, $zero, 0x2
  .L800B90B4:
    /* A98B4 800B90B4 1400BF8F */  lw         $ra, 0x14($sp)
    /* A98B8 800B90B8 1000B08F */  lw         $s0, 0x10($sp)
    /* A98BC 800B90BC 0800E003 */  jr         $ra
    /* A98C0 800B90C0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B8D80
