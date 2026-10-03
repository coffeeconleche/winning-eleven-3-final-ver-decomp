nonmatching func_800B4B04, 0x90

glabel func_800B4B04
    /* A5304 800B4B04 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A5308 800B4B08 1400B1AF */  sw         $s1, 0x14($sp)
    /* A530C 800B4B0C 21888000 */  addu       $s1, $a0, $zero
    /* A5310 800B4B10 1800B2AF */  sw         $s2, 0x18($sp)
    /* A5314 800B4B14 2190A000 */  addu       $s2, $a1, $zero
    /* A5318 800B4B18 1000B0AF */  sw         $s0, 0x10($sp)
    /* A531C 800B4B1C 2180C000 */  addu       $s0, $a2, $zero
    /* A5320 800B4B20 14004526 */  addiu      $a1, $s2, 0x14
    /* A5324 800B4B24 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* A5328 800B4B28 92D3020C */  jal        func_800B4E48
    /* A532C 800B4B2C 14000626 */   addiu     $a2, $s0, 0x14
    /* A5330 800B4B30 21202002 */  addu       $a0, $s1, $zero
    /* A5334 800B4B34 21284002 */  addu       $a1, $s2, $zero
    /* A5338 800B4B38 4ED3020C */  jal        func_800B4D38
    /* A533C 800B4B3C 21300002 */   addu      $a2, $s0, $zero
    /* A5340 800B4B40 1400028E */  lw         $v0, 0x14($s0)
    /* A5344 800B4B44 1400238E */  lw         $v1, 0x14($s1)
    /* A5348 800B4B48 00000000 */  nop
    /* A534C 800B4B4C 21104300 */  addu       $v0, $v0, $v1
    /* A5350 800B4B50 140002AE */  sw         $v0, 0x14($s0)
    /* A5354 800B4B54 1800028E */  lw         $v0, 0x18($s0)
    /* A5358 800B4B58 1800238E */  lw         $v1, 0x18($s1)
    /* A535C 800B4B5C 00000000 */  nop
    /* A5360 800B4B60 21104300 */  addu       $v0, $v0, $v1
    /* A5364 800B4B64 180002AE */  sw         $v0, 0x18($s0)
    /* A5368 800B4B68 1C00028E */  lw         $v0, 0x1C($s0)
    /* A536C 800B4B6C 1C00238E */  lw         $v1, 0x1C($s1)
    /* A5370 800B4B70 00000000 */  nop
    /* A5374 800B4B74 21104300 */  addu       $v0, $v0, $v1
    /* A5378 800B4B78 1C0002AE */  sw         $v0, 0x1C($s0)
    /* A537C 800B4B7C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* A5380 800B4B80 1800B28F */  lw         $s2, 0x18($sp)
    /* A5384 800B4B84 1400B18F */  lw         $s1, 0x14($sp)
    /* A5388 800B4B88 1000B08F */  lw         $s0, 0x10($sp)
    /* A538C 800B4B8C 0800E003 */  jr         $ra
    /* A5390 800B4B90 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800B4B04
