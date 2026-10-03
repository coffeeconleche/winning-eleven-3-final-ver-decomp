nonmatching func_800C3F88, 0x28

glabel func_800C3F88
    /* B4788 800C3F88 01000224 */  addiu      $v0, $zero, 0x1
    /* B478C 800C3F8C 04008214 */  bne        $a0, $v0, .L800C3FA0
    /* B4790 800C3F90 00000000 */   nop
    /* B4794 800C3F94 0D80013C */  lui        $at, %hi(D_800D55C0)
    /* B4798 800C3F98 EA0F0308 */  j          .L800C3FA8
    /* B479C 800C3F9C C05520AC */   sw        $zero, %lo(D_800D55C0)($at)
  .L800C3FA0:
    /* B47A0 800C3FA0 0D80013C */  lui        $at, %hi(D_800D55C0)
    /* B47A4 800C3FA4 C05522AC */  sw         $v0, %lo(D_800D55C0)($at)
  .L800C3FA8:
    /* B47A8 800C3FA8 0800E003 */  jr         $ra
    /* B47AC 800C3FAC 00000000 */   nop
endlabel func_800C3F88
