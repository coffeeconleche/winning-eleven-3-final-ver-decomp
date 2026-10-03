nonmatching func_801AC0B4, 0x924

glabel func_801AC0B4
    /* 2313C 801AC0B4 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 23140 801AC0B8 4000B4AF */  sw         $s4, 0x40($sp)
    /* 23144 801AC0BC 21A0A000 */  addu       $s4, $a1, $zero
    /* 23148 801AC0C0 4400B5AF */  sw         $s5, 0x44($sp)
    /* 2314C 801AC0C4 21A8C000 */  addu       $s5, $a2, $zero
    /* 23150 801AC0C8 5000BEAF */  sw         $fp, 0x50($sp)
    /* 23154 801AC0CC 10801E3C */  lui        $fp, %hi(D_800FF748)
    /* 23158 801AC0D0 48F7DE27 */  addiu      $fp, $fp, %lo(D_800FF748)
    /* 2315C 801AC0D4 5400BFAF */  sw         $ra, 0x54($sp)
    /* 23160 801AC0D8 4C00B7AF */  sw         $s7, 0x4C($sp)
    /* 23164 801AC0DC 4800B6AF */  sw         $s6, 0x48($sp)
    /* 23168 801AC0E0 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 2316C 801AC0E4 3800B2AF */  sw         $s2, 0x38($sp)
    /* 23170 801AC0E8 3400B1AF */  sw         $s1, 0x34($sp)
    /* 23174 801AC0EC 12008104 */  bgez       $a0, .L801AC138
    /* 23178 801AC0F0 3000B0AF */   sw        $s0, 0x30($sp)
    /* 2317C 801AC0F4 90000224 */  addiu      $v0, $zero, 0x90
  .L801AC0F8:
    /* 23180 801AC0F8 1E80013C */  lui        $at, %hi(D_801D8FA0)
    /* 23184 801AC0FC 21082200 */  addu       $at, $at, $v0
    /* 23188 801AC100 A08F20A0 */  sb         $zero, %lo(D_801D8FA0)($at)
    /* 2318C 801AC104 E8FF4224 */  addiu      $v0, $v0, -0x18
    /* 23190 801AC108 FBFF4104 */  bgez       $v0, .L801AC0F8
    /* 23194 801AC10C 00000000 */   nop
    /* 23198 801AC110 1E80013C */  lui        $at, %hi(D_801D92DB)
    /* 2319C 801AC114 DB9220A0 */  sb         $zero, %lo(D_801D92DB)($at)
    /* 231A0 801AC118 1E80013C */  lui        $at, %hi(D_801D92A3)
    /* 231A4 801AC11C A39220A0 */  sb         $zero, %lo(D_801D92A3)($at)
    /* 231A8 801AC120 1E80013C */  lui        $at, %hi(D_801D92BF)
    /* 231AC 801AC124 BF9220A0 */  sb         $zero, %lo(D_801D92BF)($at)
    /* 231B0 801AC128 88AD020C */  jal        func_800AB620
    /* 231B4 801AC12C 29050424 */   addiu     $a0, $zero, 0x529
    /* 231B8 801AC130 69B20608 */  j          .L801AC9A4
    /* 231BC 801AC134 00000000 */   nop
  .L801AC138:
    /* 231C0 801AC138 9CFF0224 */  addiu      $v0, $zero, -0x64
    /* 231C4 801AC13C 1E80013C */  lui        $at, %hi(D_801D8D78)
    /* 231C8 801AC140 788D22A4 */  sh         $v0, %lo(D_801D8D78)($at)
    /* 231CC 801AC144 C0FF0224 */  addiu      $v0, $zero, -0x40
    /* 231D0 801AC148 1E80013C */  lui        $at, %hi(D_801D8D7A)
    /* 231D4 801AC14C 7A8D22A4 */  sh         $v0, %lo(D_801D8D7A)($at)
    /* 231D8 801AC150 C8000224 */  addiu      $v0, $zero, 0xC8
    /* 231DC 801AC154 1E80013C */  lui        $at, %hi(D_801D8D7C)
    /* 231E0 801AC158 7C8D22A4 */  sh         $v0, %lo(D_801D8D7C)($at)
    /* 231E4 801AC15C 7A000224 */  addiu      $v0, $zero, 0x7A
    /* 231E8 801AC160 1E80013C */  lui        $at, %hi(D_801D8D7E)
    /* 231EC 801AC164 7E8D22A4 */  sh         $v0, %lo(D_801D8D7E)($at)
    /* 231F0 801AC168 C0000224 */  addiu      $v0, $zero, 0xC0
    /* 231F4 801AC16C 1E80013C */  lui        $at, %hi(D_801D8D80)
    /* 231F8 801AC170 808D22A0 */  sb         $v0, %lo(D_801D8D80)($at)
    /* 231FC 801AC174 1E80013C */  lui        $at, %hi(D_801D8D81)
    /* 23200 801AC178 818D22A0 */  sb         $v0, %lo(D_801D8D81)($at)
    /* 23204 801AC17C 1E80013C */  lui        $at, %hi(D_801D8D82)
    /* 23208 801AC180 828D22A0 */  sb         $v0, %lo(D_801D8D82)($at)
    /* 2320C 801AC184 FF008232 */  andi       $v0, $s4, 0xFF
    /* 23210 801AC188 21105E00 */  addu       $v0, $v0, $fp
    /* 23214 801AC18C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 23218 801AC190 21084100 */  addu       $at, $v0, $at
    /* 2321C 801AC194 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 23220 801AC198 00000000 */  nop
    /* 23224 801AC19C C0100300 */  sll        $v0, $v1, 3
    /* 23228 801AC1A0 21104300 */  addu       $v0, $v0, $v1
    /* 2322C 801AC1A4 80100200 */  sll        $v0, $v0, 2
    /* 23230 801AC1A8 21105E00 */  addu       $v0, $v0, $fp
    /* 23234 801AC1AC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 23238 801AC1B0 21084100 */  addu       $at, $v0, $at
    /* 2323C 801AC1B4 248F2290 */  lbu        $v0, -0x70DC($at)
    /* 23240 801AC1B8 40000324 */  addiu      $v1, $zero, 0x40
    /* 23244 801AC1BC C0004230 */  andi       $v0, $v0, 0xC0
    /* 23248 801AC1C0 0A004314 */  bne        $v0, $v1, .L801AC1EC
    /* 2324C 801AC1C4 80000224 */   addiu     $v0, $zero, 0x80
    /* 23250 801AC1C8 A0000224 */  addiu      $v0, $zero, 0xA0
    /* 23254 801AC1CC 1E80013C */  lui        $at, %hi(D_801D8D83)
    /* 23258 801AC1D0 838D22A0 */  sb         $v0, %lo(D_801D8D83)($at)
    /* 2325C 801AC1D4 1E80013C */  lui        $at, %hi(D_801D8D84)
    /* 23260 801AC1D8 848D22A0 */  sb         $v0, %lo(D_801D8D84)($at)
    /* 23264 801AC1DC 1E80013C */  lui        $at, %hi(D_801D8D85)
    /* 23268 801AC1E0 858D20A0 */  sb         $zero, %lo(D_801D8D85)($at)
    /* 2326C 801AC1E4 83B00608 */  j          .L801AC20C
    /* 23270 801AC1E8 02000424 */   addiu     $a0, $zero, 0x2
  .L801AC1EC:
    /* 23274 801AC1EC 1E80013C */  lui        $at, %hi(D_801D8D84)
    /* 23278 801AC1F0 848D22A0 */  sb         $v0, %lo(D_801D8D84)($at)
    /* 2327C 801AC1F4 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 23280 801AC1F8 1E80013C */  lui        $at, %hi(D_801D8D83)
    /* 23284 801AC1FC 838D20A0 */  sb         $zero, %lo(D_801D8D83)($at)
    /* 23288 801AC200 1E80013C */  lui        $at, %hi(D_801D8D85)
    /* 2328C 801AC204 858D22A0 */  sb         $v0, %lo(D_801D8D85)($at)
    /* 23290 801AC208 02000424 */  addiu      $a0, $zero, 0x2
  .L801AC20C:
    /* 23294 801AC20C 0060053C */  lui        $a1, (0x60000000 >> 16)
    /* 23298 801AC210 1E80063C */  lui        $a2, %hi(D_801D8D78)
    /* 2329C 801AC214 788DC624 */  addiu      $a2, $a2, %lo(D_801D8D78)
    /* 232A0 801AC218 01000724 */  addiu      $a3, $zero, 0x1
    /* 232A4 801AC21C 02000224 */  addiu      $v0, $zero, 0x2
    /* 232A8 801AC220 1000A2AF */  sw         $v0, 0x10($sp)
    /* 232AC 801AC224 01000224 */  addiu      $v0, $zero, 0x1
    /* 232B0 801AC228 3B50060C */  jal        func_801940EC
    /* 232B4 801AC22C 1400A2AF */   sw        $v0, 0x14($sp)
    /* 232B8 801AC230 1D000224 */  addiu      $v0, $zero, 0x1D
    /* 232BC 801AC234 1E80013C */  lui        $at, %hi(D_801D8D7E)
    /* 232C0 801AC238 7E8D22A4 */  sh         $v0, %lo(D_801D8D7E)($at)
    /* 232C4 801AC23C FF008232 */  andi       $v0, $s4, 0xFF
    /* 232C8 801AC240 2110C203 */  addu       $v0, $fp, $v0
    /* 232CC 801AC244 0100013C */  lui        $at, (0x10000 >> 16)
    /* 232D0 801AC248 21084100 */  addu       $at, $v0, $at
    /* 232D4 801AC24C 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 232D8 801AC250 00000000 */  nop
    /* 232DC 801AC254 C0100300 */  sll        $v0, $v1, 3
    /* 232E0 801AC258 21104300 */  addu       $v0, $v0, $v1
    /* 232E4 801AC25C 80100200 */  sll        $v0, $v0, 2
    /* 232E8 801AC260 2110C203 */  addu       $v0, $fp, $v0
    /* 232EC 801AC264 0100013C */  lui        $at, (0x10000 >> 16)
    /* 232F0 801AC268 21084100 */  addu       $at, $v0, $at
    /* 232F4 801AC26C 248F2290 */  lbu        $v0, -0x70DC($at)
    /* 232F8 801AC270 40000324 */  addiu      $v1, $zero, 0x40
    /* 232FC 801AC274 C0004230 */  andi       $v0, $v0, 0xC0
    /* 23300 801AC278 0A004314 */  bne        $v0, $v1, .L801AC2A4
    /* 23304 801AC27C 21200000 */   addu      $a0, $zero, $zero
    /* 23308 801AC280 80000224 */  addiu      $v0, $zero, 0x80
    /* 2330C 801AC284 1E80013C */  lui        $at, %hi(D_801D8D80)
    /* 23310 801AC288 808D22A0 */  sb         $v0, %lo(D_801D8D80)($at)
    /* 23314 801AC28C 1E80013C */  lui        $at, %hi(D_801D8D81)
    /* 23318 801AC290 818D22A0 */  sb         $v0, %lo(D_801D8D81)($at)
    /* 2331C 801AC294 1E80013C */  lui        $at, %hi(D_801D8D82)
    /* 23320 801AC298 828D20A0 */  sb         $zero, %lo(D_801D8D82)($at)
    /* 23324 801AC29C B1B00608 */  j          .L801AC2C4
    /* 23328 801AC2A0 00000000 */   nop
  .L801AC2A4:
    /* 2332C 801AC2A4 60000224 */  addiu      $v0, $zero, 0x60
    /* 23330 801AC2A8 1E80013C */  lui        $at, %hi(D_801D8D81)
    /* 23334 801AC2AC 818D22A0 */  sb         $v0, %lo(D_801D8D81)($at)
    /* 23338 801AC2B0 A0000224 */  addiu      $v0, $zero, 0xA0
    /* 2333C 801AC2B4 1E80013C */  lui        $at, %hi(D_801D8D80)
    /* 23340 801AC2B8 808D20A0 */  sb         $zero, %lo(D_801D8D80)($at)
    /* 23344 801AC2BC 1E80013C */  lui        $at, %hi(D_801D8D82)
    /* 23348 801AC2C0 828D22A0 */  sb         $v0, %lo(D_801D8D82)($at)
  .L801AC2C4:
    /* 2334C 801AC2C4 0070053C */  lui        $a1, (0x70000000 >> 16)
    /* 23350 801AC2C8 1E80113C */  lui        $s1, %hi(D_801D8D78)
    /* 23354 801AC2CC 788D3126 */  addiu      $s1, $s1, %lo(D_801D8D78)
    /* 23358 801AC2D0 21302002 */  addu       $a2, $s1, $zero
    /* 2335C 801AC2D4 01000724 */  addiu      $a3, $zero, 0x1
    /* 23360 801AC2D8 02001224 */  addiu      $s2, $zero, 0x2
    /* 23364 801AC2DC 01001024 */  addiu      $s0, $zero, 0x1
    /* 23368 801AC2E0 1000B2AF */  sw         $s2, 0x10($sp)
    /* 2336C 801AC2E4 3B50060C */  jal        func_801940EC
    /* 23370 801AC2E8 1400B0AF */   sw        $s0, 0x14($sp)
    /* 23374 801AC2EC 01000424 */  addiu      $a0, $zero, 0x1
    /* 23378 801AC2F0 0070053C */  lui        $a1, (0x70000000 >> 16)
    /* 2337C 801AC2F4 21302002 */  addu       $a2, $s1, $zero
    /* 23380 801AC2F8 01000724 */  addiu      $a3, $zero, 0x1
    /* 23384 801AC2FC 9CFF0224 */  addiu      $v0, $zero, -0x64
    /* 23388 801AC300 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 2338C 801AC304 27000224 */  addiu      $v0, $zero, 0x27
    /* 23390 801AC308 1E80013C */  lui        $at, %hi(D_801D8D7A)
    /* 23394 801AC30C 7A8D22A4 */  sh         $v0, %lo(D_801D8D7A)($at)
    /* 23398 801AC310 C8000224 */  addiu      $v0, $zero, 0xC8
    /* 2339C 801AC314 1E80013C */  lui        $at, %hi(D_801D8D7C)
    /* 233A0 801AC318 7C8D22A4 */  sh         $v0, %lo(D_801D8D7C)($at)
    /* 233A4 801AC31C 13000224 */  addiu      $v0, $zero, 0x13
    /* 233A8 801AC320 1E80013C */  lui        $at, %hi(D_801D8D7E)
    /* 233AC 801AC324 7E8D22A4 */  sh         $v0, %lo(D_801D8D7E)($at)
    /* 233B0 801AC328 1000B2AF */  sw         $s2, 0x10($sp)
    /* 233B4 801AC32C 3B50060C */  jal        func_801940EC
    /* 233B8 801AC330 1400B0AF */   sw        $s0, 0x14($sp)
    /* 233BC 801AC334 05000424 */  addiu      $a0, $zero, 0x5
    /* 233C0 801AC338 1D80053C */  lui        $a1, %hi(D_801D2718)
    /* 233C4 801AC33C 1827A524 */  addiu      $a1, $a1, %lo(D_801D2718)
    /* 233C8 801AC340 BAFF0624 */  addiu      $a2, $zero, -0x46
    /* 233CC 801AC344 28000724 */  addiu      $a3, $zero, 0x28
    /* 233D0 801AC348 8C000224 */  addiu      $v0, $zero, 0x8C
    /* 233D4 801AC34C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 233D8 801AC350 03000224 */  addiu      $v0, $zero, 0x3
    /* 233DC 801AC354 1400A2AF */  sw         $v0, 0x14($sp)
    /* 233E0 801AC358 1800A0AF */  sw         $zero, 0x18($sp)
    /* 233E4 801AC35C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 233E8 801AC360 2000A0AF */  sw         $zero, 0x20($sp)
    /* 233EC 801AC364 2400B0AF */  sw         $s0, 0x24($sp)
    /* 233F0 801AC368 2800B0AF */  sw         $s0, 0x28($sp)
    /* 233F4 801AC36C B850060C */  jal        func_801942E0
    /* 233F8 801AC370 2C00B0AF */   sw        $s0, 0x2C($sp)
    /* 233FC 801AC374 2C000424 */  addiu      $a0, $zero, 0x2C
    /* 23400 801AC378 1E80023C */  lui        $v0, %hi(D_801D86BC)
    /* 23404 801AC37C BC864224 */  addiu      $v0, $v0, %lo(D_801D86BC)
    /* 23408 801AC380 1E80013C */  lui        $at, %hi(D_801D9030)
    /* 2340C 801AC384 309020A0 */  sb         $zero, %lo(D_801D9030)($at)
  .L801AC388:
    /* 23410 801AC388 000040A0 */  sb         $zero, 0x0($v0)
    /* 23414 801AC38C FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 23418 801AC390 FDFF8104 */  bgez       $a0, .L801AC388
    /* 2341C 801AC394 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 23420 801AC398 1E80083C */  lui        $t0, %hi(D_801D8690)
    /* 23424 801AC39C 90860825 */  addiu      $t0, $t0, %lo(D_801D8690)
    /* 23428 801AC3A0 1F000224 */  addiu      $v0, $zero, 0x1F
    /* 2342C 801AC3A4 FF009032 */  andi       $s0, $s4, 0xFF
    /* 23430 801AC3A8 2180D003 */  addu       $s0, $fp, $s0
    /* 23434 801AC3AC 000002A1 */  sb         $v0, 0x0($t0)
    /* 23438 801AC3B0 80AB0234 */  ori        $v0, $zero, 0xAB80
    /* 2343C 801AC3B4 21800202 */  addu       $s0, $s0, $v0
    /* 23440 801AC3B8 00000392 */  lbu        $v1, 0x0($s0)
    /* 23444 801AC3BC 01000825 */  addiu      $t0, $t0, 0x1
    /* 23448 801AC3C0 C0100300 */  sll        $v0, $v1, 3
    /* 2344C 801AC3C4 21104300 */  addu       $v0, $v0, $v1
    /* 23450 801AC3C8 80100200 */  sll        $v0, $v0, 2
    /* 23454 801AC3CC 2110C203 */  addu       $v0, $fp, $v0
    /* 23458 801AC3D0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2345C 801AC3D4 21084100 */  addu       $at, $v0, $at
    /* 23460 801AC3D8 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 23464 801AC3DC 20001124 */  addiu      $s1, $zero, 0x20
    /* 23468 801AC3E0 000002A1 */  sb         $v0, 0x0($t0)
    /* 2346C 801AC3E4 01000825 */  addiu      $t0, $t0, 0x1
    /* 23470 801AC3E8 000011A1 */  sb         $s1, 0x0($t0)
    /* 23474 801AC3EC 00000392 */  lbu        $v1, 0x0($s0)
    /* 23478 801AC3F0 04000524 */  addiu      $a1, $zero, 0x4
    /* 2347C 801AC3F4 C0100300 */  sll        $v0, $v1, 3
    /* 23480 801AC3F8 21104300 */  addu       $v0, $v0, $v1
    /* 23484 801AC3FC 80100200 */  sll        $v0, $v0, 2
    /* 23488 801AC400 2110C203 */  addu       $v0, $fp, $v0
    /* 2348C 801AC404 0100013C */  lui        $at, (0x10000 >> 16)
    /* 23490 801AC408 21084100 */  addu       $at, $v0, $at
    /* 23494 801AC40C 248F2790 */  lbu        $a3, -0x70DC($at)
    /* 23498 801AC410 01000425 */  addiu      $a0, $t0, 0x1
    /* 2349C 801AC414 C000E630 */  andi       $a2, $a3, 0xC0
    /* 234A0 801AC418 3F00E730 */  andi       $a3, $a3, 0x3F
    /* 234A4 801AC41C 5AA4060C */  jal        func_801A9168
    /* 234A8 801AC420 0100E724 */   addiu     $a3, $a3, 0x1
    /* 234AC 801AC424 21404000 */  addu       $t0, $v0, $zero
    /* 234B0 801AC428 000011A1 */  sb         $s1, 0x0($t0)
    /* 234B4 801AC42C 01000825 */  addiu      $t0, $t0, 0x1
    /* 234B8 801AC430 0B000224 */  addiu      $v0, $zero, 0xB
    /* 234BC 801AC434 000002A1 */  sb         $v0, 0x0($t0)
    /* 234C0 801AC438 01000825 */  addiu      $t0, $t0, 0x1
    /* 234C4 801AC43C FF000224 */  addiu      $v0, $zero, 0xFF
    /* 234C8 801AC440 000002A1 */  sb         $v0, 0x0($t0)
    /* 234CC 801AC444 01000825 */  addiu      $t0, $t0, 0x1
    /* 234D0 801AC448 09000224 */  addiu      $v0, $zero, 0x9
    /* 234D4 801AC44C 000002A1 */  sb         $v0, 0x0($t0)
    /* 234D8 801AC450 01000825 */  addiu      $t0, $t0, 0x1
    /* 234DC 801AC454 3C000224 */  addiu      $v0, $zero, 0x3C
    /* 234E0 801AC458 000002A1 */  sb         $v0, 0x0($t0)
    /* 234E4 801AC45C 00000392 */  lbu        $v1, 0x0($s0)
    /* 234E8 801AC460 00000000 */  nop
    /* 234EC 801AC464 C0100300 */  sll        $v0, $v1, 3
    /* 234F0 801AC468 21104300 */  addu       $v0, $v0, $v1
    /* 234F4 801AC46C 80100200 */  sll        $v0, $v0, 2
    /* 234F8 801AC470 2110C203 */  addu       $v0, $fp, $v0
    /* 234FC 801AC474 0100013C */  lui        $at, (0x10000 >> 16)
    /* 23500 801AC478 21084100 */  addu       $at, $v0, $at
    /* 23504 801AC47C 258F2390 */  lbu        $v1, -0x70DB($at)
    /* 23508 801AC480 23000224 */  addiu      $v0, $zero, 0x23
    /* 2350C 801AC484 07006214 */  bne        $v1, $v0, .L801AC4A4
    /* 23510 801AC488 01000825 */   addiu     $t0, $t0, 0x1
    /* 23514 801AC48C 1D000224 */  addiu      $v0, $zero, 0x1D
    /* 23518 801AC490 000002A1 */  sb         $v0, 0x0($t0)
    /* 2351C 801AC494 01000825 */  addiu      $t0, $t0, 0x1
    /* 23520 801AC498 000015A1 */  sb         $s5, 0x0($t0)
    /* 23524 801AC49C 3FB10608 */  j          .L801AC4FC
    /* 23528 801AC4A0 01000825 */   addiu     $t0, $t0, 0x1
  .L801AC4A4:
    /* 2352C 801AC4A4 40100300 */  sll        $v0, $v1, 1
    /* 23530 801AC4A8 21104300 */  addu       $v0, $v0, $v1
    /* 23534 801AC4AC 80100200 */  sll        $v0, $v0, 2
    /* 23538 801AC4B0 23104300 */  subu       $v0, $v0, $v1
    /* 2353C 801AC4B4 00110200 */  sll        $v0, $v0, 4
    /* 23540 801AC4B8 FF00A332 */  andi       $v1, $s5, 0xFF
    /* 23544 801AC4BC C0180300 */  sll        $v1, $v1, 3
    /* 23548 801AC4C0 0D80043C */  lui        $a0, %hi(D_800C8568)
    /* 2354C 801AC4C4 68858424 */  addiu      $a0, $a0, %lo(D_800C8568)
    /* 23550 801AC4C8 21186400 */  addu       $v1, $v1, $a0
    /* 23554 801AC4CC 21184300 */  addu       $v1, $v0, $v1
    /* 23558 801AC4D0 01000424 */  addiu      $a0, $zero, 0x1
  .L801AC4D4:
    /* 2355C 801AC4D4 00006290 */  lbu        $v0, 0x0($v1)
    /* 23560 801AC4D8 01006324 */  addiu      $v1, $v1, 0x1
    /* 23564 801AC4DC 000002A1 */  sb         $v0, 0x0($t0)
    /* 23568 801AC4E0 05004010 */  beqz       $v0, .L801AC4F8
    /* 2356C 801AC4E4 01000825 */   addiu     $t0, $t0, 0x1
    /* 23570 801AC4E8 21108000 */  addu       $v0, $a0, $zero
    /* 23574 801AC4EC 08004228 */  slti       $v0, $v0, 0x8
    /* 23578 801AC4F0 F8FF4014 */  bnez       $v0, .L801AC4D4
    /* 2357C 801AC4F4 01008424 */   addiu     $a0, $a0, 0x1
  .L801AC4F8:
    /* 23580 801AC4F8 FFFF0825 */  addiu      $t0, $t0, -0x1
  .L801AC4FC:
    /* 23584 801AC4FC 0B000224 */  addiu      $v0, $zero, 0xB
    /* 23588 801AC500 000002A1 */  sb         $v0, 0x0($t0)
    /* 2358C 801AC504 01000825 */  addiu      $t0, $t0, 0x1
    /* 23590 801AC508 0F000224 */  addiu      $v0, $zero, 0xF
    /* 23594 801AC50C 000002A1 */  sb         $v0, 0x0($t0)
    /* 23598 801AC510 01000825 */  addiu      $t0, $t0, 0x1
    /* 2359C 801AC514 09000224 */  addiu      $v0, $zero, 0x9
    /* 235A0 801AC518 000002A1 */  sb         $v0, 0x0($t0)
    /* 235A4 801AC51C 01000825 */  addiu      $t0, $t0, 0x1
    /* 235A8 801AC520 3C000224 */  addiu      $v0, $zero, 0x3C
    /* 235AC 801AC524 000002A1 */  sb         $v0, 0x0($t0)
    /* 235B0 801AC528 01000825 */  addiu      $t0, $t0, 0x1
    /* 235B4 801AC52C 1A000224 */  addiu      $v0, $zero, 0x1A
    /* 235B8 801AC530 000002A1 */  sb         $v0, 0x0($t0)
    /* 235BC 801AC534 01000825 */  addiu      $t0, $t0, 0x1
    /* 235C0 801AC538 04000224 */  addiu      $v0, $zero, 0x4
    /* 235C4 801AC53C 000002A1 */  sb         $v0, 0x0($t0)
    /* 235C8 801AC540 FF008232 */  andi       $v0, $s4, 0xFF
    /* 235CC 801AC544 2110C203 */  addu       $v0, $fp, $v0
    /* 235D0 801AC548 0100013C */  lui        $at, (0x10000 >> 16)
    /* 235D4 801AC54C 21084100 */  addu       $at, $v0, $at
    /* 235D8 801AC550 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 235DC 801AC554 00000000 */  nop
    /* 235E0 801AC558 C0100300 */  sll        $v0, $v1, 3
    /* 235E4 801AC55C 21104300 */  addu       $v0, $v0, $v1
    /* 235E8 801AC560 80100200 */  sll        $v0, $v0, 2
    /* 235EC 801AC564 2110C203 */  addu       $v0, $fp, $v0
    /* 235F0 801AC568 0100013C */  lui        $at, (0x10000 >> 16)
    /* 235F4 801AC56C 21084100 */  addu       $at, $v0, $at
    /* 235F8 801AC570 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 235FC 801AC574 00000000 */  nop
    /* 23600 801AC578 80100200 */  sll        $v0, $v0, 2
    /* 23604 801AC57C 1D80013C */  lui        $at, %hi(D_801D1E78)
    /* 23608 801AC580 21082200 */  addu       $at, $at, $v0
    /* 2360C 801AC584 781E238C */  lw         $v1, %lo(D_801D1E78)($at)
    /* 23610 801AC588 01000825 */  addiu      $t0, $t0, 0x1
  .L801AC58C:
    /* 23614 801AC58C 00006290 */  lbu        $v0, 0x0($v1)
    /* 23618 801AC590 01006324 */  addiu      $v1, $v1, 0x1
    /* 2361C 801AC594 000002A1 */  sb         $v0, 0x0($t0)
    /* 23620 801AC598 FCFF4014 */  bnez       $v0, .L801AC58C
    /* 23624 801AC59C 01000825 */   addiu     $t0, $t0, 0x1
    /* 23628 801AC5A0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2362C 801AC5A4 2108C103 */  addu       $at, $fp, $at
    /* 23630 801AC5A8 1C8F228C */  lw         $v0, -0x70E4($at)
    /* 23634 801AC5AC 004F033C */  lui        $v1, (0x4F000000 >> 16)
    /* 23638 801AC5B0 24104300 */  and        $v0, $v0, $v1
    /* 2363C 801AC5B4 31004014 */  bnez       $v0, .L801AC67C
    /* 23640 801AC5B8 FFFF0825 */   addiu     $t0, $t0, -0x1
    /* 23644 801AC5BC 20000424 */  addiu      $a0, $zero, 0x20
    /* 23648 801AC5C0 000004A1 */  sb         $a0, 0x0($t0)
    /* 2364C 801AC5C4 01000825 */  addiu      $t0, $t0, 0x1
    /* 23650 801AC5C8 000004A1 */  sb         $a0, 0x0($t0)
    /* 23654 801AC5CC 01000825 */  addiu      $t0, $t0, 0x1
    /* 23658 801AC5D0 000004A1 */  sb         $a0, 0x0($t0)
    /* 2365C 801AC5D4 01000825 */  addiu      $t0, $t0, 0x1
    /* 23660 801AC5D8 1A000624 */  addiu      $a2, $zero, 0x1A
    /* 23664 801AC5DC 000006A1 */  sb         $a2, 0x0($t0)
    /* 23668 801AC5E0 01000825 */  addiu      $t0, $t0, 0x1
    /* 2366C 801AC5E4 04000524 */  addiu      $a1, $zero, 0x4
    /* 23670 801AC5E8 FF008232 */  andi       $v0, $s4, 0xFF
    /* 23674 801AC5EC 2110C203 */  addu       $v0, $fp, $v0
    /* 23678 801AC5F0 000005A1 */  sb         $a1, 0x0($t0)
    /* 2367C 801AC5F4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 23680 801AC5F8 21084100 */  addu       $at, $v0, $at
    /* 23684 801AC5FC 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 23688 801AC600 00000000 */  nop
    /* 2368C 801AC604 C0100300 */  sll        $v0, $v1, 3
    /* 23690 801AC608 21104300 */  addu       $v0, $v0, $v1
    /* 23694 801AC60C 80100200 */  sll        $v0, $v0, 2
    /* 23698 801AC610 2110C203 */  addu       $v0, $fp, $v0
    /* 2369C 801AC614 0100013C */  lui        $at, (0x10000 >> 16)
    /* 236A0 801AC618 21084100 */  addu       $at, $v0, $at
    /* 236A4 801AC61C 278F2290 */  lbu        $v0, -0x70D9($at)
    /* 236A8 801AC620 01000825 */  addiu      $t0, $t0, 0x1
    /* 236AC 801AC624 41004224 */  addiu      $v0, $v0, 0x41
    /* 236B0 801AC628 000002A1 */  sb         $v0, 0x0($t0)
    /* 236B4 801AC62C 01000825 */  addiu      $t0, $t0, 0x1
    /* 236B8 801AC630 000004A1 */  sb         $a0, 0x0($t0)
    /* 236BC 801AC634 01000825 */  addiu      $t0, $t0, 0x1
    /* 236C0 801AC638 000006A1 */  sb         $a2, 0x0($t0)
    /* 236C4 801AC63C 01000825 */  addiu      $t0, $t0, 0x1
    /* 236C8 801AC640 000005A1 */  sb         $a1, 0x0($t0)
    /* 236CC 801AC644 01000825 */  addiu      $t0, $t0, 0x1
    /* 236D0 801AC648 47000224 */  addiu      $v0, $zero, 0x47
    /* 236D4 801AC64C 000002A1 */  sb         $v0, 0x0($t0)
    /* 236D8 801AC650 01000825 */  addiu      $t0, $t0, 0x1
    /* 236DC 801AC654 52000224 */  addiu      $v0, $zero, 0x52
    /* 236E0 801AC658 000002A1 */  sb         $v0, 0x0($t0)
    /* 236E4 801AC65C 01000825 */  addiu      $t0, $t0, 0x1
    /* 236E8 801AC660 4F000224 */  addiu      $v0, $zero, 0x4F
    /* 236EC 801AC664 000002A1 */  sb         $v0, 0x0($t0)
    /* 236F0 801AC668 01000825 */  addiu      $t0, $t0, 0x1
    /* 236F4 801AC66C 55000224 */  addiu      $v0, $zero, 0x55
    /* 236F8 801AC670 000002A1 */  sb         $v0, 0x0($t0)
    /* 236FC 801AC674 50000224 */  addiu      $v0, $zero, 0x50
    /* 23700 801AC678 010002A1 */  sb         $v0, 0x1($t0)
  .L801AC67C:
    /* 23704 801AC67C 21200000 */  addu       $a0, $zero, $zero
    /* 23708 801AC680 1E80053C */  lui        $a1, %hi(D_801D8690)
    /* 2370C 801AC684 9086A524 */  addiu      $a1, $a1, %lo(D_801D8690)
    /* 23710 801AC688 A4FF0624 */  addiu      $a2, $zero, -0x5C
    /* 23714 801AC68C C4FF0724 */  addiu      $a3, $zero, -0x3C
    /* 23718 801AC690 B8000224 */  addiu      $v0, $zero, 0xB8
    /* 2371C 801AC694 01001224 */  addiu      $s2, $zero, 0x1
    /* 23720 801AC698 02001724 */  addiu      $s7, $zero, 0x2
    /* 23724 801AC69C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 23728 801AC6A0 1400B2AF */  sw         $s2, 0x14($sp)
    /* 2372C 801AC6A4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 23730 801AC6A8 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 23734 801AC6AC 2000A0AF */  sw         $zero, 0x20($sp)
    /* 23738 801AC6B0 2400B7AF */  sw         $s7, 0x24($sp)
    /* 2373C 801AC6B4 2800B2AF */  sw         $s2, 0x28($sp)
    /* 23740 801AC6B8 B850060C */  jal        func_801942E0
    /* 23744 801AC6BC 2C00B2AF */   sw        $s2, 0x2C($sp)
    /* 23748 801AC6C0 01000424 */  addiu      $a0, $zero, 0x1
    /* 2374C 801AC6C4 1D80053C */  lui        $a1, %hi(D_801D26DC)
    /* 23750 801AC6C8 DC26A524 */  addiu      $a1, $a1, %lo(D_801D26DC)
    /* 23754 801AC6CC ACFF0624 */  addiu      $a2, $zero, -0x54
    /* 23758 801AC6D0 E1FF0724 */  addiu      $a3, $zero, -0x1F
    /* 2375C 801AC6D4 A8001324 */  addiu      $s3, $zero, 0xA8
    /* 23760 801AC6D8 FFFF1624 */  addiu      $s6, $zero, -0x1
    /* 23764 801AC6DC 04000224 */  addiu      $v0, $zero, 0x4
    /* 23768 801AC6E0 1000B3AF */  sw         $s3, 0x10($sp)
    /* 2376C 801AC6E4 1400B2AF */  sw         $s2, 0x14($sp)
    /* 23770 801AC6E8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 23774 801AC6EC 1C00B6AF */  sw         $s6, 0x1C($sp)
    /* 23778 801AC6F0 2000A0AF */  sw         $zero, 0x20($sp)
    /* 2377C 801AC6F4 2400A2AF */  sw         $v0, 0x24($sp)
    /* 23780 801AC6F8 2800B2AF */  sw         $s2, 0x28($sp)
    /* 23784 801AC6FC B850060C */  jal        func_801942E0
    /* 23788 801AC700 2C00B2AF */   sw        $s2, 0x2C($sp)
    /* 2378C 801AC704 FF00A432 */  andi       $a0, $s5, 0xFF
    /* 23790 801AC708 40800400 */  sll        $s0, $a0, 1
    /* 23794 801AC70C FF009132 */  andi       $s1, $s4, 0xFF
    /* 23798 801AC710 2188D103 */  addu       $s1, $fp, $s1
    /* 2379C 801AC714 80AB0234 */  ori        $v0, $zero, 0xAB80
    /* 237A0 801AC718 21882202 */  addu       $s1, $s1, $v0
    /* 237A4 801AC71C 00002392 */  lbu        $v1, 0x0($s1)
    /* 237A8 801AC720 21800402 */  addu       $s0, $s0, $a0
    /* 237AC 801AC724 C0100300 */  sll        $v0, $v1, 3
    /* 237B0 801AC728 21104300 */  addu       $v0, $v0, $v1
    /* 237B4 801AC72C 80100200 */  sll        $v0, $v0, 2
    /* 237B8 801AC730 2110C203 */  addu       $v0, $fp, $v0
    /* 237BC 801AC734 0100013C */  lui        $at, (0x10000 >> 16)
    /* 237C0 801AC738 21084100 */  addu       $at, $v0, $at
    /* 237C4 801AC73C 258F2390 */  lbu        $v1, -0x70DB($at)
    /* 237C8 801AC740 40801000 */  sll        $s0, $s0, 1
    /* 237CC 801AC744 40110300 */  sll        $v0, $v1, 5
    /* 237D0 801AC748 21104300 */  addu       $v0, $v0, $v1
    /* 237D4 801AC74C 80100200 */  sll        $v0, $v0, 2
    /* 237D8 801AC750 21100202 */  addu       $v0, $s0, $v0
    /* 237DC 801AC754 2110C203 */  addu       $v0, $fp, $v0
    /* 237E0 801AC758 0100013C */  lui        $at, (0x10000 >> 16)
    /* 237E4 801AC75C 21084100 */  addu       $at, $v0, $at
    /* 237E8 801AC760 A4932590 */  lbu        $a1, -0x6C5C($at)
    /* 237EC 801AC764 1D80043C */  lui        $a0, %hi(D_801D2704)
    /* 237F0 801AC768 04278424 */  addiu      $a0, $a0, %lo(D_801D2704)
    /* 237F4 801AC76C A9A4060C */  jal        func_801A92A4
    /* 237F8 801AC770 06001424 */   addiu     $s4, $zero, 0x6
    /* 237FC 801AC774 00002492 */  lbu        $a0, 0x0($s1)
    /* 23800 801AC778 00000000 */  nop
    /* 23804 801AC77C C0180400 */  sll        $v1, $a0, 3
    /* 23808 801AC780 21186400 */  addu       $v1, $v1, $a0
    /* 2380C 801AC784 80180300 */  sll        $v1, $v1, 2
    /* 23810 801AC788 2118C303 */  addu       $v1, $fp, $v1
    /* 23814 801AC78C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 23818 801AC790 21086100 */  addu       $at, $v1, $at
    /* 2381C 801AC794 258F2490 */  lbu        $a0, -0x70DB($at)
    /* 23820 801AC798 00000000 */  nop
    /* 23824 801AC79C 40190400 */  sll        $v1, $a0, 5
    /* 23828 801AC7A0 21186400 */  addu       $v1, $v1, $a0
    /* 2382C 801AC7A4 80180300 */  sll        $v1, $v1, 2
    /* 23830 801AC7A8 21180302 */  addu       $v1, $s0, $v1
    /* 23834 801AC7AC 2118C303 */  addu       $v1, $fp, $v1
    /* 23838 801AC7B0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2383C 801AC7B4 21086100 */  addu       $at, $v1, $at
    /* 23840 801AC7B8 A6932594 */  lhu        $a1, -0x6C5A($at)
    /* 23844 801AC7BC A9A4060C */  jal        func_801A92A4
    /* 23848 801AC7C0 01004424 */   addiu     $a0, $v0, 0x1
    /* 2384C 801AC7C4 00002492 */  lbu        $a0, 0x0($s1)
    /* 23850 801AC7C8 00000000 */  nop
    /* 23854 801AC7CC C0180400 */  sll        $v1, $a0, 3
    /* 23858 801AC7D0 21186400 */  addu       $v1, $v1, $a0
    /* 2385C 801AC7D4 80180300 */  sll        $v1, $v1, 2
    /* 23860 801AC7D8 2118C303 */  addu       $v1, $fp, $v1
    /* 23864 801AC7DC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 23868 801AC7E0 21086100 */  addu       $at, $v1, $at
    /* 2386C 801AC7E4 258F2490 */  lbu        $a0, -0x70DB($at)
    /* 23870 801AC7E8 00000000 */  nop
    /* 23874 801AC7EC 40190400 */  sll        $v1, $a0, 5
    /* 23878 801AC7F0 21186400 */  addu       $v1, $v1, $a0
    /* 2387C 801AC7F4 80180300 */  sll        $v1, $v1, 2
    /* 23880 801AC7F8 21180302 */  addu       $v1, $s0, $v1
    /* 23884 801AC7FC 2118C303 */  addu       $v1, $fp, $v1
    /* 23888 801AC800 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2388C 801AC804 21086100 */  addu       $at, $v1, $at
    /* 23890 801AC808 A5932590 */  lbu        $a1, -0x6C5B($at)
    /* 23894 801AC80C A9A4060C */  jal        func_801A92A4
    /* 23898 801AC810 01004424 */   addiu     $a0, $v0, 0x1
    /* 2389C 801AC814 02000424 */  addiu      $a0, $zero, 0x2
    /* 238A0 801AC818 1D80053C */  lui        $a1, %hi(D_801D2704)
    /* 238A4 801AC81C 0427A524 */  addiu      $a1, $a1, %lo(D_801D2704)
    /* 238A8 801AC820 ACFF0624 */  addiu      $a2, $zero, -0x54
    /* 238AC 801AC824 DEFF0724 */  addiu      $a3, $zero, -0x22
    /* 238B0 801AC828 1000B3AF */  sw         $s3, 0x10($sp)
    /* 238B4 801AC82C 1400B7AF */  sw         $s7, 0x14($sp)
    /* 238B8 801AC830 1800A0AF */  sw         $zero, 0x18($sp)
    /* 238BC 801AC834 1C00B6AF */  sw         $s6, 0x1C($sp)
    /* 238C0 801AC838 2000A0AF */  sw         $zero, 0x20($sp)
    /* 238C4 801AC83C 2400B4AF */  sw         $s4, 0x24($sp)
    /* 238C8 801AC840 2800B2AF */  sw         $s2, 0x28($sp)
    /* 238CC 801AC844 B850060C */  jal        func_801942E0
    /* 238D0 801AC848 2C00B2AF */   sw        $s2, 0x2C($sp)
    /* 238D4 801AC84C 00002392 */  lbu        $v1, 0x0($s1)
    /* 238D8 801AC850 00000000 */  nop
    /* 238DC 801AC854 C0100300 */  sll        $v0, $v1, 3
    /* 238E0 801AC858 21104300 */  addu       $v0, $v0, $v1
    /* 238E4 801AC85C 80100200 */  sll        $v0, $v0, 2
    /* 238E8 801AC860 2110C203 */  addu       $v0, $fp, $v0
    /* 238EC 801AC864 0100013C */  lui        $at, (0x10000 >> 16)
    /* 238F0 801AC868 21084100 */  addu       $at, $v0, $at
    /* 238F4 801AC86C 258F2390 */  lbu        $v1, -0x70DB($at)
    /* 238F8 801AC870 00000000 */  nop
    /* 238FC 801AC874 40110300 */  sll        $v0, $v1, 5
    /* 23900 801AC878 21104300 */  addu       $v0, $v0, $v1
    /* 23904 801AC87C 80100200 */  sll        $v0, $v0, 2
    /* 23908 801AC880 21100202 */  addu       $v0, $s0, $v0
    /* 2390C 801AC884 2110C203 */  addu       $v0, $fp, $v0
    /* 23910 801AC888 0100013C */  lui        $at, (0x10000 >> 16)
    /* 23914 801AC88C 21084100 */  addu       $at, $v0, $at
    /* 23918 801AC890 A8932590 */  lbu        $a1, -0x6C58($at)
    /* 2391C 801AC894 1D80043C */  lui        $a0, %hi(D_801D2710)
    /* 23920 801AC898 10278424 */  addiu      $a0, $a0, %lo(D_801D2710)
    /* 23924 801AC89C A9A4060C */  jal        func_801A92A4
    /* 23928 801AC8A0 40001524 */   addiu     $s5, $zero, 0x40
    /* 2392C 801AC8A4 03000424 */  addiu      $a0, $zero, 0x3
    /* 23930 801AC8A8 1D80053C */  lui        $a1, %hi(D_801D2710)
    /* 23934 801AC8AC 1027A524 */  addiu      $a1, $a1, %lo(D_801D2710)
    /* 23938 801AC8B0 D8FF0624 */  addiu      $a2, $zero, -0x28
    /* 2393C 801AC8B4 13000724 */  addiu      $a3, $zero, 0x13
    /* 23940 801AC8B8 1000B5AF */  sw         $s5, 0x10($sp)
    /* 23944 801AC8BC 1400B7AF */  sw         $s7, 0x14($sp)
    /* 23948 801AC8C0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 2394C 801AC8C4 1C00B6AF */  sw         $s6, 0x1C($sp)
    /* 23950 801AC8C8 2000A0AF */  sw         $zero, 0x20($sp)
    /* 23954 801AC8CC 2400B4AF */  sw         $s4, 0x24($sp)
    /* 23958 801AC8D0 2800B2AF */  sw         $s2, 0x28($sp)
    /* 2395C 801AC8D4 B850060C */  jal        func_801942E0
    /* 23960 801AC8D8 2C00B2AF */   sw        $s2, 0x2C($sp)
    /* 23964 801AC8DC 80001324 */  addiu      $s3, $zero, 0x80
    /* 23968 801AC8E0 1E80013C */  lui        $at, %hi(D_801D8FE5)
    /* 2396C 801AC8E4 E58F33A0 */  sb         $s3, %lo(D_801D8FE5)($at)
    /* 23970 801AC8E8 1E80013C */  lui        $at, %hi(D_801D8FE6)
    /* 23974 801AC8EC E68F33A0 */  sb         $s3, %lo(D_801D8FE6)($at)
    /* 23978 801AC8F0 1E80013C */  lui        $at, %hi(D_801D8FE7)
    /* 2397C 801AC8F4 E78F20A0 */  sb         $zero, %lo(D_801D8FE7)($at)
    /* 23980 801AC8F8 00002392 */  lbu        $v1, 0x0($s1)
    /* 23984 801AC8FC 00000000 */  nop
    /* 23988 801AC900 C0100300 */  sll        $v0, $v1, 3
    /* 2398C 801AC904 21104300 */  addu       $v0, $v0, $v1
    /* 23990 801AC908 80100200 */  sll        $v0, $v0, 2
    /* 23994 801AC90C 2110C203 */  addu       $v0, $fp, $v0
    /* 23998 801AC910 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2399C 801AC914 21084100 */  addu       $at, $v0, $at
    /* 239A0 801AC918 258F2390 */  lbu        $v1, -0x70DB($at)
    /* 239A4 801AC91C 00000000 */  nop
    /* 239A8 801AC920 40110300 */  sll        $v0, $v1, 5
    /* 239AC 801AC924 21104300 */  addu       $v0, $v0, $v1
    /* 239B0 801AC928 80100200 */  sll        $v0, $v0, 2
    /* 239B4 801AC92C 21800202 */  addu       $s0, $s0, $v0
    /* 239B8 801AC930 2180D003 */  addu       $s0, $fp, $s0
    /* 239BC 801AC934 0100013C */  lui        $at, (0x10000 >> 16)
    /* 239C0 801AC938 21080102 */  addu       $at, $s0, $at
    /* 239C4 801AC93C A9932590 */  lbu        $a1, -0x6C57($at)
    /* 239C8 801AC940 1D80043C */  lui        $a0, %hi(D_801D2714)
    /* 239CC 801AC944 14278424 */  addiu      $a0, $a0, %lo(D_801D2714)
    /* 239D0 801AC948 A9A4060C */  jal        func_801A92A4
    /* 239D4 801AC94C 00000000 */   nop
    /* 239D8 801AC950 04000424 */  addiu      $a0, $zero, 0x4
    /* 239DC 801AC954 1D80053C */  lui        $a1, %hi(D_801D2714)
    /* 239E0 801AC958 1427A524 */  addiu      $a1, $a1, %lo(D_801D2714)
    /* 239E4 801AC95C 14000624 */  addiu      $a2, $zero, 0x14
    /* 239E8 801AC960 13000724 */  addiu      $a3, $zero, 0x13
    /* 239EC 801AC964 1000B5AF */  sw         $s5, 0x10($sp)
    /* 239F0 801AC968 1400B7AF */  sw         $s7, 0x14($sp)
    /* 239F4 801AC96C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 239F8 801AC970 1C00B6AF */  sw         $s6, 0x1C($sp)
    /* 239FC 801AC974 2000A0AF */  sw         $zero, 0x20($sp)
    /* 23A00 801AC978 2400B4AF */  sw         $s4, 0x24($sp)
    /* 23A04 801AC97C 2800B2AF */  sw         $s2, 0x28($sp)
    /* 23A08 801AC980 B850060C */  jal        func_801942E0
    /* 23A0C 801AC984 2C00B2AF */   sw        $s2, 0x2C($sp)
    /* 23A10 801AC988 30000224 */  addiu      $v0, $zero, 0x30
    /* 23A14 801AC98C 1E80013C */  lui        $at, %hi(D_801D8FFD)
    /* 23A18 801AC990 FD8F33A0 */  sb         $s3, %lo(D_801D8FFD)($at)
    /* 23A1C 801AC994 1E80013C */  lui        $at, %hi(D_801D8FFE)
    /* 23A20 801AC998 FE8F22A0 */  sb         $v0, %lo(D_801D8FFE)($at)
    /* 23A24 801AC99C 1E80013C */  lui        $at, %hi(D_801D8FFF)
    /* 23A28 801AC9A0 FF8F20A0 */  sb         $zero, %lo(D_801D8FFF)($at)
  .L801AC9A4:
    /* 23A2C 801AC9A4 5400BF8F */  lw         $ra, 0x54($sp)
    /* 23A30 801AC9A8 5000BE8F */  lw         $fp, 0x50($sp)
    /* 23A34 801AC9AC 4C00B78F */  lw         $s7, 0x4C($sp)
    /* 23A38 801AC9B0 4800B68F */  lw         $s6, 0x48($sp)
    /* 23A3C 801AC9B4 4400B58F */  lw         $s5, 0x44($sp)
    /* 23A40 801AC9B8 4000B48F */  lw         $s4, 0x40($sp)
    /* 23A44 801AC9BC 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 23A48 801AC9C0 3800B28F */  lw         $s2, 0x38($sp)
    /* 23A4C 801AC9C4 3400B18F */  lw         $s1, 0x34($sp)
    /* 23A50 801AC9C8 3000B08F */  lw         $s0, 0x30($sp)
    /* 23A54 801AC9CC 5800BD27 */  addiu      $sp, $sp, 0x58
    /* 23A58 801AC9D0 0800E003 */  jr         $ra
    /* 23A5C 801AC9D4 00000000 */   nop
endlabel func_801AC0B4
