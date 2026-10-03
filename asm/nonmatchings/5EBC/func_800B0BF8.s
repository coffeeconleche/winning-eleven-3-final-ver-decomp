nonmatching func_800B0BF8, 0xA0

glabel func_800B0BF8
    /* A13F8 800B0BF8 0010033C */  lui        $v1, (0x10000007 >> 16)
    /* A13FC 800B0BFC 0D80023C */  lui        $v0, %hi(D_800CEB9C)
    /* A1400 800B0C00 9CEB428C */  lw         $v0, %lo(D_800CEB9C)($v0)
    /* A1404 800B0C04 07006334 */  ori        $v1, $v1, (0x10000007 & 0xFFFF)
    /* A1408 800B0C08 000043AC */  sw         $v1, 0x0($v0)
    /* A140C 800B0C0C 0D80053C */  lui        $a1, %hi(D_800CEB98)
    /* A1410 800B0C10 98EBA58C */  lw         $a1, %lo(D_800CEB98)($a1)
    /* A1414 800B0C14 FF00033C */  lui        $v1, (0xFFFFFF >> 16)
    /* A1418 800B0C18 0000A28C */  lw         $v0, 0x0($a1)
    /* A141C 800B0C1C FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
    /* A1420 800B0C20 24104300 */  and        $v0, $v0, $v1
    /* A1424 800B0C24 02000324 */  addiu      $v1, $zero, 0x2
    /* A1428 800B0C28 0F004310 */  beq        $v0, $v1, .L800B0C68
    /* A142C 800B0C2C 00E1033C */   lui       $v1, (0xE1001000 >> 16)
    /* A1430 800B0C30 0D80023C */  lui        $v0, %hi(D_800CEB9C)
    /* A1434 800B0C34 9CEB428C */  lw         $v0, %lo(D_800CEB9C)($v0)
    /* A1438 800B0C38 00000000 */  nop
    /* A143C 800B0C3C 0000428C */  lw         $v0, 0x0($v0)
    /* A1440 800B0C40 00106334 */  ori        $v1, $v1, (0xE1001000 & 0xFFFF)
    /* A1444 800B0C44 FF3F4230 */  andi       $v0, $v0, 0x3FFF
    /* A1448 800B0C48 25104300 */  or         $v0, $v0, $v1
    /* A144C 800B0C4C 0000A2AC */  sw         $v0, 0x0($a1)
    /* A1450 800B0C50 0D80033C */  lui        $v1, %hi(D_800CEB98)
    /* A1454 800B0C54 98EB638C */  lw         $v1, %lo(D_800CEB98)($v1)
    /* A1458 800B0C58 21100000 */  addu       $v0, $zero, $zero
    /* A145C 800B0C5C 0000638C */  lw         $v1, 0x0($v1)
    /* A1460 800B0C60 24C30208 */  j          .L800B0C90
    /* A1464 800B0C64 00000000 */   nop
  .L800B0C68:
    /* A1468 800B0C68 08008230 */  andi       $v0, $a0, 0x8
    /* A146C 800B0C6C 07004010 */  beqz       $v0, .L800B0C8C
    /* A1470 800B0C70 0009043C */   lui       $a0, (0x9000001 >> 16)
    /* A1474 800B0C74 01008434 */  ori        $a0, $a0, (0x9000001 & 0xFFFF)
    /* A1478 800B0C78 0D80033C */  lui        $v1, %hi(D_800CEB9C)
    /* A147C 800B0C7C 9CEB638C */  lw         $v1, %lo(D_800CEB9C)($v1)
    /* A1480 800B0C80 02000224 */  addiu      $v0, $zero, 0x2
    /* A1484 800B0C84 24C30208 */  j          .L800B0C90
    /* A1488 800B0C88 000064AC */   sw        $a0, 0x0($v1)
  .L800B0C8C:
    /* A148C 800B0C8C 01000224 */  addiu      $v0, $zero, 0x1
  .L800B0C90:
    /* A1490 800B0C90 0800E003 */  jr         $ra
    /* A1494 800B0C94 00000000 */   nop
endlabel func_800B0BF8
