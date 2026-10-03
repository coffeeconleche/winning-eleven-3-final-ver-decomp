nonmatching func_80020DB8, 0x78

glabel func_80020DB8
    /* 115B8 80020DB8 801F023C */  lui        $v0, (0x1F8002E5 >> 16)
    /* 115BC 80020DBC E5024290 */  lbu        $v0, (0x1F8002E5 & 0xFFFF)($v0)
    /* 115C0 80020DC0 00000000 */  nop
    /* 115C4 80020DC4 08004010 */  beqz       $v0, .L80020DE8
    /* 115C8 80020DC8 00000000 */   nop
    /* 115CC 80020DCC 801F033C */  lui        $v1, (0x1F8002E4 >> 16)
    /* 115D0 80020DD0 E4026390 */  lbu        $v1, (0x1F8002E4 & 0xFFFF)($v1)
    /* 115D4 80020DD4 00000000 */  nop
    /* 115D8 80020DD8 0C006010 */  beqz       $v1, .L80020E0C
    /* 115DC 80020DDC 01000224 */   addiu     $v0, $zero, 0x1
    /* 115E0 80020DE0 11006214 */  bne        $v1, $v0, .L80020E28
    /* 115E4 80020DE4 00000000 */   nop
  .L80020DE8:
    /* 115E8 80020DE8 01000224 */  addiu      $v0, $zero, 0x1
    /* 115EC 80020DEC 1080013C */  lui        $at, %hi(D_80105D7C)
    /* 115F0 80020DF0 7C5D22A0 */  sb         $v0, %lo(D_80105D7C)($at)
    /* 115F4 80020DF4 1080013C */  lui        $at, %hi(D_80105DA4)
    /* 115F8 80020DF8 A45D22A0 */  sb         $v0, %lo(D_80105DA4)($at)
    /* 115FC 80020DFC 1080013C */  lui        $at, %hi(D_80105DCC)
    /* 11600 80020E00 CC5D22A0 */  sb         $v0, %lo(D_80105DCC)($at)
    /* 11604 80020E04 8A830008 */  j          .L80020E28
    /* 11608 80020E08 00000000 */   nop
  .L80020E0C:
    /* 1160C 80020E0C 01000224 */  addiu      $v0, $zero, 0x1
    /* 11610 80020E10 1080013C */  lui        $at, %hi(D_80105D7C)
    /* 11614 80020E14 7C5D22A0 */  sb         $v0, %lo(D_80105D7C)($at)
    /* 11618 80020E18 1080013C */  lui        $at, %hi(D_80105DA4)
    /* 1161C 80020E1C A45D20A0 */  sb         $zero, %lo(D_80105DA4)($at)
    /* 11620 80020E20 1080013C */  lui        $at, %hi(D_80105DCC)
    /* 11624 80020E24 CC5D20A0 */  sb         $zero, %lo(D_80105DCC)($at)
  .L80020E28:
    /* 11628 80020E28 0800E003 */  jr         $ra
    /* 1162C 80020E2C 00000000 */   nop
endlabel func_80020DB8
