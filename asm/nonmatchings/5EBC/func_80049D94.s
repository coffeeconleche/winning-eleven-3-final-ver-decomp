nonmatching func_80049D94, 0x5C

glabel func_80049D94
    /* 3A594 80049D94 99038290 */  lbu        $v0, 0x399($a0)
    /* 3A598 80049D98 8D038390 */  lbu        $v1, 0x38D($a0)
    /* 3A59C 80049D9C 40100200 */  sll        $v0, $v0, 1
    /* 3A5A0 80049DA0 801F013C */  lui        $at, (0x1F800322 >> 16)
    /* 3A5A4 80049DA4 21084100 */  addu       $at, $v0, $at
    /* 3A5A8 80049DA8 22032590 */  lbu        $a1, (0x1F800322 & 0xFFFF)($at)
    /* 3A5AC 80049DAC 00000000 */  nop
    /* 3A5B0 80049DB0 04006510 */  beq        $v1, $a1, .L80049DC4
    /* 3A5B4 80049DB4 801F063C */   lui       $a2, (0x1F800323 >> 16)
    /* 3A5B8 80049DB8 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 3A5BC 80049DBC 0A00A214 */  bne        $a1, $v0, .L80049DE8
    /* 3A5C0 80049DC0 2110A000 */   addu      $v0, $a1, $zero
  .L80049DC4:
    /* 3A5C4 80049DC4 99038290 */  lbu        $v0, 0x399($a0)
    /* 3A5C8 80049DC8 00000000 */  nop
    /* 3A5CC 80049DCC 40100200 */  sll        $v0, $v0, 1
    /* 3A5D0 80049DD0 2110C200 */  addu       $v0, $a2, $v0
    /* 3A5D4 80049DD4 23034390 */  lbu        $v1, (0x1F800323 & 0xFFFF)($v0)
    /* 3A5D8 80049DD8 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 3A5DC 80049DDC 02006214 */  bne        $v1, $v0, .L80049DE8
    /* 3A5E0 80049DE0 21106000 */   addu      $v0, $v1, $zero
    /* 3A5E4 80049DE4 8D038290 */  lbu        $v0, 0x38D($a0)
  .L80049DE8:
    /* 3A5E8 80049DE8 0800E003 */  jr         $ra
    /* 3A5EC 80049DEC 00000000 */   nop
endlabel func_80049D94
