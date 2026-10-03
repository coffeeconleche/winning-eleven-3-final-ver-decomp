nonmatching func_800BDC78, 0x74

glabel func_800BDC78
    /* AE478 800BDC78 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AE47C 800BDC7C 21288000 */  addu       $a1, $a0, $zero
    /* AE480 800BDC80 0F80023C */  lui        $v0, %hi(D_800F1014)
    /* AE484 800BDC84 1410428C */  lw         $v0, %lo(D_800F1014)($v0)
    /* AE488 800BDC88 01000324 */  addiu      $v1, $zero, 0x1
    /* AE48C 800BDC8C 03004314 */  bne        $v0, $v1, .L800BDC9C
    /* AE490 800BDC90 1000BFAF */   sw        $ra, 0x10($sp)
    /* AE494 800BDC94 37F70208 */  j          .L800BDCDC
    /* AE498 800BDC98 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800BDC9C:
    /* AE49C 800BDC9C 0F80013C */  lui        $at, %hi(D_800F1014)
    /* AE4A0 800BDCA0 141023AC */  sw         $v1, %lo(D_800F1014)($at)
    /* AE4A4 800BDCA4 FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* AE4A8 800BDCA8 1800422C */  sltiu      $v0, $v0, 0x18
    /* AE4AC 800BDCAC 04004014 */  bnez       $v0, .L800BDCC0
    /* AE4B0 800BDCB0 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* AE4B4 800BDCB4 0F80013C */  lui        $at, %hi(D_800F1014)
    /* AE4B8 800BDCB8 37F70208 */  j          .L800BDCDC
    /* AE4BC 800BDCBC 141020AC */   sw        $zero, %lo(D_800F1014)($at)
  .L800BDCC0:
    /* AE4C0 800BDCC0 1180013C */  lui        $at, %hi(D_8010A3E2)
    /* AE4C4 800BDCC4 E2A324A4 */  sh         $a0, %lo(D_8010A3E2)($at)
    /* AE4C8 800BDCC8 46FF020C */  jal        func_800BFD18
    /* AE4CC 800BDCCC 21200000 */   addu      $a0, $zero, $zero
    /* AE4D0 800BDCD0 21100000 */  addu       $v0, $zero, $zero
    /* AE4D4 800BDCD4 0F80013C */  lui        $at, %hi(D_800F1014)
    /* AE4D8 800BDCD8 141020AC */  sw         $zero, %lo(D_800F1014)($at)
  .L800BDCDC:
    /* AE4DC 800BDCDC 1000BF8F */  lw         $ra, 0x10($sp)
    /* AE4E0 800BDCE0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AE4E4 800BDCE4 0800E003 */  jr         $ra
    /* AE4E8 800BDCE8 00000000 */   nop
endlabel func_800BDC78
    /* AE4EC 800BDCEC 00000000 */  nop
    /* AE4F0 800BDCF0 00000000 */  nop
    /* AE4F4 800BDCF4 00000000 */  nop
