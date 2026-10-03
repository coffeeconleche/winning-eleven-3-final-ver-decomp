nonmatching func_80191E44, 0x3C

glabel func_80191E44
    /* 8ECC 80191E44 801F023C */  lui        $v0, (0x1F800234 >> 16)
    /* 8ED0 80191E48 34024294 */  lhu        $v0, (0x1F800234 & 0xFFFF)($v0)
    /* 8ED4 80191E4C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8ED8 80191E50 40004230 */  andi       $v0, $v0, 0x40
    /* 8EDC 80191E54 03004014 */  bnez       $v0, .L80191E64
    /* 8EE0 80191E58 1000BFAF */   sw        $ra, 0x10($sp)
    /* 8EE4 80191E5C 9C470608 */  j          .L80191E70
    /* 8EE8 80191E60 21100000 */   addu      $v0, $zero, $zero
  .L80191E64:
    /* 8EEC 80191E64 88AD020C */  jal        func_800AB620
    /* 8EF0 80191E68 29050424 */   addiu     $a0, $zero, 0x529
    /* 8EF4 80191E6C 01000224 */  addiu      $v0, $zero, 0x1
  .L80191E70:
    /* 8EF8 80191E70 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8EFC 80191E74 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8F00 80191E78 0800E003 */  jr         $ra
    /* 8F04 80191E7C 00000000 */   nop
endlabel func_80191E44
