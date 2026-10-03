/* Handwritten function */
nonmatching func_800B11B8, 0x10C

glabel func_800B11B8
    /* A19B8 800B11B8 0000888C */  lw         $t0, 0x0($a0)
    /* A19BC 800B11BC 0400898C */  lw         $t1, 0x4($a0)
    /* A19C0 800B11C0 08008A8C */  lw         $t2, 0x8($a0)
    /* A19C4 800B11C4 0C008B8C */  lw         $t3, 0xC($a0)
    /* A19C8 800B11C8 10008C8C */  lw         $t4, 0x10($a0)
    /* A19CC 800B11CC 0000C848 */  ctc2       $t0, $0 /* handwritten instruction */
    /* A19D0 800B11D0 0008C948 */  ctc2       $t1, $1 /* handwritten instruction */
    /* A19D4 800B11D4 0010CA48 */  ctc2       $t2, $2 /* handwritten instruction */
    /* A19D8 800B11D8 0018CB48 */  ctc2       $t3, $3 /* handwritten instruction */
    /* A19DC 800B11DC 0020CC48 */  ctc2       $t4, $4 /* handwritten instruction */
    /* A19E0 800B11E0 0000A894 */  lhu        $t0, 0x0($a1)
    /* A19E4 800B11E4 0400A98C */  lw         $t1, 0x4($a1)
    /* A19E8 800B11E8 0C00AA8C */  lw         $t2, 0xC($a1)
    /* A19EC 800B11EC FFFF013C */  lui        $at, (0xFFFF0000 >> 16)
    /* A19F0 800B11F0 24482101 */  and        $t1, $t1, $at
    /* A19F4 800B11F4 25400901 */  or         $t0, $t0, $t1
    /* A19F8 800B11F8 00008848 */  mtc2       $t0, $0 /* handwritten instruction */
    /* A19FC 800B11FC 00088A48 */  mtc2       $t2, $1 /* handwritten instruction */
    /* A1A00 800B1200 00000000 */  nop
    /* A1A04 800B1204 1260484A */  mvmva      1, 0, 0, 3, 0
    /* A1A08 800B1208 0200A894 */  lhu        $t0, 0x2($a1)
    /* A1A0C 800B120C 0800A98C */  lw         $t1, 0x8($a1)
    /* A1A10 800B1210 0E00AA84 */  lh         $t2, 0xE($a1)
    /* A1A14 800B1214 004C0900 */  sll        $t1, $t1, 16
    /* A1A18 800B1218 25400901 */  or         $t0, $t0, $t1
    /* A1A1C 800B121C 00480B48 */  mfc2       $t3, $9 /* handwritten instruction */
    /* A1A20 800B1220 00500C48 */  mfc2       $t4, $10 /* handwritten instruction */
    /* A1A24 800B1224 00580D48 */  mfc2       $t5, $11 /* handwritten instruction */
    /* A1A28 800B1228 00008848 */  mtc2       $t0, $0 /* handwritten instruction */
    /* A1A2C 800B122C 00088A48 */  mtc2       $t2, $1 /* handwritten instruction */
    /* A1A30 800B1230 00000000 */  nop
    /* A1A34 800B1234 1260484A */  mvmva      1, 0, 0, 3, 0
    /* A1A38 800B1238 0400A894 */  lhu        $t0, 0x4($a1)
    /* A1A3C 800B123C 0800A98C */  lw         $t1, 0x8($a1)
    /* A1A40 800B1240 1000AA8C */  lw         $t2, 0x10($a1)
    /* A1A44 800B1244 FFFF013C */  lui        $at, (0xFFFF0000 >> 16)
    /* A1A48 800B1248 24482101 */  and        $t1, $t1, $at
    /* A1A4C 800B124C 25400901 */  or         $t0, $t0, $t1
    /* A1A50 800B1250 00480E48 */  mfc2       $t6, $9 /* handwritten instruction */
    /* A1A54 800B1254 00500F48 */  mfc2       $t7, $10 /* handwritten instruction */
    /* A1A58 800B1258 00581848 */  mfc2       $t8, $11 /* handwritten instruction */
    /* A1A5C 800B125C 00008848 */  mtc2       $t0, $0 /* handwritten instruction */
    /* A1A60 800B1260 00088A48 */  mtc2       $t2, $1 /* handwritten instruction */
    /* A1A64 800B1264 00000000 */  nop
    /* A1A68 800B1268 1260484A */  mvmva      1, 0, 0, 3, 0
    /* A1A6C 800B126C FFFF6B31 */  andi       $t3, $t3, 0xFFFF
    /* A1A70 800B1270 00740E00 */  sll        $t6, $t6, 16
    /* A1A74 800B1274 2570CB01 */  or         $t6, $t6, $t3
    /* A1A78 800B1278 0000AEAC */  sw         $t6, 0x0($a1)
    /* A1A7C 800B127C FFFFAD31 */  andi       $t5, $t5, 0xFFFF
    /* A1A80 800B1280 00C41800 */  sll        $t8, $t8, 16
    /* A1A84 800B1284 25C00D03 */  or         $t8, $t8, $t5
    /* A1A88 800B1288 0C00B8AC */  sw         $t8, 0xC($a1)
    /* A1A8C 800B128C 00480848 */  mfc2       $t0, $9 /* handwritten instruction */
    /* A1A90 800B1290 00500948 */  mfc2       $t1, $10 /* handwritten instruction */
    /* A1A94 800B1294 FFFF0831 */  andi       $t0, $t0, 0xFFFF
    /* A1A98 800B1298 00640C00 */  sll        $t4, $t4, 16
    /* A1A9C 800B129C 25400C01 */  or         $t0, $t0, $t4
    /* A1AA0 800B12A0 0400A8AC */  sw         $t0, 0x4($a1)
    /* A1AA4 800B12A4 FFFFEF31 */  andi       $t7, $t7, 0xFFFF
    /* A1AA8 800B12A8 004C0900 */  sll        $t1, $t1, 16
    /* A1AAC 800B12AC 25482F01 */  or         $t1, $t1, $t7
    /* A1AB0 800B12B0 0800A9AC */  sw         $t1, 0x8($a1)
    /* A1AB4 800B12B4 1000ABE8 */  swc2       $11, 0x10($a1)
    /* A1AB8 800B12B8 2110A000 */  addu       $v0, $a1, $zero
    /* A1ABC 800B12BC 0800E003 */  jr         $ra
    /* A1AC0 800B12C0 00000000 */   nop
endlabel func_800B11B8
    /* A1AC4 800B12C4 00000000 */  nop
