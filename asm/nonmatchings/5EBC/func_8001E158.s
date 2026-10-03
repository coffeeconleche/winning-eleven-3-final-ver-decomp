nonmatching func_8001E158, 0x1B8

glabel func_8001E158
    /* E958 8001E158 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* E95C 8001E15C 00F4043C */  lui        $a0, (0xF4000001 >> 16)
    /* E960 8001E160 01008434 */  ori        $a0, $a0, (0xF4000001 & 0xFFFF)
    /* E964 8001E164 04000524 */  addiu      $a1, $zero, 0x4
    /* E968 8001E168 00200624 */  addiu      $a2, $zero, 0x2000
    /* E96C 8001E16C 1000BFAF */  sw         $ra, 0x10($sp)
    /* E970 8001E170 8EB3020C */  jal        func_800ACE38
    /* E974 8001E174 21380000 */   addu      $a3, $zero, $zero
    /* E978 8001E178 00F4043C */  lui        $a0, (0xF4000001 >> 16)
    /* E97C 8001E17C 01008434 */  ori        $a0, $a0, (0xF4000001 & 0xFFFF)
    /* E980 8001E180 00800534 */  ori        $a1, $zero, 0x8000
    /* E984 8001E184 00200624 */  addiu      $a2, $zero, 0x2000
    /* E988 8001E188 1080013C */  lui        $at, %hi(D_800FB568)
    /* E98C 8001E18C 68B522AC */  sw         $v0, %lo(D_800FB568)($at)
    /* E990 8001E190 8EB3020C */  jal        func_800ACE38
    /* E994 8001E194 21380000 */   addu      $a3, $zero, $zero
    /* E998 8001E198 00F4043C */  lui        $a0, (0xF4000001 >> 16)
    /* E99C 8001E19C 01008434 */  ori        $a0, $a0, (0xF4000001 & 0xFFFF)
    /* E9A0 8001E1A0 00010524 */  addiu      $a1, $zero, 0x100
    /* E9A4 8001E1A4 00200624 */  addiu      $a2, $zero, 0x2000
    /* E9A8 8001E1A8 1080013C */  lui        $at, %hi(D_800FB56C)
    /* E9AC 8001E1AC 6CB522AC */  sw         $v0, %lo(D_800FB56C)($at)
    /* E9B0 8001E1B0 8EB3020C */  jal        func_800ACE38
    /* E9B4 8001E1B4 21380000 */   addu      $a3, $zero, $zero
    /* E9B8 8001E1B8 00F4043C */  lui        $a0, (0xF4000001 >> 16)
    /* E9BC 8001E1BC 01008434 */  ori        $a0, $a0, (0xF4000001 & 0xFFFF)
    /* E9C0 8001E1C0 00200524 */  addiu      $a1, $zero, 0x2000
    /* E9C4 8001E1C4 00200624 */  addiu      $a2, $zero, 0x2000
    /* E9C8 8001E1C8 1080013C */  lui        $at, %hi(D_800FB570)
    /* E9CC 8001E1CC 70B522AC */  sw         $v0, %lo(D_800FB570)($at)
    /* E9D0 8001E1D0 8EB3020C */  jal        func_800ACE38
    /* E9D4 8001E1D4 21380000 */   addu      $a3, $zero, $zero
    /* E9D8 8001E1D8 00F0043C */  lui        $a0, (0xF0000011 >> 16)
    /* E9DC 8001E1DC 11008434 */  ori        $a0, $a0, (0xF0000011 & 0xFFFF)
    /* E9E0 8001E1E0 04000524 */  addiu      $a1, $zero, 0x4
    /* E9E4 8001E1E4 00200624 */  addiu      $a2, $zero, 0x2000
    /* E9E8 8001E1E8 1080013C */  lui        $at, %hi(D_800FB574)
    /* E9EC 8001E1EC 74B522AC */  sw         $v0, %lo(D_800FB574)($at)
    /* E9F0 8001E1F0 8EB3020C */  jal        func_800ACE38
    /* E9F4 8001E1F4 21380000 */   addu      $a3, $zero, $zero
    /* E9F8 8001E1F8 00F0043C */  lui        $a0, (0xF0000011 >> 16)
    /* E9FC 8001E1FC 11008434 */  ori        $a0, $a0, (0xF0000011 & 0xFFFF)
    /* EA00 8001E200 00800534 */  ori        $a1, $zero, 0x8000
    /* EA04 8001E204 00200624 */  addiu      $a2, $zero, 0x2000
    /* EA08 8001E208 1080013C */  lui        $at, %hi(D_800FF698)
    /* EA0C 8001E20C 98F622AC */  sw         $v0, %lo(D_800FF698)($at)
    /* EA10 8001E210 8EB3020C */  jal        func_800ACE38
    /* EA14 8001E214 21380000 */   addu      $a3, $zero, $zero
    /* EA18 8001E218 00F0043C */  lui        $a0, (0xF0000011 >> 16)
    /* EA1C 8001E21C 11008434 */  ori        $a0, $a0, (0xF0000011 & 0xFFFF)
    /* EA20 8001E220 00010524 */  addiu      $a1, $zero, 0x100
    /* EA24 8001E224 00200624 */  addiu      $a2, $zero, 0x2000
    /* EA28 8001E228 1080013C */  lui        $at, %hi(D_800FF69C)
    /* EA2C 8001E22C 9CF622AC */  sw         $v0, %lo(D_800FF69C)($at)
    /* EA30 8001E230 8EB3020C */  jal        func_800ACE38
    /* EA34 8001E234 21380000 */   addu      $a3, $zero, $zero
    /* EA38 8001E238 00F0043C */  lui        $a0, (0xF0000011 >> 16)
    /* EA3C 8001E23C 11008434 */  ori        $a0, $a0, (0xF0000011 & 0xFFFF)
    /* EA40 8001E240 00200524 */  addiu      $a1, $zero, 0x2000
    /* EA44 8001E244 00200624 */  addiu      $a2, $zero, 0x2000
    /* EA48 8001E248 1080013C */  lui        $at, %hi(D_800FF6A0)
    /* EA4C 8001E24C A0F622AC */  sw         $v0, %lo(D_800FF6A0)($at)
    /* EA50 8001E250 8EB3020C */  jal        func_800ACE38
    /* EA54 8001E254 21380000 */   addu      $a3, $zero, $zero
    /* EA58 8001E258 1080043C */  lui        $a0, %hi(D_800FB568)
    /* EA5C 8001E25C 68B5848C */  lw         $a0, %lo(D_800FB568)($a0)
    /* EA60 8001E260 1080013C */  lui        $at, %hi(D_800FF6A8)
    /* EA64 8001E264 A8F622AC */  sw         $v0, %lo(D_800FF6A8)($at)
    /* EA68 8001E268 96B3020C */  jal        func_800ACE58
    /* EA6C 8001E26C 00000000 */   nop
    /* EA70 8001E270 1080043C */  lui        $a0, %hi(D_800FB56C)
    /* EA74 8001E274 6CB5848C */  lw         $a0, %lo(D_800FB56C)($a0)
    /* EA78 8001E278 96B3020C */  jal        func_800ACE58
    /* EA7C 8001E27C 00000000 */   nop
    /* EA80 8001E280 1080043C */  lui        $a0, %hi(D_800FB570)
    /* EA84 8001E284 70B5848C */  lw         $a0, %lo(D_800FB570)($a0)
    /* EA88 8001E288 96B3020C */  jal        func_800ACE58
    /* EA8C 8001E28C 00000000 */   nop
    /* EA90 8001E290 1080043C */  lui        $a0, %hi(D_800FB574)
    /* EA94 8001E294 74B5848C */  lw         $a0, %lo(D_800FB574)($a0)
    /* EA98 8001E298 96B3020C */  jal        func_800ACE58
    /* EA9C 8001E29C 00000000 */   nop
    /* EAA0 8001E2A0 1080043C */  lui        $a0, %hi(D_800FF698)
    /* EAA4 8001E2A4 98F6848C */  lw         $a0, %lo(D_800FF698)($a0)
    /* EAA8 8001E2A8 96B3020C */  jal        func_800ACE58
    /* EAAC 8001E2AC 00000000 */   nop
    /* EAB0 8001E2B0 1080043C */  lui        $a0, %hi(D_800FF69C)
    /* EAB4 8001E2B4 9CF6848C */  lw         $a0, %lo(D_800FF69C)($a0)
    /* EAB8 8001E2B8 96B3020C */  jal        func_800ACE58
    /* EABC 8001E2BC 00000000 */   nop
    /* EAC0 8001E2C0 1080043C */  lui        $a0, %hi(D_800FF6A0)
    /* EAC4 8001E2C4 A0F6848C */  lw         $a0, %lo(D_800FF6A0)($a0)
    /* EAC8 8001E2C8 96B3020C */  jal        func_800ACE58
    /* EACC 8001E2CC 00000000 */   nop
    /* EAD0 8001E2D0 1080043C */  lui        $a0, %hi(D_800FF6A8)
    /* EAD4 8001E2D4 A8F6848C */  lw         $a0, %lo(D_800FF6A8)($a0)
    /* EAD8 8001E2D8 96B3020C */  jal        func_800ACE58
    /* EADC 8001E2DC 00000000 */   nop
    /* EAE0 8001E2E0 9AB3020C */  jal        func_800ACE68
    /* EAE4 8001E2E4 00000000 */   nop
    /* EAE8 8001E2E8 6E16030C */  jal        func_800C59B8
    /* EAEC 8001E2EC 01000424 */   addiu     $a0, $zero, 0x1
    /* EAF0 8001E2F0 8916030C */  jal        func_800C5A24
    /* EAF4 8001E2F4 00000000 */   nop
    /* EAF8 8001E2F8 8AB3020C */  jal        func_800ACE28
    /* EAFC 8001E2FC 00000000 */   nop
    /* EB00 8001E300 1000BF8F */  lw         $ra, 0x10($sp)
    /* EB04 8001E304 1800BD27 */  addiu      $sp, $sp, 0x18
    /* EB08 8001E308 0800E003 */  jr         $ra
    /* EB0C 8001E30C 00000000 */   nop
endlabel func_8001E158
