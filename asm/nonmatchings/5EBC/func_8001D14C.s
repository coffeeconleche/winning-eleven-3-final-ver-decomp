nonmatching func_8001D14C, 0x324

glabel func_8001D14C
    /* D94C 8001D14C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* D950 8001D150 21488000 */  addu       $t1, $a0, $zero
    /* D954 8001D154 2000B4AF */  sw         $s4, 0x20($sp)
    /* D958 8001D158 5000B48F */  lw         $s4, 0x50($sp)
    /* D95C 8001D15C FF002331 */  andi       $v1, $t1, 0xFF
    /* D960 8001D160 2800B6AF */  sw         $s6, 0x28($sp)
    /* D964 8001D164 5400B68F */  lw         $s6, 0x54($sp)
    /* D968 8001D168 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* D96C 8001D16C ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* D970 8001D170 2400B5AF */  sw         $s5, 0x24($sp)
    /* D974 8001D174 5800B58F */  lw         $s5, 0x58($sp)
    /* D978 8001D178 19006200 */  multu      $v1, $v0
    /* D97C 8001D17C 3000BEAF */  sw         $fp, 0x30($sp)
    /* D980 8001D180 4800BE97 */  lhu        $fp, 0x48($sp)
    /* D984 8001D184 1080083C */  lui        $t0, %hi(D_800FF748)
    /* D988 8001D188 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* D98C 8001D18C 1800B2AF */  sw         $s2, 0x18($sp)
    /* D990 8001D190 2190C000 */  addu       $s2, $a2, $zero
    /* D994 8001D194 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* D998 8001D198 21B8E000 */  addu       $s7, $a3, $zero
    /* D99C 8001D19C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* D9A0 8001D1A0 4C00B393 */  lbu        $s3, 0x4C($sp)
    /* D9A4 8001D1A4 1180073C */  lui        $a3, %hi(D_8010C1D8)
    /* D9A8 8001D1A8 D8C1E724 */  addiu      $a3, $a3, %lo(D_8010C1D8)
    /* D9AC 8001D1AC 3400BFAF */  sw         $ra, 0x34($sp)
    /* D9B0 8001D1B0 1400B1AF */  sw         $s1, 0x14($sp)
    /* D9B4 8001D1B4 1000B0AF */  sw         $s0, 0x10($sp)
    /* D9B8 8001D1B8 10500000 */  mfhi       $t2
    /* D9BC 8001D1BC 02210A00 */  srl        $a0, $t2, 4
    /* D9C0 8001D1C0 40100400 */  sll        $v0, $a0, 1
    /* D9C4 8001D1C4 21104400 */  addu       $v0, $v0, $a0
    /* D9C8 8001D1C8 C0100200 */  sll        $v0, $v0, 3
    /* D9CC 8001D1CC 23186200 */  subu       $v1, $v1, $v0
    /* D9D0 8001D1D0 FF006330 */  andi       $v1, $v1, 0xFF
    /* D9D4 8001D1D4 40110300 */  sll        $v0, $v1, 5
    /* D9D8 8001D1D8 23104300 */  subu       $v0, $v0, $v1
    /* D9DC 8001D1DC 80100200 */  sll        $v0, $v0, 2
    /* D9E0 8001D1E0 21104300 */  addu       $v0, $v0, $v1
    /* D9E4 8001D1E4 C0100200 */  sll        $v0, $v0, 3
    /* D9E8 8001D1E8 5C00A397 */  lhu        $v1, 0x5C($sp)
    /* D9EC 8001D1EC 21884800 */  addu       $s1, $v0, $t0
    /* D9F0 8001D1F0 000023A2 */  sb         $v1, 0x0($s1)
    /* D9F4 8001D1F4 00002392 */  lbu        $v1, 0x0($s1)
    /* D9F8 8001D1F8 12000224 */  addiu      $v0, $zero, 0x12
    /* D9FC 8001D1FC 8D0329A2 */  sb         $t1, 0x38D($s1)
    /* DA00 8001D200 05006214 */  bne        $v1, $v0, .L8001D218
    /* DA04 8001D204 A50320A2 */   sb        $zero, 0x3A5($s1)
    /* DA08 8001D208 1D80023C */  lui        $v0, %hi(D_801C8004)
    /* DA0C 8001D20C 0480428C */  lw         $v0, %lo(D_801C8004)($v0)
    /* DA10 8001D210 8D740008 */  j          .L8001D234
    /* DA14 8001D214 21202002 */   addu      $a0, $s1, $zero
  .L8001D218:
    /* DA18 8001D218 12006228 */  slti       $v0, $v1, 0x12
    /* DA1C 8001D21C 13004014 */  bnez       $v0, .L8001D26C
    /* DA20 8001D220 1C006228 */   slti      $v0, $v1, 0x1C
    /* DA24 8001D224 11004010 */  beqz       $v0, .L8001D26C
    /* DA28 8001D228 21202002 */   addu      $a0, $s1, $zero
    /* DA2C 8001D22C 1D80023C */  lui        $v0, %hi(D_801C8008)
    /* DA30 8001D230 0880428C */  lw         $v0, %lo(D_801C8008)($v0)
  .L8001D234:
    /* DA34 8001D234 01001024 */  addiu      $s0, $zero, 0x1
    /* DA38 8001D238 A60330A2 */  sb         $s0, 0x3A6($s1)
    /* DA3C 8001D23C 0C6F000C */  jal        func_8001BC30
    /* DA40 8001D240 200022AE */   sw        $v0, 0x20($s1)
    /* DA44 8001D244 21202002 */  addu       $a0, $s1, $zero
    /* DA48 8001D248 FF004532 */  andi       $a1, $s2, 0xFF
    /* DA4C 8001D24C 8C6E010C */  jal        func_8005BA30
    /* DA50 8001D250 21300000 */   addu      $a2, $zero, $zero
    /* DA54 8001D254 02000224 */  addiu      $v0, $zero, 0x2
    /* DA58 8001D258 9C0322A2 */  sb         $v0, 0x39C($s1)
    /* DA5C 8001D25C FF000224 */  addiu      $v0, $zero, 0xFF
    /* DA60 8001D260 D30330A2 */  sb         $s0, 0x3D3($s1)
    /* DA64 8001D264 EF740008 */  j          .L8001D3BC
    /* DA68 8001D268 960322A2 */   sb        $v0, 0x396($s1)
  .L8001D26C:
    /* DA6C 8001D26C FF002331 */  andi       $v1, $t1, 0xFF
    /* DA70 8001D270 09006014 */  bnez       $v1, .L8001D298
    /* DA74 8001D274 17000224 */   addiu     $v0, $zero, 0x17
    /* DA78 8001D278 FF00A230 */  andi       $v0, $a1, 0xFF
    /* DA7C 8001D27C 80100200 */  sll        $v0, $v0, 2
    /* DA80 8001D280 1480013C */  lui        $at, %hi(D_8013A000)
    /* DA84 8001D284 21082200 */  addu       $at, $at, $v0
    /* DA88 8001D288 00A0228C */  lw         $v0, %lo(D_8013A000)($at)
    /* DA8C 8001D28C 00000000 */  nop
    /* DA90 8001D290 200022AE */  sw         $v0, 0x20($s1)
    /* DA94 8001D294 17000224 */  addiu      $v0, $zero, 0x17
  .L8001D298:
    /* DA98 8001D298 3C006214 */  bne        $v1, $v0, .L8001D38C
    /* DA9C 8001D29C FF002231 */   andi      $v0, $t1, 0xFF
    /* DAA0 8001D2A0 1000E490 */  lbu        $a0, 0x10($a3)
    /* DAA4 8001D2A4 CCCC063C */  lui        $a2, (0xCCCCCCCD >> 16)
    /* DAA8 8001D2A8 CDCCC634 */  ori        $a2, $a2, (0xCCCCCCCD & 0xFFFF)
    /* DAAC 8001D2AC 19008600 */  multu      $a0, $a2
    /* DAB0 8001D2B0 FF00A530 */  andi       $a1, $a1, 0xFF
    /* DAB4 8001D2B4 10500000 */  mfhi       $t2
    /* DAB8 8001D2B8 C2180A00 */  srl        $v1, $t2, 3
    /* DABC 8001D2BC 80100300 */  sll        $v0, $v1, 2
    /* DAC0 8001D2C0 21104300 */  addu       $v0, $v0, $v1
    /* DAC4 8001D2C4 40100200 */  sll        $v0, $v0, 1
    /* DAC8 8001D2C8 23208200 */  subu       $a0, $a0, $v0
    /* DACC 8001D2CC FF008430 */  andi       $a0, $a0, 0xFF
    /* DAD0 8001D2D0 2128A400 */  addu       $a1, $a1, $a0
    /* DAD4 8001D2D4 80280500 */  sll        $a1, $a1, 2
    /* DAD8 8001D2D8 1480013C */  lui        $at, %hi(D_8013A000)
    /* DADC 8001D2DC 21082500 */  addu       $at, $at, $a1
    /* DAE0 8001D2E0 00A0228C */  lw         $v0, %lo(D_8013A000)($at)
    /* DAE4 8001D2E4 00000000 */  nop
    /* DAE8 8001D2E8 200022AE */  sw         $v0, 0x20($s1)
    /* DAEC 8001D2EC 1000E490 */  lbu        $a0, 0x10($a3)
    /* DAF0 8001D2F0 00000000 */  nop
    /* DAF4 8001D2F4 19008600 */  multu      $a0, $a2
    /* DAF8 8001D2F8 10500000 */  mfhi       $t2
    /* DAFC 8001D2FC C2180A00 */  srl        $v1, $t2, 3
    /* DB00 8001D300 80100300 */  sll        $v0, $v1, 2
    /* DB04 8001D304 21104300 */  addu       $v0, $v0, $v1
    /* DB08 8001D308 40100200 */  sll        $v0, $v0, 1
    /* DB0C 8001D30C 23208200 */  subu       $a0, $a0, $v0
    /* DB10 8001D310 FF008430 */  andi       $a0, $a0, 0xFF
    /* DB14 8001D314 01000224 */  addiu      $v0, $zero, 0x1
    /* DB18 8001D318 12008210 */  beq        $a0, $v0, .L8001D364
    /* DB1C 8001D31C 02008228 */   slti      $v0, $a0, 0x2
    /* DB20 8001D320 05004010 */  beqz       $v0, .L8001D338
    /* DB24 8001D324 00000000 */   nop
    /* DB28 8001D328 0A008010 */  beqz       $a0, .L8001D354
    /* DB2C 8001D32C FF002231 */   andi      $v0, $t1, 0xFF
    /* DB30 8001D330 E3740008 */  j          .L8001D38C
    /* DB34 8001D334 00000000 */   nop
  .L8001D338:
    /* DB38 8001D338 02000224 */  addiu      $v0, $zero, 0x2
    /* DB3C 8001D33C 0B008210 */  beq        $a0, $v0, .L8001D36C
    /* DB40 8001D340 03000224 */   addiu     $v0, $zero, 0x3
    /* DB44 8001D344 0D008210 */  beq        $a0, $v0, .L8001D37C
    /* DB48 8001D348 FF002231 */   andi      $v0, $t1, 0xFF
    /* DB4C 8001D34C E3740008 */  j          .L8001D38C
    /* DB50 8001D350 00000000 */   nop
  .L8001D354:
    /* DB54 8001D354 C7111624 */  addiu      $s6, $zero, 0x11C7
    /* DB58 8001D358 0F0F1524 */  addiu      $s5, $zero, 0xF0F
    /* DB5C 8001D35C E2740008 */  j          .L8001D388
    /* DB60 8001D360 0F0F1424 */   addiu     $s4, $zero, 0xF0F
  .L8001D364:
    /* DB64 8001D364 E0740008 */  j          .L8001D380
    /* DB68 8001D368 71101624 */   addiu     $s6, $zero, 0x1071
  .L8001D36C:
    /* DB6C 8001D36C 8E0F1624 */  addiu      $s6, $zero, 0xF8E
    /* DB70 8001D370 330F1524 */  addiu      $s5, $zero, 0xF33
    /* DB74 8001D374 E2740008 */  j          .L8001D388
    /* DB78 8001D378 330F1424 */   addiu     $s4, $zero, 0xF33
  .L8001D37C:
    /* DB7C 8001D37C 00101624 */  addiu      $s6, $zero, 0x1000
  .L8001D380:
    /* DB80 8001D380 00101524 */  addiu      $s5, $zero, 0x1000
    /* DB84 8001D384 00101424 */  addiu      $s4, $zero, 0x1000
  .L8001D388:
    /* DB88 8001D388 FF002231 */  andi       $v0, $t1, 0xFF
  .L8001D38C:
    /* DB8C 8001D38C 02004014 */  bnez       $v0, .L8001D398
    /* DB90 8001D390 0C000224 */   addiu     $v0, $zero, 0xC
    /* DB94 8001D394 01000224 */  addiu      $v0, $zero, 0x1
  .L8001D398:
    /* DB98 8001D398 A60322A2 */  sb         $v0, 0x3A6($s1)
    /* DB9C 8001D39C 0C6F000C */  jal        func_8001BC30
    /* DBA0 8001D3A0 21202002 */   addu      $a0, $s1, $zero
    /* DBA4 8001D3A4 21202002 */  addu       $a0, $s1, $zero
    /* DBA8 8001D3A8 FF004532 */  andi       $a1, $s2, 0xFF
    /* DBAC 8001D3AC 8C6E010C */  jal        func_8005BA30
    /* DBB0 8001D3B0 21300000 */   addu      $a2, $zero, $zero
    /* DBB4 8001D3B4 01000224 */  addiu      $v0, $zero, 0x1
    /* DBB8 8001D3B8 D30322A2 */  sb         $v0, 0x3D3($s1)
  .L8001D3BC:
    /* DBBC 8001D3BC C0010224 */  addiu      $v0, $zero, 0x1C0
    /* DBC0 8001D3C0 23185300 */  subu       $v1, $v0, $s3
    /* DBC4 8001D3C4 21106000 */  addu       $v0, $v1, $zero
    /* DBC8 8001D3C8 A80333A2 */  sb         $s3, 0x3A8($s1)
    /* DBCC 8001D3CC AA0333A2 */  sb         $s3, 0x3AA($s1)
    /* DBD0 8001D3D0 02006104 */  bgez       $v1, .L8001D3DC
    /* DBD4 8001D3D4 A40333A2 */   sb        $s3, 0x3A4($s1)
    /* DBD8 8001D3D8 FF006224 */  addiu      $v0, $v1, 0xFF
  .L8001D3DC:
    /* DBDC 8001D3DC 03120200 */  sra        $v0, $v0, 8
    /* DBE0 8001D3E0 00120200 */  sll        $v0, $v0, 8
    /* DBE4 8001D3E4 23106200 */  subu       $v0, $v1, $v0
    /* DBE8 8001D3E8 00110200 */  sll        $v0, $v0, 4
    /* DBEC 8001D3EC 260022A6 */  sh         $v0, 0x26($s1)
    /* DBF0 8001D3F0 A80320A2 */  sb         $zero, 0x3A8($s1)
    /* DBF4 8001D3F4 A70320A2 */  sb         $zero, 0x3A7($s1)
    /* DBF8 8001D3F8 020037A6 */  sh         $s7, 0x2($s1)
    /* DBFC 8001D3FC 040020A6 */  sh         $zero, 0x4($s1)
    /* DC00 8001D400 06003EA6 */  sh         $fp, 0x6($s1)
    /* DC04 8001D404 100020AE */  sw         $zero, 0x10($s1)
    /* DC08 8001D408 0C0020AE */  sw         $zero, 0xC($s1)
    /* DC0C 8001D40C 080020AE */  sw         $zero, 0x8($s1)
    /* DC10 8001D410 280020A6 */  sh         $zero, 0x28($s1)
    /* DC14 8001D414 240020A6 */  sh         $zero, 0x24($s1)
    /* DC18 8001D418 260022A6 */  sh         $v0, 0x26($s1)
    /* DC1C 8001D41C 2C0034AE */  sw         $s4, 0x2C($s1)
    /* DC20 8001D420 300036AE */  sw         $s6, 0x30($s1)
    /* DC24 8001D424 340035AE */  sw         $s5, 0x34($s1)
    /* DC28 8001D428 D20320A2 */  sb         $zero, 0x3D2($s1)
    /* DC2C 8001D42C 9C0320A2 */  sb         $zero, 0x39C($s1)
    /* DC30 8001D430 D10320A2 */  sb         $zero, 0x3D1($s1)
    /* DC34 8001D434 AC0320A2 */  sb         $zero, 0x3AC($s1)
    /* DC38 8001D438 960320A2 */  sb         $zero, 0x396($s1)
    /* DC3C 8001D43C 3400BF8F */  lw         $ra, 0x34($sp)
    /* DC40 8001D440 3000BE8F */  lw         $fp, 0x30($sp)
    /* DC44 8001D444 2C00B78F */  lw         $s7, 0x2C($sp)
    /* DC48 8001D448 2800B68F */  lw         $s6, 0x28($sp)
    /* DC4C 8001D44C 2400B58F */  lw         $s5, 0x24($sp)
    /* DC50 8001D450 2000B48F */  lw         $s4, 0x20($sp)
    /* DC54 8001D454 1C00B38F */  lw         $s3, 0x1C($sp)
    /* DC58 8001D458 1800B28F */  lw         $s2, 0x18($sp)
    /* DC5C 8001D45C 1400B18F */  lw         $s1, 0x14($sp)
    /* DC60 8001D460 1000B08F */  lw         $s0, 0x10($sp)
    /* DC64 8001D464 3800BD27 */  addiu      $sp, $sp, 0x38
    /* DC68 8001D468 0800E003 */  jr         $ra
    /* DC6C 8001D46C 00000000 */   nop
endlabel func_8001D14C
