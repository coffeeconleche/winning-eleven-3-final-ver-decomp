nonmatching func_8018EAF4, 0xB0

glabel func_8018EAF4
    /* 5B7C 8018EAF4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5B80 8018EAF8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5B84 8018EAFC 21888000 */  addu       $s1, $a0, $zero
    /* 5B88 8018EB00 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5B8C 8018EB04 2190A000 */  addu       $s2, $a1, $zero
    /* 5B90 8018EB08 21200000 */  addu       $a0, $zero, $zero
    /* 5B94 8018EB0C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5B98 8018EB10 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 5B9C 8018EB14 20BB010C */  jal        func_8006EC80
    /* 5BA0 8018EB18 2180C000 */   addu      $s0, $a2, $zero
    /* 5BA4 8018EB1C FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 5BA8 8018EB20 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 5BAC 8018EB24 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 5BB0 8018EB28 20000224 */  addiu      $v0, $zero, 0x20
    /* 5BB4 8018EB2C 0B006214 */  bne        $v1, $v0, .L8018EB5C
    /* 5BB8 8018EB30 40000224 */   addiu     $v0, $zero, 0x40
    /* 5BBC 8018EB34 FF000232 */  andi       $v0, $s0, 0xFF
    /* 5BC0 8018EB38 03004014 */  bnez       $v0, .L8018EB48
    /* 5BC4 8018EB3C 00000000 */   nop
    /* 5BC8 8018EB40 88AD020C */  jal        func_800AB620
    /* 5BCC 8018EB44 28050424 */   addiu     $a0, $zero, 0x528
  .L8018EB48:
    /* 5BD0 8018EB48 02000224 */  addiu      $v0, $zero, 0x2
    /* 5BD4 8018EB4C 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 5BD8 8018EB50 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
    /* 5BDC 8018EB54 E23A0608 */  j          .L8018EB88
    /* 5BE0 8018EB58 21102002 */   addu      $v0, $s1, $zero
  .L8018EB5C:
    /* 5BE4 8018EB5C 0A006214 */  bne        $v1, $v0, .L8018EB88
    /* 5BE8 8018EB60 21100000 */   addu      $v0, $zero, $zero
    /* 5BEC 8018EB64 FF000232 */  andi       $v0, $s0, 0xFF
    /* 5BF0 8018EB68 03004014 */  bnez       $v0, .L8018EB78
    /* 5BF4 8018EB6C 00000000 */   nop
    /* 5BF8 8018EB70 88AD020C */  jal        func_800AB620
    /* 5BFC 8018EB74 29050424 */   addiu     $a0, $zero, 0x529
  .L8018EB78:
    /* 5C00 8018EB78 01000224 */  addiu      $v0, $zero, 0x1
    /* 5C04 8018EB7C 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 5C08 8018EB80 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
    /* 5C0C 8018EB84 21104002 */  addu       $v0, $s2, $zero
  .L8018EB88:
    /* 5C10 8018EB88 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 5C14 8018EB8C 1800B28F */  lw         $s2, 0x18($sp)
    /* 5C18 8018EB90 1400B18F */  lw         $s1, 0x14($sp)
    /* 5C1C 8018EB94 1000B08F */  lw         $s0, 0x10($sp)
    /* 5C20 8018EB98 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 5C24 8018EB9C 0800E003 */  jr         $ra
    /* 5C28 8018EBA0 00000000 */   nop
endlabel func_8018EAF4
