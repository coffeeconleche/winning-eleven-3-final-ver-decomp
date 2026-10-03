nonmatching func_801C405C, 0x994

glabel func_801C405C
    /* 3B0E4 801C405C 1180023C */  lui        $v0, %hi(D_8010A5B1)
    /* 3B0E8 801C4060 B1A54290 */  lbu        $v0, %lo(D_8010A5B1)($v0)
    /* 3B0EC 801C4064 1D80033C */  lui        $v1, %hi(D_801D429C + 0x1)
    /* 3B0F0 801C4068 9D426380 */  lb         $v1, %lo(D_801D429C + 0x1)($v1)
    /* 3B0F4 801C406C 78FFBD27 */  addiu      $sp, $sp, -0x88
    /* 3B0F8 801C4070 8000BEAF */  sw         $fp, 0x80($sp)
    /* 3B0FC 801C4074 1E801E3C */  lui        $fp, %hi(D_801D8D78)
    /* 3B100 801C4078 788DDE27 */  addiu      $fp, $fp, %lo(D_801D8D78)
    /* 3B104 801C407C 8400BFAF */  sw         $ra, 0x84($sp)
    /* 3B108 801C4080 7C00B7AF */  sw         $s7, 0x7C($sp)
    /* 3B10C 801C4084 7800B6AF */  sw         $s6, 0x78($sp)
    /* 3B110 801C4088 7400B5AF */  sw         $s5, 0x74($sp)
    /* 3B114 801C408C 7000B4AF */  sw         $s4, 0x70($sp)
    /* 3B118 801C4090 6C00B3AF */  sw         $s3, 0x6C($sp)
    /* 3B11C 801C4094 6800B2AF */  sw         $s2, 0x68($sp)
    /* 3B120 801C4098 6400B1AF */  sw         $s1, 0x64($sp)
    /* 3B124 801C409C 6000B0AF */  sw         $s0, 0x60($sp)
    /* 3B128 801C40A0 4800A4A3 */  sb         $a0, 0x48($sp)
    /* 3B12C 801C40A4 5800A0A3 */  sb         $zero, 0x58($sp)
    /* 3B130 801C40A8 801F013C */  lui        $at, (0x1F8002A2 >> 16)
    /* 3B134 801C40AC A20220A0 */  sb         $zero, (0x1F8002A2 & 0xFFFF)($at)
    /* 3B138 801C40B0 0C004230 */  andi       $v0, $v0, 0xC
    /* 3B13C 801C40B4 82100200 */  srl        $v0, $v0, 2
    /* 3B140 801C40B8 5000A2A3 */  sb         $v0, 0x50($sp)
    /* 3B144 801C40BC FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 3B148 801C40C0 3A006214 */  bne        $v1, $v0, .L801C41AC
    /* 3B14C 801C40C4 00000000 */   nop
    /* 3B150 801C40C8 4E39060C */  jal        func_8018E538
    /* 3B154 801C40CC 21200000 */   addu      $a0, $zero, $zero
    /* 3B158 801C40D0 36000424 */  addiu      $a0, $zero, 0x36
    /* 3B15C 801C40D4 03300524 */  addiu      $a1, $zero, 0x3003
    /* 3B160 801C40D8 21300000 */  addu       $a2, $zero, $zero
    /* 3B164 801C40DC 21380000 */  addu       $a3, $zero, $zero
    /* 3B168 801C40E0 40000224 */  addiu      $v0, $zero, 0x40
    /* 3B16C 801C40E4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3B170 801C40E8 18000224 */  addiu      $v0, $zero, 0x18
    /* 3B174 801C40EC 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3B178 801C40F0 00100224 */  addiu      $v0, $zero, 0x1000
    /* 3B17C 801C40F4 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 3B180 801C40F8 2000A2AF */  sw         $v0, 0x20($sp)
    /* 3B184 801C40FC 80000224 */  addiu      $v0, $zero, 0x80
    /* 3B188 801C4100 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 3B18C 801C4104 3000A2AF */  sw         $v0, 0x30($sp)
    /* 3B190 801C4108 3400A2AF */  sw         $v0, 0x34($sp)
    /* 3B194 801C410C 05000224 */  addiu      $v0, $zero, 0x5
    /* 3B198 801C4110 801F013C */  lui        $at, (0x1F800330 >> 16)
    /* 3B19C 801C4114 300320A0 */  sb         $zero, (0x1F800330 & 0xFFFF)($at)
    /* 3B1A0 801C4118 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3B1A4 801C411C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3B1A8 801C4120 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3B1AC 801C4124 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3B1B0 801C4128 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 3B1B4 801C412C ED4F060C */  jal        func_80193FB4
    /* 3B1B8 801C4130 4000A0AF */   sw        $zero, 0x40($sp)
    /* 3B1BC 801C4134 4800A293 */  lbu        $v0, 0x48($sp)
    /* 3B1C0 801C4138 00000000 */  nop
    /* 3B1C4 801C413C 05004010 */  beqz       $v0, .L801C4154
    /* 3B1C8 801C4140 1E000224 */   addiu     $v0, $zero, 0x1E
    /* 3B1CC 801C4144 1D80013C */  lui        $at, %hi(D_801D429C + 0x1)
    /* 3B1D0 801C4148 9D4220A0 */  sb         $zero, %lo(D_801D429C + 0x1)($at)
    /* 3B1D4 801C414C 58100708 */  j          .L801C4160
    /* 3B1D8 801C4150 4E000224 */   addiu     $v0, $zero, 0x4E
  .L801C4154:
    /* 3B1DC 801C4154 1D80013C */  lui        $at, %hi(D_801D429C + 0x1)
    /* 3B1E0 801C4158 9D4222A0 */  sb         $v0, %lo(D_801D429C + 0x1)($at)
    /* 3B1E4 801C415C 4E000224 */  addiu      $v0, $zero, 0x4E
  .L801C4160:
    /* 3B1E8 801C4160 0200C2A7 */  sh         $v0, 0x2($fp)
    /* 3B1EC 801C4164 02000224 */  addiu      $v0, $zero, 0x2
    /* 3B1F0 801C4168 0400C2A7 */  sh         $v0, 0x4($fp)
    /* 3B1F4 801C416C 0600C2A7 */  sh         $v0, 0x6($fp)
    /* 3B1F8 801C4170 20000224 */  addiu      $v0, $zero, 0x20
    /* 3B1FC 801C4174 1100C2A3 */  sb         $v0, 0x11($fp)
    /* 3B200 801C4178 0E00C2A3 */  sb         $v0, 0xE($fp)
    /* 3B204 801C417C 0B00C2A3 */  sb         $v0, 0xB($fp)
    /* 3B208 801C4180 0800C2A3 */  sb         $v0, 0x8($fp)
    /* 3B20C 801C4184 1200C2A3 */  sb         $v0, 0x12($fp)
    /* 3B210 801C4188 0F00C2A3 */  sb         $v0, 0xF($fp)
    /* 3B214 801C418C 0C00C2A3 */  sb         $v0, 0xC($fp)
    /* 3B218 801C4190 0900C2A3 */  sb         $v0, 0x9($fp)
    /* 3B21C 801C4194 60000224 */  addiu      $v0, $zero, 0x60
    /* 3B220 801C4198 0000C0A7 */  sh         $zero, 0x0($fp)
    /* 3B224 801C419C 1300C2A3 */  sb         $v0, 0x13($fp)
    /* 3B228 801C41A0 1000C2A3 */  sb         $v0, 0x10($fp)
    /* 3B22C 801C41A4 0D00C2A3 */  sb         $v0, 0xD($fp)
    /* 3B230 801C41A8 0A00C2A3 */  sb         $v0, 0xA($fp)
  .L801C41AC:
    /* 3B234 801C41AC 1D80033C */  lui        $v1, %hi(D_801D429C + 0x1)
    /* 3B238 801C41B0 9D426380 */  lb         $v1, %lo(D_801D429C + 0x1)($v1)
    /* 3B23C 801C41B4 00000000 */  nop
    /* 3B240 801C41B8 10006228 */  slti       $v0, $v1, 0x10
    /* 3B244 801C41BC 04004010 */  beqz       $v0, .L801C41D0
    /* 3B248 801C41C0 80180300 */   sll       $v1, $v1, 2
    /* 3B24C 801C41C4 40000224 */  addiu      $v0, $zero, 0x40
    /* 3B250 801C41C8 75100708 */  j          .L801C41D4
    /* 3B254 801C41CC 23A04300 */   subu      $s4, $v0, $v1
  .L801C41D0:
    /* 3B258 801C41D0 21A00000 */  addu       $s4, $zero, $zero
  .L801C41D4:
    /* 3B25C 801C41D4 0174000C */  jal        func_8001D004
    /* 3B260 801C41D8 00700424 */   addiu     $a0, $zero, 0x7000
    /* 3B264 801C41DC 21404000 */  addu       $t0, $v0, $zero
    /* 3B268 801C41E0 21800000 */  addu       $s0, $zero, $zero
    /* 3B26C 801C41E4 FF008232 */  andi       $v0, $s4, 0xFF
    /* 3B270 801C41E8 68004424 */  addiu      $a0, $v0, 0x68
  .L801C41EC:
    /* 3B274 801C41EC FF000232 */  andi       $v0, $s0, 0xFF
    /* 3B278 801C41F0 40180200 */  sll        $v1, $v0, 1
    /* 3B27C 801C41F4 21186200 */  addu       $v1, $v1, $v0
    /* 3B280 801C41F8 80180300 */  sll        $v1, $v1, 2
    /* 3B284 801C41FC 21186800 */  addu       $v1, $v1, $t0
    /* 3B288 801C4200 01001026 */  addiu      $s0, $s0, 0x1
    /* 3B28C 801C4204 FF000232 */  andi       $v0, $s0, 0xFF
    /* 3B290 801C4208 0300422C */  sltiu      $v0, $v0, 0x3
    /* 3B294 801C420C F7FF4014 */  bnez       $v0, .L801C41EC
    /* 3B298 801C4210 080064A4 */   sh        $a0, 0x8($v1)
    /* 3B29C 801C4214 03001024 */  addiu      $s0, $zero, 0x3
    /* 3B2A0 801C4218 FF008332 */  andi       $v1, $s4, 0xFF
    /* 3B2A4 801C421C 80FF0234 */  ori        $v0, $zero, 0xFF80
    /* 3B2A8 801C4220 23204300 */  subu       $a0, $v0, $v1
  .L801C4224:
    /* 3B2AC 801C4224 FF000232 */  andi       $v0, $s0, 0xFF
    /* 3B2B0 801C4228 40180200 */  sll        $v1, $v0, 1
    /* 3B2B4 801C422C 21186200 */  addu       $v1, $v1, $v0
    /* 3B2B8 801C4230 80180300 */  sll        $v1, $v1, 2
    /* 3B2BC 801C4234 21186800 */  addu       $v1, $v1, $t0
    /* 3B2C0 801C4238 01001026 */  addiu      $s0, $s0, 0x1
    /* 3B2C4 801C423C FF000232 */  andi       $v0, $s0, 0xFF
    /* 3B2C8 801C4240 0600422C */  sltiu      $v0, $v0, 0x6
    /* 3B2CC 801C4244 F7FF4014 */  bnez       $v0, .L801C4224
    /* 3B2D0 801C4248 080064A4 */   sh        $a0, 0x8($v1)
    /* 3B2D4 801C424C 06001024 */  addiu      $s0, $zero, 0x6
    /* 3B2D8 801C4250 FF008332 */  andi       $v1, $s4, 0xFF
    /* 3B2DC 801C4254 A8FF0234 */  ori        $v0, $zero, 0xFFA8
    /* 3B2E0 801C4258 23204300 */  subu       $a0, $v0, $v1
  .L801C425C:
    /* 3B2E4 801C425C FF000232 */  andi       $v0, $s0, 0xFF
    /* 3B2E8 801C4260 40180200 */  sll        $v1, $v0, 1
    /* 3B2EC 801C4264 21186200 */  addu       $v1, $v1, $v0
    /* 3B2F0 801C4268 80180300 */  sll        $v1, $v1, 2
    /* 3B2F4 801C426C 21186800 */  addu       $v1, $v1, $t0
    /* 3B2F8 801C4270 01001026 */  addiu      $s0, $s0, 0x1
    /* 3B2FC 801C4274 FF000232 */  andi       $v0, $s0, 0xFF
    /* 3B300 801C4278 0900422C */  sltiu      $v0, $v0, 0x9
    /* 3B304 801C427C F7FF4014 */  bnez       $v0, .L801C425C
    /* 3B308 801C4280 080064A4 */   sh        $a0, 0x8($v1)
    /* 3B30C 801C4284 FF008432 */  andi       $a0, $s4, 0xFF
    /* 3B310 801C4288 A3FF0334 */  ori        $v1, $zero, 0xFFA3
    /* 3B314 801C428C 23186400 */  subu       $v1, $v1, $a0
    /* 3B318 801C4290 ABFF0234 */  ori        $v0, $zero, 0xFFAB
    /* 3B31C 801C4294 23104400 */  subu       $v0, $v0, $a0
    /* 3B320 801C4298 0E001024 */  addiu      $s0, $zero, 0xE
    /* 3B324 801C429C 65008424 */  addiu      $a0, $a0, 0x65
    /* 3B328 801C42A0 8C0003A5 */  sh         $v1, 0x8C($t0)
    /* 3B32C 801C42A4 740003A5 */  sh         $v1, 0x74($t0)
    /* 3B330 801C42A8 A40002A5 */  sh         $v0, 0xA4($t0)
    /* 3B334 801C42AC 980002A5 */  sh         $v0, 0x98($t0)
    /* 3B338 801C42B0 800002A5 */  sh         $v0, 0x80($t0)
  .L801C42B4:
    /* 3B33C 801C42B4 FF000232 */  andi       $v0, $s0, 0xFF
    /* 3B340 801C42B8 40180200 */  sll        $v1, $v0, 1
    /* 3B344 801C42BC 21186200 */  addu       $v1, $v1, $v0
    /* 3B348 801C42C0 80180300 */  sll        $v1, $v1, 2
    /* 3B34C 801C42C4 21186800 */  addu       $v1, $v1, $t0
    /* 3B350 801C42C8 01001026 */  addiu      $s0, $s0, 0x1
    /* 3B354 801C42CC FF000232 */  andi       $v0, $s0, 0xFF
    /* 3B358 801C42D0 1100422C */  sltiu      $v0, $v0, 0x11
    /* 3B35C 801C42D4 F7FF4014 */  bnez       $v0, .L801C42B4
    /* 3B360 801C42D8 080064A4 */   sh        $a0, 0x8($v1)
    /* 3B364 801C42DC 02000424 */  addiu      $a0, $zero, 0x2
    /* 3B368 801C42E0 00700524 */  addiu      $a1, $zero, 0x7000
    /* 3B36C 801C42E4 21300000 */  addu       $a2, $zero, $zero
    /* 3B370 801C42E8 21380000 */  addu       $a3, $zero, $zero
    /* 3B374 801C42EC 09000224 */  addiu      $v0, $zero, 0x9
    /* 3B378 801C42F0 00101124 */  addiu      $s1, $zero, 0x1000
    /* 3B37C 801C42F4 80001024 */  addiu      $s0, $zero, 0x80
    /* 3B380 801C42F8 04001324 */  addiu      $s3, $zero, 0x4
    /* 3B384 801C42FC 01001224 */  addiu      $s2, $zero, 0x1
    /* 3B388 801C4300 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3B38C 801C4304 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3B390 801C4308 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3B394 801C430C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3B398 801C4310 2000B1AF */  sw         $s1, 0x20($sp)
    /* 3B39C 801C4314 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3B3A0 801C4318 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3B3A4 801C431C 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3B3A8 801C4320 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3B3AC 801C4324 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3B3B0 801C4328 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3B3B4 801C432C 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3B3B8 801C4330 ED4F060C */  jal        func_80193FB4
    /* 3B3BC 801C4334 4000B2AF */   sw        $s2, 0x40($sp)
    /* 3B3C0 801C4338 0174000C */  jal        func_8001D004
    /* 3B3C4 801C433C 03700424 */   addiu     $a0, $zero, 0x7003
    /* 3B3C8 801C4340 21404000 */  addu       $t0, $v0, $zero
    /* 3B3CC 801C4344 FF008432 */  andi       $a0, $s4, 0xFF
    /* 3B3D0 801C4348 9CFF0234 */  ori        $v0, $zero, 0xFF9C
    /* 3B3D4 801C434C 23104400 */  subu       $v0, $v0, $a0
    /* 3B3D8 801C4350 94FF0334 */  ori        $v1, $zero, 0xFF94
    /* 3B3DC 801C4354 23186400 */  subu       $v1, $v1, $a0
    /* 3B3E0 801C4358 01000424 */  addiu      $a0, $zero, 0x1
    /* 3B3E4 801C435C 03700524 */  addiu      $a1, $zero, 0x7003
    /* 3B3E8 801C4360 21300000 */  addu       $a2, $zero, $zero
    /* 3B3EC 801C4364 21380000 */  addu       $a3, $zero, $zero
    /* 3B3F0 801C4368 2C0002A5 */  sh         $v0, 0x2C($t0)
    /* 3B3F4 801C436C 080002A5 */  sh         $v0, 0x8($t0)
    /* 3B3F8 801C4370 1A000224 */  addiu      $v0, $zero, 0x1A
    /* 3B3FC 801C4374 200003A5 */  sh         $v1, 0x20($t0)
    /* 3B400 801C4378 140003A5 */  sh         $v1, 0x14($t0)
    /* 3B404 801C437C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3B408 801C4380 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3B40C 801C4384 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3B410 801C4388 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3B414 801C438C 2000B1AF */  sw         $s1, 0x20($sp)
    /* 3B418 801C4390 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3B41C 801C4394 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3B420 801C4398 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3B424 801C439C 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3B428 801C43A0 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3B42C 801C43A4 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3B430 801C43A8 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3B434 801C43AC ED4F060C */  jal        func_80193FB4
    /* 3B438 801C43B0 4000B2AF */   sw        $s2, 0x40($sp)
    /* 3B43C 801C43B4 1D80033C */  lui        $v1, %hi(D_801D429C + 0x1)
    /* 3B440 801C43B8 9D426380 */  lb         $v1, %lo(D_801D429C + 0x1)($v1)
    /* 3B444 801C43BC 00000000 */  nop
    /* 3B448 801C43C0 11006228 */  slti       $v0, $v1, 0x11
    /* 3B44C 801C43C4 03004014 */  bnez       $v0, .L801C43D4
    /* 3B450 801C43C8 80180300 */   sll       $v1, $v1, 2
    /* 3B454 801C43CC F7100708 */  j          .L801C43DC
    /* 3B458 801C43D0 40001024 */   addiu     $s0, $zero, 0x40
  .L801C43D4:
    /* 3B45C 801C43D4 80FF0224 */  addiu      $v0, $zero, -0x80
    /* 3B460 801C43D8 23804300 */  subu       $s0, $v0, $v1
  .L801C43DC:
    /* 3B464 801C43DC 37000424 */  addiu      $a0, $zero, 0x37
    /* 3B468 801C43E0 00300524 */  addiu      $a1, $zero, 0x3000
    /* 3B46C 801C43E4 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 3B470 801C43E8 21380000 */  addu       $a3, $zero, $zero
    /* 3B474 801C43EC 0D000224 */  addiu      $v0, $zero, 0xD
    /* 3B478 801C43F0 00101124 */  addiu      $s1, $zero, 0x1000
    /* 3B47C 801C43F4 FF001032 */  andi       $s0, $s0, 0xFF
    /* 3B480 801C43F8 06001224 */  addiu      $s2, $zero, 0x6
    /* 3B484 801C43FC 5000A993 */  lbu        $t1, 0x50($sp)
    /* 3B488 801C4400 01001424 */  addiu      $s4, $zero, 0x1
    /* 3B48C 801C4404 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3B490 801C4408 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3B494 801C440C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3B498 801C4410 2000B1AF */  sw         $s1, 0x20($sp)
    /* 3B49C 801C4414 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3B4A0 801C4418 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3B4A4 801C441C 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3B4A8 801C4420 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3B4AC 801C4424 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3B4B0 801C4428 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3B4B4 801C442C 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 3B4B8 801C4430 4000B4AF */  sw         $s4, 0x40($sp)
    /* 3B4BC 801C4434 FC003335 */  ori        $s3, $t1, 0xFC
    /* 3B4C0 801C4438 ED4F060C */  jal        func_80193FB4
    /* 3B4C4 801C443C 1800B3AF */   sw        $s3, 0x18($sp)
    /* 3B4C8 801C4440 38000424 */  addiu      $a0, $zero, 0x38
    /* 3B4CC 801C4444 01300524 */  addiu      $a1, $zero, 0x3001
    /* 3B4D0 801C4448 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 3B4D4 801C444C 21380000 */  addu       $a3, $zero, $zero
    /* 3B4D8 801C4450 0E000224 */  addiu      $v0, $zero, 0xE
    /* 3B4DC 801C4454 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3B4E0 801C4458 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3B4E4 801C445C 1800B3AF */  sw         $s3, 0x18($sp)
    /* 3B4E8 801C4460 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3B4EC 801C4464 2000B1AF */  sw         $s1, 0x20($sp)
    /* 3B4F0 801C4468 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3B4F4 801C446C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3B4F8 801C4470 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3B4FC 801C4474 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3B500 801C4478 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3B504 801C447C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3B508 801C4480 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 3B50C 801C4484 ED4F060C */  jal        func_80193FB4
    /* 3B510 801C4488 4000B4AF */   sw        $s4, 0x40($sp)
    /* 3B514 801C448C 39000424 */  addiu      $a0, $zero, 0x39
    /* 3B518 801C4490 02300524 */  addiu      $a1, $zero, 0x3002
    /* 3B51C 801C4494 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 3B520 801C4498 21380000 */  addu       $a3, $zero, $zero
    /* 3B524 801C449C 0F000224 */  addiu      $v0, $zero, 0xF
    /* 3B528 801C44A0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3B52C 801C44A4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3B530 801C44A8 1800B3AF */  sw         $s3, 0x18($sp)
    /* 3B534 801C44AC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3B538 801C44B0 2000B1AF */  sw         $s1, 0x20($sp)
    /* 3B53C 801C44B4 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3B540 801C44B8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3B544 801C44BC 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3B548 801C44C0 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3B54C 801C44C4 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3B550 801C44C8 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3B554 801C44CC 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 3B558 801C44D0 ED4F060C */  jal        func_80193FB4
    /* 3B55C 801C44D4 4000B4AF */   sw        $s4, 0x40($sp)
    /* 3B560 801C44D8 1D80033C */  lui        $v1, %hi(D_801D429C + 0x1)
    /* 3B564 801C44DC 9D426380 */  lb         $v1, %lo(D_801D429C + 0x1)($v1)
    /* 3B568 801C44E0 00000000 */  nop
    /* 3B56C 801C44E4 10006228 */  slti       $v0, $v1, 0x10
    /* 3B570 801C44E8 0E004010 */  beqz       $v0, .L801C4524
    /* 3B574 801C44EC 00000000 */   nop
    /* 3B578 801C44F0 5000A993 */  lbu        $t1, 0x50($sp)
    /* 3B57C 801C44F4 00000000 */  nop
    /* 3B580 801C44F8 04003415 */  bne        $t1, $s4, .L801C450C
    /* 3B584 801C44FC 00810300 */   sll       $s0, $v1, 4
    /* 3B588 801C4500 0070153C */  lui        $s5, (0x70000000 >> 16)
    /* 3B58C 801C4504 45110708 */  j          .L801C4514
    /* 3B590 801C4508 0070163C */   lui       $s6, (0x70000000 >> 16)
  .L801C450C:
    /* 3B594 801C450C 0050153C */  lui        $s5, (0x50000000 >> 16)
    /* 3B598 801C4510 0050163C */  lui        $s6, (0x50000000 >> 16)
  .L801C4514:
    /* 3B59C 801C4514 220E070C */  jal        func_801C3888
    /* 3B5A0 801C4518 0A000424 */   addiu     $a0, $zero, 0xA
    /* 3B5A4 801C451C 70110708 */  j          .L801C45C0
    /* 3B5A8 801C4520 0A000424 */   addiu     $a0, $zero, 0xA
  .L801C4524:
    /* 3B5AC 801C4524 17006228 */  slti       $v0, $v1, 0x17
    /* 3B5B0 801C4528 1F004010 */  beqz       $v0, .L801C45A8
    /* 3B5B4 801C452C 80000224 */   addiu     $v0, $zero, 0x80
    /* 3B5B8 801C4530 5000A993 */  lbu        $t1, 0x50($sp)
    /* 3B5BC 801C4534 801F013C */  lui        $at, (0x1F8002A2 >> 16)
    /* 3B5C0 801C4538 A20222A0 */  sb         $v0, (0x1F8002A2 & 0xFFFF)($at)
    /* 3B5C4 801C453C 0D003415 */  bne        $t1, $s4, .L801C4574
    /* 3B5C8 801C4540 F0FF0324 */   addiu     $v1, $zero, -0x10
    /* 3B5CC 801C4544 1D80023C */  lui        $v0, %hi(D_801D429C + 0x1)
    /* 3B5D0 801C4548 9D424280 */  lb         $v0, %lo(D_801D429C + 0x1)($v0)
    /* 3B5D4 801C454C 00000000 */  nop
    /* 3B5D8 801C4550 EDFF4324 */  addiu      $v1, $v0, -0x13
    /* 3B5DC 801C4554 14004228 */  slti       $v0, $v0, 0x14
    /* 3B5E0 801C4558 03004010 */  beqz       $v0, .L801C4568
    /* 3B5E4 801C455C 00190300 */   sll       $v1, $v1, 4
    /* 3B5E8 801C4560 63110708 */  j          .L801C458C
    /* 3B5EC 801C4564 B0FF7024 */   addiu     $s0, $v1, -0x50
  .L801C4568:
    /* 3B5F0 801C4568 B0000224 */  addiu      $v0, $zero, 0xB0
    /* 3B5F4 801C456C 63110708 */  j          .L801C458C
    /* 3B5F8 801C4570 23804300 */   subu      $s0, $v0, $v1
  .L801C4574:
    /* 3B5FC 801C4574 1D80023C */  lui        $v0, %hi(D_801D429C + 0x1)
    /* 3B600 801C4578 9D424280 */  lb         $v0, %lo(D_801D429C + 0x1)($v0)
    /* 3B604 801C457C 00000000 */  nop
    /* 3B608 801C4580 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 3B60C 801C4584 00110200 */  sll        $v0, $v0, 4
    /* 3B610 801C4588 23806200 */  subu       $s0, $v1, $v0
  .L801C458C:
    /* 3B614 801C458C 0040163C */  lui        $s6, (0x40000000 >> 16)
    /* 3B618 801C4590 1D80043C */  lui        $a0, %hi(D_801D4298)
    /* 3B61C 801C4594 98428480 */  lb         $a0, %lo(D_801D4298)($a0)
    /* 3B620 801C4598 220E070C */  jal        func_801C3888
    /* 3B624 801C459C 21A80000 */   addu      $s5, $zero, $zero
    /* 3B628 801C45A0 70110708 */  j          .L801C45C0
    /* 3B62C 801C45A4 0A000424 */   addiu     $a0, $zero, 0xA
  .L801C45A8:
    /* 3B630 801C45A8 801F013C */  lui        $at, (0x1F8002A2 >> 16)
    /* 3B634 801C45AC A20222A0 */  sb         $v0, (0x1F8002A2 & 0xFFFF)($at)
    /* 3B638 801C45B0 80001024 */  addiu      $s0, $zero, 0x80
    /* 3B63C 801C45B4 0040163C */  lui        $s6, (0x40000000 >> 16)
    /* 3B640 801C45B8 21A80000 */  addu       $s5, $zero, $zero
    /* 3B644 801C45BC 0A000424 */  addiu      $a0, $zero, 0xA
  .L801C45C0:
    /* 3B648 801C45C0 02700524 */  addiu      $a1, $zero, 0x7002
    /* 3B64C 801C45C4 2130A002 */  addu       $a2, $s5, $zero
    /* 3B650 801C45C8 21380000 */  addu       $a3, $zero, $zero
    /* 3B654 801C45CC 0C001424 */  addiu      $s4, $zero, 0xC
    /* 3B658 801C45D0 00101124 */  addiu      $s1, $zero, 0x1000
    /* 3B65C 801C45D4 FF001032 */  andi       $s0, $s0, 0xFF
    /* 3B660 801C45D8 04001324 */  addiu      $s3, $zero, 0x4
    /* 3B664 801C45DC 01001224 */  addiu      $s2, $zero, 0x1
    /* 3B668 801C45E0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3B66C 801C45E4 1400B4AF */  sw         $s4, 0x14($sp)
    /* 3B670 801C45E8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3B674 801C45EC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3B678 801C45F0 2000B1AF */  sw         $s1, 0x20($sp)
    /* 3B67C 801C45F4 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3B680 801C45F8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3B684 801C45FC 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3B688 801C4600 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3B68C 801C4604 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3B690 801C4608 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3B694 801C460C 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3B698 801C4610 ED4F060C */  jal        func_80193FB4
    /* 3B69C 801C4614 4000B2AF */   sw        $s2, 0x40($sp)
    /* 3B6A0 801C4618 14000424 */  addiu      $a0, $zero, 0x14
    /* 3B6A4 801C461C 01700524 */  addiu      $a1, $zero, 0x7001
    /* 3B6A8 801C4620 2130C002 */  addu       $a2, $s6, $zero
    /* 3B6AC 801C4624 21380000 */  addu       $a3, $zero, $zero
    /* 3B6B0 801C4628 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3B6B4 801C462C 1400B4AF */  sw         $s4, 0x14($sp)
    /* 3B6B8 801C4630 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3B6BC 801C4634 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3B6C0 801C4638 2000B1AF */  sw         $s1, 0x20($sp)
    /* 3B6C4 801C463C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3B6C8 801C4640 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3B6CC 801C4644 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3B6D0 801C4648 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3B6D4 801C464C 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3B6D8 801C4650 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3B6DC 801C4654 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3B6E0 801C4658 ED4F060C */  jal        func_80193FB4
    /* 3B6E4 801C465C 4000B2AF */   sw        $s2, 0x40($sp)
    /* 3B6E8 801C4660 21A00000 */  addu       $s4, $zero, $zero
    /* 3B6EC 801C4664 00101224 */  addiu      $s2, $zero, 0x1000
    /* 3B6F0 801C4668 21880002 */  addu       $s1, $s0, $zero
    /* 3B6F4 801C466C 04001724 */  addiu      $s7, $zero, 0x4
    /* 3B6F8 801C4670 01001324 */  addiu      $s3, $zero, 0x1
  .L801C4674:
    /* 3B6FC 801C4674 FF009032 */  andi       $s0, $s4, 0xFF
    /* 3B700 801C4678 0B000426 */  addiu      $a0, $s0, 0xB
    /* 3B704 801C467C 0C700526 */  addiu      $a1, $s0, 0x700C
    /* 3B708 801C4680 2130A002 */  addu       $a2, $s5, $zero
    /* 3B70C 801C4684 21380000 */  addu       $a3, $zero, $zero
    /* 3B710 801C4688 0C000924 */  addiu      $t1, $zero, 0xC
    /* 3B714 801C468C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3B718 801C4690 1400A9AF */  sw         $t1, 0x14($sp)
    /* 3B71C 801C4694 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3B720 801C4698 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3B724 801C469C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3B728 801C46A0 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3B72C 801C46A4 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3B730 801C46A8 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 3B734 801C46AC 3000B1AF */  sw         $s1, 0x30($sp)
    /* 3B738 801C46B0 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3B73C 801C46B4 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3B740 801C46B8 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 3B744 801C46BC ED4F060C */  jal        func_80193FB4
    /* 3B748 801C46C0 4000B3AF */   sw        $s3, 0x40($sp)
    /* 3B74C 801C46C4 15000426 */  addiu      $a0, $s0, 0x15
    /* 3B750 801C46C8 04700526 */  addiu      $a1, $s0, 0x7004
    /* 3B754 801C46CC 2130C002 */  addu       $a2, $s6, $zero
    /* 3B758 801C46D0 21380000 */  addu       $a3, $zero, $zero
    /* 3B75C 801C46D4 0C000924 */  addiu      $t1, $zero, 0xC
    /* 3B760 801C46D8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3B764 801C46DC 1400A9AF */  sw         $t1, 0x14($sp)
    /* 3B768 801C46E0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3B76C 801C46E4 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3B770 801C46E8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3B774 801C46EC 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3B778 801C46F0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3B77C 801C46F4 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 3B780 801C46F8 3000B1AF */  sw         $s1, 0x30($sp)
    /* 3B784 801C46FC 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3B788 801C4700 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3B78C 801C4704 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 3B790 801C4708 ED4F060C */  jal        func_80193FB4
    /* 3B794 801C470C 4000B3AF */   sw        $s3, 0x40($sp)
    /* 3B798 801C4710 01009426 */  addiu      $s4, $s4, 0x1
    /* 3B79C 801C4714 FF008232 */  andi       $v0, $s4, 0xFF
    /* 3B7A0 801C4718 0800422C */  sltiu      $v0, $v0, 0x8
    /* 3B7A4 801C471C D5FF4014 */  bnez       $v0, .L801C4674
    /* 3B7A8 801C4720 00000000 */   nop
    /* 3B7AC 801C4724 1D80033C */  lui        $v1, %hi(D_801D429C + 0x1)
    /* 3B7B0 801C4728 9D426380 */  lb         $v1, %lo(D_801D429C + 0x1)($v1)
    /* 3B7B4 801C472C 00000000 */  nop
    /* 3B7B8 801C4730 0E006228 */  slti       $v0, $v1, 0xE
    /* 3B7BC 801C4734 0C004014 */  bnez       $v0, .L801C4768
    /* 3B7C0 801C4738 16006228 */   slti      $v0, $v1, 0x16
    /* 3B7C4 801C473C F2FF6324 */  addiu      $v1, $v1, -0xE
    /* 3B7C8 801C4740 80100300 */  sll        $v0, $v1, 2
    /* 3B7CC 801C4744 21104300 */  addu       $v0, $v0, $v1
    /* 3B7D0 801C4748 C0100200 */  sll        $v0, $v0, 3
    /* 3B7D4 801C474C 23104300 */  subu       $v0, $v0, $v1
    /* 3B7D8 801C4750 08004224 */  addiu      $v0, $v0, 0x8
    /* 3B7DC 801C4754 0400C2A7 */  sh         $v0, 0x4($fp)
    /* 3B7E0 801C4758 1D80033C */  lui        $v1, %hi(D_801D429C + 0x1)
    /* 3B7E4 801C475C 9D426380 */  lb         $v1, %lo(D_801D429C + 0x1)($v1)
    /* 3B7E8 801C4760 00000000 */  nop
    /* 3B7EC 801C4764 16006228 */  slti       $v0, $v1, 0x16
  .L801C4768:
    /* 3B7F0 801C4768 04004014 */  bnez       $v0, .L801C477C
    /* 3B7F4 801C476C EAFF6224 */   addiu     $v0, $v1, -0x16
    /* 3B7F8 801C4770 80100200 */  sll        $v0, $v0, 2
    /* 3B7FC 801C4774 02004224 */  addiu      $v0, $v0, 0x2
    /* 3B800 801C4778 0600C2A7 */  sh         $v0, 0x6($fp)
  .L801C477C:
    /* 3B804 801C477C 0400C297 */  lhu        $v0, 0x4($fp)
    /* 3B808 801C4780 00000000 */  nop
    /* 3B80C 801C4784 4001422C */  sltiu      $v0, $v0, 0x140
    /* 3B810 801C4788 02004014 */  bnez       $v0, .L801C4794
    /* 3B814 801C478C 40010224 */   addiu     $v0, $zero, 0x140
    /* 3B818 801C4790 0400C2A7 */  sh         $v0, 0x4($fp)
  .L801C4794:
    /* 3B81C 801C4794 0600C297 */  lhu        $v0, 0x6($fp)
    /* 3B820 801C4798 00000000 */  nop
    /* 3B824 801C479C 2200422C */  sltiu      $v0, $v0, 0x22
    /* 3B828 801C47A0 03004014 */  bnez       $v0, .L801C47B0
    /* 3B82C 801C47A4 21200000 */   addu      $a0, $zero, $zero
    /* 3B830 801C47A8 22000224 */  addiu      $v0, $zero, 0x22
    /* 3B834 801C47AC 0600C2A7 */  sh         $v0, 0x6($fp)
  .L801C47B0:
    /* 3B838 801C47B0 21280000 */  addu       $a1, $zero, $zero
    /* 3B83C 801C47B4 2130C003 */  addu       $a2, $fp, $zero
    /* 3B840 801C47B8 21380000 */  addu       $a3, $zero, $zero
    /* 3B844 801C47BC 1D80023C */  lui        $v0, %hi(D_801D429C + 0x1)
    /* 3B848 801C47C0 9D424280 */  lb         $v0, %lo(D_801D429C + 0x1)($v0)
    /* 3B84C 801C47C4 02000324 */  addiu      $v1, $zero, 0x2
    /* 3B850 801C47C8 1000A3AF */  sw         $v1, 0x10($sp)
    /* 3B854 801C47CC 0E004228 */  slti       $v0, $v0, 0xE
    /* 3B858 801C47D0 01004238 */  xori       $v0, $v0, 0x1
    /* 3B85C 801C47D4 7850060C */  jal        func_801941E0
    /* 3B860 801C47D8 1400A2AF */   sw        $v0, 0x14($sp)
    /* 3B864 801C47DC 4800A293 */  lbu        $v0, 0x48($sp)
    /* 3B868 801C47E0 00000000 */  nop
    /* 3B86C 801C47E4 05004010 */  beqz       $v0, .L801C47FC
    /* 3B870 801C47E8 00000000 */   nop
    /* 3B874 801C47EC 1D80023C */  lui        $v0, %hi(D_801D429C + 0x1)
    /* 3B878 801C47F0 9D424290 */  lbu        $v0, %lo(D_801D429C + 0x1)($v0)
    /* 3B87C 801C47F4 03120708 */  j          .L801C480C
    /* 3B880 801C47F8 01004224 */   addiu     $v0, $v0, 0x1
  .L801C47FC:
    /* 3B884 801C47FC 1D80023C */  lui        $v0, %hi(D_801D429C + 0x1)
    /* 3B888 801C4800 9D424290 */  lbu        $v0, %lo(D_801D429C + 0x1)($v0)
    /* 3B88C 801C4804 00000000 */  nop
    /* 3B890 801C4808 FFFF4224 */  addiu      $v0, $v0, -0x1
  .L801C480C:
    /* 3B894 801C480C 1D80013C */  lui        $at, %hi(D_801D429C + 0x1)
    /* 3B898 801C4810 9D4222A0 */  sb         $v0, %lo(D_801D429C + 0x1)($at)
    /* 3B89C 801C4814 1D80033C */  lui        $v1, %hi(D_801D429C + 0x1)
    /* 3B8A0 801C4818 9D426390 */  lbu        $v1, %lo(D_801D429C + 0x1)($v1)
    /* 3B8A4 801C481C 00000000 */  nop
    /* 3B8A8 801C4820 1F00622C */  sltiu      $v0, $v1, 0x1F
    /* 3B8AC 801C4824 62004014 */  bnez       $v0, .L801C49B0
    /* 3B8B0 801C4828 00160300 */   sll       $v0, $v1, 24
    /* 3B8B4 801C482C 44004104 */  bgez       $v0, .L801C4940
    /* 3B8B8 801C4830 21200000 */   addu      $a0, $zero, $zero
    /* 3B8BC 801C4834 4E39060C */  jal        func_8018E538
    /* 3B8C0 801C4838 21200000 */   addu      $a0, $zero, $zero
    /* 3B8C4 801C483C 37000424 */  addiu      $a0, $zero, 0x37
    /* 3B8C8 801C4840 00300524 */  addiu      $a1, $zero, 0x3000
    /* 3B8CC 801C4844 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 3B8D0 801C4848 21380000 */  addu       $a3, $zero, $zero
    /* 3B8D4 801C484C 0D000224 */  addiu      $v0, $zero, 0xD
    /* 3B8D8 801C4850 00101124 */  addiu      $s1, $zero, 0x1000
    /* 3B8DC 801C4854 80001024 */  addiu      $s0, $zero, 0x80
    /* 3B8E0 801C4858 06001324 */  addiu      $s3, $zero, 0x6
    /* 3B8E4 801C485C 5000A993 */  lbu        $t1, 0x50($sp)
    /* 3B8E8 801C4860 01001224 */  addiu      $s2, $zero, 0x1
    /* 3B8EC 801C4864 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3B8F0 801C4868 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3B8F4 801C486C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3B8F8 801C4870 2000B1AF */  sw         $s1, 0x20($sp)
    /* 3B8FC 801C4874 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3B900 801C4878 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3B904 801C487C 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3B908 801C4880 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3B90C 801C4884 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3B910 801C4888 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3B914 801C488C 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3B918 801C4890 4000B2AF */  sw         $s2, 0x40($sp)
    /* 3B91C 801C4894 FC003435 */  ori        $s4, $t1, 0xFC
    /* 3B920 801C4898 ED4F060C */  jal        func_80193FB4
    /* 3B924 801C489C 1800B4AF */   sw        $s4, 0x18($sp)
    /* 3B928 801C48A0 38000424 */  addiu      $a0, $zero, 0x38
    /* 3B92C 801C48A4 01300524 */  addiu      $a1, $zero, 0x3001
    /* 3B930 801C48A8 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 3B934 801C48AC 21380000 */  addu       $a3, $zero, $zero
    /* 3B938 801C48B0 0E000224 */  addiu      $v0, $zero, 0xE
    /* 3B93C 801C48B4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3B940 801C48B8 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3B944 801C48BC 1800B4AF */  sw         $s4, 0x18($sp)
    /* 3B948 801C48C0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3B94C 801C48C4 2000B1AF */  sw         $s1, 0x20($sp)
    /* 3B950 801C48C8 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3B954 801C48CC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3B958 801C48D0 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3B95C 801C48D4 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3B960 801C48D8 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3B964 801C48DC 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3B968 801C48E0 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3B96C 801C48E4 ED4F060C */  jal        func_80193FB4
    /* 3B970 801C48E8 4000B2AF */   sw        $s2, 0x40($sp)
    /* 3B974 801C48EC 39000424 */  addiu      $a0, $zero, 0x39
    /* 3B978 801C48F0 02300524 */  addiu      $a1, $zero, 0x3002
    /* 3B97C 801C48F4 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 3B980 801C48F8 21380000 */  addu       $a3, $zero, $zero
    /* 3B984 801C48FC 0F000224 */  addiu      $v0, $zero, 0xF
    /* 3B988 801C4900 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3B98C 801C4904 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3B990 801C4908 1800B4AF */  sw         $s4, 0x18($sp)
    /* 3B994 801C490C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3B998 801C4910 2000B1AF */  sw         $s1, 0x20($sp)
    /* 3B99C 801C4914 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3B9A0 801C4918 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3B9A4 801C491C 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3B9A8 801C4920 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3B9AC 801C4924 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3B9B0 801C4928 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3B9B4 801C492C 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3B9B8 801C4930 ED4F060C */  jal        func_80193FB4
    /* 3B9BC 801C4934 4000B2AF */   sw        $s2, 0x40($sp)
    /* 3B9C0 801C4938 68120708 */  j          .L801C49A0
    /* 3B9C4 801C493C FFFF0224 */   addiu     $v0, $zero, -0x1
  .L801C4940:
    /* 3B9C8 801C4940 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 3B9CC 801C4944 80000224 */  addiu      $v0, $zero, 0x80
    /* 3B9D0 801C4948 801F013C */  lui        $at, (0x1F8002A2 >> 16)
    /* 3B9D4 801C494C A20222A0 */  sb         $v0, (0x1F8002A2 & 0xFFFF)($at)
    /* 3B9D8 801C4950 38010224 */  addiu      $v0, $zero, 0x138
    /* 3B9DC 801C4954 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3B9E0 801C4958 03000224 */  addiu      $v0, $zero, 0x3
    /* 3B9E4 801C495C 2400A2AF */  sw         $v0, 0x24($sp)
    /* 3B9E8 801C4960 1D80023C */  lui        $v0, %hi(D_801D4298)
    /* 3B9EC 801C4964 98424290 */  lbu        $v0, %lo(D_801D4298)($v0)
    /* 3B9F0 801C4968 01000324 */  addiu      $v1, $zero, 0x1
    /* 3B9F4 801C496C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3B9F8 801C4970 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3B9FC 801C4974 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 3BA00 801C4978 2000A0AF */  sw         $zero, 0x20($sp)
    /* 3BA04 801C497C 2800A3AF */  sw         $v1, 0x28($sp)
    /* 3BA08 801C4980 2C00A3AF */  sw         $v1, 0x2C($sp)
    /* 3BA0C 801C4984 80100200 */  sll        $v0, $v0, 2
    /* 3BA10 801C4988 1D80013C */  lui        $at, %hi(D_801D5848)
    /* 3BA14 801C498C 21082200 */  addu       $at, $at, $v0
    /* 3BA18 801C4990 4858258C */  lw         $a1, %lo(D_801D5848)($at)
    /* 3BA1C 801C4994 B850060C */  jal        func_801942E0
    /* 3BA20 801C4998 3E000724 */   addiu     $a3, $zero, 0x3E
    /* 3BA24 801C499C FFFF0224 */  addiu      $v0, $zero, -0x1
  .L801C49A0:
    /* 3BA28 801C49A0 1D80013C */  lui        $at, %hi(D_801D429C + 0x1)
    /* 3BA2C 801C49A4 9D4222A0 */  sb         $v0, %lo(D_801D429C + 0x1)($at)
    /* 3BA30 801C49A8 01000924 */  addiu      $t1, $zero, 0x1
    /* 3BA34 801C49AC 5800A9A3 */  sb         $t1, 0x58($sp)
  .L801C49B0:
    /* 3BA38 801C49B0 5800A993 */  lbu        $t1, 0x58($sp)
    /* 3BA3C 801C49B4 00000000 */  nop
    /* 3BA40 801C49B8 21102001 */  addu       $v0, $t1, $zero
    /* 3BA44 801C49BC 8400BF8F */  lw         $ra, 0x84($sp)
    /* 3BA48 801C49C0 8000BE8F */  lw         $fp, 0x80($sp)
    /* 3BA4C 801C49C4 7C00B78F */  lw         $s7, 0x7C($sp)
    /* 3BA50 801C49C8 7800B68F */  lw         $s6, 0x78($sp)
    /* 3BA54 801C49CC 7400B58F */  lw         $s5, 0x74($sp)
    /* 3BA58 801C49D0 7000B48F */  lw         $s4, 0x70($sp)
    /* 3BA5C 801C49D4 6C00B38F */  lw         $s3, 0x6C($sp)
    /* 3BA60 801C49D8 6800B28F */  lw         $s2, 0x68($sp)
    /* 3BA64 801C49DC 6400B18F */  lw         $s1, 0x64($sp)
    /* 3BA68 801C49E0 6000B08F */  lw         $s0, 0x60($sp)
    /* 3BA6C 801C49E4 8800BD27 */  addiu      $sp, $sp, 0x88
    /* 3BA70 801C49E8 0800E003 */  jr         $ra
    /* 3BA74 801C49EC 00000000 */   nop
endlabel func_801C405C
