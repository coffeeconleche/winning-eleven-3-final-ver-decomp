nonmatching func_800C21D8, 0x300

glabel func_800C21D8
    /* B29D8 800C21D8 0D80023C */  lui        $v0, %hi(D_800D55F0)
    /* B29DC 800C21DC F055428C */  lw         $v0, %lo(D_800D55F0)($v0)
    /* B29E0 800C21E0 00000000 */  nop
    /* B29E4 800C21E4 33004004 */  bltz       $v0, .L800C22B4
    /* B29E8 800C21E8 21480000 */   addu      $t1, $zero, $zero
    /* B29EC 800C21EC 00800C3C */  lui        $t4, (0x80000000 >> 16)
    /* B29F0 800C21F0 FF2F0A3C */  lui        $t2, (0x2FFFFFFF >> 16)
    /* B29F4 800C21F4 FFFF4A35 */  ori        $t2, $t2, (0x2FFFFFFF & 0xFFFF)
    /* B29F8 800C21F8 FF0F0B3C */  lui        $t3, (0xFFFFFFF >> 16)
    /* B29FC 800C21FC FFFF6B35 */  ori        $t3, $t3, (0xFFFFFFF & 0xFFFF)
    /* B2A00 800C2200 0D80083C */  lui        $t0, %hi(D_800D55F4)
    /* B2A04 800C2204 F455088D */  lw         $t0, %lo(D_800D55F4)($t0)
    /* B2A08 800C2208 21684000 */  addu       $t5, $v0, $zero
    /* B2A0C 800C220C 21380001 */  addu       $a3, $t0, $zero
  .L800C2210:
    /* B2A10 800C2210 0000E28C */  lw         $v0, 0x0($a3)
    /* B2A14 800C2214 00000000 */  nop
    /* B2A18 800C2218 24104C00 */  and        $v0, $v0, $t4
    /* B2A1C 800C221C 1D004010 */  beqz       $v0, .L800C2294
    /* B2A20 800C2220 01002625 */   addiu     $a2, $t1, 0x1
    /* B2A24 800C2224 C0100600 */  sll        $v0, $a2, 3
    /* B2A28 800C2228 21184800 */  addu       $v1, $v0, $t0
  .L800C222C:
    /* B2A2C 800C222C 0000628C */  lw         $v0, 0x0($v1)
    /* B2A30 800C2230 00000000 */  nop
    /* B2A34 800C2234 03004A14 */  bne        $v0, $t2, .L800C2244
    /* B2A38 800C2238 08006324 */   addiu     $v1, $v1, 0x8
    /* B2A3C 800C223C 8B080308 */  j          .L800C222C
    /* B2A40 800C2240 0100C624 */   addiu     $a2, $a2, 0x1
  .L800C2244:
    /* B2A44 800C2244 C0100600 */  sll        $v0, $a2, 3
    /* B2A48 800C2248 21284800 */  addu       $a1, $v0, $t0
    /* B2A4C 800C224C 0000A38C */  lw         $v1, 0x0($a1)
    /* B2A50 800C2250 00000000 */  nop
    /* B2A54 800C2254 24106C00 */  and        $v0, $v1, $t4
    /* B2A58 800C2258 0E004010 */  beqz       $v0, .L800C2294
    /* B2A5C 800C225C 24106B00 */   and       $v0, $v1, $t3
    /* B2A60 800C2260 0000E38C */  lw         $v1, 0x0($a3)
    /* B2A64 800C2264 0400E48C */  lw         $a0, 0x4($a3)
    /* B2A68 800C2268 24186B00 */  and        $v1, $v1, $t3
    /* B2A6C 800C226C 21186400 */  addu       $v1, $v1, $a0
    /* B2A70 800C2270 08004314 */  bne        $v0, $v1, .L800C2294
    /* B2A74 800C2274 00000000 */   nop
    /* B2A78 800C2278 0000AAAC */  sw         $t2, 0x0($a1)
    /* B2A7C 800C227C 0400E28C */  lw         $v0, 0x4($a3)
    /* B2A80 800C2280 0400A38C */  lw         $v1, 0x4($a1)
    /* B2A84 800C2284 00000000 */  nop
    /* B2A88 800C2288 21104300 */  addu       $v0, $v0, $v1
    /* B2A8C 800C228C A7080308 */  j          .L800C229C
    /* B2A90 800C2290 0400E2AC */   sw        $v0, 0x4($a3)
  .L800C2294:
    /* B2A94 800C2294 0800E724 */  addiu      $a3, $a3, 0x8
    /* B2A98 800C2298 01002925 */  addiu      $t1, $t1, 0x1
  .L800C229C:
    /* B2A9C 800C229C 2A10A901 */  slt        $v0, $t5, $t1
    /* B2AA0 800C22A0 DBFF4010 */  beqz       $v0, .L800C2210
    /* B2AA4 800C22A4 00000000 */   nop
    /* B2AA8 800C22A8 0D80023C */  lui        $v0, %hi(D_800D55F0)
    /* B2AAC 800C22AC F055428C */  lw         $v0, %lo(D_800D55F0)($v0)
    /* B2AB0 800C22B0 00000000 */  nop
  .L800C22B4:
    /* B2AB4 800C22B4 10004004 */  bltz       $v0, .L800C22F8
    /* B2AB8 800C22B8 21480000 */   addu      $t1, $zero, $zero
    /* B2ABC 800C22BC FF2F053C */  lui        $a1, (0x2FFFFFFF >> 16)
    /* B2AC0 800C22C0 FFFFA534 */  ori        $a1, $a1, (0x2FFFFFFF & 0xFFFF)
    /* B2AC4 800C22C4 21204000 */  addu       $a0, $v0, $zero
    /* B2AC8 800C22C8 0D80033C */  lui        $v1, %hi(D_800D55F4)
    /* B2ACC 800C22CC F455638C */  lw         $v1, %lo(D_800D55F4)($v1)
    /* B2AD0 800C22D0 00000000 */  nop
  .L800C22D4:
    /* B2AD4 800C22D4 0400628C */  lw         $v0, 0x4($v1)
    /* B2AD8 800C22D8 00000000 */  nop
    /* B2ADC 800C22DC 02004014 */  bnez       $v0, .L800C22E8
    /* B2AE0 800C22E0 00000000 */   nop
    /* B2AE4 800C22E4 000065AC */  sw         $a1, 0x0($v1)
  .L800C22E8:
    /* B2AE8 800C22E8 01002925 */  addiu      $t1, $t1, 0x1
    /* B2AEC 800C22EC 2A108900 */  slt        $v0, $a0, $t1
    /* B2AF0 800C22F0 F8FF4010 */  beqz       $v0, .L800C22D4
    /* B2AF4 800C22F4 08006324 */   addiu     $v1, $v1, 0x8
  .L800C22F8:
    /* B2AF8 800C22F8 0D80033C */  lui        $v1, %hi(D_800D55F0)
    /* B2AFC 800C22FC F055638C */  lw         $v1, %lo(D_800D55F0)($v1)
    /* B2B00 800C2300 00000000 */  nop
    /* B2B04 800C2304 2F006004 */  bltz       $v1, .L800C23C4
    /* B2B08 800C2308 21480000 */   addu      $t1, $zero, $zero
    /* B2B0C 800C230C 00400E3C */  lui        $t6, (0x40000000 >> 16)
    /* B2B10 800C2310 FF0F0C3C */  lui        $t4, (0xFFFFFFF >> 16)
    /* B2B14 800C2314 0D800D3C */  lui        $t5, %hi(D_800D55F4)
    /* B2B18 800C2318 F455AD8D */  lw         $t5, %lo(D_800D55F4)($t5)
    /* B2B1C 800C231C FFFF8C35 */  ori        $t4, $t4, (0xFFFFFFF & 0xFFFF)
    /* B2B20 800C2320 2150A001 */  addu       $t2, $t5, $zero
  .L800C2324:
    /* B2B24 800C2324 0000428D */  lw         $v0, 0x0($t2)
    /* B2B28 800C2328 00000000 */  nop
    /* B2B2C 800C232C 24104E00 */  and        $v0, $v0, $t6
    /* B2B30 800C2330 24004014 */  bnez       $v0, .L800C23C4
    /* B2B34 800C2334 00000000 */   nop
    /* B2B38 800C2338 01002625 */  addiu      $a2, $t1, 0x1
    /* B2B3C 800C233C 2A106600 */  slt        $v0, $v1, $a2
    /* B2B40 800C2340 1A004014 */  bnez       $v0, .L800C23AC
    /* B2B44 800C2344 C0100600 */   sll       $v0, $a2, 3
    /* B2B48 800C2348 21404001 */  addu       $t0, $t2, $zero
    /* B2B4C 800C234C 0D800B3C */  lui        $t3, %hi(D_800D55F0)
    /* B2B50 800C2350 F0556B8D */  lw         $t3, %lo(D_800D55F0)($t3)
    /* B2B54 800C2354 21204D00 */  addu       $a0, $v0, $t5
  .L800C2358:
    /* B2B58 800C2358 0000858C */  lw         $a1, 0x0($a0)
    /* B2B5C 800C235C 00000000 */  nop
    /* B2B60 800C2360 2410AE00 */  and        $v0, $a1, $t6
    /* B2B64 800C2364 11004014 */  bnez       $v0, .L800C23AC
    /* B2B68 800C2368 2410AC00 */   and       $v0, $a1, $t4
    /* B2B6C 800C236C 0000078D */  lw         $a3, 0x0($t0)
    /* B2B70 800C2370 00000000 */  nop
    /* B2B74 800C2374 2418EC00 */  and        $v1, $a3, $t4
    /* B2B78 800C2378 2B104300 */  sltu       $v0, $v0, $v1
    /* B2B7C 800C237C 07004010 */  beqz       $v0, .L800C239C
    /* B2B80 800C2380 00000000 */   nop
    /* B2B84 800C2384 000005AD */  sw         $a1, 0x0($t0)
    /* B2B88 800C2388 0400828C */  lw         $v0, 0x4($a0)
    /* B2B8C 800C238C 0400038D */  lw         $v1, 0x4($t0)
    /* B2B90 800C2390 040002AD */  sw         $v0, 0x4($t0)
    /* B2B94 800C2394 000087AC */  sw         $a3, 0x0($a0)
    /* B2B98 800C2398 040083AC */  sw         $v1, 0x4($a0)
  .L800C239C:
    /* B2B9C 800C239C 0100C624 */  addiu      $a2, $a2, 0x1
    /* B2BA0 800C23A0 2A106601 */  slt        $v0, $t3, $a2
    /* B2BA4 800C23A4 ECFF4010 */  beqz       $v0, .L800C2358
    /* B2BA8 800C23A8 08008424 */   addiu     $a0, $a0, 0x8
  .L800C23AC:
    /* B2BAC 800C23AC 0D80033C */  lui        $v1, %hi(D_800D55F0)
    /* B2BB0 800C23B0 F055638C */  lw         $v1, %lo(D_800D55F0)($v1)
    /* B2BB4 800C23B4 01002925 */  addiu      $t1, $t1, 0x1
    /* B2BB8 800C23B8 2A106900 */  slt        $v0, $v1, $t1
    /* B2BBC 800C23BC D9FF4010 */  beqz       $v0, .L800C2324
    /* B2BC0 800C23C0 08004A25 */   addiu     $t2, $t2, 0x8
  .L800C23C4:
    /* B2BC4 800C23C4 0D80053C */  lui        $a1, %hi(D_800D55F0)
    /* B2BC8 800C23C8 F055A58C */  lw         $a1, %lo(D_800D55F0)($a1)
    /* B2BCC 800C23CC 00000000 */  nop
    /* B2BD0 800C23D0 1D00A004 */  bltz       $a1, .L800C2448
    /* B2BD4 800C23D4 21480000 */   addu      $t1, $zero, $zero
    /* B2BD8 800C23D8 0040083C */  lui        $t0, (0x40000000 >> 16)
    /* B2BDC 800C23DC FF2F073C */  lui        $a3, (0x2FFFFFFF >> 16)
    /* B2BE0 800C23E0 0D80063C */  lui        $a2, %hi(D_800D55F4)
    /* B2BE4 800C23E4 F455C68C */  lw         $a2, %lo(D_800D55F4)($a2)
    /* B2BE8 800C23E8 FFFFE734 */  ori        $a3, $a3, (0x2FFFFFFF & 0xFFFF)
    /* B2BEC 800C23EC 2120C000 */  addu       $a0, $a2, $zero
  .L800C23F0:
    /* B2BF0 800C23F0 0000838C */  lw         $v1, 0x0($a0)
    /* B2BF4 800C23F4 00000000 */  nop
    /* B2BF8 800C23F8 24106800 */  and        $v0, $v1, $t0
    /* B2BFC 800C23FC 12004014 */  bnez       $v0, .L800C2448
    /* B2C00 800C2400 00000000 */   nop
    /* B2C04 800C2404 0A006714 */  bne        $v1, $a3, .L800C2430
    /* B2C08 800C2408 C0100500 */   sll       $v0, $a1, 3
    /* B2C0C 800C240C 21104600 */  addu       $v0, $v0, $a2
    /* B2C10 800C2410 0000438C */  lw         $v1, 0x0($v0)
    /* B2C14 800C2414 00000000 */  nop
    /* B2C18 800C2418 000083AC */  sw         $v1, 0x0($a0)
    /* B2C1C 800C241C 0400428C */  lw         $v0, 0x4($v0)
    /* B2C20 800C2420 0D80013C */  lui        $at, %hi(D_800D55F0)
    /* B2C24 800C2424 F05529AC */  sw         $t1, %lo(D_800D55F0)($at)
    /* B2C28 800C2428 12090308 */  j          .L800C2448
    /* B2C2C 800C242C 040082AC */   sw        $v0, 0x4($a0)
  .L800C2430:
    /* B2C30 800C2430 0D80053C */  lui        $a1, %hi(D_800D55F0)
    /* B2C34 800C2434 F055A58C */  lw         $a1, %lo(D_800D55F0)($a1)
    /* B2C38 800C2438 01002925 */  addiu      $t1, $t1, 0x1
    /* B2C3C 800C243C 2A10A900 */  slt        $v0, $a1, $t1
    /* B2C40 800C2440 EBFF4010 */  beqz       $v0, .L800C23F0
    /* B2C44 800C2444 08008424 */   addiu     $a0, $a0, 0x8
  .L800C2448:
    /* B2C48 800C2448 0D80023C */  lui        $v0, %hi(D_800D55F0)
    /* B2C4C 800C244C F055428C */  lw         $v0, %lo(D_800D55F0)($v0)
    /* B2C50 800C2450 00000000 */  nop
    /* B2C54 800C2454 FFFF4924 */  addiu      $t1, $v0, -0x1
    /* B2C58 800C2458 1D002005 */  bltz       $t1, .L800C24D0
    /* B2C5C 800C245C C0100900 */   sll       $v0, $t1, 3
    /* B2C60 800C2460 0080083C */  lui        $t0, (0x80000000 >> 16)
    /* B2C64 800C2464 FF0F063C */  lui        $a2, (0xFFFFFFF >> 16)
    /* B2C68 800C2468 FFFFC634 */  ori        $a2, $a2, (0xFFFFFFF & 0xFFFF)
    /* B2C6C 800C246C 0040073C */  lui        $a3, (0x40000000 >> 16)
    /* B2C70 800C2470 0D80053C */  lui        $a1, %hi(D_800D55F4)
    /* B2C74 800C2474 F455A58C */  lw         $a1, %lo(D_800D55F4)($a1)
    /* B2C78 800C2478 00000000 */  nop
    /* B2C7C 800C247C 21204500 */  addu       $a0, $v0, $a1
  .L800C2480:
    /* B2C80 800C2480 0000838C */  lw         $v1, 0x0($a0)
    /* B2C84 800C2484 00000000 */  nop
    /* B2C88 800C2488 24106800 */  and        $v0, $v1, $t0
    /* B2C8C 800C248C 10004010 */  beqz       $v0, .L800C24D0
    /* B2C90 800C2490 24106600 */   and       $v0, $v1, $a2
    /* B2C94 800C2494 0D80033C */  lui        $v1, %hi(D_800D55F0)
    /* B2C98 800C2498 F055638C */  lw         $v1, %lo(D_800D55F0)($v1)
    /* B2C9C 800C249C 25104700 */  or         $v0, $v0, $a3
    /* B2CA0 800C24A0 000082AC */  sw         $v0, 0x0($a0)
    /* B2CA4 800C24A4 0400828C */  lw         $v0, 0x4($a0)
    /* B2CA8 800C24A8 0D80013C */  lui        $at, %hi(D_800D55F0)
    /* B2CAC 800C24AC F05529AC */  sw         $t1, %lo(D_800D55F0)($at)
    /* B2CB0 800C24B0 C0180300 */  sll        $v1, $v1, 3
    /* B2CB4 800C24B4 21186500 */  addu       $v1, $v1, $a1
    /* B2CB8 800C24B8 0400638C */  lw         $v1, 0x4($v1)
    /* B2CBC 800C24BC FFFF2925 */  addiu      $t1, $t1, -0x1
    /* B2CC0 800C24C0 21104300 */  addu       $v0, $v0, $v1
    /* B2CC4 800C24C4 040082AC */  sw         $v0, 0x4($a0)
    /* B2CC8 800C24C8 EDFF2105 */  bgez       $t1, .L800C2480
    /* B2CCC 800C24CC F8FF8424 */   addiu     $a0, $a0, -0x8
  .L800C24D0:
    /* B2CD0 800C24D0 0800E003 */  jr         $ra
    /* B2CD4 800C24D4 00000000 */   nop
endlabel func_800C21D8
