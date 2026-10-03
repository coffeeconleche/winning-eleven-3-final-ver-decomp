nonmatching func_8008A9D4, 0x1D4

glabel func_8008A9D4
    /* 7B1D4 8008A9D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 7B1D8 8008A9D8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7B1DC 8008A9DC 21808000 */  addu       $s0, $a0, $zero
    /* 7B1E0 8008A9E0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 7B1E4 8008A9E4 97030392 */  lbu        $v1, 0x397($s0)
    /* 7B1E8 8008A9E8 01000224 */  addiu      $v0, $zero, 0x1
    /* 7B1EC 8008A9EC 13006210 */  beq        $v1, $v0, .L8008AA3C
    /* 7B1F0 8008A9F0 02006228 */   slti      $v0, $v1, 0x2
    /* 7B1F4 8008A9F4 05004010 */  beqz       $v0, .L8008AA0C
    /* 7B1F8 8008A9F8 00000000 */   nop
    /* 7B1FC 8008A9FC 08006010 */  beqz       $v1, .L8008AA20
    /* 7B200 8008AA00 5A000224 */   addiu     $v0, $zero, 0x5A
    /* 7B204 8008AA04 E52A0208 */  j          .L8008AB94
    /* 7B208 8008AA08 00000000 */   nop
  .L8008AA0C:
    /* 7B20C 8008AA0C 02000224 */  addiu      $v0, $zero, 0x2
    /* 7B210 8008AA10 58006210 */  beq        $v1, $v0, .L8008AB74
    /* 7B214 8008AA14 00000000 */   nop
    /* 7B218 8008AA18 E52A0208 */  j          .L8008AB94
    /* 7B21C 8008AA1C 00000000 */   nop
  .L8008AA20:
    /* 7B220 8008AA20 8E030396 */  lhu        $v1, 0x38E($s0)
    /* 7B224 8008AA24 00000000 */  nop
    /* 7B228 8008AA28 4D006210 */  beq        $v1, $v0, .L8008AB60
    /* 7B22C 8008AA2C 21200002 */   addu      $a0, $s0, $zero
    /* 7B230 8008AA30 5A000524 */  addiu      $a1, $zero, 0x5A
    /* 7B234 8008AA34 D62A0208 */  j          .L8008AB58
    /* 7B238 8008AA38 21300000 */   addu      $a2, $zero, $zero
  .L8008AA3C:
    /* 7B23C 8008AA3C 476F010C */  jal        func_8005BD1C
    /* 7B240 8008AA40 21200002 */   addu      $a0, $s0, $zero
    /* 7B244 8008AA44 B9030392 */  lbu        $v1, 0x3B9($s0)
    /* 7B248 8008AA48 CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 7B24C 8008AA4C CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 7B250 8008AA50 19006200 */  multu      $v1, $v0
    /* 7B254 8008AA54 29000224 */  addiu      $v0, $zero, 0x29
    /* 7B258 8008AA58 801F033C */  lui        $v1, (0x1F80031C >> 16)
    /* 7B25C 8008AA5C 1C036384 */  lh         $v1, (0x1F80031C & 0xFFFF)($v1)
    /* 7B260 8008AA60 10480000 */  mfhi       $t1
    /* 7B264 8008AA64 C2200900 */  srl        $a0, $t1, 3
    /* 7B268 8008AA68 FF008430 */  andi       $a0, $a0, 0xFF
    /* 7B26C 8008AA6C 23104400 */  subu       $v0, $v0, $a0
    /* 7B270 8008AA70 2A186200 */  slt        $v1, $v1, $v0
    /* 7B274 8008AA74 45006010 */  beqz       $v1, .L8008AB8C
    /* 7B278 8008AA78 82000224 */   addiu     $v0, $zero, 0x82
    /* 7B27C 8008AA7C 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 7B280 8008AA80 F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 7B284 8008AA84 00000000 */  nop
    /* 7B288 8008AA88 A003628C */  lw         $v0, 0x3A0($v1)
    /* 7B28C 8008AA8C 00000000 */  nop
    /* 7B290 8008AA90 0030422C */  sltiu      $v0, $v0, 0x3000
    /* 7B294 8008AA94 3D004014 */  bnez       $v0, .L8008AB8C
    /* 7B298 8008AA98 82000224 */   addiu     $v0, $zero, 0x82
    /* 7B29C 8008AA9C 02000486 */  lh         $a0, 0x2($s0)
    /* 7B2A0 8008AAA0 02006284 */  lh         $v0, 0x2($v1)
    /* 7B2A4 8008AAA4 00000000 */  nop
    /* 7B2A8 8008AAA8 23108200 */  subu       $v0, $a0, $v0
    /* 7B2AC 8008AAAC 18004200 */  mult       $v0, $v0
    /* 7B2B0 8008AAB0 06000886 */  lh         $t0, 0x6($s0)
    /* 7B2B4 8008AAB4 06006284 */  lh         $v0, 0x6($v1)
    /* 7B2B8 8008AAB8 12280000 */  mflo       $a1
    /* 7B2BC 8008AABC 23100201 */  subu       $v0, $t0, $v0
    /* 7B2C0 8008AAC0 00000000 */  nop
    /* 7B2C4 8008AAC4 18004200 */  mult       $v0, $v0
    /* 7B2C8 8008AAC8 0100023C */  lui        $v0, (0x18FFF >> 16)
    /* 7B2CC 8008AACC FF8F4234 */  ori        $v0, $v0, (0x18FFF & 0xFFFF)
    /* 7B2D0 8008AAD0 12180000 */  mflo       $v1
    /* 7B2D4 8008AAD4 2118A300 */  addu       $v1, $a1, $v1
    /* 7B2D8 8008AAD8 2A104300 */  slt        $v0, $v0, $v1
    /* 7B2DC 8008AADC 2B004010 */  beqz       $v0, .L8008AB8C
    /* 7B2E0 8008AAE0 82000224 */   addiu     $v0, $zero, 0x82
    /* 7B2E4 8008AAE4 801F063C */  lui        $a2, (0x1F800036 >> 16)
    /* 7B2E8 8008AAE8 3600C684 */  lh         $a2, (0x1F800036 & 0xFFFF)($a2)
    /* 7B2EC 8008AAEC 801F073C */  lui        $a3, (0x1F800066 >> 16)
    /* 7B2F0 8008AAF0 6600E784 */  lh         $a3, (0x1F800066 & 0xFFFF)($a3)
    /* 7B2F4 8008AAF4 DB6C010C */  jal        func_8005B36C
    /* 7B2F8 8008AAF8 21280001 */   addu      $a1, $t0, $zero
    /* 7B2FC 8008AAFC AA030492 */  lbu        $a0, 0x3AA($s0)
    /* 7B300 8008AB00 21384000 */  addu       $a3, $v0, $zero
    /* 7B304 8008AB04 2310E400 */  subu       $v0, $a3, $a0
    /* 7B308 8008AB08 FF004330 */  andi       $v1, $v0, 0xFF
    /* 7B30C 8008AB0C 8100622C */  sltiu      $v0, $v1, 0x81
    /* 7B310 8008AB10 08004014 */  bnez       $v0, .L8008AB34
    /* 7B314 8008AB14 34006228 */   slti      $v0, $v1, 0x34
    /* 7B318 8008AB18 23108700 */  subu       $v0, $a0, $a3
    /* 7B31C 8008AB1C FF004230 */  andi       $v0, $v0, 0xFF
    /* 7B320 8008AB20 34004228 */  slti       $v0, $v0, 0x34
    /* 7B324 8008AB24 05004010 */  beqz       $v0, .L8008AB3C
    /* 7B328 8008AB28 21200002 */   addu      $a0, $s0, $zero
    /* 7B32C 8008AB2C E52A0208 */  j          .L8008AB94
    /* 7B330 8008AB30 00000000 */   nop
  .L8008AB34:
    /* 7B334 8008AB34 17004014 */  bnez       $v0, .L8008AB94
    /* 7B338 8008AB38 21200002 */   addu      $a0, $s0, $zero
  .L8008AB3C:
    /* 7B33C 8008AB3C 6C000524 */  addiu      $a1, $zero, 0x6C
    /* 7B340 8008AB40 AA030292 */  lbu        $v0, 0x3AA($s0)
    /* 7B344 8008AB44 21300000 */  addu       $a2, $zero, $zero
    /* 7B348 8008AB48 2310E200 */  subu       $v0, $a3, $v0
    /* 7B34C 8008AB4C FF004230 */  andi       $v0, $v0, 0xFF
    /* 7B350 8008AB50 8100422C */  sltiu      $v0, $v0, 0x81
    /* 7B354 8008AB54 AC0302A2 */  sb         $v0, 0x3AC($s0)
  .L8008AB58:
    /* 7B358 8008AB58 8C6E010C */  jal        func_8005BA30
    /* 7B35C 8008AB5C 00000000 */   nop
  .L8008AB60:
    /* 7B360 8008AB60 97030292 */  lbu        $v0, 0x397($s0)
    /* 7B364 8008AB64 00000000 */  nop
    /* 7B368 8008AB68 01004224 */  addiu      $v0, $v0, 0x1
    /* 7B36C 8008AB6C E52A0208 */  j          .L8008AB94
    /* 7B370 8008AB70 970302A2 */   sb        $v0, 0x397($s0)
  .L8008AB74:
    /* 7B374 8008AB74 476F010C */  jal        func_8005BD1C
    /* 7B378 8008AB78 21200002 */   addu      $a0, $s0, $zero
    /* 7B37C 8008AB7C 90030392 */  lbu        $v1, 0x390($s0)
    /* 7B380 8008AB80 19000224 */  addiu      $v0, $zero, 0x19
    /* 7B384 8008AB84 03006214 */  bne        $v1, $v0, .L8008AB94
    /* 7B388 8008AB88 82000224 */   addiu     $v0, $zero, 0x82
  .L8008AB8C:
    /* 7B38C 8008AB8C 960302A2 */  sb         $v0, 0x396($s0)
    /* 7B390 8008AB90 970300A2 */  sb         $zero, 0x397($s0)
  .L8008AB94:
    /* 7B394 8008AB94 1400BF8F */  lw         $ra, 0x14($sp)
    /* 7B398 8008AB98 1000B08F */  lw         $s0, 0x10($sp)
    /* 7B39C 8008AB9C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 7B3A0 8008ABA0 0800E003 */  jr         $ra
    /* 7B3A4 8008ABA4 00000000 */   nop
endlabel func_8008A9D4
