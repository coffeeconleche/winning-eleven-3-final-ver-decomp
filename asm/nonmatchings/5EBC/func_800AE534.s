nonmatching func_800AE534, 0x68

glabel func_800AE534
    /* 9ED34 800AE534 0D80023C */  lui        $v0, %hi(D_800CEAC6)
    /* 9ED38 800AE538 C6EA4290 */  lbu        $v0, %lo(D_800CEAC6)($v0)
    /* 9ED3C 800AE53C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9ED40 800AE540 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9ED44 800AE544 21808000 */  addu       $s0, $a0, $zero
    /* 9ED48 800AE548 0200422C */  sltiu      $v0, $v0, 0x2
    /* 9ED4C 800AE54C 08004014 */  bnez       $v0, .L800AE570
    /* 9ED50 800AE550 1400BFAF */   sw        $ra, 0x14($sp)
    /* 9ED54 800AE554 0180043C */  lui        $a0, %hi(D_80014F04)
    /* 9ED58 800AE558 044F8424 */  addiu      $a0, $a0, %lo(D_80014F04)
    /* 9ED5C 800AE55C 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9ED60 800AE560 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9ED64 800AE564 00000000 */  nop
    /* 9ED68 800AE568 09F84000 */  jalr       $v0
    /* 9ED6C 800AE56C 21280002 */   addu      $a1, $s0, $zero
  .L800AE570:
    /* 9ED70 800AE570 0D80023C */  lui        $v0, %hi(D_800CEABC)
    /* 9ED74 800AE574 BCEA428C */  lw         $v0, %lo(D_800CEABC)($v0)
    /* 9ED78 800AE578 00000000 */  nop
    /* 9ED7C 800AE57C 3C00428C */  lw         $v0, 0x3C($v0)
    /* 9ED80 800AE580 00000000 */  nop
    /* 9ED84 800AE584 09F84000 */  jalr       $v0
    /* 9ED88 800AE588 21200002 */   addu      $a0, $s0, $zero
    /* 9ED8C 800AE58C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9ED90 800AE590 1000B08F */  lw         $s0, 0x10($sp)
    /* 9ED94 800AE594 0800E003 */  jr         $ra
    /* 9ED98 800AE598 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AE534
