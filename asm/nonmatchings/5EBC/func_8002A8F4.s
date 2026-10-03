nonmatching func_8002A8F4, 0x6EC

glabel func_8002A8F4
    /* 1B0F4 8002A8F4 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 1B0F8 8002A8F8 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 1B0FC 8002A8FC C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 1B100 8002A900 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1B104 8002A904 21888000 */  addu       $s1, $a0, $zero
    /* 1B108 8002A908 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 1B10C 8002A90C 3400BFAF */  sw         $ra, 0x34($sp)
    /* 1B110 8002A910 3000B6AF */  sw         $s6, 0x30($sp)
    /* 1B114 8002A914 2800B4AF */  sw         $s4, 0x28($sp)
    /* 1B118 8002A918 2400B3AF */  sw         $s3, 0x24($sp)
    /* 1B11C 8002A91C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 1B120 8002A920 1800B0AF */  sw         $s0, 0x18($sp)
    /* 1B124 8002A924 99032392 */  lbu        $v1, 0x399($s1)
    /* 1B128 8002A928 02004284 */  lh         $v0, 0x2($v0)
    /* 1B12C 8002A92C 07006010 */  beqz       $v1, .L8002A94C
    /* 1B130 8002A930 801F153C */   lui       $s5, (0x1F8002F4 >> 16)
    /* 1B134 8002A934 23100200 */  negu       $v0, $v0
    /* 1B138 8002A938 212F4228 */  slti       $v0, $v0, 0x2F21
    /* 1B13C 8002A93C 06004010 */  beqz       $v0, .L8002A958
    /* 1B140 8002A940 00000000 */   nop
    /* 1B144 8002A944 66AA0008 */  j          .L8002A998
    /* 1B148 8002A948 00000000 */   nop
  .L8002A94C:
    /* 1B14C 8002A94C 212F4228 */  slti       $v0, $v0, 0x2F21
    /* 1B150 8002A950 11004014 */  bnez       $v0, .L8002A998
    /* 1B154 8002A954 00000000 */   nop
  .L8002A958:
    /* 1B158 8002A958 F402A28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s5)
    /* 1B15C 8002A95C 00000000 */  nop
    /* 1B160 8002A960 06004284 */  lh         $v0, 0x6($v0)
    /* 1B164 8002A964 00000000 */  nop
    /* 1B168 8002A968 21184000 */  addu       $v1, $v0, $zero
    /* 1B16C 8002A96C 02004104 */  bgez       $v0, .L8002A978
    /* 1B170 8002A970 00000000 */   nop
    /* 1B174 8002A974 23100200 */  negu       $v0, $v0
  .L8002A978:
    /* 1B178 8002A978 00044228 */  slti       $v0, $v0, 0x400
    /* 1B17C 8002A97C 06004010 */  beqz       $v0, .L8002A998
    /* 1B180 8002A980 00000000 */   nop
    /* 1B184 8002A984 99032292 */  lbu        $v0, 0x399($s1)
    /* 1B188 8002A988 C40323A6 */  sh         $v1, 0x3C4($s1)
    /* 1B18C 8002A98C C0110200 */  sll        $v0, $v0, 7
    /* 1B190 8002A990 EDAB0008 */  j          .L8002AFB4
    /* 1B194 8002A994 80004230 */   andi      $v0, $v0, 0x80
  .L8002A998:
    /* 1B198 8002A998 99032292 */  lbu        $v0, 0x399($s1)
    /* 1B19C 8002A99C 00000000 */  nop
    /* 1B1A0 8002A9A0 02004014 */  bnez       $v0, .L8002A9AC
    /* 1B1A4 8002A9A4 00CD1624 */   addiu     $s6, $zero, -0x3300
    /* 1B1A8 8002A9A8 00331624 */  addiu      $s6, $zero, 0x3300
  .L8002A9AC:
    /* 1B1AC 8002A9AC 00341600 */  sll        $a2, $s6, 16
    /* 1B1B0 8002A9B0 F402A28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s5)
    /* 1B1B4 8002A9B4 03340600 */  sra        $a2, $a2, 16
    /* 1B1B8 8002A9B8 02004484 */  lh         $a0, 0x2($v0)
    /* 1B1BC 8002A9BC 06004584 */  lh         $a1, 0x6($v0)
    /* 1B1C0 8002A9C0 DB6C010C */  jal        func_8005B36C
    /* 1B1C4 8002A9C4 21380000 */   addu      $a3, $zero, $zero
    /* 1B1C8 8002A9C8 AA032492 */  lbu        $a0, 0x3AA($s1)
    /* 1B1CC 8002A9CC 21284000 */  addu       $a1, $v0, $zero
    /* 1B1D0 8002A9D0 2310A400 */  subu       $v0, $a1, $a0
    /* 1B1D4 8002A9D4 FF004330 */  andi       $v1, $v0, 0xFF
    /* 1B1D8 8002A9D8 8100622C */  sltiu      $v0, $v1, 0x81
    /* 1B1DC 8002A9DC 08004014 */  bnez       $v0, .L8002AA00
    /* 1B1E0 8002A9E0 40006228 */   slti      $v0, $v1, 0x40
    /* 1B1E4 8002A9E4 23108500 */  subu       $v0, $a0, $a1
    /* 1B1E8 8002A9E8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1B1EC 8002A9EC 40004228 */  slti       $v0, $v0, 0x40
    /* 1B1F0 8002A9F0 05004010 */  beqz       $v0, .L8002AA08
    /* 1B1F4 8002A9F4 00000000 */   nop
    /* 1B1F8 8002A9F8 ACAA0008 */  j          .L8002AAB0
    /* 1B1FC 8002A9FC 00000000 */   nop
  .L8002AA00:
    /* 1B200 8002AA00 2B004014 */  bnez       $v0, .L8002AAB0
    /* 1B204 8002AA04 00000000 */   nop
  .L8002AA08:
    /* 1B208 8002AA08 AA032292 */  lbu        $v0, 0x3AA($s1)
    /* 1B20C 8002AA0C 00000000 */  nop
    /* 1B210 8002AA10 8000422C */  sltiu      $v0, $v0, 0x80
    /* 1B214 8002AA14 06004014 */  bnez       $v0, .L8002AA30
    /* 1B218 8002AA18 00000000 */   nop
    /* 1B21C 8002AA1C E871010C */  jal        func_8005C7A0
    /* 1B220 8002AA20 80000424 */   addiu     $a0, $zero, 0x80
    /* 1B224 8002AA24 A0024224 */  addiu      $v0, $v0, 0x2A0
    /* 1B228 8002AA28 8FAA0008 */  j          .L8002AA3C
    /* 1B22C 8002AA2C 23800200 */   negu      $s0, $v0
  .L8002AA30:
    /* 1B230 8002AA30 E871010C */  jal        func_8005C7A0
    /* 1B234 8002AA34 80000424 */   addiu     $a0, $zero, 0x80
    /* 1B238 8002AA38 A0025024 */  addiu      $s0, $v0, 0x2A0
  .L8002AA3C:
    /* 1B23C 8002AA3C 06002286 */  lh         $v0, 0x6($s1)
    /* 1B240 8002AA40 00000000 */  nop
    /* 1B244 8002AA44 02004104 */  bgez       $v0, .L8002AA50
    /* 1B248 8002AA48 00000000 */   nop
    /* 1B24C 8002AA4C 23100200 */  negu       $v0, $v0
  .L8002AA50:
    /* 1B250 8002AA50 00044228 */  slti       $v0, $v0, 0x400
    /* 1B254 8002AA54 4E014014 */  bnez       $v0, .L8002AF90
    /* 1B258 8002AA58 00341600 */   sll       $a2, $s6, 16
    /* 1B25C 8002AA5C AE79000C */  jal        func_8001E6B8
    /* 1B260 8002AA60 02000424 */   addiu     $a0, $zero, 0x2
    /* 1B264 8002AA64 4A014014 */  bnez       $v0, .L8002AF90
    /* 1B268 8002AA68 00341600 */   sll       $a2, $s6, 16
    /* 1B26C 8002AA6C 06002386 */  lh         $v1, 0x6($s1)
    /* 1B270 8002AA70 00141000 */  sll        $v0, $s0, 16
    /* 1B274 8002AA74 03940200 */  sra        $s2, $v0, 16
    /* 1B278 8002AA78 18007200 */  mult       $v1, $s2
    /* 1B27C 8002AA7C 12400000 */  mflo       $t0
    /* 1B280 8002AA80 44010019 */  blez       $t0, .L8002AF94
    /* 1B284 8002AA84 03340600 */   sra       $a2, $a2, 16
    /* 1B288 8002AA88 AE79000C */  jal        func_8001E6B8
    /* 1B28C 8002AA8C 10000424 */   addiu     $a0, $zero, 0x10
    /* 1B290 8002AA90 E0004224 */  addiu      $v0, $v0, 0xE0
    /* 1B294 8002AA94 18004202 */  mult       $s2, $v0
    /* 1B298 8002AA98 12100000 */  mflo       $v0
    /* 1B29C 8002AA9C 3B014104 */  bgez       $v0, .L8002AF8C
    /* 1B2A0 8002AAA0 02820200 */   srl       $s0, $v0, 8
    /* 1B2A4 8002AAA4 FF004224 */  addiu      $v0, $v0, 0xFF
    /* 1B2A8 8002AAA8 E3AB0008 */  j          .L8002AF8C
    /* 1B2AC 8002AAAC 02820200 */   srl       $s0, $v0, 8
  .L8002AAB0:
    /* 1B2B0 8002AAB0 99032292 */  lbu        $v0, 0x399($s1)
    /* 1B2B4 8002AAB4 00000000 */  nop
    /* 1B2B8 8002AAB8 C0210200 */  sll        $a0, $v0, 7
    /* 1B2BC 8002AABC 2310A400 */  subu       $v0, $a1, $a0
    /* 1B2C0 8002AAC0 FF004330 */  andi       $v1, $v0, 0xFF
    /* 1B2C4 8002AAC4 8100622C */  sltiu      $v0, $v1, 0x81
    /* 1B2C8 8002AAC8 08004014 */  bnez       $v0, .L8002AAEC
    /* 1B2CC 8002AACC 38006228 */   slti      $v0, $v1, 0x38
    /* 1B2D0 8002AAD0 23108500 */  subu       $v0, $a0, $a1
    /* 1B2D4 8002AAD4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1B2D8 8002AAD8 38004228 */  slti       $v0, $v0, 0x38
    /* 1B2DC 8002AADC 05004010 */  beqz       $v0, .L8002AAF4
    /* 1B2E0 8002AAE0 00000000 */   nop
    /* 1B2E4 8002AAE4 C0AA0008 */  j          .L8002AB00
    /* 1B2E8 8002AAE8 00000000 */   nop
  .L8002AAEC:
    /* 1B2EC 8002AAEC 04004014 */  bnez       $v0, .L8002AB00
    /* 1B2F0 8002AAF0 00000000 */   nop
  .L8002AAF4:
    /* 1B2F4 8002AAF4 C40320A6 */  sh         $zero, 0x3C4($s1)
    /* 1B2F8 8002AAF8 EDAB0008 */  j          .L8002AFB4
    /* 1B2FC 8002AAFC FF00A230 */   andi      $v0, $a1, 0xFF
  .L8002AB00:
    /* 1B300 8002AB00 E102A292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s5)
    /* 1B304 8002AB04 05000324 */  addiu      $v1, $zero, 0x5
    /* 1B308 8002AB08 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1B30C 8002AB0C 86004310 */  beq        $v0, $v1, .L8002AD28
    /* 1B310 8002AB10 00000000 */   nop
    /* 1B314 8002AB14 99032292 */  lbu        $v0, 0x399($s1)
    /* 1B318 8002AB18 02002486 */  lh         $a0, 0x2($s1)
    /* 1B31C 8002AB1C 02004014 */  bnez       $v0, .L8002AB28
    /* 1B320 8002AB20 20338624 */   addiu     $a2, $a0, 0x3320
    /* 1B324 8002AB24 E0CC8624 */  addiu      $a2, $a0, -0x3320
  .L8002AB28:
    /* 1B328 8002AB28 06002286 */  lh         $v0, 0x6($s1)
    /* 1B32C 8002AB2C 00000000 */  nop
    /* 1B330 8002AB30 18004200 */  mult       $v0, $v0
    /* 1B334 8002AB34 99032392 */  lbu        $v1, 0x399($s1)
    /* 1B338 8002AB38 12380000 */  mflo       $a3
    /* 1B33C 8002AB3C 02006014 */  bnez       $v1, .L8002AB48
    /* 1B340 8002AB40 20338224 */   addiu     $v0, $a0, 0x3320
    /* 1B344 8002AB44 E0CC8224 */  addiu      $v0, $a0, -0x3320
  .L8002AB48:
    /* 1B348 8002AB48 1800C200 */  mult       $a2, $v0
    /* 1B34C 8002AB4C 12400000 */  mflo       $t0
    /* 1B350 8002AB50 21380701 */  addu       $a3, $t0, $a3
    /* 1B354 8002AB54 21202002 */  addu       $a0, $s1, $zero
    /* 1B358 8002AB58 FF00B030 */  andi       $s0, $a1, 0xFF
    /* 1B35C 8002AB5C 21280002 */  addu       $a1, $s0, $zero
    /* 1B360 8002AB60 FD4C010C */  jal        func_800533F4
    /* 1B364 8002AB64 0C000624 */   addiu     $a2, $zero, 0xC
    /* 1B368 8002AB68 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1B36C 8002AB6C 03004014 */  bnez       $v0, .L8002AB7C
    /* 1B370 8002AB70 21100002 */   addu      $v0, $s0, $zero
    /* 1B374 8002AB74 EDAB0008 */  j          .L8002AFB4
    /* 1B378 8002AB78 C40320A6 */   sh        $zero, 0x3C4($s1)
  .L8002AB7C:
    /* 1B37C 8002AB7C E871010C */  jal        func_8005C7A0
    /* 1B380 8002AB80 80000424 */   addiu     $a0, $zero, 0x80
    /* 1B384 8002AB84 00341600 */  sll        $a2, $s6, 16
    /* 1B388 8002AB88 03340600 */  sra        $a2, $a2, 16
    /* 1B38C 8002AB8C A0024224 */  addiu      $v0, $v0, 0x2A0
    /* 1B390 8002AB90 F402A38E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s5)
    /* 1B394 8002AB94 00140200 */  sll        $v0, $v0, 16
    /* 1B398 8002AB98 02006484 */  lh         $a0, 0x2($v1)
    /* 1B39C 8002AB9C 06006584 */  lh         $a1, 0x6($v1)
    /* 1B3A0 8002ABA0 DB6C010C */  jal        func_8005B36C
    /* 1B3A4 8002ABA4 033C0200 */   sra       $a3, $v0, 16
    /* 1B3A8 8002ABA8 21A04000 */  addu       $s4, $v0, $zero
    /* 1B3AC 8002ABAC 99032292 */  lbu        $v0, 0x399($s1)
    /* 1B3B0 8002ABB0 02003286 */  lh         $s2, 0x2($s1)
    /* 1B3B4 8002ABB4 02004014 */  bnez       $v0, .L8002ABC0
    /* 1B3B8 8002ABB8 20335326 */   addiu     $s3, $s2, 0x3320
    /* 1B3BC 8002ABBC E0CC5326 */  addiu      $s3, $s2, -0x3320
  .L8002ABC0:
    /* 1B3C0 8002ABC0 E871010C */  jal        func_8005C7A0
    /* 1B3C4 8002ABC4 80000424 */   addiu     $a0, $zero, 0x80
    /* 1B3C8 8002ABC8 80000424 */  addiu      $a0, $zero, 0x80
    /* 1B3CC 8002ABCC E871010C */  jal        func_8005C7A0
    /* 1B3D0 8002ABD0 21804000 */   addu      $s0, $v0, $zero
    /* 1B3D4 8002ABD4 00841000 */  sll        $s0, $s0, 16
    /* 1B3D8 8002ABD8 03841000 */  sra        $s0, $s0, 16
    /* 1B3DC 8002ABDC 00140200 */  sll        $v0, $v0, 16
    /* 1B3E0 8002ABE0 06002386 */  lh         $v1, 0x6($s1)
    /* 1B3E4 8002ABE4 03140200 */  sra        $v0, $v0, 16
    /* 1B3E8 8002ABE8 60FD6324 */  addiu      $v1, $v1, -0x2A0
    /* 1B3EC 8002ABEC 23807000 */  subu       $s0, $v1, $s0
    /* 1B3F0 8002ABF0 23186200 */  subu       $v1, $v1, $v0
    /* 1B3F4 8002ABF4 18000302 */  mult       $s0, $v1
    /* 1B3F8 8002ABF8 99032292 */  lbu        $v0, 0x399($s1)
    /* 1B3FC 8002ABFC 12380000 */  mflo       $a3
    /* 1B400 8002AC00 02004014 */  bnez       $v0, .L8002AC0C
    /* 1B404 8002AC04 20334226 */   addiu     $v0, $s2, 0x3320
    /* 1B408 8002AC08 E0CC4226 */  addiu      $v0, $s2, -0x3320
  .L8002AC0C:
    /* 1B40C 8002AC0C 18006202 */  mult       $s3, $v0
    /* 1B410 8002AC10 12400000 */  mflo       $t0
    /* 1B414 8002AC14 21380701 */  addu       $a3, $t0, $a3
    /* 1B418 8002AC18 21202002 */  addu       $a0, $s1, $zero
    /* 1B41C 8002AC1C FF009032 */  andi       $s0, $s4, 0xFF
    /* 1B420 8002AC20 21280002 */  addu       $a1, $s0, $zero
    /* 1B424 8002AC24 FD4C010C */  jal        func_800533F4
    /* 1B428 8002AC28 0C000624 */   addiu     $a2, $zero, 0xC
    /* 1B42C 8002AC2C FF004230 */  andi       $v0, $v0, 0xFF
    /* 1B430 8002AC30 05004014 */  bnez       $v0, .L8002AC48
    /* 1B434 8002AC34 00000000 */   nop
    /* 1B438 8002AC38 E871010C */  jal        func_8005C7A0
    /* 1B43C 8002AC3C 80000424 */   addiu     $a0, $zero, 0x80
    /* 1B440 8002AC40 47AB0008 */  j          .L8002AD1C
    /* 1B444 8002AC44 A0024224 */   addiu     $v0, $v0, 0x2A0
  .L8002AC48:
    /* 1B448 8002AC48 E871010C */  jal        func_8005C7A0
    /* 1B44C 8002AC4C 80000424 */   addiu     $a0, $zero, 0x80
    /* 1B450 8002AC50 00341600 */  sll        $a2, $s6, 16
    /* 1B454 8002AC54 03340600 */  sra        $a2, $a2, 16
    /* 1B458 8002AC58 A0024224 */  addiu      $v0, $v0, 0x2A0
    /* 1B45C 8002AC5C 23100200 */  negu       $v0, $v0
    /* 1B460 8002AC60 F402A38E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s5)
    /* 1B464 8002AC64 00140200 */  sll        $v0, $v0, 16
    /* 1B468 8002AC68 02006484 */  lh         $a0, 0x2($v1)
    /* 1B46C 8002AC6C 06006584 */  lh         $a1, 0x6($v1)
    /* 1B470 8002AC70 DB6C010C */  jal        func_8005B36C
    /* 1B474 8002AC74 033C0200 */   sra       $a3, $v0, 16
    /* 1B478 8002AC78 21A04000 */  addu       $s4, $v0, $zero
    /* 1B47C 8002AC7C 99032292 */  lbu        $v0, 0x399($s1)
    /* 1B480 8002AC80 02003286 */  lh         $s2, 0x2($s1)
    /* 1B484 8002AC84 02004014 */  bnez       $v0, .L8002AC90
    /* 1B488 8002AC88 20335326 */   addiu     $s3, $s2, 0x3320
    /* 1B48C 8002AC8C E0CC5326 */  addiu      $s3, $s2, -0x3320
  .L8002AC90:
    /* 1B490 8002AC90 E871010C */  jal        func_8005C7A0
    /* 1B494 8002AC94 80000424 */   addiu     $a0, $zero, 0x80
    /* 1B498 8002AC98 80000424 */  addiu      $a0, $zero, 0x80
    /* 1B49C 8002AC9C E871010C */  jal        func_8005C7A0
    /* 1B4A0 8002ACA0 21804000 */   addu      $s0, $v0, $zero
    /* 1B4A4 8002ACA4 00841000 */  sll        $s0, $s0, 16
    /* 1B4A8 8002ACA8 03841000 */  sra        $s0, $s0, 16
    /* 1B4AC 8002ACAC A0021026 */  addiu      $s0, $s0, 0x2A0
    /* 1B4B0 8002ACB0 00140200 */  sll        $v0, $v0, 16
    /* 1B4B4 8002ACB4 03140200 */  sra        $v0, $v0, 16
    /* 1B4B8 8002ACB8 06002386 */  lh         $v1, 0x6($s1)
    /* 1B4BC 8002ACBC A0024224 */  addiu      $v0, $v0, 0x2A0
    /* 1B4C0 8002ACC0 21807000 */  addu       $s0, $v1, $s0
    /* 1B4C4 8002ACC4 21186200 */  addu       $v1, $v1, $v0
    /* 1B4C8 8002ACC8 18000302 */  mult       $s0, $v1
    /* 1B4CC 8002ACCC 99032292 */  lbu        $v0, 0x399($s1)
    /* 1B4D0 8002ACD0 12380000 */  mflo       $a3
    /* 1B4D4 8002ACD4 02004014 */  bnez       $v0, .L8002ACE0
    /* 1B4D8 8002ACD8 20334226 */   addiu     $v0, $s2, 0x3320
    /* 1B4DC 8002ACDC E0CC4226 */  addiu      $v0, $s2, -0x3320
  .L8002ACE0:
    /* 1B4E0 8002ACE0 18006202 */  mult       $s3, $v0
    /* 1B4E4 8002ACE4 12400000 */  mflo       $t0
    /* 1B4E8 8002ACE8 21380701 */  addu       $a3, $t0, $a3
    /* 1B4EC 8002ACEC 21202002 */  addu       $a0, $s1, $zero
    /* 1B4F0 8002ACF0 FF009032 */  andi       $s0, $s4, 0xFF
    /* 1B4F4 8002ACF4 21280002 */  addu       $a1, $s0, $zero
    /* 1B4F8 8002ACF8 FD4C010C */  jal        func_800533F4
    /* 1B4FC 8002ACFC 0C000624 */   addiu     $a2, $zero, 0xC
    /* 1B500 8002AD00 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1B504 8002AD04 08004014 */  bnez       $v0, .L8002AD28
    /* 1B508 8002AD08 00000000 */   nop
    /* 1B50C 8002AD0C E871010C */  jal        func_8005C7A0
    /* 1B510 8002AD10 80000424 */   addiu     $a0, $zero, 0x80
    /* 1B514 8002AD14 A0024224 */  addiu      $v0, $v0, 0x2A0
    /* 1B518 8002AD18 23100200 */  negu       $v0, $v0
  .L8002AD1C:
    /* 1B51C 8002AD1C C40322A6 */  sh         $v0, 0x3C4($s1)
    /* 1B520 8002AD20 EDAB0008 */  j          .L8002AFB4
    /* 1B524 8002AD24 21100002 */   addu      $v0, $s0, $zero
  .L8002AD28:
    /* 1B528 8002AD28 9A032292 */  lbu        $v0, 0x39A($s1)
    /* 1B52C 8002AD2C 00000000 */  nop
    /* 1B530 8002AD30 19004010 */  beqz       $v0, .L8002AD98
    /* 1B534 8002AD34 00000000 */   nop
    /* 1B538 8002AD38 AE79000C */  jal        func_8001E6B8
    /* 1B53C 8002AD3C 09000424 */   addiu     $a0, $zero, 0x9
    /* 1B540 8002AD40 21184000 */  addu       $v1, $v0, $zero
    /* 1B544 8002AD44 0900622C */  sltiu      $v0, $v1, 0x9
    /* 1B548 8002AD48 81004010 */  beqz       $v0, .L8002AF50
    /* 1B54C 8002AD4C 80100300 */   sll       $v0, $v1, 2
    /* 1B550 8002AD50 0180013C */  lui        $at, %hi(jtbl_80010DE4)
    /* 1B554 8002AD54 21082200 */  addu       $at, $at, $v0
    /* 1B558 8002AD58 E40D228C */  lw         $v0, %lo(jtbl_80010DE4)($at)
    /* 1B55C 8002AD5C 00000000 */  nop
    /* 1B560 8002AD60 08004000 */  jr         $v0
    /* 1B564 8002AD64 00000000 */   nop
  jlabel .L8002AD68
    /* 1B568 8002AD68 06002286 */  lh         $v0, 0x6($s1)
    /* 1B56C 8002AD6C 00000000 */  nop
    /* 1B570 8002AD70 72004018 */  blez       $v0, .L8002AF3C
    /* 1B574 8002AD74 00000000 */   nop
    /* 1B578 8002AD78 CBAB0008 */  j          .L8002AF2C
    /* 1B57C 8002AD7C 00000000 */   nop
  jlabel .L8002AD80
    /* 1B580 8002AD80 06002286 */  lh         $v0, 0x6($s1)
    /* 1B584 8002AD84 00000000 */  nop
    /* 1B588 8002AD88 68004018 */  blez       $v0, .L8002AF2C
    /* 1B58C 8002AD8C 00000000 */   nop
    /* 1B590 8002AD90 CFAB0008 */  j          .L8002AF3C
    /* 1B594 8002AD94 00000000 */   nop
  .L8002AD98:
    /* 1B598 8002AD98 E602A292 */  lbu        $v0, (0x1F8002E6 & 0xFFFF)($s5)
    /* 1B59C 8002AD9C 00000000 */  nop
    /* 1B5A0 8002ADA0 0500422C */  sltiu      $v0, $v0, 0x5
    /* 1B5A4 8002ADA4 35004014 */  bnez       $v0, .L8002AE7C
    /* 1B5A8 8002ADA8 00000000 */   nop
    /* 1B5AC 8002ADAC 8C02A392 */  lbu        $v1, (0x1F80028C & 0xFFFF)($s5)
    /* 1B5B0 8002ADB0 00000000 */  nop
    /* 1B5B4 8002ADB4 01006230 */  andi       $v0, $v1, 0x1
    /* 1B5B8 8002ADB8 0F004014 */  bnez       $v0, .L8002ADF8
    /* 1B5BC 8002ADBC 04006230 */   andi      $v0, $v1, 0x4
    /* 1B5C0 8002ADC0 11004014 */  bnez       $v0, .L8002AE08
    /* 1B5C4 8002ADC4 00000000 */   nop
    /* 1B5C8 8002ADC8 AE79000C */  jal        func_8001E6B8
    /* 1B5CC 8002ADCC 03000424 */   addiu     $a0, $zero, 0x3
    /* 1B5D0 8002ADD0 12004014 */  bnez       $v0, .L8002AE1C
    /* 1B5D4 8002ADD4 00000000 */   nop
    /* 1B5D8 8002ADD8 C2032286 */  lh         $v0, 0x3C2($s1)
    /* 1B5DC 8002ADDC 00000000 */  nop
    /* 1B5E0 8002ADE0 0E004014 */  bnez       $v0, .L8002AE1C
    /* 1B5E4 8002ADE4 00000000 */   nop
    /* 1B5E8 8002ADE8 AE79000C */  jal        func_8001E6B8
    /* 1B5EC 8002ADEC 02000424 */   addiu     $a0, $zero, 0x2
    /* 1B5F0 8002ADF0 05004010 */  beqz       $v0, .L8002AE08
    /* 1B5F4 8002ADF4 00000000 */   nop
  .L8002ADF8:
    /* 1B5F8 8002ADF8 E871010C */  jal        func_8005C7A0
    /* 1B5FC 8002ADFC 80000424 */   addiu     $a0, $zero, 0x80
    /* 1B600 8002AE00 96AB0008 */  j          .L8002AE58
    /* 1B604 8002AE04 A0025024 */   addiu     $s0, $v0, 0x2A0
  .L8002AE08:
    /* 1B608 8002AE08 E871010C */  jal        func_8005C7A0
    /* 1B60C 8002AE0C 80000424 */   addiu     $a0, $zero, 0x80
    /* 1B610 8002AE10 A0024224 */  addiu      $v0, $v0, 0x2A0
    /* 1B614 8002AE14 96AB0008 */  j          .L8002AE58
    /* 1B618 8002AE18 23800200 */   negu      $s0, $v0
  .L8002AE1C:
    /* 1B61C 8002AE1C E871010C */  jal        func_8005C7A0
    /* 1B620 8002AE20 80000424 */   addiu     $a0, $zero, 0x80
    /* 1B624 8002AE24 5555033C */  lui        $v1, (0x55555556 >> 16)
    /* 1B628 8002AE28 56556334 */  ori        $v1, $v1, (0x55555556 & 0xFFFF)
    /* 1B62C 8002AE2C 00140200 */  sll        $v0, $v0, 16
    /* 1B630 8002AE30 C3130200 */  sra        $v0, $v0, 15
    /* 1B634 8002AE34 40054224 */  addiu      $v0, $v0, 0x540
    /* 1B638 8002AE38 18004300 */  mult       $v0, $v1
    /* 1B63C 8002AE3C C3170200 */  sra        $v0, $v0, 31
    /* 1B640 8002AE40 10400000 */  mfhi       $t0
    /* 1B644 8002AE44 23100201 */  subu       $v0, $t0, $v0
    /* 1B648 8002AE48 00140200 */  sll        $v0, $v0, 16
    /* 1B64C 8002AE4C E871010C */  jal        func_8005C7A0
    /* 1B650 8002AE50 03240200 */   sra       $a0, $v0, 16
    /* 1B654 8002AE54 21804000 */  addu       $s0, $v0, $zero
  .L8002AE58:
    /* 1B658 8002AE58 E702A292 */  lbu        $v0, (0x1F8002E7 & 0xFFFF)($s5)
    /* 1B65C 8002AE5C 80000324 */  addiu      $v1, $zero, 0x80
    /* 1B660 8002AE60 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1B664 8002AE64 4A004314 */  bne        $v0, $v1, .L8002AF90
    /* 1B668 8002AE68 00341600 */   sll       $a2, $s6, 16
    /* 1B66C 8002AE6C 00141000 */  sll        $v0, $s0, 16
    /* 1B670 8002AE70 03140200 */  sra        $v0, $v0, 16
    /* 1B674 8002AE74 E4AB0008 */  j          .L8002AF90
    /* 1B678 8002AE78 23800200 */   negu      $s0, $v0
  .L8002AE7C:
    /* 1B67C 8002AE7C 99032292 */  lbu        $v0, 0x399($s1)
    /* 1B680 8002AE80 00000000 */  nop
    /* 1B684 8002AE84 16004014 */  bnez       $v0, .L8002AEE0
    /* 1B688 8002AE88 00000000 */   nop
    /* 1B68C 8002AE8C D4032396 */  lhu        $v1, 0x3D4($s1)
    /* 1B690 8002AE90 00000000 */  nop
    /* 1B694 8002AE94 00906230 */  andi       $v0, $v1, 0x9000
    /* 1B698 8002AE98 24004014 */  bnez       $v0, .L8002AF2C
    /* 1B69C 8002AE9C 00606230 */   andi      $v0, $v1, 0x6000
    /* 1B6A0 8002AEA0 26004014 */  bnez       $v0, .L8002AF3C
    /* 1B6A4 8002AEA4 00000000 */   nop
    /* 1B6A8 8002AEA8 AE79000C */  jal        func_8001E6B8
    /* 1B6AC 8002AEAC 03000424 */   addiu     $a0, $zero, 0x3
    /* 1B6B0 8002AEB0 27004014 */  bnez       $v0, .L8002AF50
    /* 1B6B4 8002AEB4 00000000 */   nop
    /* 1B6B8 8002AEB8 C2032286 */  lh         $v0, 0x3C2($s1)
    /* 1B6BC 8002AEBC 00000000 */  nop
    /* 1B6C0 8002AEC0 23004014 */  bnez       $v0, .L8002AF50
    /* 1B6C4 8002AEC4 00000000 */   nop
    /* 1B6C8 8002AEC8 AE79000C */  jal        func_8001E6B8
    /* 1B6CC 8002AECC 02000424 */   addiu     $a0, $zero, 0x2
    /* 1B6D0 8002AED0 1A004010 */  beqz       $v0, .L8002AF3C
    /* 1B6D4 8002AED4 00000000 */   nop
    /* 1B6D8 8002AED8 CBAB0008 */  j          .L8002AF2C
    /* 1B6DC 8002AEDC 00000000 */   nop
  .L8002AEE0:
    /* 1B6E0 8002AEE0 D4032396 */  lhu        $v1, 0x3D4($s1)
    /* 1B6E4 8002AEE4 00000000 */  nop
    /* 1B6E8 8002AEE8 00306230 */  andi       $v0, $v1, 0x3000
    /* 1B6EC 8002AEEC 0F004014 */  bnez       $v0, .L8002AF2C
    /* 1B6F0 8002AEF0 00C06230 */   andi      $v0, $v1, 0xC000
    /* 1B6F4 8002AEF4 11004014 */  bnez       $v0, .L8002AF3C
    /* 1B6F8 8002AEF8 00000000 */   nop
    /* 1B6FC 8002AEFC AE79000C */  jal        func_8001E6B8
    /* 1B700 8002AF00 03000424 */   addiu     $a0, $zero, 0x3
    /* 1B704 8002AF04 12004014 */  bnez       $v0, .L8002AF50
    /* 1B708 8002AF08 00000000 */   nop
    /* 1B70C 8002AF0C C2032286 */  lh         $v0, 0x3C2($s1)
    /* 1B710 8002AF10 00000000 */  nop
    /* 1B714 8002AF14 0E004014 */  bnez       $v0, .L8002AF50
    /* 1B718 8002AF18 00000000 */   nop
    /* 1B71C 8002AF1C AE79000C */  jal        func_8001E6B8
    /* 1B720 8002AF20 02000424 */   addiu     $a0, $zero, 0x2
    /* 1B724 8002AF24 05004010 */  beqz       $v0, .L8002AF3C
    /* 1B728 8002AF28 00000000 */   nop
  .L8002AF2C:
    /* 1B72C 8002AF2C E871010C */  jal        func_8005C7A0
    /* 1B730 8002AF30 80000424 */   addiu     $a0, $zero, 0x80
    /* 1B734 8002AF34 E3AB0008 */  j          .L8002AF8C
    /* 1B738 8002AF38 A0025024 */   addiu     $s0, $v0, 0x2A0
  .L8002AF3C:
    /* 1B73C 8002AF3C E871010C */  jal        func_8005C7A0
    /* 1B740 8002AF40 80000424 */   addiu     $a0, $zero, 0x80
    /* 1B744 8002AF44 A0024224 */  addiu      $v0, $v0, 0x2A0
    /* 1B748 8002AF48 E3AB0008 */  j          .L8002AF8C
    /* 1B74C 8002AF4C 23800200 */   negu      $s0, $v0
  jlabel .L8002AF50
    /* 1B750 8002AF50 E871010C */  jal        func_8005C7A0
    /* 1B754 8002AF54 80000424 */   addiu     $a0, $zero, 0x80
    /* 1B758 8002AF58 5555033C */  lui        $v1, (0x55555556 >> 16)
    /* 1B75C 8002AF5C 56556334 */  ori        $v1, $v1, (0x55555556 & 0xFFFF)
    /* 1B760 8002AF60 00140200 */  sll        $v0, $v0, 16
    /* 1B764 8002AF64 C3130200 */  sra        $v0, $v0, 15
    /* 1B768 8002AF68 40054224 */  addiu      $v0, $v0, 0x540
    /* 1B76C 8002AF6C 18004300 */  mult       $v0, $v1
    /* 1B770 8002AF70 C3170200 */  sra        $v0, $v0, 31
    /* 1B774 8002AF74 10400000 */  mfhi       $t0
    /* 1B778 8002AF78 23100201 */  subu       $v0, $t0, $v0
    /* 1B77C 8002AF7C 00140200 */  sll        $v0, $v0, 16
    /* 1B780 8002AF80 E871010C */  jal        func_8005C7A0
    /* 1B784 8002AF84 03240200 */   sra       $a0, $v0, 16
    /* 1B788 8002AF88 21804000 */  addu       $s0, $v0, $zero
  .L8002AF8C:
    /* 1B78C 8002AF8C 00341600 */  sll        $a2, $s6, 16
  .L8002AF90:
    /* 1B790 8002AF90 03340600 */  sra        $a2, $a2, 16
  .L8002AF94:
    /* 1B794 8002AF94 F402A28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s5)
    /* 1B798 8002AF98 003C1000 */  sll        $a3, $s0, 16
    /* 1B79C 8002AF9C 02004484 */  lh         $a0, 0x2($v0)
    /* 1B7A0 8002AFA0 06004584 */  lh         $a1, 0x6($v0)
    /* 1B7A4 8002AFA4 DB6C010C */  jal        func_8005B36C
    /* 1B7A8 8002AFA8 033C0700 */   sra       $a3, $a3, 16
    /* 1B7AC 8002AFAC FF004230 */  andi       $v0, $v0, 0xFF
    /* 1B7B0 8002AFB0 C40330A6 */  sh         $s0, 0x3C4($s1)
  .L8002AFB4:
    /* 1B7B4 8002AFB4 3400BF8F */  lw         $ra, 0x34($sp)
    /* 1B7B8 8002AFB8 3000B68F */  lw         $s6, 0x30($sp)
    /* 1B7BC 8002AFBC 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 1B7C0 8002AFC0 2800B48F */  lw         $s4, 0x28($sp)
    /* 1B7C4 8002AFC4 2400B38F */  lw         $s3, 0x24($sp)
    /* 1B7C8 8002AFC8 2000B28F */  lw         $s2, 0x20($sp)
    /* 1B7CC 8002AFCC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 1B7D0 8002AFD0 1800B08F */  lw         $s0, 0x18($sp)
    /* 1B7D4 8002AFD4 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 1B7D8 8002AFD8 0800E003 */  jr         $ra
    /* 1B7DC 8002AFDC 00000000 */   nop
endlabel func_8002A8F4
