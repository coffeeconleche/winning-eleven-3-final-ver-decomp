nonmatching func_800B0AB4, 0x144

glabel func_800B0AB4
    /* A12B4 800B0AB4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A12B8 800B0AB8 1800BFAF */  sw         $ra, 0x18($sp)
    /* A12BC 800B0ABC 46E9020C */  jal        func_800BA518
    /* A12C0 800B0AC0 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* A12C4 800B0AC4 0D80033C */  lui        $v1, %hi(D_800CEBD0)
    /* A12C8 800B0AC8 D0EB638C */  lw         $v1, %lo(D_800CEBD0)($v1)
    /* A12CC 800B0ACC 00000000 */  nop
    /* A12D0 800B0AD0 2A186200 */  slt        $v1, $v1, $v0
    /* A12D4 800B0AD4 0C006014 */  bnez       $v1, .L800B0B08
    /* A12D8 800B0AD8 00000000 */   nop
    /* A12DC 800B0ADC 0D80033C */  lui        $v1, %hi(D_800CEBD4)
    /* A12E0 800B0AE0 D4EB6324 */  addiu      $v1, $v1, %lo(D_800CEBD4)
    /* A12E4 800B0AE4 0000628C */  lw         $v0, 0x0($v1)
    /* A12E8 800B0AE8 00000000 */  nop
    /* A12EC 800B0AEC 21204000 */  addu       $a0, $v0, $zero
    /* A12F0 800B0AF0 01004224 */  addiu      $v0, $v0, 0x1
    /* A12F4 800B0AF4 000062AC */  sw         $v0, 0x0($v1)
    /* A12F8 800B0AF8 0F00023C */  lui        $v0, (0xF0000 >> 16)
    /* A12FC 800B0AFC 2A104400 */  slt        $v0, $v0, $a0
    /* A1300 800B0B00 38004010 */  beqz       $v0, .L800B0BE4
    /* A1304 800B0B04 00000000 */   nop
  .L800B0B08:
    /* A1308 800B0B08 0D80063C */  lui        $a2, %hi(D_800CEB9C)
    /* A130C 800B0B0C 9CEBC68C */  lw         $a2, %lo(D_800CEB9C)($a2)
    /* A1310 800B0B10 0180043C */  lui        $a0, %hi(D_80015008)
    /* A1314 800B0B14 08508424 */  addiu      $a0, $a0, %lo(D_80015008)
    /* A1318 800B0B18 0000C28C */  lw         $v0, 0x0($a2)
    /* A131C 800B0B1C 0D80053C */  lui        $a1, %hi(D_800CEBBC)
    /* A1320 800B0B20 BCEBA58C */  lw         $a1, %lo(D_800CEBBC)($a1)
    /* A1324 800B0B24 0D80023C */  lui        $v0, %hi(D_800CEBA0)
    /* A1328 800B0B28 A0EB428C */  lw         $v0, %lo(D_800CEBA0)($v0)
    /* A132C 800B0B2C 0D80033C */  lui        $v1, %hi(D_800CEBC0)
    /* A1330 800B0B30 C0EB638C */  lw         $v1, %lo(D_800CEBC0)($v1)
    /* A1334 800B0B34 0000428C */  lw         $v0, 0x0($v0)
    /* A1338 800B0B38 2328A300 */  subu       $a1, $a1, $v1
    /* A133C 800B0B3C 1000A2AF */  sw         $v0, 0x10($sp)
    /* A1340 800B0B40 0D80023C */  lui        $v0, %hi(D_800CEBA8)
    /* A1344 800B0B44 A8EB428C */  lw         $v0, %lo(D_800CEBA8)($v0)
    /* A1348 800B0B48 0000C68C */  lw         $a2, 0x0($a2)
    /* A134C 800B0B4C 0000478C */  lw         $a3, 0x0($v0)
    /* A1350 800B0B50 A6B5020C */  jal        func_800AD698
    /* A1354 800B0B54 3F00A530 */   andi      $a1, $a1, 0x3F
    /* A1358 800B0B58 2DEA020C */  jal        func_800BA8B4
    /* A135C 800B0B5C 21200000 */   addu      $a0, $zero, $zero
    /* A1360 800B0B60 0D80013C */  lui        $at, %hi(D_800CEBC0)
    /* A1364 800B0B64 C0EB20AC */  sw         $zero, %lo(D_800CEBC0)($at)
    /* A1368 800B0B68 0D80033C */  lui        $v1, %hi(D_800CEBC0)
    /* A136C 800B0B6C C0EB638C */  lw         $v1, %lo(D_800CEBC0)($v1)
    /* A1370 800B0B70 0D80013C */  lui        $at, %hi(D_800CEBCC)
    /* A1374 800B0B74 CCEB22AC */  sw         $v0, %lo(D_800CEBCC)($at)
    /* A1378 800B0B78 0D80013C */  lui        $at, %hi(D_800CEBBC)
    /* A137C 800B0B7C BCEB23AC */  sw         $v1, %lo(D_800CEBBC)($at)
    /* A1380 800B0B80 0D80033C */  lui        $v1, %hi(D_800CEBA8)
    /* A1384 800B0B84 A8EB638C */  lw         $v1, %lo(D_800CEBA8)($v1)
    /* A1388 800B0B88 01040224 */  addiu      $v0, $zero, 0x401
    /* A138C 800B0B8C 000062AC */  sw         $v0, 0x0($v1)
    /* A1390 800B0B90 0D80033C */  lui        $v1, %hi(D_800CEBB8)
    /* A1394 800B0B94 B8EB638C */  lw         $v1, %lo(D_800CEBB8)($v1)
    /* A1398 800B0B98 00000000 */  nop
    /* A139C 800B0B9C 0000628C */  lw         $v0, 0x0($v1)
    /* A13A0 800B0BA0 00000000 */  nop
    /* A13A4 800B0BA4 00084234 */  ori        $v0, $v0, 0x800
    /* A13A8 800B0BA8 000062AC */  sw         $v0, 0x0($v1)
    /* A13AC 800B0BAC 0D80033C */  lui        $v1, %hi(D_800CEB9C)
    /* A13B0 800B0BB0 9CEB638C */  lw         $v1, %lo(D_800CEB9C)($v1)
    /* A13B4 800B0BB4 0002023C */  lui        $v0, (0x2000000 >> 16)
    /* A13B8 800B0BB8 000062AC */  sw         $v0, 0x0($v1)
    /* A13BC 800B0BBC 0D80033C */  lui        $v1, %hi(D_800CEB9C)
    /* A13C0 800B0BC0 9CEB638C */  lw         $v1, %lo(D_800CEB9C)($v1)
    /* A13C4 800B0BC4 0001023C */  lui        $v0, (0x1000000 >> 16)
    /* A13C8 800B0BC8 000062AC */  sw         $v0, 0x0($v1)
    /* A13CC 800B0BCC 0D80043C */  lui        $a0, %hi(D_800CEBCC)
    /* A13D0 800B0BD0 CCEB848C */  lw         $a0, %lo(D_800CEBCC)($a0)
    /* A13D4 800B0BD4 2DEA020C */  jal        func_800BA8B4
    /* A13D8 800B0BD8 00000000 */   nop
    /* A13DC 800B0BDC FAC20208 */  j          .L800B0BE8
    /* A13E0 800B0BE0 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800B0BE4:
    /* A13E4 800B0BE4 21100000 */  addu       $v0, $zero, $zero
  .L800B0BE8:
    /* A13E8 800B0BE8 1800BF8F */  lw         $ra, 0x18($sp)
    /* A13EC 800B0BEC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A13F0 800B0BF0 0800E003 */  jr         $ra
    /* A13F4 800B0BF4 00000000 */   nop
endlabel func_800B0AB4
