nonmatching func_801A2B3C, 0x164

glabel func_801A2B3C
    /* 19BC4 801A2B3C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 19BC8 801A2B40 1000B0AF */  sw         $s0, 0x10($sp)
    /* 19BCC 801A2B44 1E80103C */  lui        $s0, %hi(D_801D9300)
    /* 19BD0 801A2B48 00931026 */  addiu      $s0, $s0, %lo(D_801D9300)
    /* 19BD4 801A2B4C 21200002 */  addu       $a0, $s0, $zero
    /* 19BD8 801A2B50 1C000524 */  addiu      $a1, $zero, 0x1C
    /* 19BDC 801A2B54 14000624 */  addiu      $a2, $zero, 0x14
    /* 19BE0 801A2B58 FCFF0726 */  addiu      $a3, $s0, -0x4
    /* 19BE4 801A2B5C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 19BE8 801A2B60 1800B2AF */  sw         $s2, 0x18($sp)
    /* 19BEC 801A2B64 823A060C */  jal        func_8018EA08
    /* 19BF0 801A2B68 1400B1AF */   sw        $s1, 0x14($sp)
    /* 19BF4 801A2B6C 01005130 */  andi       $s1, $v0, 0x1
    /* 19BF8 801A2B70 18000426 */  addiu      $a0, $s0, 0x18
    /* 19BFC 801A2B74 52FD0524 */  addiu      $a1, $zero, -0x2AE
    /* 19C00 801A2B78 653A060C */  jal        func_8018E994
    /* 19C04 801A2B7C 20000624 */   addiu     $a2, $zero, 0x20
    /* 19C08 801A2B80 24882202 */  and        $s1, $s1, $v0
    /* 19C0C 801A2B84 34000426 */  addiu      $a0, $s0, 0x34
    /* 19C10 801A2B88 01020524 */  addiu      $a1, $zero, 0x201
    /* 19C14 801A2B8C 653A060C */  jal        func_8018E994
    /* 19C18 801A2B90 20000624 */   addiu     $a2, $zero, 0x20
    /* 19C1C 801A2B94 24882202 */  and        $s1, $s1, $v0
    /* 19C20 801A2B98 1080123C */  lui        $s2, %hi(D_800FF748)
    /* 19C24 801A2B9C 48F75226 */  addiu      $s2, $s2, %lo(D_800FF748)
    /* 19C28 801A2BA0 E85E4426 */  addiu      $a0, $s2, 0x5EE8
    /* 19C2C 801A2BA4 00FE0524 */  addiu      $a1, $zero, -0x200
    /* 19C30 801A2BA8 653A060C */  jal        func_8018E994
    /* 19C34 801A2BAC 20000624 */   addiu     $a2, $zero, 0x20
    /* 19C38 801A2BB0 24882202 */  and        $s1, $s1, $v0
    /* 19C3C 801A2BB4 385F4426 */  addiu      $a0, $s2, 0x5F38
    /* 19C40 801A2BB8 00FE0524 */  addiu      $a1, $zero, -0x200
    /* 19C44 801A2BBC 653A060C */  jal        func_8018E994
    /* 19C48 801A2BC0 20000624 */   addiu     $a2, $zero, 0x20
    /* 19C4C 801A2BC4 24882202 */  and        $s1, $s1, $v0
    /* 19C50 801A2BC8 B48D060C */  jal        func_801A36D0
    /* 19C54 801A2BCC 01000424 */   addiu     $a0, $zero, 0x1
    /* 19C58 801A2BD0 105F4426 */  addiu      $a0, $s2, 0x5F10
    /* 19C5C 801A2BD4 FF005030 */  andi       $s0, $v0, 0xFF
    /* 19C60 801A2BD8 1980013C */  lui        $at, %hi(D_80189FFC)
    /* 19C64 801A2BDC 21083000 */  addu       $at, $at, $s0
    /* 19C68 801A2BE0 FC9F2590 */  lbu        $a1, %lo(D_80189FFC)($at)
    /* 19C6C 801A2BE4 20000624 */  addiu      $a2, $zero, 0x20
    /* 19C70 801A2BE8 653A060C */  jal        func_8018E994
    /* 19C74 801A2BEC 0002A534 */   ori       $a1, $a1, 0x200
    /* 19C78 801A2BF0 24882202 */  and        $s1, $s1, $v0
    /* 19C7C 801A2BF4 605F4426 */  addiu      $a0, $s2, 0x5F60
    /* 19C80 801A2BF8 1980013C */  lui        $at, %hi(D_8018A004)
    /* 19C84 801A2BFC 21083000 */  addu       $at, $at, $s0
    /* 19C88 801A2C00 04A02590 */  lbu        $a1, %lo(D_8018A004)($at)
    /* 19C8C 801A2C04 20000624 */  addiu      $a2, $zero, 0x20
    /* 19C90 801A2C08 653A060C */  jal        func_8018E994
    /* 19C94 801A2C0C 0002A534 */   ori       $a1, $a1, 0x200
    /* 19C98 801A2C10 24882202 */  and        $s1, $s1, $v0
    /* 19C9C 801A2C14 885F4426 */  addiu      $a0, $s2, 0x5F88
    /* 19CA0 801A2C18 00FE0524 */  addiu      $a1, $zero, -0x200
    /* 19CA4 801A2C1C 653A060C */  jal        func_8018E994
    /* 19CA8 801A2C20 20000624 */   addiu     $a2, $zero, 0x20
    /* 19CAC 801A2C24 801F033C */  lui        $v1, (0x1F8002E1 >> 16)
    /* 19CB0 801A2C28 E1026390 */  lbu        $v1, (0x1F8002E1 & 0xFFFF)($v1)
    /* 19CB4 801A2C2C 00000000 */  nop
    /* 19CB8 801A2C30 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 19CBC 801A2C34 0200632C */  sltiu      $v1, $v1, 0x2
    /* 19CC0 801A2C38 03006010 */  beqz       $v1, .L801A2C48
    /* 19CC4 801A2C3C 24882202 */   and       $s1, $s1, $v0
    /* 19CC8 801A2C40 158B0608 */  j          .L801A2C54
    /* 19CCC 801A2C44 50604426 */   addiu     $a0, $s2, 0x6050
  .L801A2C48:
    /* 19CD0 801A2C48 A739060C */  jal        func_8018E69C
    /* 19CD4 801A2C4C 01000424 */   addiu     $a0, $zero, 0x1
    /* 19CD8 801A2C50 B05F4426 */  addiu      $a0, $s2, 0x5FB0
  .L801A2C54:
    /* 19CDC 801A2C54 00020524 */  addiu      $a1, $zero, 0x200
    /* 19CE0 801A2C58 653A060C */  jal        func_8018E994
    /* 19CE4 801A2C5C 20000624 */   addiu     $a2, $zero, 0x20
    /* 19CE8 801A2C60 24882202 */  and        $s1, $s1, $v0
    /* 19CEC 801A2C64 07002012 */  beqz       $s1, .L801A2C84
    /* 19CF0 801A2C68 21102002 */   addu      $v0, $s1, $zero
    /* 19CF4 801A2C6C 1E80013C */  lui        $at, %hi(D_801D92F7)
    /* 19CF8 801A2C70 F79220A0 */  sb         $zero, %lo(D_801D92F7)($at)
    /* 19CFC 801A2C74 1E80013C */  lui        $at, %hi(D_801D9313)
    /* 19D00 801A2C78 139320A0 */  sb         $zero, %lo(D_801D9313)($at)
    /* 19D04 801A2C7C 1E80013C */  lui        $at, %hi(D_801D932F)
    /* 19D08 801A2C80 2F9320A0 */  sb         $zero, %lo(D_801D932F)($at)
  .L801A2C84:
    /* 19D0C 801A2C84 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 19D10 801A2C88 1800B28F */  lw         $s2, 0x18($sp)
    /* 19D14 801A2C8C 1400B18F */  lw         $s1, 0x14($sp)
    /* 19D18 801A2C90 1000B08F */  lw         $s0, 0x10($sp)
    /* 19D1C 801A2C94 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 19D20 801A2C98 0800E003 */  jr         $ra
    /* 19D24 801A2C9C 00000000 */   nop
endlabel func_801A2B3C
