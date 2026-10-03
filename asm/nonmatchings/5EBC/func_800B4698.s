nonmatching func_800B4698, 0x108

glabel func_800B4698
    /* A4E98 800B4698 1180023C */  lui        $v0, %hi(D_8010CD80)
    /* A4E9C 800B469C 80CD4284 */  lh         $v0, %lo(D_8010CD80)($v0)
    /* A4EA0 800B46A0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A4EA4 800B46A4 1800BFAF */  sw         $ra, 0x18($sp)
    /* A4EA8 800B46A8 1400B1AF */  sw         $s1, 0x14($sp)
    /* A4EAC 800B46AC 1C004010 */  beqz       $v0, .L800B4720
    /* A4EB0 800B46B0 1000B0AF */   sw        $s0, 0x10($sp)
    /* A4EB4 800B46B4 0F80063C */  lui        $a2, %hi(D_800EF868)
    /* A4EB8 800B46B8 68F8C624 */  addiu      $a2, $a2, %lo(D_800EF868)
    /* A4EBC 800B46BC 1180033C */  lui        $v1, %hi(D_8010CD54)
    /* A4EC0 800B46C0 54CD6384 */  lh         $v1, %lo(D_8010CD54)($v1)
    /* A4EC4 800B46C4 0000C294 */  lhu        $v0, 0x0($a2)
    /* A4EC8 800B46C8 40180300 */  sll        $v1, $v1, 1
    /* A4ECC 800B46CC 0E80043C */  lui        $a0, %hi(D_800E7800)
    /* A4ED0 800B46D0 21208300 */  addu       $a0, $a0, $v1
    /* A4ED4 800B46D4 00788494 */  lhu        $a0, %lo(D_800E7800)($a0)
    /* A4ED8 800B46D8 0F80053C */  lui        $a1, %hi(D_800F0F80)
    /* A4EDC 800B46DC 800FA524 */  addiu      $a1, $a1, %lo(D_800F0F80)
    /* A4EE0 800B46E0 0F80013C */  lui        $at, %hi(D_800F1072)
    /* A4EE4 800B46E4 721020A4 */  sh         $zero, %lo(D_800F1072)($at)
    /* A4EE8 800B46E8 0F80013C */  lui        $at, %hi(D_800F1070)
    /* A4EEC 800B46EC 701020A4 */  sh         $zero, %lo(D_800F1070)($at)
    /* A4EF0 800B46F0 21104400 */  addu       $v0, $v0, $a0
    /* A4EF4 800B46F4 0000A2A4 */  sh         $v0, 0x0($a1)
    /* A4EF8 800B46F8 0200C294 */  lhu        $v0, 0x2($a2)
    /* A4EFC 800B46FC 0E80013C */  lui        $at, %hi(D_800E789C)
    /* A4F00 800B4700 21082300 */  addu       $at, $at, $v1
    /* A4F04 800B4704 9C782394 */  lhu        $v1, %lo(D_800E789C)($at)
    /* A4F08 800B4708 F8FFA424 */  addiu      $a0, $a1, -0x8
    /* A4F0C 800B470C 21104300 */  addu       $v0, $v0, $v1
    /* A4F10 800B4710 E6BA020C */  jal        func_800AEB98
    /* A4F14 800B4714 0200A2A4 */   sh        $v0, 0x2($a1)
    /* A4F18 800B4718 E3D10208 */  j          .L800B478C
    /* A4F1C 800B471C 00000000 */   nop
  .L800B4720:
    /* A4F20 800B4720 0E80023C */  lui        $v0, %hi(D_800E7800)
    /* A4F24 800B4724 00784224 */  addiu      $v0, $v0, %lo(D_800E7800)
    /* A4F28 800B4728 0F80103C */  lui        $s0, %hi(D_800EF868)
    /* A4F2C 800B472C 68F81026 */  addiu      $s0, $s0, %lo(D_800EF868)
    /* A4F30 800B4730 1180053C */  lui        $a1, %hi(D_8010CD54)
    /* A4F34 800B4734 54CDA584 */  lh         $a1, %lo(D_8010CD54)($a1)
    /* A4F38 800B4738 00000486 */  lh         $a0, 0x0($s0)
    /* A4F3C 800B473C 0200A014 */  bnez       $a1, .L800B4748
    /* A4F40 800B4740 00000000 */   nop
    /* A4F44 800B4744 02004224 */  addiu      $v0, $v0, 0x2
  .L800B4748:
    /* A4F48 800B4748 00004284 */  lh         $v0, 0x0($v0)
    /* A4F4C 800B474C 0E80033C */  lui        $v1, %hi(D_800E789C)
    /* A4F50 800B4750 9C786324 */  addiu      $v1, $v1, %lo(D_800E789C)
    /* A4F54 800B4754 21888200 */  addu       $s1, $a0, $v0
    /* A4F58 800B4758 02000286 */  lh         $v0, 0x2($s0)
    /* A4F5C 800B475C 0200A014 */  bnez       $a1, .L800B4768
    /* A4F60 800B4760 00000000 */   nop
    /* A4F64 800B4764 02006324 */  addiu      $v1, $v1, 0x2
  .L800B4768:
    /* A4F68 800B4768 00007084 */  lh         $s0, 0x0($v1)
    /* A4F6C 800B476C 21202002 */  addu       $a0, $s1, $zero
    /* A4F70 800B4770 21805000 */  addu       $s0, $v0, $s0
    /* A4F74 800B4774 EAD1020C */  jal        func_800B47A8
    /* A4F78 800B4778 21280002 */   addu      $a1, $s0, $zero
    /* A4F7C 800B477C 0F80013C */  lui        $at, %hi(D_800F1070)
    /* A4F80 800B4780 701031A4 */  sh         $s1, %lo(D_800F1070)($at)
    /* A4F84 800B4784 0F80013C */  lui        $at, %hi(D_800F1072)
    /* A4F88 800B4788 721030A4 */  sh         $s0, %lo(D_800F1072)($at)
  .L800B478C:
    /* A4F8C 800B478C 1800BF8F */  lw         $ra, 0x18($sp)
    /* A4F90 800B4790 1400B18F */  lw         $s1, 0x14($sp)
    /* A4F94 800B4794 1000B08F */  lw         $s0, 0x10($sp)
    /* A4F98 800B4798 0800E003 */  jr         $ra
    /* A4F9C 800B479C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800B4698
    /* A4FA0 800B47A0 00000000 */  nop
    /* A4FA4 800B47A4 00000000 */  nop
