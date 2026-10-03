nonmatching func_8007B39C, 0x80

glabel func_8007B39C
    /* 6BB9C 8007B39C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6BBA0 8007B3A0 801F033C */  lui        $v1, (0x1F80029B >> 16)
    /* 6BBA4 8007B3A4 9B026390 */  lbu        $v1, (0x1F80029B & 0xFFFF)($v1)
    /* 6BBA8 8007B3A8 01000224 */  addiu      $v0, $zero, 0x1
    /* 6BBAC 8007B3AC 11006210 */  beq        $v1, $v0, .L8007B3F4
    /* 6BBB0 8007B3B0 1000BFAF */   sw        $ra, 0x10($sp)
    /* 6BBB4 8007B3B4 02006228 */  slti       $v0, $v1, 0x2
    /* 6BBB8 8007B3B8 05004010 */  beqz       $v0, .L8007B3D0
    /* 6BBBC 8007B3BC 00000000 */   nop
    /* 6BBC0 8007B3C0 08006010 */  beqz       $v1, .L8007B3E4
    /* 6BBC4 8007B3C4 00000000 */   nop
    /* 6BBC8 8007B3C8 03ED0108 */  j          .L8007B40C
    /* 6BBCC 8007B3CC 00000000 */   nop
  .L8007B3D0:
    /* 6BBD0 8007B3D0 02000224 */  addiu      $v0, $zero, 0x2
    /* 6BBD4 8007B3D4 0B006210 */  beq        $v1, $v0, .L8007B404
    /* 6BBD8 8007B3D8 00000000 */   nop
    /* 6BBDC 8007B3DC 03ED0108 */  j          .L8007B40C
    /* 6BBE0 8007B3E0 00000000 */   nop
  .L8007B3E4:
    /* 6BBE4 8007B3E4 CAE8010C */  jal        func_8007A328
    /* 6BBE8 8007B3E8 00000000 */   nop
    /* 6BBEC 8007B3EC 03ED0108 */  j          .L8007B40C
    /* 6BBF0 8007B3F0 00000000 */   nop
  .L8007B3F4:
    /* 6BBF4 8007B3F4 07ED010C */  jal        func_8007B41C
    /* 6BBF8 8007B3F8 00000000 */   nop
    /* 6BBFC 8007B3FC 03ED0108 */  j          .L8007B40C
    /* 6BC00 8007B400 00000000 */   nop
  .L8007B404:
    /* 6BC04 8007B404 1CEB010C */  jal        func_8007AC70
    /* 6BC08 8007B408 00000000 */   nop
  .L8007B40C:
    /* 6BC0C 8007B40C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 6BC10 8007B410 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6BC14 8007B414 0800E003 */  jr         $ra
    /* 6BC18 8007B418 00000000 */   nop
endlabel func_8007B39C
