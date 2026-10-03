nonmatching func_8018EBA4, 0x50

glabel func_8018EBA4
    /* 5C2C 8018EBA4 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 5C30 8018EBA8 FF008430 */  andi       $a0, $a0, 0xFF
    /* 5C34 8018EBAC 80100400 */  sll        $v0, $a0, 2
    /* 5C38 8018EBB0 21104400 */  addu       $v0, $v0, $a0
    /* 5C3C 8018EBB4 C0100200 */  sll        $v0, $v0, 3
    /* 5C40 8018EBB8 1080013C */  lui        $at, %hi(D_80105514)
    /* 5C44 8018EBBC 21082200 */  addu       $at, $at, $v0
    /* 5C48 8018EBC0 1455238C */  lw         $v1, %lo(D_80105514)($at)
  .L8018EBC4:
    /* 5C4C 8018EBC4 00000000 */  nop
    /* 5C50 8018EBC8 0A006290 */  lbu        $v0, 0xA($v1)
    /* 5C54 8018EBCC 00000000 */  nop
    /* 5C58 8018EBD0 02004514 */  bne        $v0, $a1, .L8018EBDC
    /* 5C5C 8018EBD4 00000000 */   nop
    /* 5C60 8018EBD8 0A0066A0 */  sb         $a2, 0xA($v1)
  .L8018EBDC:
    /* 5C64 8018EBDC 00006290 */  lbu        $v0, 0x0($v1)
    /* 5C68 8018EBE0 00000000 */  nop
    /* 5C6C 8018EBE4 F7FF4010 */  beqz       $v0, .L8018EBC4
    /* 5C70 8018EBE8 0C006324 */   addiu     $v1, $v1, 0xC
    /* 5C74 8018EBEC 0800E003 */  jr         $ra
    /* 5C78 8018EBF0 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_8018EBA4
