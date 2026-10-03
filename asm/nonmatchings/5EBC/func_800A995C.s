nonmatching func_800A995C, 0x1D8

glabel func_800A995C
    /* 9A15C 800A995C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9A160 800A9960 10100434 */  ori        $a0, $zero, 0x1010
    /* 9A164 800A9964 0200053C */  lui        $a1, (0x20000 >> 16)
    /* 9A168 800A9968 2000BFAF */  sw         $ra, 0x20($sp)
    /* 9A16C 800A996C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 9A170 800A9970 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9A174 800A9974 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9A178 800A9978 0E0A030C */  jal        func_800C2838
    /* 9A17C 800A997C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 9A180 800A9980 0200043C */  lui        $a0, (0x21010 >> 16)
    /* 9A184 800A9984 10108434 */  ori        $a0, $a0, (0x21010 & 0xFFFF)
    /* 9A188 800A9988 E40082AF */  sw         $v0, %gp_rel(D_800E6B70)($gp)
    /* 9A18C 800A998C 0E0A030C */  jal        func_800C2838
    /* 9A190 800A9990 0200053C */   lui       $a1, (0x20000 >> 16)
    /* 9A194 800A9994 E40082AF */  sw         $v0, %gp_rel(D_800E6B70)($gp)
    /* 9A198 800A9998 6E0F030C */  jal        func_800C3DB8
    /* 9A19C 800A999C 10100434 */   ori       $a0, $zero, 0x1010
    /* 9A1A0 800A99A0 0F80043C */  lui        $a0, %hi(D_800EF870)
    /* 9A1A4 800A99A4 70F88424 */  addiu      $a0, $a0, %lo(D_800EF870)
    /* 9A1A8 800A99A8 03001234 */  ori        $s2, $zero, 0x3
    /* 9A1AC 800A99AC FF7F0234 */  ori        $v0, $zero, 0x7FFF
    /* 9A1B0 800A99B0 000092AC */  sw         $s2, 0x0($a0)
    /* 9A1B4 800A99B4 0F80013C */  lui        $at, %hi(D_800EF874)
    /* 9A1B8 800A99B8 74F822A4 */  sh         $v0, %lo(D_800EF874)($at)
    /* 9A1BC 800A99BC 0F80013C */  lui        $at, %hi(D_800EF876)
    /* 9A1C0 800A99C0 76F822A4 */  sh         $v0, %lo(D_800EF876)($at)
    /* 9A1C4 800A99C4 F20F030C */  jal        func_800C3FC8
    /* 9A1C8 800A99C8 01001034 */   ori       $s0, $zero, 0x1
    /* 9A1CC 800A99CC 0F80033C */  lui        $v1, %hi(D_800F0F2C)
    /* 9A1D0 800A99D0 2C0F6324 */  addiu      $v1, $v1, %lo(D_800F0F2C)
    /* 9A1D4 800A99D4 0F80113C */  lui        $s1, %hi(D_800F0EEC)
    /* 9A1D8 800A99D8 EC0E3126 */  addiu      $s1, $s1, %lo(D_800F0EEC)
    /* 9A1DC 800A99DC 93FF0234 */  ori        $v0, $zero, 0xFF93
    /* 9A1E0 800A99E0 000022AE */  sw         $v0, 0x0($s1)
    /* 9A1E4 800A99E4 000062AC */  sw         $v0, 0x0($v1)
    /* 9A1E8 800A99E8 4000023C */  lui        $v0, (0x400000 >> 16)
    /* 9A1EC 800A99EC FCFF62AC */  sw         $v0, -0x4($v1)
    /* 9A1F0 800A99F0 FF3F0234 */  ori        $v0, $zero, 0x3FFF
    /* 9A1F4 800A99F4 0F80013C */  lui        $at, %hi(D_800F0F30)
    /* 9A1F8 800A99F8 300F22A4 */  sh         $v0, %lo(D_800F0F30)($at)
    /* 9A1FC 800A99FC 0F80013C */  lui        $at, %hi(D_800F0F32)
    /* 9A200 800A9A00 320F22A4 */  sh         $v0, %lo(D_800F0F32)($at)
    /* 9A204 800A9A04 CE050234 */  ori        $v0, $zero, 0x5CE
    /* 9A208 800A9A08 0F80013C */  lui        $at, %hi(D_800F0F3C)
    /* 9A20C 800A9A0C 3C0F22A4 */  sh         $v0, %lo(D_800F0F3C)($at)
    /* 9A210 800A9A10 10100234 */  ori        $v0, $zero, 0x1010
    /* 9A214 800A9A14 0F001334 */  ori        $s3, $zero, 0xF
    /* 9A218 800A9A18 0F80013C */  lui        $at, %hi(D_800F0F44)
    /* 9A21C 800A9A1C 440F22AC */  sw         $v0, %lo(D_800F0F44)($at)
    /* 9A220 800A9A20 50100234 */  ori        $v0, $zero, 0x1050
    /* 9A224 800A9A24 0F80013C */  lui        $at, %hi(D_800F0F4C)
    /* 9A228 800A9A28 4C0F30AC */  sw         $s0, %lo(D_800F0F4C)($at)
    /* 9A22C 800A9A2C 0F80013C */  lui        $at, %hi(D_800F0F50)
    /* 9A230 800A9A30 500F30AC */  sw         $s0, %lo(D_800F0F50)($at)
    /* 9A234 800A9A34 0F80013C */  lui        $at, %hi(D_800F0F54)
    /* 9A238 800A9A38 540F32AC */  sw         $s2, %lo(D_800F0F54)($at)
    /* 9A23C 800A9A3C 0F80013C */  lui        $at, %hi(D_800F0F58)
    /* 9A240 800A9A40 580F20A4 */  sh         $zero, %lo(D_800F0F58)($at)
    /* 9A244 800A9A44 0F80013C */  lui        $at, %hi(D_800F0F5A)
    /* 9A248 800A9A48 5A0F20A4 */  sh         $zero, %lo(D_800F0F5A)($at)
    /* 9A24C 800A9A4C 0F80013C */  lui        $at, %hi(D_800F0F5C)
    /* 9A250 800A9A50 5C0F20A4 */  sh         $zero, %lo(D_800F0F5C)($at)
    /* 9A254 800A9A54 0F80013C */  lui        $at, %hi(D_800F0F5E)
    /* 9A258 800A9A58 5E0F20A4 */  sh         $zero, %lo(D_800F0F5E)($at)
    /* 9A25C 800A9A5C 0F80013C */  lui        $at, %hi(D_800F0F60)
    /* 9A260 800A9A60 600F33A4 */  sh         $s3, %lo(D_800F0F60)($at)
    /* 9A264 800A9A64 0F80013C */  lui        $at, %hi(D_800F0F48)
    /* 9A268 800A9A68 480F22AC */  sw         $v0, %lo(D_800F0F48)($at)
    /* 9A26C 800A9A6C 2A11030C */  jal        func_800C44A8
    /* 9A270 800A9A70 FCFF6424 */   addiu     $a0, $v1, -0x4
    /* 9A274 800A9A74 0200053C */  lui        $a1, (0x21010 >> 16)
    /* 9A278 800A9A78 1010A534 */  ori        $a1, $a1, (0x21010 & 0xFFFF)
    /* 9A27C 800A9A7C 0200063C */  lui        $a2, (0x21050 >> 16)
    /* 9A280 800A9A80 5010C634 */  ori        $a2, $a2, (0x21050 & 0xFFFF)
    /* 9A284 800A9A84 8000023C */  lui        $v0, (0x800000 >> 16)
    /* 9A288 800A9A88 FCFF22AE */  sw         $v0, -0x4($s1)
    /* 9A28C 800A9A8C 0D80033C */  lui        $v1, %hi(D_800CE750)
    /* 9A290 800A9A90 50E76394 */  lhu        $v1, %lo(D_800CE750)($v1)
    /* 9A294 800A9A94 200A0234 */  ori        $v0, $zero, 0xA20
    /* 9A298 800A9A98 0F80013C */  lui        $at, %hi(D_800F0EFC)
    /* 9A29C 800A9A9C FC0E22A4 */  sh         $v0, %lo(D_800F0EFC)($at)
    /* 9A2A0 800A9AA0 0F80013C */  lui        $at, %hi(D_800F0F04)
    /* 9A2A4 800A9AA4 040F25AC */  sw         $a1, %lo(D_800F0F04)($at)
    /* 9A2A8 800A9AA8 0F80013C */  lui        $at, %hi(D_800F0F0C)
    /* 9A2AC 800A9AAC 0C0F30AC */  sw         $s0, %lo(D_800F0F0C)($at)
    /* 9A2B0 800A9AB0 0F80013C */  lui        $at, %hi(D_800F0F10)
    /* 9A2B4 800A9AB4 100F30AC */  sw         $s0, %lo(D_800F0F10)($at)
    /* 9A2B8 800A9AB8 0F80013C */  lui        $at, %hi(D_800F0F14)
    /* 9A2BC 800A9ABC 140F32AC */  sw         $s2, %lo(D_800F0F14)($at)
    /* 9A2C0 800A9AC0 0F80013C */  lui        $at, %hi(D_800F0F18)
    /* 9A2C4 800A9AC4 180F20A4 */  sh         $zero, %lo(D_800F0F18)($at)
    /* 9A2C8 800A9AC8 0F80013C */  lui        $at, %hi(D_800F0F1A)
    /* 9A2CC 800A9ACC 1A0F20A4 */  sh         $zero, %lo(D_800F0F1A)($at)
    /* 9A2D0 800A9AD0 0F80013C */  lui        $at, %hi(D_800F0F1C)
    /* 9A2D4 800A9AD4 1C0F20A4 */  sh         $zero, %lo(D_800F0F1C)($at)
    /* 9A2D8 800A9AD8 0F80013C */  lui        $at, %hi(D_800F0F1E)
    /* 9A2DC 800A9ADC 1E0F20A4 */  sh         $zero, %lo(D_800F0F1E)($at)
    /* 9A2E0 800A9AE0 0F80013C */  lui        $at, %hi(D_800F0F20)
    /* 9A2E4 800A9AE4 200F33A4 */  sh         $s3, %lo(D_800F0F20)($at)
    /* 9A2E8 800A9AE8 0F80013C */  lui        $at, %hi(D_800F0F08)
    /* 9A2EC 800A9AEC 080F26AC */  sw         $a2, %lo(D_800F0F08)($at)
    /* 9A2F0 800A9AF0 C0190300 */  sll        $v1, $v1, 7
    /* 9A2F4 800A9AF4 0F80013C */  lui        $at, %hi(D_800F0EF0)
    /* 9A2F8 800A9AF8 F00E23A4 */  sh         $v1, %lo(D_800F0EF0)($at)
    /* 9A2FC 800A9AFC 0F80013C */  lui        $at, %hi(D_800F0EF2)
    /* 9A300 800A9B00 F20E23A4 */  sh         $v1, %lo(D_800F0EF2)($at)
    /* 9A304 800A9B04 2A11030C */  jal        func_800C44A8
    /* 9A308 800A9B08 FCFF2426 */   addiu     $a0, $s1, -0x4
    /* 9A30C 800A9B0C F80080A7 */  sh         $zero, %gp_rel(D_800E6B84)($gp)
    /* 9A310 800A9B10 480080A7 */  sh         $zero, %gp_rel(D_800E6AD4)($gp)
    /* 9A314 800A9B14 2000BF8F */  lw         $ra, 0x20($sp)
    /* 9A318 800A9B18 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 9A31C 800A9B1C 1800B28F */  lw         $s2, 0x18($sp)
    /* 9A320 800A9B20 1400B18F */  lw         $s1, 0x14($sp)
    /* 9A324 800A9B24 1000B08F */  lw         $s0, 0x10($sp)
    /* 9A328 800A9B28 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 9A32C 800A9B2C 0800E003 */  jr         $ra
    /* 9A330 800A9B30 00000000 */   nop
endlabel func_800A995C
