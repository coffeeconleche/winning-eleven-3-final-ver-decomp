nonmatching func_801A3588, 0x148

glabel func_801A3588
    /* 1A610 801A3588 10800C3C */  lui        $t4, %hi(D_800FF748)
    /* 1A614 801A358C 48F78C25 */  addiu      $t4, $t4, %lo(D_800FF748)
    /* 1A618 801A3590 801F0F3C */  lui        $t7, (0x1F8002DD >> 16)
    /* 1A61C 801A3594 21380000 */  addu       $a3, $zero, $zero
    /* 1A620 801A3598 1E800B3C */  lui        $t3, %hi(D_801D8048)
    /* 1A624 801A359C 48806B25 */  addiu      $t3, $t3, %lo(D_801D8048)
    /* 1A628 801A35A0 12800E3C */  lui        $t6, %hi(D_8011BDEC)
    /* 1A62C 801A35A4 ECBDCE25 */  addiu      $t6, $t6, %lo(D_8011BDEC)
    /* 1A630 801A35A8 04000D24 */  addiu      $t5, $zero, 0x4
  .L801A35AC:
    /* 1A634 801A35AC 1E80033C */  lui        $v1, %hi(D_801D8B17)
    /* 1A638 801A35B0 178B6390 */  lbu        $v1, %lo(D_801D8B17)($v1)
    /* 1A63C 801A35B4 00000000 */  nop
    /* 1A640 801A35B8 05006010 */  beqz       $v1, .L801A35D0
    /* 1A644 801A35BC 01000224 */   addiu     $v0, $zero, 0x1
    /* 1A648 801A35C0 24006210 */  beq        $v1, $v0, .L801A3654
    /* 1A64C 801A35C4 FF00E230 */   andi      $v0, $a3, 0xFF
    /* 1A650 801A35C8 988D0608 */  j          .L801A3660
    /* 1A654 801A35CC 21300000 */   addu      $a2, $zero, $zero
  .L801A35D0:
    /* 1A658 801A35D0 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 1A65C 801A35D4 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 1A660 801A35D8 00000000 */  nop
    /* 1A664 801A35DC 21108201 */  addu       $v0, $t4, $v0
    /* 1A668 801A35E0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1A66C 801A35E4 21084100 */  addu       $at, $v0, $at
    /* 1A670 801A35E8 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 1A674 801A35EC 00000000 */  nop
    /* 1A678 801A35F0 C0100300 */  sll        $v0, $v1, 3
    /* 1A67C 801A35F4 21104300 */  addu       $v0, $v0, $v1
    /* 1A680 801A35F8 80100200 */  sll        $v0, $v0, 2
    /* 1A684 801A35FC 21108201 */  addu       $v0, $t4, $v0
    /* 1A688 801A3600 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1A68C 801A3604 21084100 */  addu       $at, $v0, $at
    /* 1A690 801A3608 258F2990 */  lbu        $t1, -0x70DB($at)
    /* 1A694 801A360C FF000224 */  addiu      $v0, $zero, 0xFF
    /* 1A698 801A3610 FF002331 */  andi       $v1, $t1, 0xFF
    /* 1A69C 801A3614 12006214 */  bne        $v1, $v0, .L801A3660
    /* 1A6A0 801A3618 21300000 */   addu      $a2, $zero, $zero
    /* 1A6A4 801A361C FF00E330 */  andi       $v1, $a3, 0xFF
    /* 1A6A8 801A3620 80100300 */  sll        $v0, $v1, 2
    /* 1A6AC 801A3624 21184300 */  addu       $v1, $v0, $v1
    /* 1A6B0 801A3628 FF00C230 */  andi       $v0, $a2, 0xFF
  .L801A362C:
    /* 1A6B4 801A362C 21106200 */  addu       $v0, $v1, $v0
    /* 1A6B8 801A3630 21104B00 */  addu       $v0, $v0, $t3
    /* 1A6BC 801A3634 000040A0 */  sb         $zero, 0x0($v0)
    /* 1A6C0 801A3638 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1A6C4 801A363C FF00C230 */  andi       $v0, $a2, 0xFF
    /* 1A6C8 801A3640 0500422C */  sltiu      $v0, $v0, 0x5
    /* 1A6CC 801A3644 F9FF4014 */  bnez       $v0, .L801A362C
    /* 1A6D0 801A3648 FF00C230 */   andi      $v0, $a2, 0xFF
    /* 1A6D4 801A364C B28D0608 */  j          .L801A36C8
    /* 1A6D8 801A3650 00000000 */   nop
  .L801A3654:
    /* 1A6DC 801A3654 2110E201 */  addu       $v0, $t7, $v0
    /* 1A6E0 801A3658 DD024990 */  lbu        $t1, (0x1F8002DD & 0xFFFF)($v0)
    /* 1A6E4 801A365C 21300000 */  addu       $a2, $zero, $zero
  .L801A3660:
    /* 1A6E8 801A3660 FF00E330 */  andi       $v1, $a3, 0xFF
    /* 1A6EC 801A3664 80100300 */  sll        $v0, $v1, 2
    /* 1A6F0 801A3668 21504300 */  addu       $t2, $v0, $v1
    /* 1A6F4 801A366C FF002231 */  andi       $v0, $t1, 0xFF
    /* 1A6F8 801A3670 40100200 */  sll        $v0, $v0, 1
    /* 1A6FC 801A3674 21404E00 */  addu       $t0, $v0, $t6
  .L801A3678:
    /* 1A700 801A3678 FF00C430 */  andi       $a0, $a2, 0xFF
    /* 1A704 801A367C 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1A708 801A3680 21284401 */  addu       $a1, $t2, $a0
    /* 1A70C 801A3684 2128AB00 */  addu       $a1, $a1, $t3
    /* 1A710 801A3688 2320A401 */  subu       $a0, $t5, $a0
    /* 1A714 801A368C 40180400 */  sll        $v1, $a0, 1
    /* 1A718 801A3690 00000295 */  lhu        $v0, 0x0($t0)
    /* 1A71C 801A3694 21186400 */  addu       $v1, $v1, $a0
    /* 1A720 801A3698 07106200 */  srav       $v0, $v0, $v1
    /* 1A724 801A369C 07004230 */  andi       $v0, $v0, 0x7
    /* 1A728 801A36A0 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 1A72C 801A36A4 FF00C230 */  andi       $v0, $a2, 0xFF
    /* 1A730 801A36A8 0500422C */  sltiu      $v0, $v0, 0x5
    /* 1A734 801A36AC F2FF4014 */  bnez       $v0, .L801A3678
    /* 1A738 801A36B0 00000000 */   nop
    /* 1A73C 801A36B4 0100E724 */  addiu      $a3, $a3, 0x1
    /* 1A740 801A36B8 FF00E230 */  andi       $v0, $a3, 0xFF
    /* 1A744 801A36BC 0200422C */  sltiu      $v0, $v0, 0x2
    /* 1A748 801A36C0 BAFF4014 */  bnez       $v0, .L801A35AC
    /* 1A74C 801A36C4 00000000 */   nop
  .L801A36C8:
    /* 1A750 801A36C8 0800E003 */  jr         $ra
    /* 1A754 801A36CC 00000000 */   nop
endlabel func_801A3588
