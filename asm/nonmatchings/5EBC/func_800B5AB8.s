nonmatching func_800B5AB8, 0xB4

glabel func_800B5AB8
    /* A62B8 800B5AB8 21488000 */  addu       $t1, $a0, $zero
    /* A62BC 800B5ABC 2150A000 */  addu       $t2, $a1, $zero
    /* A62C0 800B5AC0 FF00053C */  lui        $a1, (0xFFFFFF >> 16)
    /* A62C4 800B5AC4 FFFFA534 */  ori        $a1, $a1, (0xFFFFFF & 0xFFFF)
    /* A62C8 800B5AC8 0400268D */  lw         $a2, 0x4($t1)
    /* A62CC 800B5ACC 0C00248D */  lw         $a0, 0xC($t1)
    /* A62D0 800B5AD0 0800438D */  lw         $v1, 0x8($t2)
    /* A62D4 800B5AD4 04004B8D */  lw         $t3, 0x4($t2)
    /* A62D8 800B5AD8 2138C000 */  addu       $a3, $a2, $zero
    /* A62DC 800B5ADC 2140C000 */  addu       $t0, $a2, $zero
    /* A62E0 800B5AE0 0000028D */  lw         $v0, 0x0($t0)
    /* A62E4 800B5AE4 00000000 */  nop
    /* A62E8 800B5AE8 24104500 */  and        $v0, $v0, $a1
    /* A62EC 800B5AEC 0C004510 */  beq        $v0, $a1, .L800B5B20
    /* A62F0 800B5AF0 23208300 */   subu      $a0, $a0, $v1
    /* A62F4 800B5AF4 FF00033C */  lui        $v1, (0xFFFFFF >> 16)
    /* A62F8 800B5AF8 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
  .L800B5AFC:
    /* A62FC 800B5AFC 2140E000 */  addu       $t0, $a3, $zero
    /* A6300 800B5B00 0000C28C */  lw         $v0, 0x0($a2)
    /* A6304 800B5B04 2138C000 */  addu       $a3, $a2, $zero
    /* A6308 800B5B08 24304300 */  and        $a2, $v0, $v1
    /* A630C 800B5B0C 0000C28C */  lw         $v0, 0x0($a2)
    /* A6310 800B5B10 00000000 */  nop
    /* A6314 800B5B14 24104300 */  and        $v0, $v0, $v1
    /* A6318 800B5B18 F8FF4314 */  bne        $v0, $v1, .L800B5AFC
    /* A631C 800B5B1C 00000000 */   nop
  .L800B5B20:
    /* A6320 800B5B20 FF00053C */  lui        $a1, (0xFFFFFF >> 16)
    /* A6324 800B5B24 FFFFA534 */  ori        $a1, $a1, (0xFFFFFF & 0xFFFF)
    /* A6328 800B5B28 80200400 */  sll        $a0, $a0, 2
    /* A632C 800B5B2C 21208B00 */  addu       $a0, $a0, $t3
    /* A6330 800B5B30 00FF063C */  lui        $a2, (0xFF000000 >> 16)
    /* A6334 800B5B34 0000038D */  lw         $v1, 0x0($t0)
    /* A6338 800B5B38 0000828C */  lw         $v0, 0x0($a0)
    /* A633C 800B5B3C 24186600 */  and        $v1, $v1, $a2
    /* A6340 800B5B40 24104500 */  and        $v0, $v0, $a1
    /* A6344 800B5B44 25186200 */  or         $v1, $v1, $v0
    /* A6348 800B5B48 000003AD */  sw         $v1, 0x0($t0)
    /* A634C 800B5B4C 0000838C */  lw         $v1, 0x0($a0)
    /* A6350 800B5B50 1000228D */  lw         $v0, 0x10($t1)
    /* A6354 800B5B54 24186600 */  and        $v1, $v1, $a2
    /* A6358 800B5B58 24104500 */  and        $v0, $v0, $a1
    /* A635C 800B5B5C 25186200 */  or         $v1, $v1, $v0
    /* A6360 800B5B60 21104001 */  addu       $v0, $t2, $zero
    /* A6364 800B5B64 0800E003 */  jr         $ra
    /* A6368 800B5B68 000083AC */   sw        $v1, 0x0($a0)
endlabel func_800B5AB8
    /* A636C 800B5B6C 00000000 */  nop
    /* A6370 800B5B70 00000000 */  nop
    /* A6374 800B5B74 00000000 */  nop
