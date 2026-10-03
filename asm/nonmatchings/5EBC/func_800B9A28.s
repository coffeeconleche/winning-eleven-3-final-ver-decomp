nonmatching func_800B9A28, 0x91C

glabel func_800B9A28
    /* AA228 800B9A28 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* AA22C 800B9A2C 1080023C */  lui        $v0, %hi(D_800FF680)
    /* AA230 800B9A30 80F6428C */  lw         $v0, %lo(D_800FF680)($v0)
    /* AA234 800B9A34 01000424 */  addiu      $a0, $zero, 0x1
    /* AA238 800B9A38 3E024410 */  beq        $v0, $a0, .L800BA334
    /* AA23C 800B9A3C 3800BFAF */   sw        $ra, 0x38($sp)
    /* AA240 800B9A40 0F80023C */  lui        $v0, %hi(D_800E81D4)
    /* AA244 800B9A44 D481428C */  lw         $v0, %lo(D_800E81D4)($v0)
    /* AA248 800B9A48 00000000 */  nop
    /* AA24C 800B9A4C 17004010 */  beqz       $v0, .L800B9AAC
    /* AA250 800B9A50 00000000 */   nop
    /* AA254 800B9A54 0D80023C */  lui        $v0, %hi(D_800D3D44)
    /* AA258 800B9A58 443D428C */  lw         $v0, %lo(D_800D3D44)($v0)
    /* AA25C 800B9A5C 00000000 */  nop
    /* AA260 800B9A60 0000428C */  lw         $v0, 0x0($v0)
    /* AA264 800B9A64 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* AA268 800B9A68 24104300 */  and        $v0, $v0, $v1
    /* AA26C 800B9A6C 0F004010 */  beqz       $v0, .L800B9AAC
    /* AA270 800B9A70 00000000 */   nop
    /* AA274 800B9A74 1180023C */  lui        $v0, %hi(D_8010CD4C)
    /* AA278 800B9A78 4CCD428C */  lw         $v0, %lo(D_8010CD4C)($v0)
    /* AA27C 800B9A7C 0F80013C */  lui        $at, %hi(D_800EF91C)
    /* AA280 800B9A80 07004010 */  beqz       $v0, .L800B9AA0
    /* AA284 800B9A84 1CF924AC */   sw        $a0, %lo(D_800EF91C)($at)
    /* AA288 800B9A88 1180023C */  lui        $v0, %hi(D_8010A59C)
    /* AA28C 800B9A8C 9CA5428C */  lw         $v0, %lo(D_8010A59C)($v0)
    /* AA290 800B9A90 00000000 */  nop
    /* AA294 800B9A94 01004224 */  addiu      $v0, $v0, 0x1
    /* AA298 800B9A98 1180013C */  lui        $at, %hi(D_8010A59C)
    /* AA29C 800B9A9C 9CA522AC */  sw         $v0, %lo(D_8010A59C)($at)
  .L800B9AA0:
    /* AA2A0 800B9AA0 0D80013C */  lui        $at, %hi(D_800D3D6C)
    /* AA2A4 800B9AA4 CDE80208 */  j          .L800BA334
    /* AA2A8 800B9AA8 6C3D24AC */   sw        $a0, %lo(D_800D3D6C)($at)
  .L800B9AAC:
    /* AA2AC 800B9AAC FBDB020C */  jal        func_800B6FEC
    /* AA2B0 800B9AB0 3000A527 */   addiu     $a1, $sp, 0x30
    /* AA2B4 800B9AB4 05000324 */  addiu      $v1, $zero, 0x5
    /* AA2B8 800B9AB8 1E024310 */  beq        $v0, $v1, .L800BA334
    /* AA2BC 800B9ABC 00000000 */   nop
    /* AA2C0 800B9AC0 3000A293 */  lbu        $v0, 0x30($sp)
    /* AA2C4 800B9AC4 3100A393 */  lbu        $v1, 0x31($sp)
    /* AA2C8 800B9AC8 2200A2A7 */  sh         $v0, 0x22($sp)
    /* AA2CC 800B9ACC 2400A3A7 */  sh         $v1, 0x24($sp)
    /* AA2D0 800B9AD0 2200A297 */  lhu        $v0, 0x22($sp)
    /* AA2D4 800B9AD4 00000000 */  nop
    /* AA2D8 800B9AD8 04004230 */  andi       $v0, $v0, 0x4
    /* AA2DC 800B9ADC 04004010 */  beqz       $v0, .L800B9AF0
    /* AA2E0 800B9AE0 03000224 */   addiu     $v0, $zero, 0x3
    /* AA2E4 800B9AE4 0D80013C */  lui        $at, %hi(D_800D3D6C)
    /* AA2E8 800B9AE8 CDE80208 */  j          .L800BA334
    /* AA2EC 800B9AEC 6C3D22AC */   sw        $v0, %lo(D_800D3D6C)($at)
  .L800B9AF0:
    /* AA2F0 800B9AF0 1180023C */  lui        $v0, %hi(D_8010C1C0)
    /* AA2F4 800B9AF4 C0C1428C */  lw         $v0, %lo(D_8010C1C0)($v0)
    /* AA2F8 800B9AF8 1180033C */  lui        $v1, %hi(D_8010CD8C)
    /* AA2FC 800B9AFC 8CCD638C */  lw         $v1, %lo(D_8010CD8C)($v1)
    /* AA300 800B9B00 40110200 */  sll        $v0, $v0, 5
    /* AA304 800B9B04 21186200 */  addu       $v1, $v1, $v0
    /* AA308 800B9B08 0E80013C */  lui        $at, %hi(D_800E7208)
    /* AA30C 800B9B0C 087223AC */  sw         $v1, %lo(D_800E7208)($at)
    /* AA310 800B9B10 00006294 */  lhu        $v0, 0x0($v1)
    /* AA314 800B9B14 00000000 */  nop
    /* AA318 800B9B18 10004010 */  beqz       $v0, .L800B9B5C
    /* AA31C 800B9B1C 00000000 */   nop
    /* AA320 800B9B20 1180023C */  lui        $v0, %hi(D_8010CD4C)
    /* AA324 800B9B24 4CCD428C */  lw         $v0, %lo(D_8010CD4C)($v0)
    /* AA328 800B9B28 00000000 */  nop
    /* AA32C 800B9B2C 08004010 */  beqz       $v0, .L800B9B50
    /* AA330 800B9B30 04000224 */   addiu     $v0, $zero, 0x4
    /* AA334 800B9B34 1180023C */  lui        $v0, %hi(D_8010A59C)
    /* AA338 800B9B38 9CA5428C */  lw         $v0, %lo(D_8010A59C)($v0)
    /* AA33C 800B9B3C 00000000 */  nop
    /* AA340 800B9B40 01004224 */  addiu      $v0, $v0, 0x1
    /* AA344 800B9B44 1180013C */  lui        $at, %hi(D_8010A59C)
    /* AA348 800B9B48 9CA522AC */  sw         $v0, %lo(D_8010A59C)($at)
    /* AA34C 800B9B4C 04000224 */  addiu      $v0, $zero, 0x4
  .L800B9B50:
    /* AA350 800B9B50 0D80013C */  lui        $at, %hi(D_800D3D6C)
    /* AA354 800B9B54 CDE80208 */  j          .L800BA334
    /* AA358 800B9B58 6C3D22AC */   sw        $v0, %lo(D_800D3D6C)($at)
  .L800B9B5C:
    /* AA35C 800B9B5C 0D80023C */  lui        $v0, %hi(D_800D3D24)
    /* AA360 800B9B60 243D428C */  lw         $v0, %lo(D_800D3D24)($v0)
    /* AA364 800B9B64 00000000 */  nop
    /* AA368 800B9B68 000040A0 */  sb         $zero, 0x0($v0)
    /* AA36C 800B9B6C 0D80023C */  lui        $v0, %hi(D_800D3D30)
    /* AA370 800B9B70 303D428C */  lw         $v0, %lo(D_800D3D30)($v0)
    /* AA374 800B9B74 00000000 */  nop
    /* AA378 800B9B78 000040A0 */  sb         $zero, 0x0($v0)
    /* AA37C 800B9B7C 0D80023C */  lui        $v0, %hi(D_800D3D24)
    /* AA380 800B9B80 243D428C */  lw         $v0, %lo(D_800D3D24)($v0)
    /* AA384 800B9B84 0200043C */  lui        $a0, (0x20943 >> 16)
    /* AA388 800B9B88 000040A0 */  sb         $zero, 0x0($v0)
    /* AA38C 800B9B8C 0D80033C */  lui        $v1, %hi(D_800D3D30)
    /* AA390 800B9B90 303D638C */  lw         $v1, %lo(D_800D3D30)($v1)
    /* AA394 800B9B94 80000224 */  addiu      $v0, $zero, 0x80
    /* AA398 800B9B98 000062A0 */  sb         $v0, 0x0($v1)
    /* AA39C 800B9B9C 0D80023C */  lui        $v0, %hi(D_800D3D34)
    /* AA3A0 800B9BA0 343D428C */  lw         $v0, %lo(D_800D3D34)($v0)
    /* AA3A4 800B9BA4 43098434 */  ori        $a0, $a0, (0x20943 & 0xFFFF)
    /* AA3A8 800B9BA8 000044AC */  sw         $a0, 0x0($v0)
    /* AA3AC 800B9BAC 0D80033C */  lui        $v1, %hi(D_800D3D38)
    /* AA3B0 800B9BB0 383D638C */  lw         $v1, %lo(D_800D3D38)($v1)
    /* AA3B4 800B9BB4 23130224 */  addiu      $v0, $zero, 0x1323
    /* AA3B8 800B9BB8 000062AC */  sw         $v0, 0x0($v1)
    /* AA3BC 800B9BBC 0F80023C */  lui        $v0, %hi(D_800E81D8)
    /* AA3C0 800B9BC0 D881428C */  lw         $v0, %lo(D_800E81D8)($v0)
    /* AA3C4 800B9BC4 00000000 */  nop
    /* AA3C8 800B9BC8 14004014 */  bnez       $v0, .L800B9C1C
    /* AA3CC 800B9BCC 21200000 */   addu      $a0, $zero, $zero
    /* AA3D0 800B9BD0 2800A527 */  addiu      $a1, $sp, 0x28
  .L800B9BD4:
    /* AA3D4 800B9BD4 0D80023C */  lui        $v0, %hi(D_800D3D2C)
    /* AA3D8 800B9BD8 2C3D428C */  lw         $v0, %lo(D_800D3D2C)($v0)
    /* AA3DC 800B9BDC 2118A400 */  addu       $v1, $a1, $a0
    /* AA3E0 800B9BE0 00004290 */  lbu        $v0, 0x0($v0)
    /* AA3E4 800B9BE4 01008424 */  addiu      $a0, $a0, 0x1
    /* AA3E8 800B9BE8 000062A0 */  sb         $v0, 0x0($v1)
    /* AA3EC 800B9BEC 0400822C */  sltiu      $v0, $a0, 0x4
    /* AA3F0 800B9BF0 F8FF4014 */  bnez       $v0, .L800B9BD4
    /* AA3F4 800B9BF4 00000000 */   nop
    /* AA3F8 800B9BF8 21200000 */  addu       $a0, $zero, $zero
    /* AA3FC 800B9BFC 0D80033C */  lui        $v1, %hi(D_800D3D2C)
    /* AA400 800B9C00 2C3D638C */  lw         $v1, %lo(D_800D3D2C)($v1)
    /* AA404 800B9C04 00000000 */  nop
  .L800B9C08:
    /* AA408 800B9C08 00006290 */  lbu        $v0, 0x0($v1)
    /* AA40C 800B9C0C 01008424 */  addiu      $a0, $a0, 0x1
    /* AA410 800B9C10 0800822C */  sltiu      $v0, $a0, 0x8
    /* AA414 800B9C14 FCFF4014 */  bnez       $v0, .L800B9C08
    /* AA418 800B9C18 00000000 */   nop
  .L800B9C1C:
    /* AA41C 800B9C1C 1180023C */  lui        $v0, %hi(D_8010CD4C)
    /* AA420 800B9C20 4CCD428C */  lw         $v0, %lo(D_8010CD4C)($v0)
    /* AA424 800B9C24 00000000 */  nop
    /* AA428 800B9C28 0C004010 */  beqz       $v0, .L800B9C5C
    /* AA42C 800B9C2C 0011083C */   lui       $t0, (0x11000000 >> 16)
    /* AA430 800B9C30 08000624 */  addiu      $a2, $zero, 0x8
    /* AA434 800B9C34 21380000 */  addu       $a3, $zero, $zero
    /* AA438 800B9C38 1180053C */  lui        $a1, %hi(D_8010A59C)
    /* AA43C 800B9C3C 9CA5A58C */  lw         $a1, %lo(D_8010A59C)($a1)
    /* AA440 800B9C40 0E80043C */  lui        $a0, %hi(D_800E7208)
    /* AA444 800B9C44 0872848C */  lw         $a0, %lo(D_800E7208)($a0)
    /* AA448 800B9C48 C02A0500 */  sll        $a1, $a1, 11
    /* AA44C 800B9C4C D1E8020C */  jal        func_800BA344
    /* AA450 800B9C50 21284500 */   addu      $a1, $v0, $a1
    /* AA454 800B9C54 20E70208 */  j          .L800B9C80
    /* AA458 800B9C58 00000000 */   nop
  .L800B9C5C:
    /* AA45C 800B9C5C 03000424 */  addiu      $a0, $zero, 0x3
    /* AA460 800B9C60 21300000 */  addu       $a2, $zero, $zero
    /* AA464 800B9C64 0E80053C */  lui        $a1, %hi(D_800E7208)
    /* AA468 800B9C68 0872A58C */  lw         $a1, %lo(D_800E7208)($a1)
    /* AA46C 800B9C6C 08000724 */  addiu      $a3, $zero, 0x8
    /* AA470 800B9C70 1000A8AF */  sw         $t0, 0x10($sp)
    /* AA474 800B9C74 1400A0AF */  sw         $zero, 0x14($sp)
    /* AA478 800B9C78 DCE8020C */  jal        func_800BA370
    /* AA47C 800B9C7C 1800A0AF */   sw        $zero, 0x18($sp)
  .L800B9C80:
    /* AA480 800B9C80 0D80043C */  lui        $a0, %hi(D_800D3D54)
    /* AA484 800B9C84 543D848C */  lw         $a0, %lo(D_800D3D54)($a0)
    /* AA488 800B9C88 00000000 */  nop
    /* AA48C 800B9C8C 0000828C */  lw         $v0, 0x0($a0)
    /* AA490 800B9C90 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* AA494 800B9C94 24104300 */  and        $v0, $v0, $v1
    /* AA498 800B9C98 07004010 */  beqz       $v0, .L800B9CB8
    /* AA49C 800B9C9C 21188000 */   addu      $v1, $a0, $zero
    /* AA4A0 800B9CA0 0001043C */  lui        $a0, (0x1000000 >> 16)
  .L800B9CA4:
    /* AA4A4 800B9CA4 0000628C */  lw         $v0, 0x0($v1)
    /* AA4A8 800B9CA8 00000000 */  nop
    /* AA4AC 800B9CAC 24104400 */  and        $v0, $v0, $a0
    /* AA4B0 800B9CB0 FCFF4014 */  bnez       $v0, .L800B9CA4
    /* AA4B4 800B9CB4 00000000 */   nop
  .L800B9CB8:
    /* AA4B8 800B9CB8 0200043C */  lui        $a0, (0x20843 >> 16)
    /* AA4BC 800B9CBC 43088434 */  ori        $a0, $a0, (0x20843 & 0xFFFF)
    /* AA4C0 800B9CC0 0E80023C */  lui        $v0, %hi(D_800E7208)
    /* AA4C4 800B9CC4 0872428C */  lw         $v0, %lo(D_800E7208)($v0)
    /* AA4C8 800B9CC8 0D80033C */  lui        $v1, %hi(D_800D3D34)
    /* AA4CC 800B9CCC 343D638C */  lw         $v1, %lo(D_800D3D34)($v1)
    /* AA4D0 800B9CD0 2B00A58B */  lwl        $a1, 0x2B($sp)
    /* AA4D4 800B9CD4 2800A59B */  lwr        $a1, 0x28($sp)
    /* AA4D8 800B9CD8 00000000 */  nop
    /* AA4DC 800B9CDC 1F0045A8 */  swl        $a1, 0x1F($v0)
    /* AA4E0 800B9CE0 1C0045B8 */  swr        $a1, 0x1C($v0)
    /* AA4E4 800B9CE4 000064AC */  sw         $a0, 0x0($v1)
    /* AA4E8 800B9CE8 0D80033C */  lui        $v1, %hi(D_800D3D38)
    /* AA4EC 800B9CEC 383D638C */  lw         $v1, %lo(D_800D3D38)($v1)
    /* AA4F0 800B9CF0 25130224 */  addiu      $v0, $zero, 0x1325
    /* AA4F4 800B9CF4 000062AC */  sw         $v0, 0x0($v1)
    /* AA4F8 800B9CF8 1180033C */  lui        $v1, %hi(D_8010CD84)
    /* AA4FC 800B9CFC 84CD638C */  lw         $v1, %lo(D_8010CD84)($v1)
    /* AA500 800B9D00 01000224 */  addiu      $v0, $zero, 0x1
    /* AA504 800B9D04 1C006214 */  bne        $v1, $v0, .L800B9D78
    /* AA508 800B9D08 00000000 */   nop
    /* AA50C 800B9D0C 0F80043C */  lui        $a0, %hi(D_800F0F6C)
    /* AA510 800B9D10 6C0F848C */  lw         $a0, %lo(D_800F0F6C)($a0)
    /* AA514 800B9D14 00000000 */  nop
    /* AA518 800B9D18 17008010 */  beqz       $a0, .L800B9D78
    /* AA51C 800B9D1C 00000000 */   nop
    /* AA520 800B9D20 0E80033C */  lui        $v1, %hi(D_800E7208)
    /* AA524 800B9D24 0872638C */  lw         $v1, %lo(D_800E7208)($v1)
    /* AA528 800B9D28 00000000 */  nop
    /* AA52C 800B9D2C 08006294 */  lhu        $v0, 0x8($v1)
    /* AA530 800B9D30 00000000 */  nop
    /* AA534 800B9D34 0E008210 */  beq        $a0, $v0, .L800B9D70
    /* AA538 800B9D38 00000000 */   nop
    /* AA53C 800B9D3C 000060A4 */  sh         $zero, 0x0($v1)
    /* AA540 800B9D40 1180023C */  lui        $v0, %hi(D_8010CD4C)
    /* AA544 800B9D44 4CCD428C */  lw         $v0, %lo(D_8010CD4C)($v0)
    /* AA548 800B9D48 00000000 */  nop
    /* AA54C 800B9D4C 79014010 */  beqz       $v0, .L800BA334
    /* AA550 800B9D50 00000000 */   nop
    /* AA554 800B9D54 1180023C */  lui        $v0, %hi(D_8010A59C)
    /* AA558 800B9D58 9CA5428C */  lw         $v0, %lo(D_8010A59C)($v0)
    /* AA55C 800B9D5C 00000000 */  nop
    /* AA560 800B9D60 01004224 */  addiu      $v0, $v0, 0x1
    /* AA564 800B9D64 1180013C */  lui        $at, %hi(D_8010A59C)
    /* AA568 800B9D68 CDE80208 */  j          .L800BA334
    /* AA56C 800B9D6C 9CA522AC */   sw        $v0, %lo(D_8010A59C)($at)
  .L800B9D70:
    /* AA570 800B9D70 1180013C */  lui        $at, %hi(D_8010CD84)
    /* AA574 800B9D74 84CD20AC */  sw         $zero, %lo(D_8010CD84)($at)
  .L800B9D78:
    /* AA578 800B9D78 0E80043C */  lui        $a0, %hi(D_800E7208)
    /* AA57C 800B9D7C 0872848C */  lw         $a0, %lo(D_800E7208)($a0)
    /* AA580 800B9D80 00000000 */  nop
    /* AA584 800B9D84 00008394 */  lhu        $v1, 0x0($a0)
    /* AA588 800B9D88 60010224 */  addiu      $v0, $zero, 0x160
    /* AA58C 800B9D8C 08006214 */  bne        $v1, $v0, .L800B9DB0
    /* AA590 800B9D90 00000000 */   nop
    /* AA594 800B9D94 02008294 */  lhu        $v0, 0x2($a0)
    /* AA598 800B9D98 0F80033C */  lui        $v1, %hi(D_800F3560)
    /* AA59C 800B9D9C 6035638C */  lw         $v1, %lo(D_800F3560)($v1)
    /* AA5A0 800B9DA0 82120200 */  srl        $v0, $v0, 10
    /* AA5A4 800B9DA4 1F004230 */  andi       $v0, $v0, 0x1F
    /* AA5A8 800B9DA8 11004310 */  beq        $v0, $v1, .L800B9DF0
    /* AA5AC 800B9DAC 00000000 */   nop
  .L800B9DB0:
    /* AA5B0 800B9DB0 1180023C */  lui        $v0, %hi(D_8010CD4C)
    /* AA5B4 800B9DB4 4CCD428C */  lw         $v0, %lo(D_8010CD4C)($v0)
    /* AA5B8 800B9DB8 00000000 */  nop
    /* AA5BC 800B9DBC 04004010 */  beqz       $v0, .L800B9DD0
    /* AA5C0 800B9DC0 00000000 */   nop
    /* AA5C4 800B9DC4 1180013C */  lui        $at, %hi(D_8010A59C)
    /* AA5C8 800B9DC8 75E70208 */  j          .L800B9DD4
    /* AA5CC 800B9DCC 9CA520AC */   sw        $zero, %lo(D_8010A59C)($at)
  .L800B9DD0:
    /* AA5D0 800B9DD0 00008294 */  lhu        $v0, 0x0($a0)
  .L800B9DD4:
    /* AA5D4 800B9DD4 0E80033C */  lui        $v1, %hi(D_800E7208)
    /* AA5D8 800B9DD8 0872638C */  lw         $v1, %lo(D_800E7208)($v1)
    /* AA5DC 800B9DDC 05000224 */  addiu      $v0, $zero, 0x5
    /* AA5E0 800B9DE0 0D80013C */  lui        $at, %hi(D_800D3D6C)
    /* AA5E4 800B9DE4 6C3D22AC */  sw         $v0, %lo(D_800D3D6C)($at)
    /* AA5E8 800B9DE8 CDE80208 */  j          .L800BA334
    /* AA5EC 800B9DEC 000060A4 */   sh        $zero, 0x0($v1)
  .L800B9DF0:
    /* AA5F0 800B9DF0 0F80033C */  lui        $v1, %hi(D_800E81CC)
    /* AA5F4 800B9DF4 CC816384 */  lh         $v1, %lo(D_800E81CC)($v1)
    /* AA5F8 800B9DF8 04008294 */  lhu        $v0, 0x4($a0)
    /* AA5FC 800B9DFC 00000000 */  nop
    /* AA600 800B9E00 0A006214 */  bne        $v1, $v0, .L800B9E2C
    /* AA604 800B9E04 00000000 */   nop
    /* AA608 800B9E08 0E80033C */  lui        $v1, %hi(D_800E7654)
    /* AA60C 800B9E0C 5476638C */  lw         $v1, %lo(D_800E7654)($v1)
    /* AA610 800B9E10 00000000 */  nop
    /* AA614 800B9E14 25006010 */  beqz       $v1, .L800B9EAC
    /* AA618 800B9E18 00000000 */   nop
    /* AA61C 800B9E1C 08008294 */  lhu        $v0, 0x8($a0)
    /* AA620 800B9E20 00000000 */  nop
    /* AA624 800B9E24 21006210 */  beq        $v1, $v0, .L800B9EAC
    /* AA628 800B9E28 00000000 */   nop
  .L800B9E2C:
    /* AA62C 800B9E2C 1180043C */  lui        $a0, %hi(D_8010C1C4)
    /* AA630 800B9E30 C4C1848C */  lw         $a0, %lo(D_8010C1C4)($a0)
    /* AA634 800B9E34 1180053C */  lui        $a1, %hi(D_8010C1C0)
    /* AA638 800B9E38 C0C1A58C */  lw         $a1, %lo(D_8010C1C0)($a1)
    /* AA63C 800B9E3C 0E80013C */  lui        $at, %hi(D_800E7654)
    /* AA640 800B9E40 547620AC */  sw         $zero, %lo(D_800E7654)($at)
    /* AA644 800B9E44 0F80013C */  lui        $at, %hi(D_800E81CC)
    /* AA648 800B9E48 CC8120A4 */  sh         $zero, %lo(D_800E81CC)($at)
    /* AA64C 800B9E4C 42E6020C */  jal        func_800B9908
    /* AA650 800B9E50 2328A400 */   subu      $a1, $a1, $a0
    /* AA654 800B9E54 1180023C */  lui        $v0, %hi(D_8010C1C4)
    /* AA658 800B9E58 C4C1428C */  lw         $v0, %lo(D_8010C1C4)($v0)
    /* AA65C 800B9E5C 0E80033C */  lui        $v1, %hi(D_800E7208)
    /* AA660 800B9E60 0872638C */  lw         $v1, %lo(D_800E7208)($v1)
    /* AA664 800B9E64 1180013C */  lui        $at, %hi(D_8010C1C0)
    /* AA668 800B9E68 C0C122AC */  sw         $v0, %lo(D_8010C1C0)($at)
    /* AA66C 800B9E6C 000060A4 */  sh         $zero, 0x0($v1)
    /* AA670 800B9E70 1180023C */  lui        $v0, %hi(D_8010CD4C)
    /* AA674 800B9E74 4CCD428C */  lw         $v0, %lo(D_8010CD4C)($v0)
    /* AA678 800B9E78 00000000 */  nop
    /* AA67C 800B9E7C 08004010 */  beqz       $v0, .L800B9EA0
    /* AA680 800B9E80 06000224 */   addiu     $v0, $zero, 0x6
    /* AA684 800B9E84 1180023C */  lui        $v0, %hi(D_8010A59C)
    /* AA688 800B9E88 9CA5428C */  lw         $v0, %lo(D_8010A59C)($v0)
    /* AA68C 800B9E8C 00000000 */  nop
    /* AA690 800B9E90 01004224 */  addiu      $v0, $v0, 0x1
    /* AA694 800B9E94 1180013C */  lui        $at, %hi(D_8010A59C)
    /* AA698 800B9E98 9CA522AC */  sw         $v0, %lo(D_8010A59C)($at)
    /* AA69C 800B9E9C 06000224 */  addiu      $v0, $zero, 0x6
  .L800B9EA0:
    /* AA6A0 800B9EA0 0D80013C */  lui        $at, %hi(D_800D3D6C)
    /* AA6A4 800B9EA4 CDE80208 */  j          .L800BA334
    /* AA6A8 800B9EA8 6C3D22AC */   sw        $v0, %lo(D_800D3D6C)($at)
  .L800B9EAC:
    /* AA6AC 800B9EAC 0E80033C */  lui        $v1, %hi(D_800E7208)
    /* AA6B0 800B9EB0 0872638C */  lw         $v1, %lo(D_800E7208)($v1)
    /* AA6B4 800B9EB4 00000000 */  nop
    /* AA6B8 800B9EB8 04006294 */  lhu        $v0, 0x4($v1)
    /* AA6BC 800B9EBC 00000000 */  nop
    /* AA6C0 800B9EC0 8D004014 */  bnez       $v0, .L800BA0F8
    /* AA6C4 800B9EC4 0A000224 */   addiu     $v0, $zero, 0xA
    /* AA6C8 800B9EC8 08006294 */  lhu        $v0, 0x8($v1)
    /* AA6CC 800B9ECC 1180033C */  lui        $v1, %hi(D_8010CD58)
    /* AA6D0 800B9ED0 58CD638C */  lw         $v1, %lo(D_8010CD58)($v1)
    /* AA6D4 800B9ED4 0F80013C */  lui        $at, %hi(D_800E81CC)
    /* AA6D8 800B9ED8 CC8120A4 */  sh         $zero, %lo(D_800E81CC)($at)
    /* AA6DC 800B9EDC FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* AA6E0 800B9EE0 0E80013C */  lui        $at, %hi(D_800E7654)
    /* AA6E4 800B9EE4 547622AC */  sw         $v0, %lo(D_800E7654)($at)
    /* AA6E8 800B9EE8 2B006010 */  beqz       $v1, .L800B9F98
    /* AA6EC 800B9EEC 2B104300 */   sltu      $v0, $v0, $v1
    /* AA6F0 800B9EF0 29004014 */  bnez       $v0, .L800B9F98
    /* AA6F4 800B9EF4 00000000 */   nop
    /* AA6F8 800B9EF8 1180043C */  lui        $a0, %hi(D_8010C1C4)
    /* AA6FC 800B9EFC C4C1848C */  lw         $a0, %lo(D_8010C1C4)($a0)
    /* AA700 800B9F00 1180053C */  lui        $a1, %hi(D_8010C1C0)
    /* AA704 800B9F04 C0C1A58C */  lw         $a1, %lo(D_8010C1C0)($a1)
    /* AA708 800B9F08 0E80013C */  lui        $at, %hi(D_800E7654)
    /* AA70C 800B9F0C 547620AC */  sw         $zero, %lo(D_800E7654)($at)
    /* AA710 800B9F10 0F80013C */  lui        $at, %hi(D_800E81CC)
    /* AA714 800B9F14 CC8120A4 */  sh         $zero, %lo(D_800E81CC)($at)
    /* AA718 800B9F18 42E6020C */  jal        func_800B9908
    /* AA71C 800B9F1C 2328A400 */   subu      $a1, $a1, $a0
    /* AA720 800B9F20 1180023C */  lui        $v0, %hi(D_8010C1C4)
    /* AA724 800B9F24 C4C1428C */  lw         $v0, %lo(D_8010C1C4)($v0)
    /* AA728 800B9F28 0E80033C */  lui        $v1, %hi(D_800E7208)
    /* AA72C 800B9F2C 0872638C */  lw         $v1, %lo(D_800E7208)($v1)
    /* AA730 800B9F30 1180013C */  lui        $at, %hi(D_8010C1C0)
    /* AA734 800B9F34 C0C122AC */  sw         $v0, %lo(D_8010C1C0)($at)
    /* AA738 800B9F38 000060A4 */  sh         $zero, 0x0($v1)
    /* AA73C 800B9F3C 0F80033C */  lui        $v1, %hi(D_800EF8B4)
    /* AA740 800B9F40 B4F8638C */  lw         $v1, %lo(D_800EF8B4)($v1)
    /* AA744 800B9F44 01000224 */  addiu      $v0, $zero, 0x1
    /* AA748 800B9F48 1180013C */  lui        $at, %hi(D_8010CD84)
    /* AA74C 800B9F4C 03006010 */  beqz       $v1, .L800B9F5C
    /* AA750 800B9F50 84CD22AC */   sw        $v0, %lo(D_8010CD84)($at)
    /* AA754 800B9F54 09F86000 */  jalr       $v1
    /* AA758 800B9F58 00000000 */   nop
  .L800B9F5C:
    /* AA75C 800B9F5C 1180023C */  lui        $v0, %hi(D_8010CD4C)
    /* AA760 800B9F60 4CCD428C */  lw         $v0, %lo(D_8010CD4C)($v0)
    /* AA764 800B9F64 00000000 */  nop
    /* AA768 800B9F68 08004010 */  beqz       $v0, .L800B9F8C
    /* AA76C 800B9F6C 07000224 */   addiu     $v0, $zero, 0x7
    /* AA770 800B9F70 1180023C */  lui        $v0, %hi(D_8010A59C)
    /* AA774 800B9F74 9CA5428C */  lw         $v0, %lo(D_8010A59C)($v0)
    /* AA778 800B9F78 00000000 */  nop
    /* AA77C 800B9F7C 01004224 */  addiu      $v0, $v0, 0x1
    /* AA780 800B9F80 1180013C */  lui        $at, %hi(D_8010A59C)
    /* AA784 800B9F84 9CA522AC */  sw         $v0, %lo(D_8010A59C)($at)
    /* AA788 800B9F88 07000224 */  addiu      $v0, $zero, 0x7
  .L800B9F8C:
    /* AA78C 800B9F8C 0D80013C */  lui        $at, %hi(D_800D3D6C)
    /* AA790 800B9F90 CDE80208 */  j          .L800BA334
    /* AA794 800B9F94 6C3D22AC */   sw        $v0, %lo(D_800D3D6C)($at)
  .L800B9F98:
    /* AA798 800B9F98 1180023C */  lui        $v0, %hi(D_8010CE68)
    /* AA79C 800B9F9C 68CE428C */  lw         $v0, %lo(D_8010CE68)($v0)
    /* AA7A0 800B9FA0 1180033C */  lui        $v1, %hi(D_8010C1C0)
    /* AA7A4 800B9FA4 C0C1638C */  lw         $v1, %lo(D_8010C1C0)($v1)
    /* AA7A8 800B9FA8 0E80043C */  lui        $a0, %hi(D_800E7208)
    /* AA7AC 800B9FAC 0872848C */  lw         $a0, %lo(D_800E7208)($a0)
    /* AA7B0 800B9FB0 23104300 */  subu       $v0, $v0, $v1
    /* AA7B4 800B9FB4 06008394 */  lhu        $v1, 0x6($a0)
    /* AA7B8 800B9FB8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* AA7BC 800B9FBC 2B104300 */  sltu       $v0, $v0, $v1
    /* AA7C0 800B9FC0 48004010 */  beqz       $v0, .L800BA0E4
    /* AA7C4 800B9FC4 00000000 */   nop
    /* AA7C8 800B9FC8 1180023C */  lui        $v0, %hi(D_8010CD58)
    /* AA7CC 800B9FCC 58CD428C */  lw         $v0, %lo(D_8010CD58)($v0)
    /* AA7D0 800B9FD0 00000000 */  nop
    /* AA7D4 800B9FD4 19004014 */  bnez       $v0, .L800BA03C
    /* AA7D8 800B9FD8 01000224 */   addiu     $v0, $zero, 0x1
    /* AA7DC 800B9FDC 000082A4 */  sh         $v0, 0x0($a0)
    /* AA7E0 800B9FE0 0F80033C */  lui        $v1, %hi(D_800EF8B4)
    /* AA7E4 800B9FE4 B4F8638C */  lw         $v1, %lo(D_800EF8B4)($v1)
    /* AA7E8 800B9FE8 01000224 */  addiu      $v0, $zero, 0x1
    /* AA7EC 800B9FEC 1180013C */  lui        $at, %hi(D_8010CD84)
    /* AA7F0 800B9FF0 03006010 */  beqz       $v1, .L800BA000
    /* AA7F4 800B9FF4 84CD22AC */   sw        $v0, %lo(D_8010CD84)($at)
    /* AA7F8 800B9FF8 09F86000 */  jalr       $v1
    /* AA7FC 800B9FFC 00000000 */   nop
  .L800BA000:
    /* AA800 800BA000 1180023C */  lui        $v0, %hi(D_8010CD4C)
    /* AA804 800BA004 4CCD428C */  lw         $v0, %lo(D_8010CD4C)($v0)
    /* AA808 800BA008 00000000 */  nop
    /* AA80C 800BA00C 08004010 */  beqz       $v0, .L800BA030
    /* AA810 800BA010 08000224 */   addiu     $v0, $zero, 0x8
    /* AA814 800BA014 1180023C */  lui        $v0, %hi(D_8010A59C)
    /* AA818 800BA018 9CA5428C */  lw         $v0, %lo(D_8010A59C)($v0)
    /* AA81C 800BA01C 00000000 */  nop
    /* AA820 800BA020 01004224 */  addiu      $v0, $v0, 0x1
    /* AA824 800BA024 1180013C */  lui        $at, %hi(D_8010A59C)
    /* AA828 800BA028 9CA522AC */  sw         $v0, %lo(D_8010A59C)($at)
    /* AA82C 800BA02C 08000224 */  addiu      $v0, $zero, 0x8
  .L800BA030:
    /* AA830 800BA030 0D80013C */  lui        $at, %hi(D_800D3D6C)
    /* AA834 800BA034 CDE80208 */  j          .L800BA334
    /* AA838 800BA038 6C3D22AC */   sw        $v0, %lo(D_800D3D6C)($at)
  .L800BA03C:
    /* AA83C 800BA03C 1180023C */  lui        $v0, %hi(D_8010CD8C)
    /* AA840 800BA040 8CCD428C */  lw         $v0, %lo(D_8010CD8C)($v0)
    /* AA844 800BA044 00000000 */  nop
    /* AA848 800BA048 00004284 */  lh         $v0, 0x0($v0)
    /* AA84C 800BA04C 00000000 */  nop
    /* AA850 800BA050 11004010 */  beqz       $v0, .L800BA098
    /* AA854 800BA054 01000224 */   addiu     $v0, $zero, 0x1
    /* AA858 800BA058 000080A4 */  sh         $zero, 0x0($a0)
    /* AA85C 800BA05C 1180023C */  lui        $v0, %hi(D_8010CD4C)
    /* AA860 800BA060 4CCD428C */  lw         $v0, %lo(D_8010CD4C)($v0)
    /* AA864 800BA064 00000000 */  nop
    /* AA868 800BA068 08004010 */  beqz       $v0, .L800BA08C
    /* AA86C 800BA06C 09000224 */   addiu     $v0, $zero, 0x9
    /* AA870 800BA070 1180023C */  lui        $v0, %hi(D_8010A59C)
    /* AA874 800BA074 9CA5428C */  lw         $v0, %lo(D_8010A59C)($v0)
    /* AA878 800BA078 00000000 */  nop
    /* AA87C 800BA07C 01004224 */  addiu      $v0, $v0, 0x1
    /* AA880 800BA080 1180013C */  lui        $at, %hi(D_8010A59C)
    /* AA884 800BA084 9CA522AC */  sw         $v0, %lo(D_8010A59C)($at)
    /* AA888 800BA088 09000224 */  addiu      $v0, $zero, 0x9
  .L800BA08C:
    /* AA88C 800BA08C 0D80013C */  lui        $at, %hi(D_800D3D6C)
    /* AA890 800BA090 CDE80208 */  j          .L800BA334
    /* AA894 800BA094 6C3D22AC */   sw        $v0, %lo(D_800D3D6C)($at)
  .L800BA098:
    /* AA898 800BA098 000082A4 */  sh         $v0, 0x0($a0)
    /* AA89C 800BA09C 1180053C */  lui        $a1, %hi(D_8010CD8C)
    /* AA8A0 800BA0A0 8CCDA58C */  lw         $a1, %lo(D_8010CD8C)($a1)
    /* AA8A4 800BA0A4 0E80033C */  lui        $v1, %hi(D_800E7208)
    /* AA8A8 800BA0A8 0872638C */  lw         $v1, %lo(D_800E7208)($v1)
    /* AA8AC 800BA0AC 21200000 */  addu       $a0, $zero, $zero
    /* AA8B0 800BA0B0 1180013C */  lui        $at, %hi(D_8010C1C0)
    /* AA8B4 800BA0B4 C0C120AC */  sw         $zero, %lo(D_8010C1C0)($at)
  .L800BA0B8:
    /* AA8B8 800BA0B8 0000628C */  lw         $v0, 0x0($v1)
    /* AA8BC 800BA0BC 04006324 */  addiu      $v1, $v1, 0x4
    /* AA8C0 800BA0C0 01008424 */  addiu      $a0, $a0, 0x1
    /* AA8C4 800BA0C4 0000A2AC */  sw         $v0, 0x0($a1)
    /* AA8C8 800BA0C8 0800822C */  sltiu      $v0, $a0, 0x8
    /* AA8CC 800BA0CC FAFF4014 */  bnez       $v0, .L800BA0B8
    /* AA8D0 800BA0D0 0400A524 */   addiu     $a1, $a1, 0x4
    /* AA8D4 800BA0D4 1180023C */  lui        $v0, %hi(D_8010CD8C)
    /* AA8D8 800BA0D8 8CCD428C */  lw         $v0, %lo(D_8010CD8C)($v0)
    /* AA8DC 800BA0DC 0E80013C */  lui        $at, %hi(D_800E7208)
    /* AA8E0 800BA0E0 087222AC */  sw         $v0, %lo(D_800E7208)($at)
  .L800BA0E4:
    /* AA8E4 800BA0E4 1180023C */  lui        $v0, %hi(D_8010C1C0)
    /* AA8E8 800BA0E8 C0C1428C */  lw         $v0, %lo(D_8010C1C0)($v0)
    /* AA8EC 800BA0EC 1180013C */  lui        $at, %hi(D_8010C1C4)
    /* AA8F0 800BA0F0 C4C122AC */  sw         $v0, %lo(D_8010C1C4)($at)
    /* AA8F4 800BA0F4 0A000224 */  addiu      $v0, $zero, 0xA
  .L800BA0F8:
    /* AA8F8 800BA0F8 0D80013C */  lui        $at, %hi(D_800D3D6C)
    /* AA8FC 800BA0FC 6C3D22AC */  sw         $v0, %lo(D_800D3D6C)($at)
    /* AA900 800BA100 0F80023C */  lui        $v0, %hi(D_800E81CC)
    /* AA904 800BA104 CC814294 */  lhu        $v0, %lo(D_800E81CC)($v0)
    /* AA908 800BA108 1180043C */  lui        $a0, %hi(D_8010CE68)
    /* AA90C 800BA10C 68CE848C */  lw         $a0, %lo(D_8010CE68)($a0)
    /* AA910 800BA110 1180033C */  lui        $v1, %hi(D_8010CD8C)
    /* AA914 800BA114 8CCD638C */  lw         $v1, %lo(D_8010CD8C)($v1)
    /* AA918 800BA118 1180053C */  lui        $a1, %hi(D_8010C1C0)
    /* AA91C 800BA11C C0C1A58C */  lw         $a1, %lo(D_8010C1C0)($a1)
    /* AA920 800BA120 01004224 */  addiu      $v0, $v0, 0x1
    /* AA924 800BA124 40210400 */  sll        $a0, $a0, 5
    /* AA928 800BA128 21186400 */  addu       $v1, $v1, $a0
    /* AA92C 800BA12C 0F80013C */  lui        $at, %hi(D_800E81CC)
    /* AA930 800BA130 CC8122A4 */  sh         $v0, %lo(D_800E81CC)($at)
    /* AA934 800BA134 80110500 */  sll        $v0, $a1, 6
    /* AA938 800BA138 23104500 */  subu       $v0, $v0, $a1
    /* AA93C 800BA13C 40110200 */  sll        $v0, $v0, 5
    /* AA940 800BA140 0F80043C */  lui        $a0, %hi(D_800E81D4)
    /* AA944 800BA144 D481848C */  lw         $a0, %lo(D_800E81D4)($a0)
    /* AA948 800BA148 21186200 */  addu       $v1, $v1, $v0
    /* AA94C 800BA14C 1180013C */  lui        $at, %hi(D_8010CD88)
    /* AA950 800BA150 88CD23AC */  sw         $v1, %lo(D_8010CD88)($at)
    /* AA954 800BA154 0B008010 */  beqz       $a0, .L800BA184
    /* AA958 800BA158 0011083C */   lui       $t0, (0x11000000 >> 16)
    /* AA95C 800BA15C 0200033C */  lui        $v1, (0x20943 >> 16)
    /* AA960 800BA160 0D80023C */  lui        $v0, %hi(D_800D3D34)
    /* AA964 800BA164 343D428C */  lw         $v0, %lo(D_800D3D34)($v0)
    /* AA968 800BA168 43096334 */  ori        $v1, $v1, (0x20943 & 0xFFFF)
    /* AA96C 800BA16C 000043AC */  sw         $v1, 0x0($v0)
    /* AA970 800BA170 0D80033C */  lui        $v1, %hi(D_800D3D38)
    /* AA974 800BA174 383D638C */  lw         $v1, %lo(D_800D3D38)($v1)
    /* AA978 800BA178 23130224 */  addiu      $v0, $zero, 0x1323
    /* AA97C 800BA17C 68E80208 */  j          .L800BA1A0
    /* AA980 800BA180 000062AC */   sw        $v0, 0x0($v1)
  .L800BA184:
    /* AA984 800BA184 0221033C */  lui        $v1, (0x21020843 >> 16)
    /* AA988 800BA188 43086334 */  ori        $v1, $v1, (0x21020843 & 0xFFFF)
    /* AA98C 800BA18C 4011083C */  lui        $t0, (0x11400100 >> 16)
    /* AA990 800BA190 0D80023C */  lui        $v0, %hi(D_800D3D34)
    /* AA994 800BA194 343D428C */  lw         $v0, %lo(D_800D3D34)($v0)
    /* AA998 800BA198 00010835 */  ori        $t0, $t0, (0x11400100 & 0xFFFF)
    /* AA99C 800BA19C 000043AC */  sw         $v1, 0x0($v0)
  .L800BA1A0:
    /* AA9A0 800BA1A0 0E80023C */  lui        $v0, %hi(D_800E7208)
    /* AA9A4 800BA1A4 0872428C */  lw         $v0, %lo(D_800E7208)($v0)
    /* AA9A8 800BA1A8 00000000 */  nop
    /* AA9AC 800BA1AC 06004394 */  lhu        $v1, 0x6($v0)
    /* AA9B0 800BA1B0 04004294 */  lhu        $v0, 0x4($v0)
    /* AA9B4 800BA1B4 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* AA9B8 800BA1B8 29006214 */  bne        $v1, $v0, .L800BA260
    /* AA9BC 800BA1BC 01000324 */   addiu     $v1, $zero, 0x1
    /* AA9C0 800BA1C0 1180023C */  lui        $v0, %hi(D_8010CD4C)
    /* AA9C4 800BA1C4 4CCD428C */  lw         $v0, %lo(D_8010CD4C)($v0)
    /* AA9C8 800BA1C8 1080013C */  lui        $at, %hi(D_800FF680)
    /* AA9CC 800BA1CC 80F623AC */  sw         $v1, %lo(D_800FF680)($at)
    /* AA9D0 800BA1D0 11004010 */  beqz       $v0, .L800BA218
    /* AA9D4 800BA1D4 F8010624 */   addiu     $a2, $zero, 0x1F8
    /* AA9D8 800BA1D8 01000724 */  addiu      $a3, $zero, 0x1
    /* AA9DC 800BA1DC 1180053C */  lui        $a1, %hi(D_8010A59C)
    /* AA9E0 800BA1E0 9CA5A58C */  lw         $a1, %lo(D_8010A59C)($a1)
    /* AA9E4 800BA1E4 1180043C */  lui        $a0, %hi(D_8010CD88)
    /* AA9E8 800BA1E8 88CD848C */  lw         $a0, %lo(D_8010CD88)($a0)
    /* AA9EC 800BA1EC C02A0500 */  sll        $a1, $a1, 11
    /* AA9F0 800BA1F0 21284500 */  addu       $a1, $v0, $a1
    /* AA9F4 800BA1F4 D1E8020C */  jal        func_800BA344
    /* AA9F8 800BA1F8 2000A524 */   addiu     $a1, $a1, 0x20
    /* AA9FC 800BA1FC 1180023C */  lui        $v0, %hi(D_8010A59C)
    /* AAA00 800BA200 9CA5428C */  lw         $v0, %lo(D_8010A59C)($v0)
    /* AAA04 800BA204 00000000 */  nop
    /* AAA08 800BA208 01004224 */  addiu      $v0, $v0, 0x1
    /* AAA0C 800BA20C 1180013C */  lui        $at, %hi(D_8010A59C)
    /* AAA10 800BA210 8FE80208 */  j          .L800BA23C
    /* AAA14 800BA214 9CA522AC */   sw        $v0, %lo(D_8010A59C)($at)
  .L800BA218:
    /* AAA18 800BA218 03000424 */  addiu      $a0, $zero, 0x3
    /* AAA1C 800BA21C 21300000 */  addu       $a2, $zero, $zero
    /* AAA20 800BA220 1180053C */  lui        $a1, %hi(D_8010CD88)
    /* AAA24 800BA224 88CDA58C */  lw         $a1, %lo(D_8010CD88)($a1)
    /* AAA28 800BA228 F8010724 */  addiu      $a3, $zero, 0x1F8
    /* AAA2C 800BA22C 1000A8AF */  sw         $t0, 0x10($sp)
    /* AAA30 800BA230 1400A3AF */  sw         $v1, 0x14($sp)
    /* AAA34 800BA234 DCE8020C */  jal        func_800BA370
    /* AAA38 800BA238 1800A0AF */   sw        $zero, 0x18($sp)
  .L800BA23C:
    /* AAA3C 800BA23C 0F80023C */  lui        $v0, %hi(D_800F0F68)
    /* AAA40 800BA240 680F428C */  lw         $v0, %lo(D_800F0F68)($v0)
    /* AAA44 800BA244 0F80013C */  lui        $at, %hi(D_800E81CC)
    /* AAA48 800BA248 CC8120A4 */  sh         $zero, %lo(D_800E81CC)($at)
    /* AAA4C 800BA24C 0E80013C */  lui        $at, %hi(D_800E7654)
    /* AAA50 800BA250 547620AC */  sw         $zero, %lo(D_800E7654)($at)
    /* AAA54 800BA254 0F80013C */  lui        $at, %hi(D_800F3560)
    /* AAA58 800BA258 B6E80208 */  j          .L800BA2D8
    /* AAA5C 800BA25C 603522AC */   sw        $v0, %lo(D_800F3560)($at)
  .L800BA260:
    /* AAA60 800BA260 1180023C */  lui        $v0, %hi(D_8010CD4C)
    /* AAA64 800BA264 4CCD428C */  lw         $v0, %lo(D_8010CD4C)($v0)
    /* AAA68 800BA268 00000000 */  nop
    /* AAA6C 800BA26C 11004010 */  beqz       $v0, .L800BA2B4
    /* AAA70 800BA270 F8010624 */   addiu     $a2, $zero, 0x1F8
    /* AAA74 800BA274 21380000 */  addu       $a3, $zero, $zero
    /* AAA78 800BA278 1180053C */  lui        $a1, %hi(D_8010A59C)
    /* AAA7C 800BA27C 9CA5A58C */  lw         $a1, %lo(D_8010A59C)($a1)
    /* AAA80 800BA280 1180043C */  lui        $a0, %hi(D_8010CD88)
    /* AAA84 800BA284 88CD848C */  lw         $a0, %lo(D_8010CD88)($a0)
    /* AAA88 800BA288 C02A0500 */  sll        $a1, $a1, 11
    /* AAA8C 800BA28C 21284500 */  addu       $a1, $v0, $a1
    /* AAA90 800BA290 D1E8020C */  jal        func_800BA344
    /* AAA94 800BA294 2000A524 */   addiu     $a1, $a1, 0x20
    /* AAA98 800BA298 1180023C */  lui        $v0, %hi(D_8010A59C)
    /* AAA9C 800BA29C 9CA5428C */  lw         $v0, %lo(D_8010A59C)($v0)
    /* AAAA0 800BA2A0 00000000 */  nop
    /* AAAA4 800BA2A4 01004224 */  addiu      $v0, $v0, 0x1
    /* AAAA8 800BA2A8 1180013C */  lui        $at, %hi(D_8010A59C)
    /* AAAAC 800BA2AC B6E80208 */  j          .L800BA2D8
    /* AAAB0 800BA2B0 9CA522AC */   sw        $v0, %lo(D_8010A59C)($at)
  .L800BA2B4:
    /* AAAB4 800BA2B4 03000424 */  addiu      $a0, $zero, 0x3
    /* AAAB8 800BA2B8 21300000 */  addu       $a2, $zero, $zero
    /* AAABC 800BA2BC 1180053C */  lui        $a1, %hi(D_8010CD88)
    /* AAAC0 800BA2C0 88CDA58C */  lw         $a1, %lo(D_8010CD88)($a1)
    /* AAAC4 800BA2C4 F8010724 */  addiu      $a3, $zero, 0x1F8
    /* AAAC8 800BA2C8 1000A8AF */  sw         $t0, 0x10($sp)
    /* AAACC 800BA2CC 1400A0AF */  sw         $zero, 0x14($sp)
    /* AAAD0 800BA2D0 DCE8020C */  jal        func_800BA370
    /* AAAD4 800BA2D4 1800A0AF */   sw        $zero, 0x18($sp)
  .L800BA2D8:
    /* AAAD8 800BA2D8 0D80033C */  lui        $v1, %hi(D_800D3D38)
    /* AAADC 800BA2DC 383D638C */  lw         $v1, %lo(D_800D3D38)($v1)
    /* AAAE0 800BA2E0 25130224 */  addiu      $v0, $zero, 0x1325
    /* AAAE4 800BA2E4 000062AC */  sw         $v0, 0x0($v1)
    /* AAAE8 800BA2E8 0E80033C */  lui        $v1, %hi(D_800E7208)
    /* AAAEC 800BA2EC 0872638C */  lw         $v1, %lo(D_800E7208)($v1)
    /* AAAF0 800BA2F0 03000224 */  addiu      $v0, $zero, 0x3
    /* AAAF4 800BA2F4 000062A4 */  sh         $v0, 0x0($v1)
    /* AAAF8 800BA2F8 1180023C */  lui        $v0, %hi(D_8010C1C0)
    /* AAAFC 800BA2FC C0C1428C */  lw         $v0, %lo(D_8010C1C0)($v0)
    /* AAB00 800BA300 1180033C */  lui        $v1, %hi(D_8010CD4C)
    /* AAB04 800BA304 4CCD638C */  lw         $v1, %lo(D_8010CD4C)($v1)
    /* AAB08 800BA308 01004224 */  addiu      $v0, $v0, 0x1
    /* AAB0C 800BA30C 1180013C */  lui        $at, %hi(D_8010C1C0)
    /* AAB10 800BA310 08006010 */  beqz       $v1, .L800BA334
    /* AAB14 800BA314 C0C122AC */   sw        $v0, %lo(D_8010C1C0)($at)
    /* AAB18 800BA318 1080023C */  lui        $v0, %hi(D_800FF680)
    /* AAB1C 800BA31C 80F6428C */  lw         $v0, %lo(D_800FF680)($v0)
    /* AAB20 800BA320 00000000 */  nop
    /* AAB24 800BA324 03004010 */  beqz       $v0, .L800BA334
    /* AAB28 800BA328 00000000 */   nop
    /* AAB2C 800BA32C B6E5020C */  jal        func_800B96D8
    /* AAB30 800BA330 00000000 */   nop
  .L800BA334:
    /* AAB34 800BA334 3800BF8F */  lw         $ra, 0x38($sp)
    /* AAB38 800BA338 4000BD27 */  addiu      $sp, $sp, 0x40
    /* AAB3C 800BA33C 0800E003 */  jr         $ra
    /* AAB40 800BA340 00000000 */   nop
endlabel func_800B9A28
