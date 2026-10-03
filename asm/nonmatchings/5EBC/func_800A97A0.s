nonmatching func_800A97A0, 0xAC

glabel func_800A97A0
    /* 99FA0 800A97A0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 99FA4 800A97A4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 99FA8 800A97A8 21808000 */  addu       $s0, $a0, $zero
    /* 99FAC 800A97AC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 99FB0 800A97B0 140090A7 */  sh         $s0, %gp_rel(D_800E6AA0)($gp)
    /* 99FB4 800A97B4 20AC020C */  jal        func_800AB080
    /* 99FB8 800A97B8 00841000 */   sll       $s0, $s0, 16
    /* 99FBC 800A97BC 0F80043C */  lui        $a0, %hi(D_800F0F2C)
    /* 99FC0 800A97C0 2C0F8424 */  addiu      $a0, $a0, %lo(D_800F0F2C)
    /* 99FC4 800A97C4 03000234 */  ori        $v0, $zero, 0x3
    /* 99FC8 800A97C8 000082AC */  sw         $v0, 0x0($a0)
    /* 99FCC 800A97CC 4000023C */  lui        $v0, (0x400000 >> 16)
    /* 99FD0 800A97D0 03841000 */  sra        $s0, $s0, 16
    /* 99FD4 800A97D4 FCFF82AC */  sw         $v0, -0x4($a0)
    /* 99FD8 800A97D8 0D80023C */  lui        $v0, %hi(D_800CE758)
    /* 99FDC 800A97DC 58E74224 */  addiu      $v0, $v0, %lo(D_800CE758)
    /* 99FE0 800A97E0 40181000 */  sll        $v1, $s0, 1
    /* 99FE4 800A97E4 21186200 */  addu       $v1, $v1, $v0
    /* 99FE8 800A97E8 00006294 */  lhu        $v0, 0x0($v1)
    /* 99FEC 800A97EC 00000000 */  nop
    /* 99FF0 800A97F0 C0110200 */  sll        $v0, $v0, 7
    /* 99FF4 800A97F4 0F80013C */  lui        $at, %hi(D_800F0F30)
    /* 99FF8 800A97F8 300F22A4 */  sh         $v0, %lo(D_800F0F30)($at)
    /* 99FFC 800A97FC 00006294 */  lhu        $v0, 0x0($v1)
    /* 9A000 800A9800 00000000 */  nop
    /* 9A004 800A9804 C0110200 */  sll        $v0, $v0, 7
    /* 9A008 800A9808 0F80013C */  lui        $at, %hi(D_800F0F32)
    /* 9A00C 800A980C 320F22A4 */  sh         $v0, %lo(D_800F0F32)($at)
    /* 9A010 800A9810 460182A7 */  sh         $v0, %gp_rel(D_800E6BD2)($gp)
    /* 9A014 800A9814 2A11030C */  jal        func_800C44A8
    /* 9A018 800A9818 FCFF8424 */   addiu     $a0, $a0, -0x4
    /* 9A01C 800A981C 0E80023C */  lui        $v0, %hi(D_800E6BD8)
    /* 9A020 800A9820 D86B4290 */  lbu        $v0, %lo(D_800E6BD8)($v0)
    /* 9A024 800A9824 00000000 */  nop
    /* 9A028 800A9828 03004014 */  bnez       $v0, .L800A9838
    /* 9A02C 800A982C 00000000 */   nop
    /* 9A030 800A9830 90AC020C */  jal        func_800AB240
    /* 9A034 800A9834 21200002 */   addu      $a0, $s0, $zero
  .L800A9838:
    /* 9A038 800A9838 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9A03C 800A983C 1000B08F */  lw         $s0, 0x10($sp)
    /* 9A040 800A9840 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9A044 800A9844 0800E003 */  jr         $ra
    /* 9A048 800A9848 00000000 */   nop
endlabel func_800A97A0
