nonmatching func_801A30F4, 0x378

glabel func_801A30F4
    /* 1A17C 801A30F4 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 1A180 801A30F8 2800B4AF */  sw         $s4, 0x28($sp)
    /* 1A184 801A30FC 21A08000 */  addu       $s4, $a0, $zero
    /* 1A188 801A3100 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 1A18C 801A3104 21A8A000 */  addu       $s5, $a1, $zero
    /* 1A190 801A3108 1080093C */  lui        $t1, %hi(D_800FF748)
    /* 1A194 801A310C 48F72925 */  addiu      $t1, $t1, %lo(D_800FF748)
    /* 1A198 801A3110 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1A19C 801A3114 21880000 */  addu       $s1, $zero, $zero
    /* 1A1A0 801A3118 01000424 */  addiu      $a0, $zero, 0x1
    /* 1A1A4 801A311C 34010324 */  addiu      $v1, $zero, 0x134
    /* 1A1A8 801A3120 3000BFAF */  sw         $ra, 0x30($sp)
    /* 1A1AC 801A3124 2400B3AF */  sw         $s3, 0x24($sp)
    /* 1A1B0 801A3128 2000B2AF */  sw         $s2, 0x20($sp)
    /* 1A1B4 801A312C 1800B0AF */  sw         $s0, 0x18($sp)
  .L801A3130:
    /* 1A1B8 801A3130 1E80023C */  lui        $v0, %hi(D_801DA060)
    /* 1A1BC 801A3134 60A0428C */  lw         $v0, %lo(D_801DA060)($v0)
    /* 1A1C0 801A3138 00000000 */  nop
    /* 1A1C4 801A313C 04004010 */  beqz       $v0, .L801A3150
    /* 1A1C8 801A3140 00000000 */   nop
    /* 1A1CC 801A3144 1E80013C */  lui        $at, %hi(D_801D9217)
    /* 1A1D0 801A3148 21082300 */  addu       $at, $at, $v1
    /* 1A1D4 801A314C 179224A0 */  sb         $a0, %lo(D_801D9217)($at)
  .L801A3150:
    /* 1A1D8 801A3150 1E80023C */  lui        $v0, %hi(D_801DA064)
    /* 1A1DC 801A3154 64A0428C */  lw         $v0, %lo(D_801DA064)($v0)
    /* 1A1E0 801A3158 00000000 */  nop
    /* 1A1E4 801A315C 04004010 */  beqz       $v0, .L801A3170
    /* 1A1E8 801A3160 00000000 */   nop
    /* 1A1EC 801A3164 1E80013C */  lui        $at, %hi(D_801D92A3)
    /* 1A1F0 801A3168 21082300 */  addu       $at, $at, $v1
    /* 1A1F4 801A316C A39224A0 */  sb         $a0, %lo(D_801D92A3)($at)
  .L801A3170:
    /* 1A1F8 801A3170 01003126 */  addiu      $s1, $s1, 0x1
    /* 1A1FC 801A3174 0500222A */  slti       $v0, $s1, 0x5
    /* 1A200 801A3178 EDFF4014 */  bnez       $v0, .L801A3130
    /* 1A204 801A317C 1C006324 */   addiu     $v1, $v1, 0x1C
    /* 1A208 801A3180 1D80023C */  lui        $v0, %hi(D_801D1F87)
    /* 1A20C 801A3184 871F4290 */  lbu        $v0, %lo(D_801D1F87)($v0)
    /* 1A210 801A3188 1D80033C */  lui        $v1, %hi(D_801D1F88)
    /* 1A214 801A318C 881F6390 */  lbu        $v1, %lo(D_801D1F88)($v1)
    /* 1A218 801A3190 1D80043C */  lui        $a0, %hi(D_801D1F89)
    /* 1A21C 801A3194 891F8490 */  lbu        $a0, %lo(D_801D1F89)($a0)
    /* 1A220 801A3198 1D80053C */  lui        $a1, %hi(D_801D1F84)
    /* 1A224 801A319C 841FA590 */  lbu        $a1, %lo(D_801D1F84)($a1)
    /* 1A228 801A31A0 1D80063C */  lui        $a2, %hi(D_801D1F85)
    /* 1A22C 801A31A4 851FC690 */  lbu        $a2, %lo(D_801D1F85)($a2)
    /* 1A230 801A31A8 1D80073C */  lui        $a3, %hi(D_801D1F86)
    /* 1A234 801A31AC 861FE790 */  lbu        $a3, %lo(D_801D1F86)($a3)
    /* 1A238 801A31B0 1E80083C */  lui        $t0, %hi(D_801D8B17)
    /* 1A23C 801A31B4 178B0891 */  lbu        $t0, %lo(D_801D8B17)($t0)
    /* 1A240 801A31B8 1E80013C */  lui        $at, %hi(D_801D8D98)
    /* 1A244 801A31BC 988D22A0 */  sb         $v0, %lo(D_801D8D98)($at)
    /* 1A248 801A31C0 1E80013C */  lui        $at, %hi(D_801D8D99)
    /* 1A24C 801A31C4 998D23A0 */  sb         $v1, %lo(D_801D8D99)($at)
    /* 1A250 801A31C8 1E80013C */  lui        $at, %hi(D_801D8D9A)
    /* 1A254 801A31CC 9A8D24A0 */  sb         $a0, %lo(D_801D8D9A)($at)
    /* 1A258 801A31D0 1E80013C */  lui        $at, %hi(D_801D8D9B)
    /* 1A25C 801A31D4 9B8D25A0 */  sb         $a1, %lo(D_801D8D9B)($at)
    /* 1A260 801A31D8 1E80013C */  lui        $at, %hi(D_801D8D9C)
    /* 1A264 801A31DC 9C8D26A0 */  sb         $a2, %lo(D_801D8D9C)($at)
    /* 1A268 801A31E0 1E80013C */  lui        $at, %hi(D_801D8D9D)
    /* 1A26C 801A31E4 9D8D27A0 */  sb         $a3, %lo(D_801D8D9D)($at)
    /* 1A270 801A31E8 1E80013C */  lui        $at, %hi(D_801D8D9E)
    /* 1A274 801A31EC 9E8D22A0 */  sb         $v0, %lo(D_801D8D9E)($at)
    /* 1A278 801A31F0 1E80013C */  lui        $at, %hi(D_801D8D9F)
    /* 1A27C 801A31F4 9F8D23A0 */  sb         $v1, %lo(D_801D8D9F)($at)
    /* 1A280 801A31F8 1E80013C */  lui        $at, %hi(D_801D8DA0)
    /* 1A284 801A31FC A08D24A0 */  sb         $a0, %lo(D_801D8DA0)($at)
    /* 1A288 801A3200 1E80013C */  lui        $at, %hi(D_801D8DA1)
    /* 1A28C 801A3204 A18D25A0 */  sb         $a1, %lo(D_801D8DA1)($at)
    /* 1A290 801A3208 1E80013C */  lui        $at, %hi(D_801D8DA2)
    /* 1A294 801A320C A28D26A0 */  sb         $a2, %lo(D_801D8DA2)($at)
    /* 1A298 801A3210 1E80013C */  lui        $at, %hi(D_801D8DA3)
    /* 1A29C 801A3214 A38D27A0 */  sb         $a3, %lo(D_801D8DA3)($at)
    /* 1A2A0 801A3218 14000015 */  bnez       $t0, .L801A326C
    /* 1A2A4 801A321C 00000000 */   nop
    /* 1A2A8 801A3220 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 1A2AC 801A3224 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 1A2B0 801A3228 00000000 */  nop
    /* 1A2B4 801A322C 21102201 */  addu       $v0, $t1, $v0
    /* 1A2B8 801A3230 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1A2BC 801A3234 21084100 */  addu       $at, $v0, $at
    /* 1A2C0 801A3238 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 1A2C4 801A323C 00000000 */  nop
    /* 1A2C8 801A3240 C0100300 */  sll        $v0, $v1, 3
    /* 1A2CC 801A3244 21104300 */  addu       $v0, $v0, $v1
    /* 1A2D0 801A3248 80100200 */  sll        $v0, $v0, 2
    /* 1A2D4 801A324C 21102201 */  addu       $v0, $t1, $v0
    /* 1A2D8 801A3250 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1A2DC 801A3254 21084100 */  addu       $at, $v0, $at
    /* 1A2E0 801A3258 258F2390 */  lbu        $v1, -0x70DB($at)
    /* 1A2E4 801A325C FF000224 */  addiu      $v0, $zero, 0xFF
    /* 1A2E8 801A3260 03006214 */  bne        $v1, $v0, .L801A3270
    /* 1A2EC 801A3264 21880000 */   addu      $s1, $zero, $zero
    /* 1A2F0 801A3268 21A00000 */  addu       $s4, $zero, $zero
  .L801A326C:
    /* 1A2F4 801A326C 21880000 */  addu       $s1, $zero, $zero
  .L801A3270:
    /* 1A2F8 801A3270 1E80133C */  lui        $s3, %hi(D_801D8D90)
    /* 1A2FC 801A3274 908D7326 */  addiu      $s3, $s3, %lo(D_801D8D90)
    /* 1A300 801A3278 06001024 */  addiu      $s0, $zero, 0x6
    /* 1A304 801A327C D6FF1224 */  addiu      $s2, $zero, -0x2A
    /* 1A308 801A3280 21200002 */  addu       $a0, $s0, $zero
  .L801A3284:
    /* 1A30C 801A3284 21280000 */  addu       $a1, $zero, $zero
    /* 1A310 801A3288 21306002 */  addu       $a2, $s3, $zero
    /* 1A314 801A328C 02000724 */  addiu      $a3, $zero, 0x2
    /* 1A318 801A3290 1E80013C */  lui        $at, %hi(D_801D8042)
    /* 1A31C 801A3294 21083000 */  addu       $at, $at, $s0
    /* 1A320 801A3298 42802390 */  lbu        $v1, %lo(D_801D8042)($at)
    /* 1A324 801A329C 01001026 */  addiu      $s0, $s0, 0x1
    /* 1A328 801A32A0 020072A6 */  sh         $s2, 0x2($s3)
    /* 1A32C 801A32A4 06005226 */  addiu      $s2, $s2, 0x6
    /* 1A330 801A32A8 01003126 */  addiu      $s1, $s1, 0x1
    /* 1A334 801A32AC DFFF0224 */  addiu      $v0, $zero, -0x21
    /* 1A338 801A32B0 000062A6 */  sh         $v0, 0x0($s3)
    /* 1A33C 801A32B4 03000224 */  addiu      $v0, $zero, 0x3
    /* 1A340 801A32B8 060062A6 */  sh         $v0, 0x6($s3)
    /* 1A344 801A32BC FF008232 */  andi       $v0, $s4, 0xFF
    /* 1A348 801A32C0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1A34C 801A32C4 40180300 */  sll        $v1, $v1, 1
    /* 1A350 801A32C8 0C006824 */  addiu      $t0, $v1, 0xC
    /* 1A354 801A32CC 1E80033C */  lui        $v1, %hi(D_801DA060)
    /* 1A358 801A32D0 60A0638C */  lw         $v1, %lo(D_801DA060)($v1)
    /* 1A35C 801A32D4 08000224 */  addiu      $v0, $zero, 0x8
    /* 1A360 801A32D8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1A364 801A32DC 23104300 */  subu       $v0, $v0, $v1
    /* 1A368 801A32E0 40100200 */  sll        $v0, $v0, 1
    /* 1A36C 801A32E4 23180201 */  subu       $v1, $t0, $v0
    /* 1A370 801A32E8 3B50060C */  jal        func_801940EC
    /* 1A374 801A32EC 040063A6 */   sh        $v1, 0x4($s3)
    /* 1A378 801A32F0 0500222A */  slti       $v0, $s1, 0x5
    /* 1A37C 801A32F4 E3FF4014 */  bnez       $v0, .L801A3284
    /* 1A380 801A32F8 21200002 */   addu      $a0, $s0, $zero
    /* 1A384 801A32FC 21880000 */  addu       $s1, $zero, $zero
    /* 1A388 801A3300 21806002 */  addu       $s0, $s3, $zero
    /* 1A38C 801A3304 0B001224 */  addiu      $s2, $zero, 0xB
    /* 1A390 801A3308 1D80023C */  lui        $v0, %hi(D_801D1F84)
    /* 1A394 801A330C 841F4290 */  lbu        $v0, %lo(D_801D1F84)($v0)
    /* 1A398 801A3310 1D80033C */  lui        $v1, %hi(D_801D1F85)
    /* 1A39C 801A3314 851F6390 */  lbu        $v1, %lo(D_801D1F85)($v1)
    /* 1A3A0 801A3318 1D80043C */  lui        $a0, %hi(D_801D1F86)
    /* 1A3A4 801A331C 861F8490 */  lbu        $a0, %lo(D_801D1F86)($a0)
    /* 1A3A8 801A3320 1D80053C */  lui        $a1, %hi(D_801D1F87)
    /* 1A3AC 801A3324 871FA590 */  lbu        $a1, %lo(D_801D1F87)($a1)
    /* 1A3B0 801A3328 1D80063C */  lui        $a2, %hi(D_801D1F88)
    /* 1A3B4 801A332C 881FC690 */  lbu        $a2, %lo(D_801D1F88)($a2)
    /* 1A3B8 801A3330 1D80073C */  lui        $a3, %hi(D_801D1F89)
    /* 1A3BC 801A3334 891FE790 */  lbu        $a3, %lo(D_801D1F89)($a3)
    /* 1A3C0 801A3338 D6FF1324 */  addiu      $s3, $zero, -0x2A
    /* 1A3C4 801A333C 080002A2 */  sb         $v0, 0x8($s0)
    /* 1A3C8 801A3340 090003A2 */  sb         $v1, 0x9($s0)
    /* 1A3CC 801A3344 0A0004A2 */  sb         $a0, 0xA($s0)
    /* 1A3D0 801A3348 0B0005A2 */  sb         $a1, 0xB($s0)
    /* 1A3D4 801A334C 0C0006A2 */  sb         $a2, 0xC($s0)
    /* 1A3D8 801A3350 0D0007A2 */  sb         $a3, 0xD($s0)
    /* 1A3DC 801A3354 0E0002A2 */  sb         $v0, 0xE($s0)
    /* 1A3E0 801A3358 0F0003A2 */  sb         $v1, 0xF($s0)
    /* 1A3E4 801A335C 100004A2 */  sb         $a0, 0x10($s0)
    /* 1A3E8 801A3360 110005A2 */  sb         $a1, 0x11($s0)
    /* 1A3EC 801A3364 120006A2 */  sb         $a2, 0x12($s0)
    /* 1A3F0 801A3368 130007A2 */  sb         $a3, 0x13($s0)
    /* 1A3F4 801A336C 21204002 */  addu       $a0, $s2, $zero
  .L801A3370:
    /* 1A3F8 801A3370 21280000 */  addu       $a1, $zero, $zero
    /* 1A3FC 801A3374 21300002 */  addu       $a2, $s0, $zero
    /* 1A400 801A3378 02000724 */  addiu      $a3, $zero, 0x2
    /* 1A404 801A337C 1E80013C */  lui        $at, %hi(D_801D8042)
    /* 1A408 801A3380 21083200 */  addu       $at, $at, $s2
    /* 1A40C 801A3384 42802390 */  lbu        $v1, %lo(D_801D8042)($at)
    /* 1A410 801A3388 01005226 */  addiu      $s2, $s2, 0x1
    /* 1A414 801A338C 020013A6 */  sh         $s3, 0x2($s0)
    /* 1A418 801A3390 06007326 */  addiu      $s3, $s3, 0x6
    /* 1A41C 801A3394 01003126 */  addiu      $s1, $s1, 0x1
    /* 1A420 801A3398 03000224 */  addiu      $v0, $zero, 0x3
    /* 1A424 801A339C 060002A6 */  sh         $v0, 0x6($s0)
    /* 1A428 801A33A0 FF00A232 */  andi       $v0, $s5, 0xFF
    /* 1A42C 801A33A4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1A430 801A33A8 1E80023C */  lui        $v0, %hi(D_801DA064)
    /* 1A434 801A33AC 64A0428C */  lw         $v0, %lo(D_801DA064)($v0)
    /* 1A438 801A33B0 08001424 */  addiu      $s4, $zero, 0x8
    /* 1A43C 801A33B4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1A440 801A33B8 40180300 */  sll        $v1, $v1, 1
    /* 1A444 801A33BC 0C006824 */  addiu      $t0, $v1, 0xC
    /* 1A448 801A33C0 23108202 */  subu       $v0, $s4, $v0
    /* 1A44C 801A33C4 40100200 */  sll        $v0, $v0, 1
    /* 1A450 801A33C8 23180201 */  subu       $v1, $t0, $v0
    /* 1A454 801A33CC 21000224 */  addiu      $v0, $zero, 0x21
    /* 1A458 801A33D0 23104300 */  subu       $v0, $v0, $v1
    /* 1A45C 801A33D4 000002A6 */  sh         $v0, 0x0($s0)
    /* 1A460 801A33D8 3B50060C */  jal        func_801940EC
    /* 1A464 801A33DC 040003A6 */   sh        $v1, 0x4($s0)
    /* 1A468 801A33E0 0500222A */  slti       $v0, $s1, 0x5
    /* 1A46C 801A33E4 E2FF4014 */  bnez       $v0, .L801A3370
    /* 1A470 801A33E8 21204002 */   addu      $a0, $s2, $zero
    /* 1A474 801A33EC 1E80023C */  lui        $v0, %hi(D_801DA060)
    /* 1A478 801A33F0 60A0428C */  lw         $v0, %lo(D_801DA060)($v0)
    /* 1A47C 801A33F4 00000000 */  nop
    /* 1A480 801A33F8 01004224 */  addiu      $v0, $v0, 0x1
    /* 1A484 801A33FC 1E80013C */  lui        $at, %hi(D_801DA060)
    /* 1A488 801A3400 60A022AC */  sw         $v0, %lo(D_801DA060)($at)
    /* 1A48C 801A3404 09004228 */  slti       $v0, $v0, 0x9
    /* 1A490 801A3408 03004014 */  bnez       $v0, .L801A3418
    /* 1A494 801A340C 00000000 */   nop
    /* 1A498 801A3410 1E80013C */  lui        $at, %hi(D_801DA060)
    /* 1A49C 801A3414 60A034AC */  sw         $s4, %lo(D_801DA060)($at)
  .L801A3418:
    /* 1A4A0 801A3418 1E80023C */  lui        $v0, %hi(D_801DA064)
    /* 1A4A4 801A341C 64A0428C */  lw         $v0, %lo(D_801DA064)($v0)
    /* 1A4A8 801A3420 00000000 */  nop
    /* 1A4AC 801A3424 01004224 */  addiu      $v0, $v0, 0x1
    /* 1A4B0 801A3428 1E80013C */  lui        $at, %hi(D_801DA064)
    /* 1A4B4 801A342C 64A022AC */  sw         $v0, %lo(D_801DA064)($at)
    /* 1A4B8 801A3430 09004228 */  slti       $v0, $v0, 0x9
    /* 1A4BC 801A3434 03004014 */  bnez       $v0, .L801A3444
    /* 1A4C0 801A3438 00000000 */   nop
    /* 1A4C4 801A343C 1E80013C */  lui        $at, %hi(D_801DA064)
    /* 1A4C8 801A3440 64A034AC */  sw         $s4, %lo(D_801DA064)($at)
  .L801A3444:
    /* 1A4CC 801A3444 3000BF8F */  lw         $ra, 0x30($sp)
    /* 1A4D0 801A3448 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 1A4D4 801A344C 2800B48F */  lw         $s4, 0x28($sp)
    /* 1A4D8 801A3450 2400B38F */  lw         $s3, 0x24($sp)
    /* 1A4DC 801A3454 2000B28F */  lw         $s2, 0x20($sp)
    /* 1A4E0 801A3458 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 1A4E4 801A345C 1800B08F */  lw         $s0, 0x18($sp)
    /* 1A4E8 801A3460 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 1A4EC 801A3464 0800E003 */  jr         $ra
    /* 1A4F0 801A3468 00000000 */   nop
endlabel func_801A30F4
