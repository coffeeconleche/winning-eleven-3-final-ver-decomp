nonmatching func_801BFCDC, 0xB8

glabel func_801BFCDC
    /* 36D64 801BFCDC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 36D68 801BFCE0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 36D6C 801BFCE4 21808000 */  addu       $s0, $a0, $zero
    /* 36D70 801BFCE8 8888023C */  lui        $v0, (0x88888889 >> 16)
    /* 36D74 801BFCEC FF00A430 */  andi       $a0, $a1, 0xFF
    /* 36D78 801BFCF0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 36D7C 801BFCF4 0C80013C */  lui        $at, %hi(D_800C7C3C)
    /* 36D80 801BFCF8 21082400 */  addu       $at, $at, $a0
    /* 36D84 801BFCFC 3C7C2790 */  lbu        $a3, %lo(D_800C7C3C)($at)
    /* 36D88 801BFD00 89884234 */  ori        $v0, $v0, (0x88888889 & 0xFFFF)
    /* 36D8C 801BFD04 1800E200 */  mult       $a3, $v0
    /* 36D90 801BFD08 2800842C */  sltiu      $a0, $a0, 0x28
    /* 36D94 801BFD0C C3170700 */  sra        $v0, $a3, 31
    /* 36D98 801BFD10 10400000 */  mfhi       $t0
    /* 36D9C 801BFD14 21180701 */  addu       $v1, $t0, $a3
    /* 36DA0 801BFD18 C3180300 */  sra        $v1, $v1, 3
    /* 36DA4 801BFD1C 23186200 */  subu       $v1, $v1, $v0
    /* 36DA8 801BFD20 00110300 */  sll        $v0, $v1, 4
    /* 36DAC 801BFD24 23104300 */  subu       $v0, $v0, $v1
    /* 36DB0 801BFD28 2310E200 */  subu       $v0, $a3, $v0
    /* 36DB4 801BFD2C 02008014 */  bnez       $a0, .L801BFD38
    /* 36DB8 801BFD30 00110200 */   sll       $v0, $v0, 4
    /* 36DBC 801BFD34 18004224 */  addiu      $v0, $v0, 0x18
  .L801BFD38:
    /* 36DC0 801BFD38 030002A2 */  sb         $v0, 0x3($s0)
    /* 36DC4 801BFD3C 8888023C */  lui        $v0, (0x88888889 >> 16)
    /* 36DC8 801BFD40 89884234 */  ori        $v0, $v0, (0x88888889 & 0xFFFF)
    /* 36DCC 801BFD44 1800E200 */  mult       $a3, $v0
    /* 36DD0 801BFD48 C3170700 */  sra        $v0, $a3, 31
    /* 36DD4 801BFD4C FF00A430 */  andi       $a0, $a1, 0xFF
    /* 36DD8 801BFD50 2128C000 */  addu       $a1, $a2, $zero
    /* 36DDC 801BFD54 10400000 */  mfhi       $t0
    /* 36DE0 801BFD58 21180701 */  addu       $v1, $t0, $a3
    /* 36DE4 801BFD5C C3180300 */  sra        $v1, $v1, 3
    /* 36DE8 801BFD60 23186200 */  subu       $v1, $v1, $v0
    /* 36DEC 801BFD64 40100300 */  sll        $v0, $v1, 1
    /* 36DF0 801BFD68 21104300 */  addu       $v0, $v0, $v1
    /* 36DF4 801BFD6C C0100200 */  sll        $v0, $v0, 3
    /* 36DF8 801BFD70 D0FF4224 */  addiu      $v0, $v0, -0x30
    /* 36DFC 801BFD74 A840010C */  jal        func_800502A0
    /* 36E00 801BFD78 040002A2 */   sb        $v0, 0x4($s0)
    /* 36E04 801BFD7C 0A0002A2 */  sb         $v0, 0xA($s0)
    /* 36E08 801BFD80 1400BF8F */  lw         $ra, 0x14($sp)
    /* 36E0C 801BFD84 1000B08F */  lw         $s0, 0x10($sp)
    /* 36E10 801BFD88 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 36E14 801BFD8C 0800E003 */  jr         $ra
    /* 36E18 801BFD90 00000000 */   nop
endlabel func_801BFCDC
