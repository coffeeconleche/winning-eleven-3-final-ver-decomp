nonmatching func_801BCBA8, 0x130

glabel func_801BCBA8
    /* 33C30 801BCBA8 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 33C34 801BCBAC 801F083C */  lui        $t0, (0x1F8002DE >> 16)
    /* 33C38 801BCBB0 1080053C */  lui        $a1, %hi(D_800FF748)
    /* 33C3C 801BCBB4 48F7A524 */  addiu      $a1, $a1, %lo(D_800FF748)
    /* 33C40 801BCBB8 1180033C */  lui        $v1, %hi(D_80108669)
    /* 33C44 801BCBBC 69866390 */  lbu        $v1, %lo(D_80108669)($v1)
    /* 33C48 801BCBC0 21300000 */  addu       $a2, $zero, $zero
    /* 33C4C 801BCBC4 1180013C */  lui        $at, %hi(D_8010A2E8)
    /* 33C50 801BCBC8 E8A223A0 */  sb         $v1, %lo(D_8010A2E8)($at)
    /* 33C54 801BCBCC FF006330 */  andi       $v1, $v1, 0xFF
    /* 33C58 801BCBD0 1180013C */  lui        $at, %hi(D_8010A2C8)
    /* 33C5C 801BCBD4 21082300 */  addu       $at, $at, $v1
    /* 33C60 801BCBD8 C8A22490 */  lbu        $a0, %lo(D_8010A2C8)($at)
    /* 33C64 801BCBDC 80AB0734 */  ori        $a3, $zero, 0xAB80
    /* 33C68 801BCBE0 C0100400 */  sll        $v0, $a0, 3
    /* 33C6C 801BCBE4 21104400 */  addu       $v0, $v0, $a0
    /* 33C70 801BCBE8 80100200 */  sll        $v0, $v0, 2
    /* 33C74 801BCBEC 1180013C */  lui        $at, %hi(D_8010866D)
    /* 33C78 801BCBF0 21082200 */  addu       $at, $at, $v0
    /* 33C7C 801BCBF4 6D862290 */  lbu        $v0, %lo(D_8010866D)($at)
    /* 33C80 801BCBF8 01000924 */  addiu      $t1, $zero, 0x1
    /* 33C84 801BCBFC 801F013C */  lui        $at, (0x1F8002DD >> 16)
    /* 33C88 801BCC00 DD0222A0 */  sb         $v0, (0x1F8002DD & 0xFFFF)($at)
    /* 33C8C 801BCC04 FF00C230 */  andi       $v0, $a2, 0xFF
  .L801BCC08:
    /* 33C90 801BCC08 40200200 */  sll        $a0, $v0, 1
    /* 33C94 801BCC0C 1E80013C */  lui        $at, %hi(D_801D9290)
    /* 33C98 801BCC10 21082400 */  addu       $at, $at, $a0
    /* 33C9C 801BCC14 90922290 */  lbu        $v0, %lo(D_801D9290)($at)
    /* 33CA0 801BCC18 00000000 */  nop
    /* 33CA4 801BCC1C 09004314 */  bne        $v0, $v1, .L801BCC44
    /* 33CA8 801BCC20 00000000 */   nop
    /* 33CAC 801BCC24 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33CB0 801BCC28 2108A100 */  addu       $at, $a1, $at
    /* 33CB4 801BCC2C 158F20A0 */  sb         $zero, -0x70EB($at)
    /* 33CB8 801BCC30 1E80013C */  lui        $at, %hi(D_801D9291)
    /* 33CBC 801BCC34 21082400 */  addu       $at, $at, $a0
    /* 33CC0 801BCC38 91922290 */  lbu        $v0, %lo(D_801D9291)($at)
    /* 33CC4 801BCC3C 1DF30608 */  j          .L801BCC74
    /* 33CC8 801BCC40 00000000 */   nop
  .L801BCC44:
    /* 33CCC 801BCC44 1E80013C */  lui        $at, %hi(D_801D9291)
    /* 33CD0 801BCC48 21082400 */  addu       $at, $at, $a0
    /* 33CD4 801BCC4C 91922290 */  lbu        $v0, %lo(D_801D9291)($at)
    /* 33CD8 801BCC50 00000000 */  nop
    /* 33CDC 801BCC54 17004314 */  bne        $v0, $v1, .L801BCCB4
    /* 33CE0 801BCC58 00000000 */   nop
    /* 33CE4 801BCC5C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33CE8 801BCC60 2108A100 */  addu       $at, $a1, $at
    /* 33CEC 801BCC64 158F29A0 */  sb         $t1, -0x70EB($at)
    /* 33CF0 801BCC68 1E80013C */  lui        $at, %hi(D_801D9290)
    /* 33CF4 801BCC6C 21082400 */  addu       $at, $at, $a0
    /* 33CF8 801BCC70 90922290 */  lbu        $v0, %lo(D_801D9290)($at)
  .L801BCC74:
    /* 33CFC 801BCC74 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33D00 801BCC78 2108A100 */  addu       $at, $a1, $at
    /* 33D04 801BCC7C A1AB22A0 */  sb         $v0, -0x545F($at)
    /* 33D08 801BCC80 21104500 */  addu       $v0, $v0, $a1
    /* 33D0C 801BCC84 21104700 */  addu       $v0, $v0, $a3
    /* 33D10 801BCC88 00004390 */  lbu        $v1, 0x0($v0)
    /* 33D14 801BCC8C 00000000 */  nop
    /* 33D18 801BCC90 C0100300 */  sll        $v0, $v1, 3
    /* 33D1C 801BCC94 21104300 */  addu       $v0, $v0, $v1
    /* 33D20 801BCC98 80100200 */  sll        $v0, $v0, 2
    /* 33D24 801BCC9C 2110A200 */  addu       $v0, $a1, $v0
    /* 33D28 801BCCA0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33D2C 801BCCA4 21084100 */  addu       $at, $v0, $at
    /* 33D30 801BCCA8 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 33D34 801BCCAC 32F30608 */  j          .L801BCCC8
    /* 33D38 801BCCB0 DE0202A1 */   sb        $v0, (0x1F8002DE & 0xFFFF)($t0)
  .L801BCCB4:
    /* 33D3C 801BCCB4 0100C624 */  addiu      $a2, $a2, 0x1
    /* 33D40 801BCCB8 FF00C230 */  andi       $v0, $a2, 0xFF
    /* 33D44 801BCCBC 0800422C */  sltiu      $v0, $v0, 0x8
    /* 33D48 801BCCC0 D1FF4014 */  bnez       $v0, .L801BCC08
    /* 33D4C 801BCCC4 FF00C230 */   andi      $v0, $a2, 0xFF
  .L801BCCC8:
    /* 33D50 801BCCC8 FF00C230 */  andi       $v0, $a2, 0xFF
    /* 33D54 801BCCCC 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 33D58 801BCCD0 0800E003 */  jr         $ra
    /* 33D5C 801BCCD4 00000000 */   nop
endlabel func_801BCBA8
