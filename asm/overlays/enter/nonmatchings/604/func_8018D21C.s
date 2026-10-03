nonmatching func_8018D21C, 0x9A0

glabel func_8018D21C
    /* 42A4 8018D21C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 42A8 8018D220 801F083C */  lui        $t0, (0x1F800200 >> 16)
    /* 42AC 8018D224 1180033C */  lui        $v1, %hi(D_8010C1D8)
    /* 42B0 8018D228 D8C16324 */  addiu      $v1, $v1, %lo(D_8010C1D8)
    /* 42B4 8018D22C 1080093C */  lui        $t1, %hi(D_800FF748)
    /* 42B8 8018D230 48F72925 */  addiu      $t1, $t1, %lo(D_800FF748)
    /* 42BC 8018D234 FF008430 */  andi       $a0, $a0, 0xFF
    /* 42C0 8018D238 3100822C */  sltiu      $v0, $a0, 0x31
    /* 42C4 8018D23C 3000BFAF */  sw         $ra, 0x30($sp)
    /* 42C8 8018D240 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 42CC 8018D244 57024010 */  beqz       $v0, .L8018DBA4
    /* 42D0 8018D248 2800B0AF */   sw        $s0, 0x28($sp)
    /* 42D4 8018D24C 80100400 */  sll        $v0, $a0, 2
    /* 42D8 8018D250 1980013C */  lui        $at, %hi(jtbl_80189374)
    /* 42DC 8018D254 21082200 */  addu       $at, $at, $v0
    /* 42E0 8018D258 7493228C */  lw         $v0, %lo(jtbl_80189374)($at)
    /* 42E4 8018D25C 00000000 */  nop
    /* 42E8 8018D260 08004000 */  jr         $v0
    /* 42EC 8018D264 00000000 */   nop
  jlabel .L8018D268
    /* 42F0 8018D268 00C70224 */  addiu      $v0, $zero, -0x3900
    /* 42F4 8018D26C F80102AD */  sw         $v0, (0x1F8001F8 & 0xFFFF)($t0)
    /* 42F8 8018D270 00F80224 */  addiu      $v0, $zero, -0x800
    /* 42FC 8018D274 F40102AD */  sw         $v0, (0x1F8001F4 & 0xFFFF)($t0)
    /* 4300 8018D278 00FE0224 */  addiu      $v0, $zero, -0x200
    /* 4304 8018D27C F00100AD */  sw         $zero, (0x1F8001F0 & 0xFFFF)($t0)
    /* 4308 8018D280 FC0100AD */  sw         $zero, (0x1F8001FC & 0xFFFF)($t0)
    /* 430C 8018D284 040200AD */  sw         $zero, (0x1F800204 & 0xFFFF)($t0)
    /* 4310 8018D288 E9360608 */  j          .L8018DBA4
    /* 4314 8018D28C 000202AD */   sw        $v0, (0x1F800200 & 0xFFFF)($t0)
  jlabel .L8018D290
    /* 4318 8018D290 60FE0224 */  addiu      $v0, $zero, -0x1A0
    /* 431C 8018D294 F40102AD */  sw         $v0, 0x1F4($t0)
    /* 4320 8018D298 D0D80224 */  addiu      $v0, $zero, -0x2730
    /* 4324 8018D29C F80102AD */  sw         $v0, 0x1F8($t0)
    /* 4328 8018D2A0 40FA0224 */  addiu      $v0, $zero, -0x5C0
    /* 432C 8018D2A4 000202AD */  sw         $v0, 0x200($t0)
    /* 4330 8018D2A8 E6360608 */  j          .L8018DB98
    /* 4334 8018D2AC E0FF0224 */   addiu     $v0, $zero, -0x20
  jlabel .L8018D2B0
    /* 4338 8018D2B0 30D40224 */  addiu      $v0, $zero, -0x2BD0
    /* 433C 8018D2B4 F00102AD */  sw         $v0, 0x1F0($t0)
    /* 4340 8018D2B8 30F40224 */  addiu      $v0, $zero, -0xBD0
    /* 4344 8018D2BC F40102AD */  sw         $v0, 0x1F4($t0)
    /* 4348 8018D2C0 20C50224 */  addiu      $v0, $zero, -0x3AE0
    /* 434C 8018D2C4 F80102AD */  sw         $v0, 0x1F8($t0)
    /* 4350 8018D2C8 60FE0224 */  addiu      $v0, $zero, -0x1A0
    /* 4354 8018D2CC FC0102AD */  sw         $v0, 0x1FC($t0)
    /* 4358 8018D2D0 50F50224 */  addiu      $v0, $zero, -0xAB0
    /* 435C 8018D2D4 000202AD */  sw         $v0, 0x200($t0)
    /* 4360 8018D2D8 E8360608 */  j          .L8018DBA0
    /* 4364 8018D2DC 40E10224 */   addiu     $v0, $zero, -0x1EC0
  jlabel .L8018D2E0
    /* 4368 8018D2E0 D02B0224 */  addiu      $v0, $zero, 0x2BD0
    /* 436C 8018D2E4 F00102AD */  sw         $v0, 0x1F0($t0)
    /* 4370 8018D2E8 30F40224 */  addiu      $v0, $zero, -0xBD0
    /* 4374 8018D2EC F40102AD */  sw         $v0, 0x1F4($t0)
    /* 4378 8018D2F0 20C50224 */  addiu      $v0, $zero, -0x3AE0
    /* 437C 8018D2F4 F80102AD */  sw         $v0, 0x1F8($t0)
    /* 4380 8018D2F8 A0010224 */  addiu      $v0, $zero, 0x1A0
    /* 4384 8018D2FC FC0102AD */  sw         $v0, 0x1FC($t0)
    /* 4388 8018D300 50F50224 */  addiu      $v0, $zero, -0xAB0
    /* 438C 8018D304 000202AD */  sw         $v0, 0x200($t0)
    /* 4390 8018D308 E8360608 */  j          .L8018DBA0
    /* 4394 8018D30C 40E10224 */   addiu     $v0, $zero, -0x1EC0
  jlabel .L8018D310
    /* 4398 8018D310 0A000424 */  addiu      $a0, $zero, 0xA
    /* 439C 8018D314 08000524 */  addiu      $a1, $zero, 0x8
    /* 43A0 8018D318 21300000 */  addu       $a2, $zero, $zero
    /* 43A4 8018D31C 21380000 */  addu       $a3, $zero, $zero
    /* 43A8 8018D320 60E90224 */  addiu      $v0, $zero, -0x16A0
    /* 43AC 8018D324 F80102AD */  sw         $v0, 0x1F8($t0)
    /* 43B0 8018D328 40FD0224 */  addiu      $v0, $zero, -0x2C0
    /* 43B4 8018D32C 000202AD */  sw         $v0, 0x200($t0)
    /* 43B8 8018D330 10E00224 */  addiu      $v0, $zero, -0x1FF0
    /* 43BC 8018D334 00101024 */  addiu      $s0, $zero, 0x1000
    /* 43C0 8018D338 F00100AD */  sw         $zero, 0x1F0($t0)
    /* 43C4 8018D33C F40100AD */  sw         $zero, 0x1F4($t0)
    /* 43C8 8018D340 FC0100AD */  sw         $zero, 0x1FC($t0)
    /* 43CC 8018D344 040202AD */  sw         $v0, 0x204($t0)
    /* 43D0 8018D348 1000A0AF */  sw         $zero, 0x10($sp)
    /* 43D4 8018D34C 1400B0AF */  sw         $s0, 0x14($sp)
    /* 43D8 8018D350 1800B0AF */  sw         $s0, 0x18($sp)
    /* 43DC 8018D354 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 43E0 8018D358 1C75000C */  jal        func_8001D470
    /* 43E4 8018D35C 2000A0AF */   sw        $zero, 0x20($sp)
    /* 43E8 8018D360 0B000424 */  addiu      $a0, $zero, 0xB
    /* 43EC 8018D364 08000524 */  addiu      $a1, $zero, 0x8
    /* 43F0 8018D368 21300000 */  addu       $a2, $zero, $zero
    /* 43F4 8018D36C 21380000 */  addu       $a3, $zero, $zero
    /* 43F8 8018D370 80000224 */  addiu      $v0, $zero, 0x80
    /* 43FC 8018D374 4D360608 */  j          .L8018D934
    /* 4400 8018D378 1000A2AF */   sw        $v0, 0x10($sp)
  jlabel .L8018D37C
    /* 4404 8018D37C 0A000424 */  addiu      $a0, $zero, 0xA
    /* 4408 8018D380 08000524 */  addiu      $a1, $zero, 0x8
    /* 440C 8018D384 21300000 */  addu       $a2, $zero, $zero
    /* 4410 8018D388 21380000 */  addu       $a3, $zero, $zero
    /* 4414 8018D38C 40E90224 */  addiu      $v0, $zero, -0x16C0
    /* 4418 8018D390 F00102AD */  sw         $v0, 0x1F0($t0)
    /* 441C 8018D394 40FC0224 */  addiu      $v0, $zero, -0x3C0
    /* 4420 8018D398 F40102AD */  sw         $v0, 0x1F4($t0)
    /* 4424 8018D39C C0FD0224 */  addiu      $v0, $zero, -0x240
    /* 4428 8018D3A0 F80102AD */  sw         $v0, 0x1F8($t0)
    /* 442C 8018D3A4 20130224 */  addiu      $v0, $zero, 0x1320
    /* 4430 8018D3A8 FC0102AD */  sw         $v0, 0x1FC($t0)
    /* 4434 8018D3AC E0F40224 */  addiu      $v0, $zero, -0xB20
    /* 4438 8018D3B0 000202AD */  sw         $v0, 0x200($t0)
    /* 443C 8018D3B4 90D70224 */  addiu      $v0, $zero, -0x2870
    /* 4440 8018D3B8 00101024 */  addiu      $s0, $zero, 0x1000
    /* 4444 8018D3BC 040202AD */  sw         $v0, 0x204($t0)
    /* 4448 8018D3C0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 444C 8018D3C4 1400B0AF */  sw         $s0, 0x14($sp)
    /* 4450 8018D3C8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4454 8018D3CC 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 4458 8018D3D0 1C75000C */  jal        func_8001D470
    /* 445C 8018D3D4 2000A0AF */   sw        $zero, 0x20($sp)
    /* 4460 8018D3D8 0B000424 */  addiu      $a0, $zero, 0xB
    /* 4464 8018D3DC 08000524 */  addiu      $a1, $zero, 0x8
    /* 4468 8018D3E0 21300000 */  addu       $a2, $zero, $zero
    /* 446C 8018D3E4 21380000 */  addu       $a3, $zero, $zero
    /* 4470 8018D3E8 80000224 */  addiu      $v0, $zero, 0x80
    /* 4474 8018D3EC 4D360608 */  j          .L8018D934
    /* 4478 8018D3F0 1000A2AF */   sw        $v0, 0x10($sp)
  jlabel .L8018D3F4
    /* 447C 8018D3F4 0A000424 */  addiu      $a0, $zero, 0xA
    /* 4480 8018D3F8 08000524 */  addiu      $a1, $zero, 0x8
    /* 4484 8018D3FC 21300000 */  addu       $a2, $zero, $zero
    /* 4488 8018D400 21380000 */  addu       $a3, $zero, $zero
    /* 448C 8018D404 C0160224 */  addiu      $v0, $zero, 0x16C0
    /* 4490 8018D408 F00102AD */  sw         $v0, 0x1F0($t0)
    /* 4494 8018D40C 40FC0224 */  addiu      $v0, $zero, -0x3C0
    /* 4498 8018D410 F40102AD */  sw         $v0, 0x1F4($t0)
    /* 449C 8018D414 C0FD0224 */  addiu      $v0, $zero, -0x240
    /* 44A0 8018D418 F80102AD */  sw         $v0, 0x1F8($t0)
    /* 44A4 8018D41C E0EC0224 */  addiu      $v0, $zero, -0x1320
    /* 44A8 8018D420 FC0102AD */  sw         $v0, 0x1FC($t0)
    /* 44AC 8018D424 E0F40224 */  addiu      $v0, $zero, -0xB20
    /* 44B0 8018D428 000202AD */  sw         $v0, 0x200($t0)
    /* 44B4 8018D42C 90D70224 */  addiu      $v0, $zero, -0x2870
    /* 44B8 8018D430 00101024 */  addiu      $s0, $zero, 0x1000
    /* 44BC 8018D434 040202AD */  sw         $v0, 0x204($t0)
    /* 44C0 8018D438 1000A0AF */  sw         $zero, 0x10($sp)
    /* 44C4 8018D43C 1400B0AF */  sw         $s0, 0x14($sp)
    /* 44C8 8018D440 1800B0AF */  sw         $s0, 0x18($sp)
    /* 44CC 8018D444 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 44D0 8018D448 1C75000C */  jal        func_8001D470
    /* 44D4 8018D44C 2000A0AF */   sw        $zero, 0x20($sp)
    /* 44D8 8018D450 0B000424 */  addiu      $a0, $zero, 0xB
    /* 44DC 8018D454 08000524 */  addiu      $a1, $zero, 0x8
    /* 44E0 8018D458 21300000 */  addu       $a2, $zero, $zero
    /* 44E4 8018D45C 21380000 */  addu       $a3, $zero, $zero
    /* 44E8 8018D460 80000224 */  addiu      $v0, $zero, 0x80
    /* 44EC 8018D464 4D360608 */  j          .L8018D934
    /* 44F0 8018D468 1000A2AF */   sw        $v0, 0x10($sp)
  jlabel .L8018D46C
    /* 44F4 8018D46C 0D000424 */  addiu      $a0, $zero, 0xD
    /* 44F8 8018D470 01000524 */  addiu      $a1, $zero, 0x1
    /* 44FC 8018D474 21300000 */  addu       $a2, $zero, $zero
    /* 4500 8018D478 21380000 */  addu       $a3, $zero, $zero
    /* 4504 8018D47C 60FE0224 */  addiu      $v0, $zero, -0x1A0
    /* 4508 8018D480 F40102AD */  sw         $v0, 0x1F4($t0)
    /* 450C 8018D484 80DD0224 */  addiu      $v0, $zero, -0x2280
    /* 4510 8018D488 F80102AD */  sw         $v0, 0x1F8($t0)
    /* 4514 8018D48C 70FD0224 */  addiu      $v0, $zero, -0x290
    /* 4518 8018D490 000202AD */  sw         $v0, 0x200($t0)
    /* 451C 8018D494 80EF0224 */  addiu      $v0, $zero, -0x1080
    /* 4520 8018D498 00101024 */  addiu      $s0, $zero, 0x1000
    /* 4524 8018D49C F00100AD */  sw         $zero, 0x1F0($t0)
    /* 4528 8018D4A0 FC0100AD */  sw         $zero, 0x1FC($t0)
    /* 452C 8018D4A4 040202AD */  sw         $v0, 0x204($t0)
    /* 4530 8018D4A8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4534 8018D4AC 1400B0AF */  sw         $s0, 0x14($sp)
    /* 4538 8018D4B0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 453C 8018D4B4 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 4540 8018D4B8 1C75000C */  jal        func_8001D470
    /* 4544 8018D4BC 2000A0AF */   sw        $zero, 0x20($sp)
    /* 4548 8018D4C0 0E000424 */  addiu      $a0, $zero, 0xE
    /* 454C 8018D4C4 01000524 */  addiu      $a1, $zero, 0x1
    /* 4550 8018D4C8 21300000 */  addu       $a2, $zero, $zero
    /* 4554 8018D4CC 21380000 */  addu       $a3, $zero, $zero
    /* 4558 8018D4D0 80001124 */  addiu      $s1, $zero, 0x80
    /* 455C 8018D4D4 1000B1AF */  sw         $s1, 0x10($sp)
    /* 4560 8018D4D8 1400B0AF */  sw         $s0, 0x14($sp)
    /* 4564 8018D4DC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4568 8018D4E0 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 456C 8018D4E4 1C75000C */  jal        func_8001D470
    /* 4570 8018D4E8 2000A0AF */   sw        $zero, 0x20($sp)
    /* 4574 8018D4EC 08000424 */  addiu      $a0, $zero, 0x8
    /* 4578 8018D4F0 07000524 */  addiu      $a1, $zero, 0x7
    /* 457C 8018D4F4 E0CC0624 */  addiu      $a2, $zero, -0x3320
    /* 4580 8018D4F8 21380000 */  addu       $a3, $zero, $zero
    /* 4584 8018D4FC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4588 8018D500 1400B0AF */  sw         $s0, 0x14($sp)
    /* 458C 8018D504 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4590 8018D508 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 4594 8018D50C 1C75000C */  jal        func_8001D470
    /* 4598 8018D510 2000A0AF */   sw        $zero, 0x20($sp)
    /* 459C 8018D514 09000424 */  addiu      $a0, $zero, 0x9
    /* 45A0 8018D518 07000524 */  addiu      $a1, $zero, 0x7
    /* 45A4 8018D51C 20330624 */  addiu      $a2, $zero, 0x3320
    /* 45A8 8018D520 21380000 */  addu       $a3, $zero, $zero
    /* 45AC 8018D524 1000B1AF */  sw         $s1, 0x10($sp)
    /* 45B0 8018D528 1400B0AF */  sw         $s0, 0x14($sp)
    /* 45B4 8018D52C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 45B8 8018D530 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 45BC 8018D534 1C75000C */  jal        func_8001D470
    /* 45C0 8018D538 2000A0AF */   sw        $zero, 0x20($sp)
    /* 45C4 8018D53C 877E000C */  jal        func_8001FA1C
    /* 45C8 8018D540 00000000 */   nop
    /* 45CC 8018D544 E9360608 */  j          .L8018DBA4
    /* 45D0 8018D548 00000000 */   nop
  jlabel .L8018D54C
    /* 45D4 8018D54C 0A000424 */  addiu      $a0, $zero, 0xA
    /* 45D8 8018D550 08000524 */  addiu      $a1, $zero, 0x8
    /* 45DC 8018D554 21300000 */  addu       $a2, $zero, $zero
    /* 45E0 8018D558 21380000 */  addu       $a3, $zero, $zero
    /* 45E4 8018D55C 60FF0224 */  addiu      $v0, $zero, -0xA0
    /* 45E8 8018D560 F40102AD */  sw         $v0, 0x1F4($t0)
    /* 45EC 8018D564 00EC0224 */  addiu      $v0, $zero, -0x1400
    /* 45F0 8018D568 F80102AD */  sw         $v0, 0x1F8($t0)
    /* 45F4 8018D56C 00FE0224 */  addiu      $v0, $zero, -0x200
    /* 45F8 8018D570 000202AD */  sw         $v0, 0x200($t0)
    /* 45FC 8018D574 00DC0224 */  addiu      $v0, $zero, -0x2400
    /* 4600 8018D578 00101024 */  addiu      $s0, $zero, 0x1000
    /* 4604 8018D57C F00100AD */  sw         $zero, 0x1F0($t0)
    /* 4608 8018D580 FC0100AD */  sw         $zero, 0x1FC($t0)
    /* 460C 8018D584 040202AD */  sw         $v0, 0x204($t0)
    /* 4610 8018D588 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4614 8018D58C 1400B0AF */  sw         $s0, 0x14($sp)
    /* 4618 8018D590 1800B0AF */  sw         $s0, 0x18($sp)
    /* 461C 8018D594 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 4620 8018D598 1E360608 */  j          .L8018D878
    /* 4624 8018D59C 2000A0AF */   sw        $zero, 0x20($sp)
  jlabel .L8018D5A0
    /* 4628 8018D5A0 0A000424 */  addiu      $a0, $zero, 0xA
    /* 462C 8018D5A4 08000524 */  addiu      $a1, $zero, 0x8
    /* 4630 8018D5A8 21300000 */  addu       $a2, $zero, $zero
    /* 4634 8018D5AC 21380000 */  addu       $a3, $zero, $zero
    /* 4638 8018D5B0 80FE0224 */  addiu      $v0, $zero, -0x180
    /* 463C 8018D5B4 3A0060A4 */  sh         $zero, 0x3A($v1)
    /* 4640 8018D5B8 000202AD */  sw         $v0, 0x200($t0)
    /* 4644 8018D5BC 00060224 */  addiu      $v0, $zero, 0x600
    /* 4648 8018D5C0 EC0202A5 */  sh         $v0, 0x2EC($t0)
    /* 464C 8018D5C4 70000224 */  addiu      $v0, $zero, 0x70
    /* 4650 8018D5C8 E70202A1 */  sb         $v0, 0x2E7($t0)
    /* 4654 8018D5CC 000E0224 */  addiu      $v0, $zero, 0xE00
    /* 4658 8018D5D0 EA0202A5 */  sh         $v0, 0x2EA($t0)
    /* 465C 8018D5D4 01000224 */  addiu      $v0, $zero, 0x1
    /* 4660 8018D5D8 E80102A1 */  sb         $v0, 0x1E8($t0)
    /* 4664 8018D5DC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4668 8018D5E0 DA592385 */  lh         $v1, 0x59DA($t1)
    /* 466C 8018D5E4 DE592285 */  lh         $v0, 0x59DE($t1)
    /* 4670 8018D5E8 00101024 */  addiu      $s0, $zero, 0x1000
    /* 4674 8018D5EC 1400B0AF */  sw         $s0, 0x14($sp)
    /* 4678 8018D5F0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 467C 8018D5F4 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 4680 8018D5F8 2000A0AF */  sw         $zero, 0x20($sp)
    /* 4684 8018D5FC 00014224 */  addiu      $v0, $v0, 0x100
    /* 4688 8018D600 FC0103AD */  sw         $v1, 0x1FC($t0)
    /* 468C 8018D604 1C75000C */  jal        func_8001D470
    /* 4690 8018D608 040202AD */   sw        $v0, 0x204($t0)
    /* 4694 8018D60C 0B000424 */  addiu      $a0, $zero, 0xB
    /* 4698 8018D610 08000524 */  addiu      $a1, $zero, 0x8
    /* 469C 8018D614 21300000 */  addu       $a2, $zero, $zero
    /* 46A0 8018D618 21380000 */  addu       $a3, $zero, $zero
    /* 46A4 8018D61C 80001124 */  addiu      $s1, $zero, 0x80
    /* 46A8 8018D620 1000B1AF */  sw         $s1, 0x10($sp)
    /* 46AC 8018D624 1400B0AF */  sw         $s0, 0x14($sp)
    /* 46B0 8018D628 1800B0AF */  sw         $s0, 0x18($sp)
    /* 46B4 8018D62C 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 46B8 8018D630 1C75000C */  jal        func_8001D470
    /* 46BC 8018D634 2000A0AF */   sw        $zero, 0x20($sp)
    /* 46C0 8018D638 0D000424 */  addiu      $a0, $zero, 0xD
    /* 46C4 8018D63C 01000524 */  addiu      $a1, $zero, 0x1
    /* 46C8 8018D640 21300000 */  addu       $a2, $zero, $zero
    /* 46CC 8018D644 21380000 */  addu       $a3, $zero, $zero
    /* 46D0 8018D648 1000A0AF */  sw         $zero, 0x10($sp)
    /* 46D4 8018D64C 1400B0AF */  sw         $s0, 0x14($sp)
    /* 46D8 8018D650 1800B0AF */  sw         $s0, 0x18($sp)
    /* 46DC 8018D654 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 46E0 8018D658 1C75000C */  jal        func_8001D470
    /* 46E4 8018D65C 2000A0AF */   sw        $zero, 0x20($sp)
    /* 46E8 8018D660 0E000424 */  addiu      $a0, $zero, 0xE
    /* 46EC 8018D664 01000524 */  addiu      $a1, $zero, 0x1
    /* 46F0 8018D668 21300000 */  addu       $a2, $zero, $zero
    /* 46F4 8018D66C 21380000 */  addu       $a3, $zero, $zero
    /* 46F8 8018D670 1000B1AF */  sw         $s1, 0x10($sp)
    /* 46FC 8018D674 1400B0AF */  sw         $s0, 0x14($sp)
    /* 4700 8018D678 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4704 8018D67C 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 4708 8018D680 1C75000C */  jal        func_8001D470
    /* 470C 8018D684 2000A0AF */   sw        $zero, 0x20($sp)
    /* 4710 8018D688 0F000424 */  addiu      $a0, $zero, 0xF
    /* 4714 8018D68C 02000524 */  addiu      $a1, $zero, 0x2
    /* 4718 8018D690 21300000 */  addu       $a2, $zero, $zero
    /* 471C 8018D694 21380000 */  addu       $a3, $zero, $zero
    /* 4720 8018D698 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4724 8018D69C 1400B0AF */  sw         $s0, 0x14($sp)
    /* 4728 8018D6A0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 472C 8018D6A4 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 4730 8018D6A8 1C75000C */  jal        func_8001D470
    /* 4734 8018D6AC 2000A0AF */   sw        $zero, 0x20($sp)
    /* 4738 8018D6B0 0C000424 */  addiu      $a0, $zero, 0xC
    /* 473C 8018D6B4 04000524 */  addiu      $a1, $zero, 0x4
    /* 4740 8018D6B8 21300000 */  addu       $a2, $zero, $zero
    /* 4744 8018D6BC 21380000 */  addu       $a3, $zero, $zero
    /* 4748 8018D6C0 39360608 */  j          .L8018D8E4
    /* 474C 8018D6C4 1000A0AF */   sw        $zero, 0x10($sp)
  jlabel .L8018D6C8
    /* 4750 8018D6C8 0A000424 */  addiu      $a0, $zero, 0xA
    /* 4754 8018D6CC 08000524 */  addiu      $a1, $zero, 0x8
    /* 4758 8018D6D0 21300000 */  addu       $a2, $zero, $zero
    /* 475C 8018D6D4 21380000 */  addu       $a3, $zero, $zero
    /* 4760 8018D6D8 80FE0224 */  addiu      $v0, $zero, -0x180
    /* 4764 8018D6DC 3A0060A4 */  sh         $zero, 0x3A($v1)
    /* 4768 8018D6E0 000202AD */  sw         $v0, 0x200($t0)
    /* 476C 8018D6E4 00060224 */  addiu      $v0, $zero, 0x600
    /* 4770 8018D6E8 EC0202A5 */  sh         $v0, 0x2EC($t0)
    /* 4774 8018D6EC 10000224 */  addiu      $v0, $zero, 0x10
    /* 4778 8018D6F0 E70202A1 */  sb         $v0, 0x2E7($t0)
    /* 477C 8018D6F4 000E0224 */  addiu      $v0, $zero, 0xE00
    /* 4780 8018D6F8 EA0202A5 */  sh         $v0, 0x2EA($t0)
    /* 4784 8018D6FC 01000224 */  addiu      $v0, $zero, 0x1
    /* 4788 8018D700 E80102A1 */  sb         $v0, 0x1E8($t0)
    /* 478C 8018D704 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4790 8018D708 DA592385 */  lh         $v1, 0x59DA($t1)
    /* 4794 8018D70C DE592285 */  lh         $v0, 0x59DE($t1)
    /* 4798 8018D710 00101024 */  addiu      $s0, $zero, 0x1000
    /* 479C 8018D714 1400B0AF */  sw         $s0, 0x14($sp)
    /* 47A0 8018D718 1800B0AF */  sw         $s0, 0x18($sp)
    /* 47A4 8018D71C 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 47A8 8018D720 2000A0AF */  sw         $zero, 0x20($sp)
    /* 47AC 8018D724 00014224 */  addiu      $v0, $v0, 0x100
    /* 47B0 8018D728 FC0103AD */  sw         $v1, 0x1FC($t0)
    /* 47B4 8018D72C 1C75000C */  jal        func_8001D470
    /* 47B8 8018D730 040202AD */   sw        $v0, 0x204($t0)
    /* 47BC 8018D734 0B000424 */  addiu      $a0, $zero, 0xB
    /* 47C0 8018D738 08000524 */  addiu      $a1, $zero, 0x8
    /* 47C4 8018D73C 21300000 */  addu       $a2, $zero, $zero
    /* 47C8 8018D740 21380000 */  addu       $a3, $zero, $zero
    /* 47CC 8018D744 80001124 */  addiu      $s1, $zero, 0x80
    /* 47D0 8018D748 1000B1AF */  sw         $s1, 0x10($sp)
    /* 47D4 8018D74C 1400B0AF */  sw         $s0, 0x14($sp)
    /* 47D8 8018D750 1800B0AF */  sw         $s0, 0x18($sp)
    /* 47DC 8018D754 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 47E0 8018D758 1C75000C */  jal        func_8001D470
    /* 47E4 8018D75C 2000A0AF */   sw        $zero, 0x20($sp)
    /* 47E8 8018D760 0D000424 */  addiu      $a0, $zero, 0xD
    /* 47EC 8018D764 01000524 */  addiu      $a1, $zero, 0x1
    /* 47F0 8018D768 21300000 */  addu       $a2, $zero, $zero
    /* 47F4 8018D76C 21380000 */  addu       $a3, $zero, $zero
    /* 47F8 8018D770 1000A0AF */  sw         $zero, 0x10($sp)
    /* 47FC 8018D774 1400B0AF */  sw         $s0, 0x14($sp)
    /* 4800 8018D778 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4804 8018D77C 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 4808 8018D780 1C75000C */  jal        func_8001D470
    /* 480C 8018D784 2000A0AF */   sw        $zero, 0x20($sp)
    /* 4810 8018D788 0E000424 */  addiu      $a0, $zero, 0xE
    /* 4814 8018D78C 01000524 */  addiu      $a1, $zero, 0x1
    /* 4818 8018D790 21300000 */  addu       $a2, $zero, $zero
    /* 481C 8018D794 21380000 */  addu       $a3, $zero, $zero
    /* 4820 8018D798 1000B1AF */  sw         $s1, 0x10($sp)
    /* 4824 8018D79C 1400B0AF */  sw         $s0, 0x14($sp)
    /* 4828 8018D7A0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 482C 8018D7A4 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 4830 8018D7A8 1C75000C */  jal        func_8001D470
    /* 4834 8018D7AC 2000A0AF */   sw        $zero, 0x20($sp)
    /* 4838 8018D7B0 0F000424 */  addiu      $a0, $zero, 0xF
    /* 483C 8018D7B4 02000524 */  addiu      $a1, $zero, 0x2
    /* 4840 8018D7B8 21300000 */  addu       $a2, $zero, $zero
    /* 4844 8018D7BC 21380000 */  addu       $a3, $zero, $zero
    /* 4848 8018D7C0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 484C 8018D7C4 1400B0AF */  sw         $s0, 0x14($sp)
    /* 4850 8018D7C8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4854 8018D7CC 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 4858 8018D7D0 1C75000C */  jal        func_8001D470
    /* 485C 8018D7D4 2000A0AF */   sw        $zero, 0x20($sp)
    /* 4860 8018D7D8 0C000424 */  addiu      $a0, $zero, 0xC
    /* 4864 8018D7DC 04000524 */  addiu      $a1, $zero, 0x4
    /* 4868 8018D7E0 21300000 */  addu       $a2, $zero, $zero
    /* 486C 8018D7E4 21380000 */  addu       $a3, $zero, $zero
    /* 4870 8018D7E8 39360608 */  j          .L8018D8E4
    /* 4874 8018D7EC 1000A0AF */   sw        $zero, 0x10($sp)
  jlabel .L8018D7F0
    /* 4878 8018D7F0 0A000424 */  addiu      $a0, $zero, 0xA
    /* 487C 8018D7F4 08000524 */  addiu      $a1, $zero, 0x8
    /* 4880 8018D7F8 21300000 */  addu       $a2, $zero, $zero
    /* 4884 8018D7FC 21380000 */  addu       $a3, $zero, $zero
    /* 4888 8018D800 80FE0224 */  addiu      $v0, $zero, -0x180
    /* 488C 8018D804 3A0060A4 */  sh         $zero, 0x3A($v1)
    /* 4890 8018D808 000202AD */  sw         $v0, 0x200($t0)
    /* 4894 8018D80C 0D360608 */  j          .L8018D834
    /* 4898 8018D810 00120224 */   addiu     $v0, $zero, 0x1200
  jlabel .L8018D814
    /* 489C 8018D814 0A000424 */  addiu      $a0, $zero, 0xA
    /* 48A0 8018D818 08000524 */  addiu      $a1, $zero, 0x8
    /* 48A4 8018D81C 21300000 */  addu       $a2, $zero, $zero
    /* 48A8 8018D820 21380000 */  addu       $a3, $zero, $zero
    /* 48AC 8018D824 80FE0224 */  addiu      $v0, $zero, -0x180
    /* 48B0 8018D828 3A0060A4 */  sh         $zero, 0x3A($v1)
    /* 48B4 8018D82C 000202AD */  sw         $v0, 0x200($t0)
    /* 48B8 8018D830 00EE0224 */  addiu      $v0, $zero, -0x1200
  .L8018D834:
    /* 48BC 8018D834 F00102AD */  sw         $v0, 0x1F0($t0)
    /* 48C0 8018D838 00F90224 */  addiu      $v0, $zero, -0x700
    /* 48C4 8018D83C F40102AD */  sw         $v0, 0x1F4($t0)
    /* 48C8 8018D840 00E80224 */  addiu      $v0, $zero, -0x1800
    /* 48CC 8018D844 F80102AD */  sw         $v0, 0x1F8($t0)
    /* 48D0 8018D848 E80100A1 */  sb         $zero, 0x1E8($t0)
    /* 48D4 8018D84C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 48D8 8018D850 DA592385 */  lh         $v1, 0x59DA($t1)
    /* 48DC 8018D854 DE592285 */  lh         $v0, 0x59DE($t1)
    /* 48E0 8018D858 00101024 */  addiu      $s0, $zero, 0x1000
    /* 48E4 8018D85C 1400B0AF */  sw         $s0, 0x14($sp)
    /* 48E8 8018D860 1800B0AF */  sw         $s0, 0x18($sp)
    /* 48EC 8018D864 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 48F0 8018D868 2000A0AF */  sw         $zero, 0x20($sp)
    /* 48F4 8018D86C 00014224 */  addiu      $v0, $v0, 0x100
    /* 48F8 8018D870 FC0103AD */  sw         $v1, 0x1FC($t0)
    /* 48FC 8018D874 040202AD */  sw         $v0, 0x204($t0)
  .L8018D878:
    /* 4900 8018D878 1C75000C */  jal        func_8001D470
    /* 4904 8018D87C 80001124 */   addiu     $s1, $zero, 0x80
    /* 4908 8018D880 0B000424 */  addiu      $a0, $zero, 0xB
    /* 490C 8018D884 08000524 */  addiu      $a1, $zero, 0x8
    /* 4910 8018D888 21300000 */  addu       $a2, $zero, $zero
    /* 4914 8018D88C 21380000 */  addu       $a3, $zero, $zero
    /* 4918 8018D890 1000B1AF */  sw         $s1, 0x10($sp)
    /* 491C 8018D894 1400B0AF */  sw         $s0, 0x14($sp)
    /* 4920 8018D898 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4924 8018D89C 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 4928 8018D8A0 1C75000C */  jal        func_8001D470
    /* 492C 8018D8A4 2000A0AF */   sw        $zero, 0x20($sp)
    /* 4930 8018D8A8 0D000424 */  addiu      $a0, $zero, 0xD
    /* 4934 8018D8AC 01000524 */  addiu      $a1, $zero, 0x1
    /* 4938 8018D8B0 21300000 */  addu       $a2, $zero, $zero
    /* 493C 8018D8B4 21380000 */  addu       $a3, $zero, $zero
    /* 4940 8018D8B8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4944 8018D8BC 1400B0AF */  sw         $s0, 0x14($sp)
    /* 4948 8018D8C0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 494C 8018D8C4 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 4950 8018D8C8 1C75000C */  jal        func_8001D470
    /* 4954 8018D8CC 2000A0AF */   sw        $zero, 0x20($sp)
    /* 4958 8018D8D0 0E000424 */  addiu      $a0, $zero, 0xE
    /* 495C 8018D8D4 01000524 */  addiu      $a1, $zero, 0x1
    /* 4960 8018D8D8 21300000 */  addu       $a2, $zero, $zero
    /* 4964 8018D8DC 21380000 */  addu       $a3, $zero, $zero
    /* 4968 8018D8E0 1000B1AF */  sw         $s1, 0x10($sp)
  .L8018D8E4:
    /* 496C 8018D8E4 1400B0AF */  sw         $s0, 0x14($sp)
    /* 4970 8018D8E8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4974 8018D8EC 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 4978 8018D8F0 1C75000C */  jal        func_8001D470
    /* 497C 8018D8F4 2000A0AF */   sw        $zero, 0x20($sp)
    /* 4980 8018D8F8 08000424 */  addiu      $a0, $zero, 0x8
    /* 4984 8018D8FC 07000524 */  addiu      $a1, $zero, 0x7
    /* 4988 8018D900 E0CC0624 */  addiu      $a2, $zero, -0x3320
    /* 498C 8018D904 21380000 */  addu       $a3, $zero, $zero
    /* 4990 8018D908 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4994 8018D90C 1400B0AF */  sw         $s0, 0x14($sp)
    /* 4998 8018D910 1800B0AF */  sw         $s0, 0x18($sp)
    /* 499C 8018D914 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 49A0 8018D918 1C75000C */  jal        func_8001D470
    /* 49A4 8018D91C 2000A0AF */   sw        $zero, 0x20($sp)
    /* 49A8 8018D920 09000424 */  addiu      $a0, $zero, 0x9
    /* 49AC 8018D924 07000524 */  addiu      $a1, $zero, 0x7
    /* 49B0 8018D928 20330624 */  addiu      $a2, $zero, 0x3320
    /* 49B4 8018D92C 21380000 */  addu       $a3, $zero, $zero
    /* 49B8 8018D930 1000B1AF */  sw         $s1, 0x10($sp)
  .L8018D934:
    /* 49BC 8018D934 1400B0AF */  sw         $s0, 0x14($sp)
    /* 49C0 8018D938 1800B0AF */  sw         $s0, 0x18($sp)
    /* 49C4 8018D93C 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 49C8 8018D940 1C75000C */  jal        func_8001D470
    /* 49CC 8018D944 2000A0AF */   sw        $zero, 0x20($sp)
    /* 49D0 8018D948 E9360608 */  j          .L8018DBA4
    /* 49D4 8018D94C 00000000 */   nop
  jlabel .L8018D950
    /* 49D8 8018D950 B7FE0224 */  addiu      $v0, $zero, -0x149
    /* 49DC 8018D954 F00102AD */  sw         $v0, 0x1F0($t0)
    /* 49E0 8018D958 00FB0224 */  addiu      $v0, $zero, -0x500
    /* 49E4 8018D95C F40102AD */  sw         $v0, 0x1F4($t0)
    /* 49E8 8018D960 00DC0224 */  addiu      $v0, $zero, -0x2400
    /* 49EC 8018D964 F80102AD */  sw         $v0, 0x1F8($t0)
    /* 49F0 8018D968 00F70224 */  addiu      $v0, $zero, -0x900
    /* 49F4 8018D96C FC0102AD */  sw         $v0, 0x1FC($t0)
    /* 49F8 8018D970 00F80224 */  addiu      $v0, $zero, -0x800
    /* 49FC 8018D974 040202AD */  sw         $v0, 0x204($t0)
    /* 4A00 8018D978 40FE0224 */  addiu      $v0, $zero, -0x1C0
    /* 4A04 8018D97C E9360608 */  j          .L8018DBA4
    /* 4A08 8018D980 000202AD */   sw        $v0, 0x200($t0)
  jlabel .L8018D984
    /* 4A0C 8018D984 E3020291 */  lbu        $v0, 0x2E3($t0)
    /* 4A10 8018D988 00000000 */  nop
    /* 4A14 8018D98C FF004330 */  andi       $v1, $v0, 0xFF
    /* 4A18 8018D990 0600622C */  sltiu      $v0, $v1, 0x6
    /* 4A1C 8018D994 83004010 */  beqz       $v0, .L8018DBA4
    /* 4A20 8018D998 80100300 */   sll       $v0, $v1, 2
    /* 4A24 8018D99C 1980013C */  lui        $at, %hi(jtbl_8018943C)
    /* 4A28 8018D9A0 21082200 */  addu       $at, $at, $v0
    /* 4A2C 8018D9A4 3C94228C */  lw         $v0, %lo(jtbl_8018943C)($at)
    /* 4A30 8018D9A8 00000000 */  nop
    /* 4A34 8018D9AC 08004000 */  jr         $v0
    /* 4A38 8018D9B0 00000000 */   nop
  jlabel .L8018D9B4
    /* 4A3C 8018D9B4 B7FE0224 */  addiu      $v0, $zero, -0x149
    /* 4A40 8018D9B8 F00102AD */  sw         $v0, 0x1F0($t0)
    /* 4A44 8018D9BC 80FA0224 */  addiu      $v0, $zero, -0x580
    /* 4A48 8018D9C0 F40102AD */  sw         $v0, 0x1F4($t0)
    /* 4A4C 8018D9C4 00E00224 */  addiu      $v0, $zero, -0x2000
    /* 4A50 8018D9C8 F80102AD */  sw         $v0, 0x1F8($t0)
    /* 4A54 8018D9CC 00F70224 */  addiu      $v0, $zero, -0x900
    /* 4A58 8018D9D0 FC0102AD */  sw         $v0, 0x1FC($t0)
    /* 4A5C 8018D9D4 00FF0224 */  addiu      $v0, $zero, -0x100
    /* 4A60 8018D9D8 000202AD */  sw         $v0, 0x200($t0)
    /* 4A64 8018D9DC E8360608 */  j          .L8018DBA0
    /* 4A68 8018D9E0 80F40224 */   addiu     $v0, $zero, -0xB80
  jlabel .L8018D9E4
    /* 4A6C 8018D9E4 B7FE0224 */  addiu      $v0, $zero, -0x149
    /* 4A70 8018D9E8 F00102AD */  sw         $v0, 0x1F0($t0)
    /* 4A74 8018D9EC 00FD0224 */  addiu      $v0, $zero, -0x300
    /* 4A78 8018D9F0 F40102AD */  sw         $v0, 0x1F4($t0)
    /* 4A7C 8018D9F4 C0DF0224 */  addiu      $v0, $zero, -0x2040
    /* 4A80 8018D9F8 F80102AD */  sw         $v0, 0x1F8($t0)
    /* 4A84 8018D9FC 00F70224 */  addiu      $v0, $zero, -0x900
    /* 4A88 8018DA00 FC0102AD */  sw         $v0, 0x1FC($t0)
    /* 4A8C 8018DA04 20FF0224 */  addiu      $v0, $zero, -0xE0
    /* 4A90 8018DA08 000202AD */  sw         $v0, 0x200($t0)
    /* 4A94 8018DA0C E8360608 */  j          .L8018DBA0
    /* 4A98 8018DA10 00F80224 */   addiu     $v0, $zero, -0x800
  jlabel .L8018DA14
    /* 4A9C 8018DA14 E3020291 */  lbu        $v0, 0x2E3($t0)
    /* 4AA0 8018DA18 01000324 */  addiu      $v1, $zero, 0x1
    /* 4AA4 8018DA1C E80103A1 */  sb         $v1, 0x1E8($t0)
    /* 4AA8 8018DA20 FF004330 */  andi       $v1, $v0, 0xFF
    /* 4AAC 8018DA24 0600622C */  sltiu      $v0, $v1, 0x6
    /* 4AB0 8018DA28 5E004010 */  beqz       $v0, .L8018DBA4
    /* 4AB4 8018DA2C 80100300 */   sll       $v0, $v1, 2
    /* 4AB8 8018DA30 1980013C */  lui        $at, %hi(jtbl_80189454)
    /* 4ABC 8018DA34 21082200 */  addu       $at, $at, $v0
    /* 4AC0 8018DA38 5494228C */  lw         $v0, %lo(jtbl_80189454)($at)
    /* 4AC4 8018DA3C 00000000 */  nop
    /* 4AC8 8018DA40 08004000 */  jr         $v0
    /* 4ACC 8018DA44 00000000 */   nop
  jlabel .L8018DA48
    /* 4AD0 8018DA48 80FB0224 */  addiu      $v0, $zero, -0x480
    /* 4AD4 8018DA4C F00102AD */  sw         $v0, 0x1F0($t0)
    /* 4AD8 8018DA50 00FE0224 */  addiu      $v0, $zero, -0x200
    /* 4ADC 8018DA54 F40102AD */  sw         $v0, 0x1F4($t0)
    /* 4AE0 8018DA58 D0E60224 */  addiu      $v0, $zero, -0x1930
    /* 4AE4 8018DA5C F80102AD */  sw         $v0, 0x1F8($t0)
    /* 4AE8 8018DA60 00F70224 */  addiu      $v0, $zero, -0x900
    /* 4AEC 8018DA64 FC0102AD */  sw         $v0, 0x1FC($t0)
    /* 4AF0 8018DA68 00FF0224 */  addiu      $v0, $zero, -0x100
    /* 4AF4 8018DA6C 000202AD */  sw         $v0, 0x200($t0)
    /* 4AF8 8018DA70 E8360608 */  j          .L8018DBA0
    /* 4AFC 8018DA74 00F80224 */   addiu     $v0, $zero, -0x800
  jlabel .L8018DA78
    /* 4B00 8018DA78 80FB0224 */  addiu      $v0, $zero, -0x480
    /* 4B04 8018DA7C F00102AD */  sw         $v0, 0x1F0($t0)
    /* 4B08 8018DA80 00FE0224 */  addiu      $v0, $zero, -0x200
    /* 4B0C 8018DA84 F40102AD */  sw         $v0, 0x1F4($t0)
    /* 4B10 8018DA88 00E70224 */  addiu      $v0, $zero, -0x1900
    /* 4B14 8018DA8C F80102AD */  sw         $v0, 0x1F8($t0)
    /* 4B18 8018DA90 00F70224 */  addiu      $v0, $zero, -0x900
    /* 4B1C 8018DA94 FC0102AD */  sw         $v0, 0x1FC($t0)
    /* 4B20 8018DA98 00F80224 */  addiu      $v0, $zero, -0x800
    /* 4B24 8018DA9C E8360608 */  j          .L8018DBA0
    /* 4B28 8018DAA0 000200AD */   sw        $zero, 0x200($t0)
  jlabel .L8018DAA4
    /* 4B2C 8018DAA4 01000224 */  addiu      $v0, $zero, 0x1
    /* 4B30 8018DAA8 E80102A1 */  sb         $v0, 0x1E8($t0)
    /* 4B34 8018DAAC 80F80224 */  addiu      $v0, $zero, -0x780
    /* 4B38 8018DAB0 F00102AD */  sw         $v0, 0x1F0($t0)
    /* 4B3C 8018DAB4 20FE0224 */  addiu      $v0, $zero, -0x1E0
    /* 4B40 8018DAB8 F40102AD */  sw         $v0, 0x1F4($t0)
    /* 4B44 8018DABC C0EB0224 */  addiu      $v0, $zero, -0x1440
    /* 4B48 8018DAC0 F80102AD */  sw         $v0, 0x1F8($t0)
    /* 4B4C 8018DAC4 80F50224 */  addiu      $v0, $zero, -0xA80
    /* 4B50 8018DAC8 FC0102AD */  sw         $v0, 0x1FC($t0)
    /* 4B54 8018DACC 00FF0224 */  addiu      $v0, $zero, -0x100
    /* 4B58 8018DAD0 000202AD */  sw         $v0, 0x200($t0)
    /* 4B5C 8018DAD4 E8360608 */  j          .L8018DBA0
    /* 4B60 8018DAD8 00F80224 */   addiu     $v0, $zero, -0x800
  jlabel .L8018DADC
    /* 4B64 8018DADC 80F80224 */  addiu      $v0, $zero, -0x780
    /* 4B68 8018DAE0 F00102AD */  sw         $v0, 0x1F0($t0)
    /* 4B6C 8018DAE4 60FF0224 */  addiu      $v0, $zero, -0xA0
    /* 4B70 8018DAE8 F40102AD */  sw         $v0, 0x1F4($t0)
    /* 4B74 8018DAEC F0E90224 */  addiu      $v0, $zero, -0x1610
    /* 4B78 8018DAF0 F80102AD */  sw         $v0, 0x1F8($t0)
    /* 4B7C 8018DAF4 00F70224 */  addiu      $v0, $zero, -0x900
    /* 4B80 8018DAF8 FC0102AD */  sw         $v0, 0x1FC($t0)
    /* 4B84 8018DAFC F0FC0224 */  addiu      $v0, $zero, -0x310
    /* 4B88 8018DB00 000202AD */  sw         $v0, 0x200($t0)
    /* 4B8C 8018DB04 E8360608 */  j          .L8018DBA0
    /* 4B90 8018DB08 00F80224 */   addiu     $v0, $zero, -0x800
  jlabel .L8018DB0C
    /* 4B94 8018DB0C 00F70324 */  addiu      $v1, $zero, -0x900
    /* 4B98 8018DB10 00FB0224 */  addiu      $v0, $zero, -0x500
    /* 4B9C 8018DB14 F40102AD */  sw         $v0, 0x1F4($t0)
    /* 4BA0 8018DB18 00D60224 */  addiu      $v0, $zero, -0x2A00
    /* 4BA4 8018DB1C F80102AD */  sw         $v0, 0x1F8($t0)
    /* 4BA8 8018DB20 00FC0224 */  addiu      $v0, $zero, -0x400
    /* 4BAC 8018DB24 000202AD */  sw         $v0, 0x200($t0)
    /* 4BB0 8018DB28 00F80224 */  addiu      $v0, $zero, -0x800
    /* 4BB4 8018DB2C F00103AD */  sw         $v1, 0x1F0($t0)
    /* 4BB8 8018DB30 E8360608 */  j          .L8018DBA0
    /* 4BBC 8018DB34 FC0103AD */   sw        $v1, 0x1FC($t0)
  jlabel .L8018DB38
    /* 4BC0 8018DB38 00E90224 */  addiu      $v0, $zero, -0x1700
    /* 4BC4 8018DB3C 1980013C */  lui        $at, %hi(D_80193C8C)
    /* 4BC8 8018DB40 8C3C22A4 */  sh         $v0, %lo(D_80193C8C)($at)
    /* 4BCC 8018DB44 CDFC0224 */  addiu      $v0, $zero, -0x333
    /* 4BD0 8018DB48 F00102AD */  sw         $v0, 0x1F0($t0)
    /* 4BD4 8018DB4C 10FE0224 */  addiu      $v0, $zero, -0x1F0
    /* 4BD8 8018DB50 F40102AD */  sw         $v0, 0x1F4($t0)
    /* 4BDC 8018DB54 00E50224 */  addiu      $v0, $zero, -0x1B00
    /* 4BE0 8018DB58 F80102AD */  sw         $v0, 0x1F8($t0)
    /* 4BE4 8018DB5C 00F00224 */  addiu      $v0, $zero, -0x1000
    /* 4BE8 8018DB60 FC0102AD */  sw         $v0, 0x1FC($t0)
    /* 4BEC 8018DB64 F0FE0224 */  addiu      $v0, $zero, -0x110
    /* 4BF0 8018DB68 000202AD */  sw         $v0, 0x200($t0)
    /* 4BF4 8018DB6C 1980013C */  lui        $at, %hi(D_80193C8A)
    /* 4BF8 8018DB70 8A3C20A4 */  sh         $zero, %lo(D_80193C8A)($at)
    /* 4BFC 8018DB74 E8360608 */  j          .L8018DBA0
    /* 4C00 8018DB78 10F60224 */   addiu     $v0, $zero, -0x9F0
  jlabel .L8018DB7C
    /* 4C04 8018DB7C 00F00224 */  addiu      $v0, $zero, -0x1000
    /* 4C08 8018DB80 F40102AD */  sw         $v0, 0x1F4($t0)
    /* 4C0C 8018DB84 00D60224 */  addiu      $v0, $zero, -0x2A00
    /* 4C10 8018DB88 F80102AD */  sw         $v0, 0x1F8($t0)
    /* 4C14 8018DB8C 00FF0224 */  addiu      $v0, $zero, -0x100
    /* 4C18 8018DB90 000202AD */  sw         $v0, 0x200($t0)
    /* 4C1C 8018DB94 00F80224 */  addiu      $v0, $zero, -0x800
  .L8018DB98:
    /* 4C20 8018DB98 F00100AD */  sw         $zero, 0x1F0($t0)
    /* 4C24 8018DB9C FC0100AD */  sw         $zero, 0x1FC($t0)
  .L8018DBA0:
    /* 4C28 8018DBA0 040202AD */  sw         $v0, 0x204($t0)
  jlabel .L8018DBA4
    /* 4C2C 8018DBA4 3000BF8F */  lw         $ra, 0x30($sp)
    /* 4C30 8018DBA8 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 4C34 8018DBAC 2800B08F */  lw         $s0, 0x28($sp)
    /* 4C38 8018DBB0 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 4C3C 8018DBB4 0800E003 */  jr         $ra
    /* 4C40 8018DBB8 00000000 */   nop
endlabel func_8018D21C
