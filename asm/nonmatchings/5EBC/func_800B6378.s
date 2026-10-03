nonmatching func_800B6378, 0xEC

glabel func_800B6378
    /* A6B78 800B6378 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A6B7C 800B637C 1000B0AF */  sw         $s0, 0x10($sp)
    /* A6B80 800B6380 21808000 */  addu       $s0, $a0, $zero
    /* A6B84 800B6384 1400B1AF */  sw         $s1, 0x14($sp)
    /* A6B88 800B6388 1800BFAF */  sw         $ra, 0x18($sp)
    /* A6B8C 800B638C 19D9020C */  jal        func_800B6464
    /* A6B90 800B6390 2188A000 */   addu      $s1, $a1, $zero
    /* A6B94 800B6394 4BD9020C */  jal        func_800B652C
    /* A6B98 800B6398 21204000 */   addu      $a0, $v0, $zero
    /* A6B9C 800B639C 21184000 */  addu       $v1, $v0, $zero
    /* A6BA0 800B63A0 10006228 */  slti       $v0, $v1, 0x10
    /* A6BA4 800B63A4 18004014 */  bnez       $v0, .L800B6408
    /* A6BA8 800B63A8 F1FF6324 */   addiu     $v1, $v1, -0xF
    /* A6BAC 800B63AC 0000028E */  lw         $v0, 0x0($s0)
    /* A6BB0 800B63B0 00000000 */  nop
    /* A6BB4 800B63B4 07106200 */  srav       $v0, $v0, $v1
    /* A6BB8 800B63B8 000022AE */  sw         $v0, 0x0($s1)
    /* A6BBC 800B63BC 0400028E */  lw         $v0, 0x4($s0)
    /* A6BC0 800B63C0 00000000 */  nop
    /* A6BC4 800B63C4 07106200 */  srav       $v0, $v0, $v1
    /* A6BC8 800B63C8 040022AE */  sw         $v0, 0x4($s1)
    /* A6BCC 800B63CC 0800028E */  lw         $v0, 0x8($s0)
    /* A6BD0 800B63D0 00000000 */  nop
    /* A6BD4 800B63D4 07106200 */  srav       $v0, $v0, $v1
    /* A6BD8 800B63D8 080022AE */  sw         $v0, 0x8($s1)
    /* A6BDC 800B63DC 0C00028E */  lw         $v0, 0xC($s0)
    /* A6BE0 800B63E0 00000000 */  nop
    /* A6BE4 800B63E4 07106200 */  srav       $v0, $v0, $v1
    /* A6BE8 800B63E8 0C0022AE */  sw         $v0, 0xC($s1)
    /* A6BEC 800B63EC 1000028E */  lw         $v0, 0x10($s0)
    /* A6BF0 800B63F0 00000000 */  nop
    /* A6BF4 800B63F4 07106200 */  srav       $v0, $v0, $v1
    /* A6BF8 800B63F8 100022AE */  sw         $v0, 0x10($s1)
    /* A6BFC 800B63FC 1400028E */  lw         $v0, 0x14($s0)
    /* A6C00 800B6400 13D90208 */  j          .L800B644C
    /* A6C04 800B6404 07106200 */   srav      $v0, $v0, $v1
  .L800B6408:
    /* A6C08 800B6408 0000028E */  lw         $v0, 0x0($s0)
    /* A6C0C 800B640C 00000000 */  nop
    /* A6C10 800B6410 000022AE */  sw         $v0, 0x0($s1)
    /* A6C14 800B6414 0400028E */  lw         $v0, 0x4($s0)
    /* A6C18 800B6418 00000000 */  nop
    /* A6C1C 800B641C 040022AE */  sw         $v0, 0x4($s1)
    /* A6C20 800B6420 0800028E */  lw         $v0, 0x8($s0)
    /* A6C24 800B6424 00000000 */  nop
    /* A6C28 800B6428 080022AE */  sw         $v0, 0x8($s1)
    /* A6C2C 800B642C 0C00028E */  lw         $v0, 0xC($s0)
    /* A6C30 800B6430 00000000 */  nop
    /* A6C34 800B6434 0C0022AE */  sw         $v0, 0xC($s1)
    /* A6C38 800B6438 1000028E */  lw         $v0, 0x10($s0)
    /* A6C3C 800B643C 00000000 */  nop
    /* A6C40 800B6440 100022AE */  sw         $v0, 0x10($s1)
    /* A6C44 800B6444 1400028E */  lw         $v0, 0x14($s0)
    /* A6C48 800B6448 00000000 */  nop
  .L800B644C:
    /* A6C4C 800B644C 140022AE */  sw         $v0, 0x14($s1)
    /* A6C50 800B6450 1800BF8F */  lw         $ra, 0x18($sp)
    /* A6C54 800B6454 1400B18F */  lw         $s1, 0x14($sp)
    /* A6C58 800B6458 1000B08F */  lw         $s0, 0x10($sp)
    /* A6C5C 800B645C 0800E003 */  jr         $ra
    /* A6C60 800B6460 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800B6378
