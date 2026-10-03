nonmatching func_8005BA30, 0x48

glabel func_8005BA30
    /* 4C230 8005BA30 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 4C234 8005BA34 8E0385A4 */  sh         $a1, 0x38E($a0)
    /* 4C238 8005BA38 8E038294 */  lhu        $v0, 0x38E($a0)
    /* 4C23C 8005BA3C 900386A0 */  sb         $a2, 0x390($a0)
    /* 4C240 8005BA40 80100200 */  sll        $v0, $v0, 2
    /* 4C244 8005BA44 1580013C */  lui        $at, %hi(D_8014A000)
    /* 4C248 8005BA48 21082200 */  addu       $at, $at, $v0
    /* 4C24C 8005BA4C 00A0238C */  lw         $v1, %lo(D_8014A000)($at)
    /* 4C250 8005BA50 90038290 */  lbu        $v0, 0x390($a0)
    /* 4C254 8005BA54 00000000 */  nop
    /* 4C258 8005BA58 80100200 */  sll        $v0, $v0, 2
    /* 4C25C 8005BA5C 180083AC */  sw         $v1, 0x18($a0)
    /* 4C260 8005BA60 21186200 */  addu       $v1, $v1, $v0
    /* 4C264 8005BA64 0000638C */  lw         $v1, 0x0($v1)
    /* 4C268 8005BA68 01000224 */  addiu      $v0, $zero, 0x1
    /* 4C26C 8005BA6C AD0382A0 */  sb         $v0, 0x3AD($a0)
    /* 4C270 8005BA70 0800E003 */  jr         $ra
    /* 4C274 8005BA74 1C0083AC */   sw        $v1, 0x1C($a0)
endlabel func_8005BA30
