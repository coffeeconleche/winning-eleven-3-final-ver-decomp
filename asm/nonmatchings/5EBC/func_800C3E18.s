nonmatching func_800C3E18, 0x30

glabel func_800C3E18
    /* B4618 800C3E18 05008010 */  beqz       $a0, .L800C3E30
    /* B461C 800C3E1C 01000224 */   addiu     $v0, $zero, 0x1
    /* B4620 800C3E20 04008214 */  bne        $a0, $v0, .L800C3E34
    /* B4624 800C3E24 21100000 */   addu      $v0, $zero, $zero
    /* B4628 800C3E28 8D0F0308 */  j          .L800C3E34
    /* B462C 800C3E2C 01000224 */   addiu     $v0, $zero, 0x1
  .L800C3E30:
    /* B4630 800C3E30 21100000 */  addu       $v0, $zero, $zero
  .L800C3E34:
    /* B4634 800C3E34 0D80013C */  lui        $at, %hi(D_800D511C)
    /* B4638 800C3E38 1C5124AC */  sw         $a0, %lo(D_800D511C)($at)
    /* B463C 800C3E3C 0D80013C */  lui        $at, %hi(D_800D55A8)
    /* B4640 800C3E40 0800E003 */  jr         $ra
    /* B4644 800C3E44 A85522AC */   sw        $v0, %lo(D_800D55A8)($at)
endlabel func_800C3E18
