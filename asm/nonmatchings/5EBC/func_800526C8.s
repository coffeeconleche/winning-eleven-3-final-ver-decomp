nonmatching func_800526C8, 0x4C

glabel func_800526C8
    /* 42EC8 800526C8 FF008430 */  andi       $a0, $a0, 0xFF
    /* 42ECC 800526CC 0C00842C */  sltiu      $a0, $a0, 0xC
    /* 42ED0 800526D0 08008010 */  beqz       $a0, .L800526F4
    /* 42ED4 800526D4 00000000 */   nop
    /* 42ED8 800526D8 801F023C */  lui        $v0, (0x1F8002E0 >> 16)
    /* 42EDC 800526DC E0024290 */  lbu        $v0, (0x1F8002E0 & 0xFFFF)($v0)
    /* 42EE0 800526E0 00000000 */  nop
    /* 42EE4 800526E4 09004010 */  beqz       $v0, .L8005270C
    /* 42EE8 800526E8 01000224 */   addiu     $v0, $zero, 0x1
    /* 42EEC 800526EC C3490108 */  j          .L8005270C
    /* 42EF0 800526F0 21100000 */   addu      $v0, $zero, $zero
  .L800526F4:
    /* 42EF4 800526F4 801F023C */  lui        $v0, (0x1F8002E0 >> 16)
    /* 42EF8 800526F8 E0024290 */  lbu        $v0, (0x1F8002E0 & 0xFFFF)($v0)
    /* 42EFC 800526FC 00000000 */  nop
    /* 42F00 80052700 02004014 */  bnez       $v0, .L8005270C
    /* 42F04 80052704 01000224 */   addiu     $v0, $zero, 0x1
    /* 42F08 80052708 21100000 */  addu       $v0, $zero, $zero
  .L8005270C:
    /* 42F0C 8005270C 0800E003 */  jr         $ra
    /* 42F10 80052710 00000000 */   nop
endlabel func_800526C8
