nonmatching func_800B5248, 0x98

glabel func_800B5248
    /* A5A48 800B5248 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A5A4C 800B524C 1180033C */  lui        $v1, %hi(D_8010CD80)
    /* A5A50 800B5250 80CD6384 */  lh         $v1, %lo(D_8010CD80)($v1)
    /* A5A54 800B5254 0E80023C */  lui        $v0, %hi(D_800E7800)
    /* A5A58 800B5258 00784224 */  addiu      $v0, $v0, %lo(D_800E7800)
    /* A5A5C 800B525C 1000BFAF */  sw         $ra, 0x10($sp)
    /* A5A60 800B5260 000044A4 */  sh         $a0, 0x0($v0)
    /* A5A64 800B5264 020046A4 */  sh         $a2, 0x2($v0)
    /* A5A68 800B5268 0E80023C */  lui        $v0, %hi(D_800E789C)
    /* A5A6C 800B526C 9C784224 */  addiu      $v0, $v0, %lo(D_800E789C)
    /* A5A70 800B5270 000045A4 */  sh         $a1, 0x0($v0)
    /* A5A74 800B5274 0A006010 */  beqz       $v1, .L800B52A0
    /* A5A78 800B5278 020047A4 */   sh        $a3, 0x2($v0)
    /* A5A7C 800B527C 0F80023C */  lui        $v0, %hi(D_800E81F8)
    /* A5A80 800B5280 F8814224 */  addiu      $v0, $v0, %lo(D_800E81F8)
    /* A5A84 800B5284 000040A4 */  sh         $zero, 0x0($v0)
    /* A5A88 800B5288 020040A4 */  sh         $zero, 0x2($v0)
    /* A5A8C 800B528C 0F80023C */  lui        $v0, %hi(D_800E8200)
    /* A5A90 800B5290 00824224 */  addiu      $v0, $v0, %lo(D_800E8200)
    /* A5A94 800B5294 000040A4 */  sh         $zero, 0x0($v0)
    /* A5A98 800B5298 B0D40208 */  j          .L800B52C0
    /* A5A9C 800B529C 020040A4 */   sh        $zero, 0x2($v0)
  .L800B52A0:
    /* A5AA0 800B52A0 0F80023C */  lui        $v0, %hi(D_800E81F8)
    /* A5AA4 800B52A4 F8814224 */  addiu      $v0, $v0, %lo(D_800E81F8)
    /* A5AA8 800B52A8 000044A4 */  sh         $a0, 0x0($v0)
    /* A5AAC 800B52AC 020046A4 */  sh         $a2, 0x2($v0)
    /* A5AB0 800B52B0 0F80023C */  lui        $v0, %hi(D_800E8200)
    /* A5AB4 800B52B4 00824224 */  addiu      $v0, $v0, %lo(D_800E8200)
    /* A5AB8 800B52B8 000045A4 */  sh         $a1, 0x0($v0)
    /* A5ABC 800B52BC 020047A4 */  sh         $a3, 0x2($v0)
  .L800B52C0:
    /* A5AC0 800B52C0 F2D1020C */  jal        func_800B47C8
    /* A5AC4 800B52C4 00000000 */   nop
    /* A5AC8 800B52C8 A6D1020C */  jal        func_800B4698
    /* A5ACC 800B52CC 00000000 */   nop
    /* A5AD0 800B52D0 1000BF8F */  lw         $ra, 0x10($sp)
    /* A5AD4 800B52D4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A5AD8 800B52D8 0800E003 */  jr         $ra
    /* A5ADC 800B52DC 00000000 */   nop
endlabel func_800B5248
    /* A5AE0 800B52E0 00000000 */  nop
    /* A5AE4 800B52E4 00000000 */  nop
