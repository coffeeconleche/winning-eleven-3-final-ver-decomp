nonmatching func_800A3590, 0x1A0

glabel func_800A3590
    /* 93D90 800A3590 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 93D94 800A3594 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 93D98 800A3598 1080133C */  lui        $s3, %hi(D_800FF748)
    /* 93D9C 800A359C 48F77326 */  addiu      $s3, $s3, %lo(D_800FF748)
    /* 93DA0 800A35A0 801F033C */  lui        $v1, (0x1F8002E1 >> 16)
    /* 93DA4 800A35A4 E1026390 */  lbu        $v1, (0x1F8002E1 & 0xFFFF)($v1)
    /* 93DA8 800A35A8 05000224 */  addiu      $v0, $zero, 0x5
    /* 93DAC 800A35AC 2000BFAF */  sw         $ra, 0x20($sp)
    /* 93DB0 800A35B0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 93DB4 800A35B4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 93DB8 800A35B8 55006210 */  beq        $v1, $v0, .L800A3710
    /* 93DBC 800A35BC 1000B0AF */   sw        $s0, 0x10($sp)
    /* 93DC0 800A35C0 FF80020C */  jal        func_800A03FC
    /* 93DC4 800A35C4 21900000 */   addu      $s2, $zero, $zero
    /* 93DC8 800A35C8 801F043C */  lui        $a0, (0x1F8002AD >> 16)
    /* 93DCC 800A35CC AD028490 */  lbu        $a0, (0x1F8002AD & 0xFFFF)($a0)
    /* 93DD0 800A35D0 8C73010C */  jal        func_8005CE30
    /* 93DD4 800A35D4 00000000 */   nop
    /* 93DD8 800A35D8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 93DDC 800A35DC 40190200 */  sll        $v1, $v0, 5
    /* 93DE0 800A35E0 23186200 */  subu       $v1, $v1, $v0
    /* 93DE4 800A35E4 80180300 */  sll        $v1, $v1, 2
    /* 93DE8 800A35E8 21186200 */  addu       $v1, $v1, $v0
    /* 93DEC 800A35EC C0180300 */  sll        $v1, $v1, 3
    /* 93DF0 800A35F0 E8036324 */  addiu      $v1, $v1, 0x3E8
    /* 93DF4 800A35F4 21887300 */  addu       $s1, $v1, $s3
    /* 93DF8 800A35F8 06003026 */  addiu      $s0, $s1, 0x6
  .L800A35FC:
    /* 93DFC 800A35FC 8B030292 */  lbu        $v0, 0x38B($s0)
    /* 93E00 800A3600 00000000 */  nop
    /* 93E04 800A3604 1100422C */  sltiu      $v0, $v0, 0x11
    /* 93E08 800A3608 09004014 */  bnez       $v0, .L800A3630
    /* 93E0C 800A360C 00000000 */   nop
    /* 93E10 800A3610 00002292 */  lbu        $v0, 0x0($s1)
    /* 93E14 800A3614 00000000 */  nop
    /* 93E18 800A3618 05004010 */  beqz       $v0, .L800A3630
    /* 93E1C 800A361C 21202002 */   addu      $a0, $s1, $zero
    /* 93E20 800A3620 02002526 */  addiu      $a1, $s1, 0x2
    /* 93E24 800A3624 21300002 */  addu       $a2, $s0, $zero
    /* 93E28 800A3628 2185020C */  jal        func_800A1484
    /* 93E2C 800A362C 000C0724 */   addiu     $a3, $zero, 0xC00
  .L800A3630:
    /* 93E30 800A3630 01005226 */  addiu      $s2, $s2, 0x1
    /* 93E34 800A3634 E8031026 */  addiu      $s0, $s0, 0x3E8
    /* 93E38 800A3638 FF004232 */  andi       $v0, $s2, 0xFF
    /* 93E3C 800A363C 0A00422C */  sltiu      $v0, $v0, 0xA
    /* 93E40 800A3640 EEFF4014 */  bnez       $v0, .L800A35FC
    /* 93E44 800A3644 E8033126 */   addiu     $s1, $s1, 0x3E8
    /* 93E48 800A3648 801F043C */  lui        $a0, (0x1F8002AD >> 16)
    /* 93E4C 800A364C AD028490 */  lbu        $a0, (0x1F8002AD & 0xFFFF)($a0)
    /* 93E50 800A3650 8C73010C */  jal        func_8005CE30
    /* 93E54 800A3654 21900000 */   addu      $s2, $zero, $zero
    /* 93E58 800A3658 FF004230 */  andi       $v0, $v0, 0xFF
    /* 93E5C 800A365C 40190200 */  sll        $v1, $v0, 5
    /* 93E60 800A3660 23186200 */  subu       $v1, $v1, $v0
    /* 93E64 800A3664 80180300 */  sll        $v1, $v1, 2
    /* 93E68 800A3668 21186200 */  addu       $v1, $v1, $v0
    /* 93E6C 800A366C C0180300 */  sll        $v1, $v1, 3
    /* 93E70 800A3670 E8036324 */  addiu      $v1, $v1, 0x3E8
    /* 93E74 800A3674 21886302 */  addu       $s1, $s3, $v1
    /* 93E78 800A3678 06003026 */  addiu      $s0, $s1, 0x6
  .L800A367C:
    /* 93E7C 800A367C DB030592 */  lbu        $a1, 0x3DB($s0)
    /* 93E80 800A3680 00000000 */  nop
    /* 93E84 800A3684 1C00A010 */  beqz       $a1, .L800A36F8
    /* 93E88 800A3688 21202002 */   addu      $a0, $s1, $zero
    /* 93E8C 800A368C 02002626 */  addiu      $a2, $s1, 0x2
    /* 93E90 800A3690 CC83020C */  jal        func_800A0F30
    /* 93E94 800A3694 21380002 */   addu      $a3, $s0, $zero
    /* 93E98 800A3698 FCFF0386 */  lh         $v1, -0x4($s0)
    /* 93E9C 800A369C 00000000 */  nop
    /* 93EA0 800A36A0 02006104 */  bgez       $v1, .L800A36AC
    /* 93EA4 800A36A4 21106000 */   addu      $v0, $v1, $zero
    /* 93EA8 800A36A8 23100200 */  negu       $v0, $v0
  .L800A36AC:
    /* 93EAC 800A36AC 092E4228 */  slti       $v0, $v0, 0x2E09
    /* 93EB0 800A36B0 05004014 */  bnez       $v0, .L800A36C8
    /* 93EB4 800A36B4 00000000 */   nop
    /* 93EB8 800A36B8 02006018 */  blez       $v1, .L800A36C4
    /* 93EBC 800A36BC F8D10224 */   addiu     $v0, $zero, -0x2E08
    /* 93EC0 800A36C0 082E0224 */  addiu      $v0, $zero, 0x2E08
  .L800A36C4:
    /* 93EC4 800A36C4 FCFF02A6 */  sh         $v0, -0x4($s0)
  .L800A36C8:
    /* 93EC8 800A36C8 00000386 */  lh         $v1, 0x0($s0)
    /* 93ECC 800A36CC 00000000 */  nop
    /* 93ED0 800A36D0 02006104 */  bgez       $v1, .L800A36DC
    /* 93ED4 800A36D4 21106000 */   addu      $v0, $v1, $zero
    /* 93ED8 800A36D8 23100200 */  negu       $v0, $v0
  .L800A36DC:
    /* 93EDC 800A36DC 81204228 */  slti       $v0, $v0, 0x2081
    /* 93EE0 800A36E0 05004014 */  bnez       $v0, .L800A36F8
    /* 93EE4 800A36E4 00000000 */   nop
    /* 93EE8 800A36E8 02006018 */  blez       $v1, .L800A36F4
    /* 93EEC 800A36EC 80DF0224 */   addiu     $v0, $zero, -0x2080
    /* 93EF0 800A36F0 80200224 */  addiu      $v0, $zero, 0x2080
  .L800A36F4:
    /* 93EF4 800A36F4 000002A6 */  sh         $v0, 0x0($s0)
  .L800A36F8:
    /* 93EF8 800A36F8 01005226 */  addiu      $s2, $s2, 0x1
    /* 93EFC 800A36FC E8031026 */  addiu      $s0, $s0, 0x3E8
    /* 93F00 800A3700 FF004232 */  andi       $v0, $s2, 0xFF
    /* 93F04 800A3704 0A00422C */  sltiu      $v0, $v0, 0xA
    /* 93F08 800A3708 DCFF4014 */  bnez       $v0, .L800A367C
    /* 93F0C 800A370C E8033126 */   addiu     $s1, $s1, 0x3E8
  .L800A3710:
    /* 93F10 800A3710 2000BF8F */  lw         $ra, 0x20($sp)
    /* 93F14 800A3714 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 93F18 800A3718 1800B28F */  lw         $s2, 0x18($sp)
    /* 93F1C 800A371C 1400B18F */  lw         $s1, 0x14($sp)
    /* 93F20 800A3720 1000B08F */  lw         $s0, 0x10($sp)
    /* 93F24 800A3724 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 93F28 800A3728 0800E003 */  jr         $ra
    /* 93F2C 800A372C 00000000 */   nop
endlabel func_800A3590
