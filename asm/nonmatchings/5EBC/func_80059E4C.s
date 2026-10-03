nonmatching func_80059E4C, 0x30

glabel func_80059E4C
    /* 4A64C 80059E4C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4A650 80059E50 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4A654 80059E54 AE79000C */  jal        func_8001E6B8
    /* 4A658 80059E58 03000424 */   addiu     $a0, $zero, 0x3
    /* 4A65C 80059E5C 03004010 */  beqz       $v0, .L80059E6C
    /* 4A660 80059E60 00000000 */   nop
    /* 4A664 80059E64 88AD020C */  jal        func_800AB620
    /* 4A668 80059E68 FB0D0424 */   addiu     $a0, $zero, 0xDFB
  .L80059E6C:
    /* 4A66C 80059E6C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4A670 80059E70 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4A674 80059E74 0800E003 */  jr         $ra
    /* 4A678 80059E78 00000000 */   nop
endlabel func_80059E4C
