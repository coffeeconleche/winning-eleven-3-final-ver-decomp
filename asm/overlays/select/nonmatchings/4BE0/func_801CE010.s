nonmatching func_801CE010, 0x1698

glabel func_801CE010
    /* 45098 801CE010 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 4509C 801CE014 3800B2AF */  sw         $s2, 0x38($sp)
    /* 450A0 801CE018 2190A000 */  addu       $s2, $a1, $zero
    /* 450A4 801CE01C 4400B5AF */  sw         $s5, 0x44($sp)
    /* 450A8 801CE020 21A88000 */  addu       $s5, $a0, $zero
    /* 450AC 801CE024 4800B6AF */  sw         $s6, 0x48($sp)
    /* 450B0 801CE028 21B00000 */  addu       $s6, $zero, $zero
    /* 450B4 801CE02C 21200000 */  addu       $a0, $zero, $zero
    /* 450B8 801CE030 5400BFAF */  sw         $ra, 0x54($sp)
    /* 450BC 801CE034 5000BEAF */  sw         $fp, 0x50($sp)
    /* 450C0 801CE038 4C00B7AF */  sw         $s7, 0x4C($sp)
    /* 450C4 801CE03C 4000B4AF */  sw         $s4, 0x40($sp)
    /* 450C8 801CE040 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 450CC 801CE044 3400B1AF */  sw         $s1, 0x34($sp)
    /* 450D0 801CE048 20BB010C */  jal        func_8006EC80
    /* 450D4 801CE04C 3000B0AF */   sw        $s0, 0x30($sp)
    /* 450D8 801CE050 21204000 */  addu       $a0, $v0, $zero
    /* 450DC 801CE054 21884002 */  addu       $s1, $s2, $zero
    /* 450E0 801CE058 11801E3C */  lui        $fp, %hi(D_8010A5A8)
    /* 450E4 801CE05C A8A5DE27 */  addiu      $fp, $fp, %lo(D_8010A5A8)
    /* 450E8 801CE060 1080173C */  lui        $s7, %hi(D_800FF748)
    /* 450EC 801CE064 48F7F726 */  addiu      $s7, $s7, %lo(D_800FF748)
    /* 450F0 801CE068 1E80033C */  lui        $v1, %hi(D_801DA055)
    /* 450F4 801CE06C 55A06390 */  lbu        $v1, %lo(D_801DA055)($v1)
    /* 450F8 801CE070 51000224 */  addiu      $v0, $zero, 0x51
    /* 450FC 801CE074 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 45100 801CE078 A4A524A4 */  sh         $a0, %lo(D_8010A5A4)($at)
    /* 45104 801CE07C 48026210 */  beq        $v1, $v0, .L801CE9A0
    /* 45108 801CE080 801F143C */   lui       $s4, (0x1F800294 >> 16)
    /* 4510C 801CE084 52006228 */  slti       $v0, $v1, 0x52
    /* 45110 801CE088 23004010 */  beqz       $v0, .L801CE118
    /* 45114 801CE08C 18000224 */   addiu     $v0, $zero, 0x18
    /* 45118 801CE090 64006210 */  beq        $v1, $v0, .L801CE224
    /* 4511C 801CE094 30000224 */   addiu     $v0, $zero, 0x30
    /* 45120 801CE098 19006228 */  slti       $v0, $v1, 0x19
    /* 45124 801CE09C 0E004010 */  beqz       $v0, .L801CE0D8
    /* 45128 801CE0A0 10000224 */   addiu     $v0, $zero, 0x10
    /* 4512C 801CE0A4 42006210 */  beq        $v1, $v0, .L801CE1B0
    /* 45130 801CE0A8 11006228 */   slti      $v0, $v1, 0x11
    /* 45134 801CE0AC 05004010 */  beqz       $v0, .L801CE0C4
    /* 45138 801CE0B0 00000000 */   nop
    /* 4513C 801CE0B4 3C006010 */  beqz       $v1, .L801CE1A8
    /* 45140 801CE0B8 10000224 */   addiu     $v0, $zero, 0x10
    /* 45144 801CE0BC 903D0708 */  j          .L801CF640
    /* 45148 801CE0C0 01000224 */   addiu     $v0, $zero, 0x1
  .L801CE0C4:
    /* 4514C 801CE0C4 11000224 */  addiu      $v0, $zero, 0x11
    /* 45150 801CE0C8 45006210 */  beq        $v1, $v0, .L801CE1E0
    /* 45154 801CE0CC 01000424 */   addiu     $a0, $zero, 0x1
    /* 45158 801CE0D0 903D0708 */  j          .L801CF640
    /* 4515C 801CE0D4 01000224 */   addiu     $v0, $zero, 0x1
  .L801CE0D8:
    /* 45160 801CE0D8 30001324 */  addiu      $s3, $zero, 0x30
    /* 45164 801CE0DC 3A017310 */  beq        $v1, $s3, .L801CE5C8
    /* 45168 801CE0E0 31006228 */   slti      $v0, $v1, 0x31
    /* 4516C 801CE0E4 05004010 */  beqz       $v0, .L801CE0FC
    /* 45170 801CE0E8 20000224 */   addiu     $v0, $zero, 0x20
    /* 45174 801CE0EC 51006210 */  beq        $v1, $v0, .L801CE234
    /* 45178 801CE0F0 01000224 */   addiu     $v0, $zero, 0x1
    /* 4517C 801CE0F4 903D0708 */  j          .L801CF640
    /* 45180 801CE0F8 00000000 */   nop
  .L801CE0FC:
    /* 45184 801CE0FC 40000224 */  addiu      $v0, $zero, 0x40
    /* 45188 801CE100 44016210 */  beq        $v1, $v0, .L801CE614
    /* 4518C 801CE104 50000224 */   addiu     $v0, $zero, 0x50
    /* 45190 801CE108 81016210 */  beq        $v1, $v0, .L801CE710
    /* 45194 801CE10C 01000224 */   addiu     $v0, $zero, 0x1
    /* 45198 801CE110 903D0708 */  j          .L801CF640
    /* 4519C 801CE114 00000000 */   nop
  .L801CE118:
    /* 451A0 801CE118 B0000224 */  addiu      $v0, $zero, 0xB0
    /* 451A4 801CE11C 76036210 */  beq        $v1, $v0, .L801CEEF8
    /* 451A8 801CE120 B1006228 */   slti      $v0, $v1, 0xB1
    /* 451AC 801CE124 10004010 */  beqz       $v0, .L801CE168
    /* 451B0 801CE128 80000224 */   addiu     $v0, $zero, 0x80
    /* 451B4 801CE12C A3026210 */  beq        $v1, $v0, .L801CEBBC
    /* 451B8 801CE130 81006228 */   slti      $v0, $v1, 0x81
    /* 451BC 801CE134 05004010 */  beqz       $v0, .L801CE14C
    /* 451C0 801CE138 70000224 */   addiu     $v0, $zero, 0x70
    /* 451C4 801CE13C 97026210 */  beq        $v1, $v0, .L801CEB9C
    /* 451C8 801CE140 01000224 */   addiu     $v0, $zero, 0x1
    /* 451CC 801CE144 903D0708 */  j          .L801CF640
    /* 451D0 801CE148 00000000 */   nop
  .L801CE14C:
    /* 451D4 801CE14C 90000224 */  addiu      $v0, $zero, 0x90
    /* 451D8 801CE150 0C036210 */  beq        $v1, $v0, .L801CED84
    /* 451DC 801CE154 A0000224 */   addiu     $v0, $zero, 0xA0
    /* 451E0 801CE158 52036210 */  beq        $v1, $v0, .L801CEEA4
    /* 451E4 801CE15C FF0F8230 */   andi      $v0, $a0, 0xFFF
    /* 451E8 801CE160 903D0708 */  j          .L801CF640
    /* 451EC 801CE164 01000224 */   addiu     $v0, $zero, 0x1
  .L801CE168:
    /* 451F0 801CE168 E0000224 */  addiu      $v0, $zero, 0xE0
    /* 451F4 801CE16C 0D046210 */  beq        $v1, $v0, .L801CF1A4
    /* 451F8 801CE170 E1006228 */   slti      $v0, $v1, 0xE1
    /* 451FC 801CE174 05004010 */  beqz       $v0, .L801CE18C
    /* 45200 801CE178 C0000224 */   addiu     $v0, $zero, 0xC0
    /* 45204 801CE17C FE036210 */  beq        $v1, $v0, .L801CF178
    /* 45208 801CE180 01000224 */   addiu     $v0, $zero, 0x1
    /* 4520C 801CE184 903D0708 */  j          .L801CF640
    /* 45210 801CE188 00000000 */   nop
  .L801CE18C:
    /* 45214 801CE18C E8000224 */  addiu      $v0, $zero, 0xE8
    /* 45218 801CE190 49046210 */  beq        $v1, $v0, .L801CF2B8
    /* 4521C 801CE194 F0000224 */   addiu     $v0, $zero, 0xF0
    /* 45220 801CE198 9D046210 */  beq        $v1, $v0, .L801CF410
    /* 45224 801CE19C 01000224 */   addiu     $v0, $zero, 0x1
    /* 45228 801CE1A0 903D0708 */  j          .L801CF640
    /* 4522C 801CE1A4 00000000 */   nop
  .L801CE1A8:
    /* 45230 801CE1A8 1E80013C */  lui        $at, %hi(D_801DA055)
    /* 45234 801CE1AC 55A022A0 */  sb         $v0, %lo(D_801DA055)($at)
  .L801CE1B0:
    /* 45238 801CE1B0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4523C 801CE1B4 2108E102 */  addu       $at, $s7, $at
    /* 45240 801CE1B8 148F2290 */  lbu        $v0, -0x70EC($at)
    /* 45244 801CE1BC 1D80013C */  lui        $at, %hi(D_801D5A50)
    /* 45248 801CE1C0 505A20AC */  sw         $zero, %lo(D_801D5A50)($at)
    /* 4524C 801CE1C4 48034010 */  beqz       $v0, .L801CEEE8
    /* 45250 801CE1C8 3C000324 */   addiu     $v1, $zero, 0x3C
    /* 45254 801CE1CC 1E80023C */  lui        $v0, %hi(D_801DA055)
    /* 45258 801CE1D0 55A04290 */  lbu        $v0, %lo(D_801DA055)($v0)
    /* 4525C 801CE1D4 940283A6 */  sh         $v1, (0x1F800294 & 0xFFFF)($s4)
    /* 45260 801CE1D8 8D3D0708 */  j          .L801CF634
    /* 45264 801CE1DC 01004224 */   addiu     $v0, $v0, 0x1
  .L801CE1E0:
    /* 45268 801CE1E0 D0000524 */  addiu      $a1, $zero, 0xD0
    /* 4526C 801CE1E4 34000624 */  addiu      $a2, $zero, 0x34
    /* 45270 801CE1E8 1D80073C */  lui        $a3, %hi(D_801D5844)
    /* 45274 801CE1EC 4458E78C */  lw         $a3, %lo(D_801D5844)($a3)
    /* 45278 801CE1F0 F8FF0224 */  addiu      $v0, $zero, -0x8
    /* 4527C 801CE1F4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 45280 801CE1F8 B914070C */  jal        func_801C52E4
    /* 45284 801CE1FC 1400A0AF */   sw        $zero, 0x14($sp)
    /* 45288 801CE200 FF004230 */  andi       $v0, $v0, 0xFF
    /* 4528C 801CE204 03004010 */  beqz       $v0, .L801CE214
    /* 45290 801CE208 20000224 */   addiu     $v0, $zero, 0x20
    /* 45294 801CE20C 1E80013C */  lui        $at, %hi(D_801DA055)
    /* 45298 801CE210 55A022A0 */  sb         $v0, %lo(D_801DA055)($at)
  .L801CE214:
    /* 4529C 801CE214 801F023C */  lui        $v0, (0x1F800294 >> 16)
    /* 452A0 801CE218 94024294 */  lhu        $v0, (0x1F800294 & 0xFFFF)($v0)
    /* 452A4 801CE21C 633C0708 */  j          .L801CF18C
    /* 452A8 801CE220 FFFF4224 */   addiu     $v0, $v0, -0x1
  .L801CE224:
    /* 452AC 801CE224 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 452B0 801CE228 940222A4 */  sh         $v0, (0x1F800294 & 0xFFFF)($at)
    /* 452B4 801CE22C 8D3D0708 */  j          .L801CF634
    /* 452B8 801CE230 20000224 */   addiu     $v0, $zero, 0x20
  .L801CE234:
    /* 452BC 801CE234 801F023C */  lui        $v0, (0x1F800294 >> 16)
    /* 452C0 801CE238 94024294 */  lhu        $v0, (0x1F800294 & 0xFFFF)($v0)
    /* 452C4 801CE23C 00000000 */  nop
    /* 452C8 801CE240 D2034014 */  bnez       $v0, .L801CF18C
    /* 452CC 801CE244 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 452D0 801CE248 124A060C */  jal        func_80192848
    /* 452D4 801CE24C 21200000 */   addu      $a0, $zero, $zero
    /* 452D8 801CE250 21804000 */  addu       $s0, $v0, $zero
    /* 452DC 801CE254 AA3D070C */  jal        func_801CF6A8
    /* 452E0 801CE258 21200002 */   addu      $a0, $s0, $zero
    /* 452E4 801CE25C 21184000 */  addu       $v1, $v0, $zero
    /* 452E8 801CE260 FEFF0224 */  addiu      $v0, $zero, -0x2
    /* 452EC 801CE264 A0006210 */  beq        $v1, $v0, .L801CE4E8
    /* 452F0 801CE268 FFFF6228 */   slti      $v0, $v1, -0x1
    /* 452F4 801CE26C 05004010 */  beqz       $v0, .L801CE284
    /* 452F8 801CE270 FDFF0224 */   addiu     $v0, $zero, -0x3
    /* 452FC 801CE274 74006210 */  beq        $v1, $v0, .L801CE448
    /* 45300 801CE278 01002232 */   andi      $v0, $s1, 0x1
    /* 45304 801CE27C BA3B0708 */  j          .L801CEEE8
    /* 45308 801CE280 00000000 */   nop
  .L801CE284:
    /* 4530C 801CE284 01001224 */  addiu      $s2, $zero, 0x1
    /* 45310 801CE288 05007210 */  beq        $v1, $s2, .L801CE2A0
    /* 45314 801CE28C 11000224 */   addiu     $v0, $zero, 0x11
    /* 45318 801CE290 42006210 */  beq        $v1, $v0, .L801CE39C
    /* 4531C 801CE294 00000000 */   nop
    /* 45320 801CE298 BA3B0708 */  j          .L801CEEE8
    /* 45324 801CE29C 00000000 */   nop
  .L801CE2A0:
    /* 45328 801CE2A0 0E00022A */  slti       $v0, $s0, 0xE
    /* 4532C 801CE2A4 0B004014 */  bnez       $v0, .L801CE2D4
    /* 45330 801CE2A8 00000000 */   nop
    /* 45334 801CE2AC 9A028292 */  lbu        $v0, (0x1F80029A & 0xFFFF)($s4)
    /* 45338 801CE2B0 00000000 */  nop
    /* 4533C 801CE2B4 D0FF4224 */  addiu      $v0, $v0, -0x30
    /* 45340 801CE2B8 0200422C */  sltiu      $v0, $v0, 0x2
    /* 45344 801CE2BC 03004010 */  beqz       $v0, .L801CE2CC
    /* 45348 801CE2C0 20001024 */   addiu     $s0, $zero, 0x20
    /* 4534C 801CE2C4 43390708 */  j          .L801CE50C
    /* 45350 801CE2C8 E8000224 */   addiu     $v0, $zero, 0xE8
  .L801CE2CC:
    /* 45354 801CE2CC 42390708 */  j          .L801CE508
    /* 45358 801CE2D0 09001024 */   addiu     $s0, $zero, 0x9
  .L801CE2D4:
    /* 4535C 801CE2D4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 45360 801CE2D8 2108E102 */  addu       $at, $s7, $at
    /* 45364 801CE2DC 148F2290 */  lbu        $v0, -0x70EC($at)
    /* 45368 801CE2E0 9A028392 */  lbu        $v1, (0x1F80029A & 0xFFFF)($s4)
    /* 4536C 801CE2E4 08004234 */  ori        $v0, $v0, 0x8
    /* 45370 801CE2E8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 45374 801CE2EC 2108E102 */  addu       $at, $s7, $at
    /* 45378 801CE2F0 148F22A0 */  sb         $v0, -0x70EC($at)
    /* 4537C 801CE2F4 03007314 */  bne        $v1, $s3, .L801CE304
    /* 45380 801CE2F8 01002232 */   andi      $v0, $s1, 0x1
    /* 45384 801CE2FC 8D3D0708 */  j          .L801CF634
    /* 45388 801CE300 40000224 */   addiu     $v0, $zero, 0x40
  .L801CE304:
    /* 4538C 801CE304 10004010 */  beqz       $v0, .L801CE348
    /* 45390 801CE308 21200000 */   addu      $a0, $zero, $zero
    /* 45394 801CE30C 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 45398 801CE310 3E000724 */  addiu      $a3, $zero, 0x3E
    /* 4539C 801CE314 1D80053C */  lui        $a1, %hi(D_801D58FC)
    /* 453A0 801CE318 FC58A58C */  lw         $a1, %lo(D_801D58FC)($a1)
    /* 453A4 801CE31C 38010224 */  addiu      $v0, $zero, 0x138
    /* 453A8 801CE320 1000A2AF */  sw         $v0, 0x10($sp)
    /* 453AC 801CE324 03000224 */  addiu      $v0, $zero, 0x3
    /* 453B0 801CE328 1400A0AF */  sw         $zero, 0x14($sp)
    /* 453B4 801CE32C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 453B8 801CE330 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 453BC 801CE334 2000A0AF */  sw         $zero, 0x20($sp)
    /* 453C0 801CE338 2400A2AF */  sw         $v0, 0x24($sp)
    /* 453C4 801CE33C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 453C8 801CE340 B850060C */  jal        func_801942E0
    /* 453CC 801CE344 2C00B2AF */   sw        $s2, 0x2C($sp)
  .L801CE348:
    /* 453D0 801CE348 02002232 */  andi       $v0, $s1, 0x2
    /* 453D4 801CE34C 11004010 */  beqz       $v0, .L801CE394
    /* 453D8 801CE350 01000424 */   addiu     $a0, $zero, 0x1
    /* 453DC 801CE354 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 453E0 801CE358 F8FF0724 */  addiu      $a3, $zero, -0x8
    /* 453E4 801CE35C 1D80053C */  lui        $a1, %hi(D_801D58FC)
    /* 453E8 801CE360 FC58A58C */  lw         $a1, %lo(D_801D58FC)($a1)
    /* 453EC 801CE364 38010224 */  addiu      $v0, $zero, 0x138
    /* 453F0 801CE368 1000A2AF */  sw         $v0, 0x10($sp)
    /* 453F4 801CE36C 03000224 */  addiu      $v0, $zero, 0x3
    /* 453F8 801CE370 1400A2AF */  sw         $v0, 0x14($sp)
    /* 453FC 801CE374 0C000224 */  addiu      $v0, $zero, 0xC
    /* 45400 801CE378 1800A0AF */  sw         $zero, 0x18($sp)
    /* 45404 801CE37C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 45408 801CE380 2000A0AF */  sw         $zero, 0x20($sp)
    /* 4540C 801CE384 2400A2AF */  sw         $v0, 0x24($sp)
    /* 45410 801CE388 2800A0AF */  sw         $zero, 0x28($sp)
    /* 45414 801CE38C B850060C */  jal        func_801942E0
    /* 45418 801CE390 2C00B2AF */   sw        $s2, 0x2C($sp)
  .L801CE394:
    /* 4541C 801CE394 8D3D0708 */  j          .L801CF634
    /* 45420 801CE398 F0000224 */   addiu     $v0, $zero, 0xF0
  .L801CE39C:
    /* 45424 801CE39C 9A028292 */  lbu        $v0, (0x1F80029A & 0xFFFF)($s4)
    /* 45428 801CE3A0 00000000 */  nop
    /* 4542C 801CE3A4 A3045314 */  bne        $v0, $s3, .L801CF634
    /* 45430 801CE3A8 30000224 */   addiu     $v0, $zero, 0x30
    /* 45434 801CE3AC 01002232 */  andi       $v0, $s1, 0x1
    /* 45438 801CE3B0 10004010 */  beqz       $v0, .L801CE3F4
    /* 4543C 801CE3B4 21200000 */   addu      $a0, $zero, $zero
    /* 45440 801CE3B8 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 45444 801CE3BC 3E000724 */  addiu      $a3, $zero, 0x3E
    /* 45448 801CE3C0 1D80053C */  lui        $a1, %hi(D_801D5910)
    /* 4544C 801CE3C4 1059A58C */  lw         $a1, %lo(D_801D5910)($a1)
    /* 45450 801CE3C8 38010224 */  addiu      $v0, $zero, 0x138
    /* 45454 801CE3CC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 45458 801CE3D0 03000224 */  addiu      $v0, $zero, 0x3
    /* 4545C 801CE3D4 1400A0AF */  sw         $zero, 0x14($sp)
    /* 45460 801CE3D8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 45464 801CE3DC 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 45468 801CE3E0 2000A0AF */  sw         $zero, 0x20($sp)
    /* 4546C 801CE3E4 2400A2AF */  sw         $v0, 0x24($sp)
    /* 45470 801CE3E8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 45474 801CE3EC B850060C */  jal        func_801942E0
    /* 45478 801CE3F0 2C00B2AF */   sw        $s2, 0x2C($sp)
  .L801CE3F4:
    /* 4547C 801CE3F4 02002232 */  andi       $v0, $s1, 0x2
    /* 45480 801CE3F8 11004010 */  beqz       $v0, .L801CE440
    /* 45484 801CE3FC 01000424 */   addiu     $a0, $zero, 0x1
    /* 45488 801CE400 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 4548C 801CE404 F0FF0724 */  addiu      $a3, $zero, -0x10
    /* 45490 801CE408 1D80053C */  lui        $a1, %hi(D_801D5910)
    /* 45494 801CE40C 1059A58C */  lw         $a1, %lo(D_801D5910)($a1)
    /* 45498 801CE410 38010224 */  addiu      $v0, $zero, 0x138
    /* 4549C 801CE414 1000A2AF */  sw         $v0, 0x10($sp)
    /* 454A0 801CE418 03000224 */  addiu      $v0, $zero, 0x3
    /* 454A4 801CE41C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 454A8 801CE420 0C000224 */  addiu      $v0, $zero, 0xC
    /* 454AC 801CE424 1800A0AF */  sw         $zero, 0x18($sp)
    /* 454B0 801CE428 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 454B4 801CE42C 2000A0AF */  sw         $zero, 0x20($sp)
    /* 454B8 801CE430 2400A2AF */  sw         $v0, 0x24($sp)
    /* 454BC 801CE434 2800A0AF */  sw         $zero, 0x28($sp)
    /* 454C0 801CE438 B850060C */  jal        func_801942E0
    /* 454C4 801CE43C 2C00B2AF */   sw        $s2, 0x2C($sp)
  .L801CE440:
    /* 454C8 801CE440 8D3D0708 */  j          .L801CF634
    /* 454CC 801CE444 E0000224 */   addiu     $v0, $zero, 0xE0
  .L801CE448:
    /* 454D0 801CE448 11004010 */  beqz       $v0, .L801CE490
    /* 454D4 801CE44C 21200000 */   addu      $a0, $zero, $zero
    /* 454D8 801CE450 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 454DC 801CE454 3E000724 */  addiu      $a3, $zero, 0x3E
    /* 454E0 801CE458 1D80053C */  lui        $a1, %hi(D_801D58DC)
    /* 454E4 801CE45C DC58A58C */  lw         $a1, %lo(D_801D58DC)($a1)
    /* 454E8 801CE460 38010224 */  addiu      $v0, $zero, 0x138
    /* 454EC 801CE464 1000A2AF */  sw         $v0, 0x10($sp)
    /* 454F0 801CE468 03000224 */  addiu      $v0, $zero, 0x3
    /* 454F4 801CE46C 2400A2AF */  sw         $v0, 0x24($sp)
    /* 454F8 801CE470 01000224 */  addiu      $v0, $zero, 0x1
    /* 454FC 801CE474 1400A0AF */  sw         $zero, 0x14($sp)
    /* 45500 801CE478 1800A0AF */  sw         $zero, 0x18($sp)
    /* 45504 801CE47C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 45508 801CE480 2000A0AF */  sw         $zero, 0x20($sp)
    /* 4550C 801CE484 2800A0AF */  sw         $zero, 0x28($sp)
    /* 45510 801CE488 B850060C */  jal        func_801942E0
    /* 45514 801CE48C 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CE490:
    /* 45518 801CE490 02002232 */  andi       $v0, $s1, 0x2
    /* 4551C 801CE494 12004010 */  beqz       $v0, .L801CE4E0
    /* 45520 801CE498 01000424 */   addiu     $a0, $zero, 0x1
    /* 45524 801CE49C 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 45528 801CE4A0 F8FF0724 */  addiu      $a3, $zero, -0x8
    /* 4552C 801CE4A4 1D80053C */  lui        $a1, %hi(D_801D58DC)
    /* 45530 801CE4A8 DC58A58C */  lw         $a1, %lo(D_801D58DC)($a1)
    /* 45534 801CE4AC 38010224 */  addiu      $v0, $zero, 0x138
    /* 45538 801CE4B0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 4553C 801CE4B4 03000224 */  addiu      $v0, $zero, 0x3
    /* 45540 801CE4B8 1400A2AF */  sw         $v0, 0x14($sp)
    /* 45544 801CE4BC 0C000224 */  addiu      $v0, $zero, 0xC
    /* 45548 801CE4C0 2400A2AF */  sw         $v0, 0x24($sp)
    /* 4554C 801CE4C4 01000224 */  addiu      $v0, $zero, 0x1
    /* 45550 801CE4C8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 45554 801CE4CC 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 45558 801CE4D0 2000A0AF */  sw         $zero, 0x20($sp)
    /* 4555C 801CE4D4 2800A0AF */  sw         $zero, 0x28($sp)
    /* 45560 801CE4D8 B850060C */  jal        func_801942E0
    /* 45564 801CE4DC 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CE4E0:
    /* 45568 801CE4E0 8D3D0708 */  j          .L801CF634
    /* 4556C 801CE4E4 70000224 */   addiu     $v0, $zero, 0x70
  .L801CE4E8:
    /* 45570 801CE4E8 1180013C */  lui        $at, %hi(D_80108666)
    /* 45574 801CE4EC 668620A0 */  sb         $zero, %lo(D_80108666)($at)
    /* 45578 801CE4F0 FF00A232 */  andi       $v0, $s5, 0xFF
    /* 4557C 801CE4F4 04004014 */  bnez       $v0, .L801CE508
    /* 45580 801CE4F8 08001024 */   addiu     $s0, $zero, 0x8
    /* 45584 801CE4FC 0F001024 */  addiu      $s0, $zero, 0xF
    /* 45588 801CE500 43390708 */  j          .L801CE50C
    /* 4558C 801CE504 A0000224 */   addiu     $v0, $zero, 0xA0
  .L801CE508:
    /* 45590 801CE508 B0000224 */  addiu      $v0, $zero, 0xB0
  .L801CE50C:
    /* 45594 801CE50C 1E80013C */  lui        $at, %hi(D_801DA055)
    /* 45598 801CE510 55A022A0 */  sb         $v0, %lo(D_801DA055)($at)
    /* 4559C 801CE514 01002232 */  andi       $v0, $s1, 0x1
    /* 455A0 801CE518 13004010 */  beqz       $v0, .L801CE568
    /* 455A4 801CE51C 21200000 */   addu      $a0, $zero, $zero
    /* 455A8 801CE520 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 455AC 801CE524 38010224 */  addiu      $v0, $zero, 0x138
    /* 455B0 801CE528 1000A2AF */  sw         $v0, 0x10($sp)
    /* 455B4 801CE52C 03000224 */  addiu      $v0, $zero, 0x3
    /* 455B8 801CE530 2400A2AF */  sw         $v0, 0x24($sp)
    /* 455BC 801CE534 01000224 */  addiu      $v0, $zero, 0x1
    /* 455C0 801CE538 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 455C4 801CE53C 80101000 */  sll        $v0, $s0, 2
    /* 455C8 801CE540 1400A0AF */  sw         $zero, 0x14($sp)
    /* 455CC 801CE544 1800A0AF */  sw         $zero, 0x18($sp)
    /* 455D0 801CE548 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 455D4 801CE54C 2000A0AF */  sw         $zero, 0x20($sp)
    /* 455D8 801CE550 2800A0AF */  sw         $zero, 0x28($sp)
    /* 455DC 801CE554 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 455E0 801CE558 21082200 */  addu       $at, $at, $v0
    /* 455E4 801CE55C C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 455E8 801CE560 B850060C */  jal        func_801942E0
    /* 455EC 801CE564 3E000724 */   addiu     $a3, $zero, 0x3E
  .L801CE568:
    /* 455F0 801CE568 02002232 */  andi       $v0, $s1, 0x2
    /* 455F4 801CE56C 14004010 */  beqz       $v0, .L801CE5C0
    /* 455F8 801CE570 01000424 */   addiu     $a0, $zero, 0x1
    /* 455FC 801CE574 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 45600 801CE578 38010224 */  addiu      $v0, $zero, 0x138
    /* 45604 801CE57C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 45608 801CE580 03000224 */  addiu      $v0, $zero, 0x3
    /* 4560C 801CE584 1400A2AF */  sw         $v0, 0x14($sp)
    /* 45610 801CE588 0C000224 */  addiu      $v0, $zero, 0xC
    /* 45614 801CE58C 2400A2AF */  sw         $v0, 0x24($sp)
    /* 45618 801CE590 01000224 */  addiu      $v0, $zero, 0x1
    /* 4561C 801CE594 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 45620 801CE598 80101000 */  sll        $v0, $s0, 2
    /* 45624 801CE59C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 45628 801CE5A0 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 4562C 801CE5A4 2000A0AF */  sw         $zero, 0x20($sp)
    /* 45630 801CE5A8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 45634 801CE5AC 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 45638 801CE5B0 21082200 */  addu       $at, $at, $v0
    /* 4563C 801CE5B4 C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 45640 801CE5B8 B850060C */  jal        func_801942E0
    /* 45644 801CE5BC F8FF0724 */   addiu     $a3, $zero, -0x8
  .L801CE5C0:
    /* 45648 801CE5C0 8F3D0708 */  j          .L801CF63C
    /* 4564C 801CE5C4 940280A6 */   sh        $zero, (0x1F800294 & 0xFFFF)($s4)
  .L801CE5C8:
    /* 45650 801CE5C8 1180023C */  lui        $v0, %hi(D_8010865C)
    /* 45654 801CE5CC 5C864290 */  lbu        $v0, %lo(D_8010865C)($v0)
    /* 45658 801CE5D0 00000000 */  nop
    /* 4565C 801CE5D4 44024010 */  beqz       $v0, .L801CEEE8
    /* 45660 801CE5D8 08004230 */   andi      $v0, $v0, 0x8
    /* 45664 801CE5DC 15044010 */  beqz       $v0, .L801CF634
    /* 45668 801CE5E0 40000224 */   addiu     $v0, $zero, 0x40
    /* 4566C 801CE5E4 1D80103C */  lui        $s0, %hi(D_801D59E8)
    /* 45670 801CE5E8 E8591026 */  addiu      $s0, $s0, %lo(D_801D59E8)
  .L801CE5EC:
    /* 45674 801CE5EC 1E80053C */  lui        $a1, %hi(D_801DA2C8)
    /* 45678 801CE5F0 C8A2A524 */  addiu      $a1, $a1, %lo(D_801DA2C8)
    /* 4567C 801CE5F4 B2B3020C */  jal        func_800ACEC8
    /* 45680 801CE5F8 21200002 */   addu      $a0, $s0, $zero
    /* 45684 801CE5FC 0D044010 */  beqz       $v0, .L801CF634
    /* 45688 801CE600 40000224 */   addiu     $v0, $zero, 0x40
    /* 4568C 801CE604 BAB3020C */  jal        func_800ACEE8
    /* 45690 801CE608 21200002 */   addu      $a0, $s0, $zero
    /* 45694 801CE60C 7B390708 */  j          .L801CE5EC
    /* 45698 801CE610 00000000 */   nop
  .L801CE614:
    /* 4569C 801CE614 1D80023C */  lui        $v0, %hi(D_801D5D68)
    /* 456A0 801CE618 685D4290 */  lbu        $v0, %lo(D_801D5D68)($v0)
    /* 456A4 801CE61C 01001124 */  addiu      $s1, $zero, 0x1
    /* 456A8 801CE620 02005114 */  bne        $v0, $s1, .L801CE62C
    /* 456AC 801CE624 05001024 */   addiu     $s0, $zero, 0x5
    /* 456B0 801CE628 1A001024 */  addiu      $s0, $zero, 0x1A
  .L801CE62C:
    /* 456B4 801CE62C 01004232 */  andi       $v0, $s2, 0x1
    /* 456B8 801CE630 12004010 */  beqz       $v0, .L801CE67C
    /* 456BC 801CE634 21200000 */   addu      $a0, $zero, $zero
    /* 456C0 801CE638 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 456C4 801CE63C 38010224 */  addiu      $v0, $zero, 0x138
    /* 456C8 801CE640 1000A2AF */  sw         $v0, 0x10($sp)
    /* 456CC 801CE644 03000224 */  addiu      $v0, $zero, 0x3
    /* 456D0 801CE648 2400A2AF */  sw         $v0, 0x24($sp)
    /* 456D4 801CE64C 80101000 */  sll        $v0, $s0, 2
    /* 456D8 801CE650 1400A0AF */  sw         $zero, 0x14($sp)
    /* 456DC 801CE654 1800A0AF */  sw         $zero, 0x18($sp)
    /* 456E0 801CE658 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 456E4 801CE65C 2000A0AF */  sw         $zero, 0x20($sp)
    /* 456E8 801CE660 2800A0AF */  sw         $zero, 0x28($sp)
    /* 456EC 801CE664 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 456F0 801CE668 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 456F4 801CE66C 21082200 */  addu       $at, $at, $v0
    /* 456F8 801CE670 C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 456FC 801CE674 B850060C */  jal        func_801942E0
    /* 45700 801CE678 3E000724 */   addiu     $a3, $zero, 0x3E
  .L801CE67C:
    /* 45704 801CE67C 02004232 */  andi       $v0, $s2, 0x2
    /* 45708 801CE680 13004010 */  beqz       $v0, .L801CE6D0
    /* 4570C 801CE684 01000424 */   addiu     $a0, $zero, 0x1
    /* 45710 801CE688 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 45714 801CE68C 38010224 */  addiu      $v0, $zero, 0x138
    /* 45718 801CE690 1000A2AF */  sw         $v0, 0x10($sp)
    /* 4571C 801CE694 03000224 */  addiu      $v0, $zero, 0x3
    /* 45720 801CE698 1400A2AF */  sw         $v0, 0x14($sp)
    /* 45724 801CE69C 0C000224 */  addiu      $v0, $zero, 0xC
    /* 45728 801CE6A0 2400A2AF */  sw         $v0, 0x24($sp)
    /* 4572C 801CE6A4 80101000 */  sll        $v0, $s0, 2
    /* 45730 801CE6A8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 45734 801CE6AC 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 45738 801CE6B0 2000A0AF */  sw         $zero, 0x20($sp)
    /* 4573C 801CE6B4 2800A0AF */  sw         $zero, 0x28($sp)
    /* 45740 801CE6B8 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 45744 801CE6BC 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 45748 801CE6C0 21082200 */  addu       $at, $at, $v0
    /* 4574C 801CE6C4 C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 45750 801CE6C8 B850060C */  jal        func_801942E0
    /* 45754 801CE6CC F8FF0724 */   addiu     $a3, $zero, -0x8
  .L801CE6D0:
    /* 45758 801CE6D0 6D4A060C */  jal        func_801929B4
    /* 4575C 801CE6D4 21200000 */   addu      $a0, $zero, $zero
    /* 45760 801CE6D8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 45764 801CE6DC 2108E102 */  addu       $at, $s7, $at
    /* 45768 801CE6E0 148F2490 */  lbu        $a0, -0x70EC($at)
    /* 4576C 801CE6E4 3C42070C */  jal        func_801D08F0
    /* 45770 801CE6E8 00000000 */   nop
    /* 45774 801CE6EC 1E80013C */  lui        $at, %hi(D_801DADCC)
    /* 45778 801CE6F0 CCAD22AC */  sw         $v0, %lo(D_801DADCC)($at)
    /* 4577C 801CE6F4 50000224 */  addiu      $v0, $zero, 0x50
    /* 45780 801CE6F8 1E80013C */  lui        $at, %hi(D_801DA055)
    /* 45784 801CE6FC 55A022A0 */  sb         $v0, %lo(D_801DA055)($at)
    /* 45788 801CE700 1D80013C */  lui        $at, %hi(D_801D5A48)
    /* 4578C 801CE704 485A20AC */  sw         $zero, %lo(D_801D5A48)($at)
    /* 45790 801CE708 903D0708 */  j          .L801CF640
    /* 45794 801CE70C 01000224 */   addiu     $v0, $zero, 0x1
  .L801CE710:
    /* 45798 801CE710 1D80023C */  lui        $v0, %hi(D_801D5A48)
    /* 4579C 801CE714 485A428C */  lw         $v0, %lo(D_801D5A48)($v0)
    /* 457A0 801CE718 00000000 */  nop
    /* 457A4 801CE71C 01004224 */  addiu      $v0, $v0, 0x1
    /* 457A8 801CE720 1D80013C */  lui        $at, %hi(D_801D5A48)
    /* 457AC 801CE724 485A22AC */  sw         $v0, %lo(D_801D5A48)($at)
    /* 457B0 801CE728 463E070C */  jal        func_801CF918
    /* 457B4 801CE72C 00000000 */   nop
    /* 457B8 801CE730 03004324 */  addiu      $v1, $v0, 0x3
    /* 457BC 801CE734 0500622C */  sltiu      $v0, $v1, 0x5
    /* 457C0 801CE738 0D004010 */  beqz       $v0, .L801CE770
    /* 457C4 801CE73C 80100300 */   sll       $v0, $v1, 2
    /* 457C8 801CE740 1980013C */  lui        $at, %hi(jtbl_8018DAB0)
    /* 457CC 801CE744 21082200 */  addu       $at, $at, $v0
    /* 457D0 801CE748 B0DA228C */  lw         $v0, %lo(jtbl_8018DAB0)($at)
    /* 457D4 801CE74C 00000000 */  nop
    /* 457D8 801CE750 08004000 */  jr         $v0
    /* 457DC 801CE754 00000000 */   nop
  jlabel .L801CE758
    /* 457E0 801CE758 6D4A060C */  jal        func_801929B4
    /* 457E4 801CE75C 21200000 */   addu      $a0, $zero, $zero
    /* 457E8 801CE760 1E80023C */  lui        $v0, %hi(D_801DA055)
    /* 457EC 801CE764 55A04290 */  lbu        $v0, %lo(D_801DA055)($v0)
    /* 457F0 801CE768 5B3A0708 */  j          .L801CE96C
    /* 457F4 801CE76C 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801CE770
    /* 457F8 801CE770 88AD020C */  jal        func_800AB620
    /* 457FC 801CE774 12050424 */   addiu     $a0, $zero, 0x512
    /* 45800 801CE778 01002232 */  andi       $v0, $s1, 0x1
    /* 45804 801CE77C 11004010 */  beqz       $v0, .L801CE7C4
    /* 45808 801CE780 21200000 */   addu      $a0, $zero, $zero
    /* 4580C 801CE784 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 45810 801CE788 3E000724 */  addiu      $a3, $zero, 0x3E
    /* 45814 801CE78C 1D80053C */  lui        $a1, %hi(D_801D58EC)
    /* 45818 801CE790 EC58A58C */  lw         $a1, %lo(D_801D58EC)($a1)
    /* 4581C 801CE794 38010224 */  addiu      $v0, $zero, 0x138
    /* 45820 801CE798 1000A2AF */  sw         $v0, 0x10($sp)
    /* 45824 801CE79C 03000224 */  addiu      $v0, $zero, 0x3
    /* 45828 801CE7A0 2400A2AF */  sw         $v0, 0x24($sp)
    /* 4582C 801CE7A4 01000224 */  addiu      $v0, $zero, 0x1
    /* 45830 801CE7A8 1400A0AF */  sw         $zero, 0x14($sp)
    /* 45834 801CE7AC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 45838 801CE7B0 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 4583C 801CE7B4 2000A0AF */  sw         $zero, 0x20($sp)
    /* 45840 801CE7B8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 45844 801CE7BC B850060C */  jal        func_801942E0
    /* 45848 801CE7C0 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CE7C4:
    /* 4584C 801CE7C4 02002232 */  andi       $v0, $s1, 0x2
    /* 45850 801CE7C8 12004010 */  beqz       $v0, .L801CE814
    /* 45854 801CE7CC 01000424 */   addiu     $a0, $zero, 0x1
    /* 45858 801CE7D0 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 4585C 801CE7D4 F8FF0724 */  addiu      $a3, $zero, -0x8
    /* 45860 801CE7D8 1D80053C */  lui        $a1, %hi(D_801D58EC)
    /* 45864 801CE7DC EC58A58C */  lw         $a1, %lo(D_801D58EC)($a1)
    /* 45868 801CE7E0 38010224 */  addiu      $v0, $zero, 0x138
    /* 4586C 801CE7E4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 45870 801CE7E8 03000224 */  addiu      $v0, $zero, 0x3
    /* 45874 801CE7EC 1400A2AF */  sw         $v0, 0x14($sp)
    /* 45878 801CE7F0 0C000224 */  addiu      $v0, $zero, 0xC
    /* 4587C 801CE7F4 2400A2AF */  sw         $v0, 0x24($sp)
    /* 45880 801CE7F8 01000224 */  addiu      $v0, $zero, 0x1
    /* 45884 801CE7FC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 45888 801CE800 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 4588C 801CE804 2000A0AF */  sw         $zero, 0x20($sp)
    /* 45890 801CE808 2800A0AF */  sw         $zero, 0x28($sp)
    /* 45894 801CE80C B850060C */  jal        func_801942E0
    /* 45898 801CE810 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CE814:
    /* 4589C 801CE814 5B3A0708 */  j          .L801CE96C
    /* 458A0 801CE818 B0000224 */   addiu     $v0, $zero, 0xB0
  jlabel .L801CE81C
    /* 458A4 801CE81C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 458A8 801CE820 2108E102 */  addu       $at, $s7, $at
    /* 458AC 801CE824 1E8F20A0 */  sb         $zero, -0x70E2($at)
    /* 458B0 801CE828 01002232 */  andi       $v0, $s1, 0x1
    /* 458B4 801CE82C 11004010 */  beqz       $v0, .L801CE874
    /* 458B8 801CE830 21200000 */   addu      $a0, $zero, $zero
    /* 458BC 801CE834 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 458C0 801CE838 3E000724 */  addiu      $a3, $zero, 0x3E
    /* 458C4 801CE83C 1D80053C */  lui        $a1, %hi(D_801D58E4)
    /* 458C8 801CE840 E458A58C */  lw         $a1, %lo(D_801D58E4)($a1)
    /* 458CC 801CE844 38010224 */  addiu      $v0, $zero, 0x138
    /* 458D0 801CE848 1000A2AF */  sw         $v0, 0x10($sp)
    /* 458D4 801CE84C 03000224 */  addiu      $v0, $zero, 0x3
    /* 458D8 801CE850 2400A2AF */  sw         $v0, 0x24($sp)
    /* 458DC 801CE854 01000224 */  addiu      $v0, $zero, 0x1
    /* 458E0 801CE858 1400A0AF */  sw         $zero, 0x14($sp)
    /* 458E4 801CE85C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 458E8 801CE860 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 458EC 801CE864 2000A0AF */  sw         $zero, 0x20($sp)
    /* 458F0 801CE868 2800A0AF */  sw         $zero, 0x28($sp)
    /* 458F4 801CE86C B850060C */  jal        func_801942E0
    /* 458F8 801CE870 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CE874:
    /* 458FC 801CE874 02002232 */  andi       $v0, $s1, 0x2
    /* 45900 801CE878 12004010 */  beqz       $v0, .L801CE8C4
    /* 45904 801CE87C 01000424 */   addiu     $a0, $zero, 0x1
    /* 45908 801CE880 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 4590C 801CE884 F8FF0724 */  addiu      $a3, $zero, -0x8
    /* 45910 801CE888 1D80053C */  lui        $a1, %hi(D_801D58E4)
    /* 45914 801CE88C E458A58C */  lw         $a1, %lo(D_801D58E4)($a1)
    /* 45918 801CE890 38010224 */  addiu      $v0, $zero, 0x138
    /* 4591C 801CE894 1000A2AF */  sw         $v0, 0x10($sp)
    /* 45920 801CE898 03000224 */  addiu      $v0, $zero, 0x3
    /* 45924 801CE89C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 45928 801CE8A0 0C000224 */  addiu      $v0, $zero, 0xC
    /* 4592C 801CE8A4 2400A2AF */  sw         $v0, 0x24($sp)
    /* 45930 801CE8A8 01000224 */  addiu      $v0, $zero, 0x1
    /* 45934 801CE8AC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 45938 801CE8B0 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 4593C 801CE8B4 2000A0AF */  sw         $zero, 0x20($sp)
    /* 45940 801CE8B8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 45944 801CE8BC B850060C */  jal        func_801942E0
    /* 45948 801CE8C0 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CE8C4:
    /* 4594C 801CE8C4 5B3A0708 */  j          .L801CE96C
    /* 45950 801CE8C8 B0000224 */   addiu     $v0, $zero, 0xB0
  jlabel .L801CE8CC
    /* 45954 801CE8CC 01002232 */  andi       $v0, $s1, 0x1
    /* 45958 801CE8D0 11004010 */  beqz       $v0, .L801CE918
    /* 4595C 801CE8D4 21200000 */   addu      $a0, $zero, $zero
    /* 45960 801CE8D8 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 45964 801CE8DC 3E000724 */  addiu      $a3, $zero, 0x3E
    /* 45968 801CE8E0 1D80053C */  lui        $a1, %hi(D_801D58DC)
    /* 4596C 801CE8E4 DC58A58C */  lw         $a1, %lo(D_801D58DC)($a1)
    /* 45970 801CE8E8 38010224 */  addiu      $v0, $zero, 0x138
    /* 45974 801CE8EC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 45978 801CE8F0 03000224 */  addiu      $v0, $zero, 0x3
    /* 4597C 801CE8F4 2400A2AF */  sw         $v0, 0x24($sp)
    /* 45980 801CE8F8 01000224 */  addiu      $v0, $zero, 0x1
    /* 45984 801CE8FC 1400A0AF */  sw         $zero, 0x14($sp)
    /* 45988 801CE900 1800A0AF */  sw         $zero, 0x18($sp)
    /* 4598C 801CE904 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 45990 801CE908 2000A0AF */  sw         $zero, 0x20($sp)
    /* 45994 801CE90C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 45998 801CE910 B850060C */  jal        func_801942E0
    /* 4599C 801CE914 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CE918:
    /* 459A0 801CE918 02002232 */  andi       $v0, $s1, 0x2
    /* 459A4 801CE91C 12004010 */  beqz       $v0, .L801CE968
    /* 459A8 801CE920 01000424 */   addiu     $a0, $zero, 0x1
    /* 459AC 801CE924 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 459B0 801CE928 F8FF0724 */  addiu      $a3, $zero, -0x8
    /* 459B4 801CE92C 1D80053C */  lui        $a1, %hi(D_801D58DC)
    /* 459B8 801CE930 DC58A58C */  lw         $a1, %lo(D_801D58DC)($a1)
    /* 459BC 801CE934 38010224 */  addiu      $v0, $zero, 0x138
    /* 459C0 801CE938 1000A2AF */  sw         $v0, 0x10($sp)
    /* 459C4 801CE93C 03000224 */  addiu      $v0, $zero, 0x3
    /* 459C8 801CE940 1400A2AF */  sw         $v0, 0x14($sp)
    /* 459CC 801CE944 0C000224 */  addiu      $v0, $zero, 0xC
    /* 459D0 801CE948 2400A2AF */  sw         $v0, 0x24($sp)
    /* 459D4 801CE94C 01000224 */  addiu      $v0, $zero, 0x1
    /* 459D8 801CE950 1800A0AF */  sw         $zero, 0x18($sp)
    /* 459DC 801CE954 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 459E0 801CE958 2000A0AF */  sw         $zero, 0x20($sp)
    /* 459E4 801CE95C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 459E8 801CE960 B850060C */  jal        func_801942E0
    /* 459EC 801CE964 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CE968:
    /* 459F0 801CE968 70000224 */  addiu      $v0, $zero, 0x70
  .L801CE96C:
    /* 459F4 801CE96C 1E80013C */  lui        $at, %hi(D_801DA055)
    /* 459F8 801CE970 55A022A0 */  sb         $v0, %lo(D_801DA055)($at)
  jlabel .L801CE974
    /* 459FC 801CE974 1E80023C */  lui        $v0, %hi(D_801DA055)
    /* 45A00 801CE978 55A04290 */  lbu        $v0, %lo(D_801DA055)($v0)
    /* 45A04 801CE97C 00000000 */  nop
    /* 45A08 801CE980 B0FF4224 */  addiu      $v0, $v0, -0x50
    /* 45A0C 801CE984 0200422C */  sltiu      $v0, $v0, 0x2
    /* 45A10 801CE988 2D034014 */  bnez       $v0, .L801CF640
    /* 45A14 801CE98C 01000224 */   addiu     $v0, $zero, 0x1
    /* 45A18 801CE990 1D80013C */  lui        $at, %hi(D_801D5A48)
    /* 45A1C 801CE994 485A20AC */  sw         $zero, %lo(D_801D5A48)($at)
    /* 45A20 801CE998 903D0708 */  j          .L801CF640
    /* 45A24 801CE99C 00000000 */   nop
  .L801CE9A0:
    /* 45A28 801CE9A0 1D80023C */  lui        $v0, %hi(D_801D5A48)
    /* 45A2C 801CE9A4 485A428C */  lw         $v0, %lo(D_801D5A48)($v0)
    /* 45A30 801CE9A8 00000000 */  nop
    /* 45A34 801CE9AC 01004224 */  addiu      $v0, $v0, 0x1
    /* 45A38 801CE9B0 1D80013C */  lui        $at, %hi(D_801D5A48)
    /* 45A3C 801CE9B4 485A22AC */  sw         $v0, %lo(D_801D5A48)($at)
    /* 45A40 801CE9B8 D83D070C */  jal        func_801CF760
    /* 45A44 801CE9BC 01000424 */   addiu     $a0, $zero, 0x1
    /* 45A48 801CE9C0 21804000 */  addu       $s0, $v0, $zero
    /* 45A4C 801CE9C4 04000326 */  addiu      $v1, $s0, 0x4
    /* 45A50 801CE9C8 0600622C */  sltiu      $v0, $v1, 0x6
    /* 45A54 801CE9CC 0B004010 */  beqz       $v0, .L801CE9FC
    /* 45A58 801CE9D0 80100300 */   sll       $v0, $v1, 2
    /* 45A5C 801CE9D4 1980013C */  lui        $at, %hi(jtbl_8018DAC8)
    /* 45A60 801CE9D8 21082200 */  addu       $at, $at, $v0
    /* 45A64 801CE9DC C8DA228C */  lw         $v0, %lo(jtbl_8018DAC8)($at)
    /* 45A68 801CE9E0 00000000 */  nop
    /* 45A6C 801CE9E4 08004000 */  jr         $v0
    /* 45A70 801CE9E8 00000000 */   nop
  jlabel .L801CE9EC
    /* 45A74 801CE9EC 1E80013C */  lui        $at, %hi(D_801DA055)
    /* 45A78 801CE9F0 55A020A0 */  sb         $zero, %lo(D_801DA055)($at)
    /* 45A7C 801CE9F4 DE3A0708 */  j          .L801CEB78
    /* 45A80 801CE9F8 01001624 */   addiu     $s6, $zero, 0x1
  jlabel .L801CE9FC
    /* 45A84 801CE9FC 88AD020C */  jal        func_800AB620
    /* 45A88 801CEA00 12050424 */   addiu     $a0, $zero, 0x512
    /* 45A8C 801CEA04 FCFF0224 */  addiu      $v0, $zero, -0x4
    /* 45A90 801CEA08 02000216 */  bne        $s0, $v0, .L801CEA14
    /* 45A94 801CEA0C 0A001024 */   addiu     $s0, $zero, 0xA
    /* 45A98 801CEA10 25001024 */  addiu      $s0, $zero, 0x25
  .L801CEA14:
    /* 45A9C 801CEA14 01002232 */  andi       $v0, $s1, 0x1
    /* 45AA0 801CEA18 13004010 */  beqz       $v0, .L801CEA68
    /* 45AA4 801CEA1C 21200000 */   addu      $a0, $zero, $zero
    /* 45AA8 801CEA20 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 45AAC 801CEA24 38010224 */  addiu      $v0, $zero, 0x138
    /* 45AB0 801CEA28 1000A2AF */  sw         $v0, 0x10($sp)
    /* 45AB4 801CEA2C 03000224 */  addiu      $v0, $zero, 0x3
    /* 45AB8 801CEA30 2400A2AF */  sw         $v0, 0x24($sp)
    /* 45ABC 801CEA34 01000224 */  addiu      $v0, $zero, 0x1
    /* 45AC0 801CEA38 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 45AC4 801CEA3C 80101000 */  sll        $v0, $s0, 2
    /* 45AC8 801CEA40 1400A0AF */  sw         $zero, 0x14($sp)
    /* 45ACC 801CEA44 1800A0AF */  sw         $zero, 0x18($sp)
    /* 45AD0 801CEA48 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 45AD4 801CEA4C 2000A0AF */  sw         $zero, 0x20($sp)
    /* 45AD8 801CEA50 2800A0AF */  sw         $zero, 0x28($sp)
    /* 45ADC 801CEA54 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 45AE0 801CEA58 21082200 */  addu       $at, $at, $v0
    /* 45AE4 801CEA5C C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 45AE8 801CEA60 B850060C */  jal        func_801942E0
    /* 45AEC 801CEA64 3E000724 */   addiu     $a3, $zero, 0x3E
  .L801CEA68:
    /* 45AF0 801CEA68 02002232 */  andi       $v0, $s1, 0x2
    /* 45AF4 801CEA6C 3F004010 */  beqz       $v0, .L801CEB6C
    /* 45AF8 801CEA70 01000424 */   addiu     $a0, $zero, 0x1
    /* 45AFC 801CEA74 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 45B00 801CEA78 38010224 */  addiu      $v0, $zero, 0x138
    /* 45B04 801CEA7C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 45B08 801CEA80 03000224 */  addiu      $v0, $zero, 0x3
    /* 45B0C 801CEA84 1400A2AF */  sw         $v0, 0x14($sp)
    /* 45B10 801CEA88 0C000224 */  addiu      $v0, $zero, 0xC
    /* 45B14 801CEA8C 2400A2AF */  sw         $v0, 0x24($sp)
    /* 45B18 801CEA90 01000224 */  addiu      $v0, $zero, 0x1
    /* 45B1C 801CEA94 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 45B20 801CEA98 80101000 */  sll        $v0, $s0, 2
    /* 45B24 801CEA9C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 45B28 801CEAA0 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 45B2C 801CEAA4 2000A0AF */  sw         $zero, 0x20($sp)
    /* 45B30 801CEAA8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 45B34 801CEAAC 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 45B38 801CEAB0 21082200 */  addu       $at, $at, $v0
    /* 45B3C 801CEAB4 C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 45B40 801CEAB8 D93A0708 */  j          .L801CEB64
    /* 45B44 801CEABC F8FF0724 */   addiu     $a3, $zero, -0x8
  jlabel .L801CEAC0
    /* 45B48 801CEAC0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 45B4C 801CEAC4 2108E102 */  addu       $at, $s7, $at
    /* 45B50 801CEAC8 1E8F20A0 */  sb         $zero, -0x70E2($at)
    /* 45B54 801CEACC 01002232 */  andi       $v0, $s1, 0x1
    /* 45B58 801CEAD0 11004010 */  beqz       $v0, .L801CEB18
    /* 45B5C 801CEAD4 21200000 */   addu      $a0, $zero, $zero
    /* 45B60 801CEAD8 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 45B64 801CEADC 3E000724 */  addiu      $a3, $zero, 0x3E
    /* 45B68 801CEAE0 1D80053C */  lui        $a1, %hi(D_801D58E4)
    /* 45B6C 801CEAE4 E458A58C */  lw         $a1, %lo(D_801D58E4)($a1)
    /* 45B70 801CEAE8 38010224 */  addiu      $v0, $zero, 0x138
    /* 45B74 801CEAEC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 45B78 801CEAF0 03000224 */  addiu      $v0, $zero, 0x3
    /* 45B7C 801CEAF4 2400A2AF */  sw         $v0, 0x24($sp)
    /* 45B80 801CEAF8 01000224 */  addiu      $v0, $zero, 0x1
    /* 45B84 801CEAFC 1400A0AF */  sw         $zero, 0x14($sp)
    /* 45B88 801CEB00 1800A0AF */  sw         $zero, 0x18($sp)
    /* 45B8C 801CEB04 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 45B90 801CEB08 2000A0AF */  sw         $zero, 0x20($sp)
    /* 45B94 801CEB0C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 45B98 801CEB10 B850060C */  jal        func_801942E0
    /* 45B9C 801CEB14 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CEB18:
    /* 45BA0 801CEB18 02002232 */  andi       $v0, $s1, 0x2
    /* 45BA4 801CEB1C 13004010 */  beqz       $v0, .L801CEB6C
    /* 45BA8 801CEB20 01000424 */   addiu     $a0, $zero, 0x1
    /* 45BAC 801CEB24 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 45BB0 801CEB28 F8FF0724 */  addiu      $a3, $zero, -0x8
    /* 45BB4 801CEB2C 1D80053C */  lui        $a1, %hi(D_801D58E4)
    /* 45BB8 801CEB30 E458A58C */  lw         $a1, %lo(D_801D58E4)($a1)
    /* 45BBC 801CEB34 38010224 */  addiu      $v0, $zero, 0x138
    /* 45BC0 801CEB38 1000A2AF */  sw         $v0, 0x10($sp)
    /* 45BC4 801CEB3C 03000224 */  addiu      $v0, $zero, 0x3
    /* 45BC8 801CEB40 1400A2AF */  sw         $v0, 0x14($sp)
    /* 45BCC 801CEB44 0C000224 */  addiu      $v0, $zero, 0xC
    /* 45BD0 801CEB48 2400A2AF */  sw         $v0, 0x24($sp)
    /* 45BD4 801CEB4C 01000224 */  addiu      $v0, $zero, 0x1
    /* 45BD8 801CEB50 1800A0AF */  sw         $zero, 0x18($sp)
    /* 45BDC 801CEB54 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 45BE0 801CEB58 2000A0AF */  sw         $zero, 0x20($sp)
    /* 45BE4 801CEB5C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 45BE8 801CEB60 2C00A2AF */  sw         $v0, 0x2C($sp)
  .L801CEB64:
    /* 45BEC 801CEB64 B850060C */  jal        func_801942E0
    /* 45BF0 801CEB68 00000000 */   nop
  .L801CEB6C:
    /* 45BF4 801CEB6C B0000224 */  addiu      $v0, $zero, 0xB0
    /* 45BF8 801CEB70 1E80013C */  lui        $at, %hi(D_801DA055)
    /* 45BFC 801CEB74 55A022A0 */  sb         $v0, %lo(D_801DA055)($at)
  jlabel .L801CEB78
    /* 45C00 801CEB78 1E80033C */  lui        $v1, %hi(D_801DA055)
    /* 45C04 801CEB7C 55A06390 */  lbu        $v1, %lo(D_801DA055)($v1)
    /* 45C08 801CEB80 51000224 */  addiu      $v0, $zero, 0x51
    /* 45C0C 801CEB84 AE026210 */  beq        $v1, $v0, .L801CF640
    /* 45C10 801CEB88 01000224 */   addiu     $v0, $zero, 0x1
    /* 45C14 801CEB8C 1D80013C */  lui        $at, %hi(D_801D5A48)
    /* 45C18 801CEB90 485A20AC */  sw         $zero, %lo(D_801D5A48)($at)
    /* 45C1C 801CEB94 903D0708 */  j          .L801CF640
    /* 45C20 801CEB98 00000000 */   nop
  .L801CEB9C:
    /* 45C24 801CEB9C 6549060C */  jal        func_80192594
    /* 45C28 801CEBA0 21200000 */   addu      $a0, $zero, $zero
  .L801CEBA4:
    /* 45C2C 801CEBA4 C849060C */  jal        func_80192720
    /* 45C30 801CEBA8 21200000 */   addu      $a0, $zero, $zero
    /* 45C34 801CEBAC FDFF4010 */  beqz       $v0, .L801CEBA4
    /* 45C38 801CEBB0 80000224 */   addiu     $v0, $zero, 0x80
    /* 45C3C 801CEBB4 8D3D0708 */  j          .L801CF634
    /* 45C40 801CEBB8 00000000 */   nop
  .L801CEBBC:
    /* 45C44 801CEBBC 214E060C */  jal        func_80193884
    /* 45C48 801CEBC0 00000000 */   nop
    /* 45C4C 801CEBC4 29004010 */  beqz       $v0, .L801CEC6C
    /* 45C50 801CEBC8 01004232 */   andi      $v0, $s2, 0x1
    /* 45C54 801CEBCC 11004010 */  beqz       $v0, .L801CEC14
    /* 45C58 801CEBD0 21200000 */   addu      $a0, $zero, $zero
    /* 45C5C 801CEBD4 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 45C60 801CEBD8 3E000724 */  addiu      $a3, $zero, 0x3E
    /* 45C64 801CEBDC 1D80053C */  lui        $a1, %hi(D_801D58E4)
    /* 45C68 801CEBE0 E458A58C */  lw         $a1, %lo(D_801D58E4)($a1)
    /* 45C6C 801CEBE4 38010224 */  addiu      $v0, $zero, 0x138
    /* 45C70 801CEBE8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 45C74 801CEBEC 03000224 */  addiu      $v0, $zero, 0x3
    /* 45C78 801CEBF0 2400A2AF */  sw         $v0, 0x24($sp)
    /* 45C7C 801CEBF4 01000224 */  addiu      $v0, $zero, 0x1
    /* 45C80 801CEBF8 1400A0AF */  sw         $zero, 0x14($sp)
    /* 45C84 801CEBFC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 45C88 801CEC00 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 45C8C 801CEC04 2000A0AF */  sw         $zero, 0x20($sp)
    /* 45C90 801CEC08 2800A0AF */  sw         $zero, 0x28($sp)
    /* 45C94 801CEC0C B850060C */  jal        func_801942E0
    /* 45C98 801CEC10 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CEC14:
    /* 45C9C 801CEC14 02004232 */  andi       $v0, $s2, 0x2
    /* 45CA0 801CEC18 12004010 */  beqz       $v0, .L801CEC64
    /* 45CA4 801CEC1C 01000424 */   addiu     $a0, $zero, 0x1
    /* 45CA8 801CEC20 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 45CAC 801CEC24 F8FF0724 */  addiu      $a3, $zero, -0x8
    /* 45CB0 801CEC28 1D80053C */  lui        $a1, %hi(D_801D58E4)
    /* 45CB4 801CEC2C E458A58C */  lw         $a1, %lo(D_801D58E4)($a1)
    /* 45CB8 801CEC30 38010224 */  addiu      $v0, $zero, 0x138
    /* 45CBC 801CEC34 1000A2AF */  sw         $v0, 0x10($sp)
    /* 45CC0 801CEC38 03000224 */  addiu      $v0, $zero, 0x3
    /* 45CC4 801CEC3C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 45CC8 801CEC40 0C000224 */  addiu      $v0, $zero, 0xC
    /* 45CCC 801CEC44 2400A2AF */  sw         $v0, 0x24($sp)
    /* 45CD0 801CEC48 01000224 */  addiu      $v0, $zero, 0x1
    /* 45CD4 801CEC4C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 45CD8 801CEC50 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 45CDC 801CEC54 2000A0AF */  sw         $zero, 0x20($sp)
    /* 45CE0 801CEC58 2800A0AF */  sw         $zero, 0x28($sp)
    /* 45CE4 801CEC5C B850060C */  jal        func_801942E0
    /* 45CE8 801CEC60 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CEC64:
    /* 45CEC 801CEC64 8D3D0708 */  j          .L801CF634
    /* 45CF0 801CEC68 B0000224 */   addiu     $v0, $zero, 0xB0
  .L801CEC6C:
    /* 45CF4 801CEC6C 801F033C */  lui        $v1, (0x1F800234 >> 16)
    /* 45CF8 801CEC70 34026394 */  lhu        $v1, (0x1F800234 & 0xFFFF)($v1)
    /* 45CFC 801CEC74 00000000 */  nop
    /* 45D00 801CEC78 00086230 */  andi       $v0, $v1, 0x800
    /* 45D04 801CEC7C 2F004010 */  beqz       $v0, .L801CED3C
    /* 45D08 801CEC80 20006230 */   andi      $v0, $v1, 0x20
    /* 45D0C 801CEC84 88AD020C */  jal        func_800AB620
    /* 45D10 801CEC88 28050424 */   addiu     $a0, $zero, 0x528
    /* 45D14 801CEC8C 01004232 */  andi       $v0, $s2, 0x1
    /* 45D18 801CEC90 11004010 */  beqz       $v0, .L801CECD8
    /* 45D1C 801CEC94 21200000 */   addu      $a0, $zero, $zero
    /* 45D20 801CEC98 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 45D24 801CEC9C 3E000724 */  addiu      $a3, $zero, 0x3E
    /* 45D28 801CECA0 1D80053C */  lui        $a1, %hi(D_801D58E0)
    /* 45D2C 801CECA4 E058A58C */  lw         $a1, %lo(D_801D58E0)($a1)
    /* 45D30 801CECA8 38010224 */  addiu      $v0, $zero, 0x138
    /* 45D34 801CECAC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 45D38 801CECB0 03000224 */  addiu      $v0, $zero, 0x3
    /* 45D3C 801CECB4 2400A2AF */  sw         $v0, 0x24($sp)
    /* 45D40 801CECB8 01000224 */  addiu      $v0, $zero, 0x1
    /* 45D44 801CECBC 1400A0AF */  sw         $zero, 0x14($sp)
    /* 45D48 801CECC0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 45D4C 801CECC4 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 45D50 801CECC8 2000A0AF */  sw         $zero, 0x20($sp)
    /* 45D54 801CECCC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 45D58 801CECD0 B850060C */  jal        func_801942E0
    /* 45D5C 801CECD4 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CECD8:
    /* 45D60 801CECD8 02004232 */  andi       $v0, $s2, 0x2
    /* 45D64 801CECDC 12004010 */  beqz       $v0, .L801CED28
    /* 45D68 801CECE0 01000424 */   addiu     $a0, $zero, 0x1
    /* 45D6C 801CECE4 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 45D70 801CECE8 F8FF0724 */  addiu      $a3, $zero, -0x8
    /* 45D74 801CECEC 1D80053C */  lui        $a1, %hi(D_801D58E0)
    /* 45D78 801CECF0 E058A58C */  lw         $a1, %lo(D_801D58E0)($a1)
    /* 45D7C 801CECF4 38010224 */  addiu      $v0, $zero, 0x138
    /* 45D80 801CECF8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 45D84 801CECFC 03000224 */  addiu      $v0, $zero, 0x3
    /* 45D88 801CED00 1400A2AF */  sw         $v0, 0x14($sp)
    /* 45D8C 801CED04 0C000224 */  addiu      $v0, $zero, 0xC
    /* 45D90 801CED08 2400A2AF */  sw         $v0, 0x24($sp)
    /* 45D94 801CED0C 01000224 */  addiu      $v0, $zero, 0x1
    /* 45D98 801CED10 1800A0AF */  sw         $zero, 0x18($sp)
    /* 45D9C 801CED14 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 45DA0 801CED18 2000A0AF */  sw         $zero, 0x20($sp)
    /* 45DA4 801CED1C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 45DA8 801CED20 B850060C */  jal        func_801942E0
    /* 45DAC 801CED24 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CED28:
    /* 45DB0 801CED28 08000224 */  addiu      $v0, $zero, 0x8
    /* 45DB4 801CED2C 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 45DB8 801CED30 940222A4 */  sh         $v0, (0x1F800294 & 0xFFFF)($at)
    /* 45DBC 801CED34 8D3D0708 */  j          .L801CF634
    /* 45DC0 801CED38 90000224 */   addiu     $v0, $zero, 0x90
  .L801CED3C:
    /* 45DC4 801CED3C 05004010 */  beqz       $v0, .L801CED54
    /* 45DC8 801CED40 40006230 */   andi      $v0, $v1, 0x40
    /* 45DCC 801CED44 88AD020C */  jal        func_800AB620
    /* 45DD0 801CED48 28050424 */   addiu     $a0, $zero, 0x528
    /* 45DD4 801CED4C 8D3D0708 */  j          .L801CF634
    /* 45DD8 801CED50 10000224 */   addiu     $v0, $zero, 0x10
  .L801CED54:
    /* 45DDC 801CED54 3A024010 */  beqz       $v0, .L801CF640
    /* 45DE0 801CED58 01000224 */   addiu     $v0, $zero, 0x1
    /* 45DE4 801CED5C 88AD020C */  jal        func_800AB620
    /* 45DE8 801CED60 29050424 */   addiu     $a0, $zero, 0x529
    /* 45DEC 801CED64 FF00A232 */  andi       $v0, $s5, 0xFF
    /* 45DF0 801CED68 01001224 */  addiu      $s2, $zero, 0x1
    /* 45DF4 801CED6C FE015210 */  beq        $v0, $s2, .L801CF568
    /* 45DF8 801CED70 0B001024 */   addiu     $s0, $zero, 0xB
    /* 45DFC 801CED74 1D80023C */  lui        $v0, %hi(D_801D5D68)
    /* 45E00 801CED78 685D4290 */  lbu        $v0, %lo(D_801D5D68)($v0)
    /* 45E04 801CED7C 5F3D0708 */  j          .L801CF57C
    /* 45E08 801CED80 00000000 */   nop
  .L801CED84:
    /* 45E0C 801CED84 801F023C */  lui        $v0, (0x1F800294 >> 16)
    /* 45E10 801CED88 94024294 */  lhu        $v0, (0x1F800294 & 0xFFFF)($v0)
    /* 45E14 801CED8C 00000000 */  nop
    /* 45E18 801CED90 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 45E1C 801CED94 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 45E20 801CED98 940222A4 */  sh         $v0, (0x1F800294 & 0xFFFF)($at)
    /* 45E24 801CED9C FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 45E28 801CEDA0 27024014 */  bnez       $v0, .L801CF640
    /* 45E2C 801CEDA4 01000224 */   addiu     $v0, $zero, 0x1
    /* 45E30 801CEDA8 9317030C */  jal        func_800C5E4C
    /* 45E34 801CEDAC 21200000 */   addu      $a0, $zero, $zero
    /* 45E38 801CEDB0 01001024 */  addiu      $s0, $zero, 0x1
    /* 45E3C 801CEDB4 03005014 */  bne        $v0, $s0, .L801CEDC4
    /* 45E40 801CEDB8 01000324 */   addiu     $v1, $zero, 0x1
    /* 45E44 801CEDBC 8D3D0708 */  j          .L801CF634
    /* 45E48 801CEDC0 10000224 */   addiu     $v0, $zero, 0x10
  .L801CEDC4:
    /* 45E4C 801CEDC4 1D80023C */  lui        $v0, %hi(D_801D5A54)
    /* 45E50 801CEDC8 545A4290 */  lbu        $v0, %lo(D_801D5A54)($v0)
    /* 45E54 801CEDCC 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 45E58 801CEDD0 940223A4 */  sh         $v1, (0x1F800294 & 0xFFFF)($at)
    /* 45E5C 801CEDD4 01004224 */  addiu      $v0, $v0, 0x1
    /* 45E60 801CEDD8 1D80013C */  lui        $at, %hi(D_801D5A54)
    /* 45E64 801CEDDC 545A22A0 */  sb         $v0, %lo(D_801D5A54)($at)
    /* 45E68 801CEDE0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 45E6C 801CEDE4 0400422C */  sltiu      $v0, $v0, 0x4
    /* 45E70 801CEDE8 15024014 */  bnez       $v0, .L801CF640
    /* 45E74 801CEDEC 01000224 */   addiu     $v0, $zero, 0x1
    /* 45E78 801CEDF0 1D80013C */  lui        $at, %hi(D_801D5A54)
    /* 45E7C 801CEDF4 545A20A0 */  sb         $zero, %lo(D_801D5A54)($at)
    /* 45E80 801CEDF8 88AD020C */  jal        func_800AB620
    /* 45E84 801CEDFC 12050424 */   addiu     $a0, $zero, 0x512
    /* 45E88 801CEE00 01004232 */  andi       $v0, $s2, 0x1
    /* 45E8C 801CEE04 10004010 */  beqz       $v0, .L801CEE48
    /* 45E90 801CEE08 21200000 */   addu      $a0, $zero, $zero
    /* 45E94 801CEE0C 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 45E98 801CEE10 3E000724 */  addiu      $a3, $zero, 0x3E
    /* 45E9C 801CEE14 1D80053C */  lui        $a1, %hi(D_801D5964)
    /* 45EA0 801CEE18 6459A58C */  lw         $a1, %lo(D_801D5964)($a1)
    /* 45EA4 801CEE1C 38010224 */  addiu      $v0, $zero, 0x138
    /* 45EA8 801CEE20 1000A2AF */  sw         $v0, 0x10($sp)
    /* 45EAC 801CEE24 03000224 */  addiu      $v0, $zero, 0x3
    /* 45EB0 801CEE28 1400A0AF */  sw         $zero, 0x14($sp)
    /* 45EB4 801CEE2C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 45EB8 801CEE30 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 45EBC 801CEE34 2000A0AF */  sw         $zero, 0x20($sp)
    /* 45EC0 801CEE38 2400A2AF */  sw         $v0, 0x24($sp)
    /* 45EC4 801CEE3C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 45EC8 801CEE40 B850060C */  jal        func_801942E0
    /* 45ECC 801CEE44 2C00B0AF */   sw        $s0, 0x2C($sp)
  .L801CEE48:
    /* 45ED0 801CEE48 02004232 */  andi       $v0, $s2, 0x2
    /* 45ED4 801CEE4C 11004010 */  beqz       $v0, .L801CEE94
    /* 45ED8 801CEE50 01000424 */   addiu     $a0, $zero, 0x1
    /* 45EDC 801CEE54 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 45EE0 801CEE58 F8FF0724 */  addiu      $a3, $zero, -0x8
    /* 45EE4 801CEE5C 1D80053C */  lui        $a1, %hi(D_801D5964)
    /* 45EE8 801CEE60 6459A58C */  lw         $a1, %lo(D_801D5964)($a1)
    /* 45EEC 801CEE64 38010224 */  addiu      $v0, $zero, 0x138
    /* 45EF0 801CEE68 1000A2AF */  sw         $v0, 0x10($sp)
    /* 45EF4 801CEE6C 03000224 */  addiu      $v0, $zero, 0x3
    /* 45EF8 801CEE70 1400A2AF */  sw         $v0, 0x14($sp)
    /* 45EFC 801CEE74 0C000224 */  addiu      $v0, $zero, 0xC
    /* 45F00 801CEE78 1800A0AF */  sw         $zero, 0x18($sp)
    /* 45F04 801CEE7C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 45F08 801CEE80 2000A0AF */  sw         $zero, 0x20($sp)
    /* 45F0C 801CEE84 2400A2AF */  sw         $v0, 0x24($sp)
    /* 45F10 801CEE88 2800A0AF */  sw         $zero, 0x28($sp)
    /* 45F14 801CEE8C B850060C */  jal        func_801942E0
    /* 45F18 801CEE90 2C00B0AF */   sw        $s0, 0x2C($sp)
  .L801CEE94:
    /* 45F1C 801CEE94 1D80013C */  lui        $at, %hi(D_801D5A50)
    /* 45F20 801CEE98 505A30AC */  sw         $s0, %lo(D_801D5A50)($at)
    /* 45F24 801CEE9C 8D3D0708 */  j          .L801CF634
    /* 45F28 801CEEA0 B0000224 */   addiu     $v0, $zero, 0xB0
  .L801CEEA4:
    /* 45F2C 801CEEA4 06004010 */  beqz       $v0, .L801CEEC0
    /* 45F30 801CEEA8 00000000 */   nop
    /* 45F34 801CEEAC 88AD020C */  jal        func_800AB620
    /* 45F38 801CEEB0 28050424 */   addiu     $a0, $zero, 0x528
    /* 45F3C 801CEEB4 78000224 */  addiu      $v0, $zero, 0x78
    /* 45F40 801CEEB8 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 45F44 801CEEBC 940222A4 */  sh         $v0, (0x1F800294 & 0xFFFF)($at)
  .L801CEEC0:
    /* 45F48 801CEEC0 801F023C */  lui        $v0, (0x1F800294 >> 16)
    /* 45F4C 801CEEC4 94024294 */  lhu        $v0, (0x1F800294 & 0xFFFF)($v0)
    /* 45F50 801CEEC8 00000000 */  nop
    /* 45F54 801CEECC 01004224 */  addiu      $v0, $v0, 0x1
    /* 45F58 801CEED0 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 45F5C 801CEED4 940222A4 */  sh         $v0, (0x1F800294 & 0xFFFF)($at)
    /* 45F60 801CEED8 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 45F64 801CEEDC 7900422C */  sltiu      $v0, $v0, 0x79
    /* 45F68 801CEEE0 D7014014 */  bnez       $v0, .L801CF640
    /* 45F6C 801CEEE4 01000224 */   addiu     $v0, $zero, 0x1
  .L801CEEE8:
    /* 45F70 801CEEE8 1E80013C */  lui        $at, %hi(D_801DA055)
    /* 45F74 801CEEEC 55A020A0 */  sb         $zero, %lo(D_801DA055)($at)
    /* 45F78 801CEEF0 8F3D0708 */  j          .L801CF63C
    /* 45F7C 801CEEF4 02001624 */   addiu     $s6, $zero, 0x2
  .L801CEEF8:
    /* 45F80 801CEEF8 214E060C */  jal        func_80193884
    /* 45F84 801CEEFC 00000000 */   nop
    /* 45F88 801CEF00 29004010 */  beqz       $v0, .L801CEFA8
    /* 45F8C 801CEF04 01004232 */   andi      $v0, $s2, 0x1
    /* 45F90 801CEF08 11004010 */  beqz       $v0, .L801CEF50
    /* 45F94 801CEF0C 21200000 */   addu      $a0, $zero, $zero
    /* 45F98 801CEF10 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 45F9C 801CEF14 3E000724 */  addiu      $a3, $zero, 0x3E
    /* 45FA0 801CEF18 1D80053C */  lui        $a1, %hi(D_801D58E4)
    /* 45FA4 801CEF1C E458A58C */  lw         $a1, %lo(D_801D58E4)($a1)
    /* 45FA8 801CEF20 38010224 */  addiu      $v0, $zero, 0x138
    /* 45FAC 801CEF24 1000A2AF */  sw         $v0, 0x10($sp)
    /* 45FB0 801CEF28 03000224 */  addiu      $v0, $zero, 0x3
    /* 45FB4 801CEF2C 2400A2AF */  sw         $v0, 0x24($sp)
    /* 45FB8 801CEF30 01000224 */  addiu      $v0, $zero, 0x1
    /* 45FBC 801CEF34 1400A0AF */  sw         $zero, 0x14($sp)
    /* 45FC0 801CEF38 1800A0AF */  sw         $zero, 0x18($sp)
    /* 45FC4 801CEF3C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 45FC8 801CEF40 2000A0AF */  sw         $zero, 0x20($sp)
    /* 45FCC 801CEF44 2800A0AF */  sw         $zero, 0x28($sp)
    /* 45FD0 801CEF48 B850060C */  jal        func_801942E0
    /* 45FD4 801CEF4C 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CEF50:
    /* 45FD8 801CEF50 02004232 */  andi       $v0, $s2, 0x2
    /* 45FDC 801CEF54 12004010 */  beqz       $v0, .L801CEFA0
    /* 45FE0 801CEF58 01000424 */   addiu     $a0, $zero, 0x1
    /* 45FE4 801CEF5C 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 45FE8 801CEF60 F8FF0724 */  addiu      $a3, $zero, -0x8
    /* 45FEC 801CEF64 1D80053C */  lui        $a1, %hi(D_801D58E4)
    /* 45FF0 801CEF68 E458A58C */  lw         $a1, %lo(D_801D58E4)($a1)
    /* 45FF4 801CEF6C 38010224 */  addiu      $v0, $zero, 0x138
    /* 45FF8 801CEF70 1000A2AF */  sw         $v0, 0x10($sp)
    /* 45FFC 801CEF74 03000224 */  addiu      $v0, $zero, 0x3
    /* 46000 801CEF78 1400A2AF */  sw         $v0, 0x14($sp)
    /* 46004 801CEF7C 0C000224 */  addiu      $v0, $zero, 0xC
    /* 46008 801CEF80 2400A2AF */  sw         $v0, 0x24($sp)
    /* 4600C 801CEF84 01000224 */  addiu      $v0, $zero, 0x1
    /* 46010 801CEF88 1800A0AF */  sw         $zero, 0x18($sp)
    /* 46014 801CEF8C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 46018 801CEF90 2000A0AF */  sw         $zero, 0x20($sp)
    /* 4601C 801CEF94 2800A0AF */  sw         $zero, 0x28($sp)
    /* 46020 801CEF98 B850060C */  jal        func_801942E0
    /* 46024 801CEF9C 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CEFA0:
    /* 46028 801CEFA0 1D80013C */  lui        $at, %hi(D_801D5A50)
    /* 4602C 801CEFA4 505A20AC */  sw         $zero, %lo(D_801D5A50)($at)
  .L801CEFA8:
    /* 46030 801CEFA8 34028396 */  lhu        $v1, (0x1F800234 & 0xFFFF)($s4)
    /* 46034 801CEFAC 00000000 */  nop
    /* 46038 801CEFB0 20006230 */  andi       $v0, $v1, 0x20
    /* 4603C 801CEFB4 36004010 */  beqz       $v0, .L801CF090
    /* 46040 801CEFB8 40006230 */   andi      $v0, $v1, 0x40
    /* 46044 801CEFBC 88AD020C */  jal        func_800AB620
    /* 46048 801CEFC0 28050424 */   addiu     $a0, $zero, 0x528
    /* 4604C 801CEFC4 1D80103C */  lui        $s0, %hi(D_801D5A50)
    /* 46050 801CEFC8 505A108E */  lw         $s0, %lo(D_801D5A50)($s0)
    /* 46054 801CEFCC 01000224 */  addiu      $v0, $zero, 0x1
    /* 46058 801CEFD0 2C000216 */  bne        $s0, $v0, .L801CF084
    /* 4605C 801CEFD4 20000224 */   addiu     $v0, $zero, 0x20
    /* 46060 801CEFD8 01002232 */  andi       $v0, $s1, 0x1
    /* 46064 801CEFDC 10004010 */  beqz       $v0, .L801CF020
    /* 46068 801CEFE0 21200000 */   addu      $a0, $zero, $zero
    /* 4606C 801CEFE4 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 46070 801CEFE8 3E000724 */  addiu      $a3, $zero, 0x3E
    /* 46074 801CEFEC 1D80053C */  lui        $a1, %hi(D_801D58E0)
    /* 46078 801CEFF0 E058A58C */  lw         $a1, %lo(D_801D58E0)($a1)
    /* 4607C 801CEFF4 38010224 */  addiu      $v0, $zero, 0x138
    /* 46080 801CEFF8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 46084 801CEFFC 03000224 */  addiu      $v0, $zero, 0x3
    /* 46088 801CF000 1400A0AF */  sw         $zero, 0x14($sp)
    /* 4608C 801CF004 1800A0AF */  sw         $zero, 0x18($sp)
    /* 46090 801CF008 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 46094 801CF00C 2000A0AF */  sw         $zero, 0x20($sp)
    /* 46098 801CF010 2400A2AF */  sw         $v0, 0x24($sp)
    /* 4609C 801CF014 2800A0AF */  sw         $zero, 0x28($sp)
    /* 460A0 801CF018 B850060C */  jal        func_801942E0
    /* 460A4 801CF01C 2C00B0AF */   sw        $s0, 0x2C($sp)
  .L801CF020:
    /* 460A8 801CF020 02002232 */  andi       $v0, $s1, 0x2
    /* 460AC 801CF024 11004010 */  beqz       $v0, .L801CF06C
    /* 460B0 801CF028 01000424 */   addiu     $a0, $zero, 0x1
    /* 460B4 801CF02C 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 460B8 801CF030 F8FF0724 */  addiu      $a3, $zero, -0x8
    /* 460BC 801CF034 1D80053C */  lui        $a1, %hi(D_801D58E0)
    /* 460C0 801CF038 E058A58C */  lw         $a1, %lo(D_801D58E0)($a1)
    /* 460C4 801CF03C 38010224 */  addiu      $v0, $zero, 0x138
    /* 460C8 801CF040 1000A2AF */  sw         $v0, 0x10($sp)
    /* 460CC 801CF044 03000224 */  addiu      $v0, $zero, 0x3
    /* 460D0 801CF048 1400A2AF */  sw         $v0, 0x14($sp)
    /* 460D4 801CF04C 0C000224 */  addiu      $v0, $zero, 0xC
    /* 460D8 801CF050 1800A0AF */  sw         $zero, 0x18($sp)
    /* 460DC 801CF054 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 460E0 801CF058 2000A0AF */  sw         $zero, 0x20($sp)
    /* 460E4 801CF05C 2400A2AF */  sw         $v0, 0x24($sp)
    /* 460E8 801CF060 2800A0AF */  sw         $zero, 0x28($sp)
    /* 460EC 801CF064 B850060C */  jal        func_801942E0
    /* 460F0 801CF068 2C00B0AF */   sw        $s0, 0x2C($sp)
  .L801CF06C:
    /* 460F4 801CF06C 08000224 */  addiu      $v0, $zero, 0x8
    /* 460F8 801CF070 940282A6 */  sh         $v0, (0x1F800294 & 0xFFFF)($s4)
    /* 460FC 801CF074 1D80013C */  lui        $at, %hi(D_801D5A50)
    /* 46100 801CF078 505A20AC */  sw         $zero, %lo(D_801D5A50)($at)
    /* 46104 801CF07C 8D3D0708 */  j          .L801CF634
    /* 46108 801CF080 90000224 */   addiu     $v0, $zero, 0x90
  .L801CF084:
    /* 4610C 801CF084 940282A6 */  sh         $v0, (0x1F800294 & 0xFFFF)($s4)
    /* 46110 801CF088 8D3D0708 */  j          .L801CF634
    /* 46114 801CF08C C0000224 */   addiu     $v0, $zero, 0xC0
  .L801CF090:
    /* 46118 801CF090 6B014010 */  beqz       $v0, .L801CF640
    /* 4611C 801CF094 01000224 */   addiu     $v0, $zero, 0x1
    /* 46120 801CF098 88AD020C */  jal        func_800AB620
    /* 46124 801CF09C 29050424 */   addiu     $a0, $zero, 0x529
    /* 46128 801CF0A0 9A028292 */  lbu        $v0, (0x1F80029A & 0xFFFF)($s4)
    /* 4612C 801CF0A4 13000324 */  addiu      $v1, $zero, 0x13
    /* 46130 801CF0A8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 46134 801CF0AC 2E014310 */  beq        $v0, $v1, .L801CF568
    /* 46138 801CF0B0 02000224 */   addiu     $v0, $zero, 0x2
    /* 4613C 801CF0B4 0C00C387 */  lh         $v1, 0xC($fp)
    /* 46140 801CF0B8 00000000 */  nop
    /* 46144 801CF0BC 06006210 */  beq        $v1, $v0, .L801CF0D8
    /* 46148 801CF0C0 01000224 */   addiu     $v0, $zero, 0x1
    /* 4614C 801CF0C4 1D80033C */  lui        $v1, %hi(D_801D5D68)
    /* 46150 801CF0C8 685D6390 */  lbu        $v1, %lo(D_801D5D68)($v1)
    /* 46154 801CF0CC 00000000 */  nop
    /* 46158 801CF0D0 02006214 */  bne        $v1, $v0, .L801CF0DC
    /* 4615C 801CF0D4 0B001024 */   addiu     $s0, $zero, 0xB
  .L801CF0D8:
    /* 46160 801CF0D8 17001024 */  addiu      $s0, $zero, 0x17
  .L801CF0DC:
    /* 46164 801CF0DC 01002232 */  andi       $v0, $s1, 0x1
    /* 46168 801CF0E0 13004010 */  beqz       $v0, .L801CF130
    /* 4616C 801CF0E4 21200000 */   addu      $a0, $zero, $zero
    /* 46170 801CF0E8 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 46174 801CF0EC 38010224 */  addiu      $v0, $zero, 0x138
    /* 46178 801CF0F0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 4617C 801CF0F4 03000224 */  addiu      $v0, $zero, 0x3
    /* 46180 801CF0F8 2400A2AF */  sw         $v0, 0x24($sp)
    /* 46184 801CF0FC 01000224 */  addiu      $v0, $zero, 0x1
    /* 46188 801CF100 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 4618C 801CF104 80101000 */  sll        $v0, $s0, 2
    /* 46190 801CF108 1400A0AF */  sw         $zero, 0x14($sp)
    /* 46194 801CF10C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 46198 801CF110 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 4619C 801CF114 2000A0AF */  sw         $zero, 0x20($sp)
    /* 461A0 801CF118 2800A0AF */  sw         $zero, 0x28($sp)
    /* 461A4 801CF11C 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 461A8 801CF120 21082200 */  addu       $at, $at, $v0
    /* 461AC 801CF124 C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 461B0 801CF128 B850060C */  jal        func_801942E0
    /* 461B4 801CF12C 3E000724 */   addiu     $a3, $zero, 0x3E
  .L801CF130:
    /* 461B8 801CF130 02002232 */  andi       $v0, $s1, 0x2
    /* 461BC 801CF134 3D014010 */  beqz       $v0, .L801CF62C
    /* 461C0 801CF138 01000424 */   addiu     $a0, $zero, 0x1
    /* 461C4 801CF13C 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 461C8 801CF140 38010224 */  addiu      $v0, $zero, 0x138
    /* 461CC 801CF144 1000A2AF */  sw         $v0, 0x10($sp)
    /* 461D0 801CF148 03000224 */  addiu      $v0, $zero, 0x3
    /* 461D4 801CF14C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 461D8 801CF150 0C000224 */  addiu      $v0, $zero, 0xC
    /* 461DC 801CF154 2400A2AF */  sw         $v0, 0x24($sp)
    /* 461E0 801CF158 01000224 */  addiu      $v0, $zero, 0x1
    /* 461E4 801CF15C 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 461E8 801CF160 80101000 */  sll        $v0, $s0, 2
    /* 461EC 801CF164 1800A0AF */  sw         $zero, 0x18($sp)
    /* 461F0 801CF168 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 461F4 801CF16C 2000A0AF */  sw         $zero, 0x20($sp)
    /* 461F8 801CF170 853D0708 */  j          .L801CF614
    /* 461FC 801CF174 2800A0AF */   sw        $zero, 0x28($sp)
  .L801CF178:
    /* 46200 801CF178 801F023C */  lui        $v0, (0x1F800294 >> 16)
    /* 46204 801CF17C 94024294 */  lhu        $v0, (0x1F800294 & 0xFFFF)($v0)
    /* 46208 801CF180 00000000 */  nop
    /* 4620C 801CF184 05004010 */  beqz       $v0, .L801CF19C
    /* 46210 801CF188 FFFF4224 */   addiu     $v0, $v0, -0x1
  .L801CF18C:
    /* 46214 801CF18C 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 46218 801CF190 940222A4 */  sh         $v0, (0x1F800294 & 0xFFFF)($at)
    /* 4621C 801CF194 903D0708 */  j          .L801CF640
    /* 46220 801CF198 01000224 */   addiu     $v0, $zero, 0x1
  .L801CF19C:
    /* 46224 801CF19C 8D3D0708 */  j          .L801CF634
    /* 46228 801CF1A0 10000224 */   addiu     $v0, $zero, 0x10
  .L801CF1A4:
    /* 4622C 801CF1A4 214E060C */  jal        func_80193884
    /* 46230 801CF1A8 00000000 */   nop
    /* 46234 801CF1AC 21014014 */  bnez       $v0, .L801CF634
    /* 46238 801CF1B0 F0000224 */   addiu     $v0, $zero, 0xF0
    /* 4623C 801CF1B4 801F033C */  lui        $v1, (0x1F800234 >> 16)
    /* 46240 801CF1B8 34026394 */  lhu        $v1, (0x1F800234 & 0xFFFF)($v1)
    /* 46244 801CF1BC 00000000 */  nop
    /* 46248 801CF1C0 00086230 */  andi       $v0, $v1, 0x800
    /* 4624C 801CF1C4 05004010 */  beqz       $v0, .L801CF1DC
    /* 46250 801CF1C8 20006230 */   andi      $v0, $v1, 0x20
    /* 46254 801CF1CC 88AD020C */  jal        func_800AB620
    /* 46258 801CF1D0 28050424 */   addiu     $a0, $zero, 0x528
    /* 4625C 801CF1D4 3B3D0708 */  j          .L801CF4EC
    /* 46260 801CF1D8 00000000 */   nop
  .L801CF1DC:
    /* 46264 801CF1DC 0B004010 */  beqz       $v0, .L801CF20C
    /* 46268 801CF1E0 40006230 */   andi      $v0, $v1, 0x40
    /* 4626C 801CF1E4 88AD020C */  jal        func_800AB620
    /* 46270 801CF1E8 28050424 */   addiu     $a0, $zero, 0x528
    /* 46274 801CF1EC 18000224 */  addiu      $v0, $zero, 0x18
    /* 46278 801CF1F0 1E80013C */  lui        $at, %hi(D_801DA055)
    /* 4627C 801CF1F4 55A022A0 */  sb         $v0, %lo(D_801DA055)($at)
    /* 46280 801CF1F8 50000224 */  addiu      $v0, $zero, 0x50
    /* 46284 801CF1FC 1E80013C */  lui        $at, %hi(D_801D94D0)
    /* 46288 801CF200 D09422A0 */  sb         $v0, %lo(D_801D94D0)($at)
    /* 4628C 801CF204 8F3D0708 */  j          .L801CF63C
    /* 46290 801CF208 08001624 */   addiu     $s6, $zero, 0x8
  .L801CF20C:
    /* 46294 801CF20C 0C014010 */  beqz       $v0, .L801CF640
    /* 46298 801CF210 01000224 */   addiu     $v0, $zero, 0x1
    /* 4629C 801CF214 88AD020C */  jal        func_800AB620
    /* 462A0 801CF218 29050424 */   addiu     $a0, $zero, 0x529
    /* 462A4 801CF21C 01004232 */  andi       $v0, $s2, 0x1
    /* 462A8 801CF220 11004010 */  beqz       $v0, .L801CF268
    /* 462AC 801CF224 21200000 */   addu      $a0, $zero, $zero
    /* 462B0 801CF228 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 462B4 801CF22C 3E000724 */  addiu      $a3, $zero, 0x3E
    /* 462B8 801CF230 1D80053C */  lui        $a1, %hi(D_801D5920)
    /* 462BC 801CF234 2059A58C */  lw         $a1, %lo(D_801D5920)($a1)
    /* 462C0 801CF238 38010224 */  addiu      $v0, $zero, 0x138
    /* 462C4 801CF23C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 462C8 801CF240 03000224 */  addiu      $v0, $zero, 0x3
    /* 462CC 801CF244 2400A2AF */  sw         $v0, 0x24($sp)
    /* 462D0 801CF248 01000224 */  addiu      $v0, $zero, 0x1
    /* 462D4 801CF24C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 462D8 801CF250 1800A0AF */  sw         $zero, 0x18($sp)
    /* 462DC 801CF254 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 462E0 801CF258 2000A0AF */  sw         $zero, 0x20($sp)
    /* 462E4 801CF25C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 462E8 801CF260 B850060C */  jal        func_801942E0
    /* 462EC 801CF264 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CF268:
    /* 462F0 801CF268 02004232 */  andi       $v0, $s2, 0x2
    /* 462F4 801CF26C EF004010 */  beqz       $v0, .L801CF62C
    /* 462F8 801CF270 01000424 */   addiu     $a0, $zero, 0x1
    /* 462FC 801CF274 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 46300 801CF278 F8FF0724 */  addiu      $a3, $zero, -0x8
    /* 46304 801CF27C 1D80053C */  lui        $a1, %hi(D_801D5920)
    /* 46308 801CF280 2059A58C */  lw         $a1, %lo(D_801D5920)($a1)
    /* 4630C 801CF284 38010224 */  addiu      $v0, $zero, 0x138
    /* 46310 801CF288 1000A2AF */  sw         $v0, 0x10($sp)
    /* 46314 801CF28C 03000224 */  addiu      $v0, $zero, 0x3
    /* 46318 801CF290 1400A2AF */  sw         $v0, 0x14($sp)
    /* 4631C 801CF294 0C000224 */  addiu      $v0, $zero, 0xC
    /* 46320 801CF298 2400A2AF */  sw         $v0, 0x24($sp)
    /* 46324 801CF29C 01000224 */  addiu      $v0, $zero, 0x1
    /* 46328 801CF2A0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 4632C 801CF2A4 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 46330 801CF2A8 2000A0AF */  sw         $zero, 0x20($sp)
    /* 46334 801CF2AC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 46338 801CF2B0 893D0708 */  j          .L801CF624
    /* 4633C 801CF2B4 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CF2B8:
    /* 46340 801CF2B8 FF0F8230 */  andi       $v0, $a0, 0xFFF
    /* 46344 801CF2BC 06004010 */  beqz       $v0, .L801CF2D8
    /* 46348 801CF2C0 00000000 */   nop
    /* 4634C 801CF2C4 88AD020C */  jal        func_800AB620
    /* 46350 801CF2C8 28050424 */   addiu     $a0, $zero, 0x528
    /* 46354 801CF2CC 78000224 */  addiu      $v0, $zero, 0x78
    /* 46358 801CF2D0 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 4635C 801CF2D4 940222A4 */  sh         $v0, (0x1F800294 & 0xFFFF)($at)
  .L801CF2D8:
    /* 46360 801CF2D8 801F023C */  lui        $v0, (0x1F800294 >> 16)
    /* 46364 801CF2DC 94024294 */  lhu        $v0, (0x1F800294 & 0xFFFF)($v0)
    /* 46368 801CF2E0 00000000 */  nop
    /* 4636C 801CF2E4 01004224 */  addiu      $v0, $v0, 0x1
    /* 46370 801CF2E8 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 46374 801CF2EC 940222A4 */  sh         $v0, (0x1F800294 & 0xFFFF)($at)
    /* 46378 801CF2F0 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 4637C 801CF2F4 7900422C */  sltiu      $v0, $v0, 0x79
    /* 46380 801CF2F8 D1004014 */  bnez       $v0, .L801CF640
    /* 46384 801CF2FC 01000224 */   addiu     $v0, $zero, 0x1
    /* 46388 801CF300 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* 4638C 801CF304 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* 46390 801CF308 31000224 */  addiu      $v0, $zero, 0x31
    /* 46394 801CF30C 03006214 */  bne        $v1, $v0, .L801CF31C
    /* 46398 801CF310 02000224 */   addiu     $v0, $zero, 0x2
    /* 4639C 801CF314 CD3C0708 */  j          .L801CF334
    /* 463A0 801CF318 0B001024 */   addiu     $s0, $zero, 0xB
  .L801CF31C:
    /* 463A4 801CF31C 1180033C */  lui        $v1, %hi(D_8010A5B4)
    /* 463A8 801CF320 B4A56384 */  lh         $v1, %lo(D_8010A5B4)($v1)
    /* 463AC 801CF324 00000000 */  nop
    /* 463B0 801CF328 02006214 */  bne        $v1, $v0, .L801CF334
    /* 463B4 801CF32C 0D001024 */   addiu     $s0, $zero, 0xD
    /* 463B8 801CF330 03001024 */  addiu      $s0, $zero, 0x3
  .L801CF334:
    /* 463BC 801CF334 01002232 */  andi       $v0, $s1, 0x1
    /* 463C0 801CF338 13004010 */  beqz       $v0, .L801CF388
    /* 463C4 801CF33C 21200000 */   addu      $a0, $zero, $zero
    /* 463C8 801CF340 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 463CC 801CF344 38010224 */  addiu      $v0, $zero, 0x138
    /* 463D0 801CF348 1000A2AF */  sw         $v0, 0x10($sp)
    /* 463D4 801CF34C 03000224 */  addiu      $v0, $zero, 0x3
    /* 463D8 801CF350 2400A2AF */  sw         $v0, 0x24($sp)
    /* 463DC 801CF354 01000224 */  addiu      $v0, $zero, 0x1
    /* 463E0 801CF358 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 463E4 801CF35C 80101000 */  sll        $v0, $s0, 2
    /* 463E8 801CF360 1400A0AF */  sw         $zero, 0x14($sp)
    /* 463EC 801CF364 1800A0AF */  sw         $zero, 0x18($sp)
    /* 463F0 801CF368 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 463F4 801CF36C 2000A0AF */  sw         $zero, 0x20($sp)
    /* 463F8 801CF370 2800A0AF */  sw         $zero, 0x28($sp)
    /* 463FC 801CF374 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 46400 801CF378 21082200 */  addu       $at, $at, $v0
    /* 46404 801CF37C C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 46408 801CF380 B850060C */  jal        func_801942E0
    /* 4640C 801CF384 3E000724 */   addiu     $a3, $zero, 0x3E
  .L801CF388:
    /* 46410 801CF388 02002232 */  andi       $v0, $s1, 0x2
    /* 46414 801CF38C 14004010 */  beqz       $v0, .L801CF3E0
    /* 46418 801CF390 01000424 */   addiu     $a0, $zero, 0x1
    /* 4641C 801CF394 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 46420 801CF398 38010224 */  addiu      $v0, $zero, 0x138
    /* 46424 801CF39C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 46428 801CF3A0 03000224 */  addiu      $v0, $zero, 0x3
    /* 4642C 801CF3A4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 46430 801CF3A8 0C000224 */  addiu      $v0, $zero, 0xC
    /* 46434 801CF3AC 2400A2AF */  sw         $v0, 0x24($sp)
    /* 46438 801CF3B0 01000224 */  addiu      $v0, $zero, 0x1
    /* 4643C 801CF3B4 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 46440 801CF3B8 80101000 */  sll        $v0, $s0, 2
    /* 46444 801CF3BC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 46448 801CF3C0 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 4644C 801CF3C4 2000A0AF */  sw         $zero, 0x20($sp)
    /* 46450 801CF3C8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 46454 801CF3CC 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 46458 801CF3D0 21082200 */  addu       $at, $at, $v0
    /* 4645C 801CF3D4 C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 46460 801CF3D8 B850060C */  jal        func_801942E0
    /* 46464 801CF3DC F8FF0724 */   addiu     $a3, $zero, -0x8
  .L801CF3E0:
    /* 46468 801CF3E0 9A028292 */  lbu        $v0, (0x1F80029A & 0xFFFF)($s4)
    /* 4646C 801CF3E4 30000324 */  addiu      $v1, $zero, 0x30
    /* 46470 801CF3E8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 46474 801CF3EC 06004314 */  bne        $v0, $v1, .L801CF408
    /* 46478 801CF3F0 940280A6 */   sh        $zero, (0x1F800294 & 0xFFFF)($s4)
    /* 4647C 801CF3F4 30000224 */  addiu      $v0, $zero, 0x30
    /* 46480 801CF3F8 1E80013C */  lui        $at, %hi(D_801D94D0)
    /* 46484 801CF3FC D09422A0 */  sb         $v0, %lo(D_801D94D0)($at)
    /* 46488 801CF400 8F3D0708 */  j          .L801CF63C
    /* 4648C 801CF404 02001624 */   addiu     $s6, $zero, 0x2
  .L801CF408:
    /* 46490 801CF408 8D3D0708 */  j          .L801CF634
    /* 46494 801CF40C A0000224 */   addiu     $v0, $zero, 0xA0
  .L801CF410:
    /* 46498 801CF410 214E060C */  jal        func_80193884
    /* 4649C 801CF414 00000000 */   nop
    /* 464A0 801CF418 29004010 */  beqz       $v0, .L801CF4C0
    /* 464A4 801CF41C 01004232 */   andi      $v0, $s2, 0x1
    /* 464A8 801CF420 11004010 */  beqz       $v0, .L801CF468
    /* 464AC 801CF424 21200000 */   addu      $a0, $zero, $zero
    /* 464B0 801CF428 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 464B4 801CF42C 3E000724 */  addiu      $a3, $zero, 0x3E
    /* 464B8 801CF430 1D80053C */  lui        $a1, %hi(D_801D58F4)
    /* 464BC 801CF434 F458A58C */  lw         $a1, %lo(D_801D58F4)($a1)
    /* 464C0 801CF438 38010224 */  addiu      $v0, $zero, 0x138
    /* 464C4 801CF43C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 464C8 801CF440 03000224 */  addiu      $v0, $zero, 0x3
    /* 464CC 801CF444 2400A2AF */  sw         $v0, 0x24($sp)
    /* 464D0 801CF448 01000224 */  addiu      $v0, $zero, 0x1
    /* 464D4 801CF44C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 464D8 801CF450 1800A0AF */  sw         $zero, 0x18($sp)
    /* 464DC 801CF454 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 464E0 801CF458 2000A0AF */  sw         $zero, 0x20($sp)
    /* 464E4 801CF45C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 464E8 801CF460 B850060C */  jal        func_801942E0
    /* 464EC 801CF464 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CF468:
    /* 464F0 801CF468 02002232 */  andi       $v0, $s1, 0x2
    /* 464F4 801CF46C 12004010 */  beqz       $v0, .L801CF4B8
    /* 464F8 801CF470 01000424 */   addiu     $a0, $zero, 0x1
    /* 464FC 801CF474 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 46500 801CF478 F8FF0724 */  addiu      $a3, $zero, -0x8
    /* 46504 801CF47C 1D80053C */  lui        $a1, %hi(D_801D58F4)
    /* 46508 801CF480 F458A58C */  lw         $a1, %lo(D_801D58F4)($a1)
    /* 4650C 801CF484 38010224 */  addiu      $v0, $zero, 0x138
    /* 46510 801CF488 1000A2AF */  sw         $v0, 0x10($sp)
    /* 46514 801CF48C 03000224 */  addiu      $v0, $zero, 0x3
    /* 46518 801CF490 1400A2AF */  sw         $v0, 0x14($sp)
    /* 4651C 801CF494 0C000224 */  addiu      $v0, $zero, 0xC
    /* 46520 801CF498 2400A2AF */  sw         $v0, 0x24($sp)
    /* 46524 801CF49C 01000224 */  addiu      $v0, $zero, 0x1
    /* 46528 801CF4A0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 4652C 801CF4A4 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 46530 801CF4A8 2000A0AF */  sw         $zero, 0x20($sp)
    /* 46534 801CF4AC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 46538 801CF4B0 B850060C */  jal        func_801942E0
    /* 4653C 801CF4B4 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CF4B8:
    /* 46540 801CF4B8 8D3D0708 */  j          .L801CF634
    /* 46544 801CF4BC B0000224 */   addiu     $v0, $zero, 0xB0
  .L801CF4C0:
    /* 46548 801CF4C0 801F023C */  lui        $v0, (0x1F800234 >> 16)
    /* 4654C 801CF4C4 34024294 */  lhu        $v0, (0x1F800234 & 0xFFFF)($v0)
    /* 46550 801CF4C8 00000000 */  nop
    /* 46554 801CF4CC 00084230 */  andi       $v0, $v0, 0x800
    /* 46558 801CF4D0 10004010 */  beqz       $v0, .L801CF514
    /* 4655C 801CF4D4 00000000 */   nop
    /* 46560 801CF4D8 88AD020C */  jal        func_800AB620
    /* 46564 801CF4DC 28050424 */   addiu     $a0, $zero, 0x528
    /* 46568 801CF4E0 01000224 */  addiu      $v0, $zero, 0x1
    /* 4656C 801CF4E4 1D80013C */  lui        $at, %hi(D_801D5D68)
    /* 46570 801CF4E8 685D22A0 */  sb         $v0, %lo(D_801D5D68)($at)
  .L801CF4EC:
    /* 46574 801CF4EC 1180023C */  lui        $v0, %hi(D_8010865C)
    /* 46578 801CF4F0 5C864290 */  lbu        $v0, %lo(D_8010865C)($v0)
    /* 4657C 801CF4F4 30000324 */  addiu      $v1, $zero, 0x30
    /* 46580 801CF4F8 1E80013C */  lui        $at, %hi(D_801DA055)
    /* 46584 801CF4FC 55A023A0 */  sb         $v1, %lo(D_801DA055)($at)
    /* 46588 801CF500 08004234 */  ori        $v0, $v0, 0x8
    /* 4658C 801CF504 1180013C */  lui        $at, %hi(D_8010865C)
    /* 46590 801CF508 5C8622A0 */  sb         $v0, %lo(D_8010865C)($at)
    /* 46594 801CF50C 903D0708 */  j          .L801CF640
    /* 46598 801CF510 01000224 */   addiu     $v0, $zero, 0x1
  .L801CF514:
    /* 4659C 801CF514 34028396 */  lhu        $v1, (0x1F800234 & 0xFFFF)($s4)
    /* 465A0 801CF518 00000000 */  nop
    /* 465A4 801CF51C 20006230 */  andi       $v0, $v1, 0x20
    /* 465A8 801CF520 07004010 */  beqz       $v0, .L801CF540
    /* 465AC 801CF524 00000000 */   nop
    /* 465B0 801CF528 88AD020C */  jal        func_800AB620
    /* 465B4 801CF52C 28050424 */   addiu     $a0, $zero, 0x528
    /* 465B8 801CF530 30000224 */  addiu      $v0, $zero, 0x30
    /* 465BC 801CF534 940282A6 */  sh         $v0, (0x1F800294 & 0xFFFF)($s4)
    /* 465C0 801CF538 8D3D0708 */  j          .L801CF634
    /* 465C4 801CF53C C0000224 */   addiu     $v0, $zero, 0xC0
  .L801CF540:
    /* 465C8 801CF540 40006230 */  andi       $v0, $v1, 0x40
    /* 465CC 801CF544 3E004010 */  beqz       $v0, .L801CF640
    /* 465D0 801CF548 01000224 */   addiu     $v0, $zero, 0x1
    /* 465D4 801CF54C 88AD020C */  jal        func_800AB620
    /* 465D8 801CF550 29050424 */   addiu     $a0, $zero, 0x529
    /* 465DC 801CF554 9A028292 */  lbu        $v0, (0x1F80029A & 0xFFFF)($s4)
    /* 465E0 801CF558 13000324 */  addiu      $v1, $zero, 0x13
    /* 465E4 801CF55C FF004230 */  andi       $v0, $v0, 0xFF
    /* 465E8 801CF560 03004314 */  bne        $v0, $v1, .L801CF570
    /* 465EC 801CF564 0B001024 */   addiu     $s0, $zero, 0xB
  .L801CF568:
    /* 465F0 801CF568 9D3D0708 */  j          .L801CF674
    /* 465F4 801CF56C 03000224 */   addiu     $v0, $zero, 0x3
  .L801CF570:
    /* 465F8 801CF570 1D80023C */  lui        $v0, %hi(D_801D5D68)
    /* 465FC 801CF574 685D4290 */  lbu        $v0, %lo(D_801D5D68)($v0)
    /* 46600 801CF578 01001224 */  addiu      $s2, $zero, 0x1
  .L801CF57C:
    /* 46604 801CF57C 02005214 */  bne        $v0, $s2, .L801CF588
    /* 46608 801CF580 01002232 */   andi      $v0, $s1, 0x1
    /* 4660C 801CF584 17001024 */  addiu      $s0, $zero, 0x17
  .L801CF588:
    /* 46610 801CF588 12004010 */  beqz       $v0, .L801CF5D4
    /* 46614 801CF58C 21200000 */   addu      $a0, $zero, $zero
    /* 46618 801CF590 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 4661C 801CF594 38010224 */  addiu      $v0, $zero, 0x138
    /* 46620 801CF598 1000A2AF */  sw         $v0, 0x10($sp)
    /* 46624 801CF59C 03000224 */  addiu      $v0, $zero, 0x3
    /* 46628 801CF5A0 2400A2AF */  sw         $v0, 0x24($sp)
    /* 4662C 801CF5A4 80101000 */  sll        $v0, $s0, 2
    /* 46630 801CF5A8 1400A0AF */  sw         $zero, 0x14($sp)
    /* 46634 801CF5AC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 46638 801CF5B0 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 4663C 801CF5B4 2000A0AF */  sw         $zero, 0x20($sp)
    /* 46640 801CF5B8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 46644 801CF5BC 2C00B2AF */  sw         $s2, 0x2C($sp)
    /* 46648 801CF5C0 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 4664C 801CF5C4 21082200 */  addu       $at, $at, $v0
    /* 46650 801CF5C8 C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 46654 801CF5CC B850060C */  jal        func_801942E0
    /* 46658 801CF5D0 3E000724 */   addiu     $a3, $zero, 0x3E
  .L801CF5D4:
    /* 4665C 801CF5D4 02002232 */  andi       $v0, $s1, 0x2
    /* 46660 801CF5D8 14004010 */  beqz       $v0, .L801CF62C
    /* 46664 801CF5DC 01000424 */   addiu     $a0, $zero, 0x1
    /* 46668 801CF5E0 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 4666C 801CF5E4 38010224 */  addiu      $v0, $zero, 0x138
    /* 46670 801CF5E8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 46674 801CF5EC 03000224 */  addiu      $v0, $zero, 0x3
    /* 46678 801CF5F0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 4667C 801CF5F4 0C000224 */  addiu      $v0, $zero, 0xC
    /* 46680 801CF5F8 2400A2AF */  sw         $v0, 0x24($sp)
    /* 46684 801CF5FC 80101000 */  sll        $v0, $s0, 2
    /* 46688 801CF600 1800A0AF */  sw         $zero, 0x18($sp)
    /* 4668C 801CF604 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 46690 801CF608 2000A0AF */  sw         $zero, 0x20($sp)
    /* 46694 801CF60C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 46698 801CF610 2C00B2AF */  sw         $s2, 0x2C($sp)
  .L801CF614:
    /* 4669C 801CF614 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 466A0 801CF618 21082200 */  addu       $at, $at, $v0
    /* 466A4 801CF61C C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 466A8 801CF620 F8FF0724 */  addiu      $a3, $zero, -0x8
  .L801CF624:
    /* 466AC 801CF624 B850060C */  jal        func_801942E0
    /* 466B0 801CF628 00000000 */   nop
  .L801CF62C:
    /* 466B4 801CF62C A0000224 */  addiu      $v0, $zero, 0xA0
    /* 466B8 801CF630 940280A6 */  sh         $zero, (0x1F800294 & 0xFFFF)($s4)
  .L801CF634:
    /* 466BC 801CF634 1E80013C */  lui        $at, %hi(D_801DA055)
    /* 466C0 801CF638 55A022A0 */  sb         $v0, %lo(D_801DA055)($at)
  .L801CF63C:
    /* 466C4 801CF63C 01000224 */  addiu      $v0, $zero, 0x1
  .L801CF640:
    /* 466C8 801CF640 0C00C216 */  bne        $s6, $v0, .L801CF674
    /* 466CC 801CF644 2110C002 */   addu      $v0, $s6, $zero
    /* 466D0 801CF648 1D80023C */  lui        $v0, %hi(D_801D5D68)
    /* 466D4 801CF64C 685D4290 */  lbu        $v0, %lo(D_801D5D68)($v0)
    /* 466D8 801CF650 0100013C */  lui        $at, (0x10000 >> 16)
    /* 466DC 801CF654 2108E102 */  addu       $at, $s7, $at
    /* 466E0 801CF658 148F20A0 */  sb         $zero, -0x70EC($at)
    /* 466E4 801CF65C 04005614 */  bne        $v0, $s6, .L801CF670
    /* 466E8 801CF660 0C00C0A7 */   sh        $zero, 0xC($fp)
    /* 466EC 801CF664 01004224 */  addiu      $v0, $v0, 0x1
    /* 466F0 801CF668 1D80013C */  lui        $at, %hi(D_801D5D68)
    /* 466F4 801CF66C 685D22A0 */  sb         $v0, %lo(D_801D5D68)($at)
  .L801CF670:
    /* 466F8 801CF670 2110C002 */  addu       $v0, $s6, $zero
  .L801CF674:
    /* 466FC 801CF674 5400BF8F */  lw         $ra, 0x54($sp)
    /* 46700 801CF678 5000BE8F */  lw         $fp, 0x50($sp)
    /* 46704 801CF67C 4C00B78F */  lw         $s7, 0x4C($sp)
    /* 46708 801CF680 4800B68F */  lw         $s6, 0x48($sp)
    /* 4670C 801CF684 4400B58F */  lw         $s5, 0x44($sp)
    /* 46710 801CF688 4000B48F */  lw         $s4, 0x40($sp)
    /* 46714 801CF68C 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 46718 801CF690 3800B28F */  lw         $s2, 0x38($sp)
    /* 4671C 801CF694 3400B18F */  lw         $s1, 0x34($sp)
    /* 46720 801CF698 3000B08F */  lw         $s0, 0x30($sp)
    /* 46724 801CF69C 5800BD27 */  addiu      $sp, $sp, 0x58
    /* 46728 801CF6A0 0800E003 */  jr         $ra
    /* 4672C 801CF6A4 00000000 */   nop
endlabel func_801CE010
