nonmatching func_8009568C, 0x34

glabel func_8009568C
    /* 85E8C 8009568C 801F033C */  lui        $v1, (0x1F8002E1 >> 16)
    /* 85E90 80095690 E1026390 */  lbu        $v1, (0x1F8002E1 & 0xFFFF)($v1)
    /* 85E94 80095694 04000224 */  addiu      $v0, $zero, 0x4
    /* 85E98 80095698 06006210 */  beq        $v1, $v0, .L800956B4
    /* 85E9C 8009569C 08000224 */   addiu     $v0, $zero, 0x8
    /* 85EA0 800956A0 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* 85EA4 800956A4 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* 85EA8 800956A8 00000000 */  nop
    /* 85EAC 800956AC 02006214 */  bne        $v1, $v0, .L800956B8
    /* 85EB0 800956B0 21100000 */   addu      $v0, $zero, $zero
  .L800956B4:
    /* 85EB4 800956B4 01000224 */  addiu      $v0, $zero, 0x1
  .L800956B8:
    /* 85EB8 800956B8 0800E003 */  jr         $ra
    /* 85EBC 800956BC 00000000 */   nop
endlabel func_8009568C
