nonmatching func_801CC13C, 0x8C4

glabel func_801CC13C
    /* 431C4 801CC13C A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 431C8 801CC140 21200000 */  addu       $a0, $zero, $zero
    /* 431CC 801CC144 5C00BFAF */  sw         $ra, 0x5C($sp)
    /* 431D0 801CC148 5800B4AF */  sw         $s4, 0x58($sp)
    /* 431D4 801CC14C 5400B3AF */  sw         $s3, 0x54($sp)
    /* 431D8 801CC150 5000B2AF */  sw         $s2, 0x50($sp)
    /* 431DC 801CC154 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 431E0 801CC158 98BB010C */  jal        func_8006EE60
    /* 431E4 801CC15C 4800B0AF */   sw        $s0, 0x48($sp)
    /* 431E8 801CC160 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 431EC 801CC164 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 431F0 801CC168 1180113C */  lui        $s1, %hi(D_8010A5A8)
    /* 431F4 801CC16C A8A53126 */  addiu      $s1, $s1, %lo(D_8010A5A8)
    /* 431F8 801CC170 801F033C */  lui        $v1, (0x1F80029B >> 16)
    /* 431FC 801CC174 9B026390 */  lbu        $v1, (0x1F80029B & 0xFFFF)($v1)
    /* 43200 801CC178 1E80143C */  lui        $s4, %hi(D_801D8DA8)
    /* 43204 801CC17C A88D9426 */  addiu      $s4, $s4, %lo(D_801D8DA8)
    /* 43208 801CC180 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 4320C 801CC184 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 43210 801CC188 0E00622C */  sltiu      $v0, $v1, 0xE
    /* 43214 801CC18C 13024010 */  beqz       $v0, .L801CC9DC
    /* 43218 801CC190 801F133C */   lui       $s3, (0x1F80029B >> 16)
    /* 4321C 801CC194 80100300 */  sll        $v0, $v1, 2
    /* 43220 801CC198 1980013C */  lui        $at, %hi(jtbl_8018DA04)
    /* 43224 801CC19C 21082200 */  addu       $at, $at, $v0
    /* 43228 801CC1A0 04DA228C */  lw         $v0, %lo(jtbl_8018DA04)($at)
    /* 4322C 801CC1A4 00000000 */  nop
    /* 43230 801CC1A8 08004000 */  jr         $v0
    /* 43234 801CC1AC 00000000 */   nop
  jlabel .L801CC1B0
    /* 43238 801CC1B0 84000224 */  addiu      $v0, $zero, 0x84
    /* 4323C 801CC1B4 A20262A2 */  sb         $v0, (0x1F8002A2 & 0xFFFF)($s3)
    /* 43240 801CC1B8 80000224 */  addiu      $v0, $zero, 0x80
    /* 43244 801CC1BC 1E80013C */  lui        $at, %hi(D_801D8D8C)
    /* 43248 801CC1C0 8C8D20A0 */  sb         $zero, %lo(D_801D8D8C)($at)
    /* 4324C 801CC1C4 1D80013C */  lui        $at, %hi(D_801D429A)
    /* 43250 801CC1C8 9A4222A0 */  sb         $v0, %lo(D_801D429A)($at)
    /* 43254 801CC1CC 1E80013C */  lui        $at, %hi(D_801D8A28)
    /* 43258 801CC1D0 288A20A0 */  sb         $zero, %lo(D_801D8A28)($at)
    /* 4325C 801CC1D4 9B026292 */  lbu        $v0, (0x1F80029B & 0xFFFF)($s3)
    /* 43260 801CC1D8 04000324 */  addiu      $v1, $zero, 0x4
    /* 43264 801CC1DC 1E80013C */  lui        $at, %hi(D_801D8A28 + 0x1)
    /* 43268 801CC1E0 298A23A0 */  sb         $v1, %lo(D_801D8A28 + 0x1)($at)
    /* 4326C 801CC1E4 76320708 */  j          .L801CC9D8
    /* 43270 801CC1E8 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801CC1EC
    /* 43274 801CC1EC 03000424 */  addiu      $a0, $zero, 0x3
    /* 43278 801CC1F0 21280000 */  addu       $a1, $zero, $zero
    /* 4327C 801CC1F4 21300000 */  addu       $a2, $zero, $zero
    /* 43280 801CC1F8 21380000 */  addu       $a3, $zero, $zero
    /* 43284 801CC1FC 60000324 */  addiu      $v1, $zero, 0x60
    /* 43288 801CC200 2800A3AF */  sw         $v1, 0x28($sp)
    /* 4328C 801CC204 3400A3AF */  sw         $v1, 0x34($sp)
    /* 43290 801CC208 1E80033C */  lui        $v1, %hi(D_801D8A28)
    /* 43294 801CC20C 288A6390 */  lbu        $v1, %lo(D_801D8A28)($v1)
    /* 43298 801CC210 1E80083C */  lui        $t0, %hi(D_801D8A28 + 0x1)
    /* 4329C 801CC214 298A0891 */  lbu        $t0, %lo(D_801D8A28 + 0x1)($t0)
    /* 432A0 801CC218 A8000224 */  addiu      $v0, $zero, 0xA8
    /* 432A4 801CC21C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 432A8 801CC220 34000224 */  addiu      $v0, $zero, 0x34
    /* 432AC 801CC224 1400A2AF */  sw         $v0, 0x14($sp)
    /* 432B0 801CC228 88FF0224 */  addiu      $v0, $zero, -0x78
    /* 432B4 801CC22C 1800A2AF */  sw         $v0, 0x18($sp)
    /* 432B8 801CC230 F2FF0224 */  addiu      $v0, $zero, -0xE
    /* 432BC 801CC234 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 432C0 801CC238 20000224 */  addiu      $v0, $zero, 0x20
    /* 432C4 801CC23C 2000A2AF */  sw         $v0, 0x20($sp)
    /* 432C8 801CC240 2400A2AF */  sw         $v0, 0x24($sp)
    /* 432CC 801CC244 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 432D0 801CC248 3000A2AF */  sw         $v0, 0x30($sp)
    /* 432D4 801CC24C 01000224 */  addiu      $v0, $zero, 0x1
    /* 432D8 801CC250 4000A0AF */  sw         $zero, 0x40($sp)
    /* 432DC 801CC254 4400A2AF */  sw         $v0, 0x44($sp)
    /* 432E0 801CC258 3800A3AF */  sw         $v1, 0x38($sp)
    /* 432E4 801CC25C F813070C */  jal        func_801C4FE0
    /* 432E8 801CC260 3C00A8AF */   sw        $t0, 0x3C($sp)
    /* 432EC 801CC264 1E80033C */  lui        $v1, %hi(D_801D8A28)
    /* 432F0 801CC268 288A6390 */  lbu        $v1, %lo(D_801D8A28)($v1)
    /* 432F4 801CC26C 1D80023C */  lui        $v0, %hi(D_801D429A)
    /* 432F8 801CC270 9A424290 */  lbu        $v0, %lo(D_801D429A)($v0)
    /* 432FC 801CC274 01006324 */  addiu      $v1, $v1, 0x1
    /* 43300 801CC278 F8FF4224 */  addiu      $v0, $v0, -0x8
    /* 43304 801CC27C 1E80013C */  lui        $at, %hi(D_801D8A28)
    /* 43308 801CC280 288A23A0 */  sb         $v1, %lo(D_801D8A28)($at)
    /* 4330C 801CC284 1D80013C */  lui        $at, %hi(D_801D429A)
    /* 43310 801CC288 9A4222A0 */  sb         $v0, %lo(D_801D429A)($at)
    /* 43314 801CC28C AF0F070C */  jal        func_801C3EBC
    /* 43318 801CC290 FF004430 */   andi      $a0, $v0, 0xFF
    /* 4331C 801CC294 1D80023C */  lui        $v0, %hi(D_801D429A)
    /* 43320 801CC298 9A424290 */  lbu        $v0, %lo(D_801D429A)($v0)
    /* 43324 801CC29C 00000000 */  nop
    /* 43328 801CC2A0 4100422C */  sltiu      $v0, $v0, 0x41
    /* 4332C 801CC2A4 CD014010 */  beqz       $v0, .L801CC9DC
    /* 43330 801CC2A8 00000000 */   nop
    /* 43334 801CC2AC 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 43338 801CC2B0 76320708 */  j          .L801CC9D8
    /* 4333C 801CC2B4 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801CC2B8
    /* 43340 801CC2B8 21200000 */  addu       $a0, $zero, $zero
    /* 43344 801CC2BC 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 43348 801CC2C0 1D80123C */  lui        $s2, %hi(D_801D58B0)
    /* 4334C 801CC2C4 B0585226 */  addiu      $s2, $s2, %lo(D_801D58B0)
    /* 43350 801CC2C8 3E000724 */  addiu      $a3, $zero, 0x3E
    /* 43354 801CC2CC 38010224 */  addiu      $v0, $zero, 0x138
    /* 43358 801CC2D0 03001124 */  addiu      $s1, $zero, 0x3
    /* 4335C 801CC2D4 0000458E */  lw         $a1, 0x0($s2)
    /* 43360 801CC2D8 01001024 */  addiu      $s0, $zero, 0x1
    /* 43364 801CC2DC 1E80013C */  lui        $at, %hi(D_801D92F7)
    /* 43368 801CC2E0 F79220A0 */  sb         $zero, %lo(D_801D92F7)($at)
    /* 4336C 801CC2E4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 43370 801CC2E8 1400A0AF */  sw         $zero, 0x14($sp)
    /* 43374 801CC2EC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 43378 801CC2F0 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 4337C 801CC2F4 2000A0AF */  sw         $zero, 0x20($sp)
    /* 43380 801CC2F8 2400B1AF */  sw         $s1, 0x24($sp)
    /* 43384 801CC2FC 2800B0AF */  sw         $s0, 0x28($sp)
    /* 43388 801CC300 B850060C */  jal        func_801942E0
    /* 4338C 801CC304 2C00B0AF */   sw        $s0, 0x2C($sp)
    /* 43390 801CC308 01000424 */  addiu      $a0, $zero, 0x1
    /* 43394 801CC30C 80FF0624 */  addiu      $a2, $zero, -0x80
    /* 43398 801CC310 EEFF0724 */  addiu      $a3, $zero, -0x12
    /* 4339C 801CC314 0000458E */  lw         $a1, 0x0($s2)
    /* 433A0 801CC318 00010224 */  addiu      $v0, $zero, 0x100
    /* 433A4 801CC31C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 433A8 801CC320 05000224 */  addiu      $v0, $zero, 0x5
    /* 433AC 801CC324 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 433B0 801CC328 0C000224 */  addiu      $v0, $zero, 0xC
    /* 433B4 801CC32C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 433B8 801CC330 1800A0AF */  sw         $zero, 0x18($sp)
    /* 433BC 801CC334 2000A0AF */  sw         $zero, 0x20($sp)
    /* 433C0 801CC338 2400A2AF */  sw         $v0, 0x24($sp)
    /* 433C4 801CC33C 2800B0AF */  sw         $s0, 0x28($sp)
    /* 433C8 801CC340 B850060C */  jal        func_801942E0
    /* 433CC 801CC344 2C00B0AF */   sw        $s0, 0x2C($sp)
    /* 433D0 801CC348 01000424 */  addiu      $a0, $zero, 0x1
    /* 433D4 801CC34C 21280000 */  addu       $a1, $zero, $zero
    /* 433D8 801CC350 21308002 */  addu       $a2, $s4, $zero
    /* 433DC 801CC354 21380000 */  addu       $a3, $zero, $zero
    /* 433E0 801CC358 A8000224 */  addiu      $v0, $zero, 0xA8
    /* 433E4 801CC35C 0400C2A4 */  sh         $v0, 0x4($a2)
    /* 433E8 801CC360 34000224 */  addiu      $v0, $zero, 0x34
    /* 433EC 801CC364 0600C2A4 */  sh         $v0, 0x6($a2)
    /* 433F0 801CC368 20000224 */  addiu      $v0, $zero, 0x20
    /* 433F4 801CC36C 0800C2A0 */  sb         $v0, 0x8($a2)
    /* 433F8 801CC370 0900C2A0 */  sb         $v0, 0x9($a2)
    /* 433FC 801CC374 60000224 */  addiu      $v0, $zero, 0x60
    /* 43400 801CC378 0200C0A4 */  sh         $zero, 0x2($a2)
    /* 43404 801CC37C 0000C0A4 */  sh         $zero, 0x0($a2)
    /* 43408 801CC380 0A00C2A0 */  sb         $v0, 0xA($a2)
    /* 4340C 801CC384 1000B1AF */  sw         $s1, 0x10($sp)
    /* 43410 801CC388 7850060C */  jal        func_801941E0
    /* 43414 801CC38C 1400B0AF */   sw        $s0, 0x14($sp)
    /* 43418 801CC390 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 4341C 801CC394 01000324 */  addiu      $v1, $zero, 0x1
    /* 43420 801CC398 1E80013C */  lui        $at, %hi(D_801D8B14)
    /* 43424 801CC39C 148B23A0 */  sb         $v1, %lo(D_801D8B14)($at)
    /* 43428 801CC3A0 76320708 */  j          .L801CC9D8
    /* 4342C 801CC3A4 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801CC3A8
    /* 43430 801CC3A8 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 43434 801CC3AC A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 43438 801CC3B0 40000224 */  addiu      $v0, $zero, 0x40
    /* 4343C 801CC3B4 35006210 */  beq        $v1, $v0, .L801CC48C
    /* 43440 801CC3B8 00000000 */   nop
    /* 43444 801CC3BC 41006228 */  slti       $v0, $v1, 0x41
    /* 43448 801CC3C0 05004010 */  beqz       $v0, .L801CC3D8
    /* 4344C 801CC3C4 20000224 */   addiu     $v0, $zero, 0x20
    /* 43450 801CC3C8 1F006210 */  beq        $v1, $v0, .L801CC448
    /* 43454 801CC3CC 00000000 */   nop
    /* 43458 801CC3D0 77320708 */  j          .L801CC9DC
    /* 4345C 801CC3D4 00000000 */   nop
  .L801CC3D8:
    /* 43460 801CC3D8 00200224 */  addiu      $v0, $zero, 0x2000
    /* 43464 801CC3DC 0F006210 */  beq        $v1, $v0, .L801CC41C
    /* 43468 801CC3E0 00800234 */   ori       $v0, $zero, 0x8000
    /* 4346C 801CC3E4 7D016214 */  bne        $v1, $v0, .L801CC9DC
    /* 43470 801CC3E8 01000224 */   addiu     $v0, $zero, 0x1
    /* 43474 801CC3EC 1E80033C */  lui        $v1, %hi(D_801D8D8C)
    /* 43478 801CC3F0 8C8D6390 */  lbu        $v1, %lo(D_801D8D8C)($v1)
    /* 4347C 801CC3F4 00000000 */  nop
    /* 43480 801CC3F8 04006210 */  beq        $v1, $v0, .L801CC40C
    /* 43484 801CC3FC 01000224 */   addiu     $v0, $zero, 0x1
    /* 43488 801CC400 88AD020C */  jal        func_800AB620
    /* 4348C 801CC404 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 43490 801CC408 01000224 */  addiu      $v0, $zero, 0x1
  .L801CC40C:
    /* 43494 801CC40C 1E80013C */  lui        $at, %hi(D_801D8D8C)
    /* 43498 801CC410 8C8D22A0 */  sb         $v0, %lo(D_801D8D8C)($at)
    /* 4349C 801CC414 77320708 */  j          .L801CC9DC
    /* 434A0 801CC418 00000000 */   nop
  .L801CC41C:
    /* 434A4 801CC41C 1E80023C */  lui        $v0, %hi(D_801D8D8C)
    /* 434A8 801CC420 8C8D4290 */  lbu        $v0, %lo(D_801D8D8C)($v0)
    /* 434AC 801CC424 00000000 */  nop
    /* 434B0 801CC428 03004010 */  beqz       $v0, .L801CC438
    /* 434B4 801CC42C 00000000 */   nop
    /* 434B8 801CC430 88AD020C */  jal        func_800AB620
    /* 434BC 801CC434 0D050424 */   addiu     $a0, $zero, 0x50D
  .L801CC438:
    /* 434C0 801CC438 1E80013C */  lui        $at, %hi(D_801D8D8C)
    /* 434C4 801CC43C 8C8D20A0 */  sb         $zero, %lo(D_801D8D8C)($at)
    /* 434C8 801CC440 77320708 */  j          .L801CC9DC
    /* 434CC 801CC444 00000000 */   nop
  .L801CC448:
    /* 434D0 801CC448 88AD020C */  jal        func_800AB620
    /* 434D4 801CC44C 28050424 */   addiu     $a0, $zero, 0x528
    /* 434D8 801CC450 1E80023C */  lui        $v0, %hi(D_801D8D8C)
    /* 434DC 801CC454 8C8D4290 */  lbu        $v0, %lo(D_801D8D8C)($v0)
    /* 434E0 801CC458 07000324 */  addiu      $v1, $zero, 0x7
    /* 434E4 801CC45C 1E80013C */  lui        $at, %hi(D_801D8B14)
    /* 434E8 801CC460 148B20A0 */  sb         $zero, %lo(D_801D8B14)($at)
    /* 434EC 801CC464 9B0263A2 */  sb         $v1, 0x29B($s3)
    /* 434F0 801CC468 1E80013C */  lui        $at, %hi(D_801D8A28 + 0x3)
    /* 434F4 801CC46C 2B8A22A0 */  sb         $v0, %lo(D_801D8A28 + 0x3)($at)
    /* 434F8 801CC470 1D80013C */  lui        $at, %hi(D_801D59A8)
    /* 434FC 801CC474 A85922A0 */  sb         $v0, %lo(D_801D59A8)($at)
    /* 43500 801CC478 1C004224 */  addiu      $v0, $v0, 0x1C
    /* 43504 801CC47C 1E80013C */  lui        $at, %hi(D_801D8A28 + 0x2)
    /* 43508 801CC480 2A8A22A0 */  sb         $v0, %lo(D_801D8A28 + 0x2)($at)
    /* 4350C 801CC484 77320708 */  j          .L801CC9DC
    /* 43510 801CC488 00000000 */   nop
  .L801CC48C:
    /* 43514 801CC48C 88AD020C */  jal        func_800AB620
    /* 43518 801CC490 29050424 */   addiu     $a0, $zero, 0x529
    /* 4351C 801CC494 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 43520 801CC498 76320708 */  j          .L801CC9D8
    /* 43524 801CC49C 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801CC4A0
    /* 43528 801CC4A0 03000424 */  addiu      $a0, $zero, 0x3
    /* 4352C 801CC4A4 21280000 */  addu       $a1, $zero, $zero
    /* 43530 801CC4A8 21300000 */  addu       $a2, $zero, $zero
    /* 43534 801CC4AC 21380000 */  addu       $a3, $zero, $zero
    /* 43538 801CC4B0 A8000224 */  addiu      $v0, $zero, 0xA8
    /* 4353C 801CC4B4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 43540 801CC4B8 34000224 */  addiu      $v0, $zero, 0x34
    /* 43544 801CC4BC 1400A2AF */  sw         $v0, 0x14($sp)
    /* 43548 801CC4C0 88FF0224 */  addiu      $v0, $zero, -0x78
    /* 4354C 801CC4C4 1800A2AF */  sw         $v0, 0x18($sp)
    /* 43550 801CC4C8 F2FF0224 */  addiu      $v0, $zero, -0xE
    /* 43554 801CC4CC 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 43558 801CC4D0 20000224 */  addiu      $v0, $zero, 0x20
    /* 4355C 801CC4D4 2000A2AF */  sw         $v0, 0x20($sp)
    /* 43560 801CC4D8 2400A2AF */  sw         $v0, 0x24($sp)
    /* 43564 801CC4DC 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 43568 801CC4E0 3000A2AF */  sw         $v0, 0x30($sp)
    /* 4356C 801CC4E4 1E80023C */  lui        $v0, %hi(D_801D8A28 + 0x1)
    /* 43570 801CC4E8 298A4290 */  lbu        $v0, %lo(D_801D8A28 + 0x1)($v0)
    /* 43574 801CC4EC 60000324 */  addiu      $v1, $zero, 0x60
    /* 43578 801CC4F0 2800A3AF */  sw         $v1, 0x28($sp)
    /* 4357C 801CC4F4 3400A3AF */  sw         $v1, 0x34($sp)
    /* 43580 801CC4F8 01000324 */  addiu      $v1, $zero, 0x1
    /* 43584 801CC4FC 1E80013C */  lui        $at, %hi(D_801D8FB8)
    /* 43588 801CC500 B88F20A0 */  sb         $zero, %lo(D_801D8FB8)($at)
    /* 4358C 801CC504 1E80013C */  lui        $at, %hi(D_801D92BF)
    /* 43590 801CC508 BF9220A0 */  sb         $zero, %lo(D_801D92BF)($at)
    /* 43594 801CC50C 1E80013C */  lui        $at, %hi(D_801D8B14)
    /* 43598 801CC510 148B20A0 */  sb         $zero, %lo(D_801D8B14)($at)
    /* 4359C 801CC514 4000A0AF */  sw         $zero, 0x40($sp)
    /* 435A0 801CC518 4400A3AF */  sw         $v1, 0x44($sp)
    /* 435A4 801CC51C 1E80013C */  lui        $at, %hi(D_801D8A28)
    /* 435A8 801CC520 288A22A0 */  sb         $v0, %lo(D_801D8A28)($at)
    /* 435AC 801CC524 FF004230 */  andi       $v0, $v0, 0xFF
    /* 435B0 801CC528 3800A2AF */  sw         $v0, 0x38($sp)
    /* 435B4 801CC52C F813070C */  jal        func_801C4FE0
    /* 435B8 801CC530 3C00A2AF */   sw        $v0, 0x3C($sp)
    /* 435BC 801CC534 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 435C0 801CC538 76320708 */  j          .L801CC9D8
    /* 435C4 801CC53C 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801CC540
    /* 435C8 801CC540 03000424 */  addiu      $a0, $zero, 0x3
    /* 435CC 801CC544 21280000 */  addu       $a1, $zero, $zero
    /* 435D0 801CC548 21300000 */  addu       $a2, $zero, $zero
    /* 435D4 801CC54C 21380000 */  addu       $a3, $zero, $zero
    /* 435D8 801CC550 60000324 */  addiu      $v1, $zero, 0x60
    /* 435DC 801CC554 2800A3AF */  sw         $v1, 0x28($sp)
    /* 435E0 801CC558 3400A3AF */  sw         $v1, 0x34($sp)
    /* 435E4 801CC55C 1E80033C */  lui        $v1, %hi(D_801D8A28)
    /* 435E8 801CC560 288A6390 */  lbu        $v1, %lo(D_801D8A28)($v1)
    /* 435EC 801CC564 1E80083C */  lui        $t0, %hi(D_801D8A28 + 0x1)
    /* 435F0 801CC568 298A0891 */  lbu        $t0, %lo(D_801D8A28 + 0x1)($t0)
    /* 435F4 801CC56C A8000224 */  addiu      $v0, $zero, 0xA8
    /* 435F8 801CC570 1000A2AF */  sw         $v0, 0x10($sp)
    /* 435FC 801CC574 34000224 */  addiu      $v0, $zero, 0x34
    /* 43600 801CC578 1400A2AF */  sw         $v0, 0x14($sp)
    /* 43604 801CC57C 88FF0224 */  addiu      $v0, $zero, -0x78
    /* 43608 801CC580 1800A2AF */  sw         $v0, 0x18($sp)
    /* 4360C 801CC584 F2FF0224 */  addiu      $v0, $zero, -0xE
    /* 43610 801CC588 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 43614 801CC58C 20000224 */  addiu      $v0, $zero, 0x20
    /* 43618 801CC590 2000A2AF */  sw         $v0, 0x20($sp)
    /* 4361C 801CC594 2400A2AF */  sw         $v0, 0x24($sp)
    /* 43620 801CC598 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 43624 801CC59C 3000A2AF */  sw         $v0, 0x30($sp)
    /* 43628 801CC5A0 01000224 */  addiu      $v0, $zero, 0x1
    /* 4362C 801CC5A4 4000A0AF */  sw         $zero, 0x40($sp)
    /* 43630 801CC5A8 4400A2AF */  sw         $v0, 0x44($sp)
    /* 43634 801CC5AC 3800A3AF */  sw         $v1, 0x38($sp)
    /* 43638 801CC5B0 F813070C */  jal        func_801C4FE0
    /* 4363C 801CC5B4 3C00A8AF */   sw        $t0, 0x3C($sp)
    /* 43640 801CC5B8 1E80023C */  lui        $v0, %hi(D_801D8A28)
    /* 43644 801CC5BC 288A4290 */  lbu        $v0, %lo(D_801D8A28)($v0)
    /* 43648 801CC5C0 00000000 */  nop
    /* 4364C 801CC5C4 03004010 */  beqz       $v0, .L801CC5D4
    /* 43650 801CC5C8 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 43654 801CC5CC 1E80013C */  lui        $at, %hi(D_801D8A28)
    /* 43658 801CC5D0 288A22A0 */  sb         $v0, %lo(D_801D8A28)($at)
  .L801CC5D4:
    /* 4365C 801CC5D4 1D80023C */  lui        $v0, %hi(D_801D429A)
    /* 43660 801CC5D8 9A424290 */  lbu        $v0, %lo(D_801D429A)($v0)
    /* 43664 801CC5DC 00000000 */  nop
    /* 43668 801CC5E0 08004224 */  addiu      $v0, $v0, 0x8
    /* 4366C 801CC5E4 1D80013C */  lui        $at, %hi(D_801D429A)
    /* 43670 801CC5E8 9A4222A0 */  sb         $v0, %lo(D_801D429A)($at)
    /* 43674 801CC5EC AF0F070C */  jal        func_801C3EBC
    /* 43678 801CC5F0 FF004430 */   andi      $a0, $v0, 0xFF
    /* 4367C 801CC5F4 1D80023C */  lui        $v0, %hi(D_801D429A)
    /* 43680 801CC5F8 9A424290 */  lbu        $v0, %lo(D_801D429A)($v0)
    /* 43684 801CC5FC 00000000 */  nop
    /* 43688 801CC600 8000422C */  sltiu      $v0, $v0, 0x80
    /* 4368C 801CC604 F5004014 */  bnez       $v0, .L801CC9DC
    /* 43690 801CC608 00000000 */   nop
    /* 43694 801CC60C 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 43698 801CC610 1E80013C */  lui        $at, %hi(D_801D92F7)
    /* 4369C 801CC614 F79220A0 */  sb         $zero, %lo(D_801D92F7)($at)
    /* 436A0 801CC618 76320708 */  j          .L801CC9D8
    /* 436A4 801CC61C 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801CC620
    /* 436A8 801CC620 9B0E070C */  jal        func_801C3A6C
    /* 436AC 801CC624 A20260A2 */   sb        $zero, 0x2A2($s3)
    /* 436B0 801CC628 03000224 */  addiu      $v0, $zero, 0x3
    /* 436B4 801CC62C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 436B8 801CC630 21080102 */  addu       $at, $s0, $at
    /* 436BC 801CC634 DAAB20A0 */  sb         $zero, -0x5426($at)
    /* 436C0 801CC638 9B0262A2 */  sb         $v0, 0x29B($s3)
    /* 436C4 801CC63C 10000224 */  addiu      $v0, $zero, 0x10
    /* 436C8 801CC640 77320708 */  j          .L801CC9DC
    /* 436CC 801CC644 9A0262A2 */   sb        $v0, 0x29A($s3)
  jlabel .L801CC648
    /* 436D0 801CC648 01000424 */  addiu      $a0, $zero, 0x1
    /* 436D4 801CC64C A8000524 */  addiu      $a1, $zero, 0xA8
    /* 436D8 801CC650 F0FF0224 */  addiu      $v0, $zero, -0x10
    /* 436DC 801CC654 1000A2AF */  sw         $v0, 0x10($sp)
    /* 436E0 801CC658 1E80023C */  lui        $v0, %hi(D_801D8A28 + 0x2)
    /* 436E4 801CC65C 2A8A4290 */  lbu        $v0, %lo(D_801D8A28 + 0x2)($v0)
    /* 436E8 801CC660 03000324 */  addiu      $v1, $zero, 0x3
    /* 436EC 801CC664 1400A3AF */  sw         $v1, 0x14($sp)
    /* 436F0 801CC668 80100200 */  sll        $v0, $v0, 2
    /* 436F4 801CC66C 1D80013C */  lui        $at, %hi(D_801D5844)
    /* 436F8 801CC670 21082200 */  addu       $at, $at, $v0
    /* 436FC 801CC674 4458278C */  lw         $a3, %lo(D_801D5844)($at)
    /* 43700 801CC678 B914070C */  jal        func_801C52E4
    /* 43704 801CC67C 34000624 */   addiu     $a2, $zero, 0x34
    /* 43708 801CC680 FF004230 */  andi       $v0, $v0, 0xFF
    /* 4370C 801CC684 D5004010 */  beqz       $v0, .L801CC9DC
    /* 43710 801CC688 02000224 */   addiu     $v0, $zero, 0x2
    /* 43714 801CC68C 1E80013C */  lui        $at, %hi(D_801D8D8C)
    /* 43718 801CC690 8C8D22A0 */  sb         $v0, %lo(D_801D8D8C)($at)
    /* 4371C 801CC694 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 43720 801CC698 01000324 */  addiu      $v1, $zero, 0x1
    /* 43724 801CC69C 1E80013C */  lui        $at, %hi(D_801D8B14)
    /* 43728 801CC6A0 148B23A0 */  sb         $v1, %lo(D_801D8B14)($at)
    /* 4372C 801CC6A4 76320708 */  j          .L801CC9D8
    /* 43730 801CC6A8 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801CC6AC
    /* 43734 801CC6AC 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 43738 801CC6B0 A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 4373C 801CC6B4 40000224 */  addiu      $v0, $zero, 0x40
    /* 43740 801CC6B8 31006210 */  beq        $v1, $v0, .L801CC780
    /* 43744 801CC6BC 41006228 */   slti      $v0, $v1, 0x41
    /* 43748 801CC6C0 05004010 */  beqz       $v0, .L801CC6D8
    /* 4374C 801CC6C4 20000224 */   addiu     $v0, $zero, 0x20
    /* 43750 801CC6C8 20006210 */  beq        $v1, $v0, .L801CC74C
    /* 43754 801CC6CC 00000000 */   nop
    /* 43758 801CC6D0 77320708 */  j          .L801CC9DC
    /* 4375C 801CC6D4 00000000 */   nop
  .L801CC6D8:
    /* 43760 801CC6D8 00200224 */  addiu      $v0, $zero, 0x2000
    /* 43764 801CC6DC 0F006210 */  beq        $v1, $v0, .L801CC71C
    /* 43768 801CC6E0 00800234 */   ori       $v0, $zero, 0x8000
    /* 4376C 801CC6E4 BD006214 */  bne        $v1, $v0, .L801CC9DC
    /* 43770 801CC6E8 03000224 */   addiu     $v0, $zero, 0x3
    /* 43774 801CC6EC 1E80033C */  lui        $v1, %hi(D_801D8D8C)
    /* 43778 801CC6F0 8C8D6390 */  lbu        $v1, %lo(D_801D8D8C)($v1)
    /* 4377C 801CC6F4 00000000 */  nop
    /* 43780 801CC6F8 04006210 */  beq        $v1, $v0, .L801CC70C
    /* 43784 801CC6FC 03000224 */   addiu     $v0, $zero, 0x3
    /* 43788 801CC700 88AD020C */  jal        func_800AB620
    /* 4378C 801CC704 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 43790 801CC708 03000224 */  addiu      $v0, $zero, 0x3
  .L801CC70C:
    /* 43794 801CC70C 1E80013C */  lui        $at, %hi(D_801D8D8C)
    /* 43798 801CC710 8C8D22A0 */  sb         $v0, %lo(D_801D8D8C)($at)
    /* 4379C 801CC714 77320708 */  j          .L801CC9DC
    /* 437A0 801CC718 00000000 */   nop
  .L801CC71C:
    /* 437A4 801CC71C 1E80033C */  lui        $v1, %hi(D_801D8D8C)
    /* 437A8 801CC720 8C8D6390 */  lbu        $v1, %lo(D_801D8D8C)($v1)
    /* 437AC 801CC724 02000224 */  addiu      $v0, $zero, 0x2
    /* 437B0 801CC728 04006210 */  beq        $v1, $v0, .L801CC73C
    /* 437B4 801CC72C 02000224 */   addiu     $v0, $zero, 0x2
    /* 437B8 801CC730 88AD020C */  jal        func_800AB620
    /* 437BC 801CC734 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 437C0 801CC738 02000224 */  addiu      $v0, $zero, 0x2
  .L801CC73C:
    /* 437C4 801CC73C 1E80013C */  lui        $at, %hi(D_801D8D8C)
    /* 437C8 801CC740 8C8D22A0 */  sb         $v0, %lo(D_801D8D8C)($at)
    /* 437CC 801CC744 77320708 */  j          .L801CC9DC
    /* 437D0 801CC748 00000000 */   nop
  .L801CC74C:
    /* 437D4 801CC74C 88AD020C */  jal        func_800AB620
    /* 437D8 801CC750 28050424 */   addiu     $a0, $zero, 0x528
    /* 437DC 801CC754 1E80033C */  lui        $v1, %hi(D_801D8D8C)
    /* 437E0 801CC758 8C8D6390 */  lbu        $v1, %lo(D_801D8D8C)($v1)
    /* 437E4 801CC75C 02000224 */  addiu      $v0, $zero, 0x2
    /* 437E8 801CC760 02006214 */  bne        $v1, $v0, .L801CC76C
    /* 437EC 801CC764 0A000224 */   addiu     $v0, $zero, 0xA
    /* 437F0 801CC768 04000224 */  addiu      $v0, $zero, 0x4
  .L801CC76C:
    /* 437F4 801CC76C 9B0262A2 */  sb         $v0, 0x29B($s3)
    /* 437F8 801CC770 1E80013C */  lui        $at, %hi(D_801D8B14)
    /* 437FC 801CC774 148B20A0 */  sb         $zero, %lo(D_801D8B14)($at)
    /* 43800 801CC778 77320708 */  j          .L801CC9DC
    /* 43804 801CC77C 00000000 */   nop
  .L801CC780:
    /* 43808 801CC780 88AD020C */  jal        func_800AB620
    /* 4380C 801CC784 29050424 */   addiu     $a0, $zero, 0x529
    /* 43810 801CC788 76320708 */  j          .L801CC9D8
    /* 43814 801CC78C 04000224 */   addiu     $v0, $zero, 0x4
  jlabel .L801CC790
    /* 43818 801CC790 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 4381C 801CC794 00000000 */  nop
    /* 43820 801CC798 01004224 */  addiu      $v0, $v0, 0x1
    /* 43824 801CC79C 9B0262A2 */  sb         $v0, 0x29B($s3)
  jlabel .L801CC7A0
    /* 43828 801CC7A0 1E80043C */  lui        $a0, %hi(D_801D8A28 + 0x3)
    /* 4382C 801CC7A4 2B8A8490 */  lbu        $a0, %lo(D_801D8A28 + 0x3)($a0)
    /* 43830 801CC7A8 8842070C */  jal        func_801D0A20
    /* 43834 801CC7AC 00000000 */   nop
    /* 43838 801CC7B0 04004324 */  addiu      $v1, $v0, 0x4
    /* 4383C 801CC7B4 1D80013C */  lui        $at, %hi(D_801D59CC)
    /* 43840 801CC7B8 CC5922AC */  sw         $v0, %lo(D_801D59CC)($at)
    /* 43844 801CC7BC 0700622C */  sltiu      $v0, $v1, 0x7
    /* 43848 801CC7C0 22004010 */  beqz       $v0, .L801CC84C
    /* 4384C 801CC7C4 80100300 */   sll       $v0, $v1, 2
    /* 43850 801CC7C8 1980013C */  lui        $at, %hi(jtbl_8018DA3C)
    /* 43854 801CC7CC 21082200 */  addu       $at, $at, $v0
    /* 43858 801CC7D0 3CDA228C */  lw         $v0, %lo(jtbl_8018DA3C)($at)
    /* 4385C 801CC7D4 00000000 */  nop
    /* 43860 801CC7D8 08004000 */  jr         $v0
    /* 43864 801CC7DC 00000000 */   nop
  jlabel .L801CC7E0
    /* 43868 801CC7E0 1D80023C */  lui        $v0, %hi(D_801D59A8)
    /* 4386C 801CC7E4 A8594290 */  lbu        $v0, %lo(D_801D59A8)($v0)
    /* 43870 801CC7E8 00000000 */  nop
    /* 43874 801CC7EC 0A004014 */  bnez       $v0, .L801CC818
    /* 43878 801CC7F0 0F000324 */   addiu     $v1, $zero, 0xF
    /* 4387C 801CC7F4 10000224 */  addiu      $v0, $zero, 0x10
    /* 43880 801CC7F8 0C0020A6 */  sh         $zero, 0xC($s1)
    /* 43884 801CC7FC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 43888 801CC800 21080102 */  addu       $at, $s0, $at
    /* 4388C 801CC804 148F20A0 */  sb         $zero, -0x70EC($at)
    /* 43890 801CC808 1E80013C */  lui        $at, %hi(D_801D8A28 + 0x2)
    /* 43894 801CC80C 2A8A22A0 */  sb         $v0, %lo(D_801D8A28 + 0x2)($at)
    /* 43898 801CC810 10320708 */  j          .L801CC840
    /* 4389C 801CC814 00000000 */   nop
  .L801CC818:
    /* 438A0 801CC818 0C0020A6 */  sh         $zero, 0xC($s1)
    /* 438A4 801CC81C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 438A8 801CC820 21080102 */  addu       $at, $s0, $at
    /* 438AC 801CC824 148F2290 */  lbu        $v0, -0x70EC($at)
    /* 438B0 801CC828 1E80013C */  lui        $at, %hi(D_801D8A28 + 0x2)
    /* 438B4 801CC82C 2A8A23A0 */  sb         $v1, %lo(D_801D8A28 + 0x2)($at)
    /* 438B8 801CC830 03004234 */  ori        $v0, $v0, 0x3
    /* 438BC 801CC834 0100013C */  lui        $at, (0x10000 >> 16)
    /* 438C0 801CC838 21080102 */  addu       $at, $s0, $at
    /* 438C4 801CC83C 148F22A0 */  sb         $v0, -0x70EC($at)
  .L801CC840:
    /* 438C8 801CC840 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 438CC 801CC844 76320708 */  j          .L801CC9D8
    /* 438D0 801CC848 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801CC84C
    /* 438D4 801CC84C 1D80023C */  lui        $v0, %hi(D_801D59A8)
    /* 438D8 801CC850 A8594290 */  lbu        $v0, %lo(D_801D59A8)($v0)
    /* 438DC 801CC854 00000000 */  nop
    /* 438E0 801CC858 03004014 */  bnez       $v0, .L801CC868
    /* 438E4 801CC85C 00000000 */   nop
    /* 438E8 801CC860 1B320708 */  j          .L801CC86C
    /* 438EC 801CC864 1E000224 */   addiu     $v0, $zero, 0x1E
  .L801CC868:
    /* 438F0 801CC868 1A000224 */  addiu      $v0, $zero, 0x1A
  .L801CC86C:
    /* 438F4 801CC86C 1E80013C */  lui        $at, %hi(D_801D8A28 + 0x2)
    /* 438F8 801CC870 2A8A22A0 */  sb         $v0, %lo(D_801D8A28 + 0x2)($at)
    /* 438FC 801CC874 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 43900 801CC878 76320708 */  j          .L801CC9D8
    /* 43904 801CC87C 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801CC880
    /* 43908 801CC880 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 4390C 801CC884 16000324 */  addiu      $v1, $zero, 0x16
    /* 43910 801CC888 1E80013C */  lui        $at, %hi(D_801D8A28 + 0x2)
    /* 43914 801CC88C 2A8A23A0 */  sb         $v1, %lo(D_801D8A28 + 0x2)($at)
    /* 43918 801CC890 76320708 */  j          .L801CC9D8
    /* 4391C 801CC894 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801CC898
    /* 43920 801CC898 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 43924 801CC89C 17000324 */  addiu      $v1, $zero, 0x17
    /* 43928 801CC8A0 1E80013C */  lui        $at, %hi(D_801D8A28 + 0x2)
    /* 4392C 801CC8A4 2A8A23A0 */  sb         $v1, %lo(D_801D8A28 + 0x2)($at)
    /* 43930 801CC8A8 76320708 */  j          .L801CC9D8
    /* 43934 801CC8AC 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801CC8B0
    /* 43938 801CC8B0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4393C 801CC8B4 21080102 */  addu       $at, $s0, $at
    /* 43940 801CC8B8 1E8F20A0 */  sb         $zero, -0x70E2($at)
    /* 43944 801CC8BC 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 43948 801CC8C0 18000324 */  addiu      $v1, $zero, 0x18
    /* 4394C 801CC8C4 1E80013C */  lui        $at, %hi(D_801D8A28 + 0x2)
    /* 43950 801CC8C8 2A8A23A0 */  sb         $v1, %lo(D_801D8A28 + 0x2)($at)
    /* 43954 801CC8CC 76320708 */  j          .L801CC9D8
    /* 43958 801CC8D0 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801CC8D4
    /* 4395C 801CC8D4 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 43960 801CC8D8 19000324 */  addiu      $v1, $zero, 0x19
    /* 43964 801CC8DC 1E80013C */  lui        $at, %hi(D_801D8A28 + 0x2)
    /* 43968 801CC8E0 2A8A23A0 */  sb         $v1, %lo(D_801D8A28 + 0x2)($at)
    /* 4396C 801CC8E4 76320708 */  j          .L801CC9D8
    /* 43970 801CC8E8 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801CC8EC
    /* 43974 801CC8EC 1E80033C */  lui        $v1, %hi(D_801D8A28 + 0x2)
    /* 43978 801CC8F0 2A8A6390 */  lbu        $v1, %lo(D_801D8A28 + 0x2)($v1)
    /* 4397C 801CC8F4 00000000 */  nop
    /* 43980 801CC8F8 E7FF6224 */  addiu      $v0, $v1, -0x19
    /* 43984 801CC8FC 0200422C */  sltiu      $v0, $v0, 0x2
    /* 43988 801CC900 06004014 */  bnez       $v0, .L801CC91C
    /* 4398C 801CC904 F0FF0224 */   addiu     $v0, $zero, -0x10
    /* 43990 801CC908 FF006330 */  andi       $v1, $v1, 0xFF
    /* 43994 801CC90C 1E000224 */  addiu      $v0, $zero, 0x1E
    /* 43998 801CC910 02006214 */  bne        $v1, $v0, .L801CC91C
    /* 4399C 801CC914 F8FF0224 */   addiu     $v0, $zero, -0x8
    /* 439A0 801CC918 F0FF0224 */  addiu      $v0, $zero, -0x10
  .L801CC91C:
    /* 439A4 801CC91C 01000424 */  addiu      $a0, $zero, 0x1
    /* 439A8 801CC920 A8000524 */  addiu      $a1, $zero, 0xA8
    /* 439AC 801CC924 1000A2AF */  sw         $v0, 0x10($sp)
    /* 439B0 801CC928 1E80023C */  lui        $v0, %hi(D_801D8A28 + 0x2)
    /* 439B4 801CC92C 2A8A4290 */  lbu        $v0, %lo(D_801D8A28 + 0x2)($v0)
    /* 439B8 801CC930 02000324 */  addiu      $v1, $zero, 0x2
    /* 439BC 801CC934 1400A3AF */  sw         $v1, 0x14($sp)
    /* 439C0 801CC938 80100200 */  sll        $v0, $v0, 2
    /* 439C4 801CC93C 1D80013C */  lui        $at, %hi(D_801D5844)
    /* 439C8 801CC940 21082200 */  addu       $at, $at, $v0
    /* 439CC 801CC944 4458278C */  lw         $a3, %lo(D_801D5844)($at)
    /* 439D0 801CC948 B914070C */  jal        func_801C52E4
    /* 439D4 801CC94C 34000624 */   addiu     $a2, $zero, 0x34
    /* 439D8 801CC950 FF004230 */  andi       $v0, $v0, 0xFF
    /* 439DC 801CC954 21004010 */  beqz       $v0, .L801CC9DC
    /* 439E0 801CC958 00000000 */   nop
    /* 439E4 801CC95C 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 439E8 801CC960 76320708 */  j          .L801CC9D8
    /* 439EC 801CC964 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801CC968
    /* 439F0 801CC968 1180023C */  lui        $v0, %hi(D_8010A5A4)
    /* 439F4 801CC96C A4A54294 */  lhu        $v0, %lo(D_8010A5A4)($v0)
    /* 439F8 801CC970 00000000 */  nop
    /* 439FC 801CC974 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 43A00 801CC978 06004010 */  beqz       $v0, .L801CC994
    /* 43A04 801CC97C 00000000 */   nop
    /* 43A08 801CC980 88AD020C */  jal        func_800AB620
    /* 43A0C 801CC984 29050424 */   addiu     $a0, $zero, 0x529
    /* 43A10 801CC988 79000224 */  addiu      $v0, $zero, 0x79
    /* 43A14 801CC98C 1E80013C */  lui        $at, %hi(D_801D8A28 + 0x2)
    /* 43A18 801CC990 2A8A22A0 */  sb         $v0, %lo(D_801D8A28 + 0x2)($at)
  .L801CC994:
    /* 43A1C 801CC994 1D80033C */  lui        $v1, %hi(D_801D59CC)
    /* 43A20 801CC998 CC59638C */  lw         $v1, %lo(D_801D59CC)($v1)
    /* 43A24 801CC99C 01000224 */  addiu      $v0, $zero, 0x1
    /* 43A28 801CC9A0 07006214 */  bne        $v1, $v0, .L801CC9C0
    /* 43A2C 801CC9A4 00000000 */   nop
    /* 43A30 801CC9A8 1E80023C */  lui        $v0, %hi(D_801D8A28 + 0x2)
    /* 43A34 801CC9AC 2A8A4290 */  lbu        $v0, %lo(D_801D8A28 + 0x2)($v0)
    /* 43A38 801CC9B0 00000000 */  nop
    /* 43A3C 801CC9B4 01004224 */  addiu      $v0, $v0, 0x1
    /* 43A40 801CC9B8 1E80013C */  lui        $at, %hi(D_801D8A28 + 0x2)
    /* 43A44 801CC9BC 2A8A22A0 */  sb         $v0, %lo(D_801D8A28 + 0x2)($at)
  .L801CC9C0:
    /* 43A48 801CC9C0 1E80023C */  lui        $v0, %hi(D_801D8A28 + 0x2)
    /* 43A4C 801CC9C4 2A8A4290 */  lbu        $v0, %lo(D_801D8A28 + 0x2)($v0)
    /* 43A50 801CC9C8 00000000 */  nop
    /* 43A54 801CC9CC 7900422C */  sltiu      $v0, $v0, 0x79
    /* 43A58 801CC9D0 02004014 */  bnez       $v0, .L801CC9DC
    /* 43A5C 801CC9D4 04000224 */   addiu     $v0, $zero, 0x4
  .L801CC9D8:
    /* 43A60 801CC9D8 9B0262A2 */  sb         $v0, (0x1F80029B & 0xFFFF)($s3)
  jlabel .L801CC9DC
    /* 43A64 801CC9DC 5C00BF8F */  lw         $ra, 0x5C($sp)
    /* 43A68 801CC9E0 5800B48F */  lw         $s4, 0x58($sp)
    /* 43A6C 801CC9E4 5400B38F */  lw         $s3, 0x54($sp)
    /* 43A70 801CC9E8 5000B28F */  lw         $s2, 0x50($sp)
    /* 43A74 801CC9EC 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 43A78 801CC9F0 4800B08F */  lw         $s0, 0x48($sp)
    /* 43A7C 801CC9F4 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 43A80 801CC9F8 0800E003 */  jr         $ra
    /* 43A84 801CC9FC 00000000 */   nop
endlabel func_801CC13C
