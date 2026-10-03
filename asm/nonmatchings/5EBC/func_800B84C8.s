nonmatching func_800B84C8, 0x88

glabel func_800B84C8
    /* A8CC8 800B84C8 0D80033C */  lui        $v1, %hi(D_800D3C14)
    /* A8CCC 800B84CC 143C638C */  lw         $v1, %lo(D_800D3C14)($v1)
    /* A8CD0 800B84D0 02000224 */  addiu      $v0, $zero, 0x2
    /* A8CD4 800B84D4 000062A0 */  sb         $v0, 0x0($v1)
    /* A8CD8 800B84D8 0D80033C */  lui        $v1, %hi(D_800D3C1C)
    /* A8CDC 800B84DC 1C3C638C */  lw         $v1, %lo(D_800D3C1C)($v1)
    /* A8CE0 800B84E0 00008290 */  lbu        $v0, 0x0($a0)
    /* A8CE4 800B84E4 00000000 */  nop
    /* A8CE8 800B84E8 000062A0 */  sb         $v0, 0x0($v1)
    /* A8CEC 800B84EC 0D80033C */  lui        $v1, %hi(D_800D3C20)
    /* A8CF0 800B84F0 203C638C */  lw         $v1, %lo(D_800D3C20)($v1)
    /* A8CF4 800B84F4 01008290 */  lbu        $v0, 0x1($a0)
    /* A8CF8 800B84F8 00000000 */  nop
    /* A8CFC 800B84FC 000062A0 */  sb         $v0, 0x0($v1)
    /* A8D00 800B8500 0D80033C */  lui        $v1, %hi(D_800D3C14)
    /* A8D04 800B8504 143C638C */  lw         $v1, %lo(D_800D3C14)($v1)
    /* A8D08 800B8508 03000224 */  addiu      $v0, $zero, 0x3
    /* A8D0C 800B850C 000062A0 */  sb         $v0, 0x0($v1)
    /* A8D10 800B8510 0D80033C */  lui        $v1, %hi(D_800D3C18)
    /* A8D14 800B8514 183C638C */  lw         $v1, %lo(D_800D3C18)($v1)
    /* A8D18 800B8518 02008290 */  lbu        $v0, 0x2($a0)
    /* A8D1C 800B851C 00000000 */  nop
    /* A8D20 800B8520 000062A0 */  sb         $v0, 0x0($v1)
    /* A8D24 800B8524 0D80033C */  lui        $v1, %hi(D_800D3C1C)
    /* A8D28 800B8528 1C3C638C */  lw         $v1, %lo(D_800D3C1C)($v1)
    /* A8D2C 800B852C 03008290 */  lbu        $v0, 0x3($a0)
    /* A8D30 800B8530 00000000 */  nop
    /* A8D34 800B8534 000062A0 */  sb         $v0, 0x0($v1)
    /* A8D38 800B8538 0D80033C */  lui        $v1, %hi(D_800D3C20)
    /* A8D3C 800B853C 203C638C */  lw         $v1, %lo(D_800D3C20)($v1)
    /* A8D40 800B8540 20000224 */  addiu      $v0, $zero, 0x20
    /* A8D44 800B8544 000062A0 */  sb         $v0, 0x0($v1)
    /* A8D48 800B8548 0800E003 */  jr         $ra
    /* A8D4C 800B854C 21100000 */   addu      $v0, $zero, $zero
endlabel func_800B84C8
