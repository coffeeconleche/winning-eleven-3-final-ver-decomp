nonmatching func_800C52B8, 0x8C

glabel func_800C52B8
    /* B5AB8 800C52B8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B5ABC 800C52BC 1400B1AF */  sw         $s1, 0x14($sp)
    /* B5AC0 800C52C0 21888000 */  addu       $s1, $a0, $zero
    /* B5AC4 800C52C4 1000B0AF */  sw         $s0, 0x10($sp)
    /* B5AC8 800C52C8 1800BFAF */  sw         $ra, 0x18($sp)
    /* B5ACC 800C52CC F614030C */  jal        func_800C53D8
    /* B5AD0 800C52D0 2180A000 */   addu      $s0, $a1, $zero
    /* B5AD4 800C52D4 0D80033C */  lui        $v1, %hi(D_800D5A44)
    /* B5AD8 800C52D8 445A638C */  lw         $v1, %lo(D_800D5A44)($v1)
    /* B5ADC 800C52DC 00000000 */  nop
    /* B5AE0 800C52E0 0000628C */  lw         $v0, 0x0($v1)
    /* B5AE4 800C52E4 42811000 */  srl        $s0, $s0, 5
    /* B5AE8 800C52E8 88004234 */  ori        $v0, $v0, 0x88
    /* B5AEC 800C52EC 000062AC */  sw         $v0, 0x0($v1)
    /* B5AF0 800C52F0 0D80023C */  lui        $v0, %hi(D_800D5A20)
    /* B5AF4 800C52F4 205A428C */  lw         $v0, %lo(D_800D5A20)($v0)
    /* B5AF8 800C52F8 00841000 */  sll        $s0, $s0, 16
    /* B5AFC 800C52FC 000040AC */  sw         $zero, 0x0($v0)
    /* B5B00 800C5300 0D80023C */  lui        $v0, %hi(D_800D5A18)
    /* B5B04 800C5304 185A428C */  lw         $v0, %lo(D_800D5A18)($v0)
    /* B5B08 800C5308 20001036 */  ori        $s0, $s0, 0x20
    /* B5B0C 800C530C 000051AC */  sw         $s1, 0x0($v0)
    /* B5B10 800C5310 0D80023C */  lui        $v0, %hi(D_800D5A1C)
    /* B5B14 800C5314 1C5A428C */  lw         $v0, %lo(D_800D5A1C)($v0)
    /* B5B18 800C5318 0001033C */  lui        $v1, (0x1000200 >> 16)
    /* B5B1C 800C531C 000050AC */  sw         $s0, 0x0($v0)
    /* B5B20 800C5320 0D80023C */  lui        $v0, %hi(D_800D5A20)
    /* B5B24 800C5324 205A428C */  lw         $v0, %lo(D_800D5A20)($v0)
    /* B5B28 800C5328 00026334 */  ori        $v1, $v1, (0x1000200 & 0xFFFF)
    /* B5B2C 800C532C 000043AC */  sw         $v1, 0x0($v0)
    /* B5B30 800C5330 1800BF8F */  lw         $ra, 0x18($sp)
    /* B5B34 800C5334 1400B18F */  lw         $s1, 0x14($sp)
    /* B5B38 800C5338 1000B08F */  lw         $s0, 0x10($sp)
    /* B5B3C 800C533C 0800E003 */  jr         $ra
    /* B5B40 800C5340 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800C52B8
