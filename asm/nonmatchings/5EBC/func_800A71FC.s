nonmatching func_800A71FC, 0x254

glabel func_800A71FC
    /* 979FC 800A71FC 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 97A00 800A7200 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 97A04 800A7204 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 97A08 800A7208 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 97A0C 800A720C 3000B6AF */  sw         $s6, 0x30($sp)
    /* 97A10 800A7210 1080163C */  lui        $s6, %hi(D_800FF748)
    /* 97A14 800A7214 48F7D626 */  addiu      $s6, $s6, %lo(D_800FF748)
    /* 97A18 800A7218 3400BFAF */  sw         $ra, 0x34($sp)
    /* 97A1C 800A721C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 97A20 800A7220 2400B3AF */  sw         $s3, 0x24($sp)
    /* 97A24 800A7224 2000B2AF */  sw         $s2, 0x20($sp)
    /* 97A28 800A7228 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 97A2C 800A722C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 97A30 800A7230 02004284 */  lh         $v0, 0x2($v0)
    /* 97A34 800A7234 801F033C */  lui        $v1, (0x1F8002AD >> 16)
    /* 97A38 800A7238 AD026390 */  lbu        $v1, (0x1F8002AD & 0xFFFF)($v1)
    /* 97A3C 800A723C 01004228 */  slti       $v0, $v0, 0x1
    /* 97A40 800A7240 21804000 */  addu       $s0, $v0, $zero
    /* 97A44 800A7244 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 97A48 800A7248 08006214 */  bne        $v1, $v0, .L800A726C
    /* 97A4C 800A724C 801F153C */   lui       $s5, (0x1F8002AD >> 16)
    /* 97A50 800A7250 FF000232 */  andi       $v0, $s0, 0xFF
    /* 97A54 800A7254 02004014 */  bnez       $v0, .L800A7260
    /* 97A58 800A7258 E02EC426 */   addiu     $a0, $s6, 0x2EE0
    /* 97A5C 800A725C E803C426 */  addiu      $a0, $s6, 0x3E8
  .L800A7260:
    /* 97A60 800A7260 81EE010C */  jal        func_8007BA04
    /* 97A64 800A7264 00000000 */   nop
    /* 97A68 800A7268 AD02A2A2 */  sb         $v0, (0x1F8002AD & 0xFFFF)($s5)
  .L800A726C:
    /* 97A6C 800A726C 21980000 */  addu       $s3, $zero, $zero
    /* 97A70 800A7270 FF001432 */  andi       $s4, $s0, 0xFF
    /* 97A74 800A7274 FF006232 */  andi       $v0, $s3, 0xFF
  .L800A7278:
    /* 97A78 800A7278 02004014 */  bnez       $v0, .L800A7284
    /* 97A7C 800A727C E02ED126 */   addiu     $s1, $s6, 0x2EE0
    /* 97A80 800A7280 E803D126 */  addiu      $s1, $s6, 0x3E8
  .L800A7284:
    /* 97A84 800A7284 21900000 */  addu       $s2, $zero, $zero
    /* 97A88 800A7288 97033026 */  addiu      $s0, $s1, 0x397
  .L800A728C:
    /* 97A8C 800A728C F6FF0392 */  lbu        $v1, -0xA($s0)
    /* 97A90 800A7290 01000224 */  addiu      $v0, $zero, 0x1
    /* 97A94 800A7294 08006214 */  bne        $v1, $v0, .L800A72B8
    /* 97A98 800A7298 0C000224 */   addiu     $v0, $zero, 0xC
    /* 97A9C 800A729C 21202002 */  addu       $a0, $s1, $zero
    /* 97AA0 800A72A0 E0CE0524 */  addiu      $a1, $zero, -0x3120
    /* 97AA4 800A72A4 557D020C */  jal        func_8009F554
    /* 97AA8 800A72A8 21300000 */   addu      $a2, $zero, $zero
    /* 97AAC 800A72AC 80000224 */  addiu      $v0, $zero, 0x80
    /* 97AB0 800A72B0 F99C0208 */  j          .L800A73E4
    /* 97AB4 800A72B4 FFFF02A2 */   sb        $v0, -0x1($s0)
  .L800A72B8:
    /* 97AB8 800A72B8 07006214 */  bne        $v1, $v0, .L800A72D8
    /* 97ABC 800A72BC 21202002 */   addu      $a0, $s1, $zero
    /* 97AC0 800A72C0 20310524 */  addiu      $a1, $zero, 0x3120
    /* 97AC4 800A72C4 557D020C */  jal        func_8009F554
    /* 97AC8 800A72C8 21300000 */   addu      $a2, $zero, $zero
    /* 97ACC 800A72CC 80000224 */  addiu      $v0, $zero, 0x80
    /* 97AD0 800A72D0 F99C0208 */  j          .L800A73E4
    /* 97AD4 800A72D4 FFFF02A2 */   sb        $v0, -0x1($s0)
  .L800A72D8:
    /* 97AD8 800A72D8 1000A527 */  addiu      $a1, $sp, 0x10
    /* 97ADC 800A72DC 176A010C */  jal        func_8005A85C
    /* 97AE0 800A72E0 1200A627 */   addiu     $a2, $sp, 0x12
    /* 97AE4 800A72E4 02000292 */  lbu        $v0, 0x2($s0)
    /* 97AE8 800A72E8 00000000 */  nop
    /* 97AEC 800A72EC 13008216 */  bne        $s4, $v0, .L800A733C
    /* 97AF0 800A72F0 00000000 */   nop
    /* 97AF4 800A72F4 FAFF0392 */  lbu        $v1, -0x6($s0)
    /* 97AF8 800A72F8 00000000 */  nop
    /* 97AFC 800A72FC 0E006228 */  slti       $v0, $v1, 0xE
    /* 97B00 800A7300 1F004010 */  beqz       $v0, .L800A7380
    /* 97B04 800A7304 00000000 */   nop
    /* 97B08 800A7308 1D006010 */  beqz       $v1, .L800A7380
    /* 97B0C 800A730C 00000000 */   nop
    /* 97B10 800A7310 F402A28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s5)
    /* 97B14 800A7314 1000A487 */  lh         $a0, 0x10($sp)
    /* 97B18 800A7318 02004584 */  lh         $a1, 0x2($v0)
    /* 97B1C 800A731C DB69010C */  jal        func_8005A76C
    /* 97B20 800A7320 07000624 */   addiu     $a2, $zero, 0x7
    /* 97B24 800A7324 F402A38E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s5)
    /* 97B28 800A7328 1200A487 */  lh         $a0, 0x12($sp)
    /* 97B2C 800A732C 06006584 */  lh         $a1, 0x6($v1)
    /* 97B30 800A7330 05000624 */  addiu      $a2, $zero, 0x5
    /* 97B34 800A7334 DD9C0208 */  j          .L800A7374
    /* 97B38 800A7338 1000A2A7 */   sh        $v0, 0x10($sp)
  .L800A733C:
    /* 97B3C 800A733C FAFF0392 */  lbu        $v1, -0x6($s0)
    /* 97B40 800A7340 00000000 */  nop
    /* 97B44 800A7344 09006228 */  slti       $v0, $v1, 0x9
    /* 97B48 800A7348 08004010 */  beqz       $v0, .L800A736C
    /* 97B4C 800A734C 21280000 */   addu      $a1, $zero, $zero
    /* 97B50 800A7350 06006010 */  beqz       $v1, .L800A736C
    /* 97B54 800A7354 00000000 */   nop
    /* 97B58 800A7358 1000A487 */  lh         $a0, 0x10($sp)
    /* 97B5C 800A735C DB69010C */  jal        func_8005A76C
    /* 97B60 800A7360 02000624 */   addiu     $a2, $zero, 0x2
    /* 97B64 800A7364 E09C0208 */  j          .L800A7380
    /* 97B68 800A7368 1000A2A7 */   sh        $v0, 0x10($sp)
  .L800A736C:
    /* 97B6C 800A736C 1200A487 */  lh         $a0, 0x12($sp)
    /* 97B70 800A7370 05000624 */  addiu      $a2, $zero, 0x5
  .L800A7374:
    /* 97B74 800A7374 DB69010C */  jal        func_8005A76C
    /* 97B78 800A7378 00000000 */   nop
    /* 97B7C 800A737C 1200A2A7 */  sh         $v0, 0x12($sp)
  .L800A7380:
    /* 97B80 800A7380 1000A587 */  lh         $a1, 0x10($sp)
    /* 97B84 800A7384 1200A687 */  lh         $a2, 0x12($sp)
    /* 97B88 800A7388 557D020C */  jal        func_8009F554
    /* 97B8C 800A738C 21202002 */   addu      $a0, $s1, $zero
    /* 97B90 800A7390 6FFC0286 */  lh         $v0, -0x391($s0)
    /* 97B94 800A7394 00000000 */  nop
    /* 97B98 800A7398 02004104 */  bgez       $v0, .L800A73A4
    /* 97B9C 800A739C 00000000 */   nop
    /* 97BA0 800A73A0 23100200 */  negu       $v0, $v0
  .L800A73A4:
    /* 97BA4 800A73A4 F4124228 */  slti       $v0, $v0, 0x12F4
    /* 97BA8 800A73A8 0D004010 */  beqz       $v0, .L800A73E0
    /* 97BAC 800A73AC 00000000 */   nop
    /* 97BB0 800A73B0 6BFC0286 */  lh         $v0, -0x395($s0)
    /* 97BB4 800A73B4 00000000 */  nop
    /* 97BB8 800A73B8 02004104 */  bgez       $v0, .L800A73C4
    /* 97BBC 800A73BC 00000000 */   nop
    /* 97BC0 800A73C0 23100200 */  negu       $v0, $v0
  .L800A73C4:
    /* 97BC4 800A73C4 E2234228 */  slti       $v0, $v0, 0x23E2
    /* 97BC8 800A73C8 05004014 */  bnez       $v0, .L800A73E0
    /* 97BCC 800A73CC 00000000 */   nop
    /* 97BD0 800A73D0 02008016 */  bnez       $s4, .L800A73DC
    /* 97BD4 800A73D4 7EDC0224 */   addiu     $v0, $zero, -0x2382
    /* 97BD8 800A73D8 82230224 */  addiu      $v0, $zero, 0x2382
  .L800A73DC:
    /* 97BDC 800A73DC 6BFC02A6 */  sh         $v0, -0x395($s0)
  .L800A73E0:
    /* 97BE0 800A73E0 FFFF00A2 */  sb         $zero, -0x1($s0)
  .L800A73E4:
    /* 97BE4 800A73E4 000000A2 */  sb         $zero, 0x0($s0)
    /* 97BE8 800A73E8 01005226 */  addiu      $s2, $s2, 0x1
    /* 97BEC 800A73EC E8031026 */  addiu      $s0, $s0, 0x3E8
    /* 97BF0 800A73F0 FF004232 */  andi       $v0, $s2, 0xFF
    /* 97BF4 800A73F4 0B00422C */  sltiu      $v0, $v0, 0xB
    /* 97BF8 800A73F8 A4FF4014 */  bnez       $v0, .L800A728C
    /* 97BFC 800A73FC E8033126 */   addiu     $s1, $s1, 0x3E8
    /* 97C00 800A7400 01007326 */  addiu      $s3, $s3, 0x1
    /* 97C04 800A7404 FF006232 */  andi       $v0, $s3, 0xFF
    /* 97C08 800A7408 0200422C */  sltiu      $v0, $v0, 0x2
    /* 97C0C 800A740C 9AFF4014 */  bnez       $v0, .L800A7278
    /* 97C10 800A7410 FF006232 */   andi      $v0, $s3, 0xFF
    /* 97C14 800A7414 CC8D020C */  jal        func_800A3730
    /* 97C18 800A7418 00000000 */   nop
    /* 97C1C 800A741C 5D7D020C */  jal        func_8009F574
    /* 97C20 800A7420 00000000 */   nop
    /* 97C24 800A7424 3400BF8F */  lw         $ra, 0x34($sp)
    /* 97C28 800A7428 3000B68F */  lw         $s6, 0x30($sp)
    /* 97C2C 800A742C 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 97C30 800A7430 2800B48F */  lw         $s4, 0x28($sp)
    /* 97C34 800A7434 2400B38F */  lw         $s3, 0x24($sp)
    /* 97C38 800A7438 2000B28F */  lw         $s2, 0x20($sp)
    /* 97C3C 800A743C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 97C40 800A7440 1800B08F */  lw         $s0, 0x18($sp)
    /* 97C44 800A7444 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 97C48 800A7448 0800E003 */  jr         $ra
    /* 97C4C 800A744C 00000000 */   nop
endlabel func_800A71FC
