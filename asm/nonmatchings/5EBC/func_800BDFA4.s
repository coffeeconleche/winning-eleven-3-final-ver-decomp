nonmatching func_800BDFA4, 0x84

glabel func_800BDFA4
    /* AE7A4 800BDFA4 21388000 */  addu       $a3, $a0, $zero
    /* AE7A8 800BDFA8 FFFFE230 */  andi       $v0, $a3, 0xFFFF
    /* AE7AC 800BDFAC 1800422C */  sltiu      $v0, $v0, 0x18
    /* AE7B0 800BDFB0 03004014 */  bnez       $v0, .L800BDFC0
    /* AE7B4 800BDFB4 21100000 */   addu      $v0, $zero, $zero
    /* AE7B8 800BDFB8 08F80208 */  j          .L800BE020
    /* AE7BC 800BDFBC FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800BDFC0:
    /* AE7C0 800BDFC0 001C0600 */  sll        $v1, $a2, 16
    /* AE7C4 800BDFC4 031C0300 */  sra        $v1, $v1, 16
    /* AE7C8 800BDFC8 C0210300 */  sll        $a0, $v1, 7
    /* AE7CC 800BDFCC 21208300 */  addu       $a0, $a0, $v1
    /* AE7D0 800BDFD0 00340700 */  sll        $a2, $a3, 16
    /* AE7D4 800BDFD4 03340600 */  sra        $a2, $a2, 16
    /* AE7D8 800BDFD8 00390600 */  sll        $a3, $a2, 4
    /* AE7DC 800BDFDC 1180013C */  lui        $at, %hi(D_8010A41A)
    /* AE7E0 800BDFE0 21082700 */  addu       $at, $at, $a3
    /* AE7E4 800BDFE4 1AA424A4 */  sh         $a0, %lo(D_8010A41A)($at)
    /* AE7E8 800BDFE8 00240500 */  sll        $a0, $a1, 16
    /* AE7EC 800BDFEC 03240400 */  sra        $a0, $a0, 16
    /* AE7F0 800BDFF0 C0190400 */  sll        $v1, $a0, 7
    /* AE7F4 800BDFF4 0F80053C */  lui        $a1, %hi(D_800E81E0)
    /* AE7F8 800BDFF8 2128A600 */  addu       $a1, $a1, $a2
    /* AE7FC 800BDFFC E081A590 */  lbu        $a1, %lo(D_800E81E0)($a1)
    /* AE800 800BE000 21186400 */  addu       $v1, $v1, $a0
    /* AE804 800BE004 1180013C */  lui        $at, %hi(D_8010A418)
    /* AE808 800BE008 21082700 */  addu       $at, $at, $a3
    /* AE80C 800BE00C 18A423A4 */  sh         $v1, %lo(D_8010A418)($at)
    /* AE810 800BE010 0300A534 */  ori        $a1, $a1, 0x3
    /* AE814 800BE014 0F80013C */  lui        $at, %hi(D_800E81E0)
    /* AE818 800BE018 21082600 */  addu       $at, $at, $a2
    /* AE81C 800BE01C E08125A0 */  sb         $a1, %lo(D_800E81E0)($at)
  .L800BE020:
    /* AE820 800BE020 0800E003 */  jr         $ra
    /* AE824 800BE024 00000000 */   nop
endlabel func_800BDFA4
