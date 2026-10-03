nonmatching func_80059D84, 0xC8

glabel func_80059D84
    /* 4A584 80059D84 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4A588 80059D88 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4A58C 80059D8C 21808000 */  addu       $s0, $a0, $zero
    /* 4A590 80059D90 03000424 */  addiu      $a0, $zero, 0x3
    /* 4A594 80059D94 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4A598 80059D98 1800BFAF */  sw         $ra, 0x18($sp)
    /* 4A59C 80059D9C AE79000C */  jal        func_8001E6B8
    /* 4A5A0 80059DA0 801F113C */   lui       $s1, (0x1F8002BA >> 16)
    /* 4A5A4 80059DA4 23004010 */  beqz       $v0, .L80059E34
    /* 4A5A8 80059DA8 04000224 */   addiu     $v0, $zero, 0x4
    /* 4A5AC 80059DAC 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* 4A5B0 80059DB0 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* 4A5B4 80059DB4 00000000 */  nop
    /* 4A5B8 80059DB8 1E006214 */  bne        $v1, $v0, .L80059E34
    /* 4A5BC 80059DBC 00000000 */   nop
    /* 4A5C0 80059DC0 C4030286 */  lh         $v0, 0x3C4($s0)
    /* 4A5C4 80059DC4 00000000 */  nop
    /* 4A5C8 80059DC8 05004014 */  bnez       $v0, .L80059DE0
    /* 4A5CC 80059DCC 00000000 */   nop
    /* 4A5D0 80059DD0 AE79000C */  jal        func_8001E6B8
    /* 4A5D4 80059DD4 02000424 */   addiu     $a0, $zero, 0x2
    /* 4A5D8 80059DD8 14004014 */  bnez       $v0, .L80059E2C
    /* 4A5DC 80059DDC B60D0424 */   addiu     $a0, $zero, 0xDB6
  .L80059DE0:
    /* 4A5E0 80059DE0 B6022296 */  lhu        $v0, (0x1F8002B6 & 0xFFFF)($s1)
    /* 4A5E4 80059DE4 00000000 */  nop
    /* 4A5E8 80059DE8 00140200 */  sll        $v0, $v0, 16
    /* 4A5EC 80059DEC 03140200 */  sra        $v0, $v0, 16
    /* 4A5F0 80059DF0 02004104 */  bgez       $v0, .L80059DFC
    /* 4A5F4 80059DF4 00000000 */   nop
    /* 4A5F8 80059DF8 23100200 */  negu       $v0, $v0
  .L80059DFC:
    /* 4A5FC 80059DFC 01064228 */  slti       $v0, $v0, 0x601
    /* 4A600 80059E00 0C004014 */  bnez       $v0, .L80059E34
    /* 4A604 80059E04 00000000 */   nop
    /* 4A608 80059E08 BA022296 */  lhu        $v0, (0x1F8002BA & 0xFFFF)($s1)
    /* 4A60C 80059E0C 06000386 */  lh         $v1, 0x6($s0)
    /* 4A610 80059E10 00140200 */  sll        $v0, $v0, 16
    /* 4A614 80059E14 03140200 */  sra        $v0, $v0, 16
    /* 4A618 80059E18 18006200 */  mult       $v1, $v0
    /* 4A61C 80059E1C 12280000 */  mflo       $a1
    /* 4A620 80059E20 0200A018 */  blez       $a1, .L80059E2C
    /* 4A624 80059E24 BA0D0424 */   addiu     $a0, $zero, 0xDBA
    /* 4A628 80059E28 B90D0424 */  addiu      $a0, $zero, 0xDB9
  .L80059E2C:
    /* 4A62C 80059E2C 88AD020C */  jal        func_800AB620
    /* 4A630 80059E30 00000000 */   nop
  .L80059E34:
    /* 4A634 80059E34 1800BF8F */  lw         $ra, 0x18($sp)
    /* 4A638 80059E38 1400B18F */  lw         $s1, 0x14($sp)
    /* 4A63C 80059E3C 1000B08F */  lw         $s0, 0x10($sp)
    /* 4A640 80059E40 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4A644 80059E44 0800E003 */  jr         $ra
    /* 4A648 80059E48 00000000 */   nop
endlabel func_80059D84
