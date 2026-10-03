nonmatching func_800AB240, 0x54

glabel func_800AB240
    /* 9BA40 800AB240 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9BA44 800AB244 00240400 */  sll        $a0, $a0, 16
    /* 9BA48 800AB248 0D80023C */  lui        $v0, %hi(D_800CE738)
    /* 9BA4C 800AB24C 38E74224 */  addiu      $v0, $v0, %lo(D_800CE738)
    /* 9BA50 800AB250 C3230400 */  sra        $a0, $a0, 15
    /* 9BA54 800AB254 21208200 */  addu       $a0, $a0, $v0
    /* 9BA58 800AB258 03000534 */  ori        $a1, $zero, 0x3
    /* 9BA5C 800AB25C 02000634 */  ori        $a2, $zero, 0x2
    /* 9BA60 800AB260 2000BFAF */  sw         $ra, 0x20($sp)
    /* 9BA64 800AB264 1000A0AF */  sw         $zero, 0x10($sp)
    /* 9BA68 800AB268 00008284 */  lh         $v0, 0x0($a0)
    /* 9BA6C 800AB26C 41000734 */  ori        $a3, $zero, 0x41
    /* 9BA70 800AB270 1400A2AF */  sw         $v0, 0x14($sp)
    /* 9BA74 800AB274 00008284 */  lh         $v0, 0x0($a0)
    /* 9BA78 800AB278 21200000 */  addu       $a0, $zero, $zero
    /* 9BA7C 800AB27C 1AF5020C */  jal        func_800BD468
    /* 9BA80 800AB280 1800A2AF */   sw        $v0, 0x18($sp)
    /* 9BA84 800AB284 2000BF8F */  lw         $ra, 0x20($sp)
    /* 9BA88 800AB288 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 9BA8C 800AB28C 0800E003 */  jr         $ra
    /* 9BA90 800AB290 00000000 */   nop
endlabel func_800AB240
