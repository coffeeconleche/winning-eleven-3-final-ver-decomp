nonmatching func_800C5228, 0x90

glabel func_800C5228
    /* B5A28 800C5228 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B5A2C 800C522C 1400B1AF */  sw         $s1, 0x14($sp)
    /* B5A30 800C5230 21888000 */  addu       $s1, $a0, $zero
    /* B5A34 800C5234 1000B0AF */  sw         $s0, 0x10($sp)
    /* B5A38 800C5238 1800BFAF */  sw         $ra, 0x18($sp)
    /* B5A3C 800C523C D114030C */  jal        func_800C5344
    /* B5A40 800C5240 2180A000 */   addu      $s0, $a1, $zero
    /* B5A44 800C5244 0D80033C */  lui        $v1, %hi(D_800D5A44)
    /* B5A48 800C5248 445A638C */  lw         $v1, %lo(D_800D5A44)($v1)
    /* B5A4C 800C524C 42811000 */  srl        $s0, $s0, 5
    /* B5A50 800C5250 0000628C */  lw         $v0, 0x0($v1)
    /* B5A54 800C5254 00841000 */  sll        $s0, $s0, 16
    /* B5A58 800C5258 88004234 */  ori        $v0, $v0, 0x88
    /* B5A5C 800C525C 000062AC */  sw         $v0, 0x0($v1)
    /* B5A60 800C5260 0D80033C */  lui        $v1, %hi(D_800D5A0C)
    /* B5A64 800C5264 0C5A638C */  lw         $v1, %lo(D_800D5A0C)($v1)
    /* B5A68 800C5268 04002226 */  addiu      $v0, $s1, 0x4
    /* B5A6C 800C526C 000062AC */  sw         $v0, 0x0($v1)
    /* B5A70 800C5270 0D80023C */  lui        $v0, %hi(D_800D5A10)
    /* B5A74 800C5274 105A428C */  lw         $v0, %lo(D_800D5A10)($v0)
    /* B5A78 800C5278 20001036 */  ori        $s0, $s0, 0x20
    /* B5A7C 800C527C 000050AC */  sw         $s0, 0x0($v0)
    /* B5A80 800C5280 0D80033C */  lui        $v1, %hi(D_800D5A3C)
    /* B5A84 800C5284 3C5A638C */  lw         $v1, %lo(D_800D5A3C)($v1)
    /* B5A88 800C5288 0000228E */  lw         $v0, 0x0($s1)
    /* B5A8C 800C528C 0001043C */  lui        $a0, (0x1000201 >> 16)
    /* B5A90 800C5290 000062AC */  sw         $v0, 0x0($v1)
    /* B5A94 800C5294 0D80023C */  lui        $v0, %hi(D_800D5A14)
    /* B5A98 800C5298 145A428C */  lw         $v0, %lo(D_800D5A14)($v0)
    /* B5A9C 800C529C 01028434 */  ori        $a0, $a0, (0x1000201 & 0xFFFF)
    /* B5AA0 800C52A0 000044AC */  sw         $a0, 0x0($v0)
    /* B5AA4 800C52A4 1800BF8F */  lw         $ra, 0x18($sp)
    /* B5AA8 800C52A8 1400B18F */  lw         $s1, 0x14($sp)
    /* B5AAC 800C52AC 1000B08F */  lw         $s0, 0x10($sp)
    /* B5AB0 800C52B0 0800E003 */  jr         $ra
    /* B5AB4 800C52B4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800C5228
