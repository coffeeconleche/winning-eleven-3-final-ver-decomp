nonmatching func_8004F25C, 0x170

glabel func_8004F25C
    /* 3FA5C 8004F25C 801F023C */  lui        $v0, (0x1F8002C4 >> 16)
    /* 3FA60 8004F260 C402428C */  lw         $v0, (0x1F8002C4 & 0xFFFF)($v0)
    /* 3FA64 8004F264 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3FA68 8004F268 2400BFAF */  sw         $ra, 0x24($sp)
    /* 3FA6C 8004F26C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3FA70 8004F270 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3FA74 8004F274 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3FA78 8004F278 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3FA7C 8004F27C 09004014 */  bnez       $v0, .L8004F2A4
    /* 3FA80 8004F280 1000B0AF */   sw        $s0, 0x10($sp)
    /* 3FA84 8004F284 0174000C */  jal        func_8001D004
    /* 3FA88 8004F288 24000424 */   addiu     $a0, $zero, 0x24
    /* 3FA8C 8004F28C 1080013C */  lui        $at, %hi(D_80105BA4)
    /* 3FA90 8004F290 A45B22AC */  sw         $v0, %lo(D_80105BA4)($at)
    /* 3FA94 8004F294 3F69010C */  jal        func_8005A4FC
    /* 3FA98 8004F298 00000000 */   nop
    /* 3FA9C 8004F29C EA3C0108 */  j          .L8004F3A8
    /* 3FAA0 8004F2A0 00000000 */   nop
  .L8004F2A4:
    /* 3FAA4 8004F2A4 F33C010C */  jal        func_8004F3CC
    /* 3FAA8 8004F2A8 00000000 */   nop
    /* 3FAAC 8004F2AC A291033C */  lui        $v1, (0x91A2B3C5 >> 16)
    /* 3FAB0 8004F2B0 C5B36334 */  ori        $v1, $v1, (0x91A2B3C5 & 0xFFFF)
    /* 3FAB4 8004F2B4 19004300 */  multu      $v0, $v1
    /* 3FAB8 8004F2B8 10280000 */  mfhi       $a1
    /* 3FABC 8004F2BC 04E9033C */  lui        $v1, (0xE90452D5 >> 16)
    /* 3FAC0 8004F2C0 D5526334 */  ori        $v1, $v1, (0xE90452D5 & 0xFFFF)
    /* 3FAC4 8004F2C4 19004300 */  multu      $v0, $v1
    /* 3FAC8 8004F2C8 4E1B043C */  lui        $a0, (0x1B4E81B5 >> 16)
    /* 3FACC 8004F2CC B5818434 */  ori        $a0, $a0, (0x1B4E81B5 & 0xFFFF)
    /* 3FAD0 8004F2D0 C22A0500 */  srl        $a1, $a1, 11
    /* 3FAD4 8004F2D4 C0180500 */  sll        $v1, $a1, 3
    /* 3FAD8 8004F2D8 23186500 */  subu       $v1, $v1, $a1
    /* 3FADC 8004F2DC 40190300 */  sll        $v1, $v1, 5
    /* 3FAE0 8004F2E0 21186500 */  addu       $v1, $v1, $a1
    /* 3FAE4 8004F2E4 10380000 */  mfhi       $a3
    /* 3FAE8 8004F2E8 00190300 */  sll        $v1, $v1, 4
    /* 3FAEC 8004F2EC 23104300 */  subu       $v0, $v0, $v1
    /* 3FAF0 8004F2F0 19004400 */  multu      $v0, $a0
    /* 3FAF4 8004F2F4 10300000 */  mfhi       $a2
    /* 3FAF8 8004F2F8 8888033C */  lui        $v1, (0x88888889 >> 16)
    /* 3FAFC 8004F2FC 89886334 */  ori        $v1, $v1, (0x88888889 & 0xFFFF)
    /* 3FB00 8004F300 19004300 */  multu      $v0, $v1
    /* 3FB04 8004F304 05000424 */  addiu      $a0, $zero, 0x5
    /* 3FB08 8004F308 C2830700 */  srl        $s0, $a3, 15
    /* 3FB0C 8004F30C 80101000 */  sll        $v0, $s0, 2
    /* 3FB10 8004F310 21105000 */  addu       $v0, $v0, $s0
    /* 3FB14 8004F314 40100200 */  sll        $v0, $v0, 1
    /* 3FB18 8004F318 2398A200 */  subu       $s3, $a1, $v0
    /* 3FB1C 8004F31C 82190600 */  srl        $v1, $a2, 6
    /* 3FB20 8004F320 80100300 */  sll        $v0, $v1, 2
    /* 3FB24 8004F324 21104300 */  addu       $v0, $v0, $v1
    /* 3FB28 8004F328 40100200 */  sll        $v0, $v0, 1
    /* 3FB2C 8004F32C 21906000 */  addu       $s2, $v1, $zero
    /* 3FB30 8004F330 10480000 */  mfhi       $t1
    /* 3FB34 8004F334 42290900 */  srl        $a1, $t1, 5
    /* 3FB38 8004F338 0174000C */  jal        func_8001D004
    /* 3FB3C 8004F33C 23A0A200 */   subu      $s4, $a1, $v0
    /* 3FB40 8004F340 21880002 */  addu       $s1, $s0, $zero
    /* 3FB44 8004F344 00841000 */  sll        $s0, $s0, 16
    /* 3FB48 8004F348 05000016 */  bnez       $s0, .L8004F360
    /* 3FB4C 8004F34C 21184000 */   addu      $v1, $v0, $zero
    /* 3FB50 8004F350 5B000224 */  addiu      $v0, $zero, 0x5B
    /* 3FB54 8004F354 220062A0 */  sb         $v0, 0x22($v1)
    /* 3FB58 8004F358 DB3C0108 */  j          .L8004F36C
    /* 3FB5C 8004F35C 09000224 */   addiu     $v0, $zero, 0x9
  .L8004F360:
    /* 3FB60 8004F360 58000224 */  addiu      $v0, $zero, 0x58
    /* 3FB64 8004F364 220062A0 */  sb         $v0, 0x22($v1)
    /* 3FB68 8004F368 21100000 */  addu       $v0, $zero, $zero
  .L8004F36C:
    /* 3FB6C 8004F36C E8FF4224 */  addiu      $v0, $v0, -0x18
    /* 3FB70 8004F370 060062A4 */  sh         $v0, 0x6($v1)
    /* 3FB74 8004F374 00141100 */  sll        $v0, $s1, 16
    /* 3FB78 8004F378 03130200 */  sra        $v0, $v0, 12
    /* 3FB7C 8004F37C 1B0062A0 */  sb         $v0, 0x1B($v1)
    /* 3FB80 8004F380 00141300 */  sll        $v0, $s3, 16
    /* 3FB84 8004F384 03130200 */  sra        $v0, $v0, 12
    /* 3FB88 8004F388 270062A0 */  sb         $v0, 0x27($v1)
    /* 3FB8C 8004F38C 00141200 */  sll        $v0, $s2, 16
    /* 3FB90 8004F390 03130200 */  sra        $v0, $v0, 12
    /* 3FB94 8004F394 330062A0 */  sb         $v0, 0x33($v1)
    /* 3FB98 8004F398 00141400 */  sll        $v0, $s4, 16
    /* 3FB9C 8004F39C 03130200 */  sra        $v0, $v0, 12
    /* 3FBA0 8004F3A0 3D69010C */  jal        func_8005A4F4
    /* 3FBA4 8004F3A4 3F0062A0 */   sb        $v0, 0x3F($v1)
  .L8004F3A8:
    /* 3FBA8 8004F3A8 2400BF8F */  lw         $ra, 0x24($sp)
    /* 3FBAC 8004F3AC 2000B48F */  lw         $s4, 0x20($sp)
    /* 3FBB0 8004F3B0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3FBB4 8004F3B4 1800B28F */  lw         $s2, 0x18($sp)
    /* 3FBB8 8004F3B8 1400B18F */  lw         $s1, 0x14($sp)
    /* 3FBBC 8004F3BC 1000B08F */  lw         $s0, 0x10($sp)
    /* 3FBC0 8004F3C0 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3FBC4 8004F3C4 0800E003 */  jr         $ra
    /* 3FBC8 8004F3C8 00000000 */   nop
endlabel func_8004F25C
