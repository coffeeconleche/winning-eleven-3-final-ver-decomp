nonmatching func_800BA8B4, 0xF0

glabel func_800BA8B4
    /* AB0B4 800BA8B4 0D80033C */  lui        $v1, %hi(D_800D4E7C)
    /* AB0B8 800BA8B8 7C4E638C */  lw         $v1, %lo(D_800D4E7C)($v1)
    /* AB0BC 800BA8BC 00000000 */  nop
    /* AB0C0 800BA8C0 00006294 */  lhu        $v0, 0x0($v1)
    /* AB0C4 800BA8C4 0800E003 */  jr         $ra
    /* AB0C8 800BA8C8 000064A4 */   sh        $a0, 0x0($v1)
    /* AB0CC 800BA8CC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AB0D0 800BA8D0 1000B0AF */  sw         $s0, 0x10($sp)
    /* AB0D4 800BA8D4 0D80103C */  lui        $s0, %hi(D_800D3DEC)
    /* AB0D8 800BA8D8 EC3D1026 */  addiu      $s0, $s0, %lo(D_800D3DEC)
    /* AB0DC 800BA8DC 1400BFAF */  sw         $ra, 0x14($sp)
    /* AB0E0 800BA8E0 00000296 */  lhu        $v0, 0x0($s0)
    /* AB0E4 800BA8E4 00000000 */  nop
    /* AB0E8 800BA8E8 2A004014 */  bnez       $v0, .L800BA994
    /* AB0EC 800BA8EC 21100000 */   addu      $v0, $zero, $zero
    /* AB0F0 800BA8F0 0D80033C */  lui        $v1, %hi(D_800D4E78)
    /* AB0F4 800BA8F4 784E638C */  lw         $v1, %lo(D_800D4E78)($v1)
    /* AB0F8 800BA8F8 0D80023C */  lui        $v0, %hi(D_800D4E7C)
    /* AB0FC 800BA8FC 7C4E428C */  lw         $v0, %lo(D_800D4E7C)($v0)
    /* AB100 800BA900 3333053C */  lui        $a1, (0x33333333 >> 16)
    /* AB104 800BA904 000040A4 */  sh         $zero, 0x0($v0)
    /* AB108 800BA908 00004294 */  lhu        $v0, 0x0($v0)
    /* AB10C 800BA90C 3333A534 */  ori        $a1, $a1, (0x33333333 & 0xFFFF)
    /* AB110 800BA910 000062A4 */  sh         $v0, 0x0($v1)
    /* AB114 800BA914 0D80023C */  lui        $v0, %hi(D_800D4E80)
    /* AB118 800BA918 804E428C */  lw         $v0, %lo(D_800D4E80)($v0)
    /* AB11C 800BA91C 21200002 */  addu       $a0, $s0, $zero
    /* AB120 800BA920 000045AC */  sw         $a1, 0x0($v0)
    /* AB124 800BA924 75EB020C */  jal        func_800BADD4
    /* AB128 800BA928 1A040524 */   addiu     $a1, $zero, 0x41A
    /* AB12C 800BA92C 92EB020C */  jal        func_800BAE48
    /* AB130 800BA930 38000426 */   addiu     $a0, $s0, 0x38
    /* AB134 800BA934 03004010 */  beqz       $v0, .L800BA944
    /* AB138 800BA938 00000000 */   nop
    /* AB13C 800BA93C 69EA020C */  jal        func_800BA9A4
    /* AB140 800BA940 00000000 */   nop
  .L800BA944:
    /* AB144 800BA944 0D80103C */  lui        $s0, %hi(D_800D3E28)
    /* AB148 800BA948 283E1026 */  addiu      $s0, $s0, %lo(D_800D3E28)
    /* AB14C 800BA94C FCFF0426 */  addiu      $a0, $s0, -0x4
    /* AB150 800BA950 DC0F0226 */  addiu      $v0, $s0, 0xFDC
    /* AB154 800BA954 8EEB020C */  jal        func_800BAE38
    /* AB158 800BA958 000002AE */   sw        $v0, 0x0($s0)
    /* AB15C 800BA95C 01000224 */  addiu      $v0, $zero, 0x1
    /* AB160 800BA960 96EB020C */  jal        func_800BAE58
    /* AB164 800BA964 C4FF02A6 */   sh        $v0, -0x3C($s0)
    /* AB168 800BA968 0D80033C */  lui        $v1, %hi(D_800D4E74)
    /* AB16C 800BA96C 744E638C */  lw         $v1, %lo(D_800D4E74)($v1)
    /* AB170 800BA970 DEEB020C */  jal        func_800BAF78
    /* AB174 800BA974 140062AC */   sw        $v0, 0x14($v1)
    /* AB178 800BA978 0D80043C */  lui        $a0, %hi(D_800D4E74)
    /* AB17C 800BA97C 744E848C */  lw         $a0, %lo(D_800D4E74)($a0)
    /* AB180 800BA980 80EB020C */  jal        func_800BAE00
    /* AB184 800BA984 040082AC */   sw        $v0, 0x4($a0)
    /* AB188 800BA988 9AB3020C */  jal        func_800ACE68
    /* AB18C 800BA98C C4FF1026 */   addiu     $s0, $s0, -0x3C
    /* AB190 800BA990 21100002 */  addu       $v0, $s0, $zero
  .L800BA994:
    /* AB194 800BA994 1400BF8F */  lw         $ra, 0x14($sp)
    /* AB198 800BA998 1000B08F */  lw         $s0, 0x10($sp)
    /* AB19C 800BA99C 0800E003 */  jr         $ra
    /* AB1A0 800BA9A0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800BA8B4
