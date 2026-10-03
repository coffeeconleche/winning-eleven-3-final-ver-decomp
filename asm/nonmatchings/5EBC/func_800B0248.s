nonmatching func_800B0248, 0x48

glabel func_800B0248
    /* A0A48 800B0248 0004033C */  lui        $v1, (0x4000002 >> 16)
    /* A0A4C 800B024C 0D80023C */  lui        $v0, %hi(D_800CEB9C)
    /* A0A50 800B0250 9CEB428C */  lw         $v0, %lo(D_800CEB9C)($v0)
    /* A0A54 800B0254 02006334 */  ori        $v1, $v1, (0x4000002 & 0xFFFF)
    /* A0A58 800B0258 000043AC */  sw         $v1, 0x0($v0)
    /* A0A5C 800B025C 0D80023C */  lui        $v0, %hi(D_800CEBA0)
    /* A0A60 800B0260 A0EB428C */  lw         $v0, %lo(D_800CEBA0)($v0)
    /* A0A64 800B0264 00000000 */  nop
    /* A0A68 800B0268 000044AC */  sw         $a0, 0x0($v0)
    /* A0A6C 800B026C 0D80023C */  lui        $v0, %hi(D_800CEBA4)
    /* A0A70 800B0270 A4EB428C */  lw         $v0, %lo(D_800CEBA4)($v0)
    /* A0A74 800B0274 0001033C */  lui        $v1, (0x1000401 >> 16)
    /* A0A78 800B0278 000040AC */  sw         $zero, 0x0($v0)
    /* A0A7C 800B027C 0D80023C */  lui        $v0, %hi(D_800CEBA8)
    /* A0A80 800B0280 A8EB428C */  lw         $v0, %lo(D_800CEBA8)($v0)
    /* A0A84 800B0284 01046334 */  ori        $v1, $v1, (0x1000401 & 0xFFFF)
    /* A0A88 800B0288 0800E003 */  jr         $ra
    /* A0A8C 800B028C 000043AC */   sw        $v1, 0x0($v0)
endlabel func_800B0248
