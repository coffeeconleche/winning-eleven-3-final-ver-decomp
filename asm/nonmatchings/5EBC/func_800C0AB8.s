nonmatching func_800C0AB8, 0xC0

glabel func_800C0AB8
    /* B12B8 800C0AB8 21388000 */  addu       $a3, $a0, $zero
    /* B12BC 800C0ABC FFFFE230 */  andi       $v0, $a3, 0xFFFF
    /* B12C0 800C0AC0 1000422C */  sltiu      $v0, $v0, 0x10
    /* B12C4 800C0AC4 10004010 */  beqz       $v0, .L800C0B08
    /* B12C8 800C0AC8 2140A000 */   addu      $t0, $a1, $zero
    /* B12CC 800C0ACC 00140400 */  sll        $v0, $a0, 16
    /* B12D0 800C0AD0 03240200 */  sra        $a0, $v0, 16
    /* B12D4 800C0AD4 1180033C */  lui        $v1, %hi(D_8010A3F0)
    /* B12D8 800C0AD8 21186400 */  addu       $v1, $v1, $a0
    /* B12DC 800C0ADC F0A36390 */  lbu        $v1, %lo(D_8010A3F0)($v1)
    /* B12E0 800C0AE0 01000224 */  addiu      $v0, $zero, 0x1
    /* B12E4 800C0AE4 22006214 */  bne        $v1, $v0, .L800C0B70
    /* B12E8 800C0AE8 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* B12EC 800C0AEC 001C0500 */  sll        $v1, $a1, 16
    /* B12F0 800C0AF0 0F80023C */  lui        $v0, %hi(D_800F106C)
    /* B12F4 800C0AF4 6C104284 */  lh         $v0, %lo(D_800F106C)($v0)
    /* B12F8 800C0AF8 03340300 */  sra        $a2, $v1, 16
    /* B12FC 800C0AFC 2A10C200 */  slt        $v0, $a2, $v0
    /* B1300 800C0B00 03004014 */  bnez       $v0, .L800C0B10
    /* B1304 800C0B04 80100400 */   sll       $v0, $a0, 2
  .L800C0B08:
    /* B1308 800C0B08 DC020308 */  j          .L800C0B70
    /* B130C 800C0B0C FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800C0B10:
    /* B1310 800C0B10 0F80033C */  lui        $v1, %hi(D_800EF940)
    /* B1314 800C0B14 21186200 */  addu       $v1, $v1, $v0
    /* B1318 800C0B18 40F9638C */  lw         $v1, %lo(D_800EF940)($v1)
    /* B131C 800C0B1C 0F80053C */  lui        $a1, %hi(D_800EF8B8)
    /* B1320 800C0B20 2128A200 */  addu       $a1, $a1, $v0
    /* B1324 800C0B24 B8F8A58C */  lw         $a1, %lo(D_800EF8B8)($a1)
    /* B1328 800C0B28 0F80013C */  lui        $at, %hi(D_800EF988)
    /* B132C 800C0B2C 21082200 */  addu       $at, $at, $v0
    /* B1330 800C0B30 88F9228C */  lw         $v0, %lo(D_800EF988)($at)
    /* B1334 800C0B34 1180043C */  lui        $a0, %hi(D_8010A3C8 + 0x1)
    /* B1338 800C0B38 C9A38424 */  addiu      $a0, $a0, %lo(D_8010A3C8 + 0x1)
    /* B133C 800C0B3C 000087A0 */  sb         $a3, 0x0($a0)
    /* B1340 800C0B40 050088A0 */  sb         $t0, 0x5($a0)
    /* B1344 800C0B44 0F80013C */  lui        $at, %hi(D_800F20B0)
    /* B1348 800C0B48 B02022AC */  sw         $v0, %lo(D_800F20B0)($at)
    /* B134C 800C0B4C 00110600 */  sll        $v0, $a2, 4
    /* B1350 800C0B50 21104500 */  addu       $v0, $v0, $a1
    /* B1354 800C0B54 0F80013C */  lui        $at, %hi(D_800F20AC)
    /* B1358 800C0B58 AC2023AC */  sw         $v1, %lo(D_800F20AC)($at)
    /* B135C 800C0B5C 0F80013C */  lui        $at, %hi(D_800F1098)
    /* B1360 800C0B60 981025AC */  sw         $a1, %lo(D_800F1098)($at)
    /* B1364 800C0B64 08004390 */  lbu        $v1, 0x8($v0)
    /* B1368 800C0B68 21100000 */  addu       $v0, $zero, $zero
    /* B136C 800C0B6C 060083A0 */  sb         $v1, 0x6($a0)
  .L800C0B70:
    /* B1370 800C0B70 0800E003 */  jr         $ra
    /* B1374 800C0B74 00000000 */   nop
endlabel func_800C0AB8
