nonmatching func_800C3E48, 0x88

glabel func_800C3E48
    /* B4648 800C3E48 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B464C 800C3E4C 1400B1AF */  sw         $s1, 0x14($sp)
    /* B4650 800C3E50 2188A000 */  addu       $s1, $a1, $zero
    /* B4654 800C3E54 0700023C */  lui        $v0, (0x7EFF0 >> 16)
    /* B4658 800C3E58 F0EF4234 */  ori        $v0, $v0, (0x7EFF0 & 0xFFFF)
    /* B465C 800C3E5C 2B105100 */  sltu       $v0, $v0, $s1
    /* B4660 800C3E60 1800BFAF */  sw         $ra, 0x18($sp)
    /* B4664 800C3E64 03004010 */  beqz       $v0, .L800C3E74
    /* B4668 800C3E68 1000B0AF */   sw        $s0, 0x10($sp)
    /* B466C 800C3E6C 0700113C */  lui        $s1, (0x7EFF0 >> 16)
    /* B4670 800C3E70 F0EF3136 */  ori        $s1, $s1, (0x7EFF0 & 0xFFFF)
  .L800C3E74:
    /* B4674 800C3E74 0D80103C */  lui        $s0, %hi(D_800D55A4)
    /* B4678 800C3E78 A4551096 */  lhu        $s0, %lo(D_800D55A4)($s0)
    /* B467C 800C3E7C 0D80023C */  lui        $v0, %hi(D_800D55B4)
    /* B4680 800C3E80 B455428C */  lw         $v0, %lo(D_800D55B4)($v0)
    /* B4684 800C3E84 21282002 */  addu       $a1, $s1, $zero
    /* B4688 800C3E88 D706030C */  jal        func_800C1B5C
    /* B468C 800C3E8C 04805000 */   sllv      $s0, $s0, $v0
    /* B4690 800C3E90 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* B4694 800C3E94 2207030C */  jal        func_800C1C88
    /* B4698 800C3E98 21281102 */   addu      $a1, $s0, $s1
    /* B469C 800C3E9C 0D80033C */  lui        $v1, %hi(D_800D55C4)
    /* B46A0 800C3EA0 C455638C */  lw         $v1, %lo(D_800D55C4)($v1)
    /* B46A4 800C3EA4 0D80013C */  lui        $at, %hi(D_800D55A4)
    /* B46A8 800C3EA8 A45522A4 */  sh         $v0, %lo(D_800D55A4)($at)
    /* B46AC 800C3EAC 03006014 */  bnez       $v1, .L800C3EBC
    /* B46B0 800C3EB0 21102002 */   addu      $v0, $s1, $zero
    /* B46B4 800C3EB4 0D80013C */  lui        $at, %hi(D_800D55C0)
    /* B46B8 800C3EB8 C05520AC */  sw         $zero, %lo(D_800D55C0)($at)
  .L800C3EBC:
    /* B46BC 800C3EBC 1800BF8F */  lw         $ra, 0x18($sp)
    /* B46C0 800C3EC0 1400B18F */  lw         $s1, 0x14($sp)
    /* B46C4 800C3EC4 1000B08F */  lw         $s0, 0x10($sp)
    /* B46C8 800C3EC8 0800E003 */  jr         $ra
    /* B46CC 800C3ECC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800C3E48
    /* B46D0 800C3ED0 00000000 */  nop
    /* B46D4 800C3ED4 00000000 */  nop
