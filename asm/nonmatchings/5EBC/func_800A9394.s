nonmatching func_800A9394, 0x1D4

glabel func_800A9394
    /* 99B94 800A9394 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 99B98 800A9398 2400B1AF */  sw         $s1, 0x24($sp)
    /* 99B9C 800A939C 21888000 */  addu       $s1, $a0, $zero
    /* 99BA0 800A93A0 2000B0AF */  sw         $s0, 0x20($sp)
    /* 99BA4 800A93A4 21800000 */  addu       $s0, $zero, $zero
    /* 99BA8 800A93A8 CB000234 */  ori        $v0, $zero, 0xCB
    /* 99BAC 800A93AC 2800BFAF */  sw         $ra, 0x28($sp)
    /* 99BB0 800A93B0 0E80013C */  lui        $at, %hi(D_800E6BD9)
    /* 99BB4 800A93B4 D96B20A0 */  sb         $zero, %lo(D_800E6BD9)($at)
    /* 99BB8 800A93B8 0E80013C */  lui        $at, %hi(D_800E6BAA)
    /* 99BBC 800A93BC AA6B20A4 */  sh         $zero, %lo(D_800E6BAA)($at)
    /* 99BC0 800A93C0 1000A2A3 */  sb         $v0, 0x10($sp)
    /* 99BC4 800A93C4 0E80013C */  lui        $at, %hi(D_800E6BAA)
    /* 99BC8 800A93C8 AA6B20A4 */  sh         $zero, %lo(D_800E6BAA)($at)
    /* 99BCC 800A93CC 0E000434 */  ori        $a0, $zero, 0xE
  .L800A93D0:
    /* 99BD0 800A93D0 5CDC020C */  jal        func_800B7170
    /* 99BD4 800A93D4 1000A527 */   addiu     $a1, $sp, 0x10
    /* 99BD8 800A93D8 0D004014 */  bnez       $v0, .L800A9410
    /* 99BDC 800A93DC 00000000 */   nop
    /* 99BE0 800A93E0 0E80023C */  lui        $v0, %hi(D_800E6BAA)
    /* 99BE4 800A93E4 AA6B4294 */  lhu        $v0, %lo(D_800E6BAA)($v0)
    /* 99BE8 800A93E8 00000000 */  nop
    /* 99BEC 800A93EC 01004224 */  addiu      $v0, $v0, 0x1
    /* 99BF0 800A93F0 0E80013C */  lui        $at, %hi(D_800E6BAA)
    /* 99BF4 800A93F4 AA6B22A4 */  sh         $v0, %lo(D_800E6BAA)($at)
    /* 99BF8 800A93F8 00140200 */  sll        $v0, $v0, 16
    /* 99BFC 800A93FC 03140200 */  sra        $v0, $v0, 16
    /* 99C00 800A9400 01014228 */  slti       $v0, $v0, 0x101
    /* 99C04 800A9404 F2FF4014 */  bnez       $v0, .L800A93D0
    /* 99C08 800A9408 0E000434 */   ori       $a0, $zero, 0xE
    /* 99C0C 800A940C FFFF1024 */  addiu      $s0, $zero, -0x1
  .L800A9410:
    /* 99C10 800A9410 0E80023C */  lui        $v0, %hi(D_800E6AE8)
    /* 99C14 800A9414 E86A4290 */  lbu        $v0, %lo(D_800E6AE8)($v0)
    /* 99C18 800A9418 0E80033C */  lui        $v1, %hi(D_800E6BD4)
    /* 99C1C 800A941C D46B6390 */  lbu        $v1, %lo(D_800E6BD4)($v1)
    /* 99C20 800A9420 0E80013C */  lui        $at, %hi(D_800E6BAA)
    /* 99C24 800A9424 AA6B20A4 */  sh         $zero, %lo(D_800E6BAA)($at)
    /* 99C28 800A9428 1000A2A3 */  sb         $v0, 0x10($sp)
    /* 99C2C 800A942C 1100A3A3 */  sb         $v1, 0x11($sp)
    /* 99C30 800A9430 0D000434 */  ori        $a0, $zero, 0xD
  .L800A9434:
    /* 99C34 800A9434 5CDC020C */  jal        func_800B7170
    /* 99C38 800A9438 1000A527 */   addiu     $a1, $sp, 0x10
    /* 99C3C 800A943C 0E004014 */  bnez       $v0, .L800A9478
    /* 99C40 800A9440 00141100 */   sll       $v0, $s1, 16
    /* 99C44 800A9444 0E80023C */  lui        $v0, %hi(D_800E6BAA)
    /* 99C48 800A9448 AA6B4294 */  lhu        $v0, %lo(D_800E6BAA)($v0)
    /* 99C4C 800A944C 00000000 */  nop
    /* 99C50 800A9450 01004224 */  addiu      $v0, $v0, 0x1
    /* 99C54 800A9454 0E80013C */  lui        $at, %hi(D_800E6BAA)
    /* 99C58 800A9458 AA6B22A4 */  sh         $v0, %lo(D_800E6BAA)($at)
    /* 99C5C 800A945C 00140200 */  sll        $v0, $v0, 16
    /* 99C60 800A9460 03140200 */  sra        $v0, $v0, 16
    /* 99C64 800A9464 01014228 */  slti       $v0, $v0, 0x101
    /* 99C68 800A9468 F2FF4014 */  bnez       $v0, .L800A9434
    /* 99C6C 800A946C 0D000434 */   ori       $a0, $zero, 0xD
    /* 99C70 800A9470 FFFF1024 */  addiu      $s0, $zero, -0x1
    /* 99C74 800A9474 00141100 */  sll        $v0, $s1, 16
  .L800A9478:
    /* 99C78 800A9478 14004014 */  bnez       $v0, .L800A94CC
    /* 99C7C 800A947C 00000000 */   nop
  .L800A9480:
    /* 99C80 800A9480 0E80053C */  lui        $a1, %hi(D_800E6AE0)
    /* 99C84 800A9484 E06AA524 */  addiu      $a1, $a1, %lo(D_800E6AE0)
    /* 99C88 800A9488 5CDC020C */  jal        func_800B7170
    /* 99C8C 800A948C 06000434 */   ori       $a0, $zero, 0x6
    /* 99C90 800A9490 2F004014 */  bnez       $v0, .L800A9550
    /* 99C94 800A9494 21100002 */   addu      $v0, $s0, $zero
    /* 99C98 800A9498 0E80023C */  lui        $v0, %hi(D_800E6BAA)
    /* 99C9C 800A949C AA6B4294 */  lhu        $v0, %lo(D_800E6BAA)($v0)
    /* 99CA0 800A94A0 00000000 */  nop
    /* 99CA4 800A94A4 01004224 */  addiu      $v0, $v0, 0x1
    /* 99CA8 800A94A8 0E80013C */  lui        $at, %hi(D_800E6BAA)
    /* 99CAC 800A94AC AA6B22A4 */  sh         $v0, %lo(D_800E6BAA)($at)
    /* 99CB0 800A94B0 00140200 */  sll        $v0, $v0, 16
    /* 99CB4 800A94B4 03140200 */  sra        $v0, $v0, 16
    /* 99CB8 800A94B8 01014228 */  slti       $v0, $v0, 0x101
    /* 99CBC 800A94BC F0FF4014 */  bnez       $v0, .L800A9480
    /* 99CC0 800A94C0 00000000 */   nop
    /* 99CC4 800A94C4 51A50208 */  j          .L800A9544
    /* 99CC8 800A94C8 FFFF1024 */   addiu     $s0, $zero, -0x1
  .L800A94CC:
    /* 99CCC 800A94CC 0E80023C */  lui        $v0, %hi(D_800E6AFD)
    /* 99CD0 800A94D0 FD6A4290 */  lbu        $v0, %lo(D_800E6AFD)($v0)
    /* 99CD4 800A94D4 0E80033C */  lui        $v1, %hi(D_800E6AFE)
    /* 99CD8 800A94D8 FE6A6390 */  lbu        $v1, %lo(D_800E6AFE)($v1)
    /* 99CDC 800A94DC 0E80043C */  lui        $a0, %hi(D_800E6AFF)
    /* 99CE0 800A94E0 FF6A8490 */  lbu        $a0, %lo(D_800E6AFF)($a0)
    /* 99CE4 800A94E4 0E80013C */  lui        $at, %hi(D_800E6AE0)
    /* 99CE8 800A94E8 E06A22A0 */  sb         $v0, %lo(D_800E6AE0)($at)
    /* 99CEC 800A94EC 0E80013C */  lui        $at, %hi(D_800E6AE1)
    /* 99CF0 800A94F0 E16A23A0 */  sb         $v1, %lo(D_800E6AE1)($at)
    /* 99CF4 800A94F4 0E80013C */  lui        $at, %hi(D_800E6AE2)
    /* 99CF8 800A94F8 E26A24A0 */  sb         $a0, %lo(D_800E6AE2)($at)
  .L800A94FC:
    /* 99CFC 800A94FC 0E80053C */  lui        $a1, %hi(D_800E6AE0)
    /* 99D00 800A9500 E06AA524 */  addiu      $a1, $a1, %lo(D_800E6AE0)
    /* 99D04 800A9504 5CDC020C */  jal        func_800B7170
    /* 99D08 800A9508 06000434 */   ori       $a0, $zero, 0x6
    /* 99D0C 800A950C 10004014 */  bnez       $v0, .L800A9550
    /* 99D10 800A9510 21100002 */   addu      $v0, $s0, $zero
    /* 99D14 800A9514 0E80023C */  lui        $v0, %hi(D_800E6BAA)
    /* 99D18 800A9518 AA6B4294 */  lhu        $v0, %lo(D_800E6BAA)($v0)
    /* 99D1C 800A951C 00000000 */  nop
    /* 99D20 800A9520 01004224 */  addiu      $v0, $v0, 0x1
    /* 99D24 800A9524 0E80013C */  lui        $at, %hi(D_800E6BAA)
    /* 99D28 800A9528 AA6B22A4 */  sh         $v0, %lo(D_800E6BAA)($at)
    /* 99D2C 800A952C 00140200 */  sll        $v0, $v0, 16
    /* 99D30 800A9530 03140200 */  sra        $v0, $v0, 16
    /* 99D34 800A9534 01014228 */  slti       $v0, $v0, 0x101
    /* 99D38 800A9538 F0FF4014 */  bnez       $v0, .L800A94FC
    /* 99D3C 800A953C 00000000 */   nop
    /* 99D40 800A9540 FFFF1024 */  addiu      $s0, $zero, -0x1
  .L800A9544:
    /* 99D44 800A9544 0E80013C */  lui        $at, %hi(D_800E6B4C)
    /* 99D48 800A9548 4C6B20A0 */  sb         $zero, %lo(D_800E6B4C)($at)
    /* 99D4C 800A954C 21100002 */  addu       $v0, $s0, $zero
  .L800A9550:
    /* 99D50 800A9550 2800BF8F */  lw         $ra, 0x28($sp)
    /* 99D54 800A9554 2400B18F */  lw         $s1, 0x24($sp)
    /* 99D58 800A9558 2000B08F */  lw         $s0, 0x20($sp)
    /* 99D5C 800A955C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 99D60 800A9560 0800E003 */  jr         $ra
    /* 99D64 800A9564 00000000 */   nop
endlabel func_800A9394
