nonmatching func_801BB140, 0xC0

glabel func_801BB140
    /* 321C8 801BB140 801F033C */  lui        $v1, (0x1F80029B >> 16)
    /* 321CC 801BB144 9B026390 */  lbu        $v1, (0x1F80029B & 0xFFFF)($v1)
    /* 321D0 801BB148 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 321D4 801BB14C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 321D8 801BB150 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 321DC 801BB154 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 321E0 801BB158 82006228 */  slti       $v0, $v1, 0x82
    /* 321E4 801BB15C 0A004010 */  beqz       $v0, .L801BB188
    /* 321E8 801BB160 1400BFAF */   sw        $ra, 0x14($sp)
    /* 321EC 801BB164 80006228 */  slti       $v0, $v1, 0x80
    /* 321F0 801BB168 14004010 */  beqz       $v0, .L801BB1BC
    /* 321F4 801BB16C 00000000 */   nop
    /* 321F8 801BB170 0A006010 */  beqz       $v1, .L801BB19C
    /* 321FC 801BB174 01000224 */   addiu     $v0, $zero, 0x1
    /* 32200 801BB178 0C006210 */  beq        $v1, $v0, .L801BB1AC
    /* 32204 801BB17C 00000000 */   nop
    /* 32208 801BB180 7BEC0608 */  j          .L801BB1EC
    /* 3220C 801BB184 00000000 */   nop
  .L801BB188:
    /* 32210 801BB188 84006228 */  slti       $v0, $v1, 0x84
    /* 32214 801BB18C 17004010 */  beqz       $v0, .L801BB1EC
    /* 32218 801BB190 00000000 */   nop
    /* 3221C 801BB194 73EC0608 */  j          .L801BB1CC
    /* 32220 801BB198 00000000 */   nop
  .L801BB19C:
    /* 32224 801BB19C 80EC060C */  jal        func_801BB200
    /* 32228 801BB1A0 00000000 */   nop
    /* 3222C 801BB1A4 7BEC0608 */  j          .L801BB1EC
    /* 32230 801BB1A8 00000000 */   nop
  .L801BB1AC:
    /* 32234 801BB1AC E3EC060C */  jal        func_801BB38C
    /* 32238 801BB1B0 00000000 */   nop
    /* 3223C 801BB1B4 7BEC0608 */  j          .L801BB1EC
    /* 32240 801BB1B8 00000000 */   nop
  .L801BB1BC:
    /* 32244 801BB1BC C93C060C */  jal        func_8018F324
    /* 32248 801BB1C0 00000000 */   nop
    /* 3224C 801BB1C4 7BEC0608 */  j          .L801BB1EC
    /* 32250 801BB1C8 00000000 */   nop
  .L801BB1CC:
    /* 32254 801BB1CC 34A3060C */  jal        func_801A8CD0
    /* 32258 801BB1D0 00000000 */   nop
    /* 3225C 801BB1D4 7F5C000C */  jal        func_800171FC
    /* 32260 801BB1D8 01000424 */   addiu     $a0, $zero, 0x1
    /* 32264 801BB1DC 5A000224 */  addiu      $v0, $zero, 0x5A
    /* 32268 801BB1E0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3226C 801BB1E4 21080102 */  addu       $at, $s0, $at
    /* 32270 801BB1E8 DAAB22A0 */  sb         $v0, -0x5426($at)
  .L801BB1EC:
    /* 32274 801BB1EC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 32278 801BB1F0 1000B08F */  lw         $s0, 0x10($sp)
    /* 3227C 801BB1F4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 32280 801BB1F8 0800E003 */  jr         $ra
    /* 32284 801BB1FC 00000000 */   nop
endlabel func_801BB140
