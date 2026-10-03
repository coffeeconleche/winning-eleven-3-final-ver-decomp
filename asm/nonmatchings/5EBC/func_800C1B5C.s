nonmatching func_800C1B5C, 0xE8

glabel func_800C1B5C
    /* B235C 800C1B5C 0D80023C */  lui        $v0, %hi(D_800D55A8)
    /* B2360 800C1B60 A855428C */  lw         $v0, %lo(D_800D55A8)($v0)
    /* B2364 800C1B64 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B2368 800C1B68 1400B1AF */  sw         $s1, 0x14($sp)
    /* B236C 800C1B6C 21888000 */  addu       $s1, $a0, $zero
    /* B2370 800C1B70 1000B0AF */  sw         $s0, 0x10($sp)
    /* B2374 800C1B74 2180A000 */  addu       $s0, $a1, $zero
    /* B2378 800C1B78 10004014 */  bnez       $v0, .L800C1BBC
    /* B237C 800C1B7C 1800BFAF */   sw        $ra, 0x18($sp)
    /* B2380 800C1B80 0D80023C */  lui        $v0, %hi(D_800D55A4)
    /* B2384 800C1B84 A4554294 */  lhu        $v0, %lo(D_800D55A4)($v0)
    /* B2388 800C1B88 0D80053C */  lui        $a1, %hi(D_800D55B4)
    /* B238C 800C1B8C B455A58C */  lw         $a1, %lo(D_800D55B4)($a1)
    /* B2390 800C1B90 02000424 */  addiu      $a0, $zero, 0x2
    /* B2394 800C1B94 3706030C */  jal        func_800C18DC
    /* B2398 800C1B98 0428A200 */   sllv      $a1, $v0, $a1
    /* B239C 800C1B9C 3706030C */  jal        func_800C18DC
    /* B23A0 800C1BA0 01000424 */   addiu     $a0, $zero, 0x1
    /* B23A4 800C1BA4 03000424 */  addiu      $a0, $zero, 0x3
    /* B23A8 800C1BA8 21282002 */  addu       $a1, $s1, $zero
    /* B23AC 800C1BAC 3706030C */  jal        func_800C18DC
    /* B23B0 800C1BB0 21300002 */   addu      $a2, $s0, $zero
    /* B23B4 800C1BB4 F3060308 */  j          .L800C1BCC
    /* B23B8 800C1BB8 21100002 */   addu      $v0, $s0, $zero
  .L800C1BBC:
    /* B23BC 800C1BBC 21202002 */  addu       $a0, $s1, $zero
    /* B23C0 800C1BC0 6E05030C */  jal        func_800C15B8
    /* B23C4 800C1BC4 21280002 */   addu      $a1, $s0, $zero
    /* B23C8 800C1BC8 21100002 */  addu       $v0, $s0, $zero
  .L800C1BCC:
    /* B23CC 800C1BCC 1800BF8F */  lw         $ra, 0x18($sp)
    /* B23D0 800C1BD0 1400B18F */  lw         $s1, 0x14($sp)
    /* B23D4 800C1BD4 1000B08F */  lw         $s0, 0x10($sp)
    /* B23D8 800C1BD8 0800E003 */  jr         $ra
    /* B23DC 800C1BDC 2000BD27 */   addiu     $sp, $sp, 0x20
    /* B23E0 800C1BE0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B23E4 800C1BE4 1400B1AF */  sw         $s1, 0x14($sp)
    /* B23E8 800C1BE8 21888000 */  addu       $s1, $a0, $zero
    /* B23EC 800C1BEC 1000B0AF */  sw         $s0, 0x10($sp)
    /* B23F0 800C1BF0 2180A000 */  addu       $s0, $a1, $zero
    /* B23F4 800C1BF4 0D80023C */  lui        $v0, %hi(D_800D55A4)
    /* B23F8 800C1BF8 A4554294 */  lhu        $v0, %lo(D_800D55A4)($v0)
    /* B23FC 800C1BFC 0D80053C */  lui        $a1, %hi(D_800D55B4)
    /* B2400 800C1C00 B455A58C */  lw         $a1, %lo(D_800D55B4)($a1)
    /* B2404 800C1C04 02000424 */  addiu      $a0, $zero, 0x2
    /* B2408 800C1C08 1800BFAF */  sw         $ra, 0x18($sp)
    /* B240C 800C1C0C 3706030C */  jal        func_800C18DC
    /* B2410 800C1C10 0428A200 */   sllv      $a1, $v0, $a1
    /* B2414 800C1C14 3706030C */  jal        func_800C18DC
    /* B2418 800C1C18 21200000 */   addu      $a0, $zero, $zero
    /* B241C 800C1C1C 03000424 */  addiu      $a0, $zero, 0x3
    /* B2420 800C1C20 21282002 */  addu       $a1, $s1, $zero
    /* B2424 800C1C24 3706030C */  jal        func_800C18DC
    /* B2428 800C1C28 21300002 */   addu      $a2, $s0, $zero
    /* B242C 800C1C2C 21100002 */  addu       $v0, $s0, $zero
    /* B2430 800C1C30 1800BF8F */  lw         $ra, 0x18($sp)
    /* B2434 800C1C34 1400B18F */  lw         $s1, 0x14($sp)
    /* B2438 800C1C38 1000B08F */  lw         $s0, 0x10($sp)
    /* B243C 800C1C3C 0800E003 */  jr         $ra
    /* B2440 800C1C40 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800C1B5C
