nonmatching func_801A7188, 0x1D4

glabel func_801A7188
    /* 1E210 801A7188 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1E214 801A718C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1E218 801A7190 1080133C */  lui        $s3, %hi(D_800FF748)
    /* 1E21C 801A7194 48F77326 */  addiu      $s3, $s3, %lo(D_800FF748)
    /* 1E220 801A7198 485E6426 */  addiu      $a0, $s3, 0x5E48
    /* 1E224 801A719C 00FE0524 */  addiu      $a1, $zero, -0x200
    /* 1E228 801A71A0 2000BFAF */  sw         $ra, 0x20($sp)
    /* 1E22C 801A71A4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1E230 801A71A8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1E234 801A71AC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1E238 801A71B0 1080013C */  lui        $at, %hi(D_80105714)
    /* 1E23C 801A71B4 145720A0 */  sb         $zero, %lo(D_80105714)($at)
    /* 1E240 801A71B8 1080013C */  lui        $at, %hi(D_8010573C)
    /* 1E244 801A71BC 3C5720A0 */  sb         $zero, %lo(D_8010573C)($at)
    /* 1E248 801A71C0 653A060C */  jal        func_8018E994
    /* 1E24C 801A71C4 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E250 801A71C8 01005130 */  andi       $s1, $v0, 0x1
    /* 1E254 801A71CC 985E6426 */  addiu      $a0, $s3, 0x5E98
    /* 1E258 801A71D0 00FE0524 */  addiu      $a1, $zero, -0x200
    /* 1E25C 801A71D4 653A060C */  jal        func_8018E994
    /* 1E260 801A71D8 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E264 801A71DC 24882202 */  and        $s1, $s1, $v0
    /* 1E268 801A71E0 C05E6426 */  addiu      $a0, $s3, 0x5EC0
    /* 1E26C 801A71E4 00FE0524 */  addiu      $a1, $zero, -0x200
    /* 1E270 801A71E8 653A060C */  jal        func_8018E994
    /* 1E274 801A71EC 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E278 801A71F0 24882202 */  and        $s1, $s1, $v0
    /* 1E27C 801A71F4 E85E6426 */  addiu      $a0, $s3, 0x5EE8
    /* 1E280 801A71F8 00FE0524 */  addiu      $a1, $zero, -0x200
    /* 1E284 801A71FC 653A060C */  jal        func_8018E994
    /* 1E288 801A7200 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E28C 801A7204 24882202 */  and        $s1, $s1, $v0
    /* 1E290 801A7208 105F6426 */  addiu      $a0, $s3, 0x5F10
    /* 1E294 801A720C 00FE0524 */  addiu      $a1, $zero, -0x200
    /* 1E298 801A7210 653A060C */  jal        func_8018E994
    /* 1E29C 801A7214 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E2A0 801A7218 24882202 */  and        $s1, $s1, $v0
    /* 1E2A4 801A721C D85F6426 */  addiu      $a0, $s3, 0x5FD8
    /* 1E2A8 801A7220 00020524 */  addiu      $a1, $zero, 0x200
    /* 1E2AC 801A7224 653A060C */  jal        func_8018E994
    /* 1E2B0 801A7228 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E2B4 801A722C 24882202 */  and        $s1, $s1, $v0
    /* 1E2B8 801A7230 00606426 */  addiu      $a0, $s3, 0x6000
    /* 1E2BC 801A7234 00020524 */  addiu      $a1, $zero, 0x200
    /* 1E2C0 801A7238 653A060C */  jal        func_8018E994
    /* 1E2C4 801A723C 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E2C8 801A7240 24882202 */  and        $s1, $s1, $v0
    /* 1E2CC 801A7244 885F6426 */  addiu      $a0, $s3, 0x5F88
    /* 1E2D0 801A7248 00020524 */  addiu      $a1, $zero, 0x200
    /* 1E2D4 801A724C 653A060C */  jal        func_8018E994
    /* 1E2D8 801A7250 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E2DC 801A7254 24882202 */  and        $s1, $s1, $v0
    /* 1E2E0 801A7258 B05F6426 */  addiu      $a0, $s3, 0x5FB0
    /* 1E2E4 801A725C 00020524 */  addiu      $a1, $zero, 0x200
    /* 1E2E8 801A7260 653A060C */  jal        func_8018E994
    /* 1E2EC 801A7264 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E2F0 801A7268 24882202 */  and        $s1, $s1, $v0
    /* 1E2F4 801A726C 385F6426 */  addiu      $a0, $s3, 0x5F38
    /* 1E2F8 801A7270 5A020524 */  addiu      $a1, $zero, 0x25A
    /* 1E2FC 801A7274 653A060C */  jal        func_8018E994
    /* 1E300 801A7278 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E304 801A727C 24882202 */  and        $s1, $s1, $v0
    /* 1E308 801A7280 605F6426 */  addiu      $a0, $s3, 0x5F60
    /* 1E30C 801A7284 9F020524 */  addiu      $a1, $zero, 0x29F
    /* 1E310 801A7288 653A060C */  jal        func_8018E994
    /* 1E314 801A728C 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E318 801A7290 24882202 */  and        $s1, $s1, $v0
    /* 1E31C 801A7294 1E80103C */  lui        $s0, %hi(D_801D92A8)
    /* 1E320 801A7298 A8921026 */  addiu      $s0, $s0, %lo(D_801D92A8)
    /* 1E324 801A729C 21200002 */  addu       $a0, $s0, $zero
    /* 1E328 801A72A0 1E020524 */  addiu      $a1, $zero, 0x21E
    /* 1E32C 801A72A4 653A060C */  jal        func_8018E994
    /* 1E330 801A72A8 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E334 801A72AC 24882202 */  and        $s1, $s1, $v0
    /* 1E338 801A72B0 1C000426 */  addiu      $a0, $s0, 0x1C
    /* 1E33C 801A72B4 1E020524 */  addiu      $a1, $zero, 0x21E
    /* 1E340 801A72B8 653A060C */  jal        func_8018E994
    /* 1E344 801A72BC 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E348 801A72C0 24882202 */  and        $s1, $s1, $v0
    /* 1E34C 801A72C4 0F001024 */  addiu      $s0, $zero, 0xF
    /* 1E350 801A72C8 18601224 */  addiu      $s2, $zero, 0x6018
  .L801A72CC:
    /* 1E354 801A72CC 21207202 */  addu       $a0, $s3, $s2
    /* 1E358 801A72D0 10008424 */  addiu      $a0, $a0, 0x10
    /* 1E35C 801A72D4 00FE0524 */  addiu      $a1, $zero, -0x200
    /* 1E360 801A72D8 653A060C */  jal        func_8018E994
    /* 1E364 801A72DC 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E368 801A72E0 24882202 */  and        $s1, $s1, $v0
    /* 1E36C 801A72E4 01001026 */  addiu      $s0, $s0, 0x1
    /* 1E370 801A72E8 1700022A */  slti       $v0, $s0, 0x17
    /* 1E374 801A72EC F7FF4014 */  bnez       $v0, .L801A72CC
    /* 1E378 801A72F0 28005226 */   addiu     $s2, $s2, 0x28
    /* 1E37C 801A72F4 17001024 */  addiu      $s0, $zero, 0x17
    /* 1E380 801A72F8 58611224 */  addiu      $s2, $zero, 0x6158
  .L801A72FC:
    /* 1E384 801A72FC 21207202 */  addu       $a0, $s3, $s2
    /* 1E388 801A7300 10008424 */  addiu      $a0, $a0, 0x10
    /* 1E38C 801A7304 00FE0524 */  addiu      $a1, $zero, -0x200
    /* 1E390 801A7308 653A060C */  jal        func_8018E994
    /* 1E394 801A730C 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E398 801A7310 24882202 */  and        $s1, $s1, $v0
    /* 1E39C 801A7314 01001026 */  addiu      $s0, $s0, 0x1
    /* 1E3A0 801A7318 2100022A */  slti       $v0, $s0, 0x21
    /* 1E3A4 801A731C F7FF4014 */  bnez       $v0, .L801A72FC
    /* 1E3A8 801A7320 28005226 */   addiu     $s2, $s2, 0x28
    /* 1E3AC 801A7324 04002012 */  beqz       $s1, .L801A7338
    /* 1E3B0 801A7328 03000424 */   addiu     $a0, $zero, 0x3
    /* 1E3B4 801A732C 20000524 */  addiu      $a1, $zero, 0x20
    /* 1E3B8 801A7330 2B39060C */  jal        func_8018E4AC
    /* 1E3BC 801A7334 21300000 */   addu      $a2, $zero, $zero
  .L801A7338:
    /* 1E3C0 801A7338 21102002 */  addu       $v0, $s1, $zero
    /* 1E3C4 801A733C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 1E3C8 801A7340 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1E3CC 801A7344 1800B28F */  lw         $s2, 0x18($sp)
    /* 1E3D0 801A7348 1400B18F */  lw         $s1, 0x14($sp)
    /* 1E3D4 801A734C 1000B08F */  lw         $s0, 0x10($sp)
    /* 1E3D8 801A7350 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1E3DC 801A7354 0800E003 */  jr         $ra
    /* 1E3E0 801A7358 00000000 */   nop
endlabel func_801A7188
