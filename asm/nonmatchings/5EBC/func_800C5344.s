nonmatching func_800C5344, 0x94

glabel func_800C5344
    /* B5B44 800C5344 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B5B48 800C5348 0D80033C */  lui        $v1, %hi(D_800D5A40)
    /* B5B4C 800C534C 405A638C */  lw         $v1, %lo(D_800D5A40)($v1)
    /* B5B50 800C5350 1000023C */  lui        $v0, (0x100000 >> 16)
    /* B5B54 800C5354 1800BFAF */  sw         $ra, 0x18($sp)
    /* B5B58 800C5358 1000A2AF */  sw         $v0, 0x10($sp)
    /* B5B5C 800C535C 0000628C */  lw         $v0, 0x0($v1)
    /* B5B60 800C5360 0020033C */  lui        $v1, (0x20000000 >> 16)
    /* B5B64 800C5364 24104300 */  and        $v0, $v0, $v1
    /* B5B68 800C5368 17004010 */  beqz       $v0, .L800C53C8
    /* B5B6C 800C536C 21100000 */   addu      $v0, $zero, $zero
    /* B5B70 800C5370 FFFF0424 */  addiu      $a0, $zero, -0x1
  .L800C5374:
    /* B5B74 800C5374 1000A28F */  lw         $v0, 0x10($sp)
    /* B5B78 800C5378 00000000 */  nop
    /* B5B7C 800C537C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* B5B80 800C5380 1000A2AF */  sw         $v0, 0x10($sp)
    /* B5B84 800C5384 1000A28F */  lw         $v0, 0x10($sp)
    /* B5B88 800C5388 00000000 */  nop
    /* B5B8C 800C538C 06004414 */  bne        $v0, $a0, .L800C53A8
    /* B5B90 800C5390 00000000 */   nop
    /* B5B94 800C5394 0180043C */  lui        $a0, %hi(D_80015608)
    /* B5B98 800C5398 2115030C */  jal        func_800C5484
    /* B5B9C 800C539C 08568424 */   addiu     $a0, $a0, %lo(D_80015608)
    /* B5BA0 800C53A0 F2140308 */  j          .L800C53C8
    /* B5BA4 800C53A4 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800C53A8:
    /* B5BA8 800C53A8 0D80023C */  lui        $v0, %hi(D_800D5A40)
    /* B5BAC 800C53AC 405A428C */  lw         $v0, %lo(D_800D5A40)($v0)
    /* B5BB0 800C53B0 00000000 */  nop
    /* B5BB4 800C53B4 0000428C */  lw         $v0, 0x0($v0)
    /* B5BB8 800C53B8 00000000 */  nop
    /* B5BBC 800C53BC 24104300 */  and        $v0, $v0, $v1
    /* B5BC0 800C53C0 ECFF4014 */  bnez       $v0, .L800C5374
    /* B5BC4 800C53C4 21100000 */   addu      $v0, $zero, $zero
  .L800C53C8:
    /* B5BC8 800C53C8 1800BF8F */  lw         $ra, 0x18($sp)
    /* B5BCC 800C53CC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* B5BD0 800C53D0 0800E003 */  jr         $ra
    /* B5BD4 800C53D4 00000000 */   nop
endlabel func_800C5344
