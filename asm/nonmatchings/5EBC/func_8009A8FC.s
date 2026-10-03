/* Handwritten function */
nonmatching func_8009A8FC, 0x3C4

glabel func_8009A8FC
    /* 8B0FC 8009A8FC C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 8B100 8009A900 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8B104 8009A904 21808000 */  addu       $s0, $a0, $zero
    /* 8B108 8009A908 801F043C */  lui        $a0, (0x1F800124 >> 16)
    /* 8B10C 8009A90C 24018434 */  ori        $a0, $a0, (0x1F800124 & 0xFFFF)
    /* 8B110 8009A910 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 8B114 8009A914 3800BEAF */  sw         $fp, 0x38($sp)
    /* 8B118 8009A918 3400B7AF */  sw         $s7, 0x34($sp)
    /* 8B11C 8009A91C 3000B6AF */  sw         $s6, 0x30($sp)
    /* 8B120 8009A920 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 8B124 8009A924 2800B4AF */  sw         $s4, 0x28($sp)
    /* 8B128 8009A928 2400B3AF */  sw         $s3, 0x24($sp)
    /* 8B12C 8009A92C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 8B130 8009A930 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8B134 8009A934 801F013C */  lui        $at, (0x1F800124 >> 16)
    /* 8B138 8009A938 240120A4 */  sh         $zero, (0x1F800124 & 0xFFFF)($at)
    /* 8B13C 8009A93C 16000296 */  lhu        $v0, 0x16($s0)
    /* 8B140 8009A940 801F053C */  lui        $a1, (0x1F800104 >> 16)
    /* 8B144 8009A944 801F013C */  lui        $at, (0x1F800128 >> 16)
    /* 8B148 8009A948 280120A4 */  sh         $zero, (0x1F800128 & 0xFFFF)($at)
    /* 8B14C 8009A94C 801F013C */  lui        $at, (0x1F800126 >> 16)
    /* 8B150 8009A950 260122A4 */  sh         $v0, (0x1F800126 & 0xFFFF)($at)
    /* 8B154 8009A954 08000296 */  lhu        $v0, 0x8($s0)
    /* 8B158 8009A958 801F013C */  lui        $at, (0x1F80012E >> 16)
    /* 8B15C 8009A95C 2E0120A4 */  sh         $zero, (0x1F80012E & 0xFFFF)($at)
    /* 8B160 8009A960 801F013C */  lui        $at, (0x1F80012C >> 16)
    /* 8B164 8009A964 2C0122A4 */  sh         $v0, (0x1F80012C & 0xFFFF)($at)
    /* 8B168 8009A968 0C000396 */  lhu        $v1, 0xC($s0)
    /* 8B16C 8009A96C 00100224 */  addiu      $v0, $zero, 0x1000
    /* 8B170 8009A970 801F013C */  lui        $at, (0x1F80014C >> 16)
    /* 8B174 8009A974 4C0122AC */  sw         $v0, (0x1F80014C & 0xFFFF)($at)
    /* 8B178 8009A978 801F013C */  lui        $at, (0x1F800150 >> 16)
    /* 8B17C 8009A97C 500122AC */  sw         $v0, (0x1F800150 & 0xFFFF)($at)
    /* 8B180 8009A980 801F013C */  lui        $at, (0x1F800154 >> 16)
    /* 8B184 8009A984 540122AC */  sw         $v0, (0x1F800154 & 0xFFFF)($at)
    /* 8B188 8009A988 801F013C */  lui        $at, (0x1F800130 >> 16)
    /* 8B18C 8009A98C 300123A4 */  sh         $v1, (0x1F800130 & 0xFFFF)($at)
    /* 8B190 8009A990 22C5020C */  jal        func_800B1488
    /* 8B194 8009A994 0401A534 */   ori       $a1, $a1, (0x1F800104 & 0xFFFF)
    /* 8B198 8009A998 801F043C */  lui        $a0, (0x1F800104 >> 16)
    /* 8B19C 8009A99C 04018434 */  ori        $a0, $a0, (0x1F800104 & 0xFFFF)
    /* 8B1A0 8009A9A0 801F053C */  lui        $a1, (0x1F80014C >> 16)
    /* 8B1A4 8009A9A4 D2C4020C */  jal        func_800B1348
    /* 8B1A8 8009A9A8 4C01A534 */   ori       $a1, $a1, (0x1F80014C & 0xFFFF)
    /* 8B1AC 8009A9AC 801F043C */  lui        $a0, (0x1F8001A8 >> 16)
    /* 8B1B0 8009A9B0 A8018434 */  ori        $a0, $a0, (0x1F8001A8 & 0xFFFF)
    /* 8B1B4 8009A9B4 801F053C */  lui        $a1, (0x1F800104 >> 16)
    /* 8B1B8 8009A9B8 6EC4020C */  jal        func_800B11B8
    /* 8B1BC 8009A9BC 0401A534 */   ori       $a1, $a1, (0x1F800104 & 0xFFFF)
    /* 8B1C0 8009A9C0 801F043C */  lui        $a0, (0x1F8001A8 >> 16)
    /* 8B1C4 8009A9C4 A8018434 */  ori        $a0, $a0, (0x1F8001A8 & 0xFFFF)
    /* 8B1C8 8009A9C8 801F053C */  lui        $a1, (0x1F80012C >> 16)
    /* 8B1CC 8009A9CC 2C01A534 */  ori        $a1, $a1, (0x1F80012C & 0xFFFF)
    /* 8B1D0 8009A9D0 801F063C */  lui        $a2, (0x1F80013C >> 16)
    /* 8B1D4 8009A9D4 B2C4020C */  jal        func_800B12C8
    /* 8B1D8 8009A9D8 3C01C634 */   ori       $a2, $a2, (0x1F80013C & 0xFFFF)
    /* 8B1DC 8009A9DC 801F133C */  lui        $s3, (0x1F800000 >> 16)
    /* 8B1E0 8009A9E0 801F073C */  lui        $a3, (0x1F800104 >> 16)
    /* 8B1E4 8009A9E4 0401E734 */  ori        $a3, $a3, (0x1F800104 & 0xFFFF)
    /* 8B1E8 8009A9E8 801F023C */  lui        $v0, (0x1F80013C >> 16)
    /* 8B1EC 8009A9EC 3C01428C */  lw         $v0, (0x1F80013C & 0xFFFF)($v0)
    /* 8B1F0 8009A9F0 801F033C */  lui        $v1, (0x1F8001BC >> 16)
    /* 8B1F4 8009A9F4 BC01638C */  lw         $v1, (0x1F8001BC & 0xFFFF)($v1)
    /* 8B1F8 8009A9F8 801F043C */  lui        $a0, (0x1F8001C0 >> 16)
    /* 8B1FC 8009A9FC C001848C */  lw         $a0, (0x1F8001C0 & 0xFFFF)($a0)
    /* 8B200 8009AA00 801F053C */  lui        $a1, (0x1F8001C4 >> 16)
    /* 8B204 8009AA04 C401A58C */  lw         $a1, (0x1F8001C4 & 0xFFFF)($a1)
    /* 8B208 8009AA08 21104300 */  addu       $v0, $v0, $v1
    /* 8B20C 8009AA0C 801F013C */  lui        $at, (0x1F800118 >> 16)
    /* 8B210 8009AA10 180122AC */  sw         $v0, (0x1F800118 & 0xFFFF)($at)
    /* 8B214 8009AA14 801F023C */  lui        $v0, (0x1F800140 >> 16)
    /* 8B218 8009AA18 4001428C */  lw         $v0, (0x1F800140 & 0xFFFF)($v0)
    /* 8B21C 8009AA1C 801F033C */  lui        $v1, (0x1F800144 >> 16)
    /* 8B220 8009AA20 4401638C */  lw         $v1, (0x1F800144 & 0xFFFF)($v1)
    /* 8B224 8009AA24 21104400 */  addu       $v0, $v0, $a0
    /* 8B228 8009AA28 21186500 */  addu       $v1, $v1, $a1
    /* 8B22C 8009AA2C 801F013C */  lui        $at, (0x1F80011C >> 16)
    /* 8B230 8009AA30 1C0122AC */  sw         $v0, (0x1F80011C & 0xFFFF)($at)
    /* 8B234 8009AA34 801F013C */  lui        $at, (0x1F800120 >> 16)
    /* 8B238 8009AA38 200123AC */  sw         $v1, (0x1F800120 & 0xFFFF)($at)
    /* 8B23C 8009AA3C 0000EC8C */  lw         $t4, 0x0($a3)
    /* 8B240 8009AA40 0400ED8C */  lw         $t5, 0x4($a3)
    /* 8B244 8009AA44 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
    /* 8B248 8009AA48 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
    /* 8B24C 8009AA4C 0800EC8C */  lw         $t4, 0x8($a3)
    /* 8B250 8009AA50 0C00ED8C */  lw         $t5, 0xC($a3)
    /* 8B254 8009AA54 1000EE8C */  lw         $t6, 0x10($a3)
    /* 8B258 8009AA58 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
    /* 8B25C 8009AA5C 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
    /* 8B260 8009AA60 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
    /* 8B264 8009AA64 1400EC8C */  lw         $t4, 0x14($a3)
    /* 8B268 8009AA68 1800ED8C */  lw         $t5, 0x18($a3)
    /* 8B26C 8009AA6C 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
    /* 8B270 8009AA70 1C00EE8C */  lw         $t6, 0x1C($a3)
    /* 8B274 8009AA74 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
    /* 8B278 8009AA78 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
    /* 8B27C 8009AA7C 21900000 */  addu       $s2, $zero, $zero
    /* 8B280 8009AA80 0D80143C */  lui        $s4, %hi(D_800CA968)
    /* 8B284 8009AA84 68A99426 */  addiu      $s4, $s4, %lo(D_800CA968)
    /* 8B288 8009AA88 21880000 */  addu       $s1, $zero, $zero
    /* 8B28C 8009AA8C 0F80023C */  lui        $v0, %hi(D_800E8208)
    /* 8B290 8009AA90 08824224 */  addiu      $v0, $v0, %lo(D_800E8208)
    /* 8B294 8009AA94 801F013C */  lui        $at, (0x1F800190 >> 16)
    /* 8B298 8009AA98 900122AC */  sw         $v0, (0x1F800190 & 0xFFFF)($at)
    /* 8B29C 8009AA9C 8C000392 */  lbu        $v1, 0x8C($s0)
    /* 8B2A0 8009AAA0 21800000 */  addu       $s0, $zero, $zero
    /* 8B2A4 8009AAA4 F6FF6324 */  addiu      $v1, $v1, -0xA
    /* 8B2A8 8009AAA8 40100300 */  sll        $v0, $v1, 1
    /* 8B2AC 8009AAAC 21104300 */  addu       $v0, $v0, $v1
    /* 8B2B0 8009AAB0 C0100200 */  sll        $v0, $v0, 3
    /* 8B2B4 8009AAB4 21104300 */  addu       $v0, $v0, $v1
    /* 8B2B8 8009AAB8 40110200 */  sll        $v0, $v0, 5
    /* 8B2BC 8009AABC F0234224 */  addiu      $v0, $v0, 0x23F0
    /* 8B2C0 8009AAC0 1000A2AF */  sw         $v0, 0x10($sp)
  .L8009AAC4:
    /* 8B2C4 8009AAC4 9D026292 */  lbu        $v0, (0x1F80029D & 0xFFFF)($s3)
    /* 8B2C8 8009AAC8 1000A78F */  lw         $a3, 0x10($sp)
    /* 8B2CC 8009AACC FF004230 */  andi       $v0, $v0, 0xFF
    /* 8B2D0 8009AAD0 00190200 */  sll        $v1, $v0, 4
    /* 8B2D4 8009AAD4 23186200 */  subu       $v1, $v1, $v0
    /* 8B2D8 8009AAD8 80180300 */  sll        $v1, $v1, 2
    /* 8B2DC 8009AADC 23186200 */  subu       $v1, $v1, $v0
    /* 8B2E0 8009AAE0 80180300 */  sll        $v1, $v1, 2
    /* 8B2E4 8009AAE4 23186200 */  subu       $v1, $v1, $v0
    /* 8B2E8 8009AAE8 9001628E */  lw         $v0, (0x1F800190 & 0xFFFF)($s3)
    /* 8B2EC 8009AAEC 80190300 */  sll        $v1, $v1, 6
    /* 8B2F0 8009AAF0 21104300 */  addu       $v0, $v0, $v1
    /* 8B2F4 8009AAF4 21104700 */  addu       $v0, $v0, $a3
    /* 8B2F8 8009AAF8 04004012 */  beqz       $s2, .L8009AB0C
    /* 8B2FC 8009AAFC 21285000 */   addu      $a1, $v0, $s0
    /* 8B300 8009AB00 0A000224 */  addiu      $v0, $zero, 0xA
    /* 8B304 8009AB04 1D004216 */  bne        $s2, $v0, .L8009AB7C
    /* 8B308 8009AB08 00000000 */   nop
  .L8009AB0C:
    /* 8B30C 8009AB0C 0D80013C */  lui        $at, %hi(D_800CA918)
    /* 8B310 8009AB10 21083100 */  addu       $at, $at, $s1
    /* 8B314 8009AB14 18A92290 */  lbu        $v0, %lo(D_800CA918)($at)
    /* 8B318 8009AB18 00000000 */  nop
    /* 8B31C 8009AB1C C0100200 */  sll        $v0, $v0, 3
    /* 8B320 8009AB20 21105400 */  addu       $v0, $v0, $s4
    /* 8B324 8009AB24 000040C8 */  lwc2       $0, 0x0($v0)
    /* 8B328 8009AB28 040041C8 */  lwc2       $1, 0x4($v0)
    /* 8B32C 8009AB2C 00000000 */  nop
    /* 8B330 8009AB30 00000000 */  nop
    /* 8B334 8009AB34 0100184A */  rtps
    /* 8B338 8009AB38 0800A224 */  addiu      $v0, $a1, 0x8
    /* 8B33C 8009AB3C 00004EE8 */  swc2       $14, 0x0($v0)
    /* 8B340 8009AB40 0D80013C */  lui        $at, %hi(D_800CA919)
    /* 8B344 8009AB44 21083100 */  addu       $at, $at, $s1
    /* 8B348 8009AB48 19A92290 */  lbu        $v0, %lo(D_800CA919)($at)
    /* 8B34C 8009AB4C 00000000 */  nop
    /* 8B350 8009AB50 C0100200 */  sll        $v0, $v0, 3
    /* 8B354 8009AB54 21105400 */  addu       $v0, $v0, $s4
    /* 8B358 8009AB58 000040C8 */  lwc2       $0, 0x0($v0)
    /* 8B35C 8009AB5C 040041C8 */  lwc2       $1, 0x4($v0)
    /* 8B360 8009AB60 00000000 */  nop
    /* 8B364 8009AB64 00000000 */  nop
    /* 8B368 8009AB68 0100184A */  rtps
    /* 8B36C 8009AB6C 1000A224 */  addiu      $v0, $a1, 0x10
    /* 8B370 8009AB70 00004EE8 */  swc2       $14, 0x0($v0)
    /* 8B374 8009AB74 E36A0208 */  j          .L8009AB8C
    /* 8B378 8009AB78 00000000 */   nop
  .L8009AB7C:
    /* 8B37C 8009AB7C 0800B5A4 */  sh         $s5, 0x8($a1)
    /* 8B380 8009AB80 0A00B6A4 */  sh         $s6, 0xA($a1)
    /* 8B384 8009AB84 1000B7A4 */  sh         $s7, 0x10($a1)
    /* 8B388 8009AB88 1200BEA4 */  sh         $fp, 0x12($a1)
  .L8009AB8C:
    /* 8B38C 8009AB8C 0D80013C */  lui        $at, %hi(D_800CA91A)
    /* 8B390 8009AB90 21083100 */  addu       $at, $at, $s1
    /* 8B394 8009AB94 1AA92290 */  lbu        $v0, %lo(D_800CA91A)($at)
    /* 8B398 8009AB98 00000000 */  nop
    /* 8B39C 8009AB9C C0100200 */  sll        $v0, $v0, 3
    /* 8B3A0 8009ABA0 21105400 */  addu       $v0, $v0, $s4
    /* 8B3A4 8009ABA4 000040C8 */  lwc2       $0, 0x0($v0)
    /* 8B3A8 8009ABA8 040041C8 */  lwc2       $1, 0x4($v0)
    /* 8B3AC 8009ABAC 00000000 */  nop
    /* 8B3B0 8009ABB0 00000000 */  nop
    /* 8B3B4 8009ABB4 0100184A */  rtps
    /* 8B3B8 8009ABB8 1800A224 */  addiu      $v0, $a1, 0x18
    /* 8B3BC 8009ABBC 00004EE8 */  swc2       $14, 0x0($v0)
    /* 8B3C0 8009ABC0 0D80013C */  lui        $at, %hi(D_800CA91B)
    /* 8B3C4 8009ABC4 21083100 */  addu       $at, $at, $s1
    /* 8B3C8 8009ABC8 1BA92290 */  lbu        $v0, %lo(D_800CA91B)($at)
    /* 8B3CC 8009ABCC 00000000 */  nop
    /* 8B3D0 8009ABD0 C0100200 */  sll        $v0, $v0, 3
    /* 8B3D4 8009ABD4 21105400 */  addu       $v0, $v0, $s4
    /* 8B3D8 8009ABD8 000040C8 */  lwc2       $0, 0x0($v0)
    /* 8B3DC 8009ABDC 040041C8 */  lwc2       $1, 0x4($v0)
    /* 8B3E0 8009ABE0 00000000 */  nop
    /* 8B3E4 8009ABE4 00000000 */  nop
    /* 8B3E8 8009ABE8 0100184A */  rtps
    /* 8B3EC 8009ABEC 2000A224 */  addiu      $v0, $a1, 0x20
    /* 8B3F0 8009ABF0 00004EE8 */  swc2       $14, 0x0($v0)
    /* 8B3F4 8009ABF4 1800B594 */  lhu        $s5, 0x18($a1)
    /* 8B3F8 8009ABF8 1A00B694 */  lhu        $s6, 0x1A($a1)
    /* 8B3FC 8009ABFC 2000B794 */  lhu        $s7, 0x20($a1)
    /* 8B400 8009AC00 2200BE94 */  lhu        $fp, 0x22($a1)
    /* 8B404 8009AC04 00000000 */  nop
    /* 8B408 8009AC08 00000000 */  nop
    /* 8B40C 8009AC0C 0600404B */  nclip
    /* 8B410 8009AC10 EC006326 */  addiu      $v1, $s3, %lo(D_1F8000EC)
    /* 8B414 8009AC14 000078E8 */  swc2       $24, 0x0($v1)
    /* 8B418 8009AC18 EC00628E */  lw         $v0, (0x1F8000EC & 0xFFFF)($s3)
    /* 8B41C 8009AC1C 00000000 */  nop
    /* 8B420 8009AC20 1500401C */  bgtz       $v0, .L8009AC78
    /* 8B424 8009AC24 00000000 */   nop
    /* 8B428 8009AC28 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
    /* 8B42C 8009AC2C 00000000 */  nop
    /* 8B430 8009AC30 83600C00 */  sra        $t4, $t4, 2
    /* 8B434 8009AC34 00006CAC */  sw         $t4, 0x0($v1)
    /* 8B438 8009AC38 EC00668E */  lw         $a2, (0x1F8000EC & 0xFFFF)($s3)
    /* 8B43C 8009AC3C 00000000 */  nop
    /* 8B440 8009AC40 0D00C018 */  blez       $a2, .L8009AC78
    /* 8B444 8009AC44 00000000 */   nop
    /* 8B448 8009AC48 0E000424 */  addiu      $a0, $zero, 0xE
    /* 8B44C 8009AC4C 9D026392 */  lbu        $v1, (0x1F80029D & 0xFFFF)($s3)
    /* 8B450 8009AC50 0000628E */  lw         $v0, (0x1F800000 & 0xFFFF)($s3)
    /* 8B454 8009AC54 801B0300 */  sll        $v1, $v1, 14
    /* 8B458 8009AC58 23208200 */  subu       $a0, $a0, $v0
    /* 8B45C 8009AC5C 07208600 */  srav       $a0, $a2, $a0
    /* 8B460 8009AC60 80200400 */  sll        $a0, $a0, 2
    /* 8B464 8009AC64 0F80023C */  lui        $v0, %hi(D_800F3568)
    /* 8B468 8009AC68 68354224 */  addiu      $v0, $v0, %lo(D_800F3568)
    /* 8B46C 8009AC6C 21208200 */  addu       $a0, $a0, $v0
    /* 8B470 8009AC70 01B7020C */  jal        func_800ADC04
    /* 8B474 8009AC74 21206400 */   addu      $a0, $v1, $a0
  .L8009AC78:
    /* 8B478 8009AC78 04003126 */  addiu      $s1, $s1, 0x4
    /* 8B47C 8009AC7C 01005226 */  addiu      $s2, $s2, 0x1
    /* 8B480 8009AC80 1400422A */  slti       $v0, $s2, 0x14
    /* 8B484 8009AC84 8FFF4014 */  bnez       $v0, .L8009AAC4
    /* 8B488 8009AC88 28001026 */   addiu     $s0, $s0, 0x28
    /* 8B48C 8009AC8C 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 8B490 8009AC90 3800BE8F */  lw         $fp, 0x38($sp)
    /* 8B494 8009AC94 3400B78F */  lw         $s7, 0x34($sp)
    /* 8B498 8009AC98 3000B68F */  lw         $s6, 0x30($sp)
    /* 8B49C 8009AC9C 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 8B4A0 8009ACA0 2800B48F */  lw         $s4, 0x28($sp)
    /* 8B4A4 8009ACA4 2400B38F */  lw         $s3, 0x24($sp)
    /* 8B4A8 8009ACA8 2000B28F */  lw         $s2, 0x20($sp)
    /* 8B4AC 8009ACAC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8B4B0 8009ACB0 1800B08F */  lw         $s0, 0x18($sp)
    /* 8B4B4 8009ACB4 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 8B4B8 8009ACB8 0800E003 */  jr         $ra
    /* 8B4BC 8009ACBC 00000000 */   nop
endlabel func_8009A8FC
