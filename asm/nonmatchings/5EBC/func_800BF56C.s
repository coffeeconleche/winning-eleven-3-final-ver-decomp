nonmatching func_800BF56C, 0x1E0

glabel func_800BF56C
    /* AFD6C 800BF56C 1180033C */  lui        $v1, %hi(D_8010A3CF)
    /* AFD70 800BF570 CFA36324 */  addiu      $v1, $v1, %lo(D_8010A3CF)
    /* AFD74 800BF574 05006290 */  lbu        $v0, 0x5($v1)
    /* AFD78 800BF578 00006380 */  lb         $v1, 0x0($v1)
    /* AFD7C 800BF57C 00160200 */  sll        $v0, $v0, 24
    /* AFD80 800BF580 03160200 */  sra        $v0, $v0, 24
    /* AFD84 800BF584 00190300 */  sll        $v1, $v1, 4
    /* AFD88 800BF588 21104300 */  addu       $v0, $v0, $v1
    /* AFD8C 800BF58C 00140200 */  sll        $v0, $v0, 16
    /* AFD90 800BF590 0F80033C */  lui        $v1, %hi(D_800F20B0)
    /* AFD94 800BF594 B020638C */  lw         $v1, %lo(D_800F20B0)($v1)
    /* AFD98 800BF598 C3120200 */  sra        $v0, $v0, 11
    /* AFD9C 800BF59C 21184300 */  addu       $v1, $v0, $v1
    /* AFDA0 800BF5A0 05006290 */  lbu        $v0, 0x5($v1)
    /* AFDA4 800BF5A4 FFFFA530 */  andi       $a1, $a1, 0xFFFF
    /* AFDA8 800BF5A8 2110A200 */  addu       $v0, $a1, $v0
    /* AFDAC 800BF5AC 02004104 */  bgez       $v0, .L800BF5B8
    /* AFDB0 800BF5B0 21408000 */   addu      $t0, $a0, $zero
    /* AFDB4 800BF5B4 07004224 */  addiu      $v0, $v0, 0x7
  .L800BF5B8:
    /* AFDB8 800BF5B8 C3280200 */  sra        $a1, $v0, 3
    /* AFDBC 800BF5BC 2138A000 */  addu       $a3, $a1, $zero
    /* AFDC0 800BF5C0 1000A228 */  slti       $v0, $a1, 0x10
    /* AFDC4 800BF5C4 03004014 */  bnez       $v0, .L800BF5D4
    /* AFDC8 800BF5C8 21300000 */   addu      $a2, $zero, $zero
    /* AFDCC 800BF5CC 01000624 */  addiu      $a2, $zero, 0x1
    /* AFDD0 800BF5D0 F0FFA724 */  addiu      $a3, $a1, -0x10
  .L800BF5D4:
    /* AFDD4 800BF5D4 AA2A043C */  lui        $a0, (0x2AAAAAAB >> 16)
    /* AFDD8 800BF5D8 ABAA8434 */  ori        $a0, $a0, (0x2AAAAAAB & 0xFFFF)
    /* AFDDC 800BF5DC 04006390 */  lbu        $v1, 0x4($v1)
    /* AFDE0 800BF5E0 3C000225 */  addiu      $v0, $t0, 0x3C
    /* AFDE4 800BF5E4 23104300 */  subu       $v0, $v0, $v1
    /* AFDE8 800BF5E8 2110C200 */  addu       $v0, $a2, $v0
    /* AFDEC 800BF5EC 00140200 */  sll        $v0, $v0, 16
    /* AFDF0 800BF5F0 031C0200 */  sra        $v1, $v0, 16
    /* AFDF4 800BF5F4 18006400 */  mult       $v1, $a0
    /* AFDF8 800BF5F8 C3170200 */  sra        $v0, $v0, 31
    /* AFDFC 800BF5FC 10480000 */  mfhi       $t1
    /* AFE00 800BF600 43200900 */  sra        $a0, $t1, 1
    /* AFE04 800BF604 23208200 */  subu       $a0, $a0, $v0
    /* AFE08 800BF608 40100400 */  sll        $v0, $a0, 1
    /* AFE0C 800BF60C 21104400 */  addu       $v0, $v0, $a0
    /* AFE10 800BF610 80100200 */  sll        $v0, $v0, 2
    /* AFE14 800BF614 23186200 */  subu       $v1, $v1, $v0
    /* AFE18 800BF618 001C0300 */  sll        $v1, $v1, 16
    /* AFE1C 800BF61C 031B0300 */  sra        $v1, $v1, 12
    /* AFE20 800BF620 00140700 */  sll        $v0, $a3, 16
    /* AFE24 800BF624 03140200 */  sra        $v0, $v0, 16
    /* AFE28 800BF628 21186200 */  addu       $v1, $v1, $v0
    /* AFE2C 800BF62C 40180300 */  sll        $v1, $v1, 1
    /* AFE30 800BF630 FBFF8424 */  addiu      $a0, $a0, -0x5
    /* AFE34 800BF634 00240400 */  sll        $a0, $a0, 16
    /* AFE38 800BF638 03140400 */  sra        $v0, $a0, 16
    /* AFE3C 800BF63C 0D80013C */  lui        $at, %hi(D_800D4F6C)
    /* AFE40 800BF640 21082300 */  addu       $at, $at, $v1
    /* AFE44 800BF644 6C4F2394 */  lhu        $v1, %lo(D_800D4F6C)($at)
    /* AFE48 800BF648 03004018 */  blez       $v0, .L800BF658
    /* AFE4C 800BF64C 00000000 */   nop
    /* AFE50 800BF650 9BFD0208 */  j          .L800BF66C
    /* AFE54 800BF654 04184300 */   sllv      $v1, $v1, $v0
  .L800BF658:
    /* AFE58 800BF658 04004104 */  bgez       $v0, .L800BF66C
    /* AFE5C 800BF65C 00000000 */   nop
    /* AFE60 800BF660 FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* AFE64 800BF664 23100200 */  negu       $v0, $v0
    /* AFE68 800BF668 07184300 */  srav       $v1, $v1, $v0
  .L800BF66C:
    /* AFE6C 800BF66C 0800E003 */  jr         $ra
    /* AFE70 800BF670 FFFF6230 */   andi      $v0, $v1, 0xFFFF
    /* AFE74 800BF674 002C0500 */  sll        $a1, $a1, 16
    /* AFE78 800BF678 032C0500 */  sra        $a1, $a1, 16
    /* AFE7C 800BF67C FF00E730 */  andi       $a3, $a3, 0xFF
    /* AFE80 800BF680 2110A700 */  addu       $v0, $a1, $a3
    /* AFE84 800BF684 02004104 */  bgez       $v0, .L800BF690
    /* AFE88 800BF688 21408000 */   addu      $t0, $a0, $zero
    /* AFE8C 800BF68C 07004224 */  addiu      $v0, $v0, 0x7
  .L800BF690:
    /* AFE90 800BF690 C3280200 */  sra        $a1, $v0, 3
    /* AFE94 800BF694 2138A000 */  addu       $a3, $a1, $zero
    /* AFE98 800BF698 1000A228 */  slti       $v0, $a1, 0x10
    /* AFE9C 800BF69C 03004014 */  bnez       $v0, .L800BF6AC
    /* AFEA0 800BF6A0 21180000 */   addu      $v1, $zero, $zero
    /* AFEA4 800BF6A4 01000324 */  addiu      $v1, $zero, 0x1
    /* AFEA8 800BF6A8 F0FFA724 */  addiu      $a3, $a1, -0x10
  .L800BF6AC:
    /* AFEAC 800BF6AC AA2A043C */  lui        $a0, (0x2AAAAAAB >> 16)
    /* AFEB0 800BF6B0 ABAA8434 */  ori        $a0, $a0, (0x2AAAAAAB & 0xFFFF)
    /* AFEB4 800BF6B4 FF00C230 */  andi       $v0, $a2, 0xFF
    /* AFEB8 800BF6B8 C4FF4224 */  addiu      $v0, $v0, -0x3C
    /* AFEBC 800BF6BC 23100201 */  subu       $v0, $t0, $v0
    /* AFEC0 800BF6C0 21106200 */  addu       $v0, $v1, $v0
    /* AFEC4 800BF6C4 00140200 */  sll        $v0, $v0, 16
    /* AFEC8 800BF6C8 031C0200 */  sra        $v1, $v0, 16
    /* AFECC 800BF6CC 18006400 */  mult       $v1, $a0
    /* AFED0 800BF6D0 C3170200 */  sra        $v0, $v0, 31
    /* AFED4 800BF6D4 10480000 */  mfhi       $t1
    /* AFED8 800BF6D8 43200900 */  sra        $a0, $t1, 1
    /* AFEDC 800BF6DC 23208200 */  subu       $a0, $a0, $v0
    /* AFEE0 800BF6E0 40100400 */  sll        $v0, $a0, 1
    /* AFEE4 800BF6E4 21104400 */  addu       $v0, $v0, $a0
    /* AFEE8 800BF6E8 80100200 */  sll        $v0, $v0, 2
    /* AFEEC 800BF6EC 23186200 */  subu       $v1, $v1, $v0
    /* AFEF0 800BF6F0 001C0300 */  sll        $v1, $v1, 16
    /* AFEF4 800BF6F4 031B0300 */  sra        $v1, $v1, 12
    /* AFEF8 800BF6F8 00140700 */  sll        $v0, $a3, 16
    /* AFEFC 800BF6FC 03140200 */  sra        $v0, $v0, 16
    /* AFF00 800BF700 21186200 */  addu       $v1, $v1, $v0
    /* AFF04 800BF704 40180300 */  sll        $v1, $v1, 1
    /* AFF08 800BF708 0D80013C */  lui        $at, %hi(D_800D4F6C)
    /* AFF0C 800BF70C 21082300 */  addu       $at, $at, $v1
    /* AFF10 800BF710 6C4F2394 */  lhu        $v1, %lo(D_800D4F6C)($at)
    /* AFF14 800BF714 FBFF8424 */  addiu      $a0, $a0, -0x5
    /* AFF18 800BF718 00240400 */  sll        $a0, $a0, 16
    /* AFF1C 800BF71C 03140400 */  sra        $v0, $a0, 16
    /* AFF20 800BF720 03004018 */  blez       $v0, .L800BF730
    /* AFF24 800BF724 00000000 */   nop
    /* AFF28 800BF728 D1FD0208 */  j          .L800BF744
    /* AFF2C 800BF72C 04184300 */   sllv      $v1, $v1, $v0
  .L800BF730:
    /* AFF30 800BF730 04004104 */  bgez       $v0, .L800BF744
    /* AFF34 800BF734 00000000 */   nop
    /* AFF38 800BF738 FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* AFF3C 800BF73C 23100200 */  negu       $v0, $v0
    /* AFF40 800BF740 07184300 */  srav       $v1, $v1, $v0
  .L800BF744:
    /* AFF44 800BF744 0800E003 */  jr         $ra
    /* AFF48 800BF748 FFFF6230 */   andi      $v0, $v1, 0xFFFF
endlabel func_800BF56C
    /* AFF4C 800BF74C 00000000 */  nop
    /* AFF50 800BF750 00000000 */  nop
    /* AFF54 800BF754 00000000 */  nop
