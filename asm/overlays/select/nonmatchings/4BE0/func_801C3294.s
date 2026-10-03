nonmatching func_801C3294, 0x5F4

glabel func_801C3294
    /* 3A31C 801C3294 801F033C */  lui        $v1, (0x1F80029B >> 16)
    /* 3A320 801C3298 9B026390 */  lbu        $v1, (0x1F80029B & 0xFFFF)($v1)
    /* 3A324 801C329C 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 3A328 801C32A0 5000B2AF */  sw         $s2, 0x50($sp)
    /* 3A32C 801C32A4 1080123C */  lui        $s2, %hi(D_800FF748)
    /* 3A330 801C32A8 48F75226 */  addiu      $s2, $s2, %lo(D_800FF748)
    /* 3A334 801C32AC 4800B0AF */  sw         $s0, 0x48($sp)
    /* 3A338 801C32B0 801F103C */  lui        $s0, (0x1F80029B >> 16)
    /* 3A33C 801C32B4 6000BFAF */  sw         $ra, 0x60($sp)
    /* 3A340 801C32B8 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 3A344 801C32BC 5800B4AF */  sw         $s4, 0x58($sp)
    /* 3A348 801C32C0 5400B3AF */  sw         $s3, 0x54($sp)
    /* 3A34C 801C32C4 0600622C */  sltiu      $v0, $v1, 0x6
    /* 3A350 801C32C8 65014010 */  beqz       $v0, .L801C3860
    /* 3A354 801C32CC 4C00B1AF */   sw        $s1, 0x4C($sp)
    /* 3A358 801C32D0 80100300 */  sll        $v0, $v1, 2
    /* 3A35C 801C32D4 1980013C */  lui        $at, %hi(jtbl_8018BDE4)
    /* 3A360 801C32D8 21082200 */  addu       $at, $at, $v0
    /* 3A364 801C32DC E4BD228C */  lw         $v0, %lo(jtbl_8018BDE4)($at)
    /* 3A368 801C32E0 00000000 */  nop
    /* 3A36C 801C32E4 08004000 */  jr         $v0
    /* 3A370 801C32E8 00000000 */   nop
  jlabel .L801C32EC
    /* 3A374 801C32EC 01001124 */  addiu      $s1, $zero, 0x1
    /* 3A378 801C32F0 1E80013C */  lui        $at, %hi(D_801D8A50)
    /* 3A37C 801C32F4 508A31A0 */  sb         $s1, %lo(D_801D8A50)($at)
    /* 3A380 801C32F8 7C12070C */  jal        func_801C49F0
    /* 3A384 801C32FC 01000424 */   addiu     $a0, $zero, 0x1
    /* 3A388 801C3300 1D80033C */  lui        $v1, %hi(D_801D4298)
    /* 3A38C 801C3304 98426390 */  lbu        $v1, %lo(D_801D4298)($v1)
    /* 3A390 801C3308 00000000 */  nop
    /* 3A394 801C330C 15006010 */  beqz       $v1, .L801C3364
    /* 3A398 801C3310 A20200A2 */   sb        $zero, (0x1F8002A2 & 0xFFFF)($s0)
    /* 3A39C 801C3314 07000224 */  addiu      $v0, $zero, 0x7
    /* 3A3A0 801C3318 12006210 */  beq        $v1, $v0, .L801C3364
    /* 3A3A4 801C331C 08000224 */   addiu     $v0, $zero, 0x8
    /* 3A3A8 801C3320 02006214 */  bne        $v1, $v0, .L801C332C
    /* 3A3AC 801C3324 00000000 */   nop
    /* 3A3B0 801C3328 C45D40A2 */  sb         $zero, 0x5DC4($s2)
  .L801C332C:
    /* 3A3B4 801C332C 1D80033C */  lui        $v1, %hi(D_801D4298)
    /* 3A3B8 801C3330 98426390 */  lbu        $v1, %lo(D_801D4298)($v1)
    /* 3A3BC 801C3334 00000000 */  nop
    /* 3A3C0 801C3338 FDFF6224 */  addiu      $v0, $v1, -0x3
    /* 3A3C4 801C333C 0200422C */  sltiu      $v0, $v0, 0x2
    /* 3A3C8 801C3340 05004014 */  bnez       $v0, .L801C3358
    /* 3A3CC 801C3344 9B0211A2 */   sb        $s1, (0x1F80029B & 0xFFFF)($s0)
    /* 3A3D0 801C3348 FF006330 */  andi       $v1, $v1, 0xFF
    /* 3A3D4 801C334C 06000224 */  addiu      $v0, $zero, 0x6
    /* 3A3D8 801C3350 43016214 */  bne        $v1, $v0, .L801C3860
    /* 3A3DC 801C3354 00000000 */   nop
  .L801C3358:
    /* 3A3E0 801C3358 02000224 */  addiu      $v0, $zero, 0x2
    /* 3A3E4 801C335C 180E0708 */  j          .L801C3860
    /* 3A3E8 801C3360 9B0202A2 */   sb        $v0, (0x1F80029B & 0xFFFF)($s0)
  .L801C3364:
    /* 3A3EC 801C3364 9B020292 */  lbu        $v0, (0x1F80029B & 0xFFFF)($s0)
    /* 3A3F0 801C3368 00000000 */  nop
    /* 3A3F4 801C336C 02004224 */  addiu      $v0, $v0, 0x2
    /* 3A3F8 801C3370 180E0708 */  j          .L801C3860
    /* 3A3FC 801C3374 9B0202A2 */   sb        $v0, (0x1F80029B & 0xFFFF)($s0)
  jlabel .L801C3378
    /* 3A400 801C3378 9B0E070C */  jal        func_801C3A6C
    /* 3A404 801C337C 00000000 */   nop
    /* 3A408 801C3380 9B020292 */  lbu        $v0, 0x29B($s0)
    /* 3A40C 801C3384 00000000 */  nop
    /* 3A410 801C3388 01004224 */  addiu      $v0, $v0, 0x1
    /* 3A414 801C338C 9B0202A2 */  sb         $v0, 0x29B($s0)
  jlabel .L801C3390
    /* 3A418 801C3390 1D80033C */  lui        $v1, %hi(D_801D4298)
    /* 3A41C 801C3394 98426390 */  lbu        $v1, %lo(D_801D4298)($v1)
    /* 3A420 801C3398 00000000 */  nop
    /* 3A424 801C339C 56006010 */  beqz       $v1, .L801C34F8
    /* 3A428 801C33A0 07000224 */   addiu     $v0, $zero, 0x7
    /* 3A42C 801C33A4 54006210 */  beq        $v1, $v0, .L801C34F8
    /* 3A430 801C33A8 00000000 */   nop
    /* 3A434 801C33AC 1D80023C */  lui        $v0, %hi(D_801D429B)
    /* 3A438 801C33B0 9B424290 */  lbu        $v0, %lo(D_801D429B)($v0)
    /* 3A43C 801C33B4 00000000 */  nop
    /* 3A440 801C33B8 05004014 */  bnez       $v0, .L801C33D0
    /* 3A444 801C33BC 03000424 */   addiu     $a0, $zero, 0x3
    /* 3A448 801C33C0 12000224 */  addiu      $v0, $zero, 0x12
    /* 3A44C 801C33C4 300300A2 */  sb         $zero, 0x330($s0)
    /* 3A450 801C33C8 1D80013C */  lui        $at, %hi(D_801D429B)
    /* 3A454 801C33CC 9B4222A0 */  sb         $v0, %lo(D_801D429B)($at)
  .L801C33D0:
    /* 3A458 801C33D0 0060053C */  lui        $a1, (0x60000000 >> 16)
    /* 3A45C 801C33D4 21300000 */  addu       $a2, $zero, $zero
    /* 3A460 801C33D8 21380000 */  addu       $a3, $zero, $zero
    /* 3A464 801C33DC 90011524 */  addiu      $s5, $zero, 0x190
    /* 3A468 801C33E0 FD001424 */  addiu      $s4, $zero, 0xFD
    /* 3A46C 801C33E4 88FF1324 */  addiu      $s3, $zero, -0x78
    /* 3A470 801C33E8 FF001124 */  addiu      $s1, $zero, 0xFF
    /* 3A474 801C33EC 17001224 */  addiu      $s2, $zero, 0x17
    /* 3A478 801C33F0 1D80033C */  lui        $v1, %hi(D_801D4298)
    /* 3A47C 801C33F4 98426390 */  lbu        $v1, %lo(D_801D4298)($v1)
    /* 3A480 801C33F8 01000224 */  addiu      $v0, $zero, 0x1
    /* 3A484 801C33FC 1000B5AF */  sw         $s5, 0x10($sp)
    /* 3A488 801C3400 1400B4AF */  sw         $s4, 0x14($sp)
    /* 3A48C 801C3404 1800B3AF */  sw         $s3, 0x18($sp)
    /* 3A490 801C3408 2000B1AF */  sw         $s1, 0x20($sp)
    /* 3A494 801C340C 2400B1AF */  sw         $s1, 0x24($sp)
    /* 3A498 801C3410 2800B1AF */  sw         $s1, 0x28($sp)
    /* 3A49C 801C3414 2C00A0AF */  sw         $zero, 0x2C($sp)
    /* 3A4A0 801C3418 3000A0AF */  sw         $zero, 0x30($sp)
    /* 3A4A4 801C341C 3400A0AF */  sw         $zero, 0x34($sp)
    /* 3A4A8 801C3420 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 3A4AC 801C3424 4000A0AF */  sw         $zero, 0x40($sp)
    /* 3A4B0 801C3428 4400A2AF */  sw         $v0, 0x44($sp)
    /* 3A4B4 801C342C C0100300 */  sll        $v0, $v1, 3
    /* 3A4B8 801C3430 23104300 */  subu       $v0, $v0, $v1
    /* 3A4BC 801C3434 40100200 */  sll        $v0, $v0, 1
    /* 3A4C0 801C3438 1D80033C */  lui        $v1, %hi(D_801D429B)
    /* 3A4C4 801C343C 9B426390 */  lbu        $v1, %lo(D_801D429B)($v1)
    /* 3A4C8 801C3440 BAFF4224 */  addiu      $v0, $v0, -0x46
    /* 3A4CC 801C3444 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 3A4D0 801C3448 F813070C */  jal        func_801C4FE0
    /* 3A4D4 801C344C 3800A3AF */   sw        $v1, 0x38($sp)
    /* 3A4D8 801C3450 1D80033C */  lui        $v1, %hi(D_801D429B)
    /* 3A4DC 801C3454 9B426390 */  lbu        $v1, %lo(D_801D429B)($v1)
    /* 3A4E0 801C3458 CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 3A4E4 801C345C CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 3A4E8 801C3460 19006200 */  multu      $v1, $v0
    /* 3A4EC 801C3464 10400000 */  mfhi       $t0
    /* 3A4F0 801C3468 82100800 */  srl        $v0, $t0, 2
    /* 3A4F4 801C346C 01004224 */  addiu      $v0, $v0, 0x1
    /* 3A4F8 801C3470 23186200 */  subu       $v1, $v1, $v0
    /* 3A4FC 801C3474 1D80013C */  lui        $at, %hi(D_801D429B)
    /* 3A500 801C3478 9B4223A0 */  sb         $v1, %lo(D_801D429B)($at)
    /* 3A504 801C347C FF006330 */  andi       $v1, $v1, 0xFF
    /* 3A508 801C3480 F7006014 */  bnez       $v1, .L801C3860
    /* 3A50C 801C3484 03000424 */   addiu     $a0, $zero, 0x3
    /* 3A510 801C3488 0060053C */  lui        $a1, (0x60000000 >> 16)
    /* 3A514 801C348C 21300000 */  addu       $a2, $zero, $zero
    /* 3A518 801C3490 1D80033C */  lui        $v1, %hi(D_801D4298)
    /* 3A51C 801C3494 98426390 */  lbu        $v1, %lo(D_801D4298)($v1)
    /* 3A520 801C3498 21380000 */  addu       $a3, $zero, $zero
    /* 3A524 801C349C 1000B5AF */  sw         $s5, 0x10($sp)
    /* 3A528 801C34A0 1400B4AF */  sw         $s4, 0x14($sp)
    /* 3A52C 801C34A4 1800B3AF */  sw         $s3, 0x18($sp)
    /* 3A530 801C34A8 2000B1AF */  sw         $s1, 0x20($sp)
    /* 3A534 801C34AC 2400B1AF */  sw         $s1, 0x24($sp)
    /* 3A538 801C34B0 2800B1AF */  sw         $s1, 0x28($sp)
    /* 3A53C 801C34B4 2C00A0AF */  sw         $zero, 0x2C($sp)
    /* 3A540 801C34B8 3000A0AF */  sw         $zero, 0x30($sp)
    /* 3A544 801C34BC 3400A0AF */  sw         $zero, 0x34($sp)
    /* 3A548 801C34C0 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3A54C 801C34C4 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 3A550 801C34C8 4000A0AF */  sw         $zero, 0x40($sp)
    /* 3A554 801C34CC 4400A0AF */  sw         $zero, 0x44($sp)
    /* 3A558 801C34D0 C0100300 */  sll        $v0, $v1, 3
    /* 3A55C 801C34D4 23104300 */  subu       $v0, $v0, $v1
    /* 3A560 801C34D8 40100200 */  sll        $v0, $v0, 1
    /* 3A564 801C34DC BAFF4224 */  addiu      $v0, $v0, -0x46
    /* 3A568 801C34E0 F813070C */  jal        func_801C4FE0
    /* 3A56C 801C34E4 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* 3A570 801C34E8 9B020292 */  lbu        $v0, 0x29B($s0)
    /* 3A574 801C34EC 80000324 */  addiu      $v1, $zero, 0x80
    /* 3A578 801C34F0 F90D0708 */  j          .L801C37E4
    /* 3A57C 801C34F4 A20203A2 */   sb        $v1, 0x2A2($s0)
  .L801C34F8:
    /* 3A580 801C34F8 1710070C */  jal        func_801C405C
    /* 3A584 801C34FC 01000424 */   addiu     $a0, $zero, 0x1
    /* 3A588 801C3500 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3A58C 801C3504 D6004010 */  beqz       $v0, .L801C3860
    /* 3A590 801C3508 00000000 */   nop
    /* 3A594 801C350C 9B020292 */  lbu        $v0, 0x29B($s0)
    /* 3A598 801C3510 FA0D0708 */  j          .L801C37E8
    /* 3A59C 801C3514 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801C3518
    /* 3A5A0 801C3518 20BB010C */  jal        func_8006EC80
    /* 3A5A4 801C351C 21200000 */   addu      $a0, $zero, $zero
    /* 3A5A8 801C3520 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 3A5AC 801C3524 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 3A5B0 801C3528 7C12070C */  jal        func_801C49F0
    /* 3A5B4 801C352C 21200000 */   addu      $a0, $zero, $zero
    /* 3A5B8 801C3530 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 3A5BC 801C3534 A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 3A5C0 801C3538 40000224 */  addiu      $v0, $zero, 0x40
    /* 3A5C4 801C353C 22006210 */  beq        $v1, $v0, .L801C35C8
    /* 3A5C8 801C3540 41006228 */   slti      $v0, $v1, 0x41
    /* 3A5CC 801C3544 05004010 */  beqz       $v0, .L801C355C
    /* 3A5D0 801C3548 20000224 */   addiu     $v0, $zero, 0x20
    /* 3A5D4 801C354C 20006210 */  beq        $v1, $v0, .L801C35D0
    /* 3A5D8 801C3550 00000000 */   nop
    /* 3A5DC 801C3554 9A0D0708 */  j          .L801C3668
    /* 3A5E0 801C3558 00000000 */   nop
  .L801C355C:
    /* 3A5E4 801C355C 00100224 */  addiu      $v0, $zero, 0x1000
    /* 3A5E8 801C3560 0D006210 */  beq        $v1, $v0, .L801C3598
    /* 3A5EC 801C3564 00400224 */   addiu     $v0, $zero, 0x4000
    /* 3A5F0 801C3568 3F006214 */  bne        $v1, $v0, .L801C3668
    /* 3A5F4 801C356C 00000000 */   nop
    /* 3A5F8 801C3570 88AD020C */  jal        func_800AB620
    /* 3A5FC 801C3574 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 3A600 801C3578 1D80033C */  lui        $v1, %hi(D_801D4298)
    /* 3A604 801C357C 98426390 */  lbu        $v1, %lo(D_801D4298)($v1)
    /* 3A608 801C3580 00000000 */  nop
    /* 3A60C 801C3584 0800622C */  sltiu      $v0, $v1, 0x8
    /* 3A610 801C3588 0B004014 */  bnez       $v0, .L801C35B8
    /* 3A614 801C358C 01006224 */   addiu     $v0, $v1, 0x1
    /* 3A618 801C3590 6E0D0708 */  j          .L801C35B8
    /* 3A61C 801C3594 F8FF6224 */   addiu     $v0, $v1, -0x8
  .L801C3598:
    /* 3A620 801C3598 88AD020C */  jal        func_800AB620
    /* 3A624 801C359C 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 3A628 801C35A0 1D80023C */  lui        $v0, %hi(D_801D4298)
    /* 3A62C 801C35A4 98424290 */  lbu        $v0, %lo(D_801D4298)($v0)
    /* 3A630 801C35A8 00000000 */  nop
    /* 3A634 801C35AC 02004014 */  bnez       $v0, .L801C35B8
    /* 3A638 801C35B0 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 3A63C 801C35B4 08000224 */  addiu      $v0, $zero, 0x8
  .L801C35B8:
    /* 3A640 801C35B8 1D80013C */  lui        $at, %hi(D_801D4298)
    /* 3A644 801C35BC 984222A0 */  sb         $v0, %lo(D_801D4298)($at)
    /* 3A648 801C35C0 9A0D0708 */  j          .L801C3668
    /* 3A64C 801C35C4 00000000 */   nop
  .L801C35C8:
    /* 3A650 801C35C8 1D80013C */  lui        $at, %hi(D_801D4298)
    /* 3A654 801C35CC 984220A0 */  sb         $zero, %lo(D_801D4298)($at)
  .L801C35D0:
    /* 3A658 801C35D0 1D80023C */  lui        $v0, %hi(D_801D4298)
    /* 3A65C 801C35D4 98424290 */  lbu        $v0, %lo(D_801D4298)($v0)
    /* 3A660 801C35D8 00000000 */  nop
    /* 3A664 801C35DC 03004014 */  bnez       $v0, .L801C35EC
    /* 3A668 801C35E0 00000000 */   nop
    /* 3A66C 801C35E4 4849060C */  jal        func_80192520
    /* 3A670 801C35E8 21200000 */   addu      $a0, $zero, $zero
  .L801C35EC:
    /* 3A674 801C35EC 1D80033C */  lui        $v1, %hi(D_801D4298)
    /* 3A678 801C35F0 98426390 */  lbu        $v1, %lo(D_801D4298)($v1)
    /* 3A67C 801C35F4 00000000 */  nop
    /* 3A680 801C35F8 FDFF6224 */  addiu      $v0, $v1, -0x3
    /* 3A684 801C35FC 0200422C */  sltiu      $v0, $v0, 0x2
    /* 3A688 801C3600 04004014 */  bnez       $v0, .L801C3614
    /* 3A68C 801C3604 FF006330 */   andi      $v1, $v1, 0xFF
    /* 3A690 801C3608 06000224 */  addiu      $v0, $zero, 0x6
    /* 3A694 801C360C 07006214 */  bne        $v1, $v0, .L801C362C
    /* 3A698 801C3610 00000000 */   nop
  .L801C3614:
    /* 3A69C 801C3614 1D80023C */  lui        $v0, %hi(D_801D4298)
    /* 3A6A0 801C3618 98424290 */  lbu        $v0, %lo(D_801D4298)($v0)
    /* 3A6A4 801C361C 9B0200A2 */  sb         $zero, 0x29B($s0)
    /* 3A6A8 801C3620 10004224 */  addiu      $v0, $v0, 0x10
    /* 3A6AC 801C3624 8F0D0708 */  j          .L801C363C
    /* 3A6B0 801C3628 9A0202A2 */   sb        $v0, 0x29A($s0)
  .L801C362C:
    /* 3A6B4 801C362C 9B020292 */  lbu        $v0, 0x29B($s0)
    /* 3A6B8 801C3630 00000000 */  nop
    /* 3A6BC 801C3634 01004224 */  addiu      $v0, $v0, 0x1
    /* 3A6C0 801C3638 9B0202A2 */  sb         $v0, 0x29B($s0)
  .L801C363C:
    /* 3A6C4 801C363C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3A6C8 801C3640 21084102 */  addu       $at, $s2, $at
    /* 3A6CC 801C3644 DAAB20A0 */  sb         $zero, -0x5426($at)
    /* 3A6D0 801C3648 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 3A6D4 801C364C A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 3A6D8 801C3650 40000224 */  addiu      $v0, $zero, 0x40
    /* 3A6DC 801C3654 02006214 */  bne        $v1, $v0, .L801C3660
    /* 3A6E0 801C3658 28050424 */   addiu     $a0, $zero, 0x528
    /* 3A6E4 801C365C 29050424 */  addiu      $a0, $zero, 0x529
  .L801C3660:
    /* 3A6E8 801C3660 88AD020C */  jal        func_800AB620
    /* 3A6EC 801C3664 00000000 */   nop
  .L801C3668:
    /* 3A6F0 801C3668 1180023C */  lui        $v0, %hi(D_8010A5A4)
    /* 3A6F4 801C366C A4A54294 */  lhu        $v0, %lo(D_8010A5A4)($v0)
    /* 3A6F8 801C3670 00000000 */  nop
    /* 3A6FC 801C3674 7A004010 */  beqz       $v0, .L801C3860
    /* 3A700 801C3678 00000000 */   nop
    /* 3A704 801C367C 1D80043C */  lui        $a0, %hi(D_801D4298)
    /* 3A708 801C3680 98428480 */  lb         $a0, %lo(D_801D4298)($a0)
    /* 3A70C 801C3684 220E070C */  jal        func_801C3888
    /* 3A710 801C3688 00000000 */   nop
    /* 3A714 801C368C 21200000 */  addu       $a0, $zero, $zero
    /* 3A718 801C3690 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 3A71C 801C3694 38010224 */  addiu      $v0, $zero, 0x138
    /* 3A720 801C3698 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3A724 801C369C 03000224 */  addiu      $v0, $zero, 0x3
    /* 3A728 801C36A0 2400A2AF */  sw         $v0, 0x24($sp)
    /* 3A72C 801C36A4 1D80023C */  lui        $v0, %hi(D_801D4298)
    /* 3A730 801C36A8 98424290 */  lbu        $v0, %lo(D_801D4298)($v0)
    /* 3A734 801C36AC 01000324 */  addiu      $v1, $zero, 0x1
    /* 3A738 801C36B0 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3A73C 801C36B4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3A740 801C36B8 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 3A744 801C36BC 2000A0AF */  sw         $zero, 0x20($sp)
    /* 3A748 801C36C0 2800A3AF */  sw         $v1, 0x28($sp)
    /* 3A74C 801C36C4 2C00A3AF */  sw         $v1, 0x2C($sp)
    /* 3A750 801C36C8 80100200 */  sll        $v0, $v0, 2
    /* 3A754 801C36CC 1D80013C */  lui        $at, %hi(D_801D5848)
    /* 3A758 801C36D0 21082200 */  addu       $at, $at, $v0
    /* 3A75C 801C36D4 4858258C */  lw         $a1, %lo(D_801D5848)($at)
    /* 3A760 801C36D8 B850060C */  jal        func_801942E0
    /* 3A764 801C36DC 3E000724 */   addiu     $a3, $zero, 0x3E
    /* 3A768 801C36E0 180E0708 */  j          .L801C3860
    /* 3A76C 801C36E4 00000000 */   nop
  jlabel .L801C36E8
    /* 3A770 801C36E8 1D80033C */  lui        $v1, %hi(D_801D4298)
    /* 3A774 801C36EC 98426390 */  lbu        $v1, %lo(D_801D4298)($v1)
    /* 3A778 801C36F0 00000000 */  nop
    /* 3A77C 801C36F4 03006010 */  beqz       $v1, .L801C3704
    /* 3A780 801C36F8 07000224 */   addiu     $v0, $zero, 0x7
    /* 3A784 801C36FC 09006214 */  bne        $v1, $v0, .L801C3724
    /* 3A788 801C3700 03000424 */   addiu     $a0, $zero, 0x3
  .L801C3704:
    /* 3A78C 801C3704 1710070C */  jal        func_801C405C
    /* 3A790 801C3708 21200000 */   addu      $a0, $zero, $zero
    /* 3A794 801C370C FF004230 */  andi       $v0, $v0, 0xFF
    /* 3A798 801C3710 53004010 */  beqz       $v0, .L801C3860
    /* 3A79C 801C3714 00000000 */   nop
    /* 3A7A0 801C3718 9B020292 */  lbu        $v0, 0x29B($s0)
    /* 3A7A4 801C371C FA0D0708 */  j          .L801C37E8
    /* 3A7A8 801C3720 01004224 */   addiu     $v0, $v0, 0x1
  .L801C3724:
    /* 3A7AC 801C3724 0060053C */  lui        $a1, (0x60000000 >> 16)
    /* 3A7B0 801C3728 21300000 */  addu       $a2, $zero, $zero
    /* 3A7B4 801C372C 21380000 */  addu       $a3, $zero, $zero
    /* 3A7B8 801C3730 90010224 */  addiu      $v0, $zero, 0x190
    /* 3A7BC 801C3734 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3A7C0 801C3738 FD000224 */  addiu      $v0, $zero, 0xFD
    /* 3A7C4 801C373C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3A7C8 801C3740 88FF0224 */  addiu      $v0, $zero, -0x78
    /* 3A7CC 801C3744 1800A2AF */  sw         $v0, 0x18($sp)
    /* 3A7D0 801C3748 C0100300 */  sll        $v0, $v1, 3
    /* 3A7D4 801C374C 23104300 */  subu       $v0, $v0, $v1
    /* 3A7D8 801C3750 40100200 */  sll        $v0, $v0, 1
    /* 3A7DC 801C3754 1D80033C */  lui        $v1, %hi(D_801D429C)
    /* 3A7E0 801C3758 9C426390 */  lbu        $v1, %lo(D_801D429C)($v1)
    /* 3A7E4 801C375C BAFF4224 */  addiu      $v0, $v0, -0x46
    /* 3A7E8 801C3760 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 3A7EC 801C3764 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 3A7F0 801C3768 2000A2AF */  sw         $v0, 0x20($sp)
    /* 3A7F4 801C376C 2400A2AF */  sw         $v0, 0x24($sp)
    /* 3A7F8 801C3770 2800A2AF */  sw         $v0, 0x28($sp)
    /* 3A7FC 801C3774 17000224 */  addiu      $v0, $zero, 0x17
    /* 3A800 801C3778 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 3A804 801C377C 01000224 */  addiu      $v0, $zero, 0x1
    /* 3A808 801C3780 2C00A0AF */  sw         $zero, 0x2C($sp)
    /* 3A80C 801C3784 3000A0AF */  sw         $zero, 0x30($sp)
    /* 3A810 801C3788 3400A0AF */  sw         $zero, 0x34($sp)
    /* 3A814 801C378C 4000A0AF */  sw         $zero, 0x40($sp)
    /* 3A818 801C3790 4400A2AF */  sw         $v0, 0x44($sp)
    /* 3A81C 801C3794 F813070C */  jal        func_801C4FE0
    /* 3A820 801C3798 3800A3AF */   sw        $v1, 0x38($sp)
    /* 3A824 801C379C 1D80033C */  lui        $v1, %hi(D_801D429C)
    /* 3A828 801C37A0 9C426390 */  lbu        $v1, %lo(D_801D429C)($v1)
    /* 3A82C 801C37A4 00000000 */  nop
    /* 3A830 801C37A8 01006224 */  addiu      $v0, $v1, 0x1
    /* 3A834 801C37AC 82180300 */  srl        $v1, $v1, 2
    /* 3A838 801C37B0 21104300 */  addu       $v0, $v0, $v1
    /* 3A83C 801C37B4 1D80013C */  lui        $at, %hi(D_801D429C)
    /* 3A840 801C37B8 9C4222A0 */  sb         $v0, %lo(D_801D429C)($at)
    /* 3A844 801C37BC FF004230 */  andi       $v0, $v0, 0xFF
    /* 3A848 801C37C0 1800422C */  sltiu      $v0, $v0, 0x18
    /* 3A84C 801C37C4 26004014 */  bnez       $v0, .L801C3860
    /* 3A850 801C37C8 01000224 */   addiu     $v0, $zero, 0x1
    /* 3A854 801C37CC 1D80013C */  lui        $at, %hi(D_801D429C)
    /* 3A858 801C37D0 9C4222A0 */  sb         $v0, %lo(D_801D429C)($at)
    /* 3A85C 801C37D4 4E39060C */  jal        func_8018E538
    /* 3A860 801C37D8 21200000 */   addu      $a0, $zero, $zero
    /* 3A864 801C37DC 9B020292 */  lbu        $v0, 0x29B($s0)
    /* 3A868 801C37E0 A20200A2 */  sb         $zero, 0x2A2($s0)
  .L801C37E4:
    /* 3A86C 801C37E4 01004224 */  addiu      $v0, $v0, 0x1
  .L801C37E8:
    /* 3A870 801C37E8 180E0708 */  j          .L801C3860
    /* 3A874 801C37EC 9B0202A2 */   sb        $v0, 0x29B($s0)
  jlabel .L801C37F0
    /* 3A878 801C37F0 1D80033C */  lui        $v1, %hi(D_801D4298)
    /* 3A87C 801C37F4 98426390 */  lbu        $v1, %lo(D_801D4298)($v1)
    /* 3A880 801C37F8 08000224 */  addiu      $v0, $zero, 0x8
    /* 3A884 801C37FC 0A006214 */  bne        $v1, $v0, .L801C3828
    /* 3A888 801C3800 21200000 */   addu      $a0, $zero, $zero
    /* 3A88C 801C3804 300300A2 */  sb         $zero, 0x330($s0)
    /* 3A890 801C3808 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3A894 801C380C 21084102 */  addu       $at, $s2, $at
    /* 3A898 801C3810 D6AB20A4 */  sh         $zero, -0x542A($at)
    /* 3A89C 801C3814 B03E010C */  jal        func_8004FAC0
    /* 3A8A0 801C3818 21280000 */   addu      $a1, $zero, $zero
    /* 3A8A4 801C381C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3A8A8 801C3820 21084102 */  addu       $at, $s2, $at
    /* 3A8AC 801C3824 D9AB20A0 */  sb         $zero, -0x5427($at)
  .L801C3828:
    /* 3A8B0 801C3828 1D80023C */  lui        $v0, %hi(D_801D4298)
    /* 3A8B4 801C382C 98424290 */  lbu        $v0, %lo(D_801D4298)($v0)
    /* 3A8B8 801C3830 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3A8BC 801C3834 21084102 */  addu       $at, $s2, $at
    /* 3A8C0 801C3838 DAAB20A0 */  sb         $zero, -0x5426($at)
    /* 3A8C4 801C383C 06004014 */  bnez       $v0, .L801C3858
    /* 3A8C8 801C3840 9B0200A2 */   sb        $zero, 0x29B($s0)
    /* 3A8CC 801C3844 01000224 */  addiu      $v0, $zero, 0x1
    /* 3A8D0 801C3848 1D80013C */  lui        $at, %hi(D_801D4299)
    /* 3A8D4 801C384C 994222A0 */  sb         $v0, %lo(D_801D4299)($at)
    /* 3A8D8 801C3850 180E0708 */  j          .L801C3860
    /* 3A8DC 801C3854 9A0200A2 */   sb        $zero, 0x29A($s0)
  .L801C3858:
    /* 3A8E0 801C3858 10004224 */  addiu      $v0, $v0, 0x10
    /* 3A8E4 801C385C 9A0202A2 */  sb         $v0, 0x29A($s0)
  .L801C3860:
    /* 3A8E8 801C3860 6000BF8F */  lw         $ra, 0x60($sp)
    /* 3A8EC 801C3864 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 3A8F0 801C3868 5800B48F */  lw         $s4, 0x58($sp)
    /* 3A8F4 801C386C 5400B38F */  lw         $s3, 0x54($sp)
    /* 3A8F8 801C3870 5000B28F */  lw         $s2, 0x50($sp)
    /* 3A8FC 801C3874 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 3A900 801C3878 4800B08F */  lw         $s0, 0x48($sp)
    /* 3A904 801C387C 6800BD27 */  addiu      $sp, $sp, 0x68
    /* 3A908 801C3880 0800E003 */  jr         $ra
    /* 3A90C 801C3884 00000000 */   nop
endlabel func_801C3294
