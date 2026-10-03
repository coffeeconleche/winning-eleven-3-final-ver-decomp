nonmatching func_8009D9C4, 0x2FC

glabel func_8009D9C4
    /* 8E1C4 8009D9C4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8E1C8 8009D9C8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8E1CC 8009D9CC 21808000 */  addu       $s0, $a0, $zero
    /* 8E1D0 8009D9D0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8E1D4 8009D9D4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8E1D8 8009D9D8 8D030492 */  lbu        $a0, 0x38D($s0)
    /* 8E1DC 8009D9DC 801F023C */  lui        $v0, (0x1F8002A9 >> 16)
    /* 8E1E0 8009D9E0 A9024290 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($v0)
    /* 8E1E4 8009D9E4 00000000 */  nop
    /* 8E1E8 8009D9E8 08008214 */  bne        $a0, $v0, .L8009DA0C
    /* 8E1EC 8009D9EC 801F113C */   lui       $s1, (0x1F8002A9 >> 16)
    /* 8E1F0 8009D9F0 21200002 */  addu       $a0, $s0, $zero
    /* 8E1F4 8009D9F4 0D000224 */  addiu      $v0, $zero, 0xD
    /* 8E1F8 8009D9F8 E20382A0 */  sb         $v0, 0x3E2($a0)
    /* 8E1FC 8009D9FC 9178020C */  jal        func_8009E244
    /* 8E200 8009DA00 E30380A0 */   sb        $zero, 0x3E3($a0)
    /* 8E204 8009DA04 2A770208 */  j          .L8009DCA8
    /* 8E208 8009DA08 00000000 */   nop
  .L8009DA0C:
    /* 8E20C 8009DA0C 98030292 */  lbu        $v0, 0x398($s0)
    /* 8E210 8009DA10 801F013C */  lui        $at, (0x1F8002CF >> 16)
    /* 8E214 8009DA14 21084100 */  addu       $at, $v0, $at
    /* 8E218 8009DA18 CF022390 */  lbu        $v1, (0x1F8002CF & 0xFFFF)($at)
    /* 8E21C 8009DA1C 01000224 */  addiu      $v0, $zero, 0x1
    /* 8E220 8009DA20 41006214 */  bne        $v1, $v0, .L8009DB28
    /* 8E224 8009DA24 00000000 */   nop
    /* 8E228 8009DA28 99030292 */  lbu        $v0, 0x399($s0)
    /* 8E22C 8009DA2C 00000000 */  nop
    /* 8E230 8009DA30 40100200 */  sll        $v0, $v0, 1
    /* 8E234 8009DA34 801F013C */  lui        $at, (0x1F80031E >> 16)
    /* 8E238 8009DA38 21084100 */  addu       $at, $v0, $at
    /* 8E23C 8009DA3C 1E032290 */  lbu        $v0, (0x1F80031E & 0xFFFF)($at)
    /* 8E240 8009DA40 00000000 */  nop
    /* 8E244 8009DA44 03008214 */  bne        $a0, $v0, .L8009DA54
    /* 8E248 8009DA48 0C000224 */   addiu     $v0, $zero, 0xC
    /* 8E24C 8009DA4C E20302A2 */  sb         $v0, 0x3E2($s0)
    /* 8E250 8009DA50 E30300A2 */  sb         $zero, 0x3E3($s0)
  .L8009DA54:
    /* 8E254 8009DA54 02000386 */  lh         $v1, 0x2($s0)
    /* 8E258 8009DA58 00000000 */  nop
    /* 8E25C 8009DA5C 02006104 */  bgez       $v1, .L8009DA68
    /* 8E260 8009DA60 21106000 */   addu      $v0, $v1, $zero
    /* 8E264 8009DA64 23100200 */  negu       $v0, $v0
  .L8009DA68:
    /* 8E268 8009DA68 E3224228 */  slti       $v0, $v0, 0x22E3
    /* 8E26C 8009DA6C 2B004014 */  bnez       $v0, .L8009DB1C
    /* 8E270 8009DA70 0C000224 */   addiu     $v0, $zero, 0xC
    /* 8E274 8009DA74 06000286 */  lh         $v0, 0x6($s0)
    /* 8E278 8009DA78 00000000 */  nop
    /* 8E27C 8009DA7C 02004104 */  bgez       $v0, .L8009DA88
    /* 8E280 8009DA80 00000000 */   nop
    /* 8E284 8009DA84 23100200 */  negu       $v0, $v0
  .L8009DA88:
    /* 8E288 8009DA88 F40F4228 */  slti       $v0, $v0, 0xFF4
    /* 8E28C 8009DA8C 23004010 */  beqz       $v0, .L8009DB1C
    /* 8E290 8009DA90 0C000224 */   addiu     $v0, $zero, 0xC
    /* 8E294 8009DA94 99030292 */  lbu        $v0, 0x399($s0)
    /* 8E298 8009DA98 00000000 */  nop
    /* 8E29C 8009DA9C 05004010 */  beqz       $v0, .L8009DAB4
    /* 8E2A0 8009DAA0 00000000 */   nop
    /* 8E2A4 8009DAA4 05006004 */  bltz       $v1, .L8009DABC
    /* 8E2A8 8009DAA8 0C000224 */   addiu     $v0, $zero, 0xC
    /* 8E2AC 8009DAAC C7760208 */  j          .L8009DB1C
    /* 8E2B0 8009DAB0 00000000 */   nop
  .L8009DAB4:
    /* 8E2B4 8009DAB4 19006018 */  blez       $v1, .L8009DB1C
    /* 8E2B8 8009DAB8 0C000224 */   addiu     $v0, $zero, 0xC
  .L8009DABC:
    /* 8E2BC 8009DABC 99030392 */  lbu        $v1, 0x399($s0)
    /* 8E2C0 8009DAC0 00000000 */  nop
    /* 8E2C4 8009DAC4 08006014 */  bnez       $v1, .L8009DAE8
    /* 8E2C8 8009DAC8 01000224 */   addiu     $v0, $zero, 0x1
    /* 8E2CC 8009DACC F402228E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s1)
    /* 8E2D0 8009DAD0 00000000 */  nop
    /* 8E2D4 8009DAD4 02004284 */  lh         $v0, 0x2($v0)
    /* 8E2D8 8009DAD8 00000000 */  nop
    /* 8E2DC 8009DADC E3214228 */  slti       $v0, $v0, 0x21E3
    /* 8E2E0 8009DAE0 0A004010 */  beqz       $v0, .L8009DB0C
    /* 8E2E4 8009DAE4 01000224 */   addiu     $v0, $zero, 0x1
  .L8009DAE8:
    /* 8E2E8 8009DAE8 0C006214 */  bne        $v1, $v0, .L8009DB1C
    /* 8E2EC 8009DAEC 0C000224 */   addiu     $v0, $zero, 0xC
    /* 8E2F0 8009DAF0 F402228E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s1)
    /* 8E2F4 8009DAF4 00000000 */  nop
    /* 8E2F8 8009DAF8 02004284 */  lh         $v0, 0x2($v0)
    /* 8E2FC 8009DAFC 00000000 */  nop
    /* 8E300 8009DB00 1EDE4228 */  slti       $v0, $v0, -0x21E2
    /* 8E304 8009DB04 05004010 */  beqz       $v0, .L8009DB1C
    /* 8E308 8009DB08 0C000224 */   addiu     $v0, $zero, 0xC
  .L8009DB0C:
    /* 8E30C 8009DB0C A9022292 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($s1)
    /* 8E310 8009DB10 00000000 */  nop
    /* 8E314 8009DB14 04004010 */  beqz       $v0, .L8009DB28
    /* 8E318 8009DB18 0C000224 */   addiu     $v0, $zero, 0xC
  .L8009DB1C:
    /* 8E31C 8009DB1C E20302A2 */  sb         $v0, 0x3E2($s0)
    /* 8E320 8009DB20 2A770208 */  j          .L8009DCA8
    /* 8E324 8009DB24 E30300A2 */   sb        $zero, 0x3E3($s0)
  .L8009DB28:
    /* 8E328 8009DB28 99030292 */  lbu        $v0, 0x399($s0)
    /* 8E32C 8009DB2C 8D030392 */  lbu        $v1, 0x38D($s0)
    /* 8E330 8009DB30 40100200 */  sll        $v0, $v0, 1
    /* 8E334 8009DB34 21102202 */  addu       $v0, $s1, $v0
    /* 8E338 8009DB38 1E034290 */  lbu        $v0, (0x1F80031E & 0xFFFF)($v0)
    /* 8E33C 8009DB3C 00000000 */  nop
    /* 8E340 8009DB40 22006214 */  bne        $v1, $v0, .L8009DBCC
    /* 8E344 8009DB44 00000000 */   nop
    /* 8E348 8009DB48 A9022292 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($s1)
    /* 8E34C 8009DB4C 00000000 */  nop
    /* 8E350 8009DB50 1E004014 */  bnez       $v0, .L8009DBCC
    /* 8E354 8009DB54 00000000 */   nop
    /* 8E358 8009DB58 9A030292 */  lbu        $v0, 0x39A($s0)
    /* 8E35C 8009DB5C 00000000 */  nop
    /* 8E360 8009DB60 1A004010 */  beqz       $v0, .L8009DBCC
    /* 8E364 8009DB64 00000000 */   nop
    /* 8E368 8009DB68 4E002296 */  lhu        $v0, (0x1F80004E & 0xFFFF)($s1)
    /* 8E36C 8009DB6C 00000000 */  nop
    /* 8E370 8009DB70 00140200 */  sll        $v0, $v0, 16
    /* 8E374 8009DB74 03140200 */  sra        $v0, $v0, 16
    /* 8E378 8009DB78 01FF4228 */  slti       $v0, $v0, -0xFF
    /* 8E37C 8009DB7C 0F004014 */  bnez       $v0, .L8009DBBC
    /* 8E380 8009DB80 00000000 */   nop
    /* 8E384 8009DB84 F402228E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s1)
    /* 8E388 8009DB88 00000000 */  nop
    /* 8E38C 8009DB8C 0C00428C */  lw         $v0, 0xC($v0)
    /* 8E390 8009DB90 00000000 */  nop
    /* 8E394 8009DB94 02004104 */  bgez       $v0, .L8009DBA0
    /* 8E398 8009DB98 00000000 */   nop
    /* 8E39C 8009DB9C 23100200 */  negu       $v0, $v0
  .L8009DBA0:
    /* 8E3A0 8009DBA0 00174228 */  slti       $v0, $v0, 0x1700
    /* 8E3A4 8009DBA4 05004010 */  beqz       $v0, .L8009DBBC
    /* 8E3A8 8009DBA8 00000000 */   nop
    /* 8E3AC 8009DBAC 4479010C */  jal        func_8005E510
    /* 8E3B0 8009DBB0 21200002 */   addu      $a0, $s0, $zero
    /* 8E3B4 8009DBB4 1B770208 */  j          .L8009DC6C
    /* 8E3B8 8009DBB8 00000000 */   nop
  .L8009DBBC:
    /* 8E3BC 8009DBBC 4178010C */  jal        func_8005E104
    /* 8E3C0 8009DBC0 21200002 */   addu      $a0, $s0, $zero
    /* 8E3C4 8009DBC4 1B770208 */  j          .L8009DC6C
    /* 8E3C8 8009DBC8 00000000 */   nop
  .L8009DBCC:
    /* 8E3CC 8009DBCC 99030292 */  lbu        $v0, 0x399($s0)
    /* 8E3D0 8009DBD0 8D030492 */  lbu        $a0, 0x38D($s0)
    /* 8E3D4 8009DBD4 40100200 */  sll        $v0, $v0, 1
    /* 8E3D8 8009DBD8 21102202 */  addu       $v0, $s1, $v0
    /* 8E3DC 8009DBDC 1F034290 */  lbu        $v0, (0x1F80031F & 0xFFFF)($v0)
    /* 8E3E0 8009DBE0 00000000 */  nop
    /* 8E3E4 8009DBE4 26008214 */  bne        $a0, $v0, .L8009DC80
    /* 8E3E8 8009DBE8 00000000 */   nop
    /* 8E3EC 8009DBEC 2EBA023C */  lui        $v0, (0xBA2E8BA3 >> 16)
    /* 8E3F0 8009DBF0 A38B4234 */  ori        $v0, $v0, (0xBA2E8BA3 & 0xFFFF)
    /* 8E3F4 8009DBF4 19008200 */  multu      $a0, $v0
    /* 8E3F8 8009DBF8 8B2E023C */  lui        $v0, (0x2E8BA2E9 >> 16)
    /* 8E3FC 8009DBFC 10180000 */  mfhi       $v1
    /* 8E400 8009DC00 9002258E */  lw         $a1, (0x1F800290 & 0xFFFF)($s1)
    /* 8E404 8009DC04 E9A24234 */  ori        $v0, $v0, (0x2E8BA2E9 & 0xFFFF)
    /* 8E408 8009DC08 1800A200 */  mult       $a1, $v0
    /* 8E40C 8009DC0C 02110300 */  srl        $v0, $v1, 4
    /* 8E410 8009DC10 40180200 */  sll        $v1, $v0, 1
    /* 8E414 8009DC14 21186200 */  addu       $v1, $v1, $v0
    /* 8E418 8009DC18 80180300 */  sll        $v1, $v1, 2
    /* 8E41C 8009DC1C 23186200 */  subu       $v1, $v1, $v0
    /* 8E420 8009DC20 40180300 */  sll        $v1, $v1, 1
    /* 8E424 8009DC24 23188300 */  subu       $v1, $a0, $v1
    /* 8E428 8009DC28 FF006330 */  andi       $v1, $v1, 0xFF
    /* 8E42C 8009DC2C C3170500 */  sra        $v0, $a1, 31
    /* 8E430 8009DC30 10300000 */  mfhi       $a2
    /* 8E434 8009DC34 83200600 */  sra        $a0, $a2, 2
    /* 8E438 8009DC38 23208200 */  subu       $a0, $a0, $v0
    /* 8E43C 8009DC3C 40100400 */  sll        $v0, $a0, 1
    /* 8E440 8009DC40 21104400 */  addu       $v0, $v0, $a0
    /* 8E444 8009DC44 80100200 */  sll        $v0, $v0, 2
    /* 8E448 8009DC48 23104400 */  subu       $v0, $v0, $a0
    /* 8E44C 8009DC4C 40100200 */  sll        $v0, $v0, 1
    /* 8E450 8009DC50 2328A200 */  subu       $a1, $a1, $v0
    /* 8E454 8009DC54 0A006510 */  beq        $v1, $a1, .L8009DC80
    /* 8E458 8009DC58 07000224 */   addiu     $v0, $zero, 0x7
    /* 8E45C 8009DC5C 96030392 */  lbu        $v1, 0x396($s0)
    /* 8E460 8009DC60 00000000 */  nop
    /* 8E464 8009DC64 10006210 */  beq        $v1, $v0, .L8009DCA8
    /* 8E468 8009DC68 00000000 */   nop
  .L8009DC6C:
    /* 8E46C 8009DC6C 02000296 */  lhu        $v0, 0x2($s0)
    /* 8E470 8009DC70 06000396 */  lhu        $v1, 0x6($s0)
    /* 8E474 8009DC74 BC0302A6 */  sh         $v0, 0x3BC($s0)
    /* 8E478 8009DC78 2A770208 */  j          .L8009DCA8
    /* 8E47C 8009DC7C BE0303A6 */   sh        $v1, 0x3BE($s0)
  .L8009DC80:
    /* 8E480 8009DC80 DA7B020C */  jal        func_8009EF68
    /* 8E484 8009DC84 21200002 */   addu      $a0, $s0, $zero
    /* 8E488 8009DC88 21200002 */  addu       $a0, $s0, $zero
    /* 8E48C 8009DC8C F8002596 */  lhu        $a1, (0x1F8000F8 & 0xFFFF)($s1)
    /* 8E490 8009DC90 FC002696 */  lhu        $a2, (0x1F8000FC & 0xFFFF)($s1)
    /* 8E494 8009DC94 002C0500 */  sll        $a1, $a1, 16
    /* 8E498 8009DC98 032C0500 */  sra        $a1, $a1, 16
    /* 8E49C 8009DC9C 00340600 */  sll        $a2, $a2, 16
    /* 8E4A0 8009DCA0 F0A3010C */  jal        func_80068FC0
    /* 8E4A4 8009DCA4 03340600 */   sra       $a2, $a2, 16
  .L8009DCA8:
    /* 8E4A8 8009DCA8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8E4AC 8009DCAC 1400B18F */  lw         $s1, 0x14($sp)
    /* 8E4B0 8009DCB0 1000B08F */  lw         $s0, 0x10($sp)
    /* 8E4B4 8009DCB4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8E4B8 8009DCB8 0800E003 */  jr         $ra
    /* 8E4BC 8009DCBC 00000000 */   nop
endlabel func_8009D9C4
