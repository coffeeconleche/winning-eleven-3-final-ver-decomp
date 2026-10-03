nonmatching func_801C1CD4, 0xC0

glabel func_801C1CD4
    /* 38D5C 801C1CD4 21288000 */  addu       $a1, $a0, $zero
    /* 38D60 801C1CD8 FF00A630 */  andi       $a2, $a1, 0xFF
    /* 38D64 801C1CDC 0A00C22C */  sltiu      $v0, $a2, 0xA
    /* 38D68 801C1CE0 11004010 */  beqz       $v0, .L801C1D28
    /* 38D6C 801C1CE4 20000424 */   addiu     $a0, $zero, 0x20
    /* 38D70 801C1CE8 1280023C */  lui        $v0, %hi(D_8011D778)
    /* 38D74 801C1CEC 78D7428C */  lw         $v0, %lo(D_8011D778)($v0)
    /* 38D78 801C1CF0 00000000 */  nop
    /* 38D7C 801C1CF4 020044A0 */  sb         $a0, 0x2($v0)
    /* 38D80 801C1CF8 1280033C */  lui        $v1, %hi(D_8011D778)
    /* 38D84 801C1CFC 78D7638C */  lw         $v1, %lo(D_8011D778)($v1)
    /* 38D88 801C1D00 82000224 */  addiu      $v0, $zero, 0x82
    /* 38D8C 801C1D04 030062A0 */  sb         $v0, 0x3($v1)
    /* 38D90 801C1D08 1280033C */  lui        $v1, %hi(D_8011D778)
    /* 38D94 801C1D0C 78D7638C */  lw         $v1, %lo(D_8011D778)($v1)
    /* 38D98 801C1D10 4F00A224 */  addiu      $v0, $a1, 0x4F
    /* 38D9C 801C1D14 040062A0 */  sb         $v0, 0x4($v1)
    /* 38DA0 801C1D18 1280023C */  lui        $v0, %hi(D_8011D778)
    /* 38DA4 801C1D1C 78D7428C */  lw         $v0, %lo(D_8011D778)($v0)
    /* 38DA8 801C1D20 63070708 */  j          .L801C1D8C
    /* 38DAC 801C1D24 050044A0 */   sb        $a0, 0x5($v0)
  .L801C1D28:
    /* 38DB0 801C1D28 CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 38DB4 801C1D2C CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 38DB8 801C1D30 1900C200 */  multu      $a2, $v0
    /* 38DBC 801C1D34 1280023C */  lui        $v0, %hi(D_8011D778)
    /* 38DC0 801C1D38 78D7428C */  lw         $v0, %lo(D_8011D778)($v0)
    /* 38DC4 801C1D3C 82000524 */  addiu      $a1, $zero, 0x82
    /* 38DC8 801C1D40 020045A0 */  sb         $a1, 0x2($v0)
    /* 38DCC 801C1D44 1280043C */  lui        $a0, %hi(D_8011D778)
    /* 38DD0 801C1D48 78D7848C */  lw         $a0, %lo(D_8011D778)($a0)
    /* 38DD4 801C1D4C 10380000 */  mfhi       $a3
    /* 38DD8 801C1D50 C2180700 */  srl        $v1, $a3, 3
    /* 38DDC 801C1D54 4F006224 */  addiu      $v0, $v1, 0x4F
    /* 38DE0 801C1D58 030082A0 */  sb         $v0, 0x3($a0)
    /* 38DE4 801C1D5C 1280023C */  lui        $v0, %hi(D_8011D778)
    /* 38DE8 801C1D60 78D7428C */  lw         $v0, %lo(D_8011D778)($v0)
    /* 38DEC 801C1D64 00000000 */  nop
    /* 38DF0 801C1D68 040045A0 */  sb         $a1, 0x4($v0)
    /* 38DF4 801C1D6C 80100300 */  sll        $v0, $v1, 2
    /* 38DF8 801C1D70 21104300 */  addu       $v0, $v0, $v1
    /* 38DFC 801C1D74 40100200 */  sll        $v0, $v0, 1
    /* 38E00 801C1D78 2310C200 */  subu       $v0, $a2, $v0
    /* 38E04 801C1D7C 1280033C */  lui        $v1, %hi(D_8011D778)
    /* 38E08 801C1D80 78D7638C */  lw         $v1, %lo(D_8011D778)($v1)
    /* 38E0C 801C1D84 4F004224 */  addiu      $v0, $v0, 0x4F
    /* 38E10 801C1D88 050062A0 */  sb         $v0, 0x5($v1)
  .L801C1D8C:
    /* 38E14 801C1D8C 0800E003 */  jr         $ra
    /* 38E18 801C1D90 00000000 */   nop
endlabel func_801C1CD4
