nonmatching func_800B8624, 0xF0

glabel func_800B8624
    /* A8E24 800B8624 0D80033C */  lui        $v1, %hi(D_800D3C28)
    /* A8E28 800B8628 283C638C */  lw         $v1, %lo(D_800D3C28)($v1)
    /* A8E2C 800B862C 00000000 */  nop
    /* A8E30 800B8630 B8016294 */  lhu        $v0, 0x1B8($v1)
    /* A8E34 800B8634 00000000 */  nop
    /* A8E38 800B8638 09004014 */  bnez       $v0, .L800B8660
    /* A8E3C 800B863C F8FFBD27 */   addiu     $sp, $sp, -0x8
    /* A8E40 800B8640 BA016294 */  lhu        $v0, 0x1BA($v1)
    /* A8E44 800B8644 00000000 */  nop
    /* A8E48 800B8648 06004014 */  bnez       $v0, .L800B8664
    /* A8E4C 800B864C FF3F0224 */   addiu     $v0, $zero, 0x3FFF
    /* A8E50 800B8650 800162A4 */  sh         $v0, 0x180($v1)
    /* A8E54 800B8654 820162A4 */  sh         $v0, 0x182($v1)
    /* A8E58 800B8658 0D80033C */  lui        $v1, %hi(D_800D3C28)
    /* A8E5C 800B865C 283C638C */  lw         $v1, %lo(D_800D3C28)($v1)
  .L800B8660:
    /* A8E60 800B8660 FF3F0224 */  addiu      $v0, $zero, 0x3FFF
  .L800B8664:
    /* A8E64 800B8664 B00162A4 */  sh         $v0, 0x1B0($v1)
    /* A8E68 800B8668 B20162A4 */  sh         $v0, 0x1B2($v1)
    /* A8E6C 800B866C 01C00234 */  ori        $v0, $zero, 0xC001
    /* A8E70 800B8670 AA0162A4 */  sh         $v0, 0x1AA($v1)
    /* A8E74 800B8674 0D80033C */  lui        $v1, %hi(D_800D3C14)
    /* A8E78 800B8678 143C638C */  lw         $v1, %lo(D_800D3C14)($v1)
    /* A8E7C 800B867C 80000224 */  addiu      $v0, $zero, 0x80
    /* A8E80 800B8680 0200A2A3 */  sb         $v0, 0x2($sp)
    /* A8E84 800B8684 0000A2A3 */  sb         $v0, 0x0($sp)
    /* A8E88 800B8688 02000224 */  addiu      $v0, $zero, 0x2
    /* A8E8C 800B868C 0300A0A3 */  sb         $zero, 0x3($sp)
    /* A8E90 800B8690 0100A0A3 */  sb         $zero, 0x1($sp)
    /* A8E94 800B8694 000062A0 */  sb         $v0, 0x0($v1)
    /* A8E98 800B8698 0D80033C */  lui        $v1, %hi(D_800D3C1C)
    /* A8E9C 800B869C 1C3C638C */  lw         $v1, %lo(D_800D3C1C)($v1)
    /* A8EA0 800B86A0 0000A293 */  lbu        $v0, 0x0($sp)
    /* A8EA4 800B86A4 00000000 */  nop
    /* A8EA8 800B86A8 000062A0 */  sb         $v0, 0x0($v1)
    /* A8EAC 800B86AC 0D80033C */  lui        $v1, %hi(D_800D3C20)
    /* A8EB0 800B86B0 203C638C */  lw         $v1, %lo(D_800D3C20)($v1)
    /* A8EB4 800B86B4 0100A293 */  lbu        $v0, 0x1($sp)
    /* A8EB8 800B86B8 00000000 */  nop
    /* A8EBC 800B86BC 000062A0 */  sb         $v0, 0x0($v1)
    /* A8EC0 800B86C0 0D80033C */  lui        $v1, %hi(D_800D3C14)
    /* A8EC4 800B86C4 143C638C */  lw         $v1, %lo(D_800D3C14)($v1)
    /* A8EC8 800B86C8 03000224 */  addiu      $v0, $zero, 0x3
    /* A8ECC 800B86CC 000062A0 */  sb         $v0, 0x0($v1)
    /* A8ED0 800B86D0 0D80033C */  lui        $v1, %hi(D_800D3C18)
    /* A8ED4 800B86D4 183C638C */  lw         $v1, %lo(D_800D3C18)($v1)
    /* A8ED8 800B86D8 0200A293 */  lbu        $v0, 0x2($sp)
    /* A8EDC 800B86DC 00000000 */  nop
    /* A8EE0 800B86E0 000062A0 */  sb         $v0, 0x0($v1)
    /* A8EE4 800B86E4 0D80033C */  lui        $v1, %hi(D_800D3C1C)
    /* A8EE8 800B86E8 1C3C638C */  lw         $v1, %lo(D_800D3C1C)($v1)
    /* A8EEC 800B86EC 0300A293 */  lbu        $v0, 0x3($sp)
    /* A8EF0 800B86F0 00000000 */  nop
    /* A8EF4 800B86F4 000062A0 */  sb         $v0, 0x0($v1)
    /* A8EF8 800B86F8 0D80033C */  lui        $v1, %hi(D_800D3C20)
    /* A8EFC 800B86FC 203C638C */  lw         $v1, %lo(D_800D3C20)($v1)
    /* A8F00 800B8700 20000224 */  addiu      $v0, $zero, 0x20
    /* A8F04 800B8704 000062A0 */  sb         $v0, 0x0($v1)
    /* A8F08 800B8708 21100000 */  addu       $v0, $zero, $zero
    /* A8F0C 800B870C 0800E003 */  jr         $ra
    /* A8F10 800B8710 0800BD27 */   addiu     $sp, $sp, 0x8
endlabel func_800B8624
