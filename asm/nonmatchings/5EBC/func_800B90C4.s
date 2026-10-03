nonmatching func_800B90C4, 0x284

glabel func_800B90C4
    /* A98C4 800B90C4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A98C8 800B90C8 2000B2AF */  sw         $s2, 0x20($sp)
    /* A98CC 800B90CC 21908000 */  addu       $s2, $a0, $zero
    /* A98D0 800B90D0 21200000 */  addu       $a0, $zero, $zero
    /* A98D4 800B90D4 2400BFAF */  sw         $ra, 0x24($sp)
    /* A98D8 800B90D8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* A98DC 800B90DC 03DC020C */  jal        func_800B700C
    /* A98E0 800B90E0 1800B0AF */   sw        $s0, 0x18($sp)
    /* A98E4 800B90E4 08DC020C */  jal        func_800B7020
    /* A98E8 800B90E8 21200000 */   addu      $a0, $zero, $zero
    /* A98EC 800B90EC 0D80103C */  lui        $s0, %hi(D_800D3C98)
    /* A98F0 800B90F0 983C1026 */  addiu      $s0, $s0, %lo(D_800D3C98)
    /* A98F4 800B90F4 0000028E */  lw         $v0, 0x0($s0)
    /* A98F8 800B90F8 00000000 */  nop
    /* A98FC 800B90FC 01004230 */  andi       $v0, $v0, 0x1
    /* A9900 800B9100 03004010 */  beqz       $v0, .L800B9110
    /* A9904 800B9104 00000000 */   nop
    /* A9908 800B9108 14DD020C */  jal        func_800B7450
    /* A990C 800B910C 21200000 */   addu      $a0, $zero, $zero
  .L800B9110:
    /* A9910 800B9110 A2DB020C */  jal        func_800B6E88
    /* A9914 800B9114 00000000 */   nop
    /* A9918 800B9118 10004230 */  andi       $v0, $v0, 0x10
    /* A991C 800B911C 15004010 */  beqz       $v0, .L800B9174
    /* A9920 800B9120 00000000 */   nop
    /* A9924 800B9124 46E9020C */  jal        func_800BA518
    /* A9928 800B9128 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* A992C 800B912C 3F004230 */  andi       $v0, $v0, 0x3F
    /* A9930 800B9130 05004014 */  bnez       $v0, .L800B9148
    /* A9934 800B9134 01000424 */   addiu     $a0, $zero, 0x1
    /* A9938 800B9138 0180043C */  lui        $a0, %hi(D_800153F4)
    /* A993C 800B913C 60E3020C */  jal        func_800B8D80
    /* A9940 800B9140 F4538424 */   addiu     $a0, $a0, %lo(D_800153F4)
    /* A9944 800B9144 01000424 */  addiu      $a0, $zero, 0x1
  .L800B9148:
    /* A9948 800B9148 5CDC020C */  jal        func_800B7170
    /* A994C 800B914C 21280000 */   addu      $a1, $zero, $zero
    /* A9950 800B9150 46E9020C */  jal        func_800BA518
    /* A9954 800B9154 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* A9958 800B9158 D0FF0326 */  addiu      $v1, $s0, -0x30
    /* A995C 800B915C 1C0062AC */  sw         $v0, 0x1C($v1)
    /* A9960 800B9160 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* A9964 800B9164 140062AC */  sw         $v0, 0x14($v1)
    /* A9968 800B9168 1400628C */  lw         $v0, 0x14($v1)
    /* A996C 800B916C A7E40208 */  j          .L800B929C
    /* A9970 800B9170 00000000 */   nop
  .L800B9174:
    /* A9974 800B9174 15004012 */  beqz       $s2, .L800B91CC
    /* A9978 800B9178 00000000 */   nop
    /* A997C 800B917C 0180043C */  lui        $a0, %hi(D_8001540C)
    /* A9980 800B9180 60E3020C */  jal        func_800B8D80
    /* A9984 800B9184 0C548424 */   addiu     $a0, $a0, %lo(D_8001540C)
    /* A9988 800B9188 09000424 */  addiu      $a0, $zero, 0x9
    /* A998C 800B918C 21280000 */  addu       $a1, $zero, $zero
    /* A9990 800B9190 0DDC020C */  jal        func_800B7034
    /* A9994 800B9194 21300000 */   addu      $a2, $zero, $zero
    /* A9998 800B9198 AEDB020C */  jal        func_800B6EB8
    /* A999C 800B919C 00000000 */   nop
    /* A99A0 800B91A0 02000424 */  addiu      $a0, $zero, 0x2
    /* A99A4 800B91A4 21284000 */  addu       $a1, $v0, $zero
    /* A99A8 800B91A8 0DDC020C */  jal        func_800B7034
    /* A99AC 800B91AC 21300000 */   addu      $a2, $zero, $zero
    /* A99B0 800B91B0 06004014 */  bnez       $v0, .L800B91CC
    /* A99B4 800B91B4 D0FF0226 */   addiu     $v0, $s0, -0x30
    /* A99B8 800B91B8 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* A99BC 800B91BC 140043AC */  sw         $v1, 0x14($v0)
    /* A99C0 800B91C0 E4FF028E */  lw         $v0, -0x1C($s0)
    /* A99C4 800B91C4 A7E40208 */  j          .L800B929C
    /* A99C8 800B91C8 00000000 */   nop
  .L800B91CC:
    /* A99CC 800B91CC CCDB020C */  jal        func_800B6F30
    /* A99D0 800B91D0 00000000 */   nop
    /* A99D4 800B91D4 0D80113C */  lui        $s1, %hi(D_800D3C74)
    /* A99D8 800B91D8 743C3126 */  addiu      $s1, $s1, %lo(D_800D3C74)
    /* A99DC 800B91DC 0000308E */  lw         $s0, 0x0($s1)
    /* A99E0 800B91E0 00000000 */  nop
    /* A99E4 800B91E4 1000B0A3 */  sb         $s0, 0x10($sp)
    /* A99E8 800B91E8 A6DB020C */  jal        func_800B6E98
    /* A99EC 800B91EC FF001032 */   andi      $s0, $s0, 0xFF
    /* A99F0 800B91F0 03000216 */  bne        $s0, $v0, .L800B9200
    /* A99F4 800B91F4 0E000424 */   addiu     $a0, $zero, 0xE
    /* A99F8 800B91F8 0B004012 */  beqz       $s2, .L800B9228
    /* A99FC 800B91FC 00000000 */   nop
  .L800B9200:
    /* A9A00 800B9200 1000A527 */  addiu      $a1, $sp, 0x10
    /* A9A04 800B9204 0DDC020C */  jal        func_800B7034
    /* A9A08 800B9208 21300000 */   addu      $a2, $zero, $zero
    /* A9A0C 800B920C 06004014 */  bnez       $v0, .L800B9228
    /* A9A10 800B9210 F4FF2226 */   addiu     $v0, $s1, -0xC
    /* A9A14 800B9214 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* A9A18 800B9218 140043AC */  sw         $v1, 0x14($v0)
    /* A9A1C 800B921C 1400428C */  lw         $v0, 0x14($v0)
    /* A9A20 800B9220 A7E40208 */  j          .L800B929C
    /* A9A24 800B9224 00000000 */   nop
  .L800B9228:
    /* A9A28 800B9228 AEDB020C */  jal        func_800B6EB8
    /* A9A2C 800B922C 00000000 */   nop
    /* A9A30 800B9230 66DD020C */  jal        func_800B7598
    /* A9A34 800B9234 21204000 */   addu      $a0, $v0, $zero
    /* A9A38 800B9238 0C80043C */  lui        $a0, %hi(func_800B8D80 + 0x18)
    /* A9A3C 800B923C 988D8424 */  addiu      $a0, $a0, %lo(func_800B8D80 + 0x18)
    /* A9A40 800B9240 0D80103C */  lui        $s0, %hi(D_800D3C68)
    /* A9A44 800B9244 683C1026 */  addiu      $s0, $s0, %lo(D_800D3C68)
    /* A9A48 800B9248 08DC020C */  jal        func_800B7020
    /* A9A4C 800B924C 200002AE */   sw        $v0, 0x20($s0)
    /* A9A50 800B9250 3000028E */  lw         $v0, 0x30($s0)
    /* A9A54 800B9254 00000000 */  nop
    /* A9A58 800B9258 01004230 */  andi       $v0, $v0, 0x1
    /* A9A5C 800B925C 05004010 */  beqz       $v0, .L800B9274
    /* A9A60 800B9260 06000424 */   addiu     $a0, $zero, 0x6
    /* A9A64 800B9264 0C80043C */  lui        $a0, %hi(D_800B8FF8)
    /* A9A68 800B9268 14DD020C */  jal        func_800B7450
    /* A9A6C 800B926C F88F8424 */   addiu     $a0, $a0, %lo(D_800B8FF8)
    /* A9A70 800B9270 06000424 */  addiu      $a0, $zero, 0x6
  .L800B9274:
    /* A9A74 800B9274 0400028E */  lw         $v0, 0x4($s0)
    /* A9A78 800B9278 21280000 */  addu       $a1, $zero, $zero
    /* A9A7C 800B927C 5CDC020C */  jal        func_800B7170
    /* A9A80 800B9280 080002AE */   sw        $v0, 0x8($s0)
    /* A9A84 800B9284 0000028E */  lw         $v0, 0x0($s0)
    /* A9A88 800B9288 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* A9A8C 800B928C 46E9020C */  jal        func_800BA518
    /* A9A90 800B9290 140002AE */   sw        $v0, 0x14($s0)
    /* A9A94 800B9294 180002AE */  sw         $v0, 0x18($s0)
    /* A9A98 800B9298 1400028E */  lw         $v0, 0x14($s0)
  .L800B929C:
    /* A9A9C 800B929C 2400BF8F */  lw         $ra, 0x24($sp)
    /* A9AA0 800B92A0 2000B28F */  lw         $s2, 0x20($sp)
    /* A9AA4 800B92A4 1C00B18F */  lw         $s1, 0x1C($sp)
    /* A9AA8 800B92A8 1800B08F */  lw         $s0, 0x18($sp)
    /* A9AAC 800B92AC 0800E003 */  jr         $ra
    /* A9AB0 800B92B0 2800BD27 */   addiu     $sp, $sp, 0x28
    /* A9AB4 800B92B4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A9AB8 800B92B8 1000B0AF */  sw         $s0, 0x10($sp)
    /* A9ABC 800B92BC 0D80103C */  lui        $s0, %hi(D_800D3C98)
    /* A9AC0 800B92C0 983C1026 */  addiu      $s0, $s0, %lo(D_800D3C98)
    /* A9AC4 800B92C4 1800BFAF */  sw         $ra, 0x18($sp)
    /* A9AC8 800B92C8 1400B1AF */  sw         $s1, 0x14($sp)
    /* A9ACC 800B92CC 0000028E */  lw         $v0, 0x0($s0)
    /* A9AD0 800B92D0 00000000 */  nop
    /* A9AD4 800B92D4 01004230 */  andi       $v0, $v0, 0x1
    /* A9AD8 800B92D8 04004010 */  beqz       $v0, .L800B92EC
    /* A9ADC 800B92DC D0FF1126 */   addiu     $s1, $s0, -0x30
    /* A9AE0 800B92E0 1DDD020C */  jal        func_800B7474
    /* A9AE4 800B92E4 21200000 */   addu      $a0, $zero, $zero
    /* A9AE8 800B92E8 D0FF1126 */  addiu      $s1, $s0, -0x30
  .L800B92EC:
    /* A9AEC 800B92EC 140020AE */  sw         $zero, 0x14($s1)
    /* A9AF0 800B92F0 F4FF048E */  lw         $a0, -0xC($s0)
    /* A9AF4 800B92F4 03DC020C */  jal        func_800B700C
    /* A9AF8 800B92F8 00000000 */   nop
    /* A9AFC 800B92FC F8FF048E */  lw         $a0, -0x8($s0)
    /* A9B00 800B9300 08DC020C */  jal        func_800B7020
    /* A9B04 800B9304 00000000 */   nop
    /* A9B08 800B9308 0000028E */  lw         $v0, 0x0($s0)
    /* A9B0C 800B930C 00000000 */  nop
    /* A9B10 800B9310 01004230 */  andi       $v0, $v0, 0x1
    /* A9B14 800B9314 05004010 */  beqz       $v0, .L800B932C
    /* A9B18 800B9318 09000424 */   addiu     $a0, $zero, 0x9
    /* A9B1C 800B931C 2C00248E */  lw         $a0, 0x2C($s1)
    /* A9B20 800B9320 14DD020C */  jal        func_800B7450
    /* A9B24 800B9324 00000000 */   nop
    /* A9B28 800B9328 09000424 */  addiu      $a0, $zero, 0x9
  .L800B932C:
    /* A9B2C 800B932C 5CDC020C */  jal        func_800B7170
    /* A9B30 800B9330 21280000 */   addu      $a1, $zero, $zero
    /* A9B34 800B9334 1800BF8F */  lw         $ra, 0x18($sp)
    /* A9B38 800B9338 1400B18F */  lw         $s1, 0x14($sp)
    /* A9B3C 800B933C 1000B08F */  lw         $s0, 0x10($sp)
    /* A9B40 800B9340 0800E003 */  jr         $ra
    /* A9B44 800B9344 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800B90C4
