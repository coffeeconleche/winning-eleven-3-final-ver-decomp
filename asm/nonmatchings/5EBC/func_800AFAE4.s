nonmatching func_800AFAE4, 0x230

glabel func_800AFAE4
    /* A02E4 800AFAE4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A02E8 800AFAE8 21408000 */  addu       $t0, $a0, $zero
    /* A02EC 800AFAEC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* A02F0 800AFAF0 1800B2AF */  sw         $s2, 0x18($sp)
    /* A02F4 800AFAF4 1400B1AF */  sw         $s1, 0x14($sp)
    /* A02F8 800AFAF8 1000B0AF */  sw         $s0, 0x10($sp)
    /* A02FC 800AFAFC 04000385 */  lh         $v1, 0x4($t0)
    /* A0300 800AFB00 04000495 */  lhu        $a0, 0x4($t0)
    /* A0304 800AFB04 0C006004 */  bltz       $v1, .L800AFB38
    /* A0308 800AFB08 2148A000 */   addu      $t1, $a1, $zero
    /* A030C 800AFB0C 0D80023C */  lui        $v0, %hi(D_800CEAC8)
    /* A0310 800AFB10 C8EA4284 */  lh         $v0, %lo(D_800CEAC8)($v0)
    /* A0314 800AFB14 00000000 */  nop
    /* A0318 800AFB18 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A031C 800AFB1C 2A104300 */  slt        $v0, $v0, $v1
    /* A0320 800AFB20 0D80033C */  lui        $v1, %hi(D_800CEAC8)
    /* A0324 800AFB24 C8EA6394 */  lhu        $v1, %lo(D_800CEAC8)($v1)
    /* A0328 800AFB28 04004014 */  bnez       $v0, .L800AFB3C
    /* A032C 800AFB2C FFFF6224 */   addiu     $v0, $v1, -0x1
    /* A0330 800AFB30 CFBE0208 */  j          .L800AFB3C
    /* A0334 800AFB34 21108000 */   addu      $v0, $a0, $zero
  .L800AFB38:
    /* A0338 800AFB38 21100000 */  addu       $v0, $zero, $zero
  .L800AFB3C:
    /* A033C 800AFB3C 06000385 */  lh         $v1, 0x6($t0)
    /* A0340 800AFB40 06000495 */  lhu        $a0, 0x6($t0)
    /* A0344 800AFB44 0C006004 */  bltz       $v1, .L800AFB78
    /* A0348 800AFB48 040002A5 */   sh        $v0, 0x4($t0)
    /* A034C 800AFB4C 0D80023C */  lui        $v0, %hi(D_800CEACA)
    /* A0350 800AFB50 CAEA4284 */  lh         $v0, %lo(D_800CEACA)($v0)
    /* A0354 800AFB54 00000000 */  nop
    /* A0358 800AFB58 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A035C 800AFB5C 2A104300 */  slt        $v0, $v0, $v1
    /* A0360 800AFB60 0D80033C */  lui        $v1, %hi(D_800CEACA)
    /* A0364 800AFB64 CAEA6394 */  lhu        $v1, %lo(D_800CEACA)($v1)
    /* A0368 800AFB68 04004014 */  bnez       $v0, .L800AFB7C
    /* A036C 800AFB6C FFFF6324 */   addiu     $v1, $v1, -0x1
    /* A0370 800AFB70 DFBE0208 */  j          .L800AFB7C
    /* A0374 800AFB74 21188000 */   addu      $v1, $a0, $zero
  .L800AFB78:
    /* A0378 800AFB78 21180000 */  addu       $v1, $zero, $zero
  .L800AFB7C:
    /* A037C 800AFB7C 00000295 */  lhu        $v0, 0x0($t0)
    /* A0380 800AFB80 00000000 */  nop
    /* A0384 800AFB84 3F004230 */  andi       $v0, $v0, 0x3F
    /* A0388 800AFB88 06004014 */  bnez       $v0, .L800AFBA4
    /* A038C 800AFB8C 060003A5 */   sh        $v1, 0x6($t0)
    /* A0390 800AFB90 04000295 */  lhu        $v0, 0x4($t0)
    /* A0394 800AFB94 00000000 */  nop
    /* A0398 800AFB98 3F004230 */  andi       $v0, $v0, 0x3F
    /* A039C 800AFB9C 37004010 */  beqz       $v0, .L800AFC7C
    /* A03A0 800AFBA0 FF05023C */   lui       $v0, (0x5FFFFFF >> 16)
  .L800AFBA4:
    /* A03A4 800AFBA4 FF00063C */  lui        $a2, (0xFFFFFF >> 16)
    /* A03A8 800AFBA8 FFFFC634 */  ori        $a2, $a2, (0xFFFFFF & 0xFFFF)
    /* A03AC 800AFBAC FFE4043C */  lui        $a0, (0xE4FFFFFF >> 16)
    /* A03B0 800AFBB0 FFFF8434 */  ori        $a0, $a0, (0xE4FFFFFF & 0xFFFF)
    /* A03B4 800AFBB4 FF03073C */  lui        $a3, (0x3FFFFFF >> 16)
    /* A03B8 800AFBB8 0E80053C */  lui        $a1, %hi(D_800E7048)
    /* A03BC 800AFBBC 4870A524 */  addiu      $a1, $a1, %lo(D_800E7048)
    /* A03C0 800AFBC0 0E80103C */  lui        $s0, %hi(D_800E7070)
    /* A03C4 800AFBC4 70701026 */  addiu      $s0, $s0, %lo(D_800E7070)
    /* A03C8 800AFBC8 24100602 */  and        $v0, $s0, $a2
    /* A03CC 800AFBCC 0008033C */  lui        $v1, (0x8000000 >> 16)
    /* A03D0 800AFBD0 25104300 */  or         $v0, $v0, $v1
    /* A03D4 800AFBD4 00E3113C */  lui        $s1, (0xE3000000 >> 16)
    /* A03D8 800AFBD8 00E5123C */  lui        $s2, (0xE5000000 >> 16)
    /* A03DC 800AFBDC 0000A2AC */  sw         $v0, 0x0($a1)
    /* A03E0 800AFBE0 00E6023C */  lui        $v0, (0xE6000000 >> 16)
    /* A03E4 800AFBE4 24302601 */  and        $a2, $t1, $a2
    /* A03E8 800AFBE8 0060033C */  lui        $v1, (0x60000000 >> 16)
    /* A03EC 800AFBEC 2530C300 */  or         $a2, $a2, $v1
    /* A03F0 800AFBF0 1000A2AC */  sw         $v0, 0x10($a1)
    /* A03F4 800AFBF4 0D80023C */  lui        $v0, %hi(D_800CEB9C)
    /* A03F8 800AFBF8 9CEB428C */  lw         $v0, %lo(D_800CEB9C)($v0)
    /* A03FC 800AFBFC 00E1033C */  lui        $v1, (0xE1000000 >> 16)
    /* A0400 800AFC00 0400B1AC */  sw         $s1, 0x4($a1)
    /* A0404 800AFC04 0800A4AC */  sw         $a0, 0x8($a1)
    /* A0408 800AFC08 0C00B2AC */  sw         $s2, 0xC($a1)
    /* A040C 800AFC0C 0000448C */  lw         $a0, 0x0($v0)
    /* A0410 800AFC10 C2170900 */  srl        $v0, $t1, 31
    /* A0414 800AFC14 80120200 */  sll        $v0, $v0, 10
    /* A0418 800AFC18 25104300 */  or         $v0, $v0, $v1
    /* A041C 800AFC1C 1800A6AC */  sw         $a2, 0x18($a1)
    /* A0420 800AFC20 FF078430 */  andi       $a0, $a0, 0x7FF
    /* A0424 800AFC24 25208200 */  or         $a0, $a0, $v0
    /* A0428 800AFC28 1400A4AC */  sw         $a0, 0x14($a1)
    /* A042C 800AFC2C 0000028D */  lw         $v0, 0x0($t0)
    /* A0430 800AFC30 FFFFE734 */  ori        $a3, $a3, (0x3FFFFFF & 0xFFFF)
    /* A0434 800AFC34 1C00A2AC */  sw         $v0, 0x1C($a1)
    /* A0438 800AFC38 0400028D */  lw         $v0, 0x4($t0)
    /* A043C 800AFC3C 03000424 */  addiu      $a0, $zero, 0x3
    /* A0440 800AFC40 000007AE */  sw         $a3, 0x0($s0)
    /* A0444 800AFC44 A4C0020C */  jal        func_800B0290
    /* A0448 800AFC48 2000A2AC */   sw        $v0, 0x20($a1)
    /* A044C 800AFC4C 04000424 */  addiu      $a0, $zero, 0x4
    /* A0450 800AFC50 25105100 */  or         $v0, $v0, $s1
    /* A0454 800AFC54 A4C0020C */  jal        func_800B0290
    /* A0458 800AFC58 040002AE */   sw        $v0, 0x4($s0)
    /* A045C 800AFC5C 05000424 */  addiu      $a0, $zero, 0x5
    /* A0460 800AFC60 00E4033C */  lui        $v1, (0xE4000000 >> 16)
    /* A0464 800AFC64 25104300 */  or         $v0, $v0, $v1
    /* A0468 800AFC68 A4C0020C */  jal        func_800B0290
    /* A046C 800AFC6C 080002AE */   sw        $v0, 0x8($s0)
    /* A0470 800AFC70 25105200 */  or         $v0, $v0, $s2
    /* A0474 800AFC74 3BBF0208 */  j          .L800AFCEC
    /* A0478 800AFC78 0C0002AE */   sw        $v0, 0xC($s0)
  .L800AFC7C:
    /* A047C 800AFC7C FFFF4234 */  ori        $v0, $v0, (0x5FFFFFF & 0xFFFF)
    /* A0480 800AFC80 FF00033C */  lui        $v1, (0xFFFFFF >> 16)
    /* A0484 800AFC84 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
    /* A0488 800AFC88 0E80063C */  lui        $a2, %hi(D_800E7048)
    /* A048C 800AFC8C 4870C624 */  addiu      $a2, $a2, %lo(D_800E7048)
    /* A0490 800AFC90 0000C2AC */  sw         $v0, 0x0($a2)
    /* A0494 800AFC94 00E6023C */  lui        $v0, (0xE6000000 >> 16)
    /* A0498 800AFC98 24182301 */  and        $v1, $t1, $v1
    /* A049C 800AFC9C 0002053C */  lui        $a1, (0x2000000 >> 16)
    /* A04A0 800AFCA0 0400C2AC */  sw         $v0, 0x4($a2)
    /* A04A4 800AFCA4 0D80023C */  lui        $v0, %hi(D_800CEB9C)
    /* A04A8 800AFCA8 9CEB428C */  lw         $v0, %lo(D_800CEB9C)($v0)
    /* A04AC 800AFCAC 25186500 */  or         $v1, $v1, $a1
    /* A04B0 800AFCB0 0000448C */  lw         $a0, 0x0($v0)
    /* A04B4 800AFCB4 C2170900 */  srl        $v0, $t1, 31
    /* A04B8 800AFCB8 80120200 */  sll        $v0, $v0, 10
    /* A04BC 800AFCBC 0C00C3AC */  sw         $v1, 0xC($a2)
    /* A04C0 800AFCC0 00E1033C */  lui        $v1, (0xE1000000 >> 16)
    /* A04C4 800AFCC4 25104300 */  or         $v0, $v0, $v1
    /* A04C8 800AFCC8 FF078430 */  andi       $a0, $a0, 0x7FF
    /* A04CC 800AFCCC 25208200 */  or         $a0, $a0, $v0
    /* A04D0 800AFCD0 0800C4AC */  sw         $a0, 0x8($a2)
    /* A04D4 800AFCD4 0000028D */  lw         $v0, 0x0($t0)
    /* A04D8 800AFCD8 00000000 */  nop
    /* A04DC 800AFCDC 1000C2AC */  sw         $v0, 0x10($a2)
    /* A04E0 800AFCE0 0400028D */  lw         $v0, 0x4($t0)
    /* A04E4 800AFCE4 00000000 */  nop
    /* A04E8 800AFCE8 1400C2AC */  sw         $v0, 0x14($a2)
  .L800AFCEC:
    /* A04EC 800AFCEC 0E80043C */  lui        $a0, %hi(D_800E7048)
    /* A04F0 800AFCF0 92C0020C */  jal        func_800B0248
    /* A04F4 800AFCF4 48708424 */   addiu     $a0, $a0, %lo(D_800E7048)
    /* A04F8 800AFCF8 21100000 */  addu       $v0, $zero, $zero
    /* A04FC 800AFCFC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* A0500 800AFD00 1800B28F */  lw         $s2, 0x18($sp)
    /* A0504 800AFD04 1400B18F */  lw         $s1, 0x14($sp)
    /* A0508 800AFD08 1000B08F */  lw         $s0, 0x10($sp)
    /* A050C 800AFD0C 0800E003 */  jr         $ra
    /* A0510 800AFD10 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800AFAE4
