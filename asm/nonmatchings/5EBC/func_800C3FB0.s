nonmatching func_800C3FB0, 0x18

glabel func_800C3FB0
    /* B47B0 800C3FB0 0D80023C */  lui        $v0, %hi(D_800D55C0)
    /* B47B4 800C3FB4 C055428C */  lw         $v0, %lo(D_800D55C0)($v0)
    /* B47B8 800C3FB8 00000000 */  nop
    /* B47BC 800C3FBC 01004238 */  xori       $v0, $v0, 0x1
    /* B47C0 800C3FC0 0800E003 */  jr         $ra
    /* B47C4 800C3FC4 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_800C3FB0
