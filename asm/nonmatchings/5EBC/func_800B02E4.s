nonmatching func_800B02E4, 0x2B0

glabel func_800B02E4
    /* A0AE4 800B02E4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A0AE8 800B02E8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A0AEC 800B02EC 21988000 */  addu       $s3, $a0, $zero
    /* A0AF0 800B02F0 1000B0AF */  sw         $s0, 0x10($sp)
    /* A0AF4 800B02F4 2180A000 */  addu       $s0, $a1, $zero
    /* A0AF8 800B02F8 1400B1AF */  sw         $s1, 0x14($sp)
    /* A0AFC 800B02FC 2188C000 */  addu       $s1, $a2, $zero
    /* A0B00 800B0300 1800B2AF */  sw         $s2, 0x18($sp)
    /* A0B04 800B0304 2000BFAF */  sw         $ra, 0x20($sp)
    /* A0B08 800B0308 A0C2020C */  jal        func_800B0A80
    /* A0B0C 800B030C 2190E000 */   addu      $s2, $a3, $zero
    /* A0B10 800B0310 CCC00208 */  j          .L800B0330
    /* A0B14 800B0314 00000000 */   nop
  .L800B0318:
    /* A0B18 800B0318 ADC2020C */  jal        func_800B0AB4
    /* A0B1C 800B031C 00000000 */   nop
    /* A0B20 800B0320 95004014 */  bnez       $v0, .L800B0578
    /* A0B24 800B0324 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A0B28 800B0328 65C1020C */  jal        func_800B0594
    /* A0B2C 800B032C 00000000 */   nop
  .L800B0330:
    /* A0B30 800B0330 0D80023C */  lui        $v0, %hi(D_800CEBBC)
    /* A0B34 800B0334 BCEB428C */  lw         $v0, %lo(D_800CEBBC)($v0)
    /* A0B38 800B0338 0D80033C */  lui        $v1, %hi(D_800CEBC0)
    /* A0B3C 800B033C C0EB638C */  lw         $v1, %lo(D_800CEBC0)($v1)
    /* A0B40 800B0340 01004224 */  addiu      $v0, $v0, 0x1
    /* A0B44 800B0344 3F004230 */  andi       $v0, $v0, 0x3F
    /* A0B48 800B0348 F3FF4310 */  beq        $v0, $v1, .L800B0318
    /* A0B4C 800B034C 00000000 */   nop
    /* A0B50 800B0350 2DEA020C */  jal        func_800BA8B4
    /* A0B54 800B0354 21200000 */   addu      $a0, $zero, $zero
    /* A0B58 800B0358 0D80043C */  lui        $a0, %hi(D_800CEAC4)
    /* A0B5C 800B035C C4EA8424 */  addiu      $a0, $a0, %lo(D_800CEAC4)
    /* A0B60 800B0360 0D80013C */  lui        $at, %hi(D_800CEBC4)
    /* A0B64 800B0364 C4EB22AC */  sw         $v0, %lo(D_800CEBC4)($at)
    /* A0B68 800B0368 01008390 */  lbu        $v1, 0x1($a0)
    /* A0B6C 800B036C 01000224 */  addiu      $v0, $zero, 0x1
    /* A0B70 800B0370 14006010 */  beqz       $v1, .L800B03C4
    /* A0B74 800B0374 080082AC */   sw        $v0, 0x8($a0)
    /* A0B78 800B0378 0D80033C */  lui        $v1, %hi(D_800CEBBC)
    /* A0B7C 800B037C BCEB638C */  lw         $v1, %lo(D_800CEBBC)($v1)
    /* A0B80 800B0380 0D80023C */  lui        $v0, %hi(D_800CEBC0)
    /* A0B84 800B0384 C0EB428C */  lw         $v0, %lo(D_800CEBC0)($v0)
    /* A0B88 800B0388 00000000 */  nop
    /* A0B8C 800B038C 1E006214 */  bne        $v1, $v0, .L800B0408
    /* A0B90 800B0390 00000000 */   nop
    /* A0B94 800B0394 0D80023C */  lui        $v0, %hi(D_800CEBA8)
    /* A0B98 800B0398 A8EB428C */  lw         $v0, %lo(D_800CEBA8)($v0)
    /* A0B9C 800B039C 00000000 */  nop
    /* A0BA0 800B03A0 0000428C */  lw         $v0, 0x0($v0)
    /* A0BA4 800B03A4 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* A0BA8 800B03A8 24104300 */  and        $v0, $v0, $v1
    /* A0BAC 800B03AC 16004014 */  bnez       $v0, .L800B0408
    /* A0BB0 800B03B0 00000000 */   nop
    /* A0BB4 800B03B4 0C00828C */  lw         $v0, 0xC($a0)
    /* A0BB8 800B03B8 00000000 */  nop
    /* A0BBC 800B03BC 12004014 */  bnez       $v0, .L800B0408
    /* A0BC0 800B03C0 00000000 */   nop
  .L800B03C4:
    /* A0BC4 800B03C4 0D80033C */  lui        $v1, %hi(D_800CEB9C)
    /* A0BC8 800B03C8 9CEB638C */  lw         $v1, %lo(D_800CEB9C)($v1)
    /* A0BCC 800B03CC 0004043C */  lui        $a0, (0x4000000 >> 16)
  .L800B03D0:
    /* A0BD0 800B03D0 0000628C */  lw         $v0, 0x0($v1)
    /* A0BD4 800B03D4 00000000 */  nop
    /* A0BD8 800B03D8 24104400 */  and        $v0, $v0, $a0
    /* A0BDC 800B03DC FCFF4010 */  beqz       $v0, .L800B03D0
    /* A0BE0 800B03E0 00000000 */   nop
    /* A0BE4 800B03E4 21200002 */  addu       $a0, $s0, $zero
    /* A0BE8 800B03E8 09F86002 */  jalr       $s3
    /* A0BEC 800B03EC 21284002 */   addu      $a1, $s2, $zero
    /* A0BF0 800B03F0 0D80043C */  lui        $a0, %hi(D_800CEBC4)
    /* A0BF4 800B03F4 C4EB848C */  lw         $a0, %lo(D_800CEBC4)($a0)
    /* A0BF8 800B03F8 2DEA020C */  jal        func_800BA8B4
    /* A0BFC 800B03FC 00000000 */   nop
    /* A0C00 800B0400 5EC10208 */  j          .L800B0578
    /* A0C04 800B0404 21100000 */   addu      $v0, $zero, $zero
  .L800B0408:
    /* A0C08 800B0408 0B80053C */  lui        $a1, %hi(func_800B0594)
    /* A0C0C 800B040C 9405A524 */  addiu      $a1, $a1, %lo(func_800B0594)
    /* A0C10 800B0410 E6E9020C */  jal        func_800BA798
    /* A0C14 800B0414 02000424 */   addiu     $a0, $zero, 0x2
    /* A0C18 800B0418 2A002012 */  beqz       $s1, .L800B04C4
    /* A0C1C 800B041C 21300000 */   addu      $a2, $zero, $zero
    /* A0C20 800B0420 1180083C */  lui        $t0, %hi(D_8010A9C4)
    /* A0C24 800B0424 C4A90825 */  addiu      $t0, $t0, %lo(D_8010A9C4)
    /* A0C28 800B0428 21380002 */  addu       $a3, $s0, $zero
    /* A0C2C 800B042C 21102002 */  addu       $v0, $s1, $zero
  .L800B0430:
    /* A0C30 800B0430 02004104 */  bgez       $v0, .L800B043C
    /* A0C34 800B0434 00000000 */   nop
    /* A0C38 800B0438 03004224 */  addiu      $v0, $v0, 0x3
  .L800B043C:
    /* A0C3C 800B043C 83100200 */  sra        $v0, $v0, 2
    /* A0C40 800B0440 2A10C200 */  slt        $v0, $a2, $v0
    /* A0C44 800B0444 0E004010 */  beqz       $v0, .L800B0480
    /* A0C48 800B0448 80200600 */   sll       $a0, $a2, 2
    /* A0C4C 800B044C 0000E58C */  lw         $a1, 0x0($a3)
    /* A0C50 800B0450 0400E724 */  addiu      $a3, $a3, 0x4
    /* A0C54 800B0454 0D80033C */  lui        $v1, %hi(D_800CEBBC)
    /* A0C58 800B0458 BCEB638C */  lw         $v1, %lo(D_800CEBBC)($v1)
    /* A0C5C 800B045C 0100C624 */  addiu      $a2, $a2, 0x1
    /* A0C60 800B0460 40100300 */  sll        $v0, $v1, 1
    /* A0C64 800B0464 21104300 */  addu       $v0, $v0, $v1
    /* A0C68 800B0468 40110200 */  sll        $v0, $v0, 5
    /* A0C6C 800B046C 21104800 */  addu       $v0, $v0, $t0
    /* A0C70 800B0470 21208200 */  addu       $a0, $a0, $v0
    /* A0C74 800B0474 000085AC */  sw         $a1, 0x0($a0)
    /* A0C78 800B0478 0CC10208 */  j          .L800B0430
    /* A0C7C 800B047C 21102002 */   addu      $v0, $s1, $zero
  .L800B0480:
    /* A0C80 800B0480 0D80023C */  lui        $v0, %hi(D_800CEBBC)
    /* A0C84 800B0484 BCEB428C */  lw         $v0, %lo(D_800CEBBC)($v0)
    /* A0C88 800B0488 0D80033C */  lui        $v1, %hi(D_800CEBBC)
    /* A0C8C 800B048C BCEB638C */  lw         $v1, %lo(D_800CEBBC)($v1)
    /* A0C90 800B0490 40200200 */  sll        $a0, $v0, 1
    /* A0C94 800B0494 21208200 */  addu       $a0, $a0, $v0
    /* A0C98 800B0498 40210400 */  sll        $a0, $a0, 5
    /* A0C9C 800B049C 40100300 */  sll        $v0, $v1, 1
    /* A0CA0 800B04A0 21104300 */  addu       $v0, $v0, $v1
    /* A0CA4 800B04A4 40110200 */  sll        $v0, $v0, 5
    /* A0CA8 800B04A8 1180033C */  lui        $v1, %hi(D_8010A9C4)
    /* A0CAC 800B04AC C4A96324 */  addiu      $v1, $v1, %lo(D_8010A9C4)
    /* A0CB0 800B04B0 21104300 */  addu       $v0, $v0, $v1
    /* A0CB4 800B04B4 1180013C */  lui        $at, %hi(D_8010A9BC)
    /* A0CB8 800B04B8 21082400 */  addu       $at, $at, $a0
    /* A0CBC 800B04BC 3AC10208 */  j          .L800B04E8
    /* A0CC0 800B04C0 BCA922AC */   sw        $v0, %lo(D_8010A9BC)($at)
  .L800B04C4:
    /* A0CC4 800B04C4 0D80033C */  lui        $v1, %hi(D_800CEBBC)
    /* A0CC8 800B04C8 BCEB638C */  lw         $v1, %lo(D_800CEBBC)($v1)
    /* A0CCC 800B04CC 00000000 */  nop
    /* A0CD0 800B04D0 40100300 */  sll        $v0, $v1, 1
    /* A0CD4 800B04D4 21104300 */  addu       $v0, $v0, $v1
    /* A0CD8 800B04D8 40110200 */  sll        $v0, $v0, 5
    /* A0CDC 800B04DC 1180013C */  lui        $at, %hi(D_8010A9BC)
    /* A0CE0 800B04E0 21082200 */  addu       $at, $at, $v0
    /* A0CE4 800B04E4 BCA930AC */  sw         $s0, %lo(D_8010A9BC)($at)
  .L800B04E8:
    /* A0CE8 800B04E8 0D80033C */  lui        $v1, %hi(D_800CEBBC)
    /* A0CEC 800B04EC BCEB638C */  lw         $v1, %lo(D_800CEBBC)($v1)
    /* A0CF0 800B04F0 00000000 */  nop
    /* A0CF4 800B04F4 40100300 */  sll        $v0, $v1, 1
    /* A0CF8 800B04F8 21104300 */  addu       $v0, $v0, $v1
    /* A0CFC 800B04FC 40110200 */  sll        $v0, $v0, 5
    /* A0D00 800B0500 1180013C */  lui        $at, %hi(D_8010A9C0)
    /* A0D04 800B0504 21082200 */  addu       $at, $at, $v0
    /* A0D08 800B0508 C0A932AC */  sw         $s2, %lo(D_8010A9C0)($at)
    /* A0D0C 800B050C 0D80033C */  lui        $v1, %hi(D_800CEBBC)
    /* A0D10 800B0510 BCEB638C */  lw         $v1, %lo(D_800CEBBC)($v1)
    /* A0D14 800B0514 00000000 */  nop
    /* A0D18 800B0518 40100300 */  sll        $v0, $v1, 1
    /* A0D1C 800B051C 21104300 */  addu       $v0, $v0, $v1
    /* A0D20 800B0520 40110200 */  sll        $v0, $v0, 5
    /* A0D24 800B0524 1180013C */  lui        $at, %hi(D_8010A9B8)
    /* A0D28 800B0528 21082200 */  addu       $at, $at, $v0
    /* A0D2C 800B052C B8A933AC */  sw         $s3, %lo(D_8010A9B8)($at)
    /* A0D30 800B0530 0D80023C */  lui        $v0, %hi(D_800CEBBC)
    /* A0D34 800B0534 BCEB428C */  lw         $v0, %lo(D_800CEBBC)($v0)
    /* A0D38 800B0538 0D80043C */  lui        $a0, %hi(D_800CEBC4)
    /* A0D3C 800B053C C4EB848C */  lw         $a0, %lo(D_800CEBC4)($a0)
    /* A0D40 800B0540 01004224 */  addiu      $v0, $v0, 0x1
    /* A0D44 800B0544 3F004230 */  andi       $v0, $v0, 0x3F
    /* A0D48 800B0548 0D80013C */  lui        $at, %hi(D_800CEBBC)
    /* A0D4C 800B054C 2DEA020C */  jal        func_800BA8B4
    /* A0D50 800B0550 BCEB22AC */   sw        $v0, %lo(D_800CEBBC)($at)
    /* A0D54 800B0554 65C1020C */  jal        func_800B0594
    /* A0D58 800B0558 00000000 */   nop
    /* A0D5C 800B055C 0D80023C */  lui        $v0, %hi(D_800CEBBC)
    /* A0D60 800B0560 BCEB428C */  lw         $v0, %lo(D_800CEBBC)($v0)
    /* A0D64 800B0564 0D80033C */  lui        $v1, %hi(D_800CEBC0)
    /* A0D68 800B0568 C0EB638C */  lw         $v1, %lo(D_800CEBC0)($v1)
    /* A0D6C 800B056C 00000000 */  nop
    /* A0D70 800B0570 23104300 */  subu       $v0, $v0, $v1
    /* A0D74 800B0574 3F004230 */  andi       $v0, $v0, 0x3F
  .L800B0578:
    /* A0D78 800B0578 2000BF8F */  lw         $ra, 0x20($sp)
    /* A0D7C 800B057C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A0D80 800B0580 1800B28F */  lw         $s2, 0x18($sp)
    /* A0D84 800B0584 1400B18F */  lw         $s1, 0x14($sp)
    /* A0D88 800B0588 1000B08F */  lw         $s0, 0x10($sp)
    /* A0D8C 800B058C 0800E003 */  jr         $ra
    /* A0D90 800B0590 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800B02E4
