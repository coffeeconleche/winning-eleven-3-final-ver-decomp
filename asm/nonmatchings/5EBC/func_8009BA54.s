/* Handwritten function */
nonmatching func_8009BA54, 0x358

glabel func_8009BA54
    /* 8C254 8009BA54 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8C258 8009BA58 3800A28F */  lw         $v0, 0x38($sp)
    /* 8C25C 8009BA5C 2000BFAF */  sw         $ra, 0x20($sp)
    /* 8C260 8009BA60 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8C264 8009BA64 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8C268 8009BA68 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8C26C 8009BA6C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8C270 8009BA70 00004290 */  lbu        $v0, 0x0($v0)
    /* 8C274 8009BA74 00000000 */  nop
    /* 8C278 8009BA78 80100200 */  sll        $v0, $v0, 2
    /* 8C27C 8009BA7C 0D80013C */  lui        $at, %hi(D_800CADF0)
    /* 8C280 8009BA80 21082200 */  addu       $at, $at, $v0
    /* 8C284 8009BA84 F0AD238C */  lw         $v1, %lo(D_800CADF0)($at)
    /* 8C288 8009BA88 3C00B393 */  lbu        $s3, 0x3C($sp)
    /* 8C28C 8009BA8C 00006294 */  lhu        $v0, 0x0($v1)
    /* 8C290 8009BA90 801F013C */  lui        $at, (0x1F800124 >> 16)
    /* 8C294 8009BA94 240122A4 */  sh         $v0, (0x1F800124 & 0xFFFF)($at)
    /* 8C298 8009BA98 02006294 */  lhu        $v0, 0x2($v1)
    /* 8C29C 8009BA9C 801F013C */  lui        $at, (0x1F800126 >> 16)
    /* 8C2A0 8009BAA0 260122A4 */  sh         $v0, (0x1F800126 & 0xFFFF)($at)
    /* 8C2A4 8009BAA4 04006394 */  lhu        $v1, 0x4($v1)
    /* 8C2A8 8009BAA8 2180E000 */  addu       $s0, $a3, $zero
    /* 8C2AC 8009BAAC 801F013C */  lui        $at, (0x1F80012C >> 16)
    /* 8C2B0 8009BAB0 2C0124A4 */  sh         $a0, (0x1F80012C & 0xFFFF)($at)
    /* 8C2B4 8009BAB4 801F043C */  lui        $a0, (0x1F800124 >> 16)
    /* 8C2B8 8009BAB8 24018434 */  ori        $a0, $a0, (0x1F800124 & 0xFFFF)
    /* 8C2BC 8009BABC 801F013C */  lui        $at, (0x1F80012E >> 16)
    /* 8C2C0 8009BAC0 2E0125A4 */  sh         $a1, (0x1F80012E & 0xFFFF)($at)
    /* 8C2C4 8009BAC4 801F053C */  lui        $a1, (0x1F800104 >> 16)
    /* 8C2C8 8009BAC8 00100224 */  addiu      $v0, $zero, 0x1000
    /* 8C2CC 8009BACC 801F013C */  lui        $at, (0x1F800130 >> 16)
    /* 8C2D0 8009BAD0 300126A4 */  sh         $a2, (0x1F800130 & 0xFFFF)($at)
    /* 8C2D4 8009BAD4 801F013C */  lui        $at, (0x1F80014C >> 16)
    /* 8C2D8 8009BAD8 4C0122AC */  sw         $v0, (0x1F80014C & 0xFFFF)($at)
    /* 8C2DC 8009BADC 801F013C */  lui        $at, (0x1F800150 >> 16)
    /* 8C2E0 8009BAE0 500122AC */  sw         $v0, (0x1F800150 & 0xFFFF)($at)
    /* 8C2E4 8009BAE4 801F013C */  lui        $at, (0x1F800154 >> 16)
    /* 8C2E8 8009BAE8 540122AC */  sw         $v0, (0x1F800154 & 0xFFFF)($at)
    /* 8C2EC 8009BAEC 801F013C */  lui        $at, (0x1F800128 >> 16)
    /* 8C2F0 8009BAF0 280123A4 */  sh         $v1, (0x1F800128 & 0xFFFF)($at)
    /* 8C2F4 8009BAF4 6AC6020C */  jal        func_800B19A8
    /* 8C2F8 8009BAF8 0401A534 */   ori       $a1, $a1, (0x1F800104 & 0xFFFF)
    /* 8C2FC 8009BAFC FF001032 */  andi       $s0, $s0, 0xFF
    /* 8C300 8009BB00 07000016 */  bnez       $s0, .L8009BB20
    /* 8C304 8009BB04 801F123C */   lui       $s2, (0x1F80029D >> 16)
    /* 8C308 8009BB08 00FC0424 */  addiu      $a0, $zero, -0x400
    /* 8C30C 8009BB0C 801F053C */  lui        $a1, (0x1F800104 >> 16)
    /* 8C310 8009BB10 0EC7020C */  jal        func_800B1C38
    /* 8C314 8009BB14 0401A534 */   ori       $a1, $a1, (0x1F800104 & 0xFFFF)
    /* 8C318 8009BB18 CD6E0208 */  j          .L8009BB34
    /* 8C31C 8009BB1C 00030424 */   addiu     $a0, $zero, 0x300
  .L8009BB20:
    /* 8C320 8009BB20 00040424 */  addiu      $a0, $zero, 0x400
    /* 8C324 8009BB24 801F053C */  lui        $a1, (0x1F800104 >> 16)
    /* 8C328 8009BB28 0EC7020C */  jal        func_800B1C38
    /* 8C32C 8009BB2C 0401A534 */   ori       $a1, $a1, (0x1F800104 & 0xFFFF)
    /* 8C330 8009BB30 00FD0424 */  addiu      $a0, $zero, -0x300
  .L8009BB34:
    /* 8C334 8009BB34 801F053C */  lui        $a1, (0x1F800104 >> 16)
    /* 8C338 8009BB38 76C7020C */  jal        func_800B1DD8
    /* 8C33C 8009BB3C 0401A534 */   ori       $a1, $a1, (0x1F800104 & 0xFFFF)
    /* 8C340 8009BB40 04015126 */  addiu      $s1, $s2, %lo(D_1F800104)
    /* 8C344 8009BB44 21202002 */  addu       $a0, $s1, $zero
    /* 8C348 8009BB48 D2C4020C */  jal        func_800B1348
    /* 8C34C 8009BB4C 4C014536 */   ori       $a1, $s2, (0x1F80014C & 0xFFFF)
    /* 8C350 8009BB50 A8015026 */  addiu      $s0, $s2, %lo(D_1F8001A8)
    /* 8C354 8009BB54 21200002 */  addu       $a0, $s0, $zero
    /* 8C358 8009BB58 6EC4020C */  jal        func_800B11B8
    /* 8C35C 8009BB5C 21282002 */   addu      $a1, $s1, $zero
    /* 8C360 8009BB60 21200002 */  addu       $a0, $s0, $zero
    /* 8C364 8009BB64 2C014536 */  ori        $a1, $s2, (0x1F80012C & 0xFFFF)
    /* 8C368 8009BB68 B2C4020C */  jal        func_800B12C8
    /* 8C36C 8009BB6C 3C014636 */   ori       $a2, $s2, (0x1F80013C & 0xFFFF)
    /* 8C370 8009BB70 3C01428E */  lw         $v0, (0x1F80013C & 0xFFFF)($s2)
    /* 8C374 8009BB74 BC01438E */  lw         $v1, (0x1F8001BC & 0xFFFF)($s2)
    /* 8C378 8009BB78 C001448E */  lw         $a0, (0x1F8001C0 & 0xFFFF)($s2)
    /* 8C37C 8009BB7C C401458E */  lw         $a1, (0x1F8001C4 & 0xFFFF)($s2)
    /* 8C380 8009BB80 21104300 */  addu       $v0, $v0, $v1
    /* 8C384 8009BB84 180142AE */  sw         $v0, (0x1F800118 & 0xFFFF)($s2)
    /* 8C388 8009BB88 4001428E */  lw         $v0, (0x1F800140 & 0xFFFF)($s2)
    /* 8C38C 8009BB8C 4401438E */  lw         $v1, (0x1F800144 & 0xFFFF)($s2)
    /* 8C390 8009BB90 21104400 */  addu       $v0, $v0, $a0
    /* 8C394 8009BB94 21186500 */  addu       $v1, $v1, $a1
    /* 8C398 8009BB98 1C0142AE */  sw         $v0, (0x1F80011C & 0xFFFF)($s2)
    /* 8C39C 8009BB9C 200143AE */  sw         $v1, (0x1F800120 & 0xFFFF)($s2)
    /* 8C3A0 8009BBA0 00002C8E */  lw         $t4, 0x0($s1)
    /* 8C3A4 8009BBA4 04002D8E */  lw         $t5, 0x4($s1)
    /* 8C3A8 8009BBA8 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
    /* 8C3AC 8009BBAC 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
    /* 8C3B0 8009BBB0 08002C8E */  lw         $t4, 0x8($s1)
    /* 8C3B4 8009BBB4 0C002D8E */  lw         $t5, 0xC($s1)
    /* 8C3B8 8009BBB8 10002E8E */  lw         $t6, 0x10($s1)
    /* 8C3BC 8009BBBC 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
    /* 8C3C0 8009BBC0 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
    /* 8C3C4 8009BBC4 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
    /* 8C3C8 8009BBC8 14002C8E */  lw         $t4, 0x14($s1)
    /* 8C3CC 8009BBCC 18002D8E */  lw         $t5, 0x18($s1)
    /* 8C3D0 8009BBD0 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
    /* 8C3D4 8009BBD4 1C002E8E */  lw         $t6, 0x1C($s1)
    /* 8C3D8 8009BBD8 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
    /* 8C3DC 8009BBDC 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
    /* 8C3E0 8009BBE0 21800000 */  addu       $s0, $zero, $zero
    /* 8C3E4 8009BBE4 0D80113C */  lui        $s1, %hi(D_800CB250)
    /* 8C3E8 8009BBE8 50B23126 */  addiu      $s1, $s1, %lo(D_800CB250)
    /* 8C3EC 8009BBEC 0F80023C */  lui        $v0, %hi(D_800E8208)
    /* 8C3F0 8009BBF0 08824224 */  addiu      $v0, $v0, %lo(D_800E8208)
    /* 8C3F4 8009BBF4 900142AE */  sw         $v0, (0x1F800190 & 0xFFFF)($s2)
    /* 8C3F8 8009BBF8 21207002 */  addu       $a0, $s3, $s0
  .L8009BBFC:
    /* 8C3FC 8009BBFC FF008430 */  andi       $a0, $a0, 0xFF
    /* 8C400 8009BC00 FF000532 */  andi       $a1, $s0, 0xFF
    /* 8C404 8009BC04 9D024392 */  lbu        $v1, (0x1F80029D & 0xFFFF)($s2)
    /* 8C408 8009BC08 80280500 */  sll        $a1, $a1, 2
    /* 8C40C 8009BC0C FF006330 */  andi       $v1, $v1, 0xFF
    /* 8C410 8009BC10 00110300 */  sll        $v0, $v1, 4
    /* 8C414 8009BC14 23104300 */  subu       $v0, $v0, $v1
    /* 8C418 8009BC18 80100200 */  sll        $v0, $v0, 2
    /* 8C41C 8009BC1C 23104300 */  subu       $v0, $v0, $v1
    /* 8C420 8009BC20 80100200 */  sll        $v0, $v0, 2
    /* 8C424 8009BC24 23104300 */  subu       $v0, $v0, $v1
    /* 8C428 8009BC28 9001438E */  lw         $v1, (0x1F800190 & 0xFFFF)($s2)
    /* 8C42C 8009BC2C 80110200 */  sll        $v0, $v0, 6
    /* 8C430 8009BC30 21186200 */  addu       $v1, $v1, $v0
    /* 8C434 8009BC34 80100400 */  sll        $v0, $a0, 2
    /* 8C438 8009BC38 21104400 */  addu       $v0, $v0, $a0
    /* 8C43C 8009BC3C C0100200 */  sll        $v0, $v0, 3
    /* 8C440 8009BC40 B0314224 */  addiu      $v0, $v0, 0x31B0
    /* 8C444 8009BC44 21386200 */  addu       $a3, $v1, $v0
    /* 8C448 8009BC48 0D80013C */  lui        $at, %hi(D_800CB290)
    /* 8C44C 8009BC4C 21082500 */  addu       $at, $at, $a1
    /* 8C450 8009BC50 90B22490 */  lbu        $a0, %lo(D_800CB290)($at)
    /* 8C454 8009BC54 0D80013C */  lui        $at, %hi(D_800CB291)
    /* 8C458 8009BC58 21082500 */  addu       $at, $at, $a1
    /* 8C45C 8009BC5C 91B22390 */  lbu        $v1, %lo(D_800CB291)($at)
    /* 8C460 8009BC60 0D80013C */  lui        $at, %hi(D_800CB292)
    /* 8C464 8009BC64 21082500 */  addu       $at, $at, $a1
    /* 8C468 8009BC68 92B22290 */  lbu        $v0, %lo(D_800CB292)($at)
    /* 8C46C 8009BC6C C0200400 */  sll        $a0, $a0, 3
    /* 8C470 8009BC70 21209100 */  addu       $a0, $a0, $s1
    /* 8C474 8009BC74 C0180300 */  sll        $v1, $v1, 3
    /* 8C478 8009BC78 21187100 */  addu       $v1, $v1, $s1
    /* 8C47C 8009BC7C C0100200 */  sll        $v0, $v0, 3
    /* 8C480 8009BC80 21105100 */  addu       $v0, $v0, $s1
    /* 8C484 8009BC84 000080C8 */  lwc2       $0, 0x0($a0)
    /* 8C488 8009BC88 040081C8 */  lwc2       $1, 0x4($a0)
    /* 8C48C 8009BC8C 000062C8 */  lwc2       $2, 0x0($v1)
    /* 8C490 8009BC90 040063C8 */  lwc2       $3, 0x4($v1)
    /* 8C494 8009BC94 000044C8 */  lwc2       $4, 0x0($v0)
    /* 8C498 8009BC98 040045C8 */  lwc2       $5, 0x4($v0)
    /* 8C49C 8009BC9C 00000000 */  nop
    /* 8C4A0 8009BCA0 00000000 */  nop
    /* 8C4A4 8009BCA4 3000284A */  rtpt
    /* 8C4A8 8009BCA8 0800E424 */  addiu      $a0, $a3, 0x8
    /* 8C4AC 8009BCAC 1000E324 */  addiu      $v1, $a3, 0x10
    /* 8C4B0 8009BCB0 1800E224 */  addiu      $v0, $a3, 0x18
    /* 8C4B4 8009BCB4 00008CE8 */  swc2       $12, 0x0($a0)
    /* 8C4B8 8009BCB8 00006DE8 */  swc2       $13, 0x0($v1)
    /* 8C4BC 8009BCBC 00004EE8 */  swc2       $14, 0x0($v0)
    /* 8C4C0 8009BCC0 0D80013C */  lui        $at, %hi(D_800CB293)
    /* 8C4C4 8009BCC4 21082500 */  addu       $at, $at, $a1
    /* 8C4C8 8009BCC8 93B22290 */  lbu        $v0, %lo(D_800CB293)($at)
    /* 8C4CC 8009BCCC 00000000 */  nop
    /* 8C4D0 8009BCD0 C0100200 */  sll        $v0, $v0, 3
    /* 8C4D4 8009BCD4 21105100 */  addu       $v0, $v0, $s1
    /* 8C4D8 8009BCD8 000040C8 */  lwc2       $0, 0x0($v0)
    /* 8C4DC 8009BCDC 040041C8 */  lwc2       $1, 0x4($v0)
    /* 8C4E0 8009BCE0 00000000 */  nop
    /* 8C4E4 8009BCE4 00000000 */  nop
    /* 8C4E8 8009BCE8 0100184A */  rtps
    /* 8C4EC 8009BCEC 2000E224 */  addiu      $v0, $a3, 0x20
    /* 8C4F0 8009BCF0 00004EE8 */  swc2       $14, 0x0($v0)
    /* 8C4F4 8009BCF4 EC004226 */  addiu      $v0, $s2, %lo(D_1F8000EC)
    /* 8C4F8 8009BCF8 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
    /* 8C4FC 8009BCFC 00000000 */  nop
    /* 8C500 8009BD00 83600C00 */  sra        $t4, $t4, 2
    /* 8C504 8009BD04 00004CAC */  sw         $t4, 0x0($v0)
    /* 8C508 8009BD08 EC00458E */  lw         $a1, (0x1F8000EC & 0xFFFF)($s2)
    /* 8C50C 8009BD0C 00000000 */  nop
    /* 8C510 8009BD10 1900A018 */  blez       $a1, .L8009BD78
    /* 8C514 8009BD14 0E000224 */   addiu     $v0, $zero, 0xE
    /* 8C518 8009BD18 6666043C */  lui        $a0, (0x66666667 >> 16)
    /* 8C51C 8009BD1C 67668434 */  ori        $a0, $a0, (0x66666667 & 0xFFFF)
    /* 8C520 8009BD20 0000438E */  lw         $v1, (0x1F800000 & 0xFFFF)($s2)
    /* 8C524 8009BD24 00000000 */  nop
    /* 8C528 8009BD28 23104300 */  subu       $v0, $v0, $v1
    /* 8C52C 8009BD2C 07104500 */  srav       $v0, $a1, $v0
    /* 8C530 8009BD30 80180200 */  sll        $v1, $v0, 2
    /* 8C534 8009BD34 21186200 */  addu       $v1, $v1, $v0
    /* 8C538 8009BD38 80180300 */  sll        $v1, $v1, 2
    /* 8C53C 8009BD3C 23186200 */  subu       $v1, $v1, $v0
    /* 8C540 8009BD40 18006400 */  mult       $v1, $a0
    /* 8C544 8009BD44 9D024692 */  lbu        $a2, (0x1F80029D & 0xFFFF)($s2)
    /* 8C548 8009BD48 2128E000 */  addu       $a1, $a3, $zero
    /* 8C54C 8009BD4C 80330600 */  sll        $a2, $a2, 14
    /* 8C550 8009BD50 C31F0300 */  sra        $v1, $v1, 31
    /* 8C554 8009BD54 0F80023C */  lui        $v0, %hi(D_800F3568)
    /* 8C558 8009BD58 68354224 */  addiu      $v0, $v0, %lo(D_800F3568)
    /* 8C55C 8009BD5C 10400000 */  mfhi       $t0
    /* 8C560 8009BD60 C3200800 */  sra        $a0, $t0, 3
    /* 8C564 8009BD64 23208300 */  subu       $a0, $a0, $v1
    /* 8C568 8009BD68 80200400 */  sll        $a0, $a0, 2
    /* 8C56C 8009BD6C 21208200 */  addu       $a0, $a0, $v0
    /* 8C570 8009BD70 01B7020C */  jal        func_800ADC04
    /* 8C574 8009BD74 2120C400 */   addu      $a0, $a2, $a0
  .L8009BD78:
    /* 8C578 8009BD78 01001026 */  addiu      $s0, $s0, 0x1
    /* 8C57C 8009BD7C FF000232 */  andi       $v0, $s0, 0xFF
    /* 8C580 8009BD80 0500422C */  sltiu      $v0, $v0, 0x5
    /* 8C584 8009BD84 9DFF4014 */  bnez       $v0, .L8009BBFC
    /* 8C588 8009BD88 21207002 */   addu      $a0, $s3, $s0
    /* 8C58C 8009BD8C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8C590 8009BD90 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8C594 8009BD94 1800B28F */  lw         $s2, 0x18($sp)
    /* 8C598 8009BD98 1400B18F */  lw         $s1, 0x14($sp)
    /* 8C59C 8009BD9C 1000B08F */  lw         $s0, 0x10($sp)
    /* 8C5A0 8009BDA0 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 8C5A4 8009BDA4 0800E003 */  jr         $ra
    /* 8C5A8 8009BDA8 00000000 */   nop
endlabel func_8009BA54
