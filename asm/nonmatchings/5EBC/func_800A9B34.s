nonmatching func_800A9B34, 0xC80

glabel func_800A9B34
    /* 9A334 800A9B34 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9A338 800A9B38 0E80033C */  lui        $v1, %hi(D_800E6BD8)
    /* 9A33C 800A9B3C D86B6390 */  lbu        $v1, %lo(D_800E6BD8)($v1)
    /* 9A340 800A9B40 01000234 */  ori        $v0, $zero, 0x1
    /* 9A344 800A9B44 03006214 */  bne        $v1, $v0, .L800A9B54
    /* 9A348 800A9B48 2000BFAF */   sw        $ra, 0x20($sp)
    /* 9A34C 800A9B4C E9A90208 */  j          .L800AA7A4
    /* 9A350 800A9B50 21100000 */   addu      $v0, $zero, $zero
  .L800A9B54:
    /* 9A354 800A9B54 4001828F */  lw         $v0, %gp_rel(D_800E6BCC)($gp)
    /* 9A358 800A9B58 00000000 */  nop
    /* 9A35C 800A9B5C D007422C */  sltiu      $v0, $v0, 0x7D0
    /* 9A360 800A9B60 09004010 */  beqz       $v0, .L800A9B88
    /* 9A364 800A9B64 00000000 */   nop
    /* 9A368 800A9B68 0E80023C */  lui        $v0, %hi(D_800E6B74)
    /* 9A36C 800A9B6C 746B4284 */  lh         $v0, %lo(D_800E6B74)($v0)
    /* 9A370 800A9B70 00000000 */  nop
    /* 9A374 800A9B74 04004014 */  bnez       $v0, .L800A9B88
    /* 9A378 800A9B78 00000000 */   nop
    /* 9A37C 800A9B7C F80080A7 */  sh         $zero, %gp_rel(D_800E6B84)($gp)
    /* 9A380 800A9B80 E9A90208 */  j          .L800AA7A4
    /* 9A384 800A9B84 21100000 */   addu      $v0, $zero, $zero
  .L800A9B88:
    /* 9A388 800A9B88 1180033C */  lui        $v1, %hi(D_8010A5D7)
    /* 9A38C 800A9B8C D7A56390 */  lbu        $v1, %lo(D_8010A5D7)($v1)
    /* 9A390 800A9B90 01000234 */  ori        $v0, $zero, 0x1
    /* 9A394 800A9B94 07006214 */  bne        $v1, $v0, .L800A9BB4
    /* 9A398 800A9B98 1E80043C */   lui       $a0, (0x801E3000 >> 16)
    /* 9A39C 800A9B9C EC00828F */  lw         $v0, %gp_rel(D_800E6B78)($gp)
    /* 9A3A0 800A9BA0 1180033C */  lui        $v1, %hi(D_8010CDDC)
    /* 9A3A4 800A9BA4 DCCD638C */  lw         $v1, %lo(D_8010CDDC)($v1)
    /* 9A3A8 800A9BA8 00000000 */  nop
    /* 9A3AC 800A9BAC 21104300 */  addu       $v0, $v0, $v1
    /* 9A3B0 800A9BB0 EC0082AF */  sw         $v0, %gp_rel(D_800E6B78)($gp)
  .L800A9BB4:
    /* 9A3B4 800A9BB4 00308434 */  ori        $a0, $a0, (0x801E3000 & 0xFFFF)
    /* 9A3B8 800A9BB8 1E80023C */  lui        $v0, (0x801E1800 >> 16)
    /* 9A3BC 800A9BBC F8008397 */  lhu        $v1, %gp_rel(D_800E6B84)($gp)
    /* 9A3C0 800A9BC0 00184234 */  ori        $v0, $v0, (0x801E1800 & 0xFFFF)
    /* 9A3C4 800A9BC4 4C0084AF */  sw         $a0, %gp_rel(D_800E6AD8)($gp)
    /* 9A3C8 800A9BC8 0E80013C */  lui        $at, %hi(D_800E6B5C)
    /* 9A3CC 800A9BCC 5C6B22AC */  sw         $v0, %lo(D_800E6B5C)($at)
    /* 9A3D0 800A9BD0 90FF6324 */  addiu      $v1, $v1, -0x70
    /* 9A3D4 800A9BD4 1800622C */  sltiu      $v0, $v1, 0x18
    /* 9A3D8 800A9BD8 F2024010 */  beqz       $v0, .L800AA7A4
    /* 9A3DC 800A9BDC 00000000 */   nop
    /* 9A3E0 800A9BE0 80100300 */  sll        $v0, $v1, 2
    /* 9A3E4 800A9BE4 0180013C */  lui        $at, %hi(jtbl_80014AB8)
    /* 9A3E8 800A9BE8 B84A2124 */  addiu      $at, $at, %lo(jtbl_80014AB8)
    /* 9A3EC 800A9BEC 21082200 */  addu       $at, $at, $v0
    /* 9A3F0 800A9BF0 0000228C */  lw         $v0, 0x0($at)
    /* 9A3F4 800A9BF4 00000000 */  nop
    /* 9A3F8 800A9BF8 08004000 */  jr         $v0
    /* 9A3FC 800A9BFC 00000000 */   nop
  jlabel .L800A9C00
    /* 9A400 800A9C00 0E80023C */  lui        $v0, %hi(D_800E6AE4)
    /* 9A404 800A9C04 E46A428C */  lw         $v0, %lo(D_800E6AE4)($v0)
    /* 9A408 800A9C08 4001848F */  lw         $a0, %gp_rel(D_800E6BCC)($gp)
    /* 9A40C 800A9C0C 70000334 */  ori        $v1, $zero, 0x70
    /* 9A410 800A9C10 F80083A7 */  sh         $v1, %gp_rel(D_800E6B84)($gp)
    /* 9A414 800A9C14 21104400 */  addu       $v0, $v0, $a0
    /* 9A418 800A9C18 0E80013C */  lui        $at, %hi(D_800E6AE4)
    /* 9A41C 800A9C1C E46A22AC */  sw         $v0, %lo(D_800E6AE4)($at)
    /* 9A420 800A9C20 B90B822C */  sltiu      $v0, $a0, 0xBB9
    /* 9A424 800A9C24 0C004014 */  bnez       $v0, .L800A9C58
    /* 9A428 800A9C28 D107822C */   sltiu     $v0, $a0, 0x7D1
    /* 9A42C 800A9C2C BA0B822C */  sltiu      $v0, $a0, 0xBBA
    /* 9A430 800A9C30 32004010 */  beqz       $v0, .L800A9CFC
    /* 9A434 800A9C34 00000000 */   nop
    /* 9A438 800A9C38 0D80023C */  lui        $v0, %hi(D_800CE268)
    /* 9A43C 800A9C3C 68E24294 */  lhu        $v0, %lo(D_800CE268)($v0)
    /* 9A440 800A9C40 0D80033C */  lui        $v1, %hi(D_800CE26A)
    /* 9A444 800A9C44 6AE26390 */  lbu        $v1, %lo(D_800CE26A)($v1)
    /* 9A448 800A9C48 400082AF */  sw         $v0, %gp_rel(D_800E6ACC)($gp)
    /* 9A44C 800A9C4C 780083AF */  sw         $v1, %gp_rel(D_800E6B04)($gp)
    /* 9A450 800A9C50 3FA70208 */  j          .L800A9CFC
    /* 9A454 800A9C54 00000000 */   nop
  .L800A9C58:
    /* 9A458 800A9C58 10004014 */  bnez       $v0, .L800A9C9C
    /* 9A45C 800A9C5C 0005822C */   sltiu     $v0, $a0, 0x500
    /* 9A460 800A9C60 30F88224 */  addiu      $v0, $a0, -0x7D0
    /* 9A464 800A9C64 80100200 */  sll        $v0, $v0, 2
    /* 9A468 800A9C68 0D80013C */  lui        $at, %hi(D_800CE26C)
    /* 9A46C 800A9C6C 6CE22124 */  addiu      $at, $at, %lo(D_800CE26C)
    /* 9A470 800A9C70 21082200 */  addu       $at, $at, $v0
    /* 9A474 800A9C74 00002394 */  lhu        $v1, 0x0($at)
    /* 9A478 800A9C78 00000000 */  nop
    /* 9A47C 800A9C7C 204E6324 */  addiu      $v1, $v1, 0x4E20
    /* 9A480 800A9C80 400083AF */  sw         $v1, %gp_rel(D_800E6ACC)($gp)
    /* 9A484 800A9C84 0D80013C */  lui        $at, %hi(D_800CE26C + 0x2)
    /* 9A488 800A9C88 6EE22124 */  addiu      $at, $at, %lo(D_800CE26C + 0x2)
    /* 9A48C 800A9C8C 21082200 */  addu       $at, $at, $v0
    /* 9A490 800A9C90 00002290 */  lbu        $v0, 0x0($at)
    /* 9A494 800A9C94 3EA70208 */  j          .L800A9CF8
    /* 9A498 800A9C98 00000000 */   nop
  .L800A9C9C:
    /* 9A49C 800A9C9C 0C004014 */  bnez       $v0, .L800A9CD0
    /* 9A4A0 800A9CA0 80100400 */   sll       $v0, $a0, 2
    /* 9A4A4 800A9CA4 0E80023C */  lui        $v0, %hi(D_800E6B5C)
    /* 9A4A8 800A9CA8 5C6B428C */  lw         $v0, %lo(D_800E6B5C)($v0)
    /* 9A4AC 800A9CAC 80200400 */  sll        $a0, $a0, 2
    /* 9A4B0 800A9CB0 21208200 */  addu       $a0, $a0, $v0
    /* 9A4B4 800A9CB4 00008294 */  lhu        $v0, 0x0($a0)
    /* 9A4B8 800A9CB8 38C70334 */  ori        $v1, $zero, 0xC738
    /* 9A4BC 800A9CBC 21104300 */  addu       $v0, $v0, $v1
    /* 9A4C0 800A9CC0 400082AF */  sw         $v0, %gp_rel(D_800E6ACC)($gp)
    /* 9A4C4 800A9CC4 02008290 */  lbu        $v0, 0x2($a0)
    /* 9A4C8 800A9CC8 3EA70208 */  j          .L800A9CF8
    /* 9A4CC 800A9CCC 00000000 */   nop
  .L800A9CD0:
    /* 9A4D0 800A9CD0 0E80033C */  lui        $v1, %hi(D_800E6B5C)
    /* 9A4D4 800A9CD4 5C6B638C */  lw         $v1, %lo(D_800E6B5C)($v1)
    /* 9A4D8 800A9CD8 00000000 */  nop
    /* 9A4DC 800A9CDC 21104300 */  addu       $v0, $v0, $v1
    /* 9A4E0 800A9CE0 00004394 */  lhu        $v1, 0x0($v0)
    /* 9A4E4 800A9CE4 00000000 */  nop
    /* 9A4E8 800A9CE8 400083AF */  sw         $v1, %gp_rel(D_800E6ACC)($gp)
    /* 9A4EC 800A9CEC 02004290 */  lbu        $v0, 0x2($v0)
    /* 9A4F0 800A9CF0 204E6324 */  addiu      $v1, $v1, 0x4E20
    /* 9A4F4 800A9CF4 400083AF */  sw         $v1, %gp_rel(D_800E6ACC)($gp)
  .L800A9CF8:
    /* 9A4F8 800A9CF8 780082AF */  sw         $v0, %gp_rel(D_800E6B04)($gp)
  .L800A9CFC:
    /* 9A4FC 800A9CFC 7800828F */  lw         $v0, %gp_rel(D_800E6B04)($gp)
    /* 9A500 800A9D00 00000000 */  nop
    /* 9A504 800A9D04 02004228 */  slti       $v0, $v0, 0x2
    /* 9A508 800A9D08 A5024014 */  bnez       $v0, .L800AA7A0
    /* 9A50C 800A9D0C 00000000 */   nop
    /* 9A510 800A9D10 0E80053C */  lui        $a1, %hi(D_800E6AF0)
    /* 9A514 800A9D14 F06AA524 */  addiu      $a1, $a1, %lo(D_800E6AF0)
    /* 9A518 800A9D18 F3DB020C */  jal        func_800B6FCC
    /* 9A51C 800A9D1C 01000434 */   ori       $a0, $zero, 0x1
    /* 9A520 800A9D20 02000334 */  ori        $v1, $zero, 0x2
    /* 9A524 800A9D24 11004314 */  bne        $v0, $v1, .L800A9D6C
    /* 9A528 800A9D28 00000000 */   nop
    /* 9A52C 800A9D2C 0E80023C */  lui        $v0, %hi(D_800E6AF0)
    /* 9A530 800A9D30 F06A4290 */  lbu        $v0, %lo(D_800E6AF0)($v0)
    /* 9A534 800A9D34 00000000 */  nop
    /* 9A538 800A9D38 10004230 */  andi       $v0, $v0, 0x10
    /* 9A53C 800A9D3C 58014014 */  bnez       $v0, .L800AA2A0
    /* 9A540 800A9D40 7F000234 */   ori       $v0, $zero, 0x7F
    /* 9A544 800A9D44 4000848F */  lw         $a0, %gp_rel(D_800E6ACC)($gp)
    /* 9A548 800A9D48 1000A527 */  addiu      $a1, $sp, 0x10
  .L800A9D4C:
    /* 9A54C 800A9D4C 25DD020C */  jal        func_800B7494
    /* 9A550 800A9D50 00000000 */   nop
    /* 9A554 800A9D54 02000434 */  ori        $a0, $zero, 0x2
    /* 9A558 800A9D58 1000A527 */  addiu      $a1, $sp, 0x10
    /* 9A55C 800A9D5C 0DDC020C */  jal        func_800B7034
    /* 9A560 800A9D60 21300000 */   addu      $a2, $zero, $zero
    /* 9A564 800A9D64 82A90208 */  j          .L800AA608
    /* 9A568 800A9D68 00000000 */   nop
  .L800A9D6C:
    /* 9A56C 800A9D6C C8008297 */  lhu        $v0, %gp_rel(D_800E6B54)($gp)
    /* 9A570 800A9D70 00000000 */  nop
    /* 9A574 800A9D74 01004224 */  addiu      $v0, $v0, 0x1
    /* 9A578 800A9D78 C80082A7 */  sh         $v0, %gp_rel(D_800E6B54)($gp)
    /* 9A57C 800A9D7C 00140200 */  sll        $v0, $v0, 16
    /* 9A580 800A9D80 03140200 */  sra        $v0, $v0, 16
    /* 9A584 800A9D84 15004228 */  slti       $v0, $v0, 0x15
    /* 9A588 800A9D88 86024014 */  bnez       $v0, .L800AA7A4
    /* 9A58C 800A9D8C 00000000 */   nop
    /* 9A590 800A9D90 A8A80208 */  j          .L800AA2A0
    /* 9A594 800A9D94 7F000234 */   ori       $v0, $zero, 0x7F
  jlabel .L800A9D98
    /* 9A598 800A9D98 0E80053C */  lui        $a1, %hi(D_800E6AF0)
    /* 9A59C 800A9D9C F06AA524 */  addiu      $a1, $a1, %lo(D_800E6AF0)
    /* 9A5A0 800A9DA0 F3DB020C */  jal        func_800B6FCC
    /* 9A5A4 800A9DA4 01000434 */   ori       $a0, $zero, 0x1
    /* 9A5A8 800A9DA8 02000334 */  ori        $v1, $zero, 0x2
    /* 9A5AC 800A9DAC 7D024314 */  bne        $v0, $v1, .L800AA7A4
    /* 9A5B0 800A9DB0 00000000 */   nop
    /* 9A5B4 800A9DB4 0E80023C */  lui        $v0, %hi(D_800E6AF0)
    /* 9A5B8 800A9DB8 F06A4290 */  lbu        $v0, %lo(D_800E6AF0)($v0)
    /* 9A5BC 800A9DBC 00000000 */  nop
    /* 9A5C0 800A9DC0 10004230 */  andi       $v0, $v0, 0x10
    /* 9A5C4 800A9DC4 36014014 */  bnez       $v0, .L800AA2A0
    /* 9A5C8 800A9DC8 7F000234 */   ori       $v0, $zero, 0x7F
    /* 9A5CC 800A9DCC 7800828F */  lw         $v0, %gp_rel(D_800E6B04)($gp)
    /* 9A5D0 800A9DD0 00000000 */  nop
    /* 9A5D4 800A9DD4 21004228 */  slti       $v0, $v0, 0x21
    /* 9A5D8 800A9DD8 08004014 */  bnez       $v0, .L800A9DFC
    /* 9A5DC 800A9DDC 20000434 */   ori       $a0, $zero, 0x20
  .L800A9DE0:
    /* 9A5E0 800A9DE0 4C00858F */  lw         $a1, %gp_rel(D_800E6AD8)($gp)
    /* 9A5E4 800A9DE4 D2E4020C */  jal        func_800B9348
    /* 9A5E8 800A9DE8 80000634 */   ori       $a2, $zero, 0x80
    /* 9A5EC 800A9DEC FCFF4010 */  beqz       $v0, .L800A9DE0
    /* 9A5F0 800A9DF0 20000434 */   ori       $a0, $zero, 0x20
    /* 9A5F4 800A9DF4 85A70208 */  j          .L800A9E14
    /* 9A5F8 800A9DF8 00000000 */   nop
  .L800A9DFC:
    /* 9A5FC 800A9DFC 7800848F */  lw         $a0, %gp_rel(D_800E6B04)($gp)
    /* 9A600 800A9E00 4C00858F */  lw         $a1, %gp_rel(D_800E6AD8)($gp)
    /* 9A604 800A9E04 D2E4020C */  jal        func_800B9348
    /* 9A608 800A9E08 80000634 */   ori       $a2, $zero, 0x80
    /* 9A60C 800A9E0C FBFF4010 */  beqz       $v0, .L800A9DFC
    /* 9A610 800A9E10 00000000 */   nop
  .L800A9E14:
    /* 9A614 800A9E14 4001838F */  lw         $v1, %gp_rel(D_800E6BCC)($gp)
    /* 9A618 800A9E18 00000000 */  nop
    /* 9A61C 800A9E1C D107622C */  sltiu      $v0, $v1, 0x7D1
    /* 9A620 800A9E20 03014014 */  bnez       $v0, .L800AA230
    /* 9A624 800A9E24 30F86224 */   addiu     $v0, $v1, -0x7D0
    /* 9A628 800A9E28 80100200 */  sll        $v0, $v0, 2
    /* 9A62C 800A9E2C 0D80013C */  lui        $at, %hi(D_800CE26C + 0x2)
    /* 9A630 800A9E30 6EE22124 */  addiu      $at, $at, %lo(D_800CE26C + 0x2)
    /* 9A634 800A9E34 21082200 */  addu       $at, $at, $v0
    /* 9A638 800A9E38 00002290 */  lbu        $v0, 0x0($at)
    /* 9A63C 800A9E3C 91A80208 */  j          .L800AA244
    /* 9A640 800A9E40 00000000 */   nop
  jlabel .L800A9E44
    /* 9A644 800A9E44 4001828F */  lw         $v0, %gp_rel(D_800E6BCC)($gp)
    /* 9A648 800A9E48 00000000 */  nop
    /* 9A64C 800A9E4C 2EF84224 */  addiu      $v0, $v0, -0x7D2
    /* 9A650 800A9E50 E603422C */  sltiu      $v0, $v0, 0x3E6
    /* 9A654 800A9E54 03004010 */  beqz       $v0, .L800A9E64
    /* 9A658 800A9E58 00000000 */   nop
    /* 9A65C 800A9E5C 84AA020C */  jal        func_800AAA10
    /* 9A660 800A9E60 00000000 */   nop
  .L800A9E64:
    /* 9A664 800A9E64 0E80053C */  lui        $a1, %hi(D_800E6AF0)
    /* 9A668 800A9E68 F06AA524 */  addiu      $a1, $a1, %lo(D_800E6AF0)
    /* 9A66C 800A9E6C F3DB020C */  jal        func_800B6FCC
    /* 9A670 800A9E70 01000434 */   ori       $a0, $zero, 0x1
    /* 9A674 800A9E74 02000334 */  ori        $v1, $zero, 0x2
    /* 9A678 800A9E78 07004314 */  bne        $v0, $v1, .L800A9E98
    /* 9A67C 800A9E7C 00000000 */   nop
    /* 9A680 800A9E80 0E80023C */  lui        $v0, %hi(D_800E6AF0)
    /* 9A684 800A9E84 F06A4290 */  lbu        $v0, %lo(D_800E6AF0)($v0)
    /* 9A688 800A9E88 00000000 */  nop
    /* 9A68C 800A9E8C 10004230 */  andi       $v0, $v0, 0x10
    /* 9A690 800A9E90 03014014 */  bnez       $v0, .L800AA2A0
    /* 9A694 800A9E94 7F000234 */   ori       $v0, $zero, 0x7F
  .L800A9E98:
    /* 9A698 800A9E98 0E80053C */  lui        $a1, %hi(D_800E6AF0)
    /* 9A69C 800A9E9C F06AA524 */  addiu      $a1, $a1, %lo(D_800E6AF0)
    /* 9A6A0 800A9EA0 12E5020C */  jal        func_800B9448
    /* 9A6A4 800A9EA4 01000434 */   ori       $a0, $zero, 0x1
    /* 9A6A8 800A9EA8 21184000 */  addu       $v1, $v0, $zero
    /* 9A6AC 800A9EAC 440183A7 */  sh         $v1, %gp_rel(D_800E6BD0)($gp)
    /* 9A6B0 800A9EB0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 9A6B4 800A9EB4 15006214 */  bne        $v1, $v0, .L800A9F0C
    /* 9A6B8 800A9EB8 00000000 */   nop
    /* 9A6BC 800A9EBC 4001828F */  lw         $v0, %gp_rel(D_800E6BCC)($gp)
    /* 9A6C0 800A9EC0 00000000 */  nop
    /* 9A6C4 800A9EC4 D107422C */  sltiu      $v0, $v0, 0x7D1
    /* 9A6C8 800A9EC8 0F004014 */  bnez       $v0, .L800A9F08
    /* 9A6CC 800A9ECC 7F000234 */   ori       $v0, $zero, 0x7F
    /* 9A6D0 800A9ED0 10008297 */  lhu        $v0, %gp_rel(D_800E6A9C)($gp)
    /* 9A6D4 800A9ED4 00000000 */  nop
    /* 9A6D8 800A9ED8 01004224 */  addiu      $v0, $v0, 0x1
    /* 9A6DC 800A9EDC 100082A7 */  sh         $v0, %gp_rel(D_800E6A9C)($gp)
    /* 9A6E0 800A9EE0 00140200 */  sll        $v0, $v0, 16
    /* 9A6E4 800A9EE4 03140200 */  sra        $v0, $v0, 16
    /* 9A6E8 800A9EE8 04004228 */  slti       $v0, $v0, 0x4
    /* 9A6EC 800A9EEC 06004014 */  bnez       $v0, .L800A9F08
    /* 9A6F0 800A9EF0 70000234 */   ori       $v0, $zero, 0x70
    /* 9A6F4 800A9EF4 7F000234 */  ori        $v0, $zero, 0x7F
    /* 9A6F8 800A9EF8 F80082A7 */  sh         $v0, %gp_rel(D_800E6B84)($gp)
    /* 9A6FC 800A9EFC 100080A7 */  sh         $zero, %gp_rel(D_800E6A9C)($gp)
    /* 9A700 800A9F00 C3A70208 */  j          .L800A9F0C
    /* 9A704 800A9F04 00000000 */   nop
  .L800A9F08:
    /* 9A708 800A9F08 F80082A7 */  sh         $v0, %gp_rel(D_800E6B84)($gp)
  .L800A9F0C:
    /* 9A70C 800A9F0C 25026014 */  bnez       $v1, .L800AA7A4
    /* 9A710 800A9F10 00000000 */   nop
    /* 9A714 800A9F14 4001838F */  lw         $v1, %gp_rel(D_800E6BCC)($gp)
    /* 9A718 800A9F18 100080A7 */  sh         $zero, %gp_rel(D_800E6A9C)($gp)
    /* 9A71C 800A9F1C B90B622C */  sltiu      $v0, $v1, 0xBB9
    /* 9A720 800A9F20 06014010 */  beqz       $v0, .L800AA33C
    /* 9A724 800A9F24 D107622C */   sltiu     $v0, $v1, 0x7D1
    /* 9A728 800A9F28 B7014014 */  bnez       $v0, .L800AA608
    /* 9A72C 800A9F2C 80000234 */   ori       $v0, $zero, 0x80
    /* 9A730 800A9F30 F80082A7 */  sh         $v0, %gp_rel(D_800E6B84)($gp)
    /* 9A734 800A9F34 E9A90208 */  j          .L800AA7A4
    /* 9A738 800A9F38 00000000 */   nop
  jlabel .L800A9F3C
    /* 9A73C 800A9F3C 1180033C */  lui        $v1, %hi(D_8010A5D7)
    /* 9A740 800A9F40 D7A56390 */  lbu        $v1, %lo(D_8010A5D7)($v1)
    /* 9A744 800A9F44 01000234 */  ori        $v0, $zero, 0x1
    /* 9A748 800A9F48 16026210 */  beq        $v1, $v0, .L800AA7A4
    /* 9A74C 800A9F4C 00000000 */   nop
    /* 9A750 800A9F50 12AB020C */  jal        func_800AAC48
    /* 9A754 800A9F54 00000000 */   nop
    /* 9A758 800A9F58 82A90208 */  j          .L800AA608
    /* 9A75C 800A9F5C 00000000 */   nop
  jlabel .L800A9F60
    /* 9A760 800A9F60 1180033C */  lui        $v1, %hi(D_8010A5D7)
    /* 9A764 800A9F64 D7A56390 */  lbu        $v1, %lo(D_8010A5D7)($v1)
    /* 9A768 800A9F68 01000234 */  ori        $v0, $zero, 0x1
    /* 9A76C 800A9F6C 0D026210 */  beq        $v1, $v0, .L800AA7A4
    /* 9A770 800A9F70 0200043C */   lui       $a0, (0x21010 >> 16)
    /* 9A774 800A9F74 6E0F030C */  jal        func_800C3DB8
    /* 9A778 800A9F78 10108434 */   ori       $a0, $a0, (0x21010 & 0xFFFF)
    /* 9A77C 800A9F7C 21300000 */  addu       $a2, $zero, $zero
  .L800A9F80:
    /* 9A780 800A9F80 4C00828F */  lw         $v0, %gp_rel(D_800E6AD8)($gp)
    /* 9A784 800A9F84 00000000 */  nop
    /* 9A788 800A9F88 21104600 */  addu       $v0, $v0, $a2
    /* 9A78C 800A9F8C 0100C624 */  addiu      $a2, $a2, 0x1
    /* 9A790 800A9F90 000040A0 */  sb         $zero, 0x0($v0)
    /* 9A794 800A9F94 4000C228 */  slti       $v0, $a2, 0x40
    /* 9A798 800A9F98 F9FF4014 */  bnez       $v0, .L800A9F80
    /* 9A79C 800A9F9C 00000000 */   nop
    /* 9A7A0 800A9FA0 4C00848F */  lw         $a0, %gp_rel(D_800E6AD8)($gp)
    /* 9A7A4 800A9FA4 560F030C */  jal        func_800C3D58
    /* 9A7A8 800A9FA8 0100053C */   lui       $a1, (0x10000 >> 16)
    /* 9A7AC 800A9FAC 82A90208 */  j          .L800AA608
    /* 9A7B0 800A9FB0 00000000 */   nop
  jlabel .L800A9FB4
    /* 9A7B4 800A9FB4 B60F030C */  jal        func_800C3ED8
    /* 9A7B8 800A9FB8 21200000 */   addu      $a0, $zero, $zero
    /* 9A7BC 800A9FBC 21204000 */  addu       $a0, $v0, $zero
    /* 9A7C0 800A9FC0 01000234 */  ori        $v0, $zero, 0x1
    /* 9A7C4 800A9FC4 F7018214 */  bne        $a0, $v0, .L800AA7A4
    /* 9A7C8 800A9FC8 00000000 */   nop
    /* 9A7CC 800A9FCC 1180023C */  lui        $v0, %hi(D_8010A5D7)
    /* 9A7D0 800A9FD0 D7A54290 */  lbu        $v0, %lo(D_8010A5D7)($v0)
    /* 9A7D4 800A9FD4 00000000 */  nop
    /* 9A7D8 800A9FD8 1D004410 */  beq        $v0, $a0, .L800AA050
    /* 9A7DC 800A9FDC 00000000 */   nop
    /* 9A7E0 800A9FE0 4001828F */  lw         $v0, %gp_rel(D_800E6BCC)($gp)
    /* 9A7E4 800A9FE4 0E80033C */  lui        $v1, %hi(D_800E6B5C)
    /* 9A7E8 800A9FE8 5C6B638C */  lw         $v1, %lo(D_800E6B5C)($v1)
    /* 9A7EC 800A9FEC 80100200 */  sll        $v0, $v0, 2
    /* 9A7F0 800A9FF0 21104300 */  addu       $v0, $v0, $v1
    /* 9A7F4 800A9FF4 03004290 */  lbu        $v0, 0x3($v0)
    /* 9A7F8 800A9FF8 00000000 */  nop
    /* 9A7FC 800A9FFC 05004414 */  bne        $v0, $a0, .L800AA014
    /* 9A800 800AA000 8000033C */   lui       $v1, (0x800000 >> 16)
    /* 9A804 800AA004 0000828F */  lw         $v0, %gp_rel(D_800E6A8C)($gp)
    /* 9A808 800AA008 4000033C */  lui        $v1, (0x400000 >> 16)
    /* 9A80C 800AA00C 08A80208 */  j          .L800AA020
    /* 9A810 800AA010 24104300 */   and       $v0, $v0, $v1
  .L800AA014:
    /* 9A814 800AA014 0000828F */  lw         $v0, %gp_rel(D_800E6A8C)($gp)
    /* 9A818 800AA018 00000000 */  nop
    /* 9A81C 800AA01C 25104300 */  or         $v0, $v0, $v1
  .L800AA020:
    /* 9A820 800AA020 000082AF */  sw         $v0, %gp_rel(D_800E6A8C)($gp)
    /* 9A824 800AA024 09AB020C */  jal        func_800AAC24
    /* 9A828 800AA028 00000000 */   nop
    /* 9A82C 800AA02C 7800828F */  lw         $v0, %gp_rel(D_800E6B04)($gp)
    /* 9A830 800AA030 EC0080AF */  sw         $zero, %gp_rel(D_800E6B78)($gp)
    /* 9A834 800AA034 21004228 */  slti       $v0, $v0, 0x21
    /* 9A838 800AA038 04004014 */  bnez       $v0, .L800AA04C
    /* 9A83C 800AA03C 82000234 */   ori       $v0, $zero, 0x82
    /* 9A840 800AA040 F80082A7 */  sh         $v0, %gp_rel(D_800E6B84)($gp)
    /* 9A844 800AA044 E9A90208 */  j          .L800AA7A4
    /* 9A848 800AA048 00000000 */   nop
  .L800AA04C:
    /* 9A84C 800AA04C F80080A7 */  sh         $zero, %gp_rel(D_800E6B84)($gp)
  .L800AA050:
    /* 9A850 800AA050 7800828F */  lw         $v0, %gp_rel(D_800E6B04)($gp)
    /* 9A854 800AA054 00000000 */  nop
    /* 9A858 800AA058 10004228 */  slti       $v0, $v0, 0x10
    /* 9A85C 800AA05C D1014014 */  bnez       $v0, .L800AA7A4
    /* 9A860 800AA060 00000000 */   nop
    /* 9A864 800AA064 04008297 */  lhu        $v0, %gp_rel(D_800E6A90)($gp)
    /* 9A868 800AA068 00000000 */  nop
    /* 9A86C 800AA06C CD014010 */  beqz       $v0, .L800AA7A4
    /* 9A870 800AA070 00000000 */   nop
    /* 9A874 800AA074 400182AF */  sw         $v0, %gp_rel(D_800E6BCC)($gp)
    /* 9A878 800AA078 70000234 */  ori        $v0, $zero, 0x70
    /* 9A87C 800AA07C F80082A7 */  sh         $v0, %gp_rel(D_800E6B84)($gp)
    /* 9A880 800AA080 C80080A7 */  sh         $zero, %gp_rel(D_800E6B54)($gp)
    /* 9A884 800AA084 040080A7 */  sh         $zero, %gp_rel(D_800E6A90)($gp)
    /* 9A888 800AA088 E9A90208 */  j          .L800AA7A4
    /* 9A88C 800AA08C 00000000 */   nop
  jlabel .L800AA090
    /* 9A890 800AA090 46018297 */  lhu        $v0, %gp_rel(D_800E6BD2)($gp)
    /* 9A894 800AA094 00000000 */  nop
    /* 9A898 800AA098 9E0082A7 */  sh         $v0, %gp_rel(D_800E6B2A)($gp)
    /* 9A89C 800AA09C 24AB020C */  jal        func_800AAC90
    /* 9A8A0 800AA0A0 00000000 */   nop
    /* 9A8A4 800AA0A4 82A90208 */  j          .L800AA608
    /* 9A8A8 800AA0A8 00000000 */   nop
  jlabel .L800AA0AC
    /* 9A8AC 800AA0AC 4C00828F */  lw         $v0, %gp_rel(D_800E6AD8)($gp)
    /* 9A8B0 800AA0B0 00000000 */  nop
    /* 9A8B4 800AA0B4 41004390 */  lbu        $v1, 0x41($v0)
    /* 9A8B8 800AA0B8 41084490 */  lbu        $a0, 0x841($v0)
    /* 9A8BC 800AA0BC 41104290 */  lbu        $v0, 0x1041($v0)
    /* 9A8C0 800AA0C0 06006338 */  xori       $v1, $v1, 0x6
    /* 9A8C4 800AA0C4 2B180300 */  sltu       $v1, $zero, $v1
    /* 9A8C8 800AA0C8 02008438 */  xori       $a0, $a0, 0x2
    /* 9A8CC 800AA0CC 2B200400 */  sltu       $a0, $zero, $a0
    /* 9A8D0 800AA0D0 25186400 */  or         $v1, $v1, $a0
    /* 9A8D4 800AA0D4 02004238 */  xori       $v0, $v0, 0x2
    /* 9A8D8 800AA0D8 2B100200 */  sltu       $v0, $zero, $v0
    /* 9A8DC 800AA0DC 25186200 */  or         $v1, $v1, $v0
    /* 9A8E0 800AA0E0 AF016014 */  bnez       $v1, .L800AA7A0
    /* 9A8E4 800AA0E4 00000000 */   nop
    /* 9A8E8 800AA0E8 6E0F030C */  jal        func_800C3DB8
    /* 9A8EC 800AA0EC 10100434 */   ori       $a0, $zero, 0x1010
    /* 9A8F0 800AA0F0 21300000 */  addu       $a2, $zero, $zero
  .L800AA0F4:
    /* 9A8F4 800AA0F4 4C00828F */  lw         $v0, %gp_rel(D_800E6AD8)($gp)
    /* 9A8F8 800AA0F8 00000000 */  nop
    /* 9A8FC 800AA0FC 21104600 */  addu       $v0, $v0, $a2
    /* 9A900 800AA100 0100C624 */  addiu      $a2, $a2, 0x1
    /* 9A904 800AA104 000040A0 */  sb         $zero, 0x0($v0)
    /* 9A908 800AA108 4000C228 */  slti       $v0, $a2, 0x40
    /* 9A90C 800AA10C F9FF4014 */  bnez       $v0, .L800AA0F4
    /* 9A910 800AA110 00000000 */   nop
    /* 9A914 800AA114 4C00848F */  lw         $a0, %gp_rel(D_800E6AD8)($gp)
    /* 9A918 800AA118 560F030C */  jal        func_800C3D58
    /* 9A91C 800AA11C 0100053C */   lui       $a1, (0x10000 >> 16)
    /* 9A920 800AA120 7800828F */  lw         $v0, %gp_rel(D_800E6B04)($gp)
    /* 9A924 800AA124 00000000 */  nop
    /* 9A928 800AA128 21004228 */  slti       $v0, $v0, 0x21
    /* 9A92C 800AA12C 36014010 */  beqz       $v0, .L800AA608
    /* 9A930 800AA130 86000234 */   ori       $v0, $zero, 0x86
    /* 9A934 800AA134 F80082A7 */  sh         $v0, %gp_rel(D_800E6B84)($gp)
    /* 9A938 800AA138 E9A90208 */  j          .L800AA7A4
    /* 9A93C 800AA13C 00000000 */   nop
  jlabel .L800AA140
    /* 9A940 800AA140 0E80053C */  lui        $a1, %hi(D_800E6AF0)
    /* 9A944 800AA144 F06AA524 */  addiu      $a1, $a1, %lo(D_800E6AF0)
    /* 9A948 800AA148 F3DB020C */  jal        func_800B6FCC
    /* 9A94C 800AA14C 01000434 */   ori       $a0, $zero, 0x1
    /* 9A950 800AA150 02000334 */  ori        $v1, $zero, 0x2
    /* 9A954 800AA154 0B004314 */  bne        $v0, $v1, .L800AA184
    /* 9A958 800AA158 00000000 */   nop
    /* 9A95C 800AA15C 0E80023C */  lui        $v0, %hi(D_800E6AF0)
    /* 9A960 800AA160 F06A4290 */  lbu        $v0, %lo(D_800E6AF0)($v0)
    /* 9A964 800AA164 00000000 */  nop
    /* 9A968 800AA168 10004230 */  andi       $v0, $v0, 0x10
    /* 9A96C 800AA16C 4C004014 */  bnez       $v0, .L800AA2A0
    /* 9A970 800AA170 7F000234 */   ori       $v0, $zero, 0x7F
    /* 9A974 800AA174 4000848F */  lw         $a0, %gp_rel(D_800E6ACC)($gp)
    /* 9A978 800AA178 1000A527 */  addiu      $a1, $sp, 0x10
    /* 9A97C 800AA17C 53A70208 */  j          .L800A9D4C
    /* 9A980 800AA180 20008424 */   addiu     $a0, $a0, 0x20
  .L800AA184:
    /* 9A984 800AA184 C8008297 */  lhu        $v0, %gp_rel(D_800E6B54)($gp)
    /* 9A988 800AA188 00000000 */  nop
    /* 9A98C 800AA18C 01004224 */  addiu      $v0, $v0, 0x1
    /* 9A990 800AA190 C80082A7 */  sh         $v0, %gp_rel(D_800E6B54)($gp)
    /* 9A994 800AA194 00140200 */  sll        $v0, $v0, 16
    /* 9A998 800AA198 03140200 */  sra        $v0, $v0, 16
    /* 9A99C 800AA19C 15004228 */  slti       $v0, $v0, 0x15
    /* 9A9A0 800AA1A0 80014014 */  bnez       $v0, .L800AA7A4
    /* 9A9A4 800AA1A4 00000000 */   nop
    /* 9A9A8 800AA1A8 A8A80208 */  j          .L800AA2A0
    /* 9A9AC 800AA1AC 7F000234 */   ori       $v0, $zero, 0x7F
  jlabel .L800AA1B0
    /* 9A9B0 800AA1B0 0E80053C */  lui        $a1, %hi(D_800E6AF0)
    /* 9A9B4 800AA1B4 F06AA524 */  addiu      $a1, $a1, %lo(D_800E6AF0)
    /* 9A9B8 800AA1B8 F3DB020C */  jal        func_800B6FCC
    /* 9A9BC 800AA1BC 01000434 */   ori       $a0, $zero, 0x1
    /* 9A9C0 800AA1C0 02000334 */  ori        $v1, $zero, 0x2
    /* 9A9C4 800AA1C4 77014314 */  bne        $v0, $v1, .L800AA7A4
    /* 9A9C8 800AA1C8 00000000 */   nop
    /* 9A9CC 800AA1CC 0E80023C */  lui        $v0, %hi(D_800E6AF0)
    /* 9A9D0 800AA1D0 F06A4290 */  lbu        $v0, %lo(D_800E6AF0)($v0)
    /* 9A9D4 800AA1D4 00000000 */  nop
    /* 9A9D8 800AA1D8 10004230 */  andi       $v0, $v0, 0x10
    /* 9A9DC 800AA1DC 30004014 */  bnez       $v0, .L800AA2A0
    /* 9A9E0 800AA1E0 7F000234 */   ori       $v0, $zero, 0x7F
    /* 9A9E4 800AA1E4 80000634 */  ori        $a2, $zero, 0x80
  .L800AA1E8:
    /* 9A9E8 800AA1E8 7800848F */  lw         $a0, %gp_rel(D_800E6B04)($gp)
    /* 9A9EC 800AA1EC 4C00858F */  lw         $a1, %gp_rel(D_800E6AD8)($gp)
    /* 9A9F0 800AA1F0 D2E4020C */  jal        func_800B9348
    /* 9A9F4 800AA1F4 E0FF8424 */   addiu     $a0, $a0, -0x20
    /* 9A9F8 800AA1F8 FBFF4010 */  beqz       $v0, .L800AA1E8
    /* 9A9FC 800AA1FC 80000634 */   ori       $a2, $zero, 0x80
    /* 9AA00 800AA200 4001838F */  lw         $v1, %gp_rel(D_800E6BCC)($gp)
    /* 9AA04 800AA204 00000000 */  nop
    /* 9AA08 800AA208 D107622C */  sltiu      $v0, $v1, 0x7D1
    /* 9AA0C 800AA20C 08004014 */  bnez       $v0, .L800AA230
    /* 9AA10 800AA210 30F86224 */   addiu     $v0, $v1, -0x7D0
    /* 9AA14 800AA214 80100200 */  sll        $v0, $v0, 2
    /* 9AA18 800AA218 0D80013C */  lui        $at, %hi(D_800CE26C + 0x2)
    /* 9AA1C 800AA21C 6EE22124 */  addiu      $at, $at, %lo(D_800CE26C + 0x2)
    /* 9AA20 800AA220 21082200 */  addu       $at, $at, $v0
    /* 9AA24 800AA224 00002290 */  lbu        $v0, 0x0($at)
    /* 9AA28 800AA228 91A80208 */  j          .L800AA244
    /* 9AA2C 800AA22C 00000000 */   nop
  .L800AA230:
    /* 9AA30 800AA230 0E80023C */  lui        $v0, %hi(D_800E6B5C)
    /* 9AA34 800AA234 5C6B428C */  lw         $v0, %lo(D_800E6B5C)($v0)
    /* 9AA38 800AA238 80180300 */  sll        $v1, $v1, 2
    /* 9AA3C 800AA23C 21186200 */  addu       $v1, $v1, $v0
    /* 9AA40 800AA240 02006290 */  lbu        $v0, 0x2($v1)
  .L800AA244:
    /* 9AA44 800AA244 00000000 */  nop
    /* 9AA48 800AA248 440182A7 */  sh         $v0, %gp_rel(D_800E6BD0)($gp)
    /* 9AA4C 800AA24C F8008297 */  lhu        $v0, %gp_rel(D_800E6B84)($gp)
    /* 9AA50 800AA250 00000000 */  nop
    /* 9AA54 800AA254 01004224 */  addiu      $v0, $v0, 0x1
    /* 9AA58 800AA258 F80082A7 */  sh         $v0, %gp_rel(D_800E6B84)($gp)
    /* 9AA5C 800AA25C F8008297 */  lhu        $v0, %gp_rel(D_800E6B84)($gp)
    /* 9AA60 800AA260 080180AF */  sw         $zero, %gp_rel(D_800E6B94)($gp)
    /* 9AA64 800AA264 E9A90208 */  j          .L800AA7A4
    /* 9AA68 800AA268 00000000 */   nop
  jlabel .L800AA26C
    /* 9AA6C 800AA26C 0E80053C */  lui        $a1, %hi(D_800E6AF0)
    /* 9AA70 800AA270 F06AA524 */  addiu      $a1, $a1, %lo(D_800E6AF0)
    /* 9AA74 800AA274 F3DB020C */  jal        func_800B6FCC
    /* 9AA78 800AA278 01000434 */   ori       $a0, $zero, 0x1
    /* 9AA7C 800AA27C 02000334 */  ori        $v1, $zero, 0x2
    /* 9AA80 800AA280 0A004314 */  bne        $v0, $v1, .L800AA2AC
    /* 9AA84 800AA284 00000000 */   nop
    /* 9AA88 800AA288 0E80023C */  lui        $v0, %hi(D_800E6AF0)
    /* 9AA8C 800AA28C F06A4290 */  lbu        $v0, %lo(D_800E6AF0)($v0)
    /* 9AA90 800AA290 00000000 */  nop
    /* 9AA94 800AA294 10004230 */  andi       $v0, $v0, 0x10
    /* 9AA98 800AA298 04004010 */  beqz       $v0, .L800AA2AC
    /* 9AA9C 800AA29C 7F000234 */   ori       $v0, $zero, 0x7F
  .L800AA2A0:
    /* 9AAA0 800AA2A0 F80082A7 */  sh         $v0, %gp_rel(D_800E6B84)($gp)
    /* 9AAA4 800AA2A4 E9A90208 */  j          .L800AA7A4
    /* 9AAA8 800AA2A8 00000000 */   nop
  .L800AA2AC:
    /* 9AAAC 800AA2AC 0E80053C */  lui        $a1, %hi(D_800E6AF0)
    /* 9AAB0 800AA2B0 F06AA524 */  addiu      $a1, $a1, %lo(D_800E6AF0)
    /* 9AAB4 800AA2B4 12E5020C */  jal        func_800B9448
    /* 9AAB8 800AA2B8 01000434 */   ori       $a0, $zero, 0x1
    /* 9AABC 800AA2BC 21184000 */  addu       $v1, $v0, $zero
    /* 9AAC0 800AA2C0 440183A7 */  sh         $v1, %gp_rel(D_800E6BD0)($gp)
    /* 9AAC4 800AA2C4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 9AAC8 800AA2C8 15006214 */  bne        $v1, $v0, .L800AA320
    /* 9AACC 800AA2CC 00000000 */   nop
    /* 9AAD0 800AA2D0 4001828F */  lw         $v0, %gp_rel(D_800E6BCC)($gp)
    /* 9AAD4 800AA2D4 00000000 */  nop
    /* 9AAD8 800AA2D8 D107422C */  sltiu      $v0, $v0, 0x7D1
    /* 9AADC 800AA2DC 0F004014 */  bnez       $v0, .L800AA31C
    /* 9AAE0 800AA2E0 7F000234 */   ori       $v0, $zero, 0x7F
    /* 9AAE4 800AA2E4 10008297 */  lhu        $v0, %gp_rel(D_800E6A9C)($gp)
    /* 9AAE8 800AA2E8 00000000 */  nop
    /* 9AAEC 800AA2EC 01004224 */  addiu      $v0, $v0, 0x1
    /* 9AAF0 800AA2F0 100082A7 */  sh         $v0, %gp_rel(D_800E6A9C)($gp)
    /* 9AAF4 800AA2F4 00140200 */  sll        $v0, $v0, 16
    /* 9AAF8 800AA2F8 03140200 */  sra        $v0, $v0, 16
    /* 9AAFC 800AA2FC 04004228 */  slti       $v0, $v0, 0x4
    /* 9AB00 800AA300 06004014 */  bnez       $v0, .L800AA31C
    /* 9AB04 800AA304 70000234 */   ori       $v0, $zero, 0x70
    /* 9AB08 800AA308 7F000234 */  ori        $v0, $zero, 0x7F
    /* 9AB0C 800AA30C F80082A7 */  sh         $v0, %gp_rel(D_800E6B84)($gp)
    /* 9AB10 800AA310 100080A7 */  sh         $zero, %gp_rel(D_800E6A9C)($gp)
    /* 9AB14 800AA314 C8A80208 */  j          .L800AA320
    /* 9AB18 800AA318 00000000 */   nop
  .L800AA31C:
    /* 9AB1C 800AA31C F80082A7 */  sh         $v0, %gp_rel(D_800E6B84)($gp)
  .L800AA320:
    /* 9AB20 800AA320 20016014 */  bnez       $v1, .L800AA7A4
    /* 9AB24 800AA324 00000000 */   nop
    /* 9AB28 800AA328 4001828F */  lw         $v0, %gp_rel(D_800E6BCC)($gp)
    /* 9AB2C 800AA32C 100080A7 */  sh         $zero, %gp_rel(D_800E6A9C)($gp)
    /* 9AB30 800AA330 B90B422C */  sltiu      $v0, $v0, 0xBB9
    /* 9AB34 800AA334 B4004014 */  bnez       $v0, .L800AA608
    /* 9AB38 800AA338 00000000 */   nop
  .L800AA33C:
    /* 9AB3C 800AA33C 7A000234 */  ori        $v0, $zero, 0x7A
    /* 9AB40 800AA340 F80082A7 */  sh         $v0, %gp_rel(D_800E6B84)($gp)
    /* 9AB44 800AA344 E9A90208 */  j          .L800AA7A4
    /* 9AB48 800AA348 00000000 */   nop
  jlabel .L800AA34C
    /* 9AB4C 800AA34C 4001828F */  lw         $v0, %gp_rel(D_800E6BCC)($gp)
    /* 9AB50 800AA350 00000000 */  nop
    /* 9AB54 800AA354 D107422C */  sltiu      $v0, $v0, 0x7D1
    /* 9AB58 800AA358 0E004014 */  bnez       $v0, .L800AA394
    /* 9AB5C 800AA35C 0300043C */   lui       $a0, (0x31010 >> 16)
    /* 9AB60 800AA360 0100043C */  lui        $a0, (0x11010 >> 16)
    /* 9AB64 800AA364 F8008297 */  lhu        $v0, %gp_rel(D_800E6B84)($gp)
    /* 9AB68 800AA368 10108434 */  ori        $a0, $a0, (0x11010 & 0xFFFF)
    /* 9AB6C 800AA36C 01004224 */  addiu      $v0, $v0, 0x1
    /* 9AB70 800AA370 F80082A7 */  sh         $v0, %gp_rel(D_800E6B84)($gp)
    /* 9AB74 800AA374 F8008297 */  lhu        $v0, %gp_rel(D_800E6B84)($gp)
    /* 9AB78 800AA378 6E0F030C */  jal        func_800C3DB8
    /* 9AB7C 800AA37C 00000000 */   nop
    /* 9AB80 800AA380 4C00848F */  lw         $a0, %gp_rel(D_800E6AD8)($gp)
    /* 9AB84 800AA384 560F030C */  jal        func_800C3D58
    /* 9AB88 800AA388 0100053C */   lui       $a1, (0x10000 >> 16)
    /* 9AB8C 800AA38C E9A90208 */  j          .L800AA7A4
    /* 9AB90 800AA390 00000000 */   nop
  .L800AA394:
    /* 9AB94 800AA394 6E0F030C */  jal        func_800C3DB8
    /* 9AB98 800AA398 10108434 */   ori       $a0, $a0, (0x31010 & 0xFFFF)
    /* 9AB9C 800AA39C 4C00848F */  lw         $a0, %gp_rel(D_800E6AD8)($gp)
    /* 9ABA0 800AA3A0 560F030C */  jal        func_800C3D58
    /* 9ABA4 800AA3A4 0100053C */   lui       $a1, (0x10000 >> 16)
    /* 9ABA8 800AA3A8 E8A90208 */  j          .L800AA7A0
    /* 9ABAC 800AA3AC 00000000 */   nop
  jlabel .L800AA3B0
    /* 9ABB0 800AA3B0 B60F030C */  jal        func_800C3ED8
    /* 9ABB4 800AA3B4 21200000 */   addu      $a0, $zero, $zero
    /* 9ABB8 800AA3B8 01000334 */  ori        $v1, $zero, 0x1
    /* 9ABBC 800AA3BC F9004314 */  bne        $v0, $v1, .L800AA7A4
    /* 9ABC0 800AA3C0 13000334 */   ori       $v1, $zero, 0x13
    /* 9ABC4 800AA3C4 4001828F */  lw         $v0, %gp_rel(D_800E6BCC)($gp)
    /* 9ABC8 800AA3C8 0F80013C */  lui        $at, %hi(D_800F0F2C)
    /* 9ABCC 800AA3CC 2C0F23AC */  sw         $v1, %lo(D_800F0F2C)($at)
    /* 9ABD0 800AA3D0 30F84224 */  addiu      $v0, $v0, -0x7D0
    /* 9ABD4 800AA3D4 80100200 */  sll        $v0, $v0, 2
    /* 9ABD8 800AA3D8 0D80013C */  lui        $at, %hi(D_800CE26C + 0x3)
    /* 9ABDC 800AA3DC 6FE22124 */  addiu      $at, $at, %lo(D_800CE26C + 0x3)
    /* 9ABE0 800AA3E0 21082200 */  addu       $at, $at, $v0
    /* 9ABE4 800AA3E4 00002390 */  lbu        $v1, 0x0($at)
    /* 9ABE8 800AA3E8 00000000 */  nop
    /* 9ABEC 800AA3EC 0800622C */  sltiu      $v0, $v1, 0x8
    /* 9ABF0 800AA3F0 72004010 */  beqz       $v0, .L800AA5BC
    /* 9ABF4 800AA3F4 80100300 */   sll       $v0, $v1, 2
    /* 9ABF8 800AA3F8 0180013C */  lui        $at, %hi(jtbl_80014B18)
    /* 9ABFC 800AA3FC 184B2124 */  addiu      $at, $at, %lo(jtbl_80014B18)
    /* 9AC00 800AA400 21082200 */  addu       $at, $at, $v0
    /* 9AC04 800AA404 0000228C */  lw         $v0, 0x0($at)
    /* 9AC08 800AA408 00000000 */  nop
    /* 9AC0C 800AA40C 08004000 */  jr         $v0
    /* 9AC10 800AA410 00000000 */   nop
  jlabel .L800AA414
    /* 9AC14 800AA414 0F80053C */  lui        $a1, %hi(D_800F0F3C)
    /* 9AC18 800AA418 3C0FA524 */  addiu      $a1, $a1, %lo(D_800F0F3C)
    /* 9AC1C 800AA41C ECFFA424 */  addiu      $a0, $a1, -0x14
    /* 9AC20 800AA420 0E80033C */  lui        $v1, %hi(D_800E6B6C)
    /* 9AC24 800AA424 6C6B6394 */  lhu        $v1, %lo(D_800E6B6C)($v1)
    /* 9AC28 800AA428 61A90208 */  j          .L800AA584
    /* 9AC2C 800AA42C 9C0B0234 */   ori       $v0, $zero, 0xB9C
  jlabel .L800AA430
    /* 9AC30 800AA430 0F80043C */  lui        $a0, %hi(D_800F0F3C)
    /* 9AC34 800AA434 3C0F8424 */  addiu      $a0, $a0, %lo(D_800F0F3C)
    /* 9AC38 800AA438 CE050234 */  ori        $v0, $zero, 0x5CE
    /* 9AC3C 800AA43C 000082A4 */  sh         $v0, 0x0($a0)
    /* 9AC40 800AA440 14008387 */  lh         $v1, %gp_rel(D_800E6AA0)($gp)
    /* 9AC44 800AA444 0D80023C */  lui        $v0, %hi(D_800CE758)
    /* 9AC48 800AA448 58E74224 */  addiu      $v0, $v0, %lo(D_800CE758)
    /* 9AC4C 800AA44C 40180300 */  sll        $v1, $v1, 1
    /* 9AC50 800AA450 21186200 */  addu       $v1, $v1, $v0
    /* 9AC54 800AA454 00006294 */  lhu        $v0, 0x0($v1)
    /* 9AC58 800AA458 00000000 */  nop
    /* 9AC5C 800AA45C C0110200 */  sll        $v0, $v0, 7
    /* 9AC60 800AA460 0F80013C */  lui        $at, %hi(D_800F0F30)
    /* 9AC64 800AA464 300F22A4 */  sh         $v0, %lo(D_800F0F30)($at)
    /* 9AC68 800AA468 00006294 */  lhu        $v0, 0x0($v1)
    /* 9AC6C 800AA46C ECFF8424 */  addiu      $a0, $a0, -0x14
    /* 9AC70 800AA470 55A90208 */  j          .L800AA554
    /* 9AC74 800AA474 C0110200 */   sll       $v0, $v0, 7
  jlabel .L800AA478
    /* 9AC78 800AA478 0F80043C */  lui        $a0, %hi(D_800F0F3C)
    /* 9AC7C 800AA47C 3C0F8424 */  addiu      $a0, $a0, %lo(D_800F0F3C)
    /* 9AC80 800AA480 CE050234 */  ori        $v0, $zero, 0x5CE
    /* 9AC84 800AA484 000082A4 */  sh         $v0, 0x0($a0)
    /* 9AC88 800AA488 14008387 */  lh         $v1, %gp_rel(D_800E6AA0)($gp)
    /* 9AC8C 800AA48C 0D80023C */  lui        $v0, %hi(D_800CE778)
    /* 9AC90 800AA490 78E74224 */  addiu      $v0, $v0, %lo(D_800CE778)
    /* 9AC94 800AA494 40180300 */  sll        $v1, $v1, 1
    /* 9AC98 800AA498 21186200 */  addu       $v1, $v1, $v0
    /* 9AC9C 800AA49C 00006294 */  lhu        $v0, 0x0($v1)
    /* 9ACA0 800AA4A0 00000000 */  nop
    /* 9ACA4 800AA4A4 C0110200 */  sll        $v0, $v0, 7
    /* 9ACA8 800AA4A8 0F80013C */  lui        $at, %hi(D_800F0F30)
    /* 9ACAC 800AA4AC 300F22A4 */  sh         $v0, %lo(D_800F0F30)($at)
    /* 9ACB0 800AA4B0 00006294 */  lhu        $v0, 0x0($v1)
    /* 9ACB4 800AA4B4 ECFF8424 */  addiu      $a0, $a0, -0x14
    /* 9ACB8 800AA4B8 55A90208 */  j          .L800AA554
    /* 9ACBC 800AA4BC C0110200 */   sll       $v0, $v0, 7
  jlabel .L800AA4C0
    /* 9ACC0 800AA4C0 0F80043C */  lui        $a0, %hi(D_800F0F3C)
    /* 9ACC4 800AA4C4 3C0F8424 */  addiu      $a0, $a0, %lo(D_800F0F3C)
    /* 9ACC8 800AA4C8 CE050234 */  ori        $v0, $zero, 0x5CE
    /* 9ACCC 800AA4CC 000082A4 */  sh         $v0, 0x0($a0)
    /* 9ACD0 800AA4D0 14008387 */  lh         $v1, %gp_rel(D_800E6AA0)($gp)
    /* 9ACD4 800AA4D4 0D80023C */  lui        $v0, %hi(D_800CE798)
    /* 9ACD8 800AA4D8 98E74224 */  addiu      $v0, $v0, %lo(D_800CE798)
    /* 9ACDC 800AA4DC 40180300 */  sll        $v1, $v1, 1
    /* 9ACE0 800AA4E0 21186200 */  addu       $v1, $v1, $v0
    /* 9ACE4 800AA4E4 00006294 */  lhu        $v0, 0x0($v1)
    /* 9ACE8 800AA4E8 00000000 */  nop
    /* 9ACEC 800AA4EC C0110200 */  sll        $v0, $v0, 7
    /* 9ACF0 800AA4F0 0F80013C */  lui        $at, %hi(D_800F0F30)
    /* 9ACF4 800AA4F4 300F22A4 */  sh         $v0, %lo(D_800F0F30)($at)
    /* 9ACF8 800AA4F8 00006294 */  lhu        $v0, 0x0($v1)
    /* 9ACFC 800AA4FC ECFF8424 */  addiu      $a0, $a0, -0x14
    /* 9AD00 800AA500 55A90208 */  j          .L800AA554
    /* 9AD04 800AA504 C0110200 */   sll       $v0, $v0, 7
  jlabel .L800AA508
    /* 9AD08 800AA508 0F80053C */  lui        $a1, %hi(D_800F0F3C)
    /* 9AD0C 800AA50C 3C0FA524 */  addiu      $a1, $a1, %lo(D_800F0F3C)
    /* 9AD10 800AA510 ECFFA424 */  addiu      $a0, $a1, -0x14
    /* 9AD14 800AA514 0E80033C */  lui        $v1, %hi(D_800E6B6C)
    /* 9AD18 800AA518 6C6B6394 */  lhu        $v1, %lo(D_800E6B6C)($v1)
    /* 9AD1C 800AA51C 4FA90208 */  j          .L800AA53C
    /* 9AD20 800AA520 00040234 */   ori       $v0, $zero, 0x400
  jlabel .L800AA524
    /* 9AD24 800AA524 0F80053C */  lui        $a1, %hi(D_800F0F3C)
    /* 9AD28 800AA528 3C0FA524 */  addiu      $a1, $a1, %lo(D_800F0F3C)
    /* 9AD2C 800AA52C ECFFA424 */  addiu      $a0, $a1, -0x14
    /* 9AD30 800AA530 0E80033C */  lui        $v1, %hi(D_800E6B6C)
    /* 9AD34 800AA534 6C6B6394 */  lhu        $v1, %lo(D_800E6B6C)($v1)
    /* 9AD38 800AA538 00080234 */  ori        $v0, $zero, 0x800
  .L800AA53C:
    /* 9AD3C 800AA53C 0000A2A4 */  sh         $v0, 0x0($a1)
    /* 9AD40 800AA540 80110300 */  sll        $v0, $v1, 6
    /* 9AD44 800AA544 40190300 */  sll        $v1, $v1, 5
    /* 9AD48 800AA548 21104300 */  addu       $v0, $v0, $v1
    /* 9AD4C 800AA54C 0F80013C */  lui        $at, %hi(D_800F0F30)
    /* 9AD50 800AA550 300F22A4 */  sh         $v0, %lo(D_800F0F30)($at)
  .L800AA554:
    /* 9AD54 800AA554 0F80013C */  lui        $at, %hi(D_800F0F32)
    /* 9AD58 800AA558 320F22A4 */  sh         $v0, %lo(D_800F0F32)($at)
    /* 9AD5C 800AA55C 2A11030C */  jal        func_800C44A8
    /* 9AD60 800AA560 00000000 */   nop
    /* 9AD64 800AA564 6FA90208 */  j          .L800AA5BC
    /* 9AD68 800AA568 00000000 */   nop
  jlabel .L800AA56C
    /* 9AD6C 800AA56C 0F80053C */  lui        $a1, %hi(D_800F0F3C)
    /* 9AD70 800AA570 3C0FA524 */  addiu      $a1, $a1, %lo(D_800F0F3C)
    /* 9AD74 800AA574 ECFFA424 */  addiu      $a0, $a1, -0x14
    /* 9AD78 800AA578 0E80033C */  lui        $v1, %hi(D_800E6B6C)
    /* 9AD7C 800AA57C 6C6B6394 */  lhu        $v1, %lo(D_800E6B6C)($v1)
    /* 9AD80 800AA580 200A0234 */  ori        $v0, $zero, 0xA20
  .L800AA584:
    /* 9AD84 800AA584 0000A2A4 */  sh         $v0, 0x0($a1)
    /* 9AD88 800AA588 80110300 */  sll        $v0, $v1, 6
    /* 9AD8C 800AA58C 40190300 */  sll        $v1, $v1, 5
    /* 9AD90 800AA590 21104300 */  addu       $v0, $v0, $v1
    /* 9AD94 800AA594 0F80013C */  lui        $at, %hi(D_800F0F30)
    /* 9AD98 800AA598 300F22A4 */  sh         $v0, %lo(D_800F0F30)($at)
    /* 9AD9C 800AA59C 0F80013C */  lui        $at, %hi(D_800F0F32)
    /* 9ADA0 800AA5A0 320F22A4 */  sh         $v0, %lo(D_800F0F32)($at)
    /* 9ADA4 800AA5A4 2A11030C */  jal        func_800C44A8
    /* 9ADA8 800AA5A8 00000000 */   nop
    /* 9ADAC 800AA5AC 88AD020C */  jal        func_800AB620
    /* 9ADB0 800AA5B0 20050434 */   ori       $a0, $zero, 0x520
    /* 9ADB4 800AA5B4 88AD020C */  jal        func_800AB620
    /* 9ADB8 800AA5B8 13050434 */   ori       $a0, $zero, 0x513
  jlabel .L800AA5BC
    /* 9ADBC 800AA5BC 4001828F */  lw         $v0, %gp_rel(D_800E6BCC)($gp)
    /* 9ADC0 800AA5C0 00000000 */  nop
    /* 9ADC4 800AA5C4 30F84224 */  addiu      $v0, $v0, -0x7D0
    /* 9ADC8 800AA5C8 80100200 */  sll        $v0, $v0, 2
    /* 9ADCC 800AA5CC 0D80013C */  lui        $at, %hi(D_800CE26C + 0x3)
    /* 9ADD0 800AA5D0 6FE22124 */  addiu      $at, $at, %lo(D_800CE26C + 0x3)
    /* 9ADD4 800AA5D4 21082200 */  addu       $at, $at, $v0
    /* 9ADD8 800AA5D8 00002290 */  lbu        $v0, 0x0($at)
    /* 9ADDC 800AA5DC 00000000 */  nop
    /* 9ADE0 800AA5E0 05004014 */  bnez       $v0, .L800AA5F8
    /* 9ADE4 800AA5E4 4000033C */   lui       $v1, (0x400000 >> 16)
    /* 9ADE8 800AA5E8 0000828F */  lw         $v0, %gp_rel(D_800E6A8C)($gp)
    /* 9ADEC 800AA5EC 8000033C */  lui        $v1, (0x800000 >> 16)
    /* 9ADF0 800AA5F0 81A90208 */  j          .L800AA604
    /* 9ADF4 800AA5F4 24104300 */   and       $v0, $v0, $v1
  .L800AA5F8:
    /* 9ADF8 800AA5F8 0000828F */  lw         $v0, %gp_rel(D_800E6A8C)($gp)
    /* 9ADFC 800AA5FC 00000000 */  nop
    /* 9AE00 800AA600 25104300 */  or         $v0, $v0, $v1
  .L800AA604:
    /* 9AE04 800AA604 000082AF */  sw         $v0, %gp_rel(D_800E6A8C)($gp)
  .L800AA608:
    /* 9AE08 800AA608 F8008297 */  lhu        $v0, %gp_rel(D_800E6B84)($gp)
    /* 9AE0C 800AA60C 00000000 */  nop
    /* 9AE10 800AA610 01004224 */  addiu      $v0, $v0, 0x1
    /* 9AE14 800AA614 F80082A7 */  sh         $v0, %gp_rel(D_800E6B84)($gp)
    /* 9AE18 800AA618 F8008297 */  lhu        $v0, %gp_rel(D_800E6B84)($gp)
    /* 9AE1C 800AA61C E9A90208 */  j          .L800AA7A4
    /* 9AE20 800AA620 00000000 */   nop
  jlabel .L800AA624
    /* 9AE24 800AA624 4001828F */  lw         $v0, %gp_rel(D_800E6BCC)($gp)
    /* 9AE28 800AA628 00000000 */  nop
    /* 9AE2C 800AA62C 30F84224 */  addiu      $v0, $v0, -0x7D0
    /* 9AE30 800AA630 80100200 */  sll        $v0, $v0, 2
    /* 9AE34 800AA634 0D80013C */  lui        $at, %hi(D_800CE26C + 0x3)
    /* 9AE38 800AA638 6FE22124 */  addiu      $at, $at, %lo(D_800CE26C + 0x3)
    /* 9AE3C 800AA63C 21082200 */  addu       $at, $at, $v0
    /* 9AE40 800AA640 00002290 */  lbu        $v0, 0x0($at)
    /* 9AE44 800AA644 00000000 */  nop
    /* 9AE48 800AA648 05004014 */  bnez       $v0, .L800AA660
    /* 9AE4C 800AA64C 00000000 */   nop
    /* 9AE50 800AA650 88AD020C */  jal        func_800AB620
    /* 9AE54 800AA654 20050434 */   ori       $a0, $zero, 0x520
    /* 9AE58 800AA658 88AD020C */  jal        func_800AB620
    /* 9AE5C 800AA65C 13050434 */   ori       $a0, $zero, 0x513
  .L800AA660:
    /* 9AE60 800AA660 1BAB020C */  jal        func_800AAC6C
    /* 9AE64 800AA664 00000000 */   nop
    /* 9AE68 800AA668 EC0080AF */  sw         $zero, %gp_rel(D_800E6B78)($gp)
    /* 9AE6C 800AA66C E8A90208 */  j          .L800AA7A0
    /* 9AE70 800AA670 00000000 */   nop
  jlabel .L800AA674
    /* 9AE74 800AA674 1E80043C */  lui        $a0, (0x801E3000 >> 16)
    /* 9AE78 800AA678 00308434 */  ori        $a0, $a0, (0x801E3000 & 0xFFFF)
    /* 9AE7C 800AA67C 1E80023C */  lui        $v0, (0x801E2C00 >> 16)
    /* 9AE80 800AA680 002C4234 */  ori        $v0, $v0, (0x801E2C00 & 0xFFFF)
    /* 9AE84 800AA684 21300000 */  addu       $a2, $zero, $zero
    /* 9AE88 800AA688 38018387 */  lh         $v1, %gp_rel(D_800E6BC4)($gp)
    /* 9AE8C 800AA68C 01000834 */  ori        $t0, $zero, 0x1
    /* 9AE90 800AA690 F00084AF */  sw         $a0, %gp_rel(D_800E6B7C)($gp)
    /* 9AE94 800AA694 B00082AF */  sw         $v0, %gp_rel(D_800E6B3C)($gp)
    /* 9AE98 800AA698 40100300 */  sll        $v0, $v1, 1
    /* 9AE9C 800AA69C 21104300 */  addu       $v0, $v0, $v1
    /* 9AEA0 800AA6A0 80100200 */  sll        $v0, $v0, 2
    /* 9AEA4 800AA6A4 23104300 */  subu       $v0, $v0, $v1
    /* 9AEA8 800AA6A8 80380200 */  sll        $a3, $v0, 2
  .L800AA6AC:
    /* 9AEAC 800AA6AC 80280600 */  sll        $a1, $a2, 2
    /* 9AEB0 800AA6B0 2110E600 */  addu       $v0, $a3, $a2
    /* 9AEB4 800AA6B4 F000838F */  lw         $v1, %gp_rel(D_800E6B7C)($gp)
    /* 9AEB8 800AA6B8 80100200 */  sll        $v0, $v0, 2
    /* 9AEBC 800AA6BC 21104300 */  addu       $v0, $v0, $v1
    /* 9AEC0 800AA6C0 B000838F */  lw         $v1, %gp_rel(D_800E6B3C)($gp)
    /* 9AEC4 800AA6C4 00004494 */  lhu        $a0, 0x0($v0)
    /* 9AEC8 800AA6C8 2118A300 */  addu       $v1, $a1, $v1
    /* 9AECC 800AA6CC 000064A4 */  sh         $a0, 0x0($v1)
    /* 9AED0 800AA6D0 02004290 */  lbu        $v0, 0x2($v0)
    /* 9AED4 800AA6D4 00000000 */  nop
    /* 9AED8 800AA6D8 020062A0 */  sb         $v0, 0x2($v1)
    /* 9AEDC 800AA6DC B000828F */  lw         $v0, %gp_rel(D_800E6B3C)($gp)
    /* 9AEE0 800AA6E0 0100C624 */  addiu      $a2, $a2, 0x1
    /* 9AEE4 800AA6E4 2128A200 */  addu       $a1, $a1, $v0
    /* 9AEE8 800AA6E8 2C00C228 */  slti       $v0, $a2, 0x2C
    /* 9AEEC 800AA6EC EFFF4014 */  bnez       $v0, .L800AA6AC
    /* 9AEF0 800AA6F0 0300A8A0 */   sb        $t0, 0x3($a1)
    /* 9AEF4 800AA6F4 21300000 */  addu       $a2, $zero, $zero
    /* 9AEF8 800AA6F8 3A018387 */  lh         $v1, %gp_rel(D_800E6BC6)($gp)
    /* 9AEFC 800AA6FC 01000834 */  ori        $t0, $zero, 0x1
    /* 9AF00 800AA700 40100300 */  sll        $v0, $v1, 1
    /* 9AF04 800AA704 21104300 */  addu       $v0, $v0, $v1
    /* 9AF08 800AA708 80100200 */  sll        $v0, $v0, 2
    /* 9AF0C 800AA70C 23104300 */  subu       $v0, $v0, $v1
    /* 9AF10 800AA710 80380200 */  sll        $a3, $v0, 2
  .L800AA714:
    /* 9AF14 800AA714 80280600 */  sll        $a1, $a2, 2
    /* 9AF18 800AA718 2110E600 */  addu       $v0, $a3, $a2
    /* 9AF1C 800AA71C F000838F */  lw         $v1, %gp_rel(D_800E6B7C)($gp)
    /* 9AF20 800AA720 80100200 */  sll        $v0, $v0, 2
    /* 9AF24 800AA724 21104300 */  addu       $v0, $v0, $v1
    /* 9AF28 800AA728 B000838F */  lw         $v1, %gp_rel(D_800E6B3C)($gp)
    /* 9AF2C 800AA72C 00004494 */  lhu        $a0, 0x0($v0)
    /* 9AF30 800AA730 2118A300 */  addu       $v1, $a1, $v1
    /* 9AF34 800AA734 B00064A4 */  sh         $a0, 0xB0($v1)
    /* 9AF38 800AA738 02004290 */  lbu        $v0, 0x2($v0)
    /* 9AF3C 800AA73C 00000000 */  nop
    /* 9AF40 800AA740 B20062A0 */  sb         $v0, 0xB2($v1)
    /* 9AF44 800AA744 B000828F */  lw         $v0, %gp_rel(D_800E6B3C)($gp)
    /* 9AF48 800AA748 0100C624 */  addiu      $a2, $a2, 0x1
    /* 9AF4C 800AA74C 2128A200 */  addu       $a1, $a1, $v0
    /* 9AF50 800AA750 2C00C228 */  slti       $v0, $a2, 0x2C
    /* 9AF54 800AA754 EFFF4014 */  bnez       $v0, .L800AA714
    /* 9AF58 800AA758 B300A8A0 */   sb        $t0, 0xB3($a1)
    /* 9AF5C 800AA75C E8A90208 */  j          .L800AA7A0
    /* 9AF60 800AA760 00000000 */   nop
  jlabel .L800AA764
    /* 9AF64 800AA764 0E80023C */  lui        $v0, %hi(D_800E6B0C)
    /* 9AF68 800AA768 0C6B428C */  lw         $v0, %lo(D_800E6B0C)($v0)
    /* 9AF6C 800AA76C 00000000 */  nop
    /* 9AF70 800AA770 0C004014 */  bnez       $v0, .L800AA7A4
    /* 9AF74 800AA774 01000434 */   ori       $a0, $zero, 0x1
    /* 9AF78 800AA778 0E80063C */  lui        $a2, %hi(D_800E6AF0)
    /* 9AF7C 800AA77C F06AC624 */  addiu      $a2, $a2, %lo(D_800E6AF0)
    /* 9AF80 800AA780 0DDC020C */  jal        func_800B7034
    /* 9AF84 800AA784 21280000 */   addu      $a1, $zero, $zero
    /* 9AF88 800AA788 0E80023C */  lui        $v0, %hi(D_800E6AF0)
    /* 9AF8C 800AA78C F06A4290 */  lbu        $v0, %lo(D_800E6AF0)($v0)
    /* 9AF90 800AA790 00000000 */  nop
    /* 9AF94 800AA794 10004230 */  andi       $v0, $v0, 0x10
    /* 9AF98 800AA798 02004014 */  bnez       $v0, .L800AA7A4
    /* 9AF9C 800AA79C 00000000 */   nop
  .L800AA7A0:
    /* 9AFA0 800AA7A0 F80080A7 */  sh         $zero, %gp_rel(D_800E6B84)($gp)
  jlabel .L800AA7A4
    /* 9AFA4 800AA7A4 2000BF8F */  lw         $ra, 0x20($sp)
    /* 9AFA8 800AA7A8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 9AFAC 800AA7AC 0800E003 */  jr         $ra
    /* 9AFB0 800AA7B0 00000000 */   nop
endlabel func_800A9B34
