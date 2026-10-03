nonmatching func_800BA344, 0x2C

glabel func_800BA344
    /* AAB44 800BA344 0800C010 */  beqz       $a2, .L800BA368
    /* AAB48 800BA348 21180000 */   addu      $v1, $zero, $zero
  .L800BA34C:
    /* AAB4C 800BA34C 0000A28C */  lw         $v0, 0x0($a1)
    /* AAB50 800BA350 0400A524 */  addiu      $a1, $a1, 0x4
    /* AAB54 800BA354 01006324 */  addiu      $v1, $v1, 0x1
    /* AAB58 800BA358 000082AC */  sw         $v0, 0x0($a0)
    /* AAB5C 800BA35C 2B106600 */  sltu       $v0, $v1, $a2
    /* AAB60 800BA360 FAFF4014 */  bnez       $v0, .L800BA34C
    /* AAB64 800BA364 04008424 */   addiu     $a0, $a0, 0x4
  .L800BA368:
    /* AAB68 800BA368 0800E003 */  jr         $ra
    /* AAB6C 800BA36C 00000000 */   nop
endlabel func_800BA344
