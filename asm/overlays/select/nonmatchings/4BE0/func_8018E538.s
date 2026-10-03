nonmatching func_8018E538, 0x80

glabel func_8018E538
    /* 55C0 8018E538 39000324 */  addiu      $v1, $zero, 0x39
    /* 55C4 8018E53C 1080043C */  lui        $a0, %hi(D_800FF748)
    /* 55C8 8018E540 48F78424 */  addiu      $a0, $a0, %lo(D_800FF748)
    /* 55CC 8018E544 E8088224 */  addiu      $v0, $a0, 0x8E8
  .L8018E548:
    /* 55D0 8018E548 C45D40A0 */  sb         $zero, 0x5DC4($v0)
    /* 55D4 8018E54C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 55D8 8018E550 FDFF6104 */  bgez       $v1, .L8018E548
    /* 55DC 8018E554 D8FF4224 */   addiu     $v0, $v0, -0x28
    /* 55E0 8018E558 1E80033C */  lui        $v1, %hi(D_801D8F90)
    /* 55E4 8018E55C 908F6324 */  addiu      $v1, $v1, %lo(D_801D8F90)
    /* 55E8 8018E560 1F000224 */  addiu      $v0, $zero, 0x1F
  .L8018E564:
    /* 55EC 8018E564 100060A0 */  sb         $zero, 0x10($v1)
    /* 55F0 8018E568 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 55F4 8018E56C FDFF4104 */  bgez       $v0, .L8018E564
    /* 55F8 8018E570 18006324 */   addiu     $v1, $v1, 0x18
    /* 55FC 8018E574 1E80033C */  lui        $v1, %hi(D_801D92A0)
    /* 5600 8018E578 A0926324 */  addiu      $v1, $v1, %lo(D_801D92A0)
    /* 5604 8018E57C 13000224 */  addiu      $v0, $zero, 0x13
  .L8018E580:
    /* 5608 8018E580 030060A0 */  sb         $zero, 0x3($v1)
    /* 560C 8018E584 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 5610 8018E588 FDFF4104 */  bgez       $v0, .L8018E580
    /* 5614 8018E58C 1C006324 */   addiu     $v1, $v1, 0x1C
    /* 5618 8018E590 0100013C */  lui        $at, (0x10000 >> 16)
    /* 561C 8018E594 21088100 */  addu       $at, $a0, $at
    /* 5620 8018E598 21AC20A0 */  sb         $zero, -0x53DF($at)
    /* 5624 8018E59C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 5628 8018E5A0 21088100 */  addu       $at, $a0, $at
    /* 562C 8018E5A4 20AC20A0 */  sb         $zero, -0x53E0($at)
    /* 5630 8018E5A8 801F013C */  lui        $at, (0x1F8002A2 >> 16)
    /* 5634 8018E5AC A20220A0 */  sb         $zero, (0x1F8002A2 & 0xFFFF)($at)
    /* 5638 8018E5B0 0800E003 */  jr         $ra
    /* 563C 8018E5B4 00000000 */   nop
endlabel func_8018E538
