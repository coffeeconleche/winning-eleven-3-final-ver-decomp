nonmatching func_800BA9A4, 0x430

glabel func_800BA9A4
    /* AB1A4 800BA9A4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* AB1A8 800BA9A8 1400B1AF */  sw         $s1, 0x14($sp)
    /* AB1AC 800BA9AC 0D80113C */  lui        $s1, %hi(D_800D3DEC)
    /* AB1B0 800BA9B0 EC3D3126 */  addiu      $s1, $s1, %lo(D_800D3DEC)
    /* AB1B4 800BA9B4 2400BFAF */  sw         $ra, 0x24($sp)
    /* AB1B8 800BA9B8 2000B4AF */  sw         $s4, 0x20($sp)
    /* AB1BC 800BA9BC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* AB1C0 800BA9C0 1800B2AF */  sw         $s2, 0x18($sp)
    /* AB1C4 800BA9C4 1000B0AF */  sw         $s0, 0x10($sp)
    /* AB1C8 800BA9C8 00002296 */  lhu        $v0, 0x0($s1)
    /* AB1CC 800BA9CC 00000000 */  nop
    /* AB1D0 800BA9D0 0A004014 */  bnez       $v0, .L800BA9FC
    /* AB1D4 800BA9D4 00000000 */   nop
    /* AB1D8 800BA9D8 0D80023C */  lui        $v0, %hi(D_800D4E78)
    /* AB1DC 800BA9DC 784E428C */  lw         $v0, %lo(D_800D4E78)($v0)
    /* AB1E0 800BA9E0 00000000 */  nop
    /* AB1E4 800BA9E4 00004594 */  lhu        $a1, 0x0($v0)
    /* AB1E8 800BA9E8 0180043C */  lui        $a0, %hi(D_80015490)
    /* AB1EC 800BA9EC A6B5020C */  jal        func_800AD698
    /* AB1F0 800BA9F0 90548424 */   addiu     $a0, $a0, %lo(D_80015490)
    /* AB1F4 800BA9F4 86EB020C */  jal        func_800BAE18
    /* AB1F8 800BA9F8 00000000 */   nop
  .L800BA9FC:
    /* AB1FC 800BA9FC 0D80043C */  lui        $a0, %hi(D_800D4E78)
    /* AB200 800BAA00 784E848C */  lw         $a0, %lo(D_800D4E78)($a0)
    /* AB204 800BAA04 30002396 */  lhu        $v1, 0x30($s1)
    /* AB208 800BAA08 01000224 */  addiu      $v0, $zero, 0x1
    /* AB20C 800BAA0C 020022A6 */  sh         $v0, 0x2($s1)
    /* AB210 800BAA10 0D80023C */  lui        $v0, %hi(D_800D4E7C)
    /* AB214 800BAA14 7C4E428C */  lw         $v0, %lo(D_800D4E7C)($v0)
    /* AB218 800BAA18 00008494 */  lhu        $a0, 0x0($a0)
    /* AB21C 800BAA1C 00004294 */  lhu        $v0, 0x0($v0)
    /* AB220 800BAA20 24186400 */  and        $v1, $v1, $a0
    /* AB224 800BAA24 24104300 */  and        $v0, $v0, $v1
    /* AB228 800BAA28 26004010 */  beqz       $v0, .L800BAAC4
    /* AB22C 800BAA2C 21804000 */   addu      $s0, $v0, $zero
    /* AB230 800BAA30 01001324 */  addiu      $s3, $zero, 0x1
    /* AB234 800BAA34 04003426 */  addiu      $s4, $s1, 0x4
  .L800BAA38:
    /* AB238 800BAA38 16000012 */  beqz       $s0, .L800BAA94
    /* AB23C 800BAA3C 21880000 */   addu      $s1, $zero, $zero
    /* AB240 800BAA40 21908002 */  addu       $s2, $s4, $zero
  .L800BAA44:
    /* AB244 800BAA44 0B00222A */  slti       $v0, $s1, 0xB
    /* AB248 800BAA48 12004010 */  beqz       $v0, .L800BAA94
    /* AB24C 800BAA4C 01000232 */   andi      $v0, $s0, 0x1
    /* AB250 800BAA50 0B004010 */  beqz       $v0, .L800BAA80
    /* AB254 800BAA54 04103302 */   sllv      $v0, $s3, $s1
    /* AB258 800BAA58 0D80033C */  lui        $v1, %hi(D_800D4E78)
    /* AB25C 800BAA5C 784E638C */  lw         $v1, %lo(D_800D4E78)($v1)
    /* AB260 800BAA60 27100200 */  nor        $v0, $zero, $v0
    /* AB264 800BAA64 000062A4 */  sh         $v0, 0x0($v1)
    /* AB268 800BAA68 0000428E */  lw         $v0, 0x0($s2)
    /* AB26C 800BAA6C 00000000 */  nop
    /* AB270 800BAA70 03004010 */  beqz       $v0, .L800BAA80
    /* AB274 800BAA74 00000000 */   nop
    /* AB278 800BAA78 09F84000 */  jalr       $v0
    /* AB27C 800BAA7C 00000000 */   nop
  .L800BAA80:
    /* AB280 800BAA80 04005226 */  addiu      $s2, $s2, 0x4
    /* AB284 800BAA84 42801000 */  srl        $s0, $s0, 1
    /* AB288 800BAA88 FFFF0232 */  andi       $v0, $s0, 0xFFFF
    /* AB28C 800BAA8C EDFF4014 */  bnez       $v0, .L800BAA44
    /* AB290 800BAA90 01003126 */   addiu     $s1, $s1, 0x1
  .L800BAA94:
    /* AB294 800BAA94 0D80043C */  lui        $a0, %hi(D_800D4E78)
    /* AB298 800BAA98 784E848C */  lw         $a0, %lo(D_800D4E78)($a0)
    /* AB29C 800BAA9C 0D80033C */  lui        $v1, %hi(D_800D3E1C)
    /* AB2A0 800BAAA0 1C3E6394 */  lhu        $v1, %lo(D_800D3E1C)($v1)
    /* AB2A4 800BAAA4 0D80023C */  lui        $v0, %hi(D_800D4E7C)
    /* AB2A8 800BAAA8 7C4E428C */  lw         $v0, %lo(D_800D4E7C)($v0)
    /* AB2AC 800BAAAC 00008494 */  lhu        $a0, 0x0($a0)
    /* AB2B0 800BAAB0 00004294 */  lhu        $v0, 0x0($v0)
    /* AB2B4 800BAAB4 24186400 */  and        $v1, $v1, $a0
    /* AB2B8 800BAAB8 24104300 */  and        $v0, $v0, $v1
    /* AB2BC 800BAABC DEFF4014 */  bnez       $v0, .L800BAA38
    /* AB2C0 800BAAC0 21804000 */   addu      $s0, $v0, $zero
  .L800BAAC4:
    /* AB2C4 800BAAC4 0D80053C */  lui        $a1, %hi(D_800D4E78)
    /* AB2C8 800BAAC8 784EA58C */  lw         $a1, %lo(D_800D4E78)($a1)
    /* AB2CC 800BAACC 0D80063C */  lui        $a2, %hi(D_800D4E7C)
    /* AB2D0 800BAAD0 7C4EC68C */  lw         $a2, %lo(D_800D4E7C)($a2)
    /* AB2D4 800BAAD4 0000A294 */  lhu        $v0, 0x0($a1)
    /* AB2D8 800BAAD8 0000C394 */  lhu        $v1, 0x0($a2)
    /* AB2DC 800BAADC 00000000 */  nop
    /* AB2E0 800BAAE0 24104300 */  and        $v0, $v0, $v1
    /* AB2E4 800BAAE4 16004010 */  beqz       $v0, .L800BAB40
    /* AB2E8 800BAAE8 00000000 */   nop
    /* AB2EC 800BAAEC 0D80023C */  lui        $v0, %hi(D_800D4E84)
    /* AB2F0 800BAAF0 844E4224 */  addiu      $v0, $v0, %lo(D_800D4E84)
    /* AB2F4 800BAAF4 0000438C */  lw         $v1, 0x0($v0)
    /* AB2F8 800BAAF8 00000000 */  nop
    /* AB2FC 800BAAFC 21206000 */  addu       $a0, $v1, $zero
    /* AB300 800BAB00 01006324 */  addiu      $v1, $v1, 0x1
    /* AB304 800BAB04 01088428 */  slti       $a0, $a0, 0x801
    /* AB308 800BAB08 0F008014 */  bnez       $a0, .L800BAB48
    /* AB30C 800BAB0C 000043AC */   sw        $v1, 0x0($v0)
    /* AB310 800BAB10 0180043C */  lui        $a0, %hi(D_800154AC)
    /* AB314 800BAB14 AC548424 */  addiu      $a0, $a0, %lo(D_800154AC)
    /* AB318 800BAB18 0000A594 */  lhu        $a1, 0x0($a1)
    /* AB31C 800BAB1C 0000C694 */  lhu        $a2, 0x0($a2)
    /* AB320 800BAB20 A6B5020C */  jal        func_800AD698
    /* AB324 800BAB24 00000000 */   nop
    /* AB328 800BAB28 0D80023C */  lui        $v0, %hi(D_800D4E78)
    /* AB32C 800BAB2C 784E428C */  lw         $v0, %lo(D_800D4E78)($v0)
    /* AB330 800BAB30 0D80013C */  lui        $at, %hi(D_800D4E84)
    /* AB334 800BAB34 844E20AC */  sw         $zero, %lo(D_800D4E84)($at)
    /* AB338 800BAB38 D2EA0208 */  j          .L800BAB48
    /* AB33C 800BAB3C 000040A4 */   sh        $zero, 0x0($v0)
  .L800BAB40:
    /* AB340 800BAB40 0D80013C */  lui        $at, %hi(D_800D4E84)
    /* AB344 800BAB44 844E20AC */  sw         $zero, %lo(D_800D4E84)($at)
  .L800BAB48:
    /* AB348 800BAB48 0D80013C */  lui        $at, %hi(D_800D3DEE)
    /* AB34C 800BAB4C 86EB020C */  jal        func_800BAE18
    /* AB350 800BAB50 EE3D20A4 */   sh        $zero, %lo(D_800D3DEE)($at)
    /* AB354 800BAB54 2400BF8F */  lw         $ra, 0x24($sp)
    /* AB358 800BAB58 2000B48F */  lw         $s4, 0x20($sp)
    /* AB35C 800BAB5C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* AB360 800BAB60 1800B28F */  lw         $s2, 0x18($sp)
    /* AB364 800BAB64 1400B18F */  lw         $s1, 0x14($sp)
    /* AB368 800BAB68 1000B08F */  lw         $s0, 0x10($sp)
    /* AB36C 800BAB6C 0800E003 */  jr         $ra
    /* AB370 800BAB70 2800BD27 */   addiu     $sp, $sp, 0x28
    /* AB374 800BAB74 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* AB378 800BAB78 1400B1AF */  sw         $s1, 0x14($sp)
    /* AB37C 800BAB7C 21888000 */  addu       $s1, $a0, $zero
    /* AB380 800BAB80 1800B2AF */  sw         $s2, 0x18($sp)
    /* AB384 800BAB84 2190A000 */  addu       $s2, $a1, $zero
    /* AB388 800BAB88 0D80053C */  lui        $a1, %hi(D_800D3DF0)
    /* AB38C 800BAB8C F03DA524 */  addiu      $a1, $a1, %lo(D_800D3DF0)
    /* AB390 800BAB90 80101100 */  sll        $v0, $s1, 2
    /* AB394 800BAB94 21204500 */  addu       $a0, $v0, $a1
    /* AB398 800BAB98 2400BFAF */  sw         $ra, 0x24($sp)
    /* AB39C 800BAB9C 2000B4AF */  sw         $s4, 0x20($sp)
    /* AB3A0 800BABA0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* AB3A4 800BABA4 1000B0AF */  sw         $s0, 0x10($sp)
    /* AB3A8 800BABA8 0000948C */  lw         $s4, 0x0($a0)
    /* AB3AC 800BABAC 00000000 */  nop
    /* AB3B0 800BABB0 3A005412 */  beq        $s2, $s4, .L800BAC9C
    /* AB3B4 800BABB4 21108002 */   addu      $v0, $s4, $zero
    /* AB3B8 800BABB8 FCFFA294 */  lhu        $v0, -0x4($a1)
    /* AB3BC 800BABBC 00000000 */  nop
    /* AB3C0 800BABC0 35004010 */  beqz       $v0, .L800BAC98
    /* AB3C4 800BABC4 FCFFA624 */   addiu     $a2, $a1, -0x4
    /* AB3C8 800BABC8 0D80023C */  lui        $v0, %hi(D_800D4E7C)
    /* AB3CC 800BABCC 7C4E428C */  lw         $v0, %lo(D_800D4E7C)($v0)
    /* AB3D0 800BABD0 00000000 */  nop
    /* AB3D4 800BABD4 00004394 */  lhu        $v1, 0x0($v0)
    /* AB3D8 800BABD8 000040A4 */  sh         $zero, 0x0($v0)
    /* AB3DC 800BABDC 09004012 */  beqz       $s2, .L800BAC04
    /* AB3E0 800BABE0 FFFF7330 */   andi      $s3, $v1, 0xFFFF
    /* AB3E4 800BABE4 01000324 */  addiu      $v1, $zero, 0x1
    /* AB3E8 800BABE8 04182302 */  sllv       $v1, $v1, $s1
    /* AB3EC 800BABEC 000092AC */  sw         $s2, 0x0($a0)
    /* AB3F0 800BABF0 3000C294 */  lhu        $v0, 0x30($a2)
    /* AB3F4 800BABF4 25986302 */  or         $s3, $s3, $v1
    /* AB3F8 800BABF8 25104300 */  or         $v0, $v0, $v1
    /* AB3FC 800BABFC 09EB0208 */  j          .L800BAC24
    /* AB400 800BAC00 3000C2A4 */   sh        $v0, 0x30($a2)
  .L800BAC04:
    /* AB404 800BAC04 01000224 */  addiu      $v0, $zero, 0x1
    /* AB408 800BAC08 04102202 */  sllv       $v0, $v0, $s1
    /* AB40C 800BAC0C 27100200 */  nor        $v0, $zero, $v0
    /* AB410 800BAC10 000080AC */  sw         $zero, 0x0($a0)
    /* AB414 800BAC14 2C00A394 */  lhu        $v1, 0x2C($a1)
    /* AB418 800BAC18 24986202 */  and        $s3, $s3, $v0
    /* AB41C 800BAC1C 24186200 */  and        $v1, $v1, $v0
    /* AB420 800BAC20 2C00A3A4 */  sh         $v1, 0x2C($a1)
  .L800BAC24:
    /* AB424 800BAC24 08002016 */  bnez       $s1, .L800BAC48
    /* AB428 800BAC28 04000224 */   addiu     $v0, $zero, 0x4
    /* AB42C 800BAC2C 0100502E */  sltiu      $s0, $s2, 0x1
    /* AB430 800BAC30 C2B3020C */  jal        func_800ACF08
    /* AB434 800BAC34 21200002 */   addu      $a0, $s0, $zero
    /* AB438 800BAC38 03000424 */  addiu      $a0, $zero, 0x3
    /* AB43C 800BAC3C CAE9020C */  jal        func_800BA728
    /* AB440 800BAC40 21280002 */   addu      $a1, $s0, $zero
    /* AB444 800BAC44 04000224 */  addiu      $v0, $zero, 0x4
  .L800BAC48:
    /* AB448 800BAC48 05002216 */  bne        $s1, $v0, .L800BAC60
    /* AB44C 800BAC4C 05000224 */   addiu     $v0, $zero, 0x5
    /* AB450 800BAC50 21200000 */  addu       $a0, $zero, $zero
    /* AB454 800BAC54 CAE9020C */  jal        func_800BA728
    /* AB458 800BAC58 0100452E */   sltiu     $a1, $s2, 0x1
    /* AB45C 800BAC5C 05000224 */  addiu      $v0, $zero, 0x5
  .L800BAC60:
    /* AB460 800BAC60 05002216 */  bne        $s1, $v0, .L800BAC78
    /* AB464 800BAC64 06000224 */   addiu     $v0, $zero, 0x6
    /* AB468 800BAC68 01000424 */  addiu      $a0, $zero, 0x1
    /* AB46C 800BAC6C CAE9020C */  jal        func_800BA728
    /* AB470 800BAC70 0100452E */   sltiu     $a1, $s2, 0x1
    /* AB474 800BAC74 06000224 */  addiu      $v0, $zero, 0x6
  .L800BAC78:
    /* AB478 800BAC78 03002216 */  bne        $s1, $v0, .L800BAC88
    /* AB47C 800BAC7C 02000424 */   addiu     $a0, $zero, 0x2
    /* AB480 800BAC80 CAE9020C */  jal        func_800BA728
    /* AB484 800BAC84 0100452E */   sltiu     $a1, $s2, 0x1
  .L800BAC88:
    /* AB488 800BAC88 0D80023C */  lui        $v0, %hi(D_800D4E7C)
    /* AB48C 800BAC8C 7C4E428C */  lw         $v0, %lo(D_800D4E7C)($v0)
    /* AB490 800BAC90 00000000 */  nop
    /* AB494 800BAC94 000053A4 */  sh         $s3, 0x0($v0)
  .L800BAC98:
    /* AB498 800BAC98 21108002 */  addu       $v0, $s4, $zero
  .L800BAC9C:
    /* AB49C 800BAC9C 2400BF8F */  lw         $ra, 0x24($sp)
    /* AB4A0 800BACA0 2000B48F */  lw         $s4, 0x20($sp)
    /* AB4A4 800BACA4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* AB4A8 800BACA8 1800B28F */  lw         $s2, 0x18($sp)
    /* AB4AC 800BACAC 1400B18F */  lw         $s1, 0x14($sp)
    /* AB4B0 800BACB0 1000B08F */  lw         $s0, 0x10($sp)
    /* AB4B4 800BACB4 0800E003 */  jr         $ra
    /* AB4B8 800BACB8 2800BD27 */   addiu     $sp, $sp, 0x28
    /* AB4BC 800BACBC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AB4C0 800BACC0 1000B0AF */  sw         $s0, 0x10($sp)
    /* AB4C4 800BACC4 0D80103C */  lui        $s0, %hi(D_800D3DEC)
    /* AB4C8 800BACC8 EC3D1026 */  addiu      $s0, $s0, %lo(D_800D3DEC)
    /* AB4CC 800BACCC 1400BFAF */  sw         $ra, 0x14($sp)
    /* AB4D0 800BACD0 00000296 */  lhu        $v0, 0x0($s0)
    /* AB4D4 800BACD4 00000000 */  nop
    /* AB4D8 800BACD8 1C004010 */  beqz       $v0, .L800BAD4C
    /* AB4DC 800BACDC 21100000 */   addu      $v0, $zero, $zero
    /* AB4E0 800BACE0 F6B4020C */  jal        func_800AD3D8
    /* AB4E4 800BACE4 00000000 */   nop
    /* AB4E8 800BACE8 0D80023C */  lui        $v0, %hi(D_800D4E7C)
    /* AB4EC 800BACEC 7C4E428C */  lw         $v0, %lo(D_800D4E7C)($v0)
    /* AB4F0 800BACF0 0D80043C */  lui        $a0, %hi(D_800D4E80)
    /* AB4F4 800BACF4 804E848C */  lw         $a0, %lo(D_800D4E80)($a0)
    /* AB4F8 800BACF8 00004394 */  lhu        $v1, 0x0($v0)
    /* AB4FC 800BACFC 00000000 */  nop
    /* AB500 800BAD00 320003A6 */  sh         $v1, 0x32($s0)
    /* AB504 800BAD04 0000838C */  lw         $v1, 0x0($a0)
    /* AB508 800BAD08 0D80043C */  lui        $a0, %hi(D_800D4E78)
    /* AB50C 800BAD0C 784E848C */  lw         $a0, %lo(D_800D4E78)($a0)
    /* AB510 800BAD10 340003AE */  sw         $v1, 0x34($s0)
    /* AB514 800BAD14 000040A4 */  sh         $zero, 0x0($v0)
    /* AB518 800BAD18 00004294 */  lhu        $v0, 0x0($v0)
    /* AB51C 800BAD1C 00000000 */  nop
    /* AB520 800BAD20 000082A4 */  sh         $v0, 0x0($a0)
    /* AB524 800BAD24 0D80043C */  lui        $a0, %hi(D_800D4E80)
    /* AB528 800BAD28 804E848C */  lw         $a0, %lo(D_800D4E80)($a0)
    /* AB52C 800BAD2C 7777033C */  lui        $v1, (0x77777777 >> 16)
    /* AB530 800BAD30 0000828C */  lw         $v0, 0x0($a0)
    /* AB534 800BAD34 77776334 */  ori        $v1, $v1, (0x77777777 & 0xFFFF)
    /* AB538 800BAD38 24104300 */  and        $v0, $v0, $v1
    /* AB53C 800BAD3C 8AEB020C */  jal        func_800BAE28
    /* AB540 800BAD40 000082AC */   sw        $v0, 0x0($a0)
    /* AB544 800BAD44 21100002 */  addu       $v0, $s0, $zero
    /* AB548 800BAD48 000040A4 */  sh         $zero, 0x0($v0)
  .L800BAD4C:
    /* AB54C 800BAD4C 1400BF8F */  lw         $ra, 0x14($sp)
    /* AB550 800BAD50 1000B08F */  lw         $s0, 0x10($sp)
    /* AB554 800BAD54 0800E003 */  jr         $ra
    /* AB558 800BAD58 1800BD27 */   addiu     $sp, $sp, 0x18
    /* AB55C 800BAD5C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AB560 800BAD60 1000B0AF */  sw         $s0, 0x10($sp)
    /* AB564 800BAD64 0D80103C */  lui        $s0, %hi(D_800D3DEC)
    /* AB568 800BAD68 EC3D1026 */  addiu      $s0, $s0, %lo(D_800D3DEC)
    /* AB56C 800BAD6C 1400BFAF */  sw         $ra, 0x14($sp)
    /* AB570 800BAD70 00000296 */  lhu        $v0, 0x0($s0)
    /* AB574 800BAD74 00000000 */  nop
    /* AB578 800BAD78 11004014 */  bnez       $v0, .L800BADC0
    /* AB57C 800BAD7C 00000000 */   nop
    /* AB580 800BAD80 8EEB020C */  jal        func_800BAE38
    /* AB584 800BAD84 38000426 */   addiu     $a0, $s0, 0x38
    /* AB588 800BAD88 0D80043C */  lui        $a0, %hi(D_800D4E7C)
    /* AB58C 800BAD8C 7C4E848C */  lw         $a0, %lo(D_800D4E7C)($a0)
    /* AB590 800BAD90 32000396 */  lhu        $v1, 0x32($s0)
    /* AB594 800BAD94 01000224 */  addiu      $v0, $zero, 0x1
    /* AB598 800BAD98 000002A6 */  sh         $v0, 0x0($s0)
    /* AB59C 800BAD9C 000083A4 */  sh         $v1, 0x0($a0)
    /* AB5A0 800BADA0 0D80033C */  lui        $v1, %hi(D_800D4E80)
    /* AB5A4 800BADA4 804E638C */  lw         $v1, %lo(D_800D4E80)($v1)
    /* AB5A8 800BADA8 3400028E */  lw         $v0, 0x34($s0)
    /* AB5AC 800BADAC 00000000 */  nop
    /* AB5B0 800BADB0 9AB3020C */  jal        func_800ACE68
    /* AB5B4 800BADB4 000062AC */   sw        $v0, 0x0($v1)
    /* AB5B8 800BADB8 71EB0208 */  j          .L800BADC4
    /* AB5BC 800BADBC 21100002 */   addu      $v0, $s0, $zero
  .L800BADC0:
    /* AB5C0 800BADC0 21100000 */  addu       $v0, $zero, $zero
  .L800BADC4:
    /* AB5C4 800BADC4 1400BF8F */  lw         $ra, 0x14($sp)
    /* AB5C8 800BADC8 1000B08F */  lw         $s0, 0x10($sp)
    /* AB5CC 800BADCC 0800E003 */  jr         $ra
    /* AB5D0 800BADD0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800BA9A4
