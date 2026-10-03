/* Handwritten function */
nonmatching func_800B2388, 0x1FC

glabel func_800B2388
    /* A2B88 800B2388 04008884 */  lh         $t0, 0x4($a0)
    /* A2B8C 800B238C 25100500 */  or         $v0, $zero, $a1
    /* A2B90 800B2390 0D80033C */  lui        $v1, %hi(D_800CED64)
    /* A2B94 800B2394 64ED6324 */  addiu      $v1, $v1, %lo(D_800CED64)
    /* A2B98 800B2398 00008C8C */  lw         $t4, 0x0($a0)
    /* A2B9C 800B239C C35F0800 */  sra        $t3, $t0, 31
    /* A2BA0 800B23A0 20400B01 */  add        $t0, $t0, $t3 /* handwritten instruction */
    /* A2BA4 800B23A4 26400B01 */  xor        $t0, $t0, $t3
    /* A2BA8 800B23A8 80400800 */  sll        $t0, $t0, 2
    /* A2BAC 800B23AC FC3F0831 */  andi       $t0, $t0, 0x3FFC
    /* A2BB0 800B23B0 20400301 */  add        $t0, $t0, $v1 /* handwritten instruction */
    /* A2BB4 800B23B4 0000068D */  lw         $a2, 0x0($t0)
    /* A2BB8 800B23B8 03440C00 */  sra        $t0, $t4, 16
    /* A2BBC 800B23BC C3570800 */  sra        $t2, $t0, 31
    /* A2BC0 800B23C0 20400A01 */  add        $t0, $t0, $t2 /* handwritten instruction */
    /* A2BC4 800B23C4 26400A01 */  xor        $t0, $t0, $t2
    /* A2BC8 800B23C8 80400800 */  sll        $t0, $t0, 2
    /* A2BCC 800B23CC FC3F0831 */  andi       $t0, $t0, 0x3FFC
    /* A2BD0 800B23D0 20400301 */  add        $t0, $t0, $v1 /* handwritten instruction */
    /* A2BD4 800B23D4 0000058D */  lw         $a1, 0x0($t0)
    /* A2BD8 800B23D8 00440C00 */  sll        $t0, $t4, 16
    /* A2BDC 800B23DC 03440800 */  sra        $t0, $t0, 16
    /* A2BE0 800B23E0 C34F0800 */  sra        $t1, $t0, 31
    /* A2BE4 800B23E4 20400901 */  add        $t0, $t0, $t1 /* handwritten instruction */
    /* A2BE8 800B23E8 26400901 */  xor        $t0, $t0, $t1
    /* A2BEC 800B23EC 80400800 */  sll        $t0, $t0, 2
    /* A2BF0 800B23F0 FC3F0831 */  andi       $t0, $t0, 0x3FFC
    /* A2BF4 800B23F4 20400301 */  add        $t0, $t0, $v1 /* handwritten instruction */
    /* A2BF8 800B23F8 0000048D */  lw         $a0, 0x0($t0)
    /* A2BFC 800B23FC 000C0600 */  sll        $at, $a2, 16
    /* A2C00 800B2400 03340600 */  sra        $a2, $a2, 16
    /* A2C04 800B2404 00340600 */  sll        $a2, $a2, 16
    /* A2C08 800B2408 20082B00 */  add        $at, $at, $t3 /* handwritten instruction */
    /* A2C0C 800B240C 26082B00 */  xor        $at, $at, $t3
    /* A2C10 800B2410 020C0100 */  srl        $at, $at, 16
    /* A2C14 800B2414 2530C100 */  or         $a2, $a2, $at
    /* A2C18 800B2418 000C0500 */  sll        $at, $a1, 16
    /* A2C1C 800B241C 032C0500 */  sra        $a1, $a1, 16
    /* A2C20 800B2420 002C0500 */  sll        $a1, $a1, 16
    /* A2C24 800B2424 20082A00 */  add        $at, $at, $t2 /* handwritten instruction */
    /* A2C28 800B2428 26082A00 */  xor        $at, $at, $t2
    /* A2C2C 800B242C 020C0100 */  srl        $at, $at, 16
    /* A2C30 800B2430 2528A100 */  or         $a1, $a1, $at
    /* A2C34 800B2434 000C0400 */  sll        $at, $a0, 16
    /* A2C38 800B2438 03240400 */  sra        $a0, $a0, 16
    /* A2C3C 800B243C 00240400 */  sll        $a0, $a0, 16
    /* A2C40 800B2440 20082900 */  add        $at, $at, $t1 /* handwritten instruction */
    /* A2C44 800B2444 26082900 */  xor        $at, $at, $t1
    /* A2C48 800B2448 020C0100 */  srl        $at, $at, 16
    /* A2C4C 800B244C 25208100 */  or         $a0, $a0, $at
    /* A2C50 800B2450 03440500 */  sra        $t0, $a1, 16
    /* A2C54 800B2454 00408848 */  mtc2       $t0, $8 /* handwritten instruction */
    /* A2C58 800B2458 003C0400 */  sll        $a3, $a0, 16
    /* A2C5C 800B245C 033C0700 */  sra        $a3, $a3, 16
    /* A2C60 800B2460 00488748 */  mtc2       $a3, $9 /* handwritten instruction */
    /* A2C64 800B2464 001C0600 */  sll        $v1, $a2, 16
    /* A2C68 800B2468 031C0300 */  sra        $v1, $v1, 16
    /* A2C6C 800B246C 00508348 */  mtc2       $v1, $10 /* handwritten instruction */
    /* A2C70 800B2470 030C0600 */  sra        $at, $a2, 16
    /* A2C74 800B2474 00588148 */  mtc2       $at, $11 /* handwritten instruction */
    /* A2C78 800B2478 00000000 */  nop
    /* A2C7C 800B247C 030C0400 */  sra        $at, $a0, 16
    /* A2C80 800B2480 3D00984B */  gpf        1
    /* A2C84 800B2484 18002800 */  mult       $at, $t0
    /* A2C88 800B2488 00480848 */  mfc2       $t0, $9 /* handwritten instruction */
    /* A2C8C 800B248C 00500948 */  mfc2       $t1, $10 /* handwritten instruction */
    /* A2C90 800B2490 00740500 */  sll        $t6, $a1, 16
    /* A2C94 800B2494 00580A48 */  mfc2       $t2, $11 /* handwritten instruction */
    /* A2C98 800B2498 03740E00 */  sra        $t6, $t6, 16
    /* A2C9C 800B249C 00408E48 */  mtc2       $t6, $8 /* handwritten instruction */
    /* A2CA0 800B24A0 00488748 */  mtc2       $a3, $9 /* handwritten instruction */
    /* A2CA4 800B24A4 00508348 */  mtc2       $v1, $10 /* handwritten instruction */
    /* A2CA8 800B24A8 030C0600 */  sra        $at, $a2, 16
    /* A2CAC 800B24AC 00588148 */  mtc2       $at, $11 /* handwritten instruction */
    /* A2CB0 800B24B0 00000000 */  nop
    /* A2CB4 800B24B4 3D00984B */  gpf        1
    /* A2CB8 800B24B8 12080000 */  mflo       $at
    /* A2CBC 800B24BC 030B0100 */  sra        $at, $at, 12
    /* A2CC0 800B24C0 100041A4 */  sh         $at, 0x10($v0)
    /* A2CC4 800B24C4 00480B48 */  mfc2       $t3, $9 /* handwritten instruction */
    /* A2CC8 800B24C8 00500C48 */  mfc2       $t4, $10 /* handwritten instruction */
    /* A2CCC 800B24CC 00580D48 */  mfc2       $t5, $11 /* handwritten instruction */
    /* A2CD0 800B24D0 030C0600 */  sra        $at, $a2, 16
    /* A2CD4 800B24D4 00408148 */  mtc2       $at, $8 /* handwritten instruction */
    /* A2CD8 800B24D8 030C0400 */  sra        $at, $a0, 16
    /* A2CDC 800B24DC 00488148 */  mtc2       $at, $9 /* handwritten instruction */
    /* A2CE0 800B24E0 18002E00 */  mult       $at, $t6
    /* A2CE4 800B24E4 00508B48 */  mtc2       $t3, $10 /* handwritten instruction */
    /* A2CE8 800B24E8 00588848 */  mtc2       $t0, $11 /* handwritten instruction */
    /* A2CEC 800B24EC 00000000 */  nop
    /* A2CF0 800B24F0 3D00984B */  gpf        1
    /* A2CF4 800B24F4 00480448 */  mfc2       $a0, $9 /* handwritten instruction */
    /* A2CF8 800B24F8 00500548 */  mfc2       $a1, $10 /* handwritten instruction */
    /* A2CFC 800B24FC 00580648 */  mfc2       $a2, $11 /* handwritten instruction */
    /* A2D00 800B2500 00408348 */  mtc2       $v1, $8 /* handwritten instruction */
    /* A2D04 800B2504 00488148 */  mtc2       $at, $9 /* handwritten instruction */
    /* A2D08 800B2508 00508B48 */  mtc2       $t3, $10 /* handwritten instruction */
    /* A2D0C 800B250C 00588848 */  mtc2       $t0, $11 /* handwritten instruction */
    /* A2D10 800B2510 00000000 */  nop
    /* A2D14 800B2514 3D00984B */  gpf        1
    /* A2D18 800B2518 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* A2D1C 800B251C 22380700 */  neg        $a3, $a3 /* handwritten instruction */
    /* A2D20 800B2520 003C0700 */  sll        $a3, $a3, 16
    /* A2D24 800B2524 25208700 */  or         $a0, $a0, $a3
    /* A2D28 800B2528 080044AC */  sw         $a0, 0x8($v0)
    /* A2D2C 800B252C 00480148 */  mfc2       $at, $9 /* handwritten instruction */
    /* A2D30 800B2530 2248A900 */  sub        $t1, $a1, $t1 /* handwritten instruction */
    /* A2D34 800B2534 00500E48 */  mfc2       $t6, $10 /* handwritten instruction */
    /* A2D38 800B2538 004C0900 */  sll        $t1, $t1, 16
    /* A2D3C 800B253C 00580F48 */  mfc2       $t7, $11 /* handwritten instruction */
    /* A2D40 800B2540 20504E01 */  add        $t2, $t2, $t6 /* handwritten instruction */
    /* A2D44 800B2544 FFFF4A31 */  andi       $t2, $t2, 0xFFFF
    /* A2D48 800B2548 25482A01 */  or         $t1, $t1, $t2
    /* A2D4C 800B254C 000049AC */  sw         $t1, 0x0($v0)
    /* A2D50 800B2550 12480000 */  mflo       $t1
    /* A2D54 800B2554 034B0900 */  sra        $t1, $t1, 12
    /* A2D58 800B2558 FFFF2931 */  andi       $t1, $t1, 0xFFFF
    /* A2D5C 800B255C 000C0100 */  sll        $at, $at, 16
    /* A2D60 800B2560 25082900 */  or         $at, $at, $t1
    /* A2D64 800B2564 040041AC */  sw         $at, 0x4($v0)
    /* A2D68 800B2568 2268ED01 */  sub        $t5, $t7, $t5 /* handwritten instruction */
    /* A2D6C 800B256C FFFFAD31 */  andi       $t5, $t5, 0xFFFF
    /* A2D70 800B2570 2060CC00 */  add        $t4, $a2, $t4 /* handwritten instruction */
    /* A2D74 800B2574 00640C00 */  sll        $t4, $t4, 16
    /* A2D78 800B2578 25608D01 */  or         $t4, $t4, $t5
    /* A2D7C 800B257C 0800E003 */  jr         $ra
    /* A2D80 800B2580 0C004CAC */   sw        $t4, 0xC($v0)
endlabel func_800B2388
    /* A2D84 800B2584 00000000 */  nop
