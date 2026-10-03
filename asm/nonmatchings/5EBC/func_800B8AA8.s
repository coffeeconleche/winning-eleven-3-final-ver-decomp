nonmatching func_800B8AA8, 0x100

glabel func_800B8AA8
    /* A92A8 800B8AA8 0D80023C */  lui        $v0, %hi(D_800D3C14)
    /* A92AC 800B8AAC 143C428C */  lw         $v0, %lo(D_800D3C14)($v0)
    /* A92B0 800B8AB0 0200063C */  lui        $a2, (0x20943 >> 16)
    /* A92B4 800B8AB4 000040A0 */  sb         $zero, 0x0($v0)
    /* A92B8 800B8AB8 0D80033C */  lui        $v1, %hi(D_800D3C20)
    /* A92BC 800B8ABC 203C638C */  lw         $v1, %lo(D_800D3C20)($v1)
    /* A92C0 800B8AC0 80000224 */  addiu      $v0, $zero, 0x80
    /* A92C4 800B8AC4 000062A0 */  sb         $v0, 0x0($v1)
    /* A92C8 800B8AC8 0D80023C */  lui        $v0, %hi(D_800D3C48)
    /* A92CC 800B8ACC 483C428C */  lw         $v0, %lo(D_800D3C48)($v0)
    /* A92D0 800B8AD0 4309C634 */  ori        $a2, $a2, (0x20943 & 0xFFFF)
    /* A92D4 800B8AD4 000046AC */  sw         $a2, 0x0($v0)
    /* A92D8 800B8AD8 0D80033C */  lui        $v1, %hi(D_800D3C24)
    /* A92DC 800B8ADC 243C638C */  lw         $v1, %lo(D_800D3C24)($v1)
    /* A92E0 800B8AE0 23130224 */  addiu      $v0, $zero, 0x1323
    /* A92E4 800B8AE4 000062AC */  sw         $v0, 0x0($v1)
    /* A92E8 800B8AE8 0D80033C */  lui        $v1, %hi(D_800D3C4C)
    /* A92EC 800B8AEC 4C3C638C */  lw         $v1, %lo(D_800D3C4C)($v1)
    /* A92F0 800B8AF0 00000000 */  nop
    /* A92F4 800B8AF4 0000628C */  lw         $v0, 0x0($v1)
    /* A92F8 800B8AF8 00000000 */  nop
    /* A92FC 800B8AFC 00804234 */  ori        $v0, $v0, 0x8000
    /* A9300 800B8B00 000062AC */  sw         $v0, 0x0($v1)
    /* A9304 800B8B04 0D80023C */  lui        $v0, %hi(D_800D3C50)
    /* A9308 800B8B08 503C428C */  lw         $v0, %lo(D_800D3C50)($v0)
    /* A930C 800B8B0C 00000000 */  nop
    /* A9310 800B8B10 000044AC */  sw         $a0, 0x0($v0)
    /* A9314 800B8B14 0100023C */  lui        $v0, (0x10000 >> 16)
    /* A9318 800B8B18 0D80033C */  lui        $v1, %hi(D_800D3C54)
    /* A931C 800B8B1C 543C638C */  lw         $v1, %lo(D_800D3C54)($v1)
    /* A9320 800B8B20 2528A200 */  or         $a1, $a1, $v0
    /* A9324 800B8B24 000065AC */  sw         $a1, 0x0($v1)
    /* A9328 800B8B28 0D80033C */  lui        $v1, %hi(D_800D3C14)
    /* A932C 800B8B2C 143C638C */  lw         $v1, %lo(D_800D3C14)($v1)
    /* A9330 800B8B30 00000000 */  nop
  .L800B8B34:
    /* A9334 800B8B34 00006290 */  lbu        $v0, 0x0($v1)
    /* A9338 800B8B38 00000000 */  nop
    /* A933C 800B8B3C 40004230 */  andi       $v0, $v0, 0x40
    /* A9340 800B8B40 FCFF4010 */  beqz       $v0, .L800B8B34
    /* A9344 800B8B44 0011023C */   lui       $v0, (0x11000000 >> 16)
    /* A9348 800B8B48 0D80033C */  lui        $v1, %hi(D_800D3C58)
    /* A934C 800B8B4C 583C638C */  lw         $v1, %lo(D_800D3C58)($v1)
    /* A9350 800B8B50 00000000 */  nop
    /* A9354 800B8B54 000062AC */  sw         $v0, 0x0($v1)
    /* A9358 800B8B58 0D80043C */  lui        $a0, %hi(D_800D3C58)
    /* A935C 800B8B5C 583C848C */  lw         $a0, %lo(D_800D3C58)($a0)
    /* A9360 800B8B60 00000000 */  nop
    /* A9364 800B8B64 0000828C */  lw         $v0, 0x0($a0)
    /* A9368 800B8B68 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* A936C 800B8B6C 24104300 */  and        $v0, $v0, $v1
    /* A9370 800B8B70 07004010 */  beqz       $v0, .L800B8B90
    /* A9374 800B8B74 21188000 */   addu      $v1, $a0, $zero
    /* A9378 800B8B78 0001043C */  lui        $a0, (0x1000000 >> 16)
  .L800B8B7C:
    /* A937C 800B8B7C 0000628C */  lw         $v0, 0x0($v1)
    /* A9380 800B8B80 00000000 */  nop
    /* A9384 800B8B84 24104400 */  and        $v0, $v0, $a0
    /* A9388 800B8B88 FCFF4014 */  bnez       $v0, .L800B8B7C
    /* A938C 800B8B8C 00000000 */   nop
  .L800B8B90:
    /* A9390 800B8B90 0D80033C */  lui        $v1, %hi(D_800D3C24)
    /* A9394 800B8B94 243C638C */  lw         $v1, %lo(D_800D3C24)($v1)
    /* A9398 800B8B98 25130224 */  addiu      $v0, $zero, 0x1325
    /* A939C 800B8B9C 000062AC */  sw         $v0, 0x0($v1)
    /* A93A0 800B8BA0 0800E003 */  jr         $ra
    /* A93A4 800B8BA4 21100000 */   addu      $v0, $zero, $zero
endlabel func_800B8AA8
