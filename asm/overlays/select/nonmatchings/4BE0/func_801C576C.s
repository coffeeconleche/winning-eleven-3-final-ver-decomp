nonmatching func_801C576C, 0x120

glabel func_801C576C
    /* 3C7F4 801C576C C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 3C7F8 801C5770 21408000 */  addu       $t0, $a0, $zero
    /* 3C7FC 801C5774 3400B3AF */  sw         $s3, 0x34($sp)
    /* 3C800 801C5778 2198C000 */  addu       $s3, $a2, $zero
    /* 3C804 801C577C FF00E730 */  andi       $a3, $a3, 0xFF
    /* 3C808 801C5780 3800BFAF */  sw         $ra, 0x38($sp)
    /* 3C80C 801C5784 3000B2AF */  sw         $s2, 0x30($sp)
    /* 3C810 801C5788 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 3C814 801C578C 3700E010 */  beqz       $a3, .L801C586C
    /* 3C818 801C5790 2800B0AF */   sw        $s0, 0x28($sp)
    /* 3C81C 801C5794 1D80023C */  lui        $v0, %hi(D_801D42A8 + 0x2)
    /* 3C820 801C5798 AA424290 */  lbu        $v0, %lo(D_801D42A8 + 0x2)($v0)
    /* 3C824 801C579C 1D80033C */  lui        $v1, %hi(D_801D42A8 + 0x1)
    /* 3C828 801C57A0 A9426390 */  lbu        $v1, %lo(D_801D42A8 + 0x1)($v1)
    /* 3C82C 801C57A4 02004014 */  bnez       $v0, .L801C57B0
    /* 3C830 801C57A8 FFFF6224 */   addiu     $v0, $v1, -0x1
    /* 3C834 801C57AC 01006224 */  addiu      $v0, $v1, 0x1
  .L801C57B0:
    /* 3C838 801C57B0 1D80013C */  lui        $at, %hi(D_801D42A8 + 0x1)
    /* 3C83C 801C57B4 A94222A0 */  sb         $v0, %lo(D_801D42A8 + 0x1)($at)
    /* 3C840 801C57B8 FF005130 */  andi       $s1, $v0, 0xFF
    /* 3C844 801C57BC 2000222E */  sltiu      $v0, $s1, 0x20
    /* 3C848 801C57C0 03004014 */  bnez       $v0, .L801C57D0
    /* 3C84C 801C57C4 01000224 */   addiu     $v0, $zero, 0x1
    /* 3C850 801C57C8 1D80013C */  lui        $at, %hi(D_801D42A8 + 0x2)
    /* 3C854 801C57CC AA4222A0 */  sb         $v0, %lo(D_801D42A8 + 0x2)($at)
  .L801C57D0:
    /* 3C858 801C57D0 03002016 */  bnez       $s1, .L801C57E0
    /* 3C85C 801C57D4 40901100 */   sll       $s2, $s1, 1
    /* 3C860 801C57D8 1D80013C */  lui        $at, %hi(D_801D42A8 + 0x2)
    /* 3C864 801C57DC AA4220A0 */  sb         $zero, %lo(D_801D42A8 + 0x2)($at)
  .L801C57E0:
    /* 3C868 801C57E0 40005226 */  addiu      $s2, $s2, 0x40
    /* 3C86C 801C57E4 80881100 */  sll        $s1, $s1, 2
    /* 3C870 801C57E8 40003126 */  addiu      $s1, $s1, 0x40
    /* 3C874 801C57EC 21200000 */  addu       $a0, $zero, $zero
    /* 3C878 801C57F0 FF00B030 */  andi       $s0, $a1, 0xFF
    /* 3C87C 801C57F4 C0801000 */  sll        $s0, $s0, 3
    /* 3C880 801C57F8 21800802 */  addu       $s0, $s0, $t0
    /* 3C884 801C57FC FF003132 */  andi       $s1, $s1, 0xFF
    /* 3C888 801C5800 FF005232 */  andi       $s2, $s2, 0xFF
    /* 3C88C 801C5804 00000586 */  lh         $a1, 0x0($s0)
    /* 3C890 801C5808 02000686 */  lh         $a2, 0x2($s0)
    /* 3C894 801C580C 04000786 */  lh         $a3, 0x4($s0)
    /* 3C898 801C5810 06000286 */  lh         $v0, 0x6($s0)
    /* 3C89C 801C5814 FF007332 */  andi       $s3, $s3, 0xFF
    /* 3C8A0 801C5818 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3C8A4 801C581C 1800B1AF */  sw         $s1, 0x18($sp)
    /* 3C8A8 801C5820 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3C8AC 801C5824 2000B3AF */  sw         $s3, 0x20($sp)
    /* 3C8B0 801C5828 6759060C */  jal        func_8019659C
    /* 3C8B4 801C582C 1000A2AF */   sw        $v0, 0x10($sp)
    /* 3C8B8 801C5830 00000586 */  lh         $a1, 0x0($s0)
    /* 3C8BC 801C5834 02000686 */  lh         $a2, 0x2($s0)
    /* 3C8C0 801C5838 04000786 */  lh         $a3, 0x4($s0)
    /* 3C8C4 801C583C 06000286 */  lh         $v0, 0x6($s0)
    /* 3C8C8 801C5840 21200000 */  addu       $a0, $zero, $zero
    /* 3C8CC 801C5844 1400B2AF */  sw         $s2, 0x14($sp)
    /* 3C8D0 801C5848 1800B1AF */  sw         $s1, 0x18($sp)
    /* 3C8D4 801C584C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3C8D8 801C5850 2000B3AF */  sw         $s3, 0x20($sp)
    /* 3C8DC 801C5854 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 3C8E0 801C5858 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 3C8E4 801C585C 0200E724 */  addiu      $a3, $a3, 0x2
    /* 3C8E8 801C5860 02004224 */  addiu      $v0, $v0, 0x2
    /* 3C8EC 801C5864 6759060C */  jal        func_8019659C
    /* 3C8F0 801C5868 1000A2AF */   sw        $v0, 0x10($sp)
  .L801C586C:
    /* 3C8F4 801C586C 3800BF8F */  lw         $ra, 0x38($sp)
    /* 3C8F8 801C5870 3400B38F */  lw         $s3, 0x34($sp)
    /* 3C8FC 801C5874 3000B28F */  lw         $s2, 0x30($sp)
    /* 3C900 801C5878 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 3C904 801C587C 2800B08F */  lw         $s0, 0x28($sp)
    /* 3C908 801C5880 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 3C90C 801C5884 0800E003 */  jr         $ra
    /* 3C910 801C5888 00000000 */   nop
endlabel func_801C576C
