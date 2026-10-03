nonmatching func_800BC538, 0xE8

glabel func_800BC538
    /* ACD38 800BC538 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* ACD3C 800BC53C 1000BFAF */  sw         $ra, 0x10($sp)
    /* ACD40 800BC540 801F063C */  lui        $a2, (0x1F801C00 >> 16)
    /* ACD44 800BC544 001CC634 */  ori        $a2, $a2, (0x1F801C00 & 0xFFFF)
    /* ACD48 800BC548 21200000 */  addu       $a0, $zero, $zero
    /* ACD4C 800BC54C 0D80073C */  lui        $a3, %hi(D_800D4F18)
    /* ACD50 800BC550 184FE724 */  addiu      $a3, $a3, %lo(D_800D4F18)
  .L800BC554:
    /* ACD54 800BC554 21280000 */  addu       $a1, $zero, $zero
    /* ACD58 800BC558 2118E000 */  addu       $v1, $a3, $zero
  .L800BC55C:
    /* ACD5C 800BC55C 00006294 */  lhu        $v0, 0x0($v1)
    /* ACD60 800BC560 02006324 */  addiu      $v1, $v1, 0x2
    /* ACD64 800BC564 0100A524 */  addiu      $a1, $a1, 0x1
    /* ACD68 800BC568 0000C2A4 */  sh         $v0, 0x0($a2)
    /* ACD6C 800BC56C 0800A228 */  slti       $v0, $a1, 0x8
    /* ACD70 800BC570 FAFF4014 */  bnez       $v0, .L800BC55C
    /* ACD74 800BC574 0200C624 */   addiu     $a2, $a2, 0x2
    /* ACD78 800BC578 01008424 */  addiu      $a0, $a0, 0x1
    /* ACD7C 800BC57C 18008228 */  slti       $v0, $a0, 0x18
    /* ACD80 800BC580 F4FF4014 */  bnez       $v0, .L800BC554
    /* ACD84 800BC584 00000000 */   nop
    /* ACD88 800BC588 801F063C */  lui        $a2, (0x1F801D80 >> 16)
    /* ACD8C 800BC58C 801DC634 */  ori        $a2, $a2, (0x1F801D80 & 0xFFFF)
    /* ACD90 800BC590 21200000 */  addu       $a0, $zero, $zero
    /* ACD94 800BC594 0D80033C */  lui        $v1, %hi(D_800D4F28)
    /* ACD98 800BC598 284F6324 */  addiu      $v1, $v1, %lo(D_800D4F28)
  .L800BC59C:
    /* ACD9C 800BC59C 00006294 */  lhu        $v0, 0x0($v1)
    /* ACDA0 800BC5A0 02006324 */  addiu      $v1, $v1, 0x2
    /* ACDA4 800BC5A4 01008424 */  addiu      $a0, $a0, 0x1
    /* ACDA8 800BC5A8 0000C2A4 */  sh         $v0, 0x0($a2)
    /* ACDAC 800BC5AC 10008228 */  slti       $v0, $a0, 0x10
    /* ACDB0 800BC5B0 FAFF4014 */  bnez       $v0, .L800BC59C
    /* ACDB4 800BC5B4 0200C624 */   addiu     $a2, $a2, 0x2
    /* ACDB8 800BC5B8 4EFA020C */  jal        func_800BE938
    /* ACDBC 800BC5BC 18000424 */   addiu     $a0, $zero, 0x18
    /* ACDC0 800BC5C0 21280000 */  addu       $a1, $zero, $zero
    /* ACDC4 800BC5C4 1180033C */  lui        $v1, %hi(D_8010C540)
    /* ACDC8 800BC5C8 40C56324 */  addiu      $v1, $v1, %lo(D_8010C540)
  .L800BC5CC:
    /* ACDCC 800BC5CC 0F000424 */  addiu      $a0, $zero, 0xF
    /* ACDD0 800BC5D0 3C006224 */  addiu      $v0, $v1, 0x3C
  .L800BC5D4:
    /* ACDD4 800BC5D4 000040AC */  sw         $zero, 0x0($v0)
    /* ACDD8 800BC5D8 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* ACDDC 800BC5DC FDFF8104 */  bgez       $a0, .L800BC5D4
    /* ACDE0 800BC5E0 FCFF4224 */   addiu     $v0, $v0, -0x4
    /* ACDE4 800BC5E4 0100A524 */  addiu      $a1, $a1, 0x1
    /* ACDE8 800BC5E8 2000A228 */  slti       $v0, $a1, 0x20
    /* ACDEC 800BC5EC F7FF4014 */  bnez       $v0, .L800BC5CC
    /* ACDF0 800BC5F0 40006324 */   addiu     $v1, $v1, 0x40
    /* ACDF4 800BC5F4 3C000224 */  addiu      $v0, $zero, 0x3C
    /* ACDF8 800BC5F8 1180013C */  lui        $at, %hi(D_8010C1BC)
    /* ACDFC 800BC5FC BCC122AC */  sw         $v0, %lo(D_8010C1BC)($at)
    /* ACE00 800BC600 1080013C */  lui        $at, %hi(D_800FF72C)
    /* ACE04 800BC604 2CF720AC */  sw         $zero, %lo(D_800FF72C)($at)
    /* ACE08 800BC608 0F80013C */  lui        $at, %hi(D_800F1014)
    /* ACE0C 800BC60C 141020AC */  sw         $zero, %lo(D_800F1014)($at)
    /* ACE10 800BC610 1000BF8F */  lw         $ra, 0x10($sp)
    /* ACE14 800BC614 1800BD27 */  addiu      $sp, $sp, 0x18
    /* ACE18 800BC618 0800E003 */  jr         $ra
    /* ACE1C 800BC61C 00000000 */   nop
endlabel func_800BC538
    /* ACE20 800BC620 00000000 */  nop
    /* ACE24 800BC624 00000000 */  nop
