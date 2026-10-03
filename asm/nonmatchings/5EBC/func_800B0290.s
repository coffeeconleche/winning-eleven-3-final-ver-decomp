nonmatching func_800B0290, 0x30

glabel func_800B0290
    /* A0A90 800B0290 0010023C */  lui        $v0, (0x10000000 >> 16)
    /* A0A94 800B0294 0D80033C */  lui        $v1, %hi(D_800CEB9C)
    /* A0A98 800B0298 9CEB638C */  lw         $v1, %lo(D_800CEB9C)($v1)
    /* A0A9C 800B029C 25208200 */  or         $a0, $a0, $v0
    /* A0AA0 800B02A0 000064AC */  sw         $a0, 0x0($v1)
    /* A0AA4 800B02A4 0D80023C */  lui        $v0, %hi(D_800CEB98)
    /* A0AA8 800B02A8 98EB428C */  lw         $v0, %lo(D_800CEB98)($v0)
    /* A0AAC 800B02AC FF00033C */  lui        $v1, (0xFFFFFF >> 16)
    /* A0AB0 800B02B0 0000428C */  lw         $v0, 0x0($v0)
    /* A0AB4 800B02B4 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
    /* A0AB8 800B02B8 0800E003 */  jr         $ra
    /* A0ABC 800B02BC 24104300 */   and       $v0, $v0, $v1
endlabel func_800B0290
