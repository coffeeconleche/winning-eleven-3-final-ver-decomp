nonmatching func_801CF760, 0x1B8

glabel func_801CF760
    /* 467E8 801CF760 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 467EC 801CF764 2000B2AF */  sw         $s2, 0x20($sp)
    /* 467F0 801CF768 21908000 */  addu       $s2, $a0, $zero
    /* 467F4 801CF76C 01000424 */  addiu      $a0, $zero, 0x1
    /* 467F8 801CF770 21280000 */  addu       $a1, $zero, $zero
    /* 467FC 801CF774 00240224 */  addiu      $v0, $zero, 0x2400
    /* 46800 801CF778 1000A2AF */  sw         $v0, 0x10($sp)
    /* 46804 801CF77C 01000224 */  addiu      $v0, $zero, 0x1
    /* 46808 801CF780 1D80073C */  lui        $a3, %hi(D_801D1AF8)
    /* 4680C 801CF784 F81AE78C */  lw         $a3, %lo(D_801D1AF8)($a3)
    /* 46810 801CF788 1D80063C */  lui        $a2, %hi(D_801D59E8)
    /* 46814 801CF78C E859C624 */  addiu      $a2, $a2, %lo(D_801D59E8)
    /* 46818 801CF790 2800BFAF */  sw         $ra, 0x28($sp)
    /* 4681C 801CF794 2400B3AF */  sw         $s3, 0x24($sp)
    /* 46820 801CF798 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 46824 801CF79C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 46828 801CF7A0 8C4A060C */  jal        func_80192A30
    /* 4682C 801CF7A4 1400A2AF */   sw        $v0, 0x14($sp)
    /* 46830 801CF7A8 21204000 */  addu       $a0, $v0, $zero
    /* 46834 801CF7AC 1180113C */  lui        $s1, %hi(D_8010A5A8)
    /* 46838 801CF7B0 A8A53126 */  addiu      $s1, $s1, %lo(D_8010A5A8)
    /* 4683C 801CF7B4 1080133C */  lui        $s3, %hi(D_800FF748)
    /* 46840 801CF7B8 48F77326 */  addiu      $s3, $s3, %lo(D_800FF748)
    /* 46844 801CF7BC 04008324 */  addiu      $v1, $a0, 0x4
    /* 46848 801CF7C0 0600622C */  sltiu      $v0, $v1, 0x6
    /* 4684C 801CF7C4 4B004010 */  beqz       $v0, .L801CF8F4
    /* 46850 801CF7C8 801F103C */   lui       $s0, (0x1F800000 >> 16)
    /* 46854 801CF7CC 80100300 */  sll        $v0, $v1, 2
    /* 46858 801CF7D0 1980013C */  lui        $at, %hi(jtbl_8018DAE0)
    /* 4685C 801CF7D4 21082200 */  addu       $at, $at, $v0
    /* 46860 801CF7D8 E0DA228C */  lw         $v0, %lo(jtbl_8018DAE0)($at)
    /* 46864 801CF7DC 00000000 */  nop
    /* 46868 801CF7E0 08004000 */  jr         $v0
    /* 4686C 801CF7E4 00000000 */   nop
  jlabel .L801CF7E8
    /* 46870 801CF7E8 FF004232 */  andi       $v0, $s2, 0xFF
    /* 46874 801CF7EC 05004014 */  bnez       $v0, .L801CF804
    /* 46878 801CF7F0 00000000 */   nop
    /* 4687C 801CF7F4 1D80043C */  lui        $a0, %hi(D_801D1AF8)
    /* 46880 801CF7F8 F81A848C */  lw         $a0, %lo(D_801D1AF8)($a0)
    /* 46884 801CF7FC CE3F070C */  jal        func_801CFF38
    /* 46888 801CF800 00018424 */   addiu     $a0, $a0, 0x100
  .L801CF804:
    /* 4688C 801CF804 593E070C */  jal        func_801CF964
    /* 46890 801CF808 00000000 */   nop
    /* 46894 801CF80C 05002292 */  lbu        $v0, 0x5($s1)
    /* 46898 801CF810 00000000 */  nop
    /* 4689C 801CF814 02004010 */  beqz       $v0, .L801CF820
    /* 468A0 801CF818 0D000424 */   addiu     $a0, $zero, 0xD
    /* 468A4 801CF81C 0C000424 */  addiu      $a0, $zero, 0xC
  .L801CF820:
    /* 468A8 801CF820 88AD020C */  jal        func_800AB620
    /* 468AC 801CF824 00000000 */   nop
    /* 468B0 801CF828 06002292 */  lbu        $v0, 0x6($s1)
    /* 468B4 801CF82C 00000000 */  nop
    /* 468B8 801CF830 02004010 */  beqz       $v0, .L801CF83C
    /* 468BC 801CF834 05000424 */   addiu     $a0, $zero, 0x5
    /* 468C0 801CF838 04000424 */  addiu      $a0, $zero, 0x4
  .L801CF83C:
    /* 468C4 801CF83C 88AD020C */  jal        func_800AB620
    /* 468C8 801CF840 00000000 */   nop
    /* 468CC 801CF844 02002492 */  lbu        $a0, 0x2($s1)
    /* 468D0 801CF848 00000000 */  nop
    /* 468D4 801CF84C 2000822C */  sltiu      $v0, $a0, 0x20
    /* 468D8 801CF850 02004014 */  bnez       $v0, .L801CF85C
    /* 468DC 801CF854 42200400 */   srl       $a0, $a0, 1
    /* 468E0 801CF858 0F000424 */  addiu      $a0, $zero, 0xF
  .L801CF85C:
    /* 468E4 801CF85C C5A5020C */  jal        func_800A9714
    /* 468E8 801CF860 00000000 */   nop
    /* 468EC 801CF864 03002492 */  lbu        $a0, 0x3($s1)
    /* 468F0 801CF868 00000000 */  nop
    /* 468F4 801CF86C 2000822C */  sltiu      $v0, $a0, 0x20
    /* 468F8 801CF870 02004014 */  bnez       $v0, .L801CF87C
    /* 468FC 801CF874 42200400 */   srl       $a0, $a0, 1
    /* 46900 801CF878 0F000424 */  addiu      $a0, $zero, 0xF
  .L801CF87C:
    /* 46904 801CF87C 49AC020C */  jal        func_800AB124
    /* 46908 801CF880 00000000 */   nop
    /* 4690C 801CF884 04002492 */  lbu        $a0, 0x4($s1)
    /* 46910 801CF888 00000000 */  nop
    /* 46914 801CF88C 2000822C */  sltiu      $v0, $a0, 0x20
    /* 46918 801CF890 03004014 */  bnez       $v0, .L801CF8A0
    /* 4691C 801CF894 00000000 */   nop
    /* 46920 801CF898 293E0708 */  j          .L801CF8A4
    /* 46924 801CF89C 0F000424 */   addiu     $a0, $zero, 0xF
  .L801CF8A0:
    /* 46928 801CF8A0 42200400 */  srl        $a0, $a0, 1
  .L801CF8A4:
    /* 4692C 801CF8A4 38A6020C */  jal        func_800A98E0
    /* 46930 801CF8A8 00000000 */   nop
    /* 46934 801CF8AC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46938 801CF8B0 21086102 */  addu       $at, $s3, $at
    /* 4693C 801CF8B4 18AC2484 */  lh         $a0, -0x53E8($at)
    /* 46940 801CF8B8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46944 801CF8BC 21086102 */  addu       $at, $s3, $at
    /* 46948 801CF8C0 1AAC2584 */  lh         $a1, -0x53E6($at)
    /* 4694C 801CF8C4 56D2020C */  jal        func_800B4958
    /* 46950 801CF8C8 00000000 */   nop
    /* 46954 801CF8CC 3D3E0708 */  j          .L801CF8F4
    /* 46958 801CF8D0 01000424 */   addiu     $a0, $zero, 0x1
  jlabel .L801CF8D4
    /* 4695C 801CF8D4 940200A6 */  sh         $zero, 0x294($s0)
    /* 46960 801CF8D8 3D3E0708 */  j          .L801CF8F4
    /* 46964 801CF8DC FCFF0424 */   addiu     $a0, $zero, -0x4
  jlabel .L801CF8E0
    /* 46968 801CF8E0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4696C 801CF8E4 21086102 */  addu       $at, $s3, $at
    /* 46970 801CF8E8 1E8F20A0 */  sb         $zero, -0x70E2($at)
  jlabel .L801CF8EC
    /* 46974 801CF8EC 940200A6 */  sh         $zero, 0x294($s0)
    /* 46978 801CF8F0 FFFF0424 */  addiu      $a0, $zero, -0x1
  jlabel .L801CF8F4
    /* 4697C 801CF8F4 21108000 */  addu       $v0, $a0, $zero
    /* 46980 801CF8F8 2800BF8F */  lw         $ra, 0x28($sp)
    /* 46984 801CF8FC 2400B38F */  lw         $s3, 0x24($sp)
    /* 46988 801CF900 2000B28F */  lw         $s2, 0x20($sp)
    /* 4698C 801CF904 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 46990 801CF908 1800B08F */  lw         $s0, 0x18($sp)
    /* 46994 801CF90C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 46998 801CF910 0800E003 */  jr         $ra
    /* 4699C 801CF914 00000000 */   nop
endlabel func_801CF760
