nonmatching func_800B1348, 0x138

glabel func_800B1348
    /* A1B48 800B1348 0000AB8C */  lw         $t3, 0x0($a1)
    /* A1B4C 800B134C 0400AC8C */  lw         $t4, 0x4($a1)
    /* A1B50 800B1350 0800AD8C */  lw         $t5, 0x8($a1)
    /* A1B54 800B1354 0000888C */  lw         $t0, 0x0($a0)
    /* A1B58 800B1358 00000000 */  nop
    /* A1B5C 800B135C FFFF0931 */  andi       $t1, $t0, 0xFFFF
    /* A1B60 800B1360 004C0900 */  sll        $t1, $t1, 16
    /* A1B64 800B1364 034C0900 */  sra        $t1, $t1, 16
    /* A1B68 800B1368 19002B01 */  multu      $t1, $t3
    /* A1B6C 800B136C 12480000 */  mflo       $t1
    /* A1B70 800B1370 034B0900 */  sra        $t1, $t1, 12
    /* A1B74 800B1374 FFFF2931 */  andi       $t1, $t1, 0xFFFF
    /* A1B78 800B1378 03540800 */  sra        $t2, $t0, 16
    /* A1B7C 800B137C 19004C01 */  multu      $t2, $t4
    /* A1B80 800B1380 12500000 */  mflo       $t2
    /* A1B84 800B1384 03530A00 */  sra        $t2, $t2, 12
    /* A1B88 800B1388 00540A00 */  sll        $t2, $t2, 16
    /* A1B8C 800B138C 25482A01 */  or         $t1, $t1, $t2
    /* A1B90 800B1390 000089AC */  sw         $t1, 0x0($a0)
    /* A1B94 800B1394 0400888C */  lw         $t0, 0x4($a0)
    /* A1B98 800B1398 00000000 */  nop
    /* A1B9C 800B139C FFFF0931 */  andi       $t1, $t0, 0xFFFF
    /* A1BA0 800B13A0 004C0900 */  sll        $t1, $t1, 16
    /* A1BA4 800B13A4 034C0900 */  sra        $t1, $t1, 16
    /* A1BA8 800B13A8 19002D01 */  multu      $t1, $t5
    /* A1BAC 800B13AC 12480000 */  mflo       $t1
    /* A1BB0 800B13B0 034B0900 */  sra        $t1, $t1, 12
    /* A1BB4 800B13B4 FFFF2931 */  andi       $t1, $t1, 0xFFFF
    /* A1BB8 800B13B8 03540800 */  sra        $t2, $t0, 16
    /* A1BBC 800B13BC 19004B01 */  multu      $t2, $t3
    /* A1BC0 800B13C0 12500000 */  mflo       $t2
    /* A1BC4 800B13C4 03530A00 */  sra        $t2, $t2, 12
    /* A1BC8 800B13C8 00540A00 */  sll        $t2, $t2, 16
    /* A1BCC 800B13CC 25482A01 */  or         $t1, $t1, $t2
    /* A1BD0 800B13D0 040089AC */  sw         $t1, 0x4($a0)
    /* A1BD4 800B13D4 0800888C */  lw         $t0, 0x8($a0)
    /* A1BD8 800B13D8 00000000 */  nop
    /* A1BDC 800B13DC FFFF0931 */  andi       $t1, $t0, 0xFFFF
    /* A1BE0 800B13E0 004C0900 */  sll        $t1, $t1, 16
    /* A1BE4 800B13E4 034C0900 */  sra        $t1, $t1, 16
    /* A1BE8 800B13E8 19002C01 */  multu      $t1, $t4
    /* A1BEC 800B13EC 12480000 */  mflo       $t1
    /* A1BF0 800B13F0 034B0900 */  sra        $t1, $t1, 12
    /* A1BF4 800B13F4 FFFF2931 */  andi       $t1, $t1, 0xFFFF
    /* A1BF8 800B13F8 03540800 */  sra        $t2, $t0, 16
    /* A1BFC 800B13FC 19004D01 */  multu      $t2, $t5
    /* A1C00 800B1400 12500000 */  mflo       $t2
    /* A1C04 800B1404 03530A00 */  sra        $t2, $t2, 12
    /* A1C08 800B1408 00540A00 */  sll        $t2, $t2, 16
    /* A1C0C 800B140C 25482A01 */  or         $t1, $t1, $t2
    /* A1C10 800B1410 080089AC */  sw         $t1, 0x8($a0)
    /* A1C14 800B1414 0C00888C */  lw         $t0, 0xC($a0)
    /* A1C18 800B1418 00000000 */  nop
    /* A1C1C 800B141C FFFF0931 */  andi       $t1, $t0, 0xFFFF
    /* A1C20 800B1420 004C0900 */  sll        $t1, $t1, 16
    /* A1C24 800B1424 034C0900 */  sra        $t1, $t1, 16
    /* A1C28 800B1428 19002B01 */  multu      $t1, $t3
    /* A1C2C 800B142C 12480000 */  mflo       $t1
    /* A1C30 800B1430 034B0900 */  sra        $t1, $t1, 12
    /* A1C34 800B1434 FFFF2931 */  andi       $t1, $t1, 0xFFFF
    /* A1C38 800B1438 03540800 */  sra        $t2, $t0, 16
    /* A1C3C 800B143C 19004C01 */  multu      $t2, $t4
    /* A1C40 800B1440 12500000 */  mflo       $t2
    /* A1C44 800B1444 03530A00 */  sra        $t2, $t2, 12
    /* A1C48 800B1448 00540A00 */  sll        $t2, $t2, 16
    /* A1C4C 800B144C 25482A01 */  or         $t1, $t1, $t2
    /* A1C50 800B1450 0C0089AC */  sw         $t1, 0xC($a0)
    /* A1C54 800B1454 1000888C */  lw         $t0, 0x10($a0)
    /* A1C58 800B1458 00000000 */  nop
    /* A1C5C 800B145C FFFF0931 */  andi       $t1, $t0, 0xFFFF
    /* A1C60 800B1460 004C0900 */  sll        $t1, $t1, 16
    /* A1C64 800B1464 034C0900 */  sra        $t1, $t1, 16
    /* A1C68 800B1468 19002D01 */  multu      $t1, $t5
    /* A1C6C 800B146C 12480000 */  mflo       $t1
    /* A1C70 800B1470 034B0900 */  sra        $t1, $t1, 12
    /* A1C74 800B1474 100089AC */  sw         $t1, 0x10($a0)
    /* A1C78 800B1478 0800E003 */  jr         $ra
    /* A1C7C 800B147C 21108000 */   addu      $v0, $a0, $zero
endlabel func_800B1348
    /* A1C80 800B1480 00000000 */  nop
    /* A1C84 800B1484 00000000 */  nop
