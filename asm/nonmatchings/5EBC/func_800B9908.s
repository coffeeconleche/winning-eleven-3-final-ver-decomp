nonmatching func_800B9908, 0xF8

glabel func_800B9908
    /* AA108 800B9908 0A00A010 */  beqz       $a1, .L800B9934
    /* AA10C 800B990C 21300000 */   addu      $a2, $zero, $zero
  .L800B9910:
    /* AA110 800B9910 2110C400 */  addu       $v0, $a2, $a0
    /* AA114 800B9914 0100C624 */  addiu      $a2, $a2, 0x1
    /* AA118 800B9918 1180033C */  lui        $v1, %hi(D_8010CD8C)
    /* AA11C 800B991C 8CCD638C */  lw         $v1, %lo(D_8010CD8C)($v1)
    /* AA120 800B9920 40110200 */  sll        $v0, $v0, 5
    /* AA124 800B9924 21186200 */  addu       $v1, $v1, $v0
    /* AA128 800B9928 2B10C500 */  sltu       $v0, $a2, $a1
    /* AA12C 800B992C F8FF4014 */  bnez       $v0, .L800B9910
    /* AA130 800B9930 000060AC */   sw        $zero, 0x0($v1)
  .L800B9934:
    /* AA134 800B9934 0800E003 */  jr         $ra
    /* AA138 800B9938 00000000 */   nop
    /* AA13C 800B993C 00000000 */  nop
    /* AA140 800B9940 00000000 */  nop
    /* AA144 800B9944 00000000 */  nop
    /* AA148 800B9948 21388000 */  addu       $a3, $a0, $zero
    /* AA14C 800B994C 1180023C */  lui        $v0, %hi(D_8010C1CC)
    /* AA150 800B9950 CCC1428C */  lw         $v0, %lo(D_8010C1CC)($v0)
    /* AA154 800B9954 1180033C */  lui        $v1, %hi(D_8010CD8C)
    /* AA158 800B9958 8CCD638C */  lw         $v1, %lo(D_8010CD8C)($v1)
    /* AA15C 800B995C 40110200 */  sll        $v0, $v0, 5
    /* AA160 800B9960 21306200 */  addu       $a2, $v1, $v0
    /* AA164 800B9964 0000C394 */  lhu        $v1, 0x0($a2)
    /* AA168 800B9968 01000224 */  addiu      $v0, $zero, 0x1
    /* AA16C 800B996C 0D006214 */  bne        $v1, $v0, .L800B99A4
    /* AA170 800B9970 2140A000 */   addu      $t0, $a1, $zero
    /* AA174 800B9974 1180023C */  lui        $v0, %hi(D_8010CD58)
    /* AA178 800B9978 58CD428C */  lw         $v0, %lo(D_8010CD58)($v0)
    /* AA17C 800B997C 1180013C */  lui        $at, %hi(D_8010C1CC)
    /* AA180 800B9980 02004010 */  beqz       $v0, .L800B998C
    /* AA184 800B9984 CCC120AC */   sw        $zero, %lo(D_8010C1CC)($at)
    /* AA188 800B9988 0000C0A4 */  sh         $zero, 0x0($a2)
  .L800B998C:
    /* AA18C 800B998C 1180023C */  lui        $v0, %hi(D_8010C1CC)
    /* AA190 800B9990 CCC1428C */  lw         $v0, %lo(D_8010C1CC)($v0)
    /* AA194 800B9994 1180033C */  lui        $v1, %hi(D_8010CD8C)
    /* AA198 800B9998 8CCD638C */  lw         $v1, %lo(D_8010CD8C)($v1)
    /* AA19C 800B999C 40110200 */  sll        $v0, $v0, 5
    /* AA1A0 800B99A0 21306200 */  addu       $a2, $v1, $v0
  .L800B99A4:
    /* AA1A4 800B99A4 0000C394 */  lhu        $v1, 0x0($a2)
    /* AA1A8 800B99A8 02000224 */  addiu      $v0, $zero, 0x2
    /* AA1AC 800B99AC 12006214 */  bne        $v1, $v0, .L800B99F8
    /* AA1B0 800B99B0 01000224 */   addiu     $v0, $zero, 0x1
    /* AA1B4 800B99B4 04000224 */  addiu      $v0, $zero, 0x4
    /* AA1B8 800B99B8 0000C2A4 */  sh         $v0, 0x0($a2)
    /* AA1BC 800B99BC 21100000 */  addu       $v0, $zero, $zero
    /* AA1C0 800B99C0 1180033C */  lui        $v1, %hi(D_8010CE68)
    /* AA1C4 800B99C4 68CE638C */  lw         $v1, %lo(D_8010CE68)($v1)
    /* AA1C8 800B99C8 1180043C */  lui        $a0, %hi(D_8010CD8C)
    /* AA1CC 800B99CC 8CCD848C */  lw         $a0, %lo(D_8010CD8C)($a0)
    /* AA1D0 800B99D0 1180053C */  lui        $a1, %hi(D_8010C1CC)
    /* AA1D4 800B99D4 CCC1A58C */  lw         $a1, %lo(D_8010C1CC)($a1)
    /* AA1D8 800B99D8 40190300 */  sll        $v1, $v1, 5
    /* AA1DC 800B99DC 21208300 */  addu       $a0, $a0, $v1
    /* AA1E0 800B99E0 80190500 */  sll        $v1, $a1, 6
    /* AA1E4 800B99E4 23186500 */  subu       $v1, $v1, $a1
    /* AA1E8 800B99E8 40190300 */  sll        $v1, $v1, 5
    /* AA1EC 800B99EC 21208300 */  addu       $a0, $a0, $v1
    /* AA1F0 800B99F0 0000E4AC */  sw         $a0, 0x0($a3)
    /* AA1F4 800B99F4 000006AD */  sw         $a2, 0x0($t0)
  .L800B99F8:
    /* AA1F8 800B99F8 0800E003 */  jr         $ra
    /* AA1FC 800B99FC 00000000 */   nop
endlabel func_800B9908
    /* AA200 800B9A00 00000000 */  nop
    /* AA204 800B9A04 00000000 */  nop
