nonmatching func_801C98F8, 0x120

glabel func_801C98F8
    /* 40980 801C98F8 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 40984 801C98FC 1E80023C */  lui        $v0, %hi(D_801DA330)
    /* 40988 801C9900 30A34290 */  lbu        $v0, %lo(D_801DA330)($v0)
    /* 4098C 801C9904 FF008430 */  andi       $a0, $a0, 0xFF
    /* 40990 801C9908 3000BFAF */  sw         $ra, 0x30($sp)
    /* 40994 801C990C 801F013C */  lui        $at, (0x1F8002DE >> 16)
    /* 40998 801C9910 DE0220A0 */  sb         $zero, (0x1F8002DE & 0xFFFF)($at)
    /* 4099C 801C9914 801F013C */  lui        $at, (0x1F8002DD >> 16)
    /* 409A0 801C9918 DD0222A0 */  sb         $v0, (0x1F8002DD & 0xFFFF)($at)
    /* 409A4 801C991C 03008014 */  bnez       $a0, .L801C992C
    /* 409A8 801C9920 00000000 */   nop
    /* 409AC 801C9924 88AD020C */  jal        func_800AB620
    /* 409B0 801C9928 0D050424 */   addiu     $a0, $zero, 0x50D
  .L801C992C:
    /* 409B4 801C992C 7740010C */  jal        func_800501DC
    /* 409B8 801C9930 21200000 */   addu      $a0, $zero, $zero
    /* 409BC 801C9934 3A21070C */  jal        func_801C84E8
    /* 409C0 801C9938 00000000 */   nop
    /* 409C4 801C993C 0E80053C */  lui        $a1, %hi(D_800E78A8)
    /* 409C8 801C9940 A878A524 */  addiu      $a1, $a1, %lo(D_800E78A8)
    /* 409CC 801C9944 1E80023C */  lui        $v0, %hi(D_801DA330)
    /* 409D0 801C9948 30A34290 */  lbu        $v0, %lo(D_801DA330)($v0)
    /* 409D4 801C994C 16000624 */  addiu      $a2, $zero, 0x16
    /* 409D8 801C9950 40200200 */  sll        $a0, $v0, 1
    /* 409DC 801C9954 21208200 */  addu       $a0, $a0, $v0
    /* 409E0 801C9958 80200400 */  sll        $a0, $a0, 2
    /* 409E4 801C995C 23208200 */  subu       $a0, $a0, $v0
    /* 409E8 801C9960 40200400 */  sll        $a0, $a0, 1
    /* 409EC 801C9964 1380023C */  lui        $v0, %hi(D_80134328)
    /* 409F0 801C9968 28434224 */  addiu      $v0, $v0, %lo(D_80134328)
    /* 409F4 801C996C 92B5020C */  jal        func_800AD648
    /* 409F8 801C9970 21208200 */   addu      $a0, $a0, $v0
    /* 409FC 801C9974 0F80053C */  lui        $a1, %hi(D_800F0420)
    /* 40A00 801C9978 2004A524 */  addiu      $a1, $a1, %lo(D_800F0420)
    /* 40A04 801C997C 1E80023C */  lui        $v0, %hi(D_801DA330)
    /* 40A08 801C9980 30A34290 */  lbu        $v0, %lo(D_801DA330)($v0)
    /* 40A0C 801C9984 16000624 */  addiu      $a2, $zero, 0x16
    /* 40A10 801C9988 40200200 */  sll        $a0, $v0, 1
    /* 40A14 801C998C 21208200 */  addu       $a0, $a0, $v0
    /* 40A18 801C9990 80200400 */  sll        $a0, $a0, 2
    /* 40A1C 801C9994 23208200 */  subu       $a0, $a0, $v0
    /* 40A20 801C9998 40200400 */  sll        $a0, $a0, 1
    /* 40A24 801C999C 1380023C */  lui        $v0, %hi(D_801346DC)
    /* 40A28 801C99A0 DC464224 */  addiu      $v0, $v0, %lo(D_801346DC)
    /* 40A2C 801C99A4 92B5020C */  jal        func_800AD648
    /* 40A30 801C99A8 21208200 */   addu      $a0, $a0, $v0
    /* 40A34 801C99AC 1F89000C */  jal        func_8002247C
    /* 40A38 801C99B0 00000000 */   nop
    /* 40A3C 801C99B4 21200000 */  addu       $a0, $zero, $zero
    /* 40A40 801C99B8 8DFF0624 */  addiu      $a2, $zero, -0x73
    /* 40A44 801C99BC A2000224 */  addiu      $v0, $zero, 0xA2
    /* 40A48 801C99C0 801F033C */  lui        $v1, (0x1F8002DD >> 16)
    /* 40A4C 801C99C4 DD026390 */  lbu        $v1, (0x1F8002DD & 0xFFFF)($v1)
    /* 40A50 801C99C8 03000524 */  addiu      $a1, $zero, 0x3
    /* 40A54 801C99CC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 40A58 801C99D0 01000224 */  addiu      $v0, $zero, 0x1
    /* 40A5C 801C99D4 1400A5AF */  sw         $a1, 0x14($sp)
    /* 40A60 801C99D8 1800A2AF */  sw         $v0, 0x18($sp)
    /* 40A64 801C99DC 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 40A68 801C99E0 2000A0AF */  sw         $zero, 0x20($sp)
    /* 40A6C 801C99E4 2400A2AF */  sw         $v0, 0x24($sp)
    /* 40A70 801C99E8 2800A5AF */  sw         $a1, 0x28($sp)
    /* 40A74 801C99EC 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 40A78 801C99F0 80180300 */  sll        $v1, $v1, 2
    /* 40A7C 801C99F4 1D80013C */  lui        $at, %hi(D_801D1D18)
    /* 40A80 801C99F8 21082300 */  addu       $at, $at, $v1
    /* 40A84 801C99FC 181D258C */  lw         $a1, %lo(D_801D1D18)($at)
    /* 40A88 801C9A00 B850060C */  jal        func_801942E0
    /* 40A8C 801C9A04 A0FF0724 */   addiu     $a3, $zero, -0x60
    /* 40A90 801C9A08 3000BF8F */  lw         $ra, 0x30($sp)
    /* 40A94 801C9A0C 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 40A98 801C9A10 0800E003 */  jr         $ra
    /* 40A9C 801C9A14 00000000 */   nop
endlabel func_801C98F8
