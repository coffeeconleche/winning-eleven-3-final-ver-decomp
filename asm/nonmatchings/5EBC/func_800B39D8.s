nonmatching func_800B39D8, 0x4F8

glabel func_800B39D8
    /* A41D8 800B39D8 50FFBD27 */  addiu      $sp, $sp, -0xB0
    /* A41DC 800B39DC 9800B0AF */  sw         $s0, 0x98($sp)
    /* A41E0 800B39E0 21808000 */  addu       $s0, $a0, $zero
    /* A41E4 800B39E4 A400B3AF */  sw         $s3, 0xA4($sp)
    /* A41E8 800B39E8 2198A000 */  addu       $s3, $a1, $zero
    /* A41EC 800B39EC AC00BFAF */  sw         $ra, 0xAC($sp)
    /* A41F0 800B39F0 A800B4AF */  sw         $s4, 0xA8($sp)
    /* A41F4 800B39F4 A000B2AF */  sw         $s2, 0xA0($sp)
    /* A41F8 800B39F8 9C00B1AF */  sw         $s1, 0x9C($sp)
    /* A41FC 800B39FC 0000118E */  lw         $s1, 0x0($s0)
    /* A4200 800B3A00 00000000 */  nop
    /* A4204 800B3A04 2A012006 */  bltz       $s1, .L800B3EB0
    /* A4208 800B3A08 21A0C000 */   addu      $s4, $a2, $zero
    /* A420C 800B3A0C 08000296 */  lhu        $v0, 0x8($s0)
    /* A4210 800B3A10 00000000 */  nop
    /* A4214 800B3A14 26014010 */  beqz       $v0, .L800B3EB0
    /* A4218 800B3A18 00000000 */   nop
    /* A421C 800B3A1C 0A000296 */  lhu        $v0, 0xA($s0)
    /* A4220 800B3A20 00000000 */  nop
    /* A4224 800B3A24 22014010 */  beqz       $v0, .L800B3EB0
    /* A4228 800B3A28 21280000 */   addu      $a1, $zero, $zero
    /* A422C 800B3A2C 0010023C */  lui        $v0, (0x10001000 >> 16)
    /* A4230 800B3A30 00104234 */  ori        $v0, $v0, (0x10001000 & 0xFFFF)
    /* A4234 800B3A34 C21E1100 */  srl        $v1, $s1, 27
    /* A4238 800B3A38 1C00048E */  lw         $a0, 0x1C($s0)
    /* A423C 800B3A3C 0F80123C */  lui        $s2, %hi(D_800EF8A8)
    /* A4240 800B3A40 A8F8528E */  lw         $s2, %lo(D_800EF8A8)($s2)
    /* A4244 800B3A44 08008214 */  bne        $a0, $v0, .L800B3A68
    /* A4248 800B3A48 01006330 */   andi      $v1, $v1, 0x1
    /* A424C 800B3A4C 2000028E */  lw         $v0, 0x20($s0)
    /* A4250 800B3A50 00000000 */  nop
    /* A4254 800B3A54 05004014 */  bnez       $v0, .L800B3A6C
    /* A4258 800B3A58 25106500 */   or        $v0, $v1, $a1
    /* A425C 800B3A5C C000023C */  lui        $v0, (0xC00000 >> 16)
    /* A4260 800B3A60 24102202 */  and        $v0, $s1, $v0
    /* A4264 800B3A64 0100452C */  sltiu      $a1, $v0, 0x1
  .L800B3A68:
    /* A4268 800B3A68 25106500 */  or         $v0, $v1, $a1
  .L800B3A6C:
    /* A426C 800B3A6C 43004010 */  beqz       $v0, .L800B3B7C
    /* A4270 800B3A70 00E1073C */   lui       $a3, (0xE1000200 >> 16)
    /* A4274 800B3A74 0002E734 */  ori        $a3, $a3, (0xE1000200 & 0xFFFF)
    /* A4278 800B3A78 21204002 */  addu       $a0, $s2, $zero
    /* A427C 800B3A7C 21286002 */  addu       $a1, $s3, $zero
    /* A4280 800B3A80 FFFF8632 */  andi       $a2, $s4, 0xFFFF
    /* A4284 800B3A84 42141100 */  srl        $v0, $s1, 17
    /* A4288 800B3A88 80014230 */  andi       $v0, $v0, 0x180
    /* A428C 800B3A8C 25104700 */  or         $v0, $v0, $a3
    /* A4290 800B3A90 0001073C */  lui        $a3, (0x1000000 >> 16)
    /* A4294 800B3A94 0C000396 */  lhu        $v1, 0xC($s0)
    /* A4298 800B3A98 04000886 */  lh         $t0, 0x4($s0)
    /* A429C 800B3A9C 06000986 */  lh         $t1, 0x6($s0)
    /* A42A0 800B3AA0 1F006330 */  andi       $v1, $v1, 0x1F
    /* A42A4 800B3AA4 25186200 */  or         $v1, $v1, $v0
    /* A42A8 800B3AA8 C2151100 */  srl        $v0, $s1, 23
    /* A42AC 800B3AAC 60004230 */  andi       $v0, $v0, 0x60
    /* A42B0 800B3AB0 25186200 */  or         $v1, $v1, $v0
    /* A42B4 800B3AB4 040083AC */  sw         $v1, 0x4($a0)
    /* A42B8 800B3AB8 42191100 */  srl        $v1, $s1, 5
    /* A42BC 800B3ABC 0002023C */  lui        $v0, (0x2000000 >> 16)
    /* A42C0 800B3AC0 24186200 */  and        $v1, $v1, $v0
    /* A42C4 800B3AC4 80141100 */  sll        $v0, $s1, 18
    /* A42C8 800B3AC8 24104700 */  and        $v0, $v0, $a3
    /* A42CC 800B3ACC 0064073C */  lui        $a3, (0x64000000 >> 16)
    /* A42D0 800B3AD0 25104700 */  or         $v0, $v0, $a3
    /* A42D4 800B3AD4 25186200 */  or         $v1, $v1, $v0
    /* A42D8 800B3AD8 16000792 */  lbu        $a3, 0x16($s0)
    /* A42DC 800B3ADC 15000292 */  lbu        $v0, 0x15($s0)
    /* A42E0 800B3AE0 003C0700 */  sll        $a3, $a3, 16
    /* A42E4 800B3AE4 25186700 */  or         $v1, $v1, $a3
    /* A42E8 800B3AE8 00120200 */  sll        $v0, $v0, 8
    /* A42EC 800B3AEC 25186200 */  or         $v1, $v1, $v0
    /* A42F0 800B3AF0 14000292 */  lbu        $v0, 0x14($s0)
    /* A42F4 800B3AF4 0F80073C */  lui        $a3, %hi(D_800F1070)
    /* A42F8 800B3AF8 7010E784 */  lh         $a3, %lo(D_800F1070)($a3)
    /* A42FC 800B3AFC 25186200 */  or         $v1, $v1, $v0
    /* A4300 800B3B00 21400701 */  addu       $t0, $t0, $a3
    /* A4304 800B3B04 0F80023C */  lui        $v0, %hi(D_800F1072)
    /* A4308 800B3B08 72104284 */  lh         $v0, %lo(D_800F1072)($v0)
    /* A430C 800B3B0C 05000724 */  addiu      $a3, $zero, 0x5
    /* A4310 800B3B10 080083AC */  sw         $v1, 0x8($a0)
    /* A4314 800B3B14 18000386 */  lh         $v1, 0x18($s0)
    /* A4318 800B3B18 21482201 */  addu       $t1, $t1, $v0
    /* A431C 800B3B1C 23400301 */  subu       $t0, $t0, $v1
    /* A4320 800B3B20 1A000286 */  lh         $v0, 0x1A($s0)
    /* A4324 800B3B24 FFFF0831 */  andi       $t0, $t0, 0xFFFF
    /* A4328 800B3B28 23482201 */  subu       $t1, $t1, $v0
    /* A432C 800B3B2C 004C0900 */  sll        $t1, $t1, 16
    /* A4330 800B3B30 25400901 */  or         $t0, $t0, $t1
    /* A4334 800B3B34 0C0088AC */  sw         $t0, 0xC($a0)
    /* A4338 800B3B38 0F000392 */  lbu        $v1, 0xF($s0)
    /* A433C 800B3B3C 0E000292 */  lbu        $v0, 0xE($s0)
    /* A4340 800B3B40 12000886 */  lh         $t0, 0x12($s0)
    /* A4344 800B3B44 001A0300 */  sll        $v1, $v1, 8
    /* A4348 800B3B48 25104300 */  or         $v0, $v0, $v1
    /* A434C 800B3B4C 80450800 */  sll        $t0, $t0, 22
    /* A4350 800B3B50 25104800 */  or         $v0, $v0, $t0
    /* A4354 800B3B54 10000386 */  lh         $v1, 0x10($s0)
    /* A4358 800B3B58 3F00083C */  lui        $t0, (0x3F0000 >> 16)
    /* A435C 800B3B5C 001B0300 */  sll        $v1, $v1, 12
    /* A4360 800B3B60 24186800 */  and        $v1, $v1, $t0
    /* A4364 800B3B64 25104300 */  or         $v0, $v0, $v1
    /* A4368 800B3B68 100082AC */  sw         $v0, 0x10($a0)
    /* A436C 800B3B6C 0A000296 */  lhu        $v0, 0xA($s0)
    /* A4370 800B3B70 08000396 */  lhu        $v1, 0x8($s0)
    /* A4374 800B3B74 A6CF0208 */  j          .L800B3E98
    /* A4378 800B3B78 00140200 */   sll       $v0, $v0, 16
  .L800B3B7C:
    /* A437C 800B3B7C 2000028E */  lw         $v0, 0x20($s0)
    /* A4380 800B3B80 00000000 */  nop
    /* A4384 800B3B84 15004014 */  bnez       $v0, .L800B3BDC
    /* A4388 800B3B88 0BB6023C */   lui       $v0, (0xB60B60B7 >> 16)
    /* A438C 800B3B8C 1080053C */  lui        $a1, %hi(D_800FB5B0)
    /* A4390 800B3B90 B0B5A524 */  addiu      $a1, $a1, %lo(D_800FB5B0)
    /* A4394 800B3B94 0000A28C */  lw         $v0, 0x0($a1)
    /* A4398 800B3B98 0400A38C */  lw         $v1, 0x4($a1)
    /* A439C 800B3B9C 0800A48C */  lw         $a0, 0x8($a1)
    /* A43A0 800B3BA0 2800A2AF */  sw         $v0, 0x28($sp)
    /* A43A4 800B3BA4 2C00A3AF */  sw         $v1, 0x2C($sp)
    /* A43A8 800B3BA8 3000A4AF */  sw         $a0, 0x30($sp)
    /* A43AC 800B3BAC 0C00A28C */  lw         $v0, 0xC($a1)
    /* A43B0 800B3BB0 1000A38C */  lw         $v1, 0x10($a1)
    /* A43B4 800B3BB4 1400A48C */  lw         $a0, 0x14($a1)
    /* A43B8 800B3BB8 3400A2AF */  sw         $v0, 0x34($sp)
    /* A43BC 800B3BBC 3800A3AF */  sw         $v1, 0x38($sp)
    /* A43C0 800B3BC0 3C00A4AF */  sw         $a0, 0x3C($sp)
    /* A43C4 800B3BC4 1800A28C */  lw         $v0, 0x18($a1)
    /* A43C8 800B3BC8 1C00A38C */  lw         $v1, 0x1C($a1)
    /* A43CC 800B3BCC 4000A2AF */  sw         $v0, 0x40($sp)
    /* A43D0 800B3BD0 4400A3AF */  sw         $v1, 0x44($sp)
    /* A43D4 800B3BD4 06CF0208 */  j          .L800B3C18
    /* A43D8 800B3BD8 0010033C */   lui       $v1, (0x10001000 >> 16)
  .L800B3BDC:
    /* A43DC 800B3BDC 4800A0A7 */  sh         $zero, 0x48($sp)
    /* A43E0 800B3BE0 4A00A0A7 */  sh         $zero, 0x4A($sp)
    /* A43E4 800B3BE4 2000038E */  lw         $v1, 0x20($s0)
    /* A43E8 800B3BE8 B7604234 */  ori        $v0, $v0, (0xB60B60B7 & 0xFFFF)
    /* A43EC 800B3BEC 18006200 */  mult       $v1, $v0
    /* A43F0 800B3BF0 4800A427 */  addiu      $a0, $sp, 0x48
    /* A43F4 800B3BF4 2800A527 */  addiu      $a1, $sp, 0x28
    /* A43F8 800B3BF8 10680000 */  mfhi       $t5
    /* A43FC 800B3BFC 2110A301 */  addu       $v0, $t5, $v1
    /* A4400 800B3C00 03120200 */  sra        $v0, $v0, 8
    /* A4404 800B3C04 C31F0300 */  sra        $v1, $v1, 31
    /* A4408 800B3C08 23104300 */  subu       $v0, $v0, $v1
    /* A440C 800B3C0C 22C5020C */  jal        func_800B1488
    /* A4410 800B3C10 4C00A2A7 */   sh        $v0, 0x4C($sp)
    /* A4414 800B3C14 0010033C */  lui        $v1, (0x10001000 >> 16)
  .L800B3C18:
    /* A4418 800B3C18 1C00028E */  lw         $v0, 0x1C($s0)
    /* A441C 800B3C1C 00106334 */  ori        $v1, $v1, (0x10001000 & 0xFFFF)
    /* A4420 800B3C20 08004310 */  beq        $v0, $v1, .L800B3C44
    /* A4424 800B3C24 5000A527 */   addiu     $a1, $sp, 0x50
    /* A4428 800B3C28 1C000286 */  lh         $v0, 0x1C($s0)
    /* A442C 800B3C2C 2800A427 */  addiu      $a0, $sp, 0x28
    /* A4430 800B3C30 5000A2AF */  sw         $v0, 0x50($sp)
    /* A4434 800B3C34 1E000286 */  lh         $v0, 0x1E($s0)
    /* A4438 800B3C38 5800A0AF */  sw         $zero, 0x58($sp)
    /* A443C 800B3C3C D2C4020C */  jal        func_800B1348
    /* A4440 800B3C40 5400A2AF */   sw        $v0, 0x54($sp)
  .L800B3C44:
    /* A4444 800B3C44 04000286 */  lh         $v0, 0x4($s0)
    /* A4448 800B3C48 00000000 */  nop
    /* A444C 800B3C4C 5000A2AF */  sw         $v0, 0x50($sp)
    /* A4450 800B3C50 06000286 */  lh         $v0, 0x6($s0)
    /* A4454 800B3C54 CACF020C */  jal        func_800B3F28
    /* A4458 800B3C58 5400A2AF */   sw        $v0, 0x54($sp)
    /* A445C 800B3C5C 2800A427 */  addiu      $a0, $sp, 0x28
    /* A4460 800B3C60 5000A527 */  addiu      $a1, $sp, 0x50
    /* A4464 800B3C64 C6C4020C */  jal        func_800B1318
    /* A4468 800B3C68 5800A2AF */   sw        $v0, 0x58($sp)
    /* A446C 800B3C6C B6CF020C */  jal        func_800B3ED8
    /* A4470 800B3C70 2800A427 */   addiu     $a0, $sp, 0x28
    /* A4474 800B3C74 C2CF020C */  jal        func_800B3F08
    /* A4478 800B3C78 2800A427 */   addiu     $a0, $sp, 0x28
    /* A447C 800B3C7C 18000386 */  lh         $v1, 0x18($s0)
    /* A4480 800B3C80 1A000886 */  lh         $t0, 0x1A($s0)
    /* A4484 800B3C84 6400A0A7 */  sh         $zero, 0x64($sp)
    /* A4488 800B3C88 23180300 */  negu       $v1, $v1
    /* A448C 800B3C8C 23400800 */  negu       $t0, $t0
    /* A4490 800B3C90 6000A3A7 */  sh         $v1, 0x60($sp)
    /* A4494 800B3C94 6200A8A7 */  sh         $t0, 0x62($sp)
    /* A4498 800B3C98 08000296 */  lhu        $v0, 0x8($s0)
    /* A449C 800B3C9C 6000A427 */  addiu      $a0, $sp, 0x60
    /* A44A0 800B3CA0 6A00A8A7 */  sh         $t0, 0x6A($sp)
    /* A44A4 800B3CA4 6C00A0A7 */  sh         $zero, 0x6C($sp)
    /* A44A8 800B3CA8 7000A3A7 */  sh         $v1, 0x70($sp)
    /* A44AC 800B3CAC 21104300 */  addu       $v0, $v0, $v1
    /* A44B0 800B3CB0 6800A2A7 */  sh         $v0, 0x68($sp)
    /* A44B4 800B3CB4 0A000296 */  lhu        $v0, 0xA($s0)
    /* A44B8 800B3CB8 6800A527 */  addiu      $a1, $sp, 0x68
    /* A44BC 800B3CBC 7400A0A7 */  sh         $zero, 0x74($sp)
    /* A44C0 800B3CC0 21104800 */  addu       $v0, $v0, $t0
    /* A44C4 800B3CC4 7200A2A7 */  sh         $v0, 0x72($sp)
    /* A44C8 800B3CC8 08000296 */  lhu        $v0, 0x8($s0)
    /* A44CC 800B3CCC 7000A627 */  addiu      $a2, $sp, 0x70
    /* A44D0 800B3CD0 21104300 */  addu       $v0, $v0, $v1
    /* A44D4 800B3CD4 7800A2A7 */  sh         $v0, 0x78($sp)
    /* A44D8 800B3CD8 0A000296 */  lhu        $v0, 0xA($s0)
    /* A44DC 800B3CDC 7800A727 */  addiu      $a3, $sp, 0x78
    /* A44E0 800B3CE0 7C00A0A7 */  sh         $zero, 0x7C($sp)
    /* A44E4 800B3CE4 21104800 */  addu       $v0, $v0, $t0
    /* A44E8 800B3CE8 7A00A2A7 */  sh         $v0, 0x7A($sp)
    /* A44EC 800B3CEC 8000A227 */  addiu      $v0, $sp, 0x80
    /* A44F0 800B3CF0 1000A2AF */  sw         $v0, 0x10($sp)
    /* A44F4 800B3CF4 8400A227 */  addiu      $v0, $sp, 0x84
    /* A44F8 800B3CF8 1400A2AF */  sw         $v0, 0x14($sp)
    /* A44FC 800B3CFC 8800A227 */  addiu      $v0, $sp, 0x88
    /* A4500 800B3D00 1800A2AF */  sw         $v0, 0x18($sp)
    /* A4504 800B3D04 8C00A227 */  addiu      $v0, $sp, 0x8C
    /* A4508 800B3D08 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* A450C 800B3D0C 9000A227 */  addiu      $v0, $sp, 0x90
    /* A4510 800B3D10 2000A2AF */  sw         $v0, 0x20($sp)
    /* A4514 800B3D14 9400A227 */  addiu      $v0, $sp, 0x94
    /* A4518 800B3D18 CECF020C */  jal        func_800B3F38
    /* A451C 800B3D1C 2400A2AF */   sw        $v0, 0x24($sp)
    /* A4520 800B3D20 8000023C */  lui        $v0, (0x800000 >> 16)
    /* A4524 800B3D24 24102202 */  and        $v0, $s1, $v0
    /* A4528 800B3D28 08004010 */  beqz       $v0, .L800B3D4C
    /* A452C 800B3D2C 00000000 */   nop
    /* A4530 800B3D30 0E000392 */  lbu        $v1, 0xE($s0)
    /* A4534 800B3D34 08000292 */  lbu        $v0, 0x8($s0)
    /* A4538 800B3D38 00000000 */  nop
    /* A453C 800B3D3C 21106200 */  addu       $v0, $v1, $v0
    /* A4540 800B3D40 FFFF4924 */  addiu      $t1, $v0, -0x1
    /* A4544 800B3D44 58CF0208 */  j          .L800B3D60
    /* A4548 800B3D48 21606000 */   addu      $t4, $v1, $zero
  .L800B3D4C:
    /* A454C 800B3D4C 0E000992 */  lbu        $t1, 0xE($s0)
    /* A4550 800B3D50 08000292 */  lbu        $v0, 0x8($s0)
    /* A4554 800B3D54 00000000 */  nop
    /* A4558 800B3D58 21102201 */  addu       $v0, $t1, $v0
    /* A455C 800B3D5C FFFF4C24 */  addiu      $t4, $v0, -0x1
  .L800B3D60:
    /* A4560 800B3D60 4000023C */  lui        $v0, (0x400000 >> 16)
    /* A4564 800B3D64 24102202 */  and        $v0, $s1, $v0
    /* A4568 800B3D68 08004010 */  beqz       $v0, .L800B3D8C
    /* A456C 800B3D6C 00000000 */   nop
    /* A4570 800B3D70 0F000392 */  lbu        $v1, 0xF($s0)
    /* A4574 800B3D74 0A000292 */  lbu        $v0, 0xA($s0)
    /* A4578 800B3D78 00000000 */  nop
    /* A457C 800B3D7C 21106200 */  addu       $v0, $v1, $v0
    /* A4580 800B3D80 FFFF4A24 */  addiu      $t2, $v0, -0x1
    /* A4584 800B3D84 68CF0208 */  j          .L800B3DA0
    /* A4588 800B3D88 21586000 */   addu      $t3, $v1, $zero
  .L800B3D8C:
    /* A458C 800B3D8C 0F000A92 */  lbu        $t2, 0xF($s0)
    /* A4590 800B3D90 0A000292 */  lbu        $v0, 0xA($s0)
    /* A4594 800B3D94 00000000 */  nop
    /* A4598 800B3D98 21104201 */  addu       $v0, $t2, $v0
    /* A459C 800B3D9C FFFF4B24 */  addiu      $t3, $v0, -0x1
  .L800B3DA0:
    /* A45A0 800B3DA0 21204002 */  addu       $a0, $s2, $zero
    /* A45A4 800B3DA4 21286002 */  addu       $a1, $s3, $zero
    /* A45A8 800B3DA8 42191100 */  srl        $v1, $s1, 5
    /* A45AC 800B3DAC 0002023C */  lui        $v0, (0x2000000 >> 16)
    /* A45B0 800B3DB0 24186200 */  and        $v1, $v1, $v0
    /* A45B4 800B3DB4 80141100 */  sll        $v0, $s1, 18
    /* A45B8 800B3DB8 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* A45BC 800B3DBC 24104600 */  and        $v0, $v0, $a2
    /* A45C0 800B3DC0 002C063C */  lui        $a2, (0x2C000000 >> 16)
    /* A45C4 800B3DC4 25104600 */  or         $v0, $v0, $a2
    /* A45C8 800B3DC8 25186200 */  or         $v1, $v1, $v0
    /* A45CC 800B3DCC FF002931 */  andi       $t1, $t1, 0xFF
    /* A45D0 800B3DD0 FF004A31 */  andi       $t2, $t2, 0xFF
    /* A45D4 800B3DD4 00520A00 */  sll        $t2, $t2, 8
    /* A45D8 800B3DD8 16000692 */  lbu        $a2, 0x16($s0)
    /* A45DC 800B3DDC 15000292 */  lbu        $v0, 0x15($s0)
    /* A45E0 800B3DE0 00340600 */  sll        $a2, $a2, 16
    /* A45E4 800B3DE4 25186600 */  or         $v1, $v1, $a2
    /* A45E8 800B3DE8 00120200 */  sll        $v0, $v0, 8
    /* A45EC 800B3DEC 25186200 */  or         $v1, $v1, $v0
    /* A45F0 800B3DF0 14000292 */  lbu        $v0, 0x14($s0)
    /* A45F4 800B3DF4 8000A68F */  lw         $a2, 0x80($sp)
    /* A45F8 800B3DF8 25186200 */  or         $v1, $v1, $v0
    /* A45FC 800B3DFC 080086AC */  sw         $a2, 0x8($a0)
    /* A4600 800B3E00 FFFF8632 */  andi       $a2, $s4, 0xFFFF
    /* A4604 800B3E04 040083AC */  sw         $v1, 0x4($a0)
    /* A4608 800B3E08 25182A01 */  or         $v1, $t1, $t2
    /* A460C 800B3E0C 12000886 */  lh         $t0, 0x12($s0)
    /* A4610 800B3E10 10000786 */  lh         $a3, 0x10($s0)
    /* A4614 800B3E14 8400A28F */  lw         $v0, 0x84($sp)
    /* A4618 800B3E18 80450800 */  sll        $t0, $t0, 22
    /* A461C 800B3E1C 25186800 */  or         $v1, $v1, $t0
    /* A4620 800B3E20 003B0700 */  sll        $a3, $a3, 12
    /* A4624 800B3E24 100082AC */  sw         $v0, 0x10($a0)
    /* A4628 800B3E28 3F00023C */  lui        $v0, (0x3F0000 >> 16)
    /* A462C 800B3E2C 2438E200 */  and        $a3, $a3, $v0
    /* A4630 800B3E30 25186700 */  or         $v1, $v1, $a3
    /* A4634 800B3E34 0C0083AC */  sw         $v1, 0xC($a0)
    /* A4638 800B3E38 0C000896 */  lhu        $t0, 0xC($s0)
    /* A463C 800B3E3C 8800A28F */  lw         $v0, 0x88($sp)
    /* A4640 800B3E40 09000724 */  addiu      $a3, $zero, 0x9
    /* A4644 800B3E44 180082AC */  sw         $v0, 0x18($a0)
    /* A4648 800B3E48 FF006231 */  andi       $v0, $t3, 0xFF
    /* A464C 800B3E4C 00120200 */  sll        $v0, $v0, 8
    /* A4650 800B3E50 25482201 */  or         $t1, $t1, $v0
    /* A4654 800B3E54 1F000831 */  andi       $t0, $t0, 0x1F
    /* A4658 800B3E58 8C00A38F */  lw         $v1, 0x8C($sp)
    /* A465C 800B3E5C 00440800 */  sll        $t0, $t0, 16
    /* A4660 800B3E60 1C0089AC */  sw         $t1, 0x1C($a0)
    /* A4664 800B3E64 200083AC */  sw         $v1, 0x20($a0)
    /* A4668 800B3E68 FF008331 */  andi       $v1, $t4, 0xFF
    /* A466C 800B3E6C 25106200 */  or         $v0, $v1, $v0
    /* A4670 800B3E70 25186A00 */  or         $v1, $v1, $t2
    /* A4674 800B3E74 25186800 */  or         $v1, $v1, $t0
    /* A4678 800B3E78 240082AC */  sw         $v0, 0x24($a0)
    /* A467C 800B3E7C 42101100 */  srl        $v0, $s1, 1
    /* A4680 800B3E80 8001083C */  lui        $t0, (0x1800000 >> 16)
    /* A4684 800B3E84 24104800 */  and        $v0, $v0, $t0
    /* A4688 800B3E88 25186200 */  or         $v1, $v1, $v0
    /* A468C 800B3E8C C2111100 */  srl        $v0, $s1, 7
    /* A4690 800B3E90 6000083C */  lui        $t0, (0x600000 >> 16)
    /* A4694 800B3E94 24104800 */  and        $v0, $v0, $t0
  .L800B3E98:
    /* A4698 800B3E98 25186200 */  or         $v1, $v1, $v0
    /* A469C 800B3E9C 5ECD020C */  jal        func_800B3578
    /* A46A0 800B3EA0 140083AC */   sw        $v1, 0x14($a0)
    /* A46A4 800B3EA4 21904000 */  addu       $s2, $v0, $zero
    /* A46A8 800B3EA8 0F80013C */  lui        $at, %hi(D_800EF8A8)
    /* A46AC 800B3EAC A8F832AC */  sw         $s2, %lo(D_800EF8A8)($at)
  .L800B3EB0:
    /* A46B0 800B3EB0 AC00BF8F */  lw         $ra, 0xAC($sp)
    /* A46B4 800B3EB4 A800B48F */  lw         $s4, 0xA8($sp)
    /* A46B8 800B3EB8 A400B38F */  lw         $s3, 0xA4($sp)
    /* A46BC 800B3EBC A000B28F */  lw         $s2, 0xA0($sp)
    /* A46C0 800B3EC0 9C00B18F */  lw         $s1, 0x9C($sp)
    /* A46C4 800B3EC4 9800B08F */  lw         $s0, 0x98($sp)
    /* A46C8 800B3EC8 0800E003 */  jr         $ra
    /* A46CC 800B3ECC B000BD27 */   addiu     $sp, $sp, 0xB0
endlabel func_800B39D8
    /* A46D0 800B3ED0 00000000 */  nop
    /* A46D4 800B3ED4 00000000 */  nop
