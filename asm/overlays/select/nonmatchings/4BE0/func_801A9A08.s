nonmatching func_801A9A08, 0x180

glabel func_801A9A08
    /* 20A90 801A9A08 1180073C */  lui        $a3, %hi(D_8010A2E8)
    /* 20A94 801A9A0C E8A2E790 */  lbu        $a3, %lo(D_8010A2E8)($a3)
    /* 20A98 801A9A10 1180063C */  lui        $a2, %hi(D_8010A2E9)
    /* 20A9C 801A9A14 E9A2C690 */  lbu        $a2, %lo(D_8010A2E9)($a2)
    /* 20AA0 801A9A18 FF00E830 */  andi       $t0, $a3, 0xFF
    /* 20AA4 801A9A1C FF00C530 */  andi       $a1, $a2, 0xFF
    /* 20AA8 801A9A20 1180013C */  lui        $at, %hi(D_8010A2C8)
    /* 20AAC 801A9A24 21082800 */  addu       $at, $at, $t0
    /* 20AB0 801A9A28 C8A22390 */  lbu        $v1, %lo(D_8010A2C8)($at)
    /* 20AB4 801A9A2C 1180013C */  lui        $at, %hi(D_8010A2C8)
    /* 20AB8 801A9A30 21082500 */  addu       $at, $at, $a1
    /* 20ABC 801A9A34 C8A22490 */  lbu        $a0, %lo(D_8010A2C8)($at)
    /* 20AC0 801A9A38 C0100300 */  sll        $v0, $v1, 3
    /* 20AC4 801A9A3C 21104300 */  addu       $v0, $v0, $v1
    /* 20AC8 801A9A40 80100200 */  sll        $v0, $v0, 2
    /* 20ACC 801A9A44 1180013C */  lui        $at, %hi(D_8010866C)
    /* 20AD0 801A9A48 21082200 */  addu       $at, $at, $v0
    /* 20AD4 801A9A4C 6C862390 */  lbu        $v1, %lo(D_8010866C)($at)
    /* 20AD8 801A9A50 C0100400 */  sll        $v0, $a0, 3
    /* 20ADC 801A9A54 21104400 */  addu       $v0, $v0, $a0
    /* 20AE0 801A9A58 80100200 */  sll        $v0, $v0, 2
    /* 20AE4 801A9A5C 1180013C */  lui        $at, %hi(D_8010866C)
    /* 20AE8 801A9A60 21082200 */  addu       $at, $at, $v0
    /* 20AEC 801A9A64 6C862290 */  lbu        $v0, %lo(D_8010866C)($at)
    /* 20AF0 801A9A68 C0006330 */  andi       $v1, $v1, 0xC0
    /* 20AF4 801A9A6C 001A0300 */  sll        $v1, $v1, 8
    /* 20AF8 801A9A70 C0004230 */  andi       $v0, $v0, 0xC0
    /* 20AFC 801A9A74 25186200 */  or         $v1, $v1, $v0
    /* 20B00 801A9A78 40000224 */  addiu      $v0, $zero, 0x40
    /* 20B04 801A9A7C 21006210 */  beq        $v1, $v0, .L801A9B04
    /* 20B08 801A9A80 E0FFBD27 */   addiu     $sp, $sp, -0x20
    /* 20B0C 801A9A84 41006228 */  slti       $v0, $v1, 0x41
    /* 20B10 801A9A88 05004010 */  beqz       $v0, .L801A9AA0
    /* 20B14 801A9A8C 00000000 */   nop
    /* 20B18 801A9A90 0A006010 */  beqz       $v1, .L801A9ABC
    /* 20B1C 801A9A94 00000000 */   nop
    /* 20B20 801A9A98 DFA60608 */  j          .L801A9B7C
    /* 20B24 801A9A9C 00000000 */   nop
  .L801A9AA0:
    /* 20B28 801A9AA0 00400224 */  addiu      $v0, $zero, 0x4000
    /* 20B2C 801A9AA4 1B006210 */  beq        $v1, $v0, .L801A9B14
    /* 20B30 801A9AA8 40400224 */   addiu     $v0, $zero, 0x4040
    /* 20B34 801A9AAC 2F006210 */  beq        $v1, $v0, .L801A9B6C
    /* 20B38 801A9AB0 00000000 */   nop
    /* 20B3C 801A9AB4 DFA60608 */  j          .L801A9B7C
    /* 20B40 801A9AB8 00000000 */   nop
  .L801A9ABC:
    /* 20B44 801A9ABC 01000224 */  addiu      $v0, $zero, 0x1
    /* 20B48 801A9AC0 801F013C */  lui        $at, (0x1F8002E2 >> 16)
    /* 20B4C 801A9AC4 E20222A0 */  sb         $v0, (0x1F8002E2 & 0xFFFF)($at)
    /* 20B50 801A9AC8 2B10A800 */  sltu       $v0, $a1, $t0
    /* 20B54 801A9ACC 0F004010 */  beqz       $v0, .L801A9B0C
    /* 20B58 801A9AD0 01000224 */   addiu     $v0, $zero, 0x1
    /* 20B5C 801A9AD4 801F053C */  lui        $a1, (0x1F8002DD >> 16)
    /* 20B60 801A9AD8 DD02A590 */  lbu        $a1, (0x1F8002DD & 0xFFFF)($a1)
    /* 20B64 801A9ADC 801F043C */  lui        $a0, (0x1F8002DE >> 16)
    /* 20B68 801A9AE0 DE028490 */  lbu        $a0, (0x1F8002DE & 0xFFFF)($a0)
    /* 20B6C 801A9AE4 1180033C */  lui        $v1, %hi(D_8010865D)
    /* 20B70 801A9AE8 5D866390 */  lbu        $v1, %lo(D_8010865D)($v1)
    /* 20B74 801A9AEC 1180013C */  lui        $at, %hi(D_8010A2E8)
    /* 20B78 801A9AF0 E8A226A0 */  sb         $a2, %lo(D_8010A2E8)($at)
    /* 20B7C 801A9AF4 1180013C */  lui        $at, %hi(D_8010A2E9)
    /* 20B80 801A9AF8 E9A227A0 */  sb         $a3, %lo(D_8010A2E9)($at)
    /* 20B84 801A9AFC D3A60608 */  j          .L801A9B4C
    /* 20B88 801A9B00 01006338 */   xori      $v1, $v1, 0x1
  .L801A9B04:
    /* 20B8C 801A9B04 801F013C */  lui        $at, (0x1F8002E2 >> 16)
    /* 20B90 801A9B08 E20220A0 */  sb         $zero, (0x1F8002E2 & 0xFFFF)($at)
  .L801A9B0C:
    /* 20B94 801A9B0C DFA60608 */  j          .L801A9B7C
    /* 20B98 801A9B10 21100000 */   addu      $v0, $zero, $zero
  .L801A9B14:
    /* 20B9C 801A9B14 801F053C */  lui        $a1, (0x1F8002DD >> 16)
    /* 20BA0 801A9B18 DD02A590 */  lbu        $a1, (0x1F8002DD & 0xFFFF)($a1)
    /* 20BA4 801A9B1C 801F043C */  lui        $a0, (0x1F8002DE >> 16)
    /* 20BA8 801A9B20 DE028490 */  lbu        $a0, (0x1F8002DE & 0xFFFF)($a0)
    /* 20BAC 801A9B24 1180033C */  lui        $v1, %hi(D_8010865D)
    /* 20BB0 801A9B28 5D866390 */  lbu        $v1, %lo(D_8010865D)($v1)
    /* 20BB4 801A9B2C 01000224 */  addiu      $v0, $zero, 0x1
    /* 20BB8 801A9B30 1180013C */  lui        $at, %hi(D_8010A2E8)
    /* 20BBC 801A9B34 E8A226A0 */  sb         $a2, %lo(D_8010A2E8)($at)
    /* 20BC0 801A9B38 1180013C */  lui        $at, %hi(D_8010A2E9)
    /* 20BC4 801A9B3C E9A227A0 */  sb         $a3, %lo(D_8010A2E9)($at)
    /* 20BC8 801A9B40 801F013C */  lui        $at, (0x1F8002E2 >> 16)
    /* 20BCC 801A9B44 E20220A0 */  sb         $zero, (0x1F8002E2 & 0xFFFF)($at)
    /* 20BD0 801A9B48 01006338 */  xori       $v1, $v1, 0x1
  .L801A9B4C:
    /* 20BD4 801A9B4C 801F013C */  lui        $at, (0x1F8002DD >> 16)
    /* 20BD8 801A9B50 DD0224A0 */  sb         $a0, (0x1F8002DD & 0xFFFF)($at)
    /* 20BDC 801A9B54 801F013C */  lui        $at, (0x1F8002DE >> 16)
    /* 20BE0 801A9B58 DE0225A0 */  sb         $a1, (0x1F8002DE & 0xFFFF)($at)
    /* 20BE4 801A9B5C 1180013C */  lui        $at, %hi(D_8010865D)
    /* 20BE8 801A9B60 5D8623A0 */  sb         $v1, %lo(D_8010865D)($at)
    /* 20BEC 801A9B64 DFA60608 */  j          .L801A9B7C
    /* 20BF0 801A9B68 00000000 */   nop
  .L801A9B6C:
    /* 20BF4 801A9B6C 04000224 */  addiu      $v0, $zero, 0x4
    /* 20BF8 801A9B70 801F013C */  lui        $at, (0x1F8002E2 >> 16)
    /* 20BFC 801A9B74 E20222A0 */  sb         $v0, (0x1F8002E2 & 0xFFFF)($at)
    /* 20C00 801A9B78 21100000 */  addu       $v0, $zero, $zero
  .L801A9B7C:
    /* 20C04 801A9B7C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 20C08 801A9B80 0800E003 */  jr         $ra
    /* 20C0C 801A9B84 00000000 */   nop
endlabel func_801A9A08
