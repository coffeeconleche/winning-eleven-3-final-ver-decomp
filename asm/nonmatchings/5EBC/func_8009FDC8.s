nonmatching func_8009FDC8, 0x54

glabel func_8009FDC8
    /* 905C8 8009FDC8 FF008430 */  andi       $a0, $a0, 0xFF
    /* 905CC 8009FDCC 801F013C */  lui        $at, (0x1F8002FD >> 16)
    /* 905D0 8009FDD0 21088100 */  addu       $at, $a0, $at
    /* 905D4 8009FDD4 FD022390 */  lbu        $v1, (0x1F8002FD & 0xFFFF)($at)
    /* 905D8 8009FDD8 00000000 */  nop
    /* 905DC 8009FDDC 04006228 */  slti       $v0, $v1, 0x4
    /* 905E0 8009FDE0 0C004014 */  bnez       $v0, .L8009FE14
    /* 905E4 8009FDE4 21100000 */   addu      $v0, $zero, $zero
    /* 905E8 8009FDE8 0B006228 */  slti       $v0, $v1, 0xB
    /* 905EC 8009FDEC 09004014 */  bnez       $v0, .L8009FE14
    /* 905F0 8009FDF0 01000224 */   addiu     $v0, $zero, 0x1
    /* 905F4 8009FDF4 10006228 */  slti       $v0, $v1, 0x10
    /* 905F8 8009FDF8 05004010 */  beqz       $v0, .L8009FE10
    /* 905FC 8009FDFC 0E006228 */   slti      $v0, $v1, 0xE
    /* 90600 8009FE00 04004014 */  bnez       $v0, .L8009FE14
    /* 90604 8009FE04 21100000 */   addu      $v0, $zero, $zero
    /* 90608 8009FE08 857F0208 */  j          .L8009FE14
    /* 9060C 8009FE0C 01000224 */   addiu     $v0, $zero, 0x1
  .L8009FE10:
    /* 90610 8009FE10 21100000 */  addu       $v0, $zero, $zero
  .L8009FE14:
    /* 90614 8009FE14 0800E003 */  jr         $ra
    /* 90618 8009FE18 00000000 */   nop
endlabel func_8009FDC8
