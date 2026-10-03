nonmatching func_8001F2D0, 0x110

glabel func_8001F2D0
    /* FAD0 8001F2D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* FAD4 8001F2D4 21200000 */  addu       $a0, $zero, $zero
    /* FAD8 8001F2D8 1400BFAF */  sw         $ra, 0x14($sp)
    /* FADC 8001F2DC DA3E010C */  jal        func_8004FB68
    /* FAE0 8001F2E0 1000B0AF */   sw        $s0, 0x10($sp)
    /* FAE4 8001F2E4 801F043C */  lui        $a0, (0x1F8002F4 >> 16)
    /* FAE8 8001F2E8 F402848C */  lw         $a0, (0x1F8002F4 & 0xFFFF)($a0)
    /* FAEC 8001F2EC E81D010C */  jal        func_800477A0
    /* FAF0 8001F2F0 05000524 */   addiu     $a1, $zero, 0x5
    /* FAF4 8001F2F4 801F033C */  lui        $v1, (0x1F8002A8 >> 16)
    /* FAF8 8001F2F8 A8026390 */  lbu        $v1, (0x1F8002A8 & 0xFFFF)($v1)
    /* FAFC 8001F2FC AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* FB00 8001F300 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* FB04 8001F304 19006200 */  multu      $v1, $v0
    /* FB08 8001F308 21280000 */  addu       $a1, $zero, $zero
    /* FB0C 8001F30C 1080063C */  lui        $a2, %hi(D_800FF748)
    /* FB10 8001F310 48F7C624 */  addiu      $a2, $a2, %lo(D_800FF748)
    /* FB14 8001F314 10380000 */  mfhi       $a3
    /* FB18 8001F318 02210700 */  srl        $a0, $a3, 4
    /* FB1C 8001F31C 40100400 */  sll        $v0, $a0, 1
    /* FB20 8001F320 21104400 */  addu       $v0, $v0, $a0
    /* FB24 8001F324 C0100200 */  sll        $v0, $v0, 3
    /* FB28 8001F328 23186200 */  subu       $v1, $v1, $v0
    /* FB2C 8001F32C FF006330 */  andi       $v1, $v1, 0xFF
    /* FB30 8001F330 40210300 */  sll        $a0, $v1, 5
    /* FB34 8001F334 23208300 */  subu       $a0, $a0, $v1
    /* FB38 8001F338 80200400 */  sll        $a0, $a0, 2
    /* FB3C 8001F33C 21208300 */  addu       $a0, $a0, $v1
    /* FB40 8001F340 C0200400 */  sll        $a0, $a0, 3
    /* FB44 8001F344 2558020C */  jal        func_80096094
    /* FB48 8001F348 21208600 */   addu      $a0, $a0, $a2
    /* FB4C 8001F34C 801F023C */  lui        $v0, (0x1F800309 >> 16)
    /* FB50 8001F350 09034290 */  lbu        $v0, (0x1F800309 & 0xFFFF)($v0)
    /* FB54 8001F354 00000000 */  nop
    /* FB58 8001F358 1C004010 */  beqz       $v0, .L8001F3CC
    /* FB5C 8001F35C 801F103C */   lui       $s0, (0x1F8002A1 >> 16)
    /* FB60 8001F360 3681000C */  jal        func_800204D8
    /* FB64 8001F364 00000000 */   nop
    /* FB68 8001F368 801F033C */  lui        $v1, (0x1F8002E1 >> 16)
    /* FB6C 8001F36C E1026390 */  lbu        $v1, (0x1F8002E1 & 0xFFFF)($v1)
    /* FB70 8001F370 05000224 */  addiu      $v0, $zero, 0x5
    /* FB74 8001F374 05006210 */  beq        $v1, $v0, .L8001F38C
    /* FB78 8001F378 00000000 */   nop
    /* FB7C 8001F37C 633D010C */  jal        func_8004F58C
    /* FB80 8001F380 09000424 */   addiu     $a0, $zero, 0x9
    /* FB84 8001F384 E47C0008 */  j          .L8001F390
    /* FB88 8001F388 1A050424 */   addiu     $a0, $zero, 0x51A
  .L8001F38C:
    /* FB8C 8001F38C E8140424 */  addiu      $a0, $zero, 0x14E8
  .L8001F390:
    /* FB90 8001F390 88AD020C */  jal        func_800AB620
    /* FB94 8001F394 00000000 */   nop
    /* FB98 8001F398 88AD020C */  jal        func_800AB620
    /* FB9C 8001F39C 17050424 */   addiu     $a0, $zero, 0x517
    /* FBA0 8001F3A0 F65E010C */  jal        func_80057BD8
    /* FBA4 8001F3A4 00000000 */   nop
    /* FBA8 8001F3A8 E1020292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s0)
    /* FBAC 8001F3AC 05000324 */  addiu      $v1, $zero, 0x5
    /* FBB0 8001F3B0 FF004230 */  andi       $v0, $v0, 0xFF
    /* FBB4 8001F3B4 03004314 */  bne        $v0, $v1, .L8001F3C4
    /* FBB8 8001F3B8 940200A6 */   sh        $zero, (0x1F800294 & 0xFFFF)($s0)
    /* FBBC 8001F3BC 01000224 */  addiu      $v0, $zero, 0x1
    /* FBC0 8001F3C0 A10202A2 */  sb         $v0, (0x1F8002A1 & 0xFFFF)($s0)
  .L8001F3C4:
    /* FBC4 8001F3C4 835C000C */  jal        func_8001720C
    /* FBC8 8001F3C8 00000000 */   nop
  .L8001F3CC:
    /* FBCC 8001F3CC 1400BF8F */  lw         $ra, 0x14($sp)
    /* FBD0 8001F3D0 1000B08F */  lw         $s0, 0x10($sp)
    /* FBD4 8001F3D4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* FBD8 8001F3D8 0800E003 */  jr         $ra
    /* FBDC 8001F3DC 00000000 */   nop
endlabel func_8001F2D0
