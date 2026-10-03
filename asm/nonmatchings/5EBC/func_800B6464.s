nonmatching func_800B6464, 0xC8

glabel func_800B6464
    /* A6C64 800B6464 0000828C */  lw         $v0, 0x0($a0)
    /* A6C68 800B6468 0400838C */  lw         $v1, 0x4($a0)
    /* A6C6C 800B646C 02004104 */  bgez       $v0, .L800B6478
    /* A6C70 800B6470 21284000 */   addu      $a1, $v0, $zero
    /* A6C74 800B6474 23280500 */  negu       $a1, $a1
  .L800B6478:
    /* A6C78 800B6478 02006104 */  bgez       $v1, .L800B6484
    /* A6C7C 800B647C 00000000 */   nop
    /* A6C80 800B6480 23180300 */  negu       $v1, $v1
  .L800B6484:
    /* A6C84 800B6484 2A10A300 */  slt        $v0, $a1, $v1
    /* A6C88 800B6488 02004010 */  beqz       $v0, .L800B6494
    /* A6C8C 800B648C 00000000 */   nop
    /* A6C90 800B6490 21286000 */  addu       $a1, $v1, $zero
  .L800B6494:
    /* A6C94 800B6494 0800828C */  lw         $v0, 0x8($a0)
    /* A6C98 800B6498 00000000 */  nop
    /* A6C9C 800B649C 02004104 */  bgez       $v0, .L800B64A8
    /* A6CA0 800B64A0 21184000 */   addu      $v1, $v0, $zero
    /* A6CA4 800B64A4 23180300 */  negu       $v1, $v1
  .L800B64A8:
    /* A6CA8 800B64A8 2A10A300 */  slt        $v0, $a1, $v1
    /* A6CAC 800B64AC 02004010 */  beqz       $v0, .L800B64B8
    /* A6CB0 800B64B0 00000000 */   nop
    /* A6CB4 800B64B4 21286000 */  addu       $a1, $v1, $zero
  .L800B64B8:
    /* A6CB8 800B64B8 0C00828C */  lw         $v0, 0xC($a0)
    /* A6CBC 800B64BC 00000000 */  nop
    /* A6CC0 800B64C0 02004104 */  bgez       $v0, .L800B64CC
    /* A6CC4 800B64C4 21184000 */   addu      $v1, $v0, $zero
    /* A6CC8 800B64C8 23180300 */  negu       $v1, $v1
  .L800B64CC:
    /* A6CCC 800B64CC 2A10A300 */  slt        $v0, $a1, $v1
    /* A6CD0 800B64D0 02004010 */  beqz       $v0, .L800B64DC
    /* A6CD4 800B64D4 00000000 */   nop
    /* A6CD8 800B64D8 21286000 */  addu       $a1, $v1, $zero
  .L800B64DC:
    /* A6CDC 800B64DC 1000828C */  lw         $v0, 0x10($a0)
    /* A6CE0 800B64E0 00000000 */  nop
    /* A6CE4 800B64E4 02004104 */  bgez       $v0, .L800B64F0
    /* A6CE8 800B64E8 21184000 */   addu      $v1, $v0, $zero
    /* A6CEC 800B64EC 23180300 */  negu       $v1, $v1
  .L800B64F0:
    /* A6CF0 800B64F0 2A10A300 */  slt        $v0, $a1, $v1
    /* A6CF4 800B64F4 02004010 */  beqz       $v0, .L800B6500
    /* A6CF8 800B64F8 00000000 */   nop
    /* A6CFC 800B64FC 21286000 */  addu       $a1, $v1, $zero
  .L800B6500:
    /* A6D00 800B6500 1400828C */  lw         $v0, 0x14($a0)
    /* A6D04 800B6504 00000000 */  nop
    /* A6D08 800B6508 02004104 */  bgez       $v0, .L800B6514
    /* A6D0C 800B650C 21184000 */   addu      $v1, $v0, $zero
    /* A6D10 800B6510 23180300 */  negu       $v1, $v1
  .L800B6514:
    /* A6D14 800B6514 2A10A300 */  slt        $v0, $a1, $v1
    /* A6D18 800B6518 02004010 */  beqz       $v0, .L800B6524
    /* A6D1C 800B651C 00000000 */   nop
    /* A6D20 800B6520 21286000 */  addu       $a1, $v1, $zero
  .L800B6524:
    /* A6D24 800B6524 0800E003 */  jr         $ra
    /* A6D28 800B6528 2110A000 */   addu      $v0, $a1, $zero
endlabel func_800B6464
