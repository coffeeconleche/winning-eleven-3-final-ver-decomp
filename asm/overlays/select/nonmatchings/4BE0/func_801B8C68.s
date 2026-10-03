nonmatching func_801B8C68, 0x6C

glabel func_801B8C68
    /* 2FCF0 801B8C68 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2FCF4 801B8C6C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2FCF8 801B8C70 21808000 */  addu       $s0, $a0, $zero
    /* 2FCFC 801B8C74 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2FD00 801B8C78 2188A000 */  addu       $s1, $a1, $zero
    /* 2FD04 801B8C7C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2FD08 801B8C80 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2FD0C 801B8C84 04000392 */  lbu        $v1, 0x4($s0)
    /* 2FD10 801B8C88 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 2FD14 801B8C8C 05006210 */  beq        $v1, $v0, .L801B8CA4
    /* 2FD18 801B8C90 2190C000 */   addu      $s2, $a2, $zero
    /* 2FD1C 801B8C94 0000048E */  lw         $a0, 0x0($s0)
    /* 2FD20 801B8C98 FF002532 */  andi       $a1, $s1, 0xFF
    /* 2FD24 801B8C9C 1AE3060C */  jal        func_801B8C68
    /* 2FD28 801B8CA0 FF004632 */   andi      $a2, $s2, 0xFF
  .L801B8CA4:
    /* 2FD2C 801B8CA4 06000392 */  lbu        $v1, 0x6($s0)
    /* 2FD30 801B8CA8 FF002232 */  andi       $v0, $s1, 0xFF
    /* 2FD34 801B8CAC 02006214 */  bne        $v1, $v0, .L801B8CB8
    /* 2FD38 801B8CB0 00000000 */   nop
    /* 2FD3C 801B8CB4 060012A2 */  sb         $s2, 0x6($s0)
  .L801B8CB8:
    /* 2FD40 801B8CB8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2FD44 801B8CBC 1800B28F */  lw         $s2, 0x18($sp)
    /* 2FD48 801B8CC0 1400B18F */  lw         $s1, 0x14($sp)
    /* 2FD4C 801B8CC4 1000B08F */  lw         $s0, 0x10($sp)
    /* 2FD50 801B8CC8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2FD54 801B8CCC 0800E003 */  jr         $ra
    /* 2FD58 801B8CD0 00000000 */   nop
endlabel func_801B8C68
