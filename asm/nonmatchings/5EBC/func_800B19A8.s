nonmatching func_800B19A8, 0x28C

glabel func_800B19A8
    /* A21A8 800B19A8 00008F84 */  lh         $t7, 0x0($a0)
    /* A21AC 800B19AC 2110A000 */  addu       $v0, $a1, $zero
    /* A21B0 800B19B0 0E00E105 */  bgez       $t7, .L800B19EC
    /* A21B4 800B19B4 FF0FF931 */   andi      $t9, $t7, 0xFFF
    /* A21B8 800B19B8 23780F00 */  negu       $t7, $t7
    /* A21BC 800B19BC 0100E105 */  bgez       $t7, .L800B19C4
    /* A21C0 800B19C0 FF0FEF31 */   andi      $t7, $t7, 0xFFF
  .L800B19C4:
    /* A21C4 800B19C4 80C00F00 */  sll        $t8, $t7, 2
    /* A21C8 800B19C8 0D80193C */  lui        $t9, %hi(D_800CED64)
    /* A21CC 800B19CC 21C83803 */  addu       $t9, $t9, $t8
    /* A21D0 800B19D0 64ED398F */  lw         $t9, %lo(D_800CED64)($t9)
    /* A21D4 800B19D4 00000000 */  nop
    /* A21D8 800B19D8 00741900 */  sll        $t6, $t9, 16
    /* A21DC 800B19DC 03740E00 */  sra        $t6, $t6, 16
    /* A21E0 800B19E0 23580E00 */  negu       $t3, $t6
    /* A21E4 800B19E4 83C60208 */  j          .L800B1A0C
    /* A21E8 800B19E8 03441900 */   sra       $t0, $t9, 16
  .L800B19EC:
    /* A21EC 800B19EC 80C01900 */  sll        $t8, $t9, 2
    /* A21F0 800B19F0 0D80193C */  lui        $t9, %hi(D_800CED64)
    /* A21F4 800B19F4 21C83803 */  addu       $t9, $t9, $t8
    /* A21F8 800B19F8 64ED398F */  lw         $t9, %lo(D_800CED64)($t9)
    /* A21FC 800B19FC 00000000 */  nop
    /* A2200 800B1A00 00C41900 */  sll        $t8, $t9, 16
    /* A2204 800B1A04 035C1800 */  sra        $t3, $t8, 16
    /* A2208 800B1A08 03441900 */  sra        $t0, $t9, 16
  .L800B1A0C:
    /* A220C 800B1A0C 02008F84 */  lh         $t7, 0x2($a0)
    /* A2210 800B1A10 00000000 */  nop
    /* A2214 800B1A14 0E00E105 */  bgez       $t7, .L800B1A50
    /* A2218 800B1A18 FF0FF931 */   andi      $t9, $t7, 0xFFF
    /* A221C 800B1A1C 23780F00 */  negu       $t7, $t7
    /* A2220 800B1A20 0100E105 */  bgez       $t7, .L800B1A28
    /* A2224 800B1A24 FF0FEF31 */   andi      $t7, $t7, 0xFFF
  .L800B1A28:
    /* A2228 800B1A28 80C00F00 */  sll        $t8, $t7, 2
    /* A222C 800B1A2C 0D80193C */  lui        $t9, %hi(D_800CED64)
    /* A2230 800B1A30 21C83803 */  addu       $t9, $t9, $t8
    /* A2234 800B1A34 64ED398F */  lw         $t9, %lo(D_800CED64)($t9)
    /* A2238 800B1A38 00000000 */  nop
    /* A223C 800B1A3C 00741900 */  sll        $t6, $t9, 16
    /* A2240 800B1A40 03740E00 */  sra        $t6, $t6, 16
    /* A2244 800B1A44 23600E00 */  negu       $t4, $t6
    /* A2248 800B1A48 9DC60208 */  j          .L800B1A74
    /* A224C 800B1A4C 034C1900 */   sra       $t1, $t9, 16
  .L800B1A50:
    /* A2250 800B1A50 80C01900 */  sll        $t8, $t9, 2
    /* A2254 800B1A54 0D80193C */  lui        $t9, %hi(D_800CED64)
    /* A2258 800B1A58 21C83803 */  addu       $t9, $t9, $t8
    /* A225C 800B1A5C 64ED398F */  lw         $t9, %lo(D_800CED64)($t9)
    /* A2260 800B1A60 00000000 */  nop
    /* A2264 800B1A64 00741900 */  sll        $t6, $t9, 16
    /* A2268 800B1A68 03640E00 */  sra        $t4, $t6, 16
    /* A226C 800B1A6C 23700C00 */  negu       $t6, $t4
    /* A2270 800B1A70 034C1900 */  sra        $t1, $t9, 16
  .L800B1A74:
    /* A2274 800B1A74 19006901 */  multu      $t3, $t1
    /* A2278 800B1A78 04008F84 */  lh         $t7, 0x4($a0)
    /* A227C 800B1A7C 0C00AEA4 */  sh         $t6, 0xC($a1)
    /* A2280 800B1A80 12C00000 */  mflo       $t8
    /* A2284 800B1A84 03731800 */  sra        $t6, $t8, 12
    /* A2288 800B1A88 00000000 */  nop
    /* A228C 800B1A8C 19000901 */  multu      $t0, $t1
    /* A2290 800B1A90 0E00AEA4 */  sh         $t6, 0xE($a1)
    /* A2294 800B1A94 1100E105 */  bgez       $t7, .L800B1ADC
    /* A2298 800B1A98 FF0FF931 */   andi      $t9, $t7, 0xFFF
    /* A229C 800B1A9C 12C00000 */  mflo       $t8
    /* A22A0 800B1AA0 03731800 */  sra        $t6, $t8, 12
    /* A22A4 800B1AA4 1000AEA4 */  sh         $t6, 0x10($a1)
    /* A22A8 800B1AA8 23780F00 */  negu       $t7, $t7
    /* A22AC 800B1AAC 0100E105 */  bgez       $t7, .L800B1AB4
    /* A22B0 800B1AB0 FF0FEF31 */   andi      $t7, $t7, 0xFFF
  .L800B1AB4:
    /* A22B4 800B1AB4 80C00F00 */  sll        $t8, $t7, 2
    /* A22B8 800B1AB8 0D80193C */  lui        $t9, %hi(D_800CED64)
    /* A22BC 800B1ABC 21C83803 */  addu       $t9, $t9, $t8
    /* A22C0 800B1AC0 64ED398F */  lw         $t9, %lo(D_800CED64)($t9)
    /* A22C4 800B1AC4 00000000 */  nop
    /* A22C8 800B1AC8 00C41900 */  sll        $t8, $t9, 16
    /* A22CC 800B1ACC 03C41800 */  sra        $t8, $t8, 16
    /* A22D0 800B1AD0 23681800 */  negu       $t5, $t8
    /* A22D4 800B1AD4 C2C60208 */  j          .L800B1B08
    /* A22D8 800B1AD8 03541900 */   sra       $t2, $t9, 16
  .L800B1ADC:
    /* A22DC 800B1ADC 12780000 */  mflo       $t7
    /* A22E0 800B1AE0 03730F00 */  sra        $t6, $t7, 12
    /* A22E4 800B1AE4 1000AEA4 */  sh         $t6, 0x10($a1)
    /* A22E8 800B1AE8 80C01900 */  sll        $t8, $t9, 2
    /* A22EC 800B1AEC 0D80193C */  lui        $t9, %hi(D_800CED64)
    /* A22F0 800B1AF0 21C83803 */  addu       $t9, $t9, $t8
    /* A22F4 800B1AF4 64ED398F */  lw         $t9, %lo(D_800CED64)($t9)
    /* A22F8 800B1AF8 00000000 */  nop
    /* A22FC 800B1AFC 00C41900 */  sll        $t8, $t9, 16
    /* A2300 800B1B00 036C1800 */  sra        $t5, $t8, 16
    /* A2304 800B1B04 03541900 */  sra        $t2, $t9, 16
  .L800B1B08:
    /* A2308 800B1B08 19002A01 */  multu      $t1, $t2
    /* A230C 800B1B0C 00000000 */  nop
    /* A2310 800B1B10 00000000 */  nop
    /* A2314 800B1B14 12780000 */  mflo       $t7
    /* A2318 800B1B18 03730F00 */  sra        $t6, $t7, 12
    /* A231C 800B1B1C 0000AEA4 */  sh         $t6, 0x0($a1)
    /* A2320 800B1B20 1900A901 */  multu      $t5, $t1
    /* A2324 800B1B24 00000000 */  nop
    /* A2328 800B1B28 00000000 */  nop
    /* A232C 800B1B2C 12780000 */  mflo       $t7
    /* A2330 800B1B30 03730F00 */  sra        $t6, $t7, 12
    /* A2334 800B1B34 00000000 */  nop
    /* A2338 800B1B38 19006C01 */  multu      $t3, $t4
    /* A233C 800B1B3C 0600AEA4 */  sh         $t6, 0x6($a1)
    /* A2340 800B1B40 00000000 */  nop
    /* A2344 800B1B44 12780000 */  mflo       $t7
    /* A2348 800B1B48 03C30F00 */  sra        $t8, $t7, 12
    /* A234C 800B1B4C 00000000 */  nop
    /* A2350 800B1B50 19000A03 */  multu      $t8, $t2
    /* A2354 800B1B54 00000000 */  nop
    /* A2358 800B1B58 00000000 */  nop
    /* A235C 800B1B5C 12780000 */  mflo       $t7
    /* A2360 800B1B60 03730F00 */  sra        $t6, $t7, 12
    /* A2364 800B1B64 00000000 */  nop
    /* A2368 800B1B68 1900A801 */  multu      $t5, $t0
    /* A236C 800B1B6C 00000000 */  nop
    /* A2370 800B1B70 00000000 */  nop
    /* A2374 800B1B74 12780000 */  mflo       $t7
    /* A2378 800B1B78 03CB0F00 */  sra        $t9, $t7, 12
    /* A237C 800B1B7C 2378D901 */  subu       $t7, $t6, $t9
    /* A2380 800B1B80 19000A01 */  multu      $t0, $t2
    /* A2384 800B1B84 0200AFA4 */  sh         $t7, 0x2($a1)
    /* A2388 800B1B88 00000000 */  nop
    /* A238C 800B1B8C 12700000 */  mflo       $t6
    /* A2390 800B1B90 037B0E00 */  sra        $t7, $t6, 12
    /* A2394 800B1B94 00000000 */  nop
    /* A2398 800B1B98 19000D03 */  multu      $t8, $t5
    /* A239C 800B1B9C 00000000 */  nop
    /* A23A0 800B1BA0 00000000 */  nop
    /* A23A4 800B1BA4 12700000 */  mflo       $t6
    /* A23A8 800B1BA8 03CB0E00 */  sra        $t9, $t6, 12
    /* A23AC 800B1BAC 21702F03 */  addu       $t6, $t9, $t7
    /* A23B0 800B1BB0 19008801 */  multu      $t4, $t0
    /* A23B4 800B1BB4 0800AEA4 */  sh         $t6, 0x8($a1)
    /* A23B8 800B1BB8 00000000 */  nop
    /* A23BC 800B1BBC 12780000 */  mflo       $t7
    /* A23C0 800B1BC0 03C30F00 */  sra        $t8, $t7, 12
    /* A23C4 800B1BC4 00000000 */  nop
    /* A23C8 800B1BC8 19000A03 */  multu      $t8, $t2
    /* A23CC 800B1BCC 00000000 */  nop
    /* A23D0 800B1BD0 00000000 */  nop
    /* A23D4 800B1BD4 12780000 */  mflo       $t7
    /* A23D8 800B1BD8 03730F00 */  sra        $t6, $t7, 12
    /* A23DC 800B1BDC 00000000 */  nop
    /* A23E0 800B1BE0 19006D01 */  multu      $t3, $t5
    /* A23E4 800B1BE4 00000000 */  nop
    /* A23E8 800B1BE8 00000000 */  nop
    /* A23EC 800B1BEC 12780000 */  mflo       $t7
    /* A23F0 800B1BF0 03CB0F00 */  sra        $t9, $t7, 12
    /* A23F4 800B1BF4 2178D901 */  addu       $t7, $t6, $t9
    /* A23F8 800B1BF8 19006A01 */  multu      $t3, $t2
    /* A23FC 800B1BFC 0400AFA4 */  sh         $t7, 0x4($a1)
    /* A2400 800B1C00 00000000 */  nop
    /* A2404 800B1C04 12700000 */  mflo       $t6
    /* A2408 800B1C08 037B0E00 */  sra        $t7, $t6, 12
    /* A240C 800B1C0C 00000000 */  nop
    /* A2410 800B1C10 19000D03 */  multu      $t8, $t5
    /* A2414 800B1C14 00000000 */  nop
    /* A2418 800B1C18 00000000 */  nop
    /* A241C 800B1C1C 12700000 */  mflo       $t6
    /* A2420 800B1C20 03CB0E00 */  sra        $t9, $t6, 12
    /* A2424 800B1C24 23702F03 */  subu       $t6, $t9, $t7
    /* A2428 800B1C28 0A00AEA4 */  sh         $t6, 0xA($a1)
    /* A242C 800B1C2C 0800E003 */  jr         $ra
    /* A2430 800B1C30 00000000 */   nop
endlabel func_800B19A8
    /* A2434 800B1C34 00000000 */  nop
