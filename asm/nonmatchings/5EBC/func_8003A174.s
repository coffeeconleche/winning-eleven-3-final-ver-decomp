nonmatching func_8003A174, 0x334

glabel func_8003A174
    /* 2A974 8003A174 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2A978 8003A178 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2A97C 8003A17C 21808000 */  addu       $s0, $a0, $zero
    /* 2A980 8003A180 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2A984 8003A184 2400BFAF */  sw         $ra, 0x24($sp)
    /* 2A988 8003A188 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2A98C 8003A18C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2A990 8003A190 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2A994 8003A194 97030392 */  lbu        $v1, 0x397($s0)
    /* 2A998 8003A198 01000224 */  addiu      $v0, $zero, 0x1
    /* 2A99C 8003A19C 26006210 */  beq        $v1, $v0, .L8003A238
    /* 2A9A0 8003A1A0 801F143C */   lui       $s4, (0x1F8002F4 >> 16)
    /* 2A9A4 8003A1A4 02006228 */  slti       $v0, $v1, 0x2
    /* 2A9A8 8003A1A8 05004010 */  beqz       $v0, .L8003A1C0
    /* 2A9AC 8003A1AC 00000000 */   nop
    /* 2A9B0 8003A1B0 0A006010 */  beqz       $v1, .L8003A1DC
    /* 2A9B4 8003A1B4 00000000 */   nop
    /* 2A9B8 8003A1B8 21E90008 */  j          .L8003A484
    /* 2A9BC 8003A1BC 00000000 */   nop
  .L8003A1C0:
    /* 2A9C0 8003A1C0 02000224 */  addiu      $v0, $zero, 0x2
    /* 2A9C4 8003A1C4 78006210 */  beq        $v1, $v0, .L8003A3A8
    /* 2A9C8 8003A1C8 03000224 */   addiu     $v0, $zero, 0x3
    /* 2A9CC 8003A1CC A5006210 */  beq        $v1, $v0, .L8003A464
    /* 2A9D0 8003A1D0 00000000 */   nop
    /* 2A9D4 8003A1D4 21E90008 */  j          .L8003A484
    /* 2A9D8 8003A1D8 00000000 */   nop
  .L8003A1DC:
    /* 2A9DC 8003A1DC 476F010C */  jal        func_8005BD1C
    /* 2A9E0 8003A1E0 21200002 */   addu      $a0, $s0, $zero
    /* 2A9E4 8003A1E4 AB030492 */  lbu        $a0, 0x3AB($s0)
    /* 2A9E8 8003A1E8 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 2A9EC 8003A1EC F36D010C */  jal        func_8005B7CC
    /* 2A9F0 8003A1F0 0C000624 */   addiu     $a2, $zero, 0xC
    /* 2A9F4 8003A1F4 FF004430 */  andi       $a0, $v0, 0xFF
    /* 2A9F8 8003A1F8 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 2A9FC 8003A1FC 23186400 */  subu       $v1, $v1, $a0
    /* 2AA00 8003A200 21206000 */  addu       $a0, $v1, $zero
    /* 2AA04 8003A204 02006104 */  bgez       $v1, .L8003A210
    /* 2AA08 8003A208 AA0302A2 */   sb        $v0, 0x3AA($s0)
    /* 2AA0C 8003A20C FF006424 */  addiu      $a0, $v1, 0xFF
  .L8003A210:
    /* 2AA10 8003A210 03120400 */  sra        $v0, $a0, 8
    /* 2AA14 8003A214 00120200 */  sll        $v0, $v0, 8
    /* 2AA18 8003A218 23106200 */  subu       $v0, $v1, $v0
    /* 2AA1C 8003A21C 90030392 */  lbu        $v1, 0x390($s0)
    /* 2AA20 8003A220 00110200 */  sll        $v0, $v0, 4
    /* 2AA24 8003A224 97006010 */  beqz       $v1, .L8003A484
    /* 2AA28 8003A228 260002A6 */   sh        $v0, 0x26($s0)
    /* 2AA2C 8003A22C 97030292 */  lbu        $v0, 0x397($s0)
    /* 2AA30 8003A230 17E90008 */  j          .L8003A45C
    /* 2AA34 8003A234 01004224 */   addiu     $v0, $v0, 0x1
  .L8003A238:
    /* 2AA38 8003A238 476F010C */  jal        func_8005BD1C
    /* 2AA3C 8003A23C 21200002 */   addu      $a0, $s0, $zero
    /* 2AA40 8003A240 AB030492 */  lbu        $a0, 0x3AB($s0)
    /* 2AA44 8003A244 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 2AA48 8003A248 F36D010C */  jal        func_8005B7CC
    /* 2AA4C 8003A24C 0C000624 */   addiu     $a2, $zero, 0xC
    /* 2AA50 8003A250 FF004430 */  andi       $a0, $v0, 0xFF
    /* 2AA54 8003A254 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 2AA58 8003A258 23186400 */  subu       $v1, $v1, $a0
    /* 2AA5C 8003A25C 21206000 */  addu       $a0, $v1, $zero
    /* 2AA60 8003A260 02006104 */  bgez       $v1, .L8003A26C
    /* 2AA64 8003A264 AA0302A2 */   sb        $v0, 0x3AA($s0)
    /* 2AA68 8003A268 FF006424 */  addiu      $a0, $v1, 0xFF
  .L8003A26C:
    /* 2AA6C 8003A26C 03120400 */  sra        $v0, $a0, 8
    /* 2AA70 8003A270 00120200 */  sll        $v0, $v0, 8
    /* 2AA74 8003A274 23106200 */  subu       $v0, $v1, $v0
    /* 2AA78 8003A278 00110200 */  sll        $v0, $v0, 4
    /* 2AA7C 8003A27C 260002A6 */  sh         $v0, 0x26($s0)
    /* 2AA80 8003A280 02000296 */  lhu        $v0, 0x2($s0)
    /* 2AA84 8003A284 CA030496 */  lhu        $a0, 0x3CA($s0)
    /* 2AA88 8003A288 04000396 */  lhu        $v1, 0x4($s0)
    /* 2AA8C 8003A28C CC030596 */  lhu        $a1, 0x3CC($s0)
    /* 2AA90 8003A290 21104400 */  addu       $v0, $v0, $a0
    /* 2AA94 8003A294 020002A6 */  sh         $v0, 0x2($s0)
    /* 2AA98 8003A298 06000296 */  lhu        $v0, 0x6($s0)
    /* 2AA9C 8003A29C CE030496 */  lhu        $a0, 0x3CE($s0)
    /* 2AAA0 8003A2A0 21186500 */  addu       $v1, $v1, $a1
    /* 2AAA4 8003A2A4 040003A6 */  sh         $v1, 0x4($s0)
    /* 2AAA8 8003A2A8 90030392 */  lbu        $v1, 0x390($s0)
    /* 2AAAC 8003A2AC 21104400 */  addu       $v0, $v0, $a0
    /* 2AAB0 8003A2B0 0800632C */  sltiu      $v1, $v1, 0x8
    /* 2AAB4 8003A2B4 73006014 */  bnez       $v1, .L8003A484
    /* 2AAB8 8003A2B8 060002A6 */   sh        $v0, 0x6($s0)
    /* 2AABC 8003A2BC 21200002 */  addu       $a0, $s0, $zero
    /* 2AAC0 8003A2C0 01000524 */  addiu      $a1, $zero, 0x1
    /* 2AAC4 8003A2C4 9DF4000C */  jal        func_8003D274
    /* 2AAC8 8003A2C8 01000624 */   addiu     $a2, $zero, 0x1
    /* 2AACC 8003A2CC FF004230 */  andi       $v0, $v0, 0xFF
    /* 2AAD0 8003A2D0 31004010 */  beqz       $v0, .L8003A398
    /* 2AAD4 8003A2D4 21200002 */   addu      $a0, $s0, $zero
    /* 2AAD8 8003A2D8 AB030592 */  lbu        $a1, 0x3AB($s0)
    /* 2AADC 8003A2DC 21300000 */  addu       $a2, $zero, $zero
    /* 2AAE0 8003A2E0 8000A524 */  addiu      $a1, $a1, 0x80
    /* 2AAE4 8003A2E4 67F6000C */  jal        func_8003D99C
    /* 2AAE8 8003A2E8 FF00A530 */   andi      $a1, $a1, 0xFF
    /* 2AAEC 8003A2EC 02000424 */  addiu      $a0, $zero, 0x2
    /* 2AAF0 8003A2F0 AE79000C */  jal        func_8001E6B8
    /* 2AAF4 8003A2F4 21984000 */   addu      $s3, $v0, $zero
    /* 2AAF8 8003A2F8 08004010 */  beqz       $v0, .L8003A31C
    /* 2AAFC 8003A2FC 00000000 */   nop
    /* 2AB00 8003A300 AE79000C */  jal        func_8001E6B8
    /* 2AB04 8003A304 08000424 */   addiu     $a0, $zero, 0x8
    /* 2AB08 8003A308 84005224 */  addiu      $s2, $v0, 0x84
    /* 2AB0C 8003A30C AE79000C */  jal        func_8001E6B8
    /* 2AB10 8003A310 0C000424 */   addiu     $a0, $zero, 0xC
    /* 2AB14 8003A314 CDE80008 */  j          .L8003A334
    /* 2AB18 8003A318 02005124 */   addiu     $s1, $v0, 0x2
  .L8003A31C:
    /* 2AB1C 8003A31C AE79000C */  jal        func_8001E6B8
    /* 2AB20 8003A320 08000424 */   addiu     $a0, $zero, 0x8
    /* 2AB24 8003A324 8C005224 */  addiu      $s2, $v0, 0x8C
    /* 2AB28 8003A328 AE79000C */  jal        func_8001E6B8
    /* 2AB2C 8003A32C 04000424 */   addiu     $a0, $zero, 0x4
    /* 2AB30 8003A330 F3FF5124 */  addiu      $s1, $v0, -0xD
  .L8003A334:
    /* 2AB34 8003A334 88AD020C */  jal        func_800AB620
    /* 2AB38 8003A338 07050424 */   addiu     $a0, $zero, 0x507
    /* 2AB3C 8003A33C 21200002 */  addu       $a0, $s0, $zero
    /* 2AB40 8003A340 FF006532 */  andi       $a1, $s3, 0xFF
    /* 2AB44 8003A344 21304002 */  addu       $a2, $s2, $zero
    /* 2AB48 8003A348 3C2C010C */  jal        func_8004B0F0
    /* 2AB4C 8003A34C 21382002 */   addu      $a3, $s1, $zero
    /* 2AB50 8003A350 02000424 */  addiu      $a0, $zero, 0x2
    /* 2AB54 8003A354 F402838E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s4)
    /* 2AB58 8003A358 04000224 */  addiu      $v0, $zero, 0x4
    /* 2AB5C 8003A35C AE79000C */  jal        func_8001E6B8
    /* 2AB60 8003A360 960362A0 */   sb        $v0, 0x396($v1)
    /* 2AB64 8003A364 F402838E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s4)
    /* 2AB68 8003A368 03000424 */  addiu      $a0, $zero, 0x3
    /* 2AB6C 8003A36C AE79000C */  jal        func_8001E6B8
    /* 2AB70 8003A370 CA0362A4 */   sh        $v0, 0x3CA($v1)
    /* 2AB74 8003A374 21200002 */  addu       $a0, $s0, $zero
    /* 2AB78 8003A378 03000524 */  addiu      $a1, $zero, 0x3
    /* 2AB7C 8003A37C 09000324 */  addiu      $v1, $zero, 0x9
    /* 2AB80 8003A380 F402868E */  lw         $a2, (0x1F8002F4 & 0xFFFF)($s4)
    /* 2AB84 8003A384 23186200 */  subu       $v1, $v1, $v0
    /* 2AB88 8003A388 69AD000C */  jal        func_8002B5A4
    /* 2AB8C 8003A38C C803C3A4 */   sh        $v1, 0x3C8($a2)
    /* 2AB90 8003A390 3C5C010C */  jal        func_800570F0
    /* 2AB94 8003A394 21200002 */   addu      $a0, $s0, $zero
  .L8003A398:
    /* 2AB98 8003A398 97030292 */  lbu        $v0, 0x397($s0)
    /* 2AB9C 8003A39C 03000324 */  addiu      $v1, $zero, 0x3
    /* 2ABA0 8003A3A0 16E90008 */  j          .L8003A458
    /* 2ABA4 8003A3A4 D10303A2 */   sb        $v1, 0x3D1($s0)
  .L8003A3A8:
    /* 2ABA8 8003A3A8 476F010C */  jal        func_8005BD1C
    /* 2ABAC 8003A3AC 21200002 */   addu      $a0, $s0, $zero
    /* 2ABB0 8003A3B0 6666083C */  lui        $t0, (0x66666667 >> 16)
    /* 2ABB4 8003A3B4 04000786 */  lh         $a3, 0x4($s0)
    /* 2ABB8 8003A3B8 67660835 */  ori        $t0, $t0, (0x66666667 & 0xFFFF)
    /* 2ABBC 8003A3BC C0380700 */  sll        $a3, $a3, 3
    /* 2ABC0 8003A3C0 1800E800 */  mult       $a3, $t0
    /* 2ABC4 8003A3C4 CA030286 */  lh         $v0, 0x3CA($s0)
    /* 2ABC8 8003A3C8 10480000 */  mfhi       $t1
    /* 2ABCC 8003A3CC C0300200 */  sll        $a2, $v0, 3
    /* 2ABD0 8003A3D0 2130C200 */  addu       $a2, $a2, $v0
    /* 2ABD4 8003A3D4 1800C800 */  mult       $a2, $t0
    /* 2ABD8 8003A3D8 CE030386 */  lh         $v1, 0x3CE($s0)
    /* 2ABDC 8003A3DC 02000496 */  lhu        $a0, 0x2($s0)
    /* 2ABE0 8003A3E0 C0280300 */  sll        $a1, $v1, 3
    /* 2ABE4 8003A3E4 2128A300 */  addu       $a1, $a1, $v1
    /* 2ABE8 8003A3E8 CA030296 */  lhu        $v0, 0x3CA($s0)
    /* 2ABEC 8003A3EC CE030396 */  lhu        $v1, 0x3CE($s0)
    /* 2ABF0 8003A3F0 21208200 */  addu       $a0, $a0, $v0
    /* 2ABF4 8003A3F4 06000296 */  lhu        $v0, 0x6($s0)
    /* 2ABF8 8003A3F8 10500000 */  mfhi       $t2
    /* 2ABFC 8003A3FC 21104300 */  addu       $v0, $v0, $v1
    /* 2AC00 8003A400 90030392 */  lbu        $v1, 0x390($s0)
    /* 2AC04 8003A404 1800A800 */  mult       $a1, $t0
    /* 2AC08 8003A408 C33F0700 */  sra        $a3, $a3, 31
    /* 2AC0C 8003A40C 020004A6 */  sh         $a0, 0x2($s0)
    /* 2AC10 8003A410 060002A6 */  sh         $v0, 0x6($s0)
    /* 2AC14 8003A414 83100900 */  sra        $v0, $t1, 2
    /* 2AC18 8003A418 23104700 */  subu       $v0, $v0, $a3
    /* 2AC1C 8003A41C C3370600 */  sra        $a2, $a2, 31
    /* 2AC20 8003A420 040002A6 */  sh         $v0, 0x4($s0)
    /* 2AC24 8003A424 83100A00 */  sra        $v0, $t2, 2
    /* 2AC28 8003A428 23104600 */  subu       $v0, $v0, $a2
    /* 2AC2C 8003A42C C32F0500 */  sra        $a1, $a1, 31
    /* 2AC30 8003A430 CA0302A6 */  sh         $v0, 0x3CA($s0)
    /* 2AC34 8003A434 10400000 */  mfhi       $t0
    /* 2AC38 8003A438 83100800 */  sra        $v0, $t0, 2
    /* 2AC3C 8003A43C 23104500 */  subu       $v0, $v0, $a1
    /* 2AC40 8003A440 CE0302A6 */  sh         $v0, 0x3CE($s0)
    /* 2AC44 8003A444 0E000224 */  addiu      $v0, $zero, 0xE
    /* 2AC48 8003A448 0E006214 */  bne        $v1, $v0, .L8003A484
    /* 2AC4C 8003A44C 00000000 */   nop
    /* 2AC50 8003A450 97030292 */  lbu        $v0, 0x397($s0)
    /* 2AC54 8003A454 040000A6 */  sh         $zero, 0x4($s0)
  .L8003A458:
    /* 2AC58 8003A458 01004224 */  addiu      $v0, $v0, 0x1
  .L8003A45C:
    /* 2AC5C 8003A45C 21E90008 */  j          .L8003A484
    /* 2AC60 8003A460 970302A2 */   sb        $v0, 0x397($s0)
  .L8003A464:
    /* 2AC64 8003A464 476F010C */  jal        func_8005BD1C
    /* 2AC68 8003A468 21200002 */   addu      $a0, $s0, $zero
    /* 2AC6C 8003A46C 90030392 */  lbu        $v1, 0x390($s0)
    /* 2AC70 8003A470 2E000224 */  addiu      $v0, $zero, 0x2E
    /* 2AC74 8003A474 03006214 */  bne        $v1, $v0, .L8003A484
    /* 2AC78 8003A478 00000000 */   nop
    /* 2AC7C 8003A47C 960300A2 */  sb         $zero, 0x396($s0)
    /* 2AC80 8003A480 970300A2 */  sb         $zero, 0x397($s0)
  .L8003A484:
    /* 2AC84 8003A484 2400BF8F */  lw         $ra, 0x24($sp)
    /* 2AC88 8003A488 2000B48F */  lw         $s4, 0x20($sp)
    /* 2AC8C 8003A48C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2AC90 8003A490 1800B28F */  lw         $s2, 0x18($sp)
    /* 2AC94 8003A494 1400B18F */  lw         $s1, 0x14($sp)
    /* 2AC98 8003A498 1000B08F */  lw         $s0, 0x10($sp)
    /* 2AC9C 8003A49C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2ACA0 8003A4A0 0800E003 */  jr         $ra
    /* 2ACA4 8003A4A4 00000000 */   nop
endlabel func_8003A174
