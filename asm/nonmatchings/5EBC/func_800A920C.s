nonmatching func_800A920C, 0x188

glabel func_800A920C
    /* 99A0C 800A920C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 99A10 800A9210 2000B0AF */  sw         $s0, 0x20($sp)
    /* 99A14 800A9214 21808000 */  addu       $s0, $a0, $zero
    /* 99A18 800A9218 03000234 */  ori        $v0, $zero, 0x3
    /* 99A1C 800A921C 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 99A20 800A9220 2800B2AF */  sw         $s2, 0x28($sp)
    /* 99A24 800A9224 2400B1AF */  sw         $s1, 0x24($sp)
    /* 99A28 800A9228 0E80013C */  lui        $at, %hi(D_800E6BD9)
    /* 99A2C 800A922C D96B20A0 */  sb         $zero, %lo(D_800E6BD9)($at)
    /* 99A30 800A9230 0E80013C */  lui        $at, %hi(D_800E6BAA)
    /* 99A34 800A9234 AA6B20A4 */  sh         $zero, %lo(D_800E6BAA)($at)
    /* 99A38 800A9238 1800A2A3 */  sb         $v0, 0x18($sp)
    /* 99A3C 800A923C 0E000434 */  ori        $a0, $zero, 0xE
  .L800A9240:
    /* 99A40 800A9240 1800A527 */  addiu      $a1, $sp, 0x18
    /* 99A44 800A9244 A9DC020C */  jal        func_800B72A4
    /* 99A48 800A9248 21300000 */   addu      $a2, $zero, $zero
    /* 99A4C 800A924C FCFF4010 */  beqz       $v0, .L800A9240
    /* 99A50 800A9250 0E000434 */   ori       $a0, $zero, 0xE
    /* 99A54 800A9254 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 99A58 800A9258 29000212 */  beq        $s0, $v0, .L800A9300
    /* 99A5C 800A925C 00FE0226 */   addiu     $v0, $s0, -0x200
    /* 99A60 800A9260 40180200 */  sll        $v1, $v0, 1
    /* 99A64 800A9264 21186200 */  addu       $v1, $v1, $v0
    /* 99A68 800A9268 40180300 */  sll        $v1, $v1, 1
    /* 99A6C 800A926C 0D80013C */  lui        $at, %hi(D_800CE9D4)
    /* 99A70 800A9270 D4E92124 */  addiu      $at, $at, %lo(D_800CE9D4)
    /* 99A74 800A9274 21082300 */  addu       $at, $at, $v1
    /* 99A78 800A9278 00002290 */  lbu        $v0, 0x0($at)
    /* 99A7C 800A927C 00000000 */  nop
    /* 99A80 800A9280 0E80013C */  lui        $at, %hi(D_800E6AE0)
    /* 99A84 800A9284 E06A22A0 */  sb         $v0, %lo(D_800E6AE0)($at)
    /* 99A88 800A9288 40101000 */  sll        $v0, $s0, 1
    /* 99A8C 800A928C 21105000 */  addu       $v0, $v0, $s0
    /* 99A90 800A9290 0D80013C */  lui        $at, %hi(D_800CE9D4 + 0x1)
    /* 99A94 800A9294 D5E92124 */  addiu      $at, $at, %lo(D_800CE9D4 + 0x1)
    /* 99A98 800A9298 21082300 */  addu       $at, $at, $v1
    /* 99A9C 800A929C 00002490 */  lbu        $a0, 0x0($at)
    /* 99AA0 800A92A0 40880200 */  sll        $s1, $v0, 1
    /* 99AA4 800A92A4 0E80013C */  lui        $at, %hi(D_800E6AE1)
    /* 99AA8 800A92A8 E16A24A0 */  sb         $a0, %lo(D_800E6AE1)($at)
    /* 99AAC 800A92AC 0D80013C */  lui        $at, %hi(D_800CE9D4 + 0x2)
    /* 99AB0 800A92B0 D6E92124 */  addiu      $at, $at, %lo(D_800CE9D4 + 0x2)
    /* 99AB4 800A92B4 21082300 */  addu       $at, $at, $v1
    /* 99AB8 800A92B8 00002290 */  lbu        $v0, 0x0($at)
    /* 99ABC 800A92BC 0D80123C */  lui        $s2, %hi(D_800CDDD4)
    /* 99AC0 800A92C0 D4DD5226 */  addiu      $s2, $s2, %lo(D_800CDDD4)
    /* 99AC4 800A92C4 0E80013C */  lui        $at, %hi(D_800E6AE2)
    /* 99AC8 800A92C8 E26A22A0 */  sb         $v0, %lo(D_800E6AE2)($at)
    /* 99ACC 800A92CC 02000434 */  ori        $a0, $zero, 0x2
  .L800A92D0:
    /* 99AD0 800A92D0 21283202 */  addu       $a1, $s1, $s2
    /* 99AD4 800A92D4 A9DC020C */  jal        func_800B72A4
    /* 99AD8 800A92D8 21300000 */   addu      $a2, $zero, $zero
    /* 99ADC 800A92DC 21804000 */  addu       $s0, $v0, $zero
    /* 99AE0 800A92E0 03000434 */  ori        $a0, $zero, 0x3
    /* 99AE4 800A92E4 21280000 */  addu       $a1, $zero, $zero
    /* 99AE8 800A92E8 A9DC020C */  jal        func_800B72A4
    /* 99AEC 800A92EC 21300000 */   addu      $a2, $zero, $zero
    /* 99AF0 800A92F0 F7FF0012 */  beqz       $s0, .L800A92D0
    /* 99AF4 800A92F4 02000434 */   ori       $a0, $zero, 0x2
    /* 99AF8 800A92F8 DEA40208 */  j          .L800A9378
    /* 99AFC 800A92FC 21100000 */   addu      $v0, $zero, $zero
  .L800A9300:
    /* 99B00 800A9300 0E80023C */  lui        $v0, %hi(D_800E6AFD)
    /* 99B04 800A9304 FD6A4290 */  lbu        $v0, %lo(D_800E6AFD)($v0)
    /* 99B08 800A9308 0E80033C */  lui        $v1, %hi(D_800E6AFE)
    /* 99B0C 800A930C FE6A6390 */  lbu        $v1, %lo(D_800E6AFE)($v1)
    /* 99B10 800A9310 0E80043C */  lui        $a0, %hi(D_800E6AFF)
    /* 99B14 800A9314 FF6A8490 */  lbu        $a0, %lo(D_800E6AFF)($a0)
    /* 99B18 800A9318 1000A2A3 */  sb         $v0, 0x10($sp)
    /* 99B1C 800A931C 1100A3A3 */  sb         $v1, 0x11($sp)
    /* 99B20 800A9320 CEE9020C */  jal        func_800BA738
    /* 99B24 800A9324 1200A4A3 */   sb        $a0, 0x12($sp)
    /* 99B28 800A9328 14DD020C */  jal        func_800B7450
    /* 99B2C 800A932C 21200000 */   addu      $a0, $zero, $zero
    /* 99B30 800A9330 44E5020C */  jal        func_800B9510
    /* 99B34 800A9334 21200000 */   addu      $a0, $zero, $zero
    /* 99B38 800A9338 0B80043C */  lui        $a0, %hi(func_800A91E4)
    /* 99B3C 800A933C E4918424 */  addiu      $a0, $a0, %lo(func_800A91E4)
    /* 99B40 800A9340 08DC020C */  jal        func_800B7020
    /* 99B44 800A9344 00000000 */   nop
    /* 99B48 800A9348 02000434 */  ori        $a0, $zero, 0x2
  .L800A934C:
    /* 99B4C 800A934C 1000A527 */  addiu      $a1, $sp, 0x10
    /* 99B50 800A9350 A9DC020C */  jal        func_800B72A4
    /* 99B54 800A9354 21300000 */   addu      $a2, $zero, $zero
    /* 99B58 800A9358 21804000 */  addu       $s0, $v0, $zero
    /* 99B5C 800A935C 03000434 */  ori        $a0, $zero, 0x3
    /* 99B60 800A9360 21280000 */  addu       $a1, $zero, $zero
    /* 99B64 800A9364 A9DC020C */  jal        func_800B72A4
    /* 99B68 800A9368 21300000 */   addu      $a2, $zero, $zero
    /* 99B6C 800A936C F7FF0012 */  beqz       $s0, .L800A934C
    /* 99B70 800A9370 02000434 */   ori       $a0, $zero, 0x2
    /* 99B74 800A9374 21100000 */  addu       $v0, $zero, $zero
  .L800A9378:
    /* 99B78 800A9378 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 99B7C 800A937C 2800B28F */  lw         $s2, 0x28($sp)
    /* 99B80 800A9380 2400B18F */  lw         $s1, 0x24($sp)
    /* 99B84 800A9384 2000B08F */  lw         $s0, 0x20($sp)
    /* 99B88 800A9388 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 99B8C 800A938C 0800E003 */  jr         $ra
    /* 99B90 800A9390 00000000 */   nop
endlabel func_800A920C
