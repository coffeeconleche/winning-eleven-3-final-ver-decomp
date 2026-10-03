nonmatching func_8004FD5C, 0xD4

glabel func_8004FD5C
    /* 4055C 8004FD5C 1180023C */  lui        $v0, %hi(D_8010A5A2)
    /* 40560 8004FD60 A2A54284 */  lh         $v0, %lo(D_8010A5A2)($v0)
    /* 40564 8004FD64 1080053C */  lui        $a1, %hi(D_800FF748)
    /* 40568 8004FD68 48F7A524 */  addiu      $a1, $a1, %lo(D_800FF748)
    /* 4056C 8004FD6C 1080013C */  lui        $at, %hi(D_80105BEC)
    /* 40570 8004FD70 EC5B20A0 */  sb         $zero, %lo(D_80105BEC)($at)
    /* 40574 8004FD74 3E004228 */  slti       $v0, $v0, 0x3E
    /* 40578 8004FD78 1F004010 */  beqz       $v0, .L8004FDF8
    /* 4057C 8004FD7C 21200000 */   addu      $a0, $zero, $zero
  .L8004FD80:
    /* 40580 8004FD80 0C80013C */  lui        $at, %hi(D_800C7B7C)
    /* 40584 8004FD84 21082400 */  addu       $at, $at, $a0
    /* 40588 8004FD88 7C7B2290 */  lbu        $v0, %lo(D_800C7B7C)($at)
    /* 4058C 8004FD8C 00000000 */  nop
    /* 40590 8004FD90 80180200 */  sll        $v1, $v0, 2
    /* 40594 8004FD94 21186200 */  addu       $v1, $v1, $v0
    /* 40598 8004FD98 C0180300 */  sll        $v1, $v1, 3
    /* 4059C 8004FD9C C05D6324 */  addiu      $v1, $v1, 0x5DC0
    /* 405A0 8004FDA0 02008228 */  slti       $v0, $a0, 0x2
    /* 405A4 8004FDA4 04004010 */  beqz       $v0, .L8004FDB8
    /* 405A8 8004FDA8 2118A300 */   addu      $v1, $a1, $v1
    /* 405AC 8004FDAC 12006294 */  lhu        $v0, 0x12($v1)
    /* 405B0 8004FDB0 713F0108 */  j          .L8004FDC4
    /* 405B4 8004FDB4 FEFF4224 */   addiu     $v0, $v0, -0x2
  .L8004FDB8:
    /* 405B8 8004FDB8 12006294 */  lhu        $v0, 0x12($v1)
    /* 405BC 8004FDBC 00000000 */  nop
    /* 405C0 8004FDC0 02004224 */  addiu      $v0, $v0, 0x2
  .L8004FDC4:
    /* 405C4 8004FDC4 120062A4 */  sh         $v0, 0x12($v1)
    /* 405C8 8004FDC8 01008424 */  addiu      $a0, $a0, 0x1
    /* 405CC 8004FDCC 09008228 */  slti       $v0, $a0, 0x9
    /* 405D0 8004FDD0 EBFF4014 */  bnez       $v0, .L8004FD80
    /* 405D4 8004FDD4 00000000 */   nop
    /* 405D8 8004FDD8 1180023C */  lui        $v0, %hi(D_8010A5A2)
    /* 405DC 8004FDDC A2A54294 */  lhu        $v0, %lo(D_8010A5A2)($v0)
    /* 405E0 8004FDE0 00000000 */  nop
    /* 405E4 8004FDE4 02004224 */  addiu      $v0, $v0, 0x2
    /* 405E8 8004FDE8 1180013C */  lui        $at, %hi(D_8010A5A2)
    /* 405EC 8004FDEC A2A522A4 */  sh         $v0, %lo(D_8010A5A2)($at)
    /* 405F0 8004FDF0 8A3F0108 */  j          .L8004FE28
    /* 405F4 8004FDF4 00000000 */   nop
  .L8004FDF8:
    /* 405F8 8004FDF8 0C80013C */  lui        $at, %hi(D_800C7B7C)
    /* 405FC 8004FDFC 21082400 */  addu       $at, $at, $a0
    /* 40600 8004FE00 7C7B2290 */  lbu        $v0, %lo(D_800C7B7C)($at)
    /* 40604 8004FE04 01008424 */  addiu      $a0, $a0, 0x1
    /* 40608 8004FE08 80180200 */  sll        $v1, $v0, 2
    /* 4060C 8004FE0C 21186200 */  addu       $v1, $v1, $v0
    /* 40610 8004FE10 C0180300 */  sll        $v1, $v1, 3
    /* 40614 8004FE14 C05D6324 */  addiu      $v1, $v1, 0x5DC0
    /* 40618 8004FE18 2118A300 */  addu       $v1, $a1, $v1
    /* 4061C 8004FE1C 09008228 */  slti       $v0, $a0, 0x9
    /* 40620 8004FE20 F5FF4014 */  bnez       $v0, .L8004FDF8
    /* 40624 8004FE24 040060A0 */   sb        $zero, 0x4($v1)
  .L8004FE28:
    /* 40628 8004FE28 0800E003 */  jr         $ra
    /* 4062C 8004FE2C 00000000 */   nop
endlabel func_8004FD5C
