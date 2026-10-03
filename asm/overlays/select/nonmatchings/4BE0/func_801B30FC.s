nonmatching func_801B30FC, 0x380

glabel func_801B30FC
    /* 2A184 801B30FC 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 2A188 801B3100 10800C3C */  lui        $t4, %hi(D_800FF748)
    /* 2A18C 801B3104 48F78C25 */  addiu      $t4, $t4, %lo(D_800FF748)
    /* 2A190 801B3108 21480000 */  addu       $t1, $zero, $zero
    /* 2A194 801B310C 1E80043C */  lui        $a0, %hi(D_801D94E8)
    /* 2A198 801B3110 E8948424 */  addiu      $a0, $a0, %lo(D_801D94E8)
    /* 2A19C 801B3114 6C00BFAF */  sw         $ra, 0x6C($sp)
    /* 2A1A0 801B3118 6800BEAF */  sw         $fp, 0x68($sp)
    /* 2A1A4 801B311C 6400B7AF */  sw         $s7, 0x64($sp)
    /* 2A1A8 801B3120 6000B6AF */  sw         $s6, 0x60($sp)
    /* 2A1AC 801B3124 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 2A1B0 801B3128 5800B4AF */  sw         $s4, 0x58($sp)
    /* 2A1B4 801B312C 5400B3AF */  sw         $s3, 0x54($sp)
    /* 2A1B8 801B3130 5000B2AF */  sw         $s2, 0x50($sp)
    /* 2A1BC 801B3134 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 2A1C0 801B3138 4800B0AF */  sw         $s0, 0x48($sp)
  .L801B313C:
    /* 2A1C4 801B313C 2C000324 */  addiu      $v1, $zero, 0x2C
    /* 2A1C8 801B3140 2C008224 */  addiu      $v0, $a0, 0x2C
  .L801B3144:
    /* 2A1CC 801B3144 000040A0 */  sb         $zero, 0x0($v0)
    /* 2A1D0 801B3148 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 2A1D4 801B314C FDFF6104 */  bgez       $v1, .L801B3144
    /* 2A1D8 801B3150 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 2A1DC 801B3154 01002925 */  addiu      $t1, $t1, 0x1
    /* 2A1E0 801B3158 41002229 */  slti       $v0, $t1, 0x41
    /* 2A1E4 801B315C F7FF4014 */  bnez       $v0, .L801B313C
    /* 2A1E8 801B3160 2D008424 */   addiu     $a0, $a0, 0x2D
    /* 2A1EC 801B3164 21B80000 */  addu       $s7, $zero, $zero
    /* 2A1F0 801B3168 21480000 */  addu       $t1, $zero, $zero
    /* 2A1F4 801B316C 21580000 */  addu       $t3, $zero, $zero
    /* 2A1F8 801B3170 21500000 */  addu       $t2, $zero, $zero
  .L801B3174:
    /* 2A1FC 801B3174 1E80023C */  lui        $v0, %hi(D_801D94EB)
    /* 2A200 801B3178 EB944224 */  addiu      $v0, $v0, %lo(D_801D94EB)
    /* 2A204 801B317C 21204201 */  addu       $a0, $t2, $v0
    /* 2A208 801B3180 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 2A20C 801B3184 1E80013C */  lui        $at, %hi(D_801D94E8)
    /* 2A210 801B3188 21082A00 */  addu       $at, $at, $t2
    /* 2A214 801B318C E89422A0 */  sb         $v0, %lo(D_801D94E8)($at)
    /* 2A218 801B3190 1E80013C */  lui        $at, %hi(D_801D94E9)
    /* 2A21C 801B3194 21082A00 */  addu       $at, $at, $t2
    /* 2A220 801B3198 E99422A0 */  sb         $v0, %lo(D_801D94E9)($at)
    /* 2A224 801B319C 1E80013C */  lui        $at, %hi(D_801D94EA)
    /* 2A228 801B31A0 21082A00 */  addu       $at, $at, $t2
    /* 2A22C 801B31A4 EA9437A0 */  sb         $s7, %lo(D_801D94EA)($at)
    /* 2A230 801B31A8 2D004A25 */  addiu      $t2, $t2, 0x2D
    /* 2A234 801B31AC 0100E526 */  addiu      $a1, $s7, 0x1
    /* 2A238 801B31B0 0A00A228 */  slti       $v0, $a1, 0xA
    /* 2A23C 801B31B4 03004010 */  beqz       $v0, .L801B31C4
    /* 2A240 801B31B8 01002925 */   addiu     $t1, $t1, 0x1
    /* 2A244 801B31BC 80CC0608 */  j          .L801B3200
    /* 2A248 801B31C0 3100E226 */   addiu     $v0, $s7, 0x31
  .L801B31C4:
    /* 2A24C 801B31C4 6666023C */  lui        $v0, (0x66666667 >> 16)
    /* 2A250 801B31C8 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* 2A254 801B31CC 1800A200 */  mult       $a1, $v0
    /* 2A258 801B31D0 C3170500 */  sra        $v0, $a1, 31
    /* 2A25C 801B31D4 10680000 */  mfhi       $t5
    /* 2A260 801B31D8 83180D00 */  sra        $v1, $t5, 2
    /* 2A264 801B31DC 23186200 */  subu       $v1, $v1, $v0
    /* 2A268 801B31E0 30006224 */  addiu      $v0, $v1, 0x30
    /* 2A26C 801B31E4 000082A0 */  sb         $v0, 0x0($a0)
    /* 2A270 801B31E8 01008424 */  addiu      $a0, $a0, 0x1
    /* 2A274 801B31EC 80100300 */  sll        $v0, $v1, 2
    /* 2A278 801B31F0 21104300 */  addu       $v0, $v0, $v1
    /* 2A27C 801B31F4 40100200 */  sll        $v0, $v0, 1
    /* 2A280 801B31F8 2310A200 */  subu       $v0, $a1, $v0
    /* 2A284 801B31FC 30004224 */  addiu      $v0, $v0, 0x30
  .L801B3200:
    /* 2A288 801B3200 000082A0 */  sb         $v0, 0x0($a0)
    /* 2A28C 801B3204 0600E016 */  bnez       $s7, .L801B3220
    /* 2A290 801B3208 01008424 */   addiu     $a0, $a0, 0x1
    /* 2A294 801B320C 73000224 */  addiu      $v0, $zero, 0x73
    /* 2A298 801B3210 000082A0 */  sb         $v0, 0x0($a0)
    /* 2A29C 801B3214 01008424 */  addiu      $a0, $a0, 0x1
    /* 2A2A0 801B3218 9ACC0608 */  j          .L801B3268
    /* 2A2A4 801B321C 74000224 */   addiu     $v0, $zero, 0x74
  .L801B3220:
    /* 2A2A8 801B3220 01000224 */  addiu      $v0, $zero, 0x1
    /* 2A2AC 801B3224 0500E216 */  bne        $s7, $v0, .L801B323C
    /* 2A2B0 801B3228 6E000224 */   addiu     $v0, $zero, 0x6E
    /* 2A2B4 801B322C 000082A0 */  sb         $v0, 0x0($a0)
    /* 2A2B8 801B3230 01008424 */  addiu      $a0, $a0, 0x1
    /* 2A2BC 801B3234 9ACC0608 */  j          .L801B3268
    /* 2A2C0 801B3238 64000224 */   addiu     $v0, $zero, 0x64
  .L801B323C:
    /* 2A2C4 801B323C 02000224 */  addiu      $v0, $zero, 0x2
    /* 2A2C8 801B3240 0500E216 */  bne        $s7, $v0, .L801B3258
    /* 2A2CC 801B3244 72000224 */   addiu     $v0, $zero, 0x72
    /* 2A2D0 801B3248 000082A0 */  sb         $v0, 0x0($a0)
    /* 2A2D4 801B324C 01008424 */  addiu      $a0, $a0, 0x1
    /* 2A2D8 801B3250 9ACC0608 */  j          .L801B3268
    /* 2A2DC 801B3254 64000224 */   addiu     $v0, $zero, 0x64
  .L801B3258:
    /* 2A2E0 801B3258 74000224 */  addiu      $v0, $zero, 0x74
    /* 2A2E4 801B325C 000082A0 */  sb         $v0, 0x0($a0)
    /* 2A2E8 801B3260 01008424 */  addiu      $a0, $a0, 0x1
    /* 2A2EC 801B3264 68000224 */  addiu      $v0, $zero, 0x68
  .L801B3268:
    /* 2A2F0 801B3268 000082A0 */  sb         $v0, 0x0($a0)
    /* 2A2F4 801B326C 01008424 */  addiu      $a0, $a0, 0x1
    /* 2A2F8 801B3270 20000224 */  addiu      $v0, $zero, 0x20
    /* 2A2FC 801B3274 000082A0 */  sb         $v0, 0x0($a0)
    /* 2A300 801B3278 01008424 */  addiu      $a0, $a0, 0x1
    /* 2A304 801B327C 44000224 */  addiu      $v0, $zero, 0x44
    /* 2A308 801B3280 000082A0 */  sb         $v0, 0x0($a0)
    /* 2A30C 801B3284 01008424 */  addiu      $a0, $a0, 0x1
    /* 2A310 801B3288 61000224 */  addiu      $v0, $zero, 0x61
    /* 2A314 801B328C 000082A0 */  sb         $v0, 0x0($a0)
    /* 2A318 801B3290 79000224 */  addiu      $v0, $zero, 0x79
    /* 2A31C 801B3294 010082A0 */  sb         $v0, 0x1($a0)
    /* 2A320 801B3298 1280013C */  lui        $at, %hi(D_8011CAF4)
    /* 2A324 801B329C 21083700 */  addu       $at, $at, $s7
    /* 2A328 801B32A0 F4CA2290 */  lbu        $v0, %lo(D_8011CAF4)($at)
    /* 2A32C 801B32A4 00000000 */  nop
    /* 2A330 801B32A8 63004018 */  blez       $v0, .L801B3438
    /* 2A334 801B32AC 21400000 */   addu      $t0, $zero, $zero
    /* 2A338 801B32B0 40F00B00 */  sll        $fp, $t3, 1
    /* 2A33C 801B32B4 40100900 */  sll        $v0, $t1, 1
    /* 2A340 801B32B8 21104900 */  addu       $v0, $v0, $t1
    /* 2A344 801B32BC 00190200 */  sll        $v1, $v0, 4
    /* 2A348 801B32C0 23A06200 */  subu       $s4, $v1, $v0
  .L801B32C4:
    /* 2A34C 801B32C4 1280013C */  lui        $at, %hi(D_8011CA90)
    /* 2A350 801B32C8 21083E00 */  addu       $at, $at, $fp
    /* 2A354 801B32CC 90CA2390 */  lbu        $v1, %lo(D_8011CA90)($at)
    /* 2A358 801B32D0 00000000 */  nop
    /* 2A35C 801B32D4 6100622C */  sltiu      $v0, $v1, 0x61
    /* 2A360 801B32D8 02004014 */  bnez       $v0, .L801B32E4
    /* 2A364 801B32DC BFFF7624 */   addiu     $s6, $v1, -0x41
    /* 2A368 801B32E0 B9FF7624 */  addiu      $s6, $v1, -0x47
  .L801B32E4:
    /* 2A36C 801B32E4 1280013C */  lui        $at, %hi(D_8011CA91)
    /* 2A370 801B32E8 21083E00 */  addu       $at, $at, $fp
    /* 2A374 801B32EC 91CA2390 */  lbu        $v1, %lo(D_8011CA91)($at)
    /* 2A378 801B32F0 00000000 */  nop
    /* 2A37C 801B32F4 6100622C */  sltiu      $v0, $v1, 0x61
    /* 2A380 801B32F8 02004014 */  bnez       $v0, .L801B3304
    /* 2A384 801B32FC BFFF7524 */   addiu     $s5, $v1, -0x41
    /* 2A388 801B3300 B9FF7524 */  addiu      $s5, $v1, -0x47
  .L801B3304:
    /* 2A38C 801B3304 FF00D132 */  andi       $s1, $s6, 0xFF
    /* 2A390 801B3308 21202002 */  addu       $a0, $s1, $zero
    /* 2A394 801B330C FF00B032 */  andi       $s0, $s5, 0xFF
    /* 2A398 801B3310 21280002 */  addu       $a1, $s0, $zero
    /* 2A39C 801B3314 2D004A25 */  addiu      $t2, $t2, 0x2D
    /* 2A3A0 801B3318 01002925 */  addiu      $t1, $t1, 0x1
    /* 2A3A4 801B331C 21109101 */  addu       $v0, $t4, $s1
    /* 2A3A8 801B3320 80AB0D34 */  ori        $t5, $zero, 0xAB80
    /* 2A3AC 801B3324 21104D00 */  addu       $v0, $v0, $t5
    /* 2A3B0 801B3328 00004290 */  lbu        $v0, 0x0($v0)
    /* 2A3B4 801B332C 01000825 */  addiu      $t0, $t0, 0x1
    /* 2A3B8 801B3330 C0300200 */  sll        $a2, $v0, 3
    /* 2A3BC 801B3334 2130C200 */  addu       $a2, $a2, $v0
    /* 2A3C0 801B3338 80300600 */  sll        $a2, $a2, 2
    /* 2A3C4 801B333C 21109001 */  addu       $v0, $t4, $s0
    /* 2A3C8 801B3340 21104D00 */  addu       $v0, $v0, $t5
    /* 2A3CC 801B3344 21308601 */  addu       $a2, $t4, $a2
    /* 2A3D0 801B3348 00004390 */  lbu        $v1, 0x0($v0)
    /* 2A3D4 801B334C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2A3D8 801B3350 2108C100 */  addu       $at, $a2, $at
    /* 2A3DC 801B3354 258F3290 */  lbu        $s2, -0x70DB($at)
    /* 2A3E0 801B3358 C0100300 */  sll        $v0, $v1, 3
    /* 2A3E4 801B335C 21104300 */  addu       $v0, $v0, $v1
    /* 2A3E8 801B3360 80100200 */  sll        $v0, $v0, 2
    /* 2A3EC 801B3364 21108201 */  addu       $v0, $t4, $v0
    /* 2A3F0 801B3368 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2A3F4 801B336C 21084100 */  addu       $at, $v0, $at
    /* 2A3F8 801B3370 258F3390 */  lbu        $s3, -0x70DB($at)
    /* 2A3FC 801B3374 0200DE27 */  addiu      $fp, $fp, 0x2
    /* 2A400 801B3378 3000A8AF */  sw         $t0, 0x30($sp)
    /* 2A404 801B337C 3400A9AF */  sw         $t1, 0x34($sp)
    /* 2A408 801B3380 3800AAAF */  sw         $t2, 0x38($sp)
    /* 2A40C 801B3384 3C00ABAF */  sw         $t3, 0x3C($sp)
    /* 2A410 801B3388 03D4060C */  jal        func_801B500C
    /* 2A414 801B338C 4000ACAF */   sw        $t4, 0x40($sp)
    /* 2A418 801B3390 03004390 */  lbu        $v1, 0x3($v0)
    /* 2A41C 801B3394 04004690 */  lbu        $a2, 0x4($v0)
    /* 2A420 801B3398 1E80043C */  lui        $a0, %hi(D_801D94EB)
    /* 2A424 801B339C EB948424 */  addiu      $a0, $a0, %lo(D_801D94EB)
    /* 2A428 801B33A0 1E80013C */  lui        $at, %hi(D_801D94E8)
    /* 2A42C 801B33A4 21083400 */  addu       $at, $at, $s4
    /* 2A430 801B33A8 E89436A0 */  sb         $s6, %lo(D_801D94E8)($at)
    /* 2A434 801B33AC 1E80013C */  lui        $at, %hi(D_801D94E9)
    /* 2A438 801B33B0 21083400 */  addu       $at, $at, $s4
    /* 2A43C 801B33B4 E99435A0 */  sb         $s5, %lo(D_801D94E9)($at)
    /* 2A440 801B33B8 3C00AB8F */  lw         $t3, 0x3C($sp)
    /* 2A444 801B33BC 21208402 */  addu       $a0, $s4, $a0
    /* 2A448 801B33C0 1E80013C */  lui        $at, %hi(D_801D94EA)
    /* 2A44C 801B33C4 21083400 */  addu       $at, $at, $s4
    /* 2A450 801B33C8 EA942BA0 */  sb         $t3, %lo(D_801D94EA)($at)
    /* 2A454 801B33CC 4000AC8F */  lw         $t4, 0x40($sp)
    /* 2A458 801B33D0 21382002 */  addu       $a3, $s1, $zero
    /* 2A45C 801B33D4 21108B01 */  addu       $v0, $t4, $t3
    /* 2A460 801B33D8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2A464 801B33DC 21084100 */  addu       $at, $v0, $at
    /* 2A468 801B33E0 50AB2590 */  lbu        $a1, -0x54B0($at)
    /* 2A46C 801B33E4 2D009426 */  addiu      $s4, $s4, 0x2D
    /* 2A470 801B33E8 2000A6AF */  sw         $a2, 0x20($sp)
    /* 2A474 801B33EC FF006631 */  andi       $a2, $t3, 0xFF
    /* 2A478 801B33F0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2A47C 801B33F4 1400B2AF */  sw         $s2, 0x14($sp)
    /* 2A480 801B33F8 1800B3AF */  sw         $s3, 0x18($sp)
    /* 2A484 801B33FC 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* 2A488 801B3400 42280500 */  srl        $a1, $a1, 1
    /* 2A48C 801B3404 1FCD060C */  jal        func_801B347C
    /* 2A490 801B3408 0100A530 */   andi      $a1, $a1, 0x1
    /* 2A494 801B340C 1280013C */  lui        $at, %hi(D_8011CAF4)
    /* 2A498 801B3410 21083700 */  addu       $at, $at, $s7
    /* 2A49C 801B3414 F4CA2290 */  lbu        $v0, %lo(D_8011CAF4)($at)
    /* 2A4A0 801B3418 3C00AB8F */  lw         $t3, 0x3C($sp)
    /* 2A4A4 801B341C 3000A88F */  lw         $t0, 0x30($sp)
    /* 2A4A8 801B3420 3400A98F */  lw         $t1, 0x34($sp)
    /* 2A4AC 801B3424 3800AA8F */  lw         $t2, 0x38($sp)
    /* 2A4B0 801B3428 4000AC8F */  lw         $t4, 0x40($sp)
    /* 2A4B4 801B342C 2A100201 */  slt        $v0, $t0, $v0
    /* 2A4B8 801B3430 A4FF4014 */  bnez       $v0, .L801B32C4
    /* 2A4BC 801B3434 01006B25 */   addiu     $t3, $t3, 0x1
  .L801B3438:
    /* 2A4C0 801B3438 0100F726 */  addiu      $s7, $s7, 0x1
    /* 2A4C4 801B343C 1100E22A */  slti       $v0, $s7, 0x11
    /* 2A4C8 801B3440 4CFF4014 */  bnez       $v0, .L801B3174
    /* 2A4CC 801B3444 00000000 */   nop
    /* 2A4D0 801B3448 6C00BF8F */  lw         $ra, 0x6C($sp)
    /* 2A4D4 801B344C 6800BE8F */  lw         $fp, 0x68($sp)
    /* 2A4D8 801B3450 6400B78F */  lw         $s7, 0x64($sp)
    /* 2A4DC 801B3454 6000B68F */  lw         $s6, 0x60($sp)
    /* 2A4E0 801B3458 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 2A4E4 801B345C 5800B48F */  lw         $s4, 0x58($sp)
    /* 2A4E8 801B3460 5400B38F */  lw         $s3, 0x54($sp)
    /* 2A4EC 801B3464 5000B28F */  lw         $s2, 0x50($sp)
    /* 2A4F0 801B3468 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 2A4F4 801B346C 4800B08F */  lw         $s0, 0x48($sp)
    /* 2A4F8 801B3470 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 2A4FC 801B3474 0800E003 */  jr         $ra
    /* 2A500 801B3478 00000000 */   nop
endlabel func_801B30FC
