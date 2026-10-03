nonmatching func_800B9524, 0xC8

glabel func_800B9524
    /* A9D24 800B9524 0D80033C */  lui        $v1, %hi(D_800D3C98)
    /* A9D28 800B9528 983C6324 */  addiu      $v1, $v1, %lo(D_800D3C98)
    /* A9D2C 800B952C 0000628C */  lw         $v0, 0x0($v1)
    /* A9D30 800B9530 D0FF6324 */  addiu      $v1, $v1, -0x30
    /* A9D34 800B9534 0800E003 */  jr         $ra
    /* A9D38 800B9538 300064AC */   sw        $a0, 0x30($v1)
    /* A9D3C 800B953C 00000000 */  nop
    /* A9D40 800B9540 00000000 */  nop
    /* A9D44 800B9544 00000000 */  nop
    /* A9D48 800B9548 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A9D4C 800B954C 1800B0AF */  sw         $s0, 0x18($sp)
    /* A9D50 800B9550 21808000 */  addu       $s0, $a0, $zero
    /* A9D54 800B9554 0E000424 */  addiu      $a0, $zero, 0xE
    /* A9D58 800B9558 1000A527 */  addiu      $a1, $sp, 0x10
    /* A9D5C 800B955C 21300000 */  addu       $a2, $zero, $zero
    /* A9D60 800B9560 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* A9D64 800B9564 0DDC020C */  jal        func_800B7034
    /* A9D68 800B9568 1000B0A3 */   sb        $s0, 0x10($sp)
    /* A9D6C 800B956C 00010232 */  andi       $v0, $s0, 0x100
    /* A9D70 800B9570 0E004010 */  beqz       $v0, .L800B95AC
    /* A9D74 800B9574 20000232 */   andi      $v0, $s0, 0x20
    /* A9D78 800B9578 04004010 */  beqz       $v0, .L800B958C
    /* A9D7C 800B957C 01000224 */   addiu     $v0, $zero, 0x1
    /* A9D80 800B9580 0F80013C */  lui        $at, %hi(D_800E81D8)
    /* A9D84 800B9584 65E50208 */  j          .L800B9594
    /* A9D88 800B9588 D88120AC */   sw        $zero, %lo(D_800E81D8)($at)
  .L800B958C:
    /* A9D8C 800B958C 0F80013C */  lui        $at, %hi(D_800E81D8)
    /* A9D90 800B9590 D88122AC */  sw         $v0, %lo(D_800E81D8)($at)
  .L800B9594:
    /* A9D94 800B9594 0C80043C */  lui        $a0, %hi(func_800B96D8)
    /* A9D98 800B9598 14DD020C */  jal        func_800B7450
    /* A9D9C 800B959C D8968424 */   addiu     $a0, $a0, %lo(func_800B96D8)
    /* A9DA0 800B95A0 0C80043C */  lui        $a0, %hi(D_800B95CC)
    /* A9DA4 800B95A4 08DC020C */  jal        func_800B7020
    /* A9DA8 800B95A8 CC958424 */   addiu     $a0, $a0, %lo(D_800B95CC)
  .L800B95AC:
    /* A9DAC 800B95AC 1B000424 */  addiu      $a0, $zero, 0x1B
    /* A9DB0 800B95B0 21280000 */  addu       $a1, $zero, $zero
    /* A9DB4 800B95B4 0DDC020C */  jal        func_800B7034
    /* A9DB8 800B95B8 21300000 */   addu      $a2, $zero, $zero
    /* A9DBC 800B95BC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* A9DC0 800B95C0 1800B08F */  lw         $s0, 0x18($sp)
    /* A9DC4 800B95C4 0800E003 */  jr         $ra
    /* A9DC8 800B95C8 2000BD27 */   addiu     $sp, $sp, 0x20
  alabel D_800B95CC
    /* A9DCC 800B95CC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A9DD0 800B95D0 1000BFAF */  sw         $ra, 0x10($sp)
    /* A9DD4 800B95D4 8AE6020C */  jal        func_800B9A28
    /* A9DD8 800B95D8 00000000 */   nop
    /* A9DDC 800B95DC 1000BF8F */  lw         $ra, 0x10($sp)
    /* A9DE0 800B95E0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A9DE4 800B95E4 0800E003 */  jr         $ra
    /* A9DE8 800B95E8 00000000 */   nop
endlabel func_800B9524
    /* A9DEC 800B95EC 00000000 */  nop
    /* A9DF0 800B95F0 00000000 */  nop
    /* A9DF4 800B95F4 00000000 */  nop
