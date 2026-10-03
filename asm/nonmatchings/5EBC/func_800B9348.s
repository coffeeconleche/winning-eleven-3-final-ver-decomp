nonmatching func_800B9348, 0x100

glabel func_800B9348
    /* A9B48 800B9348 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A9B4C 800B934C 21388000 */  addu       $a3, $a0, $zero
    /* A9B50 800B9350 0D80043C */  lui        $a0, %hi(D_800D3C68)
    /* A9B54 800B9354 683C8424 */  addiu      $a0, $a0, %lo(D_800D3C68)
    /* A9B58 800B9358 1400BFAF */  sw         $ra, 0x14($sp)
    /* A9B5C 800B935C 1000B0AF */  sw         $s0, 0x10($sp)
    /* A9B60 800B9360 0C0086AC */  sw         $a2, 0xC($a0)
    /* A9B64 800B9364 0C00828C */  lw         $v0, 0xC($a0)
    /* A9B68 800B9368 00000000 */  nop
    /* A9B6C 800B936C 30004330 */  andi       $v1, $v0, 0x30
    /* A9B70 800B9370 05006010 */  beqz       $v1, .L800B9388
    /* A9B74 800B9374 20000224 */   addiu     $v0, $zero, 0x20
    /* A9B78 800B9378 06006210 */  beq        $v1, $v0, .L800B9394
    /* A9B7C 800B937C 46020224 */   addiu     $v0, $zero, 0x246
    /* A9B80 800B9380 E8E40208 */  j          .L800B93A0
    /* A9B84 800B9384 00000000 */   nop
  .L800B9388:
    /* A9B88 800B9388 00020224 */  addiu      $v0, $zero, 0x200
    /* A9B8C 800B938C EBE40208 */  j          .L800B93AC
    /* A9B90 800B9390 100082AC */   sw        $v0, 0x10($a0)
  .L800B9394:
    /* A9B94 800B9394 49020224 */  addiu      $v0, $zero, 0x249
    /* A9B98 800B9398 EBE40208 */  j          .L800B93AC
    /* A9B9C 800B939C 100082AC */   sw        $v0, 0x10($a0)
  .L800B93A0:
    /* A9BA0 800B93A0 0D80033C */  lui        $v1, %hi(D_800D3C68)
    /* A9BA4 800B93A4 683C6324 */  addiu      $v1, $v1, %lo(D_800D3C68)
    /* A9BA8 800B93A8 100062AC */  sw         $v0, 0x10($v1)
  .L800B93AC:
    /* A9BAC 800B93AC 0D80103C */  lui        $s0, %hi(D_800D3C68)
    /* A9BB0 800B93B0 683C1026 */  addiu      $s0, $s0, %lo(D_800D3C68)
    /* A9BB4 800B93B4 0C00028E */  lw         $v0, 0xC($s0)
    /* A9BB8 800B93B8 21200000 */  addu       $a0, $zero, $zero
    /* A9BBC 800B93BC 20004234 */  ori        $v0, $v0, 0x20
    /* A9BC0 800B93C0 0C0002AE */  sw         $v0, 0xC($s0)
    /* A9BC4 800B93C4 040005AE */  sw         $a1, 0x4($s0)
    /* A9BC8 800B93C8 03DC020C */  jal        func_800B700C
    /* A9BCC 800B93CC 000007AE */   sw        $a3, 0x0($s0)
    /* A9BD0 800B93D0 21200000 */  addu       $a0, $zero, $zero
    /* A9BD4 800B93D4 08DC020C */  jal        func_800B7020
    /* A9BD8 800B93D8 240002AE */   sw        $v0, 0x24($s0)
    /* A9BDC 800B93DC 280002AE */  sw         $v0, 0x28($s0)
    /* A9BE0 800B93E0 3000028E */  lw         $v0, 0x30($s0)
    /* A9BE4 800B93E4 00000000 */  nop
    /* A9BE8 800B93E8 01004230 */  andi       $v0, $v0, 0x1
    /* A9BEC 800B93EC 04004010 */  beqz       $v0, .L800B9400
    /* A9BF0 800B93F0 00000000 */   nop
    /* A9BF4 800B93F4 14DD020C */  jal        func_800B7450
    /* A9BF8 800B93F8 21200000 */   addu      $a0, $zero, $zero
    /* A9BFC 800B93FC 2C0002AE */  sw         $v0, 0x2C($s0)
  .L800B9400:
    /* A9C00 800B9400 46E9020C */  jal        func_800BA518
    /* A9C04 800B9404 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* A9C08 800B9408 1C0002AE */  sw         $v0, 0x1C($s0)
    /* A9C0C 800B940C A2DB020C */  jal        func_800B6E88
    /* A9C10 800B9410 00000000 */   nop
    /* A9C14 800B9414 E0004230 */  andi       $v0, $v0, 0xE0
    /* A9C18 800B9418 04004010 */  beqz       $v0, .L800B942C
    /* A9C1C 800B941C 09000424 */   addiu     $a0, $zero, 0x9
    /* A9C20 800B9420 21280000 */  addu       $a1, $zero, $zero
    /* A9C24 800B9424 A9DC020C */  jal        func_800B72A4
    /* A9C28 800B9428 21300000 */   addu      $a2, $zero, $zero
  .L800B942C:
    /* A9C2C 800B942C 31E4020C */  jal        func_800B90C4
    /* A9C30 800B9430 21200000 */   addu      $a0, $zero, $zero
    /* A9C34 800B9434 2A100200 */  slt        $v0, $zero, $v0
    /* A9C38 800B9438 1400BF8F */  lw         $ra, 0x14($sp)
    /* A9C3C 800B943C 1000B08F */  lw         $s0, 0x10($sp)
    /* A9C40 800B9440 0800E003 */  jr         $ra
    /* A9C44 800B9444 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B9348
