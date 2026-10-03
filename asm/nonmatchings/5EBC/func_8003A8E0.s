nonmatching func_8003A8E0, 0x3C8

glabel func_8003A8E0
    /* 2B0E0 8003A8E0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2B0E4 8003A8E4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2B0E8 8003A8E8 21888000 */  addu       $s1, $a0, $zero
    /* 2B0EC 8003A8EC 2800B4AF */  sw         $s4, 0x28($sp)
    /* 2B0F0 8003A8F0 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 2B0F4 8003A8F4 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2B0F8 8003A8F8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2B0FC 8003A8FC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2B100 8003A900 97032392 */  lbu        $v1, 0x397($s1)
    /* 2B104 8003A904 01000224 */  addiu      $v0, $zero, 0x1
    /* 2B108 8003A908 23006210 */  beq        $v1, $v0, .L8003A998
    /* 2B10C 8003A90C 801F143C */   lui       $s4, (0x1F8002AA >> 16)
    /* 2B110 8003A910 02006228 */  slti       $v0, $v1, 0x2
    /* 2B114 8003A914 05004010 */  beqz       $v0, .L8003A92C
    /* 2B118 8003A918 00000000 */   nop
    /* 2B11C 8003A91C 08006010 */  beqz       $v1, .L8003A940
    /* 2B120 8003A920 00000000 */   nop
    /* 2B124 8003A924 0DEB0008 */  j          .L8003AC34
    /* 2B128 8003A928 00000000 */   nop
  .L8003A92C:
    /* 2B12C 8003A92C 02000224 */  addiu      $v0, $zero, 0x2
    /* 2B130 8003A930 79006210 */  beq        $v1, $v0, .L8003AB18
    /* 2B134 8003A934 00000000 */   nop
    /* 2B138 8003A938 0DEB0008 */  j          .L8003AC34
    /* 2B13C 8003A93C 00000000 */   nop
  .L8003A940:
    /* 2B140 8003A940 476F010C */  jal        func_8005BD1C
    /* 2B144 8003A944 21202002 */   addu      $a0, $s1, $zero
    /* 2B148 8003A948 AB032492 */  lbu        $a0, 0x3AB($s1)
    /* 2B14C 8003A94C AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2B150 8003A950 F36D010C */  jal        func_8005B7CC
    /* 2B154 8003A954 10000624 */   addiu     $a2, $zero, 0x10
    /* 2B158 8003A958 FF004430 */  andi       $a0, $v0, 0xFF
    /* 2B15C 8003A95C C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 2B160 8003A960 23186400 */  subu       $v1, $v1, $a0
    /* 2B164 8003A964 21206000 */  addu       $a0, $v1, $zero
    /* 2B168 8003A968 02006104 */  bgez       $v1, .L8003A974
    /* 2B16C 8003A96C AA0322A2 */   sb        $v0, 0x3AA($s1)
    /* 2B170 8003A970 FF006424 */  addiu      $a0, $v1, 0xFF
  .L8003A974:
    /* 2B174 8003A974 03120400 */  sra        $v0, $a0, 8
    /* 2B178 8003A978 00120200 */  sll        $v0, $v0, 8
    /* 2B17C 8003A97C 23106200 */  subu       $v0, $v1, $v0
    /* 2B180 8003A980 90032392 */  lbu        $v1, 0x390($s1)
    /* 2B184 8003A984 00110200 */  sll        $v0, $v0, 4
    /* 2B188 8003A988 AA006010 */  beqz       $v1, .L8003AC34
    /* 2B18C 8003A98C 260022A6 */   sh        $v0, 0x26($s1)
    /* 2B190 8003A990 C1EA0008 */  j          .L8003AB04
    /* 2B194 8003A994 00000000 */   nop
  .L8003A998:
    /* 2B198 8003A998 476F010C */  jal        func_8005BD1C
    /* 2B19C 8003A99C 21202002 */   addu      $a0, $s1, $zero
    /* 2B1A0 8003A9A0 AB032492 */  lbu        $a0, 0x3AB($s1)
    /* 2B1A4 8003A9A4 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2B1A8 8003A9A8 F36D010C */  jal        func_8005B7CC
    /* 2B1AC 8003A9AC 10000624 */   addiu     $a2, $zero, 0x10
    /* 2B1B0 8003A9B0 FF004430 */  andi       $a0, $v0, 0xFF
    /* 2B1B4 8003A9B4 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 2B1B8 8003A9B8 23186400 */  subu       $v1, $v1, $a0
    /* 2B1BC 8003A9BC 21206000 */  addu       $a0, $v1, $zero
    /* 2B1C0 8003A9C0 02006104 */  bgez       $v1, .L8003A9CC
    /* 2B1C4 8003A9C4 AA0322A2 */   sb        $v0, 0x3AA($s1)
    /* 2B1C8 8003A9C8 FF006424 */  addiu      $a0, $v1, 0xFF
  .L8003A9CC:
    /* 2B1CC 8003A9CC 03120400 */  sra        $v0, $a0, 8
    /* 2B1D0 8003A9D0 00120200 */  sll        $v0, $v0, 8
    /* 2B1D4 8003A9D4 23106200 */  subu       $v0, $v1, $v0
    /* 2B1D8 8003A9D8 00110200 */  sll        $v0, $v0, 4
    /* 2B1DC 8003A9DC 260022A6 */  sh         $v0, 0x26($s1)
    /* 2B1E0 8003A9E0 02002296 */  lhu        $v0, 0x2($s1)
    /* 2B1E4 8003A9E4 CA032496 */  lhu        $a0, 0x3CA($s1)
    /* 2B1E8 8003A9E8 04002396 */  lhu        $v1, 0x4($s1)
    /* 2B1EC 8003A9EC CC032596 */  lhu        $a1, 0x3CC($s1)
    /* 2B1F0 8003A9F0 21104400 */  addu       $v0, $v0, $a0
    /* 2B1F4 8003A9F4 020022A6 */  sh         $v0, 0x2($s1)
    /* 2B1F8 8003A9F8 06002296 */  lhu        $v0, 0x6($s1)
    /* 2B1FC 8003A9FC CE032496 */  lhu        $a0, 0x3CE($s1)
    /* 2B200 8003AA00 21186500 */  addu       $v1, $v1, $a1
    /* 2B204 8003AA04 040023A6 */  sh         $v1, 0x4($s1)
    /* 2B208 8003AA08 90032392 */  lbu        $v1, 0x390($s1)
    /* 2B20C 8003AA0C 21104400 */  addu       $v0, $v0, $a0
    /* 2B210 8003AA10 0800632C */  sltiu      $v1, $v1, 0x8
    /* 2B214 8003AA14 87006014 */  bnez       $v1, .L8003AC34
    /* 2B218 8003AA18 060022A6 */   sh        $v0, 0x6($s1)
    /* 2B21C 8003AA1C 21202002 */  addu       $a0, $s1, $zero
    /* 2B220 8003AA20 01000524 */  addiu      $a1, $zero, 0x1
    /* 2B224 8003AA24 9DF4000C */  jal        func_8003D274
    /* 2B228 8003AA28 01000624 */   addiu     $a2, $zero, 0x1
    /* 2B22C 8003AA2C FF004230 */  andi       $v0, $v0, 0xFF
    /* 2B230 8003AA30 34004010 */  beqz       $v0, .L8003AB04
    /* 2B234 8003AA34 21202002 */   addu      $a0, $s1, $zero
    /* 2B238 8003AA38 B2032592 */  lbu        $a1, 0x3B2($s1)
    /* 2B23C 8003AA3C 67F6000C */  jal        func_8003D99C
    /* 2B240 8003AA40 01000624 */   addiu     $a2, $zero, 0x1
    /* 2B244 8003AA44 08000424 */  addiu      $a0, $zero, 0x8
    /* 2B248 8003AA48 AE79000C */  jal        func_8001E6B8
    /* 2B24C 8003AA4C 21984000 */   addu      $s3, $v0, $zero
    /* 2B250 8003AA50 AE79000C */  jal        func_8001E6B8
    /* 2B254 8003AA54 03000424 */   addiu     $a0, $zero, 0x3
    /* 2B258 8003AA58 0C004010 */  beqz       $v0, .L8003AA8C
    /* 2B25C 8003AA5C 00000000 */   nop
    /* 2B260 8003AA60 AE79000C */  jal        func_8001E6B8
    /* 2B264 8003AA64 04000424 */   addiu     $a0, $zero, 0x4
    /* 2B268 8003AA68 A8005224 */  addiu      $s2, $v0, 0xA8
    /* 2B26C 8003AA6C AE79000C */  jal        func_8001E6B8
    /* 2B270 8003AA70 0C000424 */   addiu     $a0, $zero, 0xC
    /* 2B274 8003AA74 21202002 */  addu       $a0, $s1, $zero
    /* 2B278 8003AA78 79AC000C */  jal        func_8002B1E4
    /* 2B27C 8003AA7C 21804000 */   addu      $s0, $v0, $zero
    /* 2B280 8003AA80 02004224 */  addiu      $v0, $v0, 0x2
    /* 2B284 8003AA84 A9EA0008 */  j          .L8003AAA4
    /* 2B288 8003AA88 21380202 */   addu      $a3, $s0, $v0
  .L8003AA8C:
    /* 2B28C 8003AA8C AE79000C */  jal        func_8001E6B8
    /* 2B290 8003AA90 04000424 */   addiu     $a0, $zero, 0x4
    /* 2B294 8003AA94 AC005224 */  addiu      $s2, $v0, 0xAC
    /* 2B298 8003AA98 AE79000C */  jal        func_8001E6B8
    /* 2B29C 8003AA9C 04000424 */   addiu     $a0, $zero, 0x4
    /* 2B2A0 8003AAA0 F1FF4724 */  addiu      $a3, $v0, -0xF
  .L8003AAA4:
    /* 2B2A4 8003AAA4 21202002 */  addu       $a0, $s1, $zero
    /* 2B2A8 8003AAA8 FF006532 */  andi       $a1, $s3, 0xFF
    /* 2B2AC 8003AAAC 3C2C010C */  jal        func_8004B0F0
    /* 2B2B0 8003AAB0 21304002 */   addu      $a2, $s2, $zero
    /* 2B2B4 8003AAB4 AE79000C */  jal        func_8001E6B8
    /* 2B2B8 8003AAB8 02000424 */   addiu     $a0, $zero, 0x2
    /* 2B2BC 8003AABC F402838E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s4)
    /* 2B2C0 8003AAC0 03000424 */  addiu      $a0, $zero, 0x3
    /* 2B2C4 8003AAC4 AE79000C */  jal        func_8001E6B8
    /* 2B2C8 8003AAC8 CA0362A4 */   sh        $v0, 0x3CA($v1)
    /* 2B2CC 8003AACC 07050424 */  addiu      $a0, $zero, 0x507
    /* 2B2D0 8003AAD0 09000324 */  addiu      $v1, $zero, 0x9
    /* 2B2D4 8003AAD4 F402858E */  lw         $a1, (0x1F8002F4 & 0xFFFF)($s4)
    /* 2B2D8 8003AAD8 23186200 */  subu       $v1, $v1, $v0
    /* 2B2DC 8003AADC 88AD020C */  jal        func_800AB620
    /* 2B2E0 8003AAE0 C803A3A4 */   sh        $v1, 0x3C8($a1)
    /* 2B2E4 8003AAE4 21202002 */  addu       $a0, $s1, $zero
    /* 2B2E8 8003AAE8 0A000524 */  addiu      $a1, $zero, 0xA
    /* 2B2EC 8003AAEC F402838E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s4)
    /* 2B2F0 8003AAF0 04000224 */  addiu      $v0, $zero, 0x4
    /* 2B2F4 8003AAF4 69AD000C */  jal        func_8002B5A4
    /* 2B2F8 8003AAF8 960362A0 */   sb        $v0, 0x396($v1)
    /* 2B2FC 8003AAFC 1F5C010C */  jal        func_8005707C
    /* 2B300 8003AB00 21202002 */   addu      $a0, $s1, $zero
  .L8003AB04:
    /* 2B304 8003AB04 97032292 */  lbu        $v0, 0x397($s1)
    /* 2B308 8003AB08 00000000 */  nop
    /* 2B30C 8003AB0C 01004224 */  addiu      $v0, $v0, 0x1
    /* 2B310 8003AB10 0DEB0008 */  j          .L8003AC34
    /* 2B314 8003AB14 970322A2 */   sb        $v0, 0x397($s1)
  .L8003AB18:
    /* 2B318 8003AB18 476F010C */  jal        func_8005BD1C
    /* 2B31C 8003AB1C 21202002 */   addu      $a0, $s1, $zero
    /* 2B320 8003AB20 6666083C */  lui        $t0, (0x66666667 >> 16)
    /* 2B324 8003AB24 04002786 */  lh         $a3, 0x4($s1)
    /* 2B328 8003AB28 67660835 */  ori        $t0, $t0, (0x66666667 & 0xFFFF)
    /* 2B32C 8003AB2C C0380700 */  sll        $a3, $a3, 3
    /* 2B330 8003AB30 1800E800 */  mult       $a3, $t0
    /* 2B334 8003AB34 CA032286 */  lh         $v0, 0x3CA($s1)
    /* 2B338 8003AB38 10480000 */  mfhi       $t1
    /* 2B33C 8003AB3C C0300200 */  sll        $a2, $v0, 3
    /* 2B340 8003AB40 2130C200 */  addu       $a2, $a2, $v0
    /* 2B344 8003AB44 1800C800 */  mult       $a2, $t0
    /* 2B348 8003AB48 CE032386 */  lh         $v1, 0x3CE($s1)
    /* 2B34C 8003AB4C 02002496 */  lhu        $a0, 0x2($s1)
    /* 2B350 8003AB50 C0280300 */  sll        $a1, $v1, 3
    /* 2B354 8003AB54 2128A300 */  addu       $a1, $a1, $v1
    /* 2B358 8003AB58 CA032296 */  lhu        $v0, 0x3CA($s1)
    /* 2B35C 8003AB5C CE032396 */  lhu        $v1, 0x3CE($s1)
    /* 2B360 8003AB60 21208200 */  addu       $a0, $a0, $v0
    /* 2B364 8003AB64 06002296 */  lhu        $v0, 0x6($s1)
    /* 2B368 8003AB68 10500000 */  mfhi       $t2
    /* 2B36C 8003AB6C 21104300 */  addu       $v0, $v0, $v1
    /* 2B370 8003AB70 90032392 */  lbu        $v1, 0x390($s1)
    /* 2B374 8003AB74 1800A800 */  mult       $a1, $t0
    /* 2B378 8003AB78 C33F0700 */  sra        $a3, $a3, 31
    /* 2B37C 8003AB7C 020024A6 */  sh         $a0, 0x2($s1)
    /* 2B380 8003AB80 060022A6 */  sh         $v0, 0x6($s1)
    /* 2B384 8003AB84 83100900 */  sra        $v0, $t1, 2
    /* 2B388 8003AB88 23104700 */  subu       $v0, $v0, $a3
    /* 2B38C 8003AB8C C3370600 */  sra        $a2, $a2, 31
    /* 2B390 8003AB90 040022A6 */  sh         $v0, 0x4($s1)
    /* 2B394 8003AB94 83100A00 */  sra        $v0, $t2, 2
    /* 2B398 8003AB98 23104600 */  subu       $v0, $v0, $a2
    /* 2B39C 8003AB9C C32F0500 */  sra        $a1, $a1, 31
    /* 2B3A0 8003ABA0 CA0322A6 */  sh         $v0, 0x3CA($s1)
    /* 2B3A4 8003ABA4 10400000 */  mfhi       $t0
    /* 2B3A8 8003ABA8 83100800 */  sra        $v0, $t0, 2
    /* 2B3AC 8003ABAC 23104500 */  subu       $v0, $v0, $a1
    /* 2B3B0 8003ABB0 CE0322A6 */  sh         $v0, 0x3CE($s1)
    /* 2B3B4 8003ABB4 0F000224 */  addiu      $v0, $zero, 0xF
    /* 2B3B8 8003ABB8 04006214 */  bne        $v1, $v0, .L8003ABCC
    /* 2B3BC 8003ABBC 00000000 */   nop
    /* 2B3C0 8003ABC0 CA0320A6 */  sh         $zero, 0x3CA($s1)
    /* 2B3C4 8003ABC4 CE0320A6 */  sh         $zero, 0x3CE($s1)
    /* 2B3C8 8003ABC8 040020A6 */  sh         $zero, 0x4($s1)
  .L8003ABCC:
    /* 2B3CC 8003ABCC 90032292 */  lbu        $v0, 0x390($s1)
    /* 2B3D0 8003ABD0 00000000 */  nop
    /* 2B3D4 8003ABD4 17004014 */  bnez       $v0, .L8003AC34
    /* 2B3D8 8003ABD8 C0010324 */   addiu     $v1, $zero, 0x1C0
    /* 2B3DC 8003ABDC AA032292 */  lbu        $v0, 0x3AA($s1)
    /* 2B3E0 8003ABE0 00000000 */  nop
    /* 2B3E4 8003ABE4 80004224 */  addiu      $v0, $v0, 0x80
    /* 2B3E8 8003ABE8 FF004430 */  andi       $a0, $v0, 0xFF
    /* 2B3EC 8003ABEC 23186400 */  subu       $v1, $v1, $a0
    /* 2B3F0 8003ABF0 21386000 */  addu       $a3, $v1, $zero
    /* 2B3F4 8003ABF4 02006104 */  bgez       $v1, .L8003AC00
    /* 2B3F8 8003ABF8 AA0322A2 */   sb        $v0, 0x3AA($s1)
    /* 2B3FC 8003ABFC FF006724 */  addiu      $a3, $v1, 0xFF
  .L8003AC00:
    /* 2B400 8003AC00 21202002 */  addu       $a0, $s1, $zero
    /* 2B404 8003AC04 21000524 */  addiu      $a1, $zero, 0x21
    /* 2B408 8003AC08 21300000 */  addu       $a2, $zero, $zero
    /* 2B40C 8003AC0C 03120700 */  sra        $v0, $a3, 8
    /* 2B410 8003AC10 00120200 */  sll        $v0, $v0, 8
    /* 2B414 8003AC14 23106200 */  subu       $v0, $v1, $v0
    /* 2B418 8003AC18 00110200 */  sll        $v0, $v0, 4
    /* 2B41C 8003AC1C 8C6E010C */  jal        func_8005BA30
    /* 2B420 8003AC20 260022A6 */   sh        $v0, 0x26($s1)
    /* 2B424 8003AC24 11000224 */  addiu      $v0, $zero, 0x11
    /* 2B428 8003AC28 AD0320A2 */  sb         $zero, 0x3AD($s1)
    /* 2B42C 8003AC2C 960322A2 */  sb         $v0, 0x396($s1)
    /* 2B430 8003AC30 970320A2 */  sb         $zero, 0x397($s1)
  .L8003AC34:
    /* 2B434 8003AC34 B002838E */  lw         $v1, (0x1F8002B0 & 0xFFFF)($s4)
    /* 2B438 8003AC38 04000224 */  addiu      $v0, $zero, 0x4
    /* 2B43C 8003AC3C 06006214 */  bne        $v1, $v0, .L8003AC58
    /* 2B440 8003AC40 00000000 */   nop
    /* 2B444 8003AC44 AA028392 */  lbu        $v1, (0x1F8002AA & 0xFFFF)($s4)
    /* 2B448 8003AC48 8D032292 */  lbu        $v0, 0x38D($s1)
    /* 2B44C 8003AC4C 00000000 */  nop
    /* 2B450 8003AC50 0A004310 */  beq        $v0, $v1, .L8003AC7C
    /* 2B454 8003AC54 00000000 */   nop
  .L8003AC58:
    /* 2B458 8003AC58 AA032492 */  lbu        $a0, 0x3AA($s1)
    /* 2B45C 8003AC5C 6A39010C */  jal        func_8004E5A8
    /* 2B460 8003AC60 00000000 */   nop
    /* 2B464 8003AC64 21202002 */  addu       $a0, $s1, $zero
    /* 2B468 8003AC68 0C000524 */  addiu      $a1, $zero, 0xC
    /* 2B46C 8003AC6C AA032692 */  lbu        $a2, 0x3AA($s1)
    /* 2B470 8003AC70 04000724 */  addiu      $a3, $zero, 0x4
    /* 2B474 8003AC74 8B51020C */  jal        func_8009462C
    /* 2B478 8003AC78 1000A2AF */   sw        $v0, 0x10($sp)
  .L8003AC7C:
    /* 2B47C 8003AC7C 2B26010C */  jal        func_800498AC
    /* 2B480 8003AC80 21202002 */   addu      $a0, $s1, $zero
    /* 2B484 8003AC84 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 2B488 8003AC88 2800B48F */  lw         $s4, 0x28($sp)
    /* 2B48C 8003AC8C 2400B38F */  lw         $s3, 0x24($sp)
    /* 2B490 8003AC90 2000B28F */  lw         $s2, 0x20($sp)
    /* 2B494 8003AC94 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2B498 8003AC98 1800B08F */  lw         $s0, 0x18($sp)
    /* 2B49C 8003AC9C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2B4A0 8003ACA0 0800E003 */  jr         $ra
    /* 2B4A4 8003ACA4 00000000 */   nop
endlabel func_8003A8E0
