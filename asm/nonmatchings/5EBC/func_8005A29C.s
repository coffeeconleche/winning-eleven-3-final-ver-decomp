nonmatching func_8005A29C, 0x228

glabel func_8005A29C
    /* 4AA9C 8005A29C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4AAA0 8005A2A0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4AAA4 8005A2A4 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 4AAA8 8005A2A8 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 4AAAC 8005A2AC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4AAB0 8005A2B0 801F113C */  lui        $s1, (0x1F8002E1 >> 16)
    /* 4AAB4 8005A2B4 801F033C */  lui        $v1, (0x1F8002B0 >> 16)
    /* 4AAB8 8005A2B8 B002638C */  lw         $v1, (0x1F8002B0 & 0xFFFF)($v1)
    /* 4AABC 8005A2BC 04000224 */  addiu      $v0, $zero, 0x4
    /* 4AAC0 8005A2C0 7A006214 */  bne        $v1, $v0, .L8005A4AC
    /* 4AAC4 8005A2C4 1800BFAF */   sw        $ra, 0x18($sp)
    /* 4AAC8 8005A2C8 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 4AACC 8005A2CC F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 4AAD0 8005A2D0 99038390 */  lbu        $v1, 0x399($a0)
    /* 4AAD4 8005A2D4 A4034590 */  lbu        $a1, 0x3A4($v0)
    /* 4AAD8 8005A2D8 C0190300 */  sll        $v1, $v1, 7
    /* 4AADC 8005A2DC 23106500 */  subu       $v0, $v1, $a1
    /* 4AAE0 8005A2E0 FF004430 */  andi       $a0, $v0, 0xFF
    /* 4AAE4 8005A2E4 8100822C */  sltiu      $v0, $a0, 0x81
    /* 4AAE8 8005A2E8 04004014 */  bnez       $v0, .L8005A2FC
    /* 4AAEC 8005A2EC 2310A300 */   subu      $v0, $a1, $v1
    /* 4AAF0 8005A2F0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 4AAF4 8005A2F4 C0680108 */  j          .L8005A300
    /* 4AAF8 8005A2F8 31004228 */   slti      $v0, $v0, 0x31
  .L8005A2FC:
    /* 4AAFC 8005A2FC 31008228 */  slti       $v0, $a0, 0x31
  .L8005A300:
    /* 4AB00 8005A300 6A004010 */  beqz       $v0, .L8005A4AC
    /* 4AB04 8005A304 05000324 */   addiu     $v1, $zero, 0x5
    /* 4AB08 8005A308 E1022292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s1)
    /* 4AB0C 8005A30C 00000000 */  nop
    /* 4AB10 8005A310 FF004230 */  andi       $v0, $v0, 0xFF
    /* 4AB14 8005A314 03004310 */  beq        $v0, $v1, .L8005A324
    /* 4AB18 8005A318 00000000 */   nop
    /* 4AB1C 8005A31C 88AD020C */  jal        func_800AB620
    /* 4AB20 8005A320 1C050424 */   addiu     $a0, $zero, 0x51C
  .L8005A324:
    /* 4AB24 8005A324 88AD020C */  jal        func_800AB620
    /* 4AB28 8005A328 10000424 */   addiu     $a0, $zero, 0x10
    /* 4AB2C 8005A32C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4AB30 8005A330 21080102 */  addu       $at, $s0, $at
    /* 4AB34 8005A334 4FAC2390 */  lbu        $v1, -0x53B1($at)
    /* 4AB38 8005A338 04000224 */  addiu      $v0, $zero, 0x4
    /* 4AB3C 8005A33C 10006214 */  bne        $v1, $v0, .L8005A380
    /* 4AB40 8005A340 00000000 */   nop
    /* 4AB44 8005A344 AE79000C */  jal        func_8001E6B8
    /* 4AB48 8005A348 04000424 */   addiu     $a0, $zero, 0x4
    /* 4AB4C 8005A34C 0C004014 */  bnez       $v0, .L8005A380
    /* 4AB50 8005A350 00000000 */   nop
    /* 4AB54 8005A354 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4AB58 8005A358 21080102 */  addu       $at, $s0, $at
    /* 4AB5C 8005A35C 68AC2290 */  lbu        $v0, -0x5398($at)
    /* 4AB60 8005A360 00000000 */  nop
    /* 4AB64 8005A364 01004230 */  andi       $v0, $v0, 0x1
    /* 4AB68 8005A368 40100200 */  sll        $v0, $v0, 1
    /* 4AB6C 8005A36C 0C80013C */  lui        $at, %hi(D_800C7DB0)
    /* 4AB70 8005A370 21082200 */  addu       $at, $at, $v0
    /* 4AB74 8005A374 B07D2494 */  lhu        $a0, %lo(D_800C7DB0)($at)
    /* 4AB78 8005A378 1E690108 */  j          .L8005A478
    /* 4AB7C 8005A37C 00000000 */   nop
  .L8005A380:
    /* 4AB80 8005A380 F402238E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s1)
    /* 4AB84 8005A384 00000000 */  nop
    /* 4AB88 8005A388 C2036284 */  lh         $v0, 0x3C2($v1)
    /* 4AB8C 8005A38C 00000000 */  nop
    /* 4AB90 8005A390 02004104 */  bgez       $v0, .L8005A39C
    /* 4AB94 8005A394 00000000 */   nop
    /* 4AB98 8005A398 23100200 */  negu       $v0, $v0
  .L8005A39C:
    /* 4AB9C 8005A39C AEF94224 */  addiu      $v0, $v0, -0x652
    /* 4ABA0 8005A3A0 8102422C */  sltiu      $v0, $v0, 0x281
    /* 4ABA4 8005A3A4 14004010 */  beqz       $v0, .L8005A3F8
    /* 4ABA8 8005A3A8 00000000 */   nop
    /* 4ABAC 8005A3AC C4036284 */  lh         $v0, 0x3C4($v1)
    /* 4ABB0 8005A3B0 00000000 */  nop
    /* 4ABB4 8005A3B4 02004104 */  bgez       $v0, .L8005A3C0
    /* 4ABB8 8005A3B8 00000000 */   nop
    /* 4ABBC 8005A3BC 23100200 */  negu       $v0, $v0
  .L8005A3C0:
    /* 4ABC0 8005A3C0 170A4228 */  slti       $v0, $v0, 0xA17
    /* 4ABC4 8005A3C4 0C004010 */  beqz       $v0, .L8005A3F8
    /* 4ABC8 8005A3C8 00000000 */   nop
    /* 4ABCC 8005A3CC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4ABD0 8005A3D0 21080102 */  addu       $at, $s0, $at
    /* 4ABD4 8005A3D4 68AC2290 */  lbu        $v0, -0x5398($at)
    /* 4ABD8 8005A3D8 00000000 */  nop
    /* 4ABDC 8005A3DC 01004230 */  andi       $v0, $v0, 0x1
    /* 4ABE0 8005A3E0 40100200 */  sll        $v0, $v0, 1
    /* 4ABE4 8005A3E4 0C80013C */  lui        $at, %hi(D_800C7DB4)
    /* 4ABE8 8005A3E8 21082200 */  addu       $at, $at, $v0
    /* 4ABEC 8005A3EC B47D2494 */  lhu        $a0, %lo(D_800C7DB4)($at)
    /* 4ABF0 8005A3F0 1E690108 */  j          .L8005A478
    /* 4ABF4 8005A3F4 00000000 */   nop
  .L8005A3F8:
    /* 4ABF8 8005A3F8 C6036284 */  lh         $v0, 0x3C6($v1)
    /* 4ABFC 8005A3FC 00000000 */  nop
    /* 4AC00 8005A400 02004104 */  bgez       $v0, .L8005A40C
    /* 4AC04 8005A404 00000000 */   nop
    /* 4AC08 8005A408 23100200 */  negu       $v0, $v0
  .L8005A40C:
    /* 4AC0C 8005A40C 92034228 */  slti       $v0, $v0, 0x392
    /* 4AC10 8005A410 26004010 */  beqz       $v0, .L8005A4AC
    /* 4AC14 8005A414 00000000 */   nop
    /* 4AC18 8005A418 C4036284 */  lh         $v0, 0x3C4($v1)
    /* 4AC1C 8005A41C 04006384 */  lh         $v1, 0x4($v1)
    /* 4AC20 8005A420 40004224 */  addiu      $v0, $v0, 0x40
    /* 4AC24 8005A424 2A106200 */  slt        $v0, $v1, $v0
    /* 4AC28 8005A428 20004010 */  beqz       $v0, .L8005A4AC
    /* 4AC2C 8005A42C 9AFD6228 */   slti      $v0, $v1, -0x266
    /* 4AC30 8005A430 1E004010 */  beqz       $v0, .L8005A4AC
    /* 4AC34 8005A434 04000224 */   addiu     $v0, $zero, 0x4
    /* 4AC38 8005A438 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4AC3C 8005A43C 21080102 */  addu       $at, $s0, $at
    /* 4AC40 8005A440 4FAC2490 */  lbu        $a0, -0x53B1($at)
    /* 4AC44 8005A444 00000000 */  nop
    /* 4AC48 8005A448 FF008330 */  andi       $v1, $a0, 0xFF
    /* 4AC4C 8005A44C 04006210 */  beq        $v1, $v0, .L8005A460
    /* 4AC50 8005A450 FAFF8224 */   addiu     $v0, $a0, -0x6
    /* 4AC54 8005A454 0200422C */  sltiu      $v0, $v0, 0x2
    /* 4AC58 8005A458 14004010 */  beqz       $v0, .L8005A4AC
    /* 4AC5C 8005A45C 00000000 */   nop
  .L8005A460:
    /* 4AC60 8005A460 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4AC64 8005A464 21080102 */  addu       $at, $s0, $at
    /* 4AC68 8005A468 68AC2490 */  lbu        $a0, -0x5398($at)
    /* 4AC6C 8005A46C 00000000 */  nop
    /* 4AC70 8005A470 03008430 */  andi       $a0, $a0, 0x3
    /* 4AC74 8005A474 280D8434 */  ori        $a0, $a0, 0xD28
  .L8005A478:
    /* 4AC78 8005A478 88AD020C */  jal        func_800AB620
    /* 4AC7C 8005A47C 00000000 */   nop
    /* 4AC80 8005A480 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4AC84 8005A484 21080102 */  addu       $at, $s0, $at
    /* 4AC88 8005A488 68AC2290 */  lbu        $v0, -0x5398($at)
    /* 4AC8C 8005A48C 01000324 */  addiu      $v1, $zero, 0x1
    /* 4AC90 8005A490 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4AC94 8005A494 21080102 */  addu       $at, $s0, $at
    /* 4AC98 8005A498 75AC23A0 */  sb         $v1, -0x538B($at)
    /* 4AC9C 8005A49C 01004224 */  addiu      $v0, $v0, 0x1
    /* 4ACA0 8005A4A0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4ACA4 8005A4A4 21080102 */  addu       $at, $s0, $at
    /* 4ACA8 8005A4A8 68AC22A0 */  sb         $v0, -0x5398($at)
  .L8005A4AC:
    /* 4ACAC 8005A4AC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 4ACB0 8005A4B0 1400B18F */  lw         $s1, 0x14($sp)
    /* 4ACB4 8005A4B4 1000B08F */  lw         $s0, 0x10($sp)
    /* 4ACB8 8005A4B8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4ACBC 8005A4BC 0800E003 */  jr         $ra
    /* 4ACC0 8005A4C0 00000000 */   nop
endlabel func_8005A29C
