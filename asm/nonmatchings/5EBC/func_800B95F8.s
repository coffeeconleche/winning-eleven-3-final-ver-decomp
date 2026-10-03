nonmatching func_800B95F8, 0xE0

glabel func_800B95F8
    /* A9DF8 800B95F8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A9DFC 800B95FC 1180053C */  lui        $a1, %hi(D_8010CE68)
    /* A9E00 800B9600 68CEA58C */  lw         $a1, %lo(D_8010CE68)($a1)
    /* A9E04 800B9604 1000BFAF */  sw         $ra, 0x10($sp)
    /* A9E08 800B9608 1180013C */  lui        $at, %hi(D_8010C1CC)
    /* A9E0C 800B960C CCC120AC */  sw         $zero, %lo(D_8010C1CC)($at)
    /* A9E10 800B9610 1180013C */  lui        $at, %hi(D_8010C1C4)
    /* A9E14 800B9614 C4C120AC */  sw         $zero, %lo(D_8010C1C4)($at)
    /* A9E18 800B9618 1180013C */  lui        $at, %hi(D_8010C1C0)
    /* A9E1C 800B961C C0C120AC */  sw         $zero, %lo(D_8010C1C0)($at)
    /* A9E20 800B9620 1080013C */  lui        $at, %hi(D_800FF680)
    /* A9E24 800B9624 80F620AC */  sw         $zero, %lo(D_800FF680)($at)
    /* A9E28 800B9628 42E6020C */  jal        func_800B9908
    /* A9E2C 800B962C 21200000 */   addu      $a0, $zero, $zero
    /* A9E30 800B9630 0F80013C */  lui        $at, %hi(D_800EF91C)
    /* A9E34 800B9634 1CF920AC */  sw         $zero, %lo(D_800EF91C)($at)
    /* A9E38 800B9638 0F80013C */  lui        $at, %hi(D_800E81CC)
    /* A9E3C 800B963C CC8120A4 */  sh         $zero, %lo(D_800E81CC)($at)
    /* A9E40 800B9640 0E80013C */  lui        $at, %hi(D_800E7654)
    /* A9E44 800B9644 547620AC */  sw         $zero, %lo(D_800E7654)($at)
    /* A9E48 800B9648 1000BF8F */  lw         $ra, 0x10($sp)
    /* A9E4C 800B964C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A9E50 800B9650 0800E003 */  jr         $ra
    /* A9E54 800B9654 00000000 */   nop
    /* A9E58 800B9658 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A9E5C 800B965C 1000BFAF */  sw         $ra, 0x10($sp)
    /* A9E60 800B9660 F6B4020C */  jal        func_800AD3D8
    /* A9E64 800B9664 00000000 */   nop
    /* A9E68 800B9668 0D80033C */  lui        $v1, %hi(D_800D3970)
    /* A9E6C 800B966C 7039638C */  lw         $v1, %lo(D_800D3970)($v1)
    /* A9E70 800B9670 01000224 */  addiu      $v0, $zero, 0x1
    /* A9E74 800B9674 07006214 */  bne        $v1, $v0, .L800B9694
    /* A9E78 800B9678 00000000 */   nop
    /* A9E7C 800B967C 9513030C */  jal        func_800C4E54
    /* A9E80 800B9680 21200000 */   addu      $a0, $zero, $zero
    /* A9E84 800B9684 8B13030C */  jal        func_800C4E2C
    /* A9E88 800B9688 21200000 */   addu      $a0, $zero, $zero
    /* A9E8C 800B968C A9E50208 */  j          .L800B96A4
    /* A9E90 800B9690 00000000 */   nop
  .L800B9694:
    /* A9E94 800B9694 14DD020C */  jal        func_800B7450
    /* A9E98 800B9698 21200000 */   addu      $a0, $zero, $zero
    /* A9E9C 800B969C 08DC020C */  jal        func_800B7020
    /* A9EA0 800B96A0 21200000 */   addu      $a0, $zero, $zero
  .L800B96A4:
    /* A9EA4 800B96A4 0D80023C */  lui        $v0, %hi(D_800D3CB4)
    /* A9EA8 800B96A8 B43C428C */  lw         $v0, %lo(D_800D3CB4)($v0)
    /* A9EAC 800B96AC 00000000 */  nop
    /* A9EB0 800B96B0 000040A0 */  sb         $zero, 0x0($v0)
    /* A9EB4 800B96B4 0D80023C */  lui        $v0, %hi(D_800D3CC0)
    /* A9EB8 800B96B8 C03C428C */  lw         $v0, %lo(D_800D3CC0)($v0)
    /* A9EBC 800B96BC 00000000 */  nop
    /* A9EC0 800B96C0 9AB3020C */  jal        func_800ACE68
    /* A9EC4 800B96C4 000040A0 */   sb        $zero, 0x0($v0)
    /* A9EC8 800B96C8 1000BF8F */  lw         $ra, 0x10($sp)
    /* A9ECC 800B96CC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A9ED0 800B96D0 0800E003 */  jr         $ra
    /* A9ED4 800B96D4 00000000 */   nop
endlabel func_800B95F8
