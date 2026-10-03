/* Handwritten function */
nonmatching func_8001A19C, 0x3A8

glabel func_8001A19C
    /* A99C 8001A19C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A9A0 8001A1A0 21308000 */  addu       $a2, $a0, $zero
    /* A9A4 8001A1A4 801F043C */  lui        $a0, (0x1F800124 >> 16)
    /* A9A8 8001A1A8 24018434 */  ori        $a0, $a0, (0x1F800124 & 0xFFFF)
    /* A9AC 8001A1AC 801F053C */  lui        $a1, (0x1F800104 >> 16)
    /* A9B0 8001A1B0 2000BFAF */  sw         $ra, 0x20($sp)
    /* A9B4 8001A1B4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* A9B8 8001A1B8 1800B0AF */  sw         $s0, 0x18($sp)
    /* A9BC 8001A1BC 801F013C */  lui        $at, (0x1F800124 >> 16)
    /* A9C0 8001A1C0 240120A4 */  sh         $zero, (0x1F800124 & 0xFFFF)($at)
    /* A9C4 8001A1C4 801F013C */  lui        $at, (0x1F800126 >> 16)
    /* A9C8 8001A1C8 260120A4 */  sh         $zero, (0x1F800126 & 0xFFFF)($at)
    /* A9CC 8001A1CC 801F013C */  lui        $at, (0x1F800128 >> 16)
    /* A9D0 8001A1D0 280120A4 */  sh         $zero, (0x1F800128 & 0xFFFF)($at)
    /* A9D4 8001A1D4 0200C284 */  lh         $v0, 0x2($a2)
    /* A9D8 8001A1D8 801F033C */  lui        $v1, (0x1F80029D >> 16)
    /* A9DC 8001A1DC 9D026390 */  lbu        $v1, (0x1F80029D & 0xFFFF)($v1)
    /* A9E0 8001A1E0 0401A534 */  ori        $a1, $a1, (0x1F800104 & 0xFFFF)
    /* A9E4 8001A1E4 801F013C */  lui        $at, (0x1F800140 >> 16)
    /* A9E8 8001A1E8 400120AC */  sw         $zero, (0x1F800140 & 0xFFFF)($at)
    /* A9EC 8001A1EC 801F013C */  lui        $at, (0x1F80013C >> 16)
    /* A9F0 8001A1F0 3C0122AC */  sw         $v0, (0x1F80013C & 0xFFFF)($at)
    /* A9F4 8001A1F4 0600C684 */  lh         $a2, 0x6($a2)
    /* A9F8 8001A1F8 00100224 */  addiu      $v0, $zero, 0x1000
    /* A9FC 8001A1FC 801F013C */  lui        $at, (0x1F80014C >> 16)
    /* AA00 8001A200 4C0122AC */  sw         $v0, (0x1F80014C & 0xFFFF)($at)
    /* AA04 8001A204 801F013C */  lui        $at, (0x1F800150 >> 16)
    /* AA08 8001A208 500122AC */  sw         $v0, (0x1F800150 & 0xFFFF)($at)
    /* AA0C 8001A20C 801F013C */  lui        $at, (0x1F800154 >> 16)
    /* AA10 8001A210 540122AC */  sw         $v0, (0x1F800154 & 0xFFFF)($at)
    /* AA14 8001A214 00110300 */  sll        $v0, $v1, 4
    /* AA18 8001A218 23104300 */  subu       $v0, $v0, $v1
    /* AA1C 8001A21C 80100200 */  sll        $v0, $v0, 2
    /* AA20 8001A220 23104300 */  subu       $v0, $v0, $v1
    /* AA24 8001A224 80100200 */  sll        $v0, $v0, 2
    /* AA28 8001A228 23104300 */  subu       $v0, $v0, $v1
    /* AA2C 8001A22C 80110200 */  sll        $v0, $v0, 6
    /* AA30 8001A230 0F80033C */  lui        $v1, %hi(D_800E8208)
    /* AA34 8001A234 08826324 */  addiu      $v1, $v1, %lo(D_800E8208)
    /* AA38 8001A238 801F013C */  lui        $at, (0x1F800144 >> 16)
    /* AA3C 8001A23C 440126AC */  sw         $a2, (0x1F800144 & 0xFFFF)($at)
    /* AA40 8001A240 5EC8020C */  jal        func_800B2178
    /* AA44 8001A244 21804300 */   addu      $s0, $v0, $v1
    /* AA48 8001A248 801F043C */  lui        $a0, (0x1F800104 >> 16)
    /* AA4C 8001A24C 04018434 */  ori        $a0, $a0, (0x1F800104 & 0xFFFF)
    /* AA50 8001A250 801F053C */  lui        $a1, (0x1F80014C >> 16)
    /* AA54 8001A254 D2C4020C */  jal        func_800B1348
    /* AA58 8001A258 4C01A534 */   ori       $a1, $a1, (0x1F80014C & 0xFFFF)
    /* AA5C 8001A25C 801F043C */  lui        $a0, (0x1F800104 >> 16)
    /* AA60 8001A260 04018434 */  ori        $a0, $a0, (0x1F800104 & 0xFFFF)
    /* AA64 8001A264 801F053C */  lui        $a1, (0x1F80013C >> 16)
    /* AA68 8001A268 C6C4020C */  jal        func_800B1318
    /* AA6C 8001A26C 3C01A534 */   ori       $a1, $a1, (0x1F80013C & 0xFFFF)
    /* AA70 8001A270 801F113C */  lui        $s1, (0x1F800000 >> 16)
    /* AA74 8001A274 801F083C */  lui        $t0, (0x1F8001A8 >> 16)
    /* AA78 8001A278 A8010835 */  ori        $t0, $t0, (0x1F8001A8 & 0xFFFF)
    /* AA7C 8001A27C 00000C8D */  lw         $t4, 0x0($t0)
    /* AA80 8001A280 04000D8D */  lw         $t5, 0x4($t0)
    /* AA84 8001A284 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
    /* AA88 8001A288 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
    /* AA8C 8001A28C 08000C8D */  lw         $t4, 0x8($t0)
    /* AA90 8001A290 0C000D8D */  lw         $t5, 0xC($t0)
    /* AA94 8001A294 10000E8D */  lw         $t6, 0x10($t0)
    /* AA98 8001A298 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
    /* AA9C 8001A29C 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
    /* AAA0 8001A2A0 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
    /* AAA4 8001A2A4 801F093C */  lui        $t1, (0x1F800104 >> 16)
    /* AAA8 8001A2A8 04012935 */  ori        $t1, $t1, (0x1F800104 & 0xFFFF)
    /* AAAC 8001A2AC 00002C95 */  lhu        $t4, 0x0($t1)
    /* AAB0 8001A2B0 06002D95 */  lhu        $t5, 0x6($t1)
    /* AAB4 8001A2B4 0C002E95 */  lhu        $t6, 0xC($t1)
    /* AAB8 8001A2B8 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
    /* AABC 8001A2BC 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
    /* AAC0 8001A2C0 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
    /* AAC4 8001A2C4 00000000 */  nop
    /* AAC8 8001A2C8 00000000 */  nop
    /* AACC 8001A2CC 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* AAD0 8001A2D0 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* AAD4 8001A2D4 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* AAD8 8001A2D8 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
    /* AADC 8001A2DC 00002CA5 */  sh         $t4, 0x0($t1)
    /* AAE0 8001A2E0 06002DA5 */  sh         $t5, 0x6($t1)
    /* AAE4 8001A2E4 0C002EA5 */  sh         $t6, 0xC($t1)
    /* AAE8 8001A2E8 801F0A3C */  lui        $t2, (0x1F800106 >> 16)
    /* AAEC 8001A2EC 06014A35 */  ori        $t2, $t2, (0x1F800106 & 0xFFFF)
    /* AAF0 8001A2F0 00004C95 */  lhu        $t4, 0x0($t2)
    /* AAF4 8001A2F4 06004D95 */  lhu        $t5, 0x6($t2)
    /* AAF8 8001A2F8 0C004E95 */  lhu        $t6, 0xC($t2)
    /* AAFC 8001A2FC 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
    /* AB00 8001A300 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
    /* AB04 8001A304 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
    /* AB08 8001A308 00000000 */  nop
    /* AB0C 8001A30C 00000000 */  nop
    /* AB10 8001A310 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* AB14 8001A314 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* AB18 8001A318 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* AB1C 8001A31C 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
    /* AB20 8001A320 00004CA5 */  sh         $t4, 0x0($t2)
    /* AB24 8001A324 06004DA5 */  sh         $t5, 0x6($t2)
    /* AB28 8001A328 0C004EA5 */  sh         $t6, 0xC($t2)
    /* AB2C 8001A32C 801F083C */  lui        $t0, (0x1F800108 >> 16)
    /* AB30 8001A330 08010835 */  ori        $t0, $t0, (0x1F800108 & 0xFFFF)
    /* AB34 8001A334 00000C95 */  lhu        $t4, 0x0($t0)
    /* AB38 8001A338 06000D95 */  lhu        $t5, 0x6($t0)
    /* AB3C 8001A33C 0C000E95 */  lhu        $t6, 0xC($t0)
    /* AB40 8001A340 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
    /* AB44 8001A344 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
    /* AB48 8001A348 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
    /* AB4C 8001A34C 00000000 */  nop
    /* AB50 8001A350 00000000 */  nop
    /* AB54 8001A354 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* AB58 8001A358 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* AB5C 8001A35C 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* AB60 8001A360 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
    /* AB64 8001A364 00000CA5 */  sh         $t4, 0x0($t0)
    /* AB68 8001A368 06000DA5 */  sh         $t5, 0x6($t0)
    /* AB6C 8001A36C 0C000EA5 */  sh         $t6, 0xC($t0)
    /* AB70 8001A370 801F093C */  lui        $t1, (0x1F8001A8 >> 16)
    /* AB74 8001A374 A8012935 */  ori        $t1, $t1, (0x1F8001A8 & 0xFFFF)
    /* AB78 8001A378 14002C8D */  lw         $t4, 0x14($t1)
    /* AB7C 8001A37C 18002D8D */  lw         $t5, 0x18($t1)
    /* AB80 8001A380 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
    /* AB84 8001A384 1C002E8D */  lw         $t6, 0x1C($t1)
    /* AB88 8001A388 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
    /* AB8C 8001A38C 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
    /* AB90 8001A390 801F0A3C */  lui        $t2, (0x1F800118 >> 16)
    /* AB94 8001A394 18014A35 */  ori        $t2, $t2, (0x1F800118 & 0xFFFF)
    /* AB98 8001A398 04004D95 */  lhu        $t5, 0x4($t2)
    /* AB9C 8001A39C 00004C95 */  lhu        $t4, 0x0($t2)
    /* ABA0 8001A3A0 006C0D00 */  sll        $t5, $t5, 16
    /* ABA4 8001A3A4 25608D01 */  or         $t4, $t4, $t5
    /* ABA8 8001A3A8 00008C48 */  mtc2       $t4, $0 /* handwritten instruction */
    /* ABAC 8001A3AC 080041C9 */  lwc2       $1, 0x8($t2)
    /* ABB0 8001A3B0 00000000 */  nop
    /* ABB4 8001A3B4 00000000 */  nop
    /* ABB8 8001A3B8 1200484A */  mvmva      1, 0, 0, 0, 0
    /* ABBC 8001A3BC 000059E9 */  swc2       $25, 0x0($t2)
    /* ABC0 8001A3C0 04005AE9 */  swc2       $26, 0x4($t2) /* handwritten instruction */
    /* ABC4 8001A3C4 08005BE9 */  swc2       $27, 0x8($t2) /* handwritten instruction */
    /* ABC8 8001A3C8 801F083C */  lui        $t0, (0x1F800104 >> 16)
    /* ABCC 8001A3CC 04010835 */  ori        $t0, $t0, (0x1F800104 & 0xFFFF)
    /* ABD0 8001A3D0 14000C8D */  lw         $t4, 0x14($t0)
    /* ABD4 8001A3D4 18000D8D */  lw         $t5, 0x18($t0)
    /* ABD8 8001A3D8 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
    /* ABDC 8001A3DC 1C000E8D */  lw         $t6, 0x1C($t0)
    /* ABE0 8001A3E0 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
    /* ABE4 8001A3E4 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
    /* ABE8 8001A3E8 00000C8D */  lw         $t4, 0x0($t0)
    /* ABEC 8001A3EC 04000D8D */  lw         $t5, 0x4($t0)
    /* ABF0 8001A3F0 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
    /* ABF4 8001A3F4 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
    /* ABF8 8001A3F8 08000C8D */  lw         $t4, 0x8($t0)
    /* ABFC 8001A3FC 0C000D8D */  lw         $t5, 0xC($t0)
    /* AC00 8001A400 10000E8D */  lw         $t6, 0x10($t0)
    /* AC04 8001A404 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
    /* AC08 8001A408 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
    /* AC0C 8001A40C 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
    /* AC10 8001A410 801F093C */  lui        $t1, (0x1F800248 >> 16)
    /* AC14 8001A414 48022935 */  ori        $t1, $t1, (0x1F800248 & 0xFFFF)
    /* AC18 8001A418 801F0A3C */  lui        $t2, (0x1F800250 >> 16)
    /* AC1C 8001A41C 50024A35 */  ori        $t2, $t2, (0x1F800250 & 0xFFFF)
    /* AC20 8001A420 801F083C */  lui        $t0, (0x1F800258 >> 16)
    /* AC24 8001A424 58020835 */  ori        $t0, $t0, (0x1F800258 & 0xFFFF)
    /* AC28 8001A428 000020C9 */  lwc2       $0, 0x0($t1)
    /* AC2C 8001A42C 040021C9 */  lwc2       $1, 0x4($t1)
    /* AC30 8001A430 000042C9 */  lwc2       $2, 0x0($t2)
    /* AC34 8001A434 040043C9 */  lwc2       $3, 0x4($t2)
    /* AC38 8001A438 000004C9 */  lwc2       $4, 0x0($t0)
    /* AC3C 8001A43C 040005C9 */  lwc2       $5, 0x4($t0)
    /* AC40 8001A440 00000000 */  nop
    /* AC44 8001A444 00000000 */  nop
    /* AC48 8001A448 3000284A */  rtpt
    /* AC4C 8001A44C 08000426 */  addiu      $a0, $s0, 0x8
    /* AC50 8001A450 10000326 */  addiu      $v1, $s0, 0x10
    /* AC54 8001A454 18000226 */  addiu      $v0, $s0, 0x18
    /* AC58 8001A458 00008CE8 */  swc2       $12, 0x0($a0)
    /* AC5C 8001A45C 00006DE8 */  swc2       $13, 0x0($v1)
    /* AC60 8001A460 00004EE8 */  swc2       $14, 0x0($v0)
    /* AC64 8001A464 801F093C */  lui        $t1, (0x1F800260 >> 16)
    /* AC68 8001A468 60022935 */  ori        $t1, $t1, (0x1F800260 & 0xFFFF)
    /* AC6C 8001A46C 000020C9 */  lwc2       $0, 0x0($t1)
    /* AC70 8001A470 040021C9 */  lwc2       $1, 0x4($t1)
    /* AC74 8001A474 00000000 */  nop
    /* AC78 8001A478 00000000 */  nop
    /* AC7C 8001A47C 0100184A */  rtps
    /* AC80 8001A480 20000226 */  addiu      $v0, $s0, 0x20
    /* AC84 8001A484 00004EE8 */  swc2       $14, 0x0($v0)
    /* AC88 8001A488 801F023C */  lui        $v0, (0x1F8000EC >> 16)
    /* AC8C 8001A48C EC004234 */  ori        $v0, $v0, (0x1F8000EC & 0xFFFF)
    /* AC90 8001A490 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
    /* AC94 8001A494 00000000 */  nop
    /* AC98 8001A498 83600C00 */  sra        $t4, $t4, 2
    /* AC9C 8001A49C 00004CAC */  sw         $t4, 0x0($v0)
    /* ACA0 8001A4A0 0000428C */  lw         $v0, 0x0($v0)
    /* ACA4 8001A4A4 00000000 */  nop
    /* ACA8 8001A4A8 20004018 */  blez       $v0, .L8001A52C
    /* ACAC 8001A4AC FF00063C */   lui       $a2, (0xFFFFFF >> 16)
    /* ACB0 8001A4B0 FFFFC634 */  ori        $a2, $a2, (0xFFFFFF & 0xFFFF)
    /* ACB4 8001A4B4 04000524 */  addiu      $a1, $zero, 0x4
    /* ACB8 8001A4B8 00FF073C */  lui        $a3, (0xFF000000 >> 16)
    /* ACBC 8001A4BC 0000048E */  lw         $a0, 0x0($s0)
    /* ACC0 8001A4C0 0000238E */  lw         $v1, (0x1F800000 & 0xFFFF)($s1)
    /* ACC4 8001A4C4 801F023C */  lui        $v0, (0x1F80029D >> 16)
    /* ACC8 8001A4C8 9D024290 */  lbu        $v0, (0x1F80029D & 0xFFFF)($v0)
    /* ACCC 8001A4CC 04186500 */  sllv       $v1, $a1, $v1
    /* ACD0 8001A4D0 80130200 */  sll        $v0, $v0, 14
    /* ACD4 8001A4D4 21104300 */  addu       $v0, $v0, $v1
    /* ACD8 8001A4D8 0F80013C */  lui        $at, %hi(D_800F3560)
    /* ACDC 8001A4DC 21082200 */  addu       $at, $at, $v0
    /* ACE0 8001A4E0 6035228C */  lw         $v0, %lo(D_800F3560)($at)
    /* ACE4 8001A4E4 24208700 */  and        $a0, $a0, $a3
    /* ACE8 8001A4E8 24104600 */  and        $v0, $v0, $a2
    /* ACEC 8001A4EC 25208200 */  or         $a0, $a0, $v0
    /* ACF0 8001A4F0 000004AE */  sw         $a0, 0x0($s0)
    /* ACF4 8001A4F4 0F80043C */  lui        $a0, %hi(D_800F3560)
    /* ACF8 8001A4F8 60358424 */  addiu      $a0, $a0, %lo(D_800F3560)
    /* ACFC 8001A4FC 0000238E */  lw         $v1, (0x1F800000 & 0xFFFF)($s1)
    /* AD00 8001A500 801F023C */  lui        $v0, (0x1F80029D >> 16)
    /* AD04 8001A504 9D024290 */  lbu        $v0, (0x1F80029D & 0xFFFF)($v0)
    /* AD08 8001A508 04286500 */  sllv       $a1, $a1, $v1
    /* AD0C 8001A50C 80130200 */  sll        $v0, $v0, 14
    /* AD10 8001A510 21104500 */  addu       $v0, $v0, $a1
    /* AD14 8001A514 21104400 */  addu       $v0, $v0, $a0
    /* AD18 8001A518 0000438C */  lw         $v1, 0x0($v0)
    /* AD1C 8001A51C 24300602 */  and        $a2, $s0, $a2
    /* AD20 8001A520 24186700 */  and        $v1, $v1, $a3
    /* AD24 8001A524 25186600 */  or         $v1, $v1, $a2
    /* AD28 8001A528 000043AC */  sw         $v1, 0x0($v0)
  .L8001A52C:
    /* AD2C 8001A52C 2000BF8F */  lw         $ra, 0x20($sp)
    /* AD30 8001A530 1C00B18F */  lw         $s1, 0x1C($sp)
    /* AD34 8001A534 1800B08F */  lw         $s0, 0x18($sp)
    /* AD38 8001A538 2800BD27 */  addiu      $sp, $sp, 0x28
    /* AD3C 8001A53C 0800E003 */  jr         $ra
    /* AD40 8001A540 00000000 */   nop
endlabel func_8001A19C
