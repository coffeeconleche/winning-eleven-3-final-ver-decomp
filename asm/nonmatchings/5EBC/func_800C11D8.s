nonmatching func_800C11D8, 0xE8

glabel func_800C11D8
    /* B19D8 800C11D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B19DC 800C11DC 1000B0AF */  sw         $s0, 0x10($sp)
    /* B19E0 800C11E0 1400BFAF */  sw         $ra, 0x14($sp)
    /* B19E4 800C11E4 CEE9020C */  jal        func_800BA738
    /* B19E8 800C11E8 21808000 */   addu      $s0, $a0, $zero
    /* B19EC 800C11EC CE04030C */  jal        func_800C1338
    /* B19F0 800C11F0 21200002 */   addu      $a0, $s0, $zero
    /* B19F4 800C11F4 08000016 */  bnez       $s0, .L800C1218
    /* B19F8 800C11F8 00C00434 */   ori       $a0, $zero, 0xC000
    /* B19FC 800C11FC 17000324 */  addiu      $v1, $zero, 0x17
    /* B1A00 800C1200 0D80023C */  lui        $v0, %hi(D_800D5176)
    /* B1A04 800C1204 76514224 */  addiu      $v0, $v0, %lo(D_800D5176)
  .L800C1208:
    /* B1A08 800C1208 000044A4 */  sh         $a0, 0x0($v0)
    /* B1A0C 800C120C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* B1A10 800C1210 FDFF6104 */  bgez       $v1, .L800C1208
    /* B1A14 800C1214 FEFF4224 */   addiu     $v0, $v0, -0x2
  .L800C1218:
    /* B1A18 800C1218 B004030C */  jal        func_800C12C0
    /* B1A1C 800C121C 00000000 */   nop
    /* B1A20 800C1220 D1000424 */  addiu      $a0, $zero, 0xD1
    /* B1A24 800C1224 0D80023C */  lui        $v0, %hi(D_800D5130)
    /* B1A28 800C1228 30514224 */  addiu      $v0, $v0, %lo(D_800D5130)
    /* B1A2C 800C122C 0D80053C */  lui        $a1, %hi(D_800D55FC)
    /* B1A30 800C1230 FC55A58C */  lw         $a1, %lo(D_800D55FC)($a1)
    /* B1A34 800C1234 0D80013C */  lui        $at, %hi(D_800D5120)
    /* B1A38 800C1238 205120AC */  sw         $zero, %lo(D_800D5120)($at)
    /* B1A3C 800C123C 0D80013C */  lui        $at, %hi(D_800D5124)
    /* B1A40 800C1240 245120AC */  sw         $zero, %lo(D_800D5124)($at)
    /* B1A44 800C1244 000040AC */  sw         $zero, 0x0($v0)
    /* B1A48 800C1248 040040A4 */  sh         $zero, 0x4($v0)
    /* B1A4C 800C124C 060040A4 */  sh         $zero, 0x6($v0)
    /* B1A50 800C1250 080040AC */  sw         $zero, 0x8($v0)
    /* B1A54 800C1254 0C0040AC */  sw         $zero, 0xC($v0)
    /* B1A58 800C1258 0D80013C */  lui        $at, %hi(D_800D5128)
    /* B1A5C 800C125C 285125AC */  sw         $a1, %lo(D_800D5128)($at)
    /* B1A60 800C1260 1107030C */  jal        func_800C1C44
    /* B1A64 800C1264 21300000 */   addu      $a2, $zero, $zero
    /* B1A68 800C1268 0D80013C */  lui        $at, %hi(D_800D55EC)
    /* B1A6C 800C126C EC5520AC */  sw         $zero, %lo(D_800D55EC)($at)
    /* B1A70 800C1270 0D80013C */  lui        $at, %hi(D_800D55F0)
    /* B1A74 800C1274 F05520AC */  sw         $zero, %lo(D_800D55F0)($at)
    /* B1A78 800C1278 0D80013C */  lui        $at, %hi(D_800D55F4)
    /* B1A7C 800C127C F45520AC */  sw         $zero, %lo(D_800D55F4)($at)
    /* B1A80 800C1280 0D80013C */  lui        $at, %hi(D_800D511C)
    /* B1A84 800C1284 1C5120AC */  sw         $zero, %lo(D_800D511C)($at)
    /* B1A88 800C1288 0D80013C */  lui        $at, %hi(D_800D55A8)
    /* B1A8C 800C128C A85520AC */  sw         $zero, %lo(D_800D55A8)($at)
    /* B1A90 800C1290 0D80013C */  lui        $at, %hi(D_800D5118)
    /* B1A94 800C1294 185120AC */  sw         $zero, %lo(D_800D5118)($at)
    /* B1A98 800C1298 0D80013C */  lui        $at, %hi(D_800D5144)
    /* B1A9C 800C129C 445120AC */  sw         $zero, %lo(D_800D5144)($at)
    /* B1AA0 800C12A0 0D80013C */  lui        $at, %hi(D_800D5140)
    /* B1AA4 800C12A4 405120AC */  sw         $zero, %lo(D_800D5140)($at)
    /* B1AA8 800C12A8 0D80013C */  lui        $at, %hi(D_800D5578)
    /* B1AAC 800C12AC 785520AC */  sw         $zero, %lo(D_800D5578)($at)
    /* B1AB0 800C12B0 1400BF8F */  lw         $ra, 0x14($sp)
    /* B1AB4 800C12B4 1000B08F */  lw         $s0, 0x10($sp)
    /* B1AB8 800C12B8 0800E003 */  jr         $ra
    /* B1ABC 800C12BC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800C11D8
