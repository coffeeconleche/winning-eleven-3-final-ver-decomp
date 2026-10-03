nonmatching func_800C18DC, 0x280

glabel func_800C18DC
    /* B20DC 800C18DC 0000A4AF */  sw         $a0, 0x0($sp)
    /* B20E0 800C18E0 0400A5AF */  sw         $a1, 0x4($sp)
    /* B20E4 800C18E4 0800A6AF */  sw         $a2, 0x8($sp)
    /* B20E8 800C18E8 0C00A7AF */  sw         $a3, 0xC($sp)
    /* B20EC 800C18EC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B20F0 800C18F0 1000B0AF */  sw         $s0, 0x10($sp)
    /* B20F4 800C18F4 1C00B027 */  addiu      $s0, $sp, 0x1C
    /* B20F8 800C18F8 01000624 */  addiu      $a2, $zero, 0x1
    /* B20FC 800C18FC 1400BFAF */  sw         $ra, 0x14($sp)
    /* B2100 800C1900 19008610 */  beq        $a0, $a2, .L800C1968
    /* B2104 800C1904 1800A4AF */   sw        $a0, 0x18($sp)
    /* B2108 800C1908 02008228 */  slti       $v0, $a0, 0x2
    /* B210C 800C190C 05004010 */  beqz       $v0, .L800C1924
    /* B2110 800C1910 02000224 */   addiu     $v0, $zero, 0x2
    /* B2114 800C1914 2F008010 */  beqz       $a0, .L800C19D4
    /* B2118 800C1918 21100000 */   addu      $v0, $zero, $zero
    /* B211C 800C191C D3060308 */  j          .L800C1B4C
    /* B2120 800C1920 00000000 */   nop
  .L800C1924:
    /* B2124 800C1924 05008210 */  beq        $a0, $v0, .L800C193C
    /* B2128 800C1928 03000224 */   addiu     $v0, $zero, 0x3
    /* B212C 800C192C 43008210 */  beq        $a0, $v0, .L800C1A3C
    /* B2130 800C1930 21100000 */   addu      $v0, $zero, $zero
    /* B2134 800C1934 D3060308 */  j          .L800C1B4C
    /* B2138 800C1938 00000000 */   nop
  .L800C193C:
    /* B213C 800C193C 1C00A48F */  lw         $a0, 0x1C($sp)
    /* B2140 800C1940 0D80023C */  lui        $v0, %hi(D_800D55B4)
    /* B2144 800C1944 B455428C */  lw         $v0, %lo(D_800D55B4)($v0)
    /* B2148 800C1948 0D80033C */  lui        $v1, %hi(D_800D558C)
    /* B214C 800C194C 8C55638C */  lw         $v1, %lo(D_800D558C)($v1)
    /* B2150 800C1950 06104400 */  srlv       $v0, $a0, $v0
    /* B2154 800C1954 0D80013C */  lui        $at, %hi(D_800D55A4)
    /* B2158 800C1958 A45522A4 */  sh         $v0, %lo(D_800D55A4)($at)
    /* B215C 800C195C A60162A4 */  sh         $v0, 0x1A6($v1)
    /* B2160 800C1960 D3060308 */  j          .L800C1B4C
    /* B2164 800C1964 21100000 */   addu      $v0, $zero, $zero
  .L800C1968:
    /* B2168 800C1968 0D80053C */  lui        $a1, %hi(D_800D558C)
    /* B216C 800C196C 8C55A58C */  lw         $a1, %lo(D_800D558C)($a1)
    /* B2170 800C1970 0D80043C */  lui        $a0, %hi(D_800D55A4)
    /* B2174 800C1974 A4558494 */  lhu        $a0, %lo(D_800D55A4)($a0)
    /* B2178 800C1978 A601A294 */  lhu        $v0, 0x1A6($a1)
    /* B217C 800C197C 0D80013C */  lui        $at, %hi(D_800D55DC)
    /* B2180 800C1980 DC5520AC */  sw         $zero, %lo(D_800D55DC)($at)
    /* B2184 800C1984 09004410 */  beq        $v0, $a0, .L800C19AC
    /* B2188 800C1988 21180000 */   addu      $v1, $zero, $zero
    /* B218C 800C198C 01006324 */  addiu      $v1, $v1, 0x1
  .L800C1990:
    /* B2190 800C1990 010F622C */  sltiu      $v0, $v1, 0xF01
    /* B2194 800C1994 6D004010 */  beqz       $v0, .L800C1B4C
    /* B2198 800C1998 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* B219C 800C199C A601A294 */  lhu        $v0, 0x1A6($a1)
    /* B21A0 800C19A0 00000000 */  nop
    /* B21A4 800C19A4 FAFF4414 */  bne        $v0, $a0, .L800C1990
    /* B21A8 800C19A8 01006324 */   addiu     $v1, $v1, 0x1
  .L800C19AC:
    /* B21AC 800C19AC 0D80033C */  lui        $v1, %hi(D_800D558C)
    /* B21B0 800C19B0 8C55638C */  lw         $v1, %lo(D_800D558C)($v1)
    /* B21B4 800C19B4 00000000 */  nop
    /* B21B8 800C19B8 AA016294 */  lhu        $v0, 0x1AA($v1)
    /* B21BC 800C19BC 00000000 */  nop
    /* B21C0 800C19C0 CFFF4230 */  andi       $v0, $v0, 0xFFCF
    /* B21C4 800C19C4 20004234 */  ori        $v0, $v0, 0x20
    /* B21C8 800C19C8 AA0162A4 */  sh         $v0, 0x1AA($v1)
    /* B21CC 800C19CC D3060308 */  j          .L800C1B4C
    /* B21D0 800C19D0 21100000 */   addu      $v0, $zero, $zero
  .L800C19D4:
    /* B21D4 800C19D4 0D80053C */  lui        $a1, %hi(D_800D558C)
    /* B21D8 800C19D8 8C55A58C */  lw         $a1, %lo(D_800D558C)($a1)
    /* B21DC 800C19DC 0D80043C */  lui        $a0, %hi(D_800D55A4)
    /* B21E0 800C19E0 A4558494 */  lhu        $a0, %lo(D_800D55A4)($a0)
    /* B21E4 800C19E4 A601A294 */  lhu        $v0, 0x1A6($a1)
    /* B21E8 800C19E8 0D80013C */  lui        $at, %hi(D_800D55DC)
    /* B21EC 800C19EC DC5526AC */  sw         $a2, %lo(D_800D55DC)($at)
    /* B21F0 800C19F0 09004410 */  beq        $v0, $a0, .L800C1A18
    /* B21F4 800C19F4 21180000 */   addu      $v1, $zero, $zero
    /* B21F8 800C19F8 01006324 */  addiu      $v1, $v1, 0x1
  .L800C19FC:
    /* B21FC 800C19FC 010F622C */  sltiu      $v0, $v1, 0xF01
    /* B2200 800C1A00 52004010 */  beqz       $v0, .L800C1B4C
    /* B2204 800C1A04 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* B2208 800C1A08 A601A294 */  lhu        $v0, 0x1A6($a1)
    /* B220C 800C1A0C 00000000 */  nop
    /* B2210 800C1A10 FAFF4414 */  bne        $v0, $a0, .L800C19FC
    /* B2214 800C1A14 01006324 */   addiu     $v1, $v1, 0x1
  .L800C1A18:
    /* B2218 800C1A18 0D80033C */  lui        $v1, %hi(D_800D558C)
    /* B221C 800C1A1C 8C55638C */  lw         $v1, %lo(D_800D558C)($v1)
    /* B2220 800C1A20 00000000 */  nop
    /* B2224 800C1A24 AA016294 */  lhu        $v0, 0x1AA($v1)
    /* B2228 800C1A28 00000000 */  nop
    /* B222C 800C1A2C 30004234 */  ori        $v0, $v0, 0x30
    /* B2230 800C1A30 AA0162A4 */  sh         $v0, 0x1AA($v1)
    /* B2234 800C1A34 D3060308 */  j          .L800C1B4C
    /* B2238 800C1A38 21100000 */   addu      $v0, $zero, $zero
  .L800C1A3C:
    /* B223C 800C1A3C 0D80023C */  lui        $v0, %hi(D_800D55DC)
    /* B2240 800C1A40 DC55428C */  lw         $v0, %lo(D_800D55DC)($v0)
    /* B2244 800C1A44 00000000 */  nop
    /* B2248 800C1A48 02004614 */  bne        $v0, $a2, .L800C1A54
    /* B224C 800C1A4C 20000424 */   addiu     $a0, $zero, 0x20
    /* B2250 800C1A50 30000424 */  addiu      $a0, $zero, 0x30
  .L800C1A54:
    /* B2254 800C1A54 0D80053C */  lui        $a1, %hi(D_800D558C)
    /* B2258 800C1A58 8C55A58C */  lw         $a1, %lo(D_800D558C)($a1)
    /* B225C 800C1A5C 21180000 */  addu       $v1, $zero, $zero
    /* B2260 800C1A60 AA01A294 */  lhu        $v0, 0x1AA($a1)
    /* B2264 800C1A64 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* B2268 800C1A68 30004230 */  andi       $v0, $v0, 0x30
    /* B226C 800C1A6C 09004410 */  beq        $v0, $a0, .L800C1A94
    /* B2270 800C1A70 01006324 */   addiu     $v1, $v1, 0x1
  .L800C1A74:
    /* B2274 800C1A74 010F622C */  sltiu      $v0, $v1, 0xF01
    /* B2278 800C1A78 34004010 */  beqz       $v0, .L800C1B4C
    /* B227C 800C1A7C FEFF0224 */   addiu     $v0, $zero, -0x2
    /* B2280 800C1A80 AA01A294 */  lhu        $v0, 0x1AA($a1)
    /* B2284 800C1A84 00000000 */  nop
    /* B2288 800C1A88 30004230 */  andi       $v0, $v0, 0x30
    /* B228C 800C1A8C F9FF4414 */  bne        $v0, $a0, .L800C1A74
    /* B2290 800C1A90 01006324 */   addiu     $v1, $v1, 0x1
  .L800C1A94:
    /* B2294 800C1A94 0D80033C */  lui        $v1, %hi(D_800D55DC)
    /* B2298 800C1A98 DC55638C */  lw         $v1, %lo(D_800D55DC)($v1)
    /* B229C 800C1A9C 01000224 */  addiu      $v0, $zero, 0x1
    /* B22A0 800C1AA0 05006214 */  bne        $v1, $v0, .L800C1AB8
    /* B22A4 800C1AA4 00000000 */   nop
    /* B22A8 800C1AA8 7A07030C */  jal        func_800C1DE8
    /* B22AC 800C1AAC 04001026 */   addiu     $s0, $s0, 0x4
    /* B22B0 800C1AB0 B1060308 */  j          .L800C1AC4
    /* B22B4 800C1AB4 0001063C */   lui       $a2, (0x1000201 >> 16)
  .L800C1AB8:
    /* B22B8 800C1AB8 7007030C */  jal        func_800C1DC0
    /* B22BC 800C1ABC 04001026 */   addiu     $s0, $s0, 0x4
    /* B22C0 800C1AC0 0001063C */  lui        $a2, (0x1000201 >> 16)
  .L800C1AC4:
    /* B22C4 800C1AC4 FCFF048E */  lw         $a0, -0x4($s0)
    /* B22C8 800C1AC8 0D80013C */  lui        $at, %hi(D_800D55E0)
    /* B22CC 800C1ACC E05524AC */  sw         $a0, %lo(D_800D55E0)($at)
    /* B22D0 800C1AD0 0000048E */  lw         $a0, 0x0($s0)
    /* B22D4 800C1AD4 0D80053C */  lui        $a1, %hi(D_800D5590)
    /* B22D8 800C1AD8 9055A58C */  lw         $a1, %lo(D_800D5590)($a1)
    /* B22DC 800C1ADC 82190400 */  srl        $v1, $a0, 6
    /* B22E0 800C1AE0 3F008230 */  andi       $v0, $a0, 0x3F
    /* B22E4 800C1AE4 2B100200 */  sltu       $v0, $zero, $v0
    /* B22E8 800C1AE8 0D80043C */  lui        $a0, %hi(D_800D55E0)
    /* B22EC 800C1AEC E055848C */  lw         $a0, %lo(D_800D55E0)($a0)
    /* B22F0 800C1AF0 21186200 */  addu       $v1, $v1, $v0
    /* B22F4 800C1AF4 0D80013C */  lui        $at, %hi(D_800D55E4)
    /* B22F8 800C1AF8 E45523AC */  sw         $v1, %lo(D_800D55E4)($at)
    /* B22FC 800C1AFC 0000A4AC */  sw         $a0, 0x0($a1)
    /* B2300 800C1B00 0D80023C */  lui        $v0, %hi(D_800D55E4)
    /* B2304 800C1B04 E455428C */  lw         $v0, %lo(D_800D55E4)($v0)
    /* B2308 800C1B08 0D80033C */  lui        $v1, %hi(D_800D5594)
    /* B230C 800C1B0C 9455638C */  lw         $v1, %lo(D_800D5594)($v1)
    /* B2310 800C1B10 00140200 */  sll        $v0, $v0, 16
    /* B2314 800C1B14 10004234 */  ori        $v0, $v0, 0x10
    /* B2318 800C1B18 000062AC */  sw         $v0, 0x0($v1)
    /* B231C 800C1B1C 0D80033C */  lui        $v1, %hi(D_800D55DC)
    /* B2320 800C1B20 DC55638C */  lw         $v1, %lo(D_800D55DC)($v1)
    /* B2324 800C1B24 01000224 */  addiu      $v0, $zero, 0x1
    /* B2328 800C1B28 03006214 */  bne        $v1, $v0, .L800C1B38
    /* B232C 800C1B2C 0102C634 */   ori       $a2, $a2, (0x1000201 & 0xFFFF)
    /* B2330 800C1B30 0001063C */  lui        $a2, (0x1000200 >> 16)
    /* B2334 800C1B34 0002C634 */  ori        $a2, $a2, (0x1000200 & 0xFFFF)
  .L800C1B38:
    /* B2338 800C1B38 0D80023C */  lui        $v0, %hi(D_800D5598)
    /* B233C 800C1B3C 9855428C */  lw         $v0, %lo(D_800D5598)($v0)
    /* B2340 800C1B40 00000000 */  nop
    /* B2344 800C1B44 000046AC */  sw         $a2, 0x0($v0)
    /* B2348 800C1B48 21100000 */  addu       $v0, $zero, $zero
  .L800C1B4C:
    /* B234C 800C1B4C 1400BF8F */  lw         $ra, 0x14($sp)
    /* B2350 800C1B50 1000B08F */  lw         $s0, 0x10($sp)
    /* B2354 800C1B54 0800E003 */  jr         $ra
    /* B2358 800C1B58 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800C18DC
