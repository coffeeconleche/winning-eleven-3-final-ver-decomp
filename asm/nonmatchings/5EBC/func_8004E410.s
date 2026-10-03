nonmatching func_8004E410, 0x198

glabel func_8004E410
    /* 3EC10 8004E410 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 3EC14 8004E414 F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 3EC18 8004E418 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3EC1C 8004E41C 2000BFAF */  sw         $ra, 0x20($sp)
    /* 3EC20 8004E420 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3EC24 8004E424 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3EC28 8004E428 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3EC2C 8004E42C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3EC30 8004E430 02008884 */  lh         $t0, 0x2($a0)
    /* 3EC34 8004E434 C2036C84 */  lh         $t4, 0x3C2($v1)
    /* 3EC38 8004E438 00000000 */  nop
    /* 3EC3C 8004E43C 23100C01 */  subu       $v0, $t0, $t4
    /* 3EC40 8004E440 18004200 */  mult       $v0, $v0
    /* 3EC44 8004E444 06008584 */  lh         $a1, 0x6($a0)
    /* 3EC48 8004E448 C6036A84 */  lh         $t2, 0x3C6($v1)
    /* 3EC4C 8004E44C 12580000 */  mflo       $t3
    /* 3EC50 8004E450 2310AA00 */  subu       $v0, $a1, $t2
    /* 3EC54 8004E454 00000000 */  nop
    /* 3EC58 8004E458 18004200 */  mult       $v0, $v0
    /* 3EC5C 8004E45C 02006684 */  lh         $a2, 0x2($v1)
    /* 3EC60 8004E460 12480000 */  mflo       $t1
    /* 3EC64 8004E464 23100601 */  subu       $v0, $t0, $a2
    /* 3EC68 8004E468 00000000 */  nop
    /* 3EC6C 8004E46C 18004200 */  mult       $v0, $v0
    /* 3EC70 8004E470 06006784 */  lh         $a3, 0x6($v1)
    /* 3EC74 8004E474 12200000 */  mflo       $a0
    /* 3EC78 8004E478 2310A700 */  subu       $v0, $a1, $a3
    /* 3EC7C 8004E47C 00000000 */  nop
    /* 3EC80 8004E480 18004200 */  mult       $v0, $v0
    /* 3EC84 8004E484 A4036290 */  lbu        $v0, 0x3A4($v1)
    /* 3EC88 8004E488 00000000 */  nop
    /* 3EC8C 8004E48C 80FF5124 */  addiu      $s1, $v0, -0x80
    /* 3EC90 8004E490 21106901 */  addu       $v0, $t3, $t1
    /* 3EC94 8004E494 12700000 */  mflo       $t6
    /* 3EC98 8004E498 21188E00 */  addu       $v1, $a0, $t6
    /* 3EC9C 8004E49C 2A104300 */  slt        $v0, $v0, $v1
    /* 3ECA0 8004E4A0 05004010 */  beqz       $v0, .L8004E4B8
    /* 3ECA4 8004E4A4 801F133C */   lui       $s3, (0x1F8002F4 >> 16)
    /* 3ECA8 8004E4A8 21200001 */  addu       $a0, $t0, $zero
    /* 3ECAC 8004E4AC 21308001 */  addu       $a2, $t4, $zero
    /* 3ECB0 8004E4B0 2F390108 */  j          .L8004E4BC
    /* 3ECB4 8004E4B4 21384001 */   addu      $a3, $t2, $zero
  .L8004E4B8:
    /* 3ECB8 8004E4B8 21200001 */  addu       $a0, $t0, $zero
  .L8004E4BC:
    /* 3ECBC 8004E4BC DB6C010C */  jal        func_8005B36C
    /* 3ECC0 8004E4C0 00000000 */   nop
    /* 3ECC4 8004E4C4 21904000 */  addu       $s2, $v0, $zero
    /* 3ECC8 8004E4C8 23185102 */  subu       $v1, $s2, $s1
    /* 3ECCC 8004E4CC FF006230 */  andi       $v0, $v1, 0xFF
    /* 3ECD0 8004E4D0 8100422C */  sltiu      $v0, $v0, 0x81
    /* 3ECD4 8004E4D4 02004014 */  bnez       $v0, .L8004E4E0
    /* 3ECD8 8004E4D8 21806000 */   addu      $s0, $v1, $zero
    /* 3ECDC 8004E4DC 23803202 */  subu       $s0, $s1, $s2
  .L8004E4E0:
    /* 3ECE0 8004E4E0 B002638E */  lw         $v1, (0x1F8002B0 & 0xFFFF)($s3)
    /* 3ECE4 8004E4E4 0B000224 */  addiu      $v0, $zero, 0xB
    /* 3ECE8 8004E4E8 06006214 */  bne        $v1, $v0, .L8004E504
    /* 3ECEC 8004E4EC FF000232 */   andi      $v0, $s0, 0xFF
    /* 3ECF0 8004E4F0 AE79000C */  jal        func_8001E6B8
    /* 3ECF4 8004E4F4 0C000424 */   addiu     $a0, $zero, 0xC
    /* 3ECF8 8004E4F8 10004224 */  addiu      $v0, $v0, 0x10
    /* 3ECFC 8004E4FC 21800202 */  addu       $s0, $s0, $v0
    /* 3ED00 8004E500 FF000232 */  andi       $v0, $s0, 0xFF
  .L8004E504:
    /* 3ED04 8004E504 3D00422C */  sltiu      $v0, $v0, 0x3D
    /* 3ED08 8004E508 03004014 */  bnez       $v0, .L8004E518
    /* 3ED0C 8004E50C FF000232 */   andi      $v0, $s0, 0xFF
    /* 3ED10 8004E510 3C001024 */  addiu      $s0, $zero, 0x3C
    /* 3ED14 8004E514 FF000232 */  andi       $v0, $s0, 0xFF
  .L8004E518:
    /* 3ED18 8004E518 0900422C */  sltiu      $v0, $v0, 0x9
    /* 3ED1C 8004E51C 04004014 */  bnez       $v0, .L8004E530
    /* 3ED20 8004E520 00000000 */   nop
    /* 3ED24 8004E524 E871010C */  jal        func_8005C7A0
    /* 3ED28 8004E528 06000424 */   addiu     $a0, $zero, 0x6
    /* 3ED2C 8004E52C 21800202 */  addu       $s0, $s0, $v0
  .L8004E530:
    /* 3ED30 8004E530 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3ED34 8004E534 00000000 */  nop
    /* 3ED38 8004E538 A4034590 */  lbu        $a1, 0x3A4($v0)
    /* 3ED3C 8004E53C 00000000 */  nop
    /* 3ED40 8004E540 23104502 */  subu       $v0, $s2, $a1
    /* 3ED44 8004E544 80FF4224 */  addiu      $v0, $v0, -0x80
    /* 3ED48 8004E548 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3ED4C 8004E54C 8100422C */  sltiu      $v0, $v0, 0x81
    /* 3ED50 8004E550 03004014 */  bnez       $v0, .L8004E560
    /* 3ED54 8004E554 FF002432 */   andi      $a0, $s1, 0xFF
    /* 3ED58 8004E558 59390108 */  j          .L8004E564
    /* 3ED5C 8004E55C 1000A524 */   addiu     $a1, $a1, 0x10
  .L8004E560:
    /* 3ED60 8004E560 F0FFA524 */  addiu      $a1, $a1, -0x10
  .L8004E564:
    /* 3ED64 8004E564 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 3ED68 8004E568 FF000232 */  andi       $v0, $s0, 0xFF
    /* 3ED6C 8004E56C 40100200 */  sll        $v0, $v0, 1
    /* 3ED70 8004E570 80FF0624 */  addiu      $a2, $zero, -0x80
    /* 3ED74 8004E574 2330C200 */  subu       $a2, $a2, $v0
    /* 3ED78 8004E578 F36D010C */  jal        func_8005B7CC
    /* 3ED7C 8004E57C FE00C630 */   andi      $a2, $a2, 0xFE
    /* 3ED80 8004E580 21884000 */  addu       $s1, $v0, $zero
    /* 3ED84 8004E584 FF002232 */  andi       $v0, $s1, 0xFF
    /* 3ED88 8004E588 2000BF8F */  lw         $ra, 0x20($sp)
    /* 3ED8C 8004E58C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3ED90 8004E590 1800B28F */  lw         $s2, 0x18($sp)
    /* 3ED94 8004E594 1400B18F */  lw         $s1, 0x14($sp)
    /* 3ED98 8004E598 1000B08F */  lw         $s0, 0x10($sp)
    /* 3ED9C 8004E59C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3EDA0 8004E5A0 0800E003 */  jr         $ra
    /* 3EDA4 8004E5A4 00000000 */   nop
endlabel func_8004E410
