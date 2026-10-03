nonmatching func_8018EA04, 0x58

glabel func_8018EA04
    /* 5A8C 8018EA04 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 5A90 8018EA08 8E0385A4 */  sh         $a1, 0x38E($a0)
    /* 5A94 8018EA0C 8E038294 */  lhu        $v0, 0x38E($a0)
    /* 5A98 8018EA10 00000000 */  nop
    /* 5A9C 8018EA14 05004014 */  bnez       $v0, .L8018EA2C
    /* 5AA0 8018EA18 900386A0 */   sb        $a2, 0x390($a0)
    /* 5AA4 8018EA1C 1980023C */  lui        $v0, %hi(D_801915A8)
    /* 5AA8 8018EA20 A8154224 */  addiu      $v0, $v0, %lo(D_801915A8)
    /* 5AAC 8018EA24 8E3A0608 */  j          .L8018EA38
    /* 5AB0 8018EA28 180082AC */   sw        $v0, 0x18($a0)
  .L8018EA2C:
    /* 5AB4 8018EA2C 1980023C */  lui        $v0, %hi(D_8019015C)
    /* 5AB8 8018EA30 5C014224 */  addiu      $v0, $v0, %lo(D_8019015C)
    /* 5ABC 8018EA34 180082AC */  sw         $v0, 0x18($a0)
  .L8018EA38:
    /* 5AC0 8018EA38 90038290 */  lbu        $v0, 0x390($a0)
    /* 5AC4 8018EA3C 1800838C */  lw         $v1, 0x18($a0)
    /* 5AC8 8018EA40 80100200 */  sll        $v0, $v0, 2
    /* 5ACC 8018EA44 21186200 */  addu       $v1, $v1, $v0
    /* 5AD0 8018EA48 0000638C */  lw         $v1, 0x0($v1)
    /* 5AD4 8018EA4C 01000224 */  addiu      $v0, $zero, 0x1
    /* 5AD8 8018EA50 AD0382A0 */  sb         $v0, 0x3AD($a0)
    /* 5ADC 8018EA54 0800E003 */  jr         $ra
    /* 5AE0 8018EA58 1C0083AC */   sw        $v1, 0x1C($a0)
endlabel func_8018EA04
