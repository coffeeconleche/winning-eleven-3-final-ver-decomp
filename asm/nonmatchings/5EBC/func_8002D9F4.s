nonmatching func_8002D9F4, 0x1148

glabel func_8002D9F4
    /* 1E1F4 8002D9F4 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 1E1F8 8002D9F8 4000B2AF */  sw         $s2, 0x40($sp)
    /* 1E1FC 8002D9FC 21908000 */  addu       $s2, $a0, $zero
    /* 1E200 8002DA00 5C00BFAF */  sw         $ra, 0x5C($sp)
    /* 1E204 8002DA04 5800BEAF */  sw         $fp, 0x58($sp)
    /* 1E208 8002DA08 5400B7AF */  sw         $s7, 0x54($sp)
    /* 1E20C 8002DA0C 5000B6AF */  sw         $s6, 0x50($sp)
    /* 1E210 8002DA10 4C00B5AF */  sw         $s5, 0x4C($sp)
    /* 1E214 8002DA14 4800B4AF */  sw         $s4, 0x48($sp)
    /* 1E218 8002DA18 4400B3AF */  sw         $s3, 0x44($sp)
    /* 1E21C 8002DA1C 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 1E220 8002DA20 3800B0AF */  sw         $s0, 0x38($sp)
    /* 1E224 8002DA24 C2034296 */  lhu        $v0, 0x3C2($s2)
    /* 1E228 8002DA28 00000000 */  nop
    /* 1E22C 8002DA2C 001C0200 */  sll        $v1, $v0, 16
    /* 1E230 8002DA30 03240300 */  sra        $a0, $v1, 16
    /* 1E234 8002DA34 17008010 */  beqz       $a0, .L8002DA94
    /* 1E238 8002DA38 801F163C */   lui       $s6, (0x1F800066 >> 16)
    /* 1E23C 8002DA3C AA2A023C */  lui        $v0, (0x2AAAAAAB >> 16)
    /* 1E240 8002DA40 ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
    /* 1E244 8002DA44 18008200 */  mult       $a0, $v0
    /* 1E248 8002DA48 C31F0300 */  sra        $v1, $v1, 31
    /* 1E24C 8002DA4C 10400000 */  mfhi       $t0
    /* 1E250 8002DA50 83100800 */  sra        $v0, $t0, 2
    /* 1E254 8002DA54 23104300 */  subu       $v0, $v0, $v1
    /* 1E258 8002DA58 40180200 */  sll        $v1, $v0, 1
    /* 1E25C 8002DA5C 21186200 */  addu       $v1, $v1, $v0
    /* 1E260 8002DA60 C0180300 */  sll        $v1, $v1, 3
    /* 1E264 8002DA64 23188300 */  subu       $v1, $a0, $v1
    /* 1E268 8002DA68 001C0300 */  sll        $v1, $v1, 16
    /* 1E26C 8002DA6C 031C0300 */  sra        $v1, $v1, 16
    /* 1E270 8002DA70 40110300 */  sll        $v0, $v1, 5
    /* 1E274 8002DA74 23104300 */  subu       $v0, $v0, $v1
    /* 1E278 8002DA78 80100200 */  sll        $v0, $v0, 2
    /* 1E27C 8002DA7C 21104300 */  addu       $v0, $v0, $v1
    /* 1E280 8002DA80 C0100200 */  sll        $v0, $v0, 3
    /* 1E284 8002DA84 1080083C */  lui        $t0, %hi(D_800FF748)
    /* 1E288 8002DA88 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* 1E28C 8002DA8C AAB60008 */  j          .L8002DAA8
    /* 1E290 8002DA90 21A04800 */   addu      $s4, $v0, $t0
  .L8002DA94:
    /* 1E294 8002DA94 C4034386 */  lh         $v1, 0x3C4($s2)
    /* 1E298 8002DA98 05000224 */  addiu      $v0, $zero, 0x5
    /* 1E29C 8002DA9C 03006210 */  beq        $v1, $v0, .L8002DAAC
    /* 1E2A0 8002DAA0 06000224 */   addiu     $v0, $zero, 0x6
    /* 1E2A4 8002DAA4 C40342A6 */  sh         $v0, 0x3C4($s2)
  .L8002DAA8:
    /* 1E2A8 8002DAA8 C4034386 */  lh         $v1, 0x3C4($s2)
  .L8002DAAC:
    /* 1E2AC 8002DAAC 00000000 */  nop
    /* 1E2B0 8002DAB0 0700622C */  sltiu      $v0, $v1, 0x7
    /* 1E2B4 8002DAB4 07004010 */  beqz       $v0, .L8002DAD4
    /* 1E2B8 8002DAB8 80100300 */   sll       $v0, $v1, 2
    /* 1E2BC 8002DABC 0180013C */  lui        $at, %hi(jtbl_80010F10)
    /* 1E2C0 8002DAC0 21082200 */  addu       $at, $at, $v0
    /* 1E2C4 8002DAC4 100F228C */  lw         $v0, %lo(jtbl_80010F10)($at)
    /* 1E2C8 8002DAC8 00000000 */  nop
    /* 1E2CC 8002DACC 08004000 */  jr         $v0
    /* 1E2D0 8002DAD0 00000000 */   nop
  jlabel .L8002DAD4
    /* 1E2D4 8002DAD4 0800828E */  lw         $v0, 0x8($s4)
    /* 1E2D8 8002DAD8 02008386 */  lh         $v1, 0x2($s4)
    /* 1E2DC 8002DADC 80100200 */  sll        $v0, $v0, 2
    /* 1E2E0 8002DAE0 21186200 */  addu       $v1, $v1, $v0
    /* 1E2E4 8002DAE4 99034292 */  lbu        $v0, 0x399($s2)
    /* 1E2E8 8002DAE8 C6034486 */  lh         $a0, 0x3C6($s2)
    /* 1E2EC 8002DAEC 02004014 */  bnez       $v0, .L8002DAF8
    /* 1E2F0 8002DAF0 23886400 */   subu      $s1, $v1, $a0
    /* 1E2F4 8002DAF4 21886400 */  addu       $s1, $v1, $a0
  .L8002DAF8:
    /* 1E2F8 8002DAF8 F402C58E */  lw         $a1, (0x1F8002F4 & 0xFFFF)($s6)
    /* 1E2FC 8002DAFC 001C1100 */  sll        $v1, $s1, 16
    /* 1E300 8002DB00 0200A284 */  lh         $v0, 0x2($a1)
    /* 1E304 8002DB04 031C0300 */  sra        $v1, $v1, 16
    /* 1E308 8002DB08 23104300 */  subu       $v0, $v0, $v1
    /* 1E30C 8002DB0C 18004200 */  mult       $v0, $v0
    /* 1E310 8002DB10 1000828E */  lw         $v0, 0x10($s4)
    /* 1E314 8002DB14 06008496 */  lhu        $a0, 0x6($s4)
    /* 1E318 8002DB18 80100200 */  sll        $v0, $v0, 2
    /* 1E31C 8002DB1C 21208200 */  addu       $a0, $a0, $v0
    /* 1E320 8002DB20 001C0400 */  sll        $v1, $a0, 16
    /* 1E324 8002DB24 0600A284 */  lh         $v0, 0x6($a1)
    /* 1E328 8002DB28 12300000 */  mflo       $a2
    /* 1E32C 8002DB2C 031C0300 */  sra        $v1, $v1, 16
    /* 1E330 8002DB30 23104300 */  subu       $v0, $v0, $v1
    /* 1E334 8002DB34 18004200 */  mult       $v0, $v0
    /* 1E338 8002DB38 21808000 */  addu       $s0, $a0, $zero
    /* 1E33C 8002DB3C 12180000 */  mflo       $v1
    /* 1E340 8002DB40 4AC4020C */  jal        func_800B1128
    /* 1E344 8002DB44 2120C300 */   addu      $a0, $a2, $v1
    /* 1E348 8002DB48 C4034396 */  lhu        $v1, 0x3C4($s2)
    /* 1E34C 8002DB4C 00000000 */  nop
    /* 1E350 8002DB50 FEFF6324 */  addiu      $v1, $v1, -0x2
    /* 1E354 8002DB54 0200632C */  sltiu      $v1, $v1, 0x2
    /* 1E358 8002DB58 05006010 */  beqz       $v1, .L8002DB70
    /* 1E35C 8002DB5C 21984000 */   addu      $s3, $v0, $zero
    /* 1E360 8002DB60 0112622E */  sltiu      $v0, $s3, 0x1201
    /* 1E364 8002DB64 03004014 */  bnez       $v0, .L8002DB74
    /* 1E368 8002DB68 00341100 */   sll       $a2, $s1, 16
    /* 1E36C 8002DB6C C40340A6 */  sh         $zero, 0x3C4($s2)
  .L8002DB70:
    /* 1E370 8002DB70 00341100 */  sll        $a2, $s1, 16
  .L8002DB74:
    /* 1E374 8002DB74 03340600 */  sra        $a2, $a2, 16
    /* 1E378 8002DB78 003C1000 */  sll        $a3, $s0, 16
    /* 1E37C 8002DB7C 033C0700 */  sra        $a3, $a3, 16
    /* 1E380 8002DB80 3600C496 */  lhu        $a0, (0x1F800036 & 0xFFFF)($s6)
    /* 1E384 8002DB84 6600C596 */  lhu        $a1, (0x1F800066 & 0xFFFF)($s6)
    /* 1E388 8002DB88 00240400 */  sll        $a0, $a0, 16
    /* 1E38C 8002DB8C 03240400 */  sra        $a0, $a0, 16
    /* 1E390 8002DB90 002C0500 */  sll        $a1, $a1, 16
    /* 1E394 8002DB94 876D010C */  jal        func_8005B61C
    /* 1E398 8002DB98 032C0500 */   sra       $a1, $a1, 16
    /* 1E39C 8002DB9C 9B034392 */  lbu        $v1, 0x39B($s2)
    /* 1E3A0 8002DBA0 00000000 */  nop
    /* 1E3A4 8002DBA4 05006014 */  bnez       $v1, .L8002DBBC
    /* 1E3A8 8002DBA8 21A84000 */   addu      $s5, $v0, $zero
    /* 1E3AC 8002DBAC B0034292 */  lbu        $v0, 0x3B0($s2)
    /* 1E3B0 8002DBB0 00000000 */  nop
    /* 1E3B4 8002DBB4 16004014 */  bnez       $v0, .L8002DC10
    /* 1E3B8 8002DBB8 00000000 */   nop
  .L8002DBBC:
    /* 1E3BC 8002DBBC 92034292 */  lbu        $v0, 0x392($s2)
    /* 1E3C0 8002DBC0 98034492 */  lbu        $a0, 0x398($s2)
    /* 1E3C4 8002DBC4 40180200 */  sll        $v1, $v0, 1
    /* 1E3C8 8002DBC8 21186200 */  addu       $v1, $v1, $v0
    /* 1E3CC 8002DBCC 80180300 */  sll        $v1, $v1, 2
    /* 1E3D0 8002DBD0 40110400 */  sll        $v0, $a0, 5
    /* 1E3D4 8002DBD4 21104400 */  addu       $v0, $v0, $a0
    /* 1E3D8 8002DBD8 C0100200 */  sll        $v0, $v0, 3
    /* 1E3DC 8002DBDC 21186200 */  addu       $v1, $v1, $v0
    /* 1E3E0 8002DBE0 1180013C */  lui        $at, %hi(D_8010C32E)
    /* 1E3E4 8002DBE4 21082300 */  addu       $at, $at, $v1
    /* 1E3E8 8002DBE8 2EC32294 */  lhu        $v0, %lo(D_8010C32E)($at)
    /* 1E3EC 8002DBEC 09000424 */  addiu      $a0, $zero, 0x9
    /* 1E3F0 8002DBF0 0F004230 */  andi       $v0, $v0, 0xF
    /* 1E3F4 8002DBF4 23208200 */  subu       $a0, $a0, $v0
    /* 1E3F8 8002DBF8 40200400 */  sll        $a0, $a0, 1
    /* 1E3FC 8002DBFC 08008424 */  addiu      $a0, $a0, 0x8
    /* 1E400 8002DC00 00240400 */  sll        $a0, $a0, 16
    /* 1E404 8002DC04 E871010C */  jal        func_8005C7A0
    /* 1E408 8002DC08 03240400 */   sra       $a0, $a0, 16
    /* 1E40C 8002DC0C 21A8A202 */  addu       $s5, $s5, $v0
  .L8002DC10:
    /* 1E410 8002DC10 9B034292 */  lbu        $v0, 0x39B($s2)
    /* 1E414 8002DC14 00000000 */  nop
    /* 1E418 8002DC18 0F004014 */  bnez       $v0, .L8002DC58
    /* 1E41C 8002DC1C 2800B5A3 */   sb        $s5, 0x28($sp)
    /* 1E420 8002DC20 B0034292 */  lbu        $v0, 0x3B0($s2)
    /* 1E424 8002DC24 00000000 */  nop
    /* 1E428 8002DC28 06004014 */  bnez       $v0, .L8002DC44
    /* 1E42C 8002DC2C 00000000 */   nop
    /* 1E430 8002DC30 CE034286 */  lh         $v0, 0x3CE($s2)
    /* 1E434 8002DC34 00000000 */  nop
    /* 1E438 8002DC38 38004228 */  slti       $v0, $v0, 0x38
    /* 1E43C 8002DC3C 06004010 */  beqz       $v0, .L8002DC58
    /* 1E440 8002DC40 00000000 */   nop
  .L8002DC44:
    /* 1E444 8002DC44 21204002 */  addu       $a0, $s2, $zero
    /* 1E448 8002DC48 FF00A532 */  andi       $a1, $s5, 0xFF
    /* 1E44C 8002DC4C 2CBB000C */  jal        func_8002ECB0
    /* 1E450 8002DC50 21306002 */   addu      $a2, $s3, $zero
    /* 1E454 8002DC54 21A84000 */  addu       $s5, $v0, $zero
  .L8002DC58:
    /* 1E458 8002DC58 94034396 */  lhu        $v1, 0x394($s2)
    /* 1E45C 8002DC5C 2EBA023C */  lui        $v0, (0xBA2E8BA3 >> 16)
    /* 1E460 8002DC60 A38B4234 */  ori        $v0, $v0, (0xBA2E8BA3 & 0xFFFF)
    /* 1E464 8002DC64 19006200 */  multu      $v1, $v0
    /* 1E468 8002DC68 42191300 */  srl        $v1, $s3, 5
    /* 1E46C 8002DC6C 10400000 */  mfhi       $t0
    /* 1E470 8002DC70 02110800 */  srl        $v0, $t0, 4
    /* 1E474 8002DC74 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 1E478 8002DC78 0C80013C */  lui        $at, %hi(D_800C6C6C)
    /* 1E47C 8002DC7C 21082200 */  addu       $at, $at, $v0
    /* 1E480 8002DC80 6C6C2290 */  lbu        $v0, %lo(D_800C6C6C)($at)
    /* 1E484 8002DC84 20007E24 */  addiu      $fp, $v1, 0x20
    /* 1E488 8002DC88 58005124 */  addiu      $s1, $v0, 0x58
    /* 1E48C 8002DC8C 2B103E02 */  sltu       $v0, $s1, $fp
    /* 1E490 8002DC90 02004010 */  beqz       $v0, .L8002DC9C
    /* 1E494 8002DC94 00000000 */   nop
    /* 1E498 8002DC98 21F02002 */  addu       $fp, $s1, $zero
  .L8002DC9C:
    /* 1E49C 8002DC9C 9B034292 */  lbu        $v0, 0x39B($s2)
    /* 1E4A0 8002DCA0 00000000 */  nop
    /* 1E4A4 8002DCA4 05004014 */  bnez       $v0, .L8002DCBC
    /* 1E4A8 8002DCA8 98001124 */   addiu     $s1, $zero, 0x98
    /* 1E4AC 8002DCAC B0034292 */  lbu        $v0, 0x3B0($s2)
    /* 1E4B0 8002DCB0 00000000 */  nop
    /* 1E4B4 8002DCB4 14004014 */  bnez       $v0, .L8002DD08
    /* 1E4B8 8002DCB8 00000000 */   nop
  .L8002DCBC:
    /* 1E4BC 8002DCBC 92034292 */  lbu        $v0, 0x392($s2)
    /* 1E4C0 8002DCC0 98034492 */  lbu        $a0, 0x398($s2)
    /* 1E4C4 8002DCC4 40180200 */  sll        $v1, $v0, 1
    /* 1E4C8 8002DCC8 21186200 */  addu       $v1, $v1, $v0
    /* 1E4CC 8002DCCC 80180300 */  sll        $v1, $v1, 2
    /* 1E4D0 8002DCD0 40110400 */  sll        $v0, $a0, 5
    /* 1E4D4 8002DCD4 21104400 */  addu       $v0, $v0, $a0
    /* 1E4D8 8002DCD8 C0100200 */  sll        $v0, $v0, 3
    /* 1E4DC 8002DCDC 21186200 */  addu       $v1, $v1, $v0
    /* 1E4E0 8002DCE0 1180013C */  lui        $at, %hi(D_8010C32E)
    /* 1E4E4 8002DCE4 21082300 */  addu       $at, $at, $v1
    /* 1E4E8 8002DCE8 2EC32294 */  lhu        $v0, %lo(D_8010C32E)($at)
    /* 1E4EC 8002DCEC 09000424 */  addiu      $a0, $zero, 0x9
    /* 1E4F0 8002DCF0 0F004230 */  andi       $v0, $v0, 0xF
    /* 1E4F4 8002DCF4 23208200 */  subu       $a0, $a0, $v0
    /* 1E4F8 8002DCF8 AE79000C */  jal        func_8001E6B8
    /* 1E4FC 8002DCFC 80200400 */   sll       $a0, $a0, 2
    /* 1E500 8002DD00 50B70008 */  j          .L8002DD40
    /* 1E504 8002DD04 02005024 */   addiu     $s0, $v0, 0x2
  .L8002DD08:
    /* 1E508 8002DD08 99034292 */  lbu        $v0, 0x399($s2)
    /* 1E50C 8002DD0C A4038592 */  lbu        $a1, 0x3A4($s4)
    /* 1E510 8002DD10 C0210200 */  sll        $a0, $v0, 7
    /* 1E514 8002DD14 2310A400 */  subu       $v0, $a1, $a0
    /* 1E518 8002DD18 FF004330 */  andi       $v1, $v0, 0xFF
    /* 1E51C 8002DD1C 8100622C */  sltiu      $v0, $v1, 0x81
    /* 1E520 8002DD20 05004014 */  bnez       $v0, .L8002DD38
    /* 1E524 8002DD24 C8001124 */   addiu     $s1, $zero, 0xC8
    /* 1E528 8002DD28 23108500 */  subu       $v0, $a0, $a1
    /* 1E52C 8002DD2C FF004230 */  andi       $v0, $v0, 0xFF
    /* 1E530 8002DD30 4FB70008 */  j          .L8002DD3C
    /* 1E534 8002DD34 03110200 */   sra       $v0, $v0, 4
  .L8002DD38:
    /* 1E538 8002DD38 03110300 */  sra        $v0, $v1, 4
  .L8002DD3C:
    /* 1E53C 8002DD3C 02005024 */  addiu      $s0, $v0, 0x2
  .L8002DD40:
    /* 1E540 8002DD40 CE034296 */  lhu        $v0, 0x3CE($s2)
    /* 1E544 8002DD44 00000000 */  nop
    /* 1E548 8002DD48 001C0200 */  sll        $v1, $v0, 16
    /* 1E54C 8002DD4C 03140300 */  sra        $v0, $v1, 16
    /* 1E550 8002DD50 20004228 */  slti       $v0, $v0, 0x20
    /* 1E554 8002DD54 02004014 */  bnez       $v0, .L8002DD60
    /* 1E558 8002DD58 83140300 */   sra       $v0, $v1, 18
    /* 1E55C 8002DD5C 23882202 */  subu       $s1, $s1, $v0
  .L8002DD60:
    /* 1E560 8002DD60 B2BD000C */  jal        func_8002F6C8
    /* 1E564 8002DD64 21206002 */   addu      $a0, $s3, $zero
    /* 1E568 8002DD68 B0034392 */  lbu        $v1, 0x3B0($s2)
    /* 1E56C 8002DD6C 00000000 */  nop
    /* 1E570 8002DD70 12006014 */  bnez       $v1, .L8002DDBC
    /* 1E574 8002DD74 21B84000 */   addu      $s7, $v0, $zero
    /* 1E578 8002DD78 92034292 */  lbu        $v0, 0x392($s2)
    /* 1E57C 8002DD7C 98034492 */  lbu        $a0, 0x398($s2)
    /* 1E580 8002DD80 40180200 */  sll        $v1, $v0, 1
    /* 1E584 8002DD84 21186200 */  addu       $v1, $v1, $v0
    /* 1E588 8002DD88 80180300 */  sll        $v1, $v1, 2
    /* 1E58C 8002DD8C 40110400 */  sll        $v0, $a0, 5
    /* 1E590 8002DD90 21104400 */  addu       $v0, $v0, $a0
    /* 1E594 8002DD94 C0100200 */  sll        $v0, $v0, 3
    /* 1E598 8002DD98 21186200 */  addu       $v1, $v1, $v0
    /* 1E59C 8002DD9C 1180013C */  lui        $at, %hi(D_8010C32E)
    /* 1E5A0 8002DDA0 21082300 */  addu       $at, $at, $v1
    /* 1E5A4 8002DDA4 2EC32494 */  lhu        $a0, %lo(D_8010C32E)($at)
    /* 1E5A8 8002DDA8 0C000224 */  addiu      $v0, $zero, 0xC
    /* 1E5AC 8002DDAC 0F008430 */  andi       $a0, $a0, 0xF
    /* 1E5B0 8002DDB0 AE79000C */  jal        func_8001E6B8
    /* 1E5B4 8002DDB4 23204400 */   subu      $a0, $v0, $a0
    /* 1E5B8 8002DDB8 21B8E202 */  addu       $s7, $s7, $v0
  .L8002DDBC:
    /* 1E5BC 8002DDBC 21208002 */  addu       $a0, $s4, $zero
    /* 1E5C0 8002DDC0 FF00A832 */  andi       $t0, $s5, 0xFF
    /* 1E5C4 8002DDC4 00321100 */  sll        $a2, $s1, 8
    /* 1E5C8 8002DDC8 003A1E00 */  sll        $a3, $fp, 8
    /* 1E5CC 8002DDCC 30000224 */  addiu      $v0, $zero, 0x30
    /* 1E5D0 8002DDD0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1E5D4 8002DDD4 0800C227 */  addiu      $v0, $fp, 0x8
    /* 1E5D8 8002DDD8 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1E5DC 8002DDDC 00141000 */  sll        $v0, $s0, 16
    /* 1E5E0 8002DDE0 3000A8AF */  sw         $t0, 0x30($sp)
    /* 1E5E4 8002DDE4 3000A58F */  lw         $a1, 0x30($sp)
    /* 1E5E8 8002DDE8 03140200 */  sra        $v0, $v0, 16
    /* 1E5EC 8002DDEC 1800B3AF */  sw         $s3, 0x18($sp)
    /* 1E5F0 8002DDF0 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 1E5F4 8002DDF4 ACBC000C */  jal        func_8002F2B0
    /* 1E5F8 8002DDF8 2000B7AF */   sw        $s7, 0x20($sp)
    /* 1E5FC 8002DDFC 21F04000 */  addu       $fp, $v0, $zero
    /* 1E600 8002DE00 01000724 */  addiu      $a3, $zero, 0x1
    /* 1E604 8002DE04 FE00C596 */  lhu        $a1, (0x1F8000FE & 0xFFFF)($s6)
    /* 1E608 8002DE08 99034492 */  lbu        $a0, 0x399($s2)
    /* 1E60C 8002DE0C 0001C696 */  lhu        $a2, (0x1F800100 & 0xFFFF)($s6)
    /* 1E610 8002DE10 002C0500 */  sll        $a1, $a1, 16
    /* 1E614 8002DE14 032C0500 */  sra        $a1, $a1, 16
    /* 1E618 8002DE18 00340600 */  sll        $a2, $a2, 16
    /* 1E61C 8002DE1C B19D010C */  jal        func_800676C4
    /* 1E620 8002DE20 03340600 */   sra       $a2, $a2, 16
    /* 1E624 8002DE24 6527010C */  jal        func_80049D94
    /* 1E628 8002DE28 21204002 */   addu      $a0, $s2, $zero
    /* 1E62C 8002DE2C FF004230 */  andi       $v0, $v0, 0xFF
    /* 1E630 8002DE30 AAAA033C */  lui        $v1, (0xAAAAAAAB >> 16)
    /* 1E634 8002DE34 ABAA6334 */  ori        $v1, $v1, (0xAAAAAAAB & 0xFFFF)
    /* 1E638 8002DE38 19004300 */  multu      $v0, $v1
    /* 1E63C 8002DE3C 10400000 */  mfhi       $t0
    /* 1E640 8002DE40 02210800 */  srl        $a0, $t0, 4
    /* 1E644 8002DE44 40180400 */  sll        $v1, $a0, 1
    /* 1E648 8002DE48 21186400 */  addu       $v1, $v1, $a0
    /* 1E64C 8002DE4C C0180300 */  sll        $v1, $v1, 3
    /* 1E650 8002DE50 23104300 */  subu       $v0, $v0, $v1
    /* 1E654 8002DE54 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1E658 8002DE58 40190200 */  sll        $v1, $v0, 5
    /* 1E65C 8002DE5C 23186200 */  subu       $v1, $v1, $v0
    /* 1E660 8002DE60 80180300 */  sll        $v1, $v1, 2
    /* 1E664 8002DE64 21186200 */  addu       $v1, $v1, $v0
    /* 1E668 8002DE68 C0180300 */  sll        $v1, $v1, 3
    /* 1E66C 8002DE6C 1080083C */  lui        $t0, %hi(D_800FF748)
    /* 1E670 8002DE70 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* 1E674 8002DE74 21800301 */  addu       $s0, $t0, $v1
    /* 1E678 8002DE78 59029012 */  beq        $s4, $s0, .L8002E7E0
    /* 1E67C 8002DE7C 00000000 */   nop
    /* 1E680 8002DE80 1B4B010C */  jal        func_80052C6C
    /* 1E684 8002DE84 21200002 */   addu      $a0, $s0, $zero
    /* 1E688 8002DE88 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1E68C 8002DE8C 54024014 */  bnez       $v0, .L8002E7E0
    /* 1E690 8002DE90 00000000 */   nop
    /* 1E694 8002DE94 2800A293 */  lbu        $v0, 0x28($sp)
    /* 1E698 8002DE98 3000A88F */  lw         $t0, 0x30($sp)
    /* 1E69C 8002DE9C 00000000 */  nop
    /* 1E6A0 8002DEA0 05000215 */  bne        $t0, $v0, .L8002DEB8
    /* 1E6A4 8002DEA4 00000000 */   nop
    /* 1E6A8 8002DEA8 C6034286 */  lh         $v0, 0x3C6($s2)
    /* 1E6AC 8002DEAC 00000000 */  nop
    /* 1E6B0 8002DEB0 48014014 */  bnez       $v0, .L8002E3D4
    /* 1E6B4 8002DEB4 1D000224 */   addiu     $v0, $zero, 0x1D
  .L8002DEB8:
    /* 1E6B8 8002DEB8 8D030292 */  lbu        $v0, 0x38D($s0)
    /* 1E6BC 8002DEBC 21A00002 */  addu       $s4, $s0, $zero
    /* 1E6C0 8002DEC0 F8B90008 */  j          .L8002E7E0
    /* 1E6C4 8002DEC4 C20342A6 */   sh        $v0, 0x3C2($s2)
  jlabel .L8002DEC8
    /* 1E6C8 8002DEC8 92034292 */  lbu        $v0, 0x392($s2)
    /* 1E6CC 8002DECC 98034492 */  lbu        $a0, 0x398($s2)
    /* 1E6D0 8002DED0 40180200 */  sll        $v1, $v0, 1
    /* 1E6D4 8002DED4 21186200 */  addu       $v1, $v1, $v0
    /* 1E6D8 8002DED8 80180300 */  sll        $v1, $v1, 2
    /* 1E6DC 8002DEDC 40110400 */  sll        $v0, $a0, 5
    /* 1E6E0 8002DEE0 21104400 */  addu       $v0, $v0, $a0
    /* 1E6E4 8002DEE4 C0100200 */  sll        $v0, $v0, 3
    /* 1E6E8 8002DEE8 21186200 */  addu       $v1, $v1, $v0
    /* 1E6EC 8002DEEC 1180013C */  lui        $at, %hi(D_8010C32E)
    /* 1E6F0 8002DEF0 21082300 */  addu       $at, $at, $v1
    /* 1E6F4 8002DEF4 2EC32294 */  lhu        $v0, %lo(D_8010C32E)($at)
    /* 1E6F8 8002DEF8 09000324 */  addiu      $v1, $zero, 0x9
    /* 1E6FC 8002DEFC 0F004230 */  andi       $v0, $v0, 0xF
    /* 1E700 8002DF00 23186200 */  subu       $v1, $v1, $v0
    /* 1E704 8002DF04 01000224 */  addiu      $v0, $zero, 0x1
    /* 1E708 8002DF08 0E006210 */  beq        $v1, $v0, .L8002DF44
    /* 1E70C 8002DF0C 02006228 */   slti      $v0, $v1, 0x2
    /* 1E710 8002DF10 05004010 */  beqz       $v0, .L8002DF28
    /* 1E714 8002DF14 00000000 */   nop
    /* 1E718 8002DF18 2B006010 */  beqz       $v1, .L8002DFC8
    /* 1E71C 8002DF1C 00000000 */   nop
    /* 1E720 8002DF20 DBB70008 */  j          .L8002DF6C
    /* 1E724 8002DF24 00000000 */   nop
  .L8002DF28:
    /* 1E728 8002DF28 02000224 */  addiu      $v0, $zero, 0x2
    /* 1E72C 8002DF2C 0A006210 */  beq        $v1, $v0, .L8002DF58
    /* 1E730 8002DF30 03000224 */   addiu     $v0, $zero, 0x3
    /* 1E734 8002DF34 1D006210 */  beq        $v1, $v0, .L8002DFAC
    /* 1E738 8002DF38 80000424 */   addiu     $a0, $zero, 0x80
    /* 1E73C 8002DF3C DBB70008 */  j          .L8002DF6C
    /* 1E740 8002DF40 00000000 */   nop
  .L8002DF44:
    /* 1E744 8002DF44 AE79000C */  jal        func_8001E6B8
    /* 1E748 8002DF48 40000424 */   addiu     $a0, $zero, 0x40
    /* 1E74C 8002DF4C C6034396 */  lhu        $v1, 0x3C6($s2)
    /* 1E750 8002DF50 F1B70008 */  j          .L8002DFC4
    /* 1E754 8002DF54 21186200 */   addu      $v1, $v1, $v0
  .L8002DF58:
    /* 1E758 8002DF58 AE79000C */  jal        func_8001E6B8
    /* 1E75C 8002DF5C 80000424 */   addiu     $a0, $zero, 0x80
    /* 1E760 8002DF60 C6034396 */  lhu        $v1, 0x3C6($s2)
    /* 1E764 8002DF64 F1B70008 */  j          .L8002DFC4
    /* 1E768 8002DF68 21186200 */   addu      $v1, $v1, $v0
  .L8002DF6C:
    /* 1E76C 8002DF6C 92034292 */  lbu        $v0, 0x392($s2)
    /* 1E770 8002DF70 98034492 */  lbu        $a0, 0x398($s2)
    /* 1E774 8002DF74 40180200 */  sll        $v1, $v0, 1
    /* 1E778 8002DF78 21186200 */  addu       $v1, $v1, $v0
    /* 1E77C 8002DF7C 80180300 */  sll        $v1, $v1, 2
    /* 1E780 8002DF80 40110400 */  sll        $v0, $a0, 5
    /* 1E784 8002DF84 21104400 */  addu       $v0, $v0, $a0
    /* 1E788 8002DF88 C0100200 */  sll        $v0, $v0, 3
    /* 1E78C 8002DF8C 21186200 */  addu       $v1, $v1, $v0
    /* 1E790 8002DF90 1180013C */  lui        $at, %hi(D_8010C32E)
    /* 1E794 8002DF94 21082300 */  addu       $at, $at, $v1
    /* 1E798 8002DF98 2EC32294 */  lhu        $v0, %lo(D_8010C32E)($at)
    /* 1E79C 8002DF9C 09000424 */  addiu      $a0, $zero, 0x9
    /* 1E7A0 8002DFA0 0F004230 */  andi       $v0, $v0, 0xF
    /* 1E7A4 8002DFA4 23208200 */  subu       $a0, $a0, $v0
    /* 1E7A8 8002DFA8 80210400 */  sll        $a0, $a0, 6
  .L8002DFAC:
    /* 1E7AC 8002DFAC AE79000C */  jal        func_8001E6B8
    /* 1E7B0 8002DFB0 00000000 */   nop
    /* 1E7B4 8002DFB4 C6034396 */  lhu        $v1, 0x3C6($s2)
    /* 1E7B8 8002DFB8 00000000 */  nop
    /* 1E7BC 8002DFBC 40006324 */  addiu      $v1, $v1, 0x40
    /* 1E7C0 8002DFC0 21186200 */  addu       $v1, $v1, $v0
  .L8002DFC4:
    /* 1E7C4 8002DFC4 C60343A6 */  sh         $v1, 0x3C6($s2)
  .L8002DFC8:
    /* 1E7C8 8002DFC8 C6034486 */  lh         $a0, 0x3C6($s2)
    /* 1E7CC 8002DFCC 99034292 */  lbu        $v0, 0x399($s2)
    /* 1E7D0 8002DFD0 02008386 */  lh         $v1, 0x2($s4)
    /* 1E7D4 8002DFD4 02004014 */  bnez       $v0, .L8002DFE0
    /* 1E7D8 8002DFD8 23886400 */   subu      $s1, $v1, $a0
    /* 1E7DC 8002DFDC 21886400 */  addu       $s1, $v1, $a0
  .L8002DFE0:
    /* 1E7E0 8002DFE0 F402C38E */  lw         $v1, 0x2F4($s6)
    /* 1E7E4 8002DFE4 008C1100 */  sll        $s1, $s1, 16
    /* 1E7E8 8002DFE8 02006284 */  lh         $v0, 0x2($v1)
    /* 1E7EC 8002DFEC 038C1100 */  sra        $s1, $s1, 16
    /* 1E7F0 8002DFF0 23105100 */  subu       $v0, $v0, $s1
    /* 1E7F4 8002DFF4 18004200 */  mult       $v0, $v0
    /* 1E7F8 8002DFF8 06009096 */  lhu        $s0, 0x6($s4)
    /* 1E7FC 8002DFFC C8034296 */  lhu        $v0, 0x3C8($s2)
    /* 1E800 8002E000 00000000 */  nop
    /* 1E804 8002E004 21800202 */  addu       $s0, $s0, $v0
    /* 1E808 8002E008 00841000 */  sll        $s0, $s0, 16
    /* 1E80C 8002E00C 06006284 */  lh         $v0, 0x6($v1)
    /* 1E810 8002E010 12200000 */  mflo       $a0
    /* 1E814 8002E014 03841000 */  sra        $s0, $s0, 16
    /* 1E818 8002E018 23105000 */  subu       $v0, $v0, $s0
    /* 1E81C 8002E01C 18004200 */  mult       $v0, $v0
    /* 1E820 8002E020 12180000 */  mflo       $v1
    /* 1E824 8002E024 4AC4020C */  jal        func_800B1128
    /* 1E828 8002E028 21208300 */   addu      $a0, $a0, $v1
    /* 1E82C 8002E02C 21984000 */  addu       $s3, $v0, $zero
    /* 1E830 8002E030 21302002 */  addu       $a2, $s1, $zero
    /* 1E834 8002E034 21380002 */  addu       $a3, $s0, $zero
    /* 1E838 8002E038 3600C496 */  lhu        $a0, 0x36($s6)
    /* 1E83C 8002E03C 6600C596 */  lhu        $a1, 0x66($s6)
    /* 1E840 8002E040 00240400 */  sll        $a0, $a0, 16
    /* 1E844 8002E044 03240400 */  sra        $a0, $a0, 16
    /* 1E848 8002E048 002C0500 */  sll        $a1, $a1, 16
    /* 1E84C 8002E04C 876D010C */  jal        func_8005B61C
    /* 1E850 8002E050 032C0500 */   sra       $a1, $a1, 16
    /* 1E854 8002E054 9B034392 */  lbu        $v1, 0x39B($s2)
    /* 1E858 8002E058 00000000 */  nop
    /* 1E85C 8002E05C 0A006014 */  bnez       $v1, .L8002E088
    /* 1E860 8002E060 21A84000 */   addu      $s5, $v0, $zero
    /* 1E864 8002E064 B0034292 */  lbu        $v0, 0x3B0($s2)
    /* 1E868 8002E068 00000000 */  nop
    /* 1E86C 8002E06C 06004010 */  beqz       $v0, .L8002E088
    /* 1E870 8002E070 00000000 */   nop
    /* 1E874 8002E074 CE034286 */  lh         $v0, 0x3CE($s2)
    /* 1E878 8002E078 00000000 */  nop
    /* 1E87C 8002E07C 40004228 */  slti       $v0, $v0, 0x40
    /* 1E880 8002E080 2D004014 */  bnez       $v0, .L8002E138
    /* 1E884 8002E084 0114622E */   sltiu     $v0, $s3, 0x1401
  .L8002E088:
    /* 1E888 8002E088 92034292 */  lbu        $v0, 0x392($s2)
    /* 1E88C 8002E08C 98034492 */  lbu        $a0, 0x398($s2)
    /* 1E890 8002E090 40180200 */  sll        $v1, $v0, 1
    /* 1E894 8002E094 21186200 */  addu       $v1, $v1, $v0
    /* 1E898 8002E098 80180300 */  sll        $v1, $v1, 2
    /* 1E89C 8002E09C 40110400 */  sll        $v0, $a0, 5
    /* 1E8A0 8002E0A0 21104400 */  addu       $v0, $v0, $a0
    /* 1E8A4 8002E0A4 C0100200 */  sll        $v0, $v0, 3
    /* 1E8A8 8002E0A8 21186200 */  addu       $v1, $v1, $v0
    /* 1E8AC 8002E0AC 1180013C */  lui        $at, %hi(D_8010C32E)
    /* 1E8B0 8002E0B0 21082300 */  addu       $at, $at, $v1
    /* 1E8B4 8002E0B4 2EC32494 */  lhu        $a0, %lo(D_8010C32E)($at)
    /* 1E8B8 8002E0B8 09001024 */  addiu      $s0, $zero, 0x9
    /* 1E8BC 8002E0BC 0F008430 */  andi       $a0, $a0, 0xF
    /* 1E8C0 8002E0C0 23200402 */  subu       $a0, $s0, $a0
    /* 1E8C4 8002E0C4 40200400 */  sll        $a0, $a0, 1
    /* 1E8C8 8002E0C8 08008424 */  addiu      $a0, $a0, 0x8
    /* 1E8CC 8002E0CC 00240400 */  sll        $a0, $a0, 16
    /* 1E8D0 8002E0D0 E871010C */  jal        func_8005C7A0
    /* 1E8D4 8002E0D4 03240400 */   sra       $a0, $a0, 16
    /* 1E8D8 8002E0D8 21A8A202 */  addu       $s5, $s5, $v0
    /* 1E8DC 8002E0DC C4034386 */  lh         $v1, 0x3C4($s2)
    /* 1E8E0 8002E0E0 01000224 */  addiu      $v0, $zero, 0x1
    /* 1E8E4 8002E0E4 14006214 */  bne        $v1, $v0, .L8002E138
    /* 1E8E8 8002E0E8 0114622E */   sltiu     $v0, $s3, 0x1401
    /* 1E8EC 8002E0EC 92034292 */  lbu        $v0, 0x392($s2)
    /* 1E8F0 8002E0F0 98034492 */  lbu        $a0, 0x398($s2)
    /* 1E8F4 8002E0F4 40180200 */  sll        $v1, $v0, 1
    /* 1E8F8 8002E0F8 21186200 */  addu       $v1, $v1, $v0
    /* 1E8FC 8002E0FC 80180300 */  sll        $v1, $v1, 2
    /* 1E900 8002E100 40110400 */  sll        $v0, $a0, 5
    /* 1E904 8002E104 21104400 */  addu       $v0, $v0, $a0
    /* 1E908 8002E108 C0100200 */  sll        $v0, $v0, 3
    /* 1E90C 8002E10C 21186200 */  addu       $v1, $v1, $v0
    /* 1E910 8002E110 1180013C */  lui        $at, %hi(D_8010C32E)
    /* 1E914 8002E114 21082300 */  addu       $at, $at, $v1
    /* 1E918 8002E118 2EC32494 */  lhu        $a0, %lo(D_8010C32E)($at)
    /* 1E91C 8002E11C 00000000 */  nop
    /* 1E920 8002E120 0F008430 */  andi       $a0, $a0, 0xF
    /* 1E924 8002E124 23200402 */  subu       $a0, $s0, $a0
    /* 1E928 8002E128 AE79000C */  jal        func_8001E6B8
    /* 1E92C 8002E12C 80210400 */   sll       $a0, $a0, 6
    /* 1E930 8002E130 21986202 */  addu       $s3, $s3, $v0
    /* 1E934 8002E134 0114622E */  sltiu      $v0, $s3, 0x1401
  .L8002E138:
    /* 1E938 8002E138 04004014 */  bnez       $v0, .L8002E14C
    /* 1E93C 8002E13C 00FC6426 */   addiu     $a0, $s3, -0x400
    /* 1E940 8002E140 AE79000C */  jal        func_8001E6B8
    /* 1E944 8002E144 C2200400 */   srl       $a0, $a0, 3
    /* 1E948 8002E148 21986202 */  addu       $s3, $s3, $v0
  .L8002E14C:
    /* 1E94C 8002E14C 21204002 */  addu       $a0, $s2, $zero
    /* 1E950 8002E150 FF00A532 */  andi       $a1, $s5, 0xFF
    /* 1E954 8002E154 2CBB000C */  jal        func_8002ECB0
    /* 1E958 8002E158 00066626 */   addiu     $a2, $s3, 0x600
    /* 1E95C 8002E15C 94034496 */  lhu        $a0, 0x394($s2)
    /* 1E960 8002E160 2EBA033C */  lui        $v1, (0xBA2E8BA3 >> 16)
    /* 1E964 8002E164 A38B6334 */  ori        $v1, $v1, (0xBA2E8BA3 & 0xFFFF)
    /* 1E968 8002E168 19008300 */  multu      $a0, $v1
    /* 1E96C 8002E16C 21A84000 */  addu       $s5, $v0, $zero
    /* 1E970 8002E170 CE034396 */  lhu        $v1, 0x3CE($s2)
    /* 1E974 8002E174 10400000 */  mfhi       $t0
    /* 1E978 8002E178 02110800 */  srl        $v0, $t0, 4
    /* 1E97C 8002E17C FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 1E980 8002E180 0C80013C */  lui        $at, %hi(D_800C6C6C)
    /* 1E984 8002E184 21082200 */  addu       $at, $at, $v0
    /* 1E988 8002E188 6C6C2290 */  lbu        $v0, %lo(D_800C6C6C)($at)
    /* 1E98C 8002E18C 001C0300 */  sll        $v1, $v1, 16
    /* 1E990 8002E190 C8005124 */  addiu      $s1, $v0, 0xC8
    /* 1E994 8002E194 03140300 */  sra        $v0, $v1, 16
    /* 1E998 8002E198 20004228 */  slti       $v0, $v0, 0x20
    /* 1E99C 8002E19C 02004014 */  bnez       $v0, .L8002E1A8
    /* 1E9A0 8002E1A0 83140300 */   sra       $v0, $v1, 18
    /* 1E9A4 8002E1A4 23882202 */  subu       $s1, $s1, $v0
  .L8002E1A8:
    /* 1E9A8 8002E1A8 B2BD000C */  jal        func_8002F6C8
    /* 1E9AC 8002E1AC 21206002 */   addu      $a0, $s3, $zero
    /* 1E9B0 8002E1B0 09001E24 */  addiu      $fp, $zero, 0x9
    /* 1E9B4 8002E1B4 92034392 */  lbu        $v1, 0x392($s2)
    /* 1E9B8 8002E1B8 98034592 */  lbu        $a1, 0x398($s2)
    /* 1E9BC 8002E1BC 40200300 */  sll        $a0, $v1, 1
    /* 1E9C0 8002E1C0 21208300 */  addu       $a0, $a0, $v1
    /* 1E9C4 8002E1C4 80200400 */  sll        $a0, $a0, 2
    /* 1E9C8 8002E1C8 40190500 */  sll        $v1, $a1, 5
    /* 1E9CC 8002E1CC 21186500 */  addu       $v1, $v1, $a1
    /* 1E9D0 8002E1D0 C0180300 */  sll        $v1, $v1, 3
    /* 1E9D4 8002E1D4 21208300 */  addu       $a0, $a0, $v1
    /* 1E9D8 8002E1D8 1180013C */  lui        $at, %hi(D_8010C32E)
    /* 1E9DC 8002E1DC 21082400 */  addu       $at, $at, $a0
    /* 1E9E0 8002E1E0 2EC32494 */  lhu        $a0, %lo(D_8010C32E)($at)
    /* 1E9E4 8002E1E4 21804000 */  addu       $s0, $v0, $zero
    /* 1E9E8 8002E1E8 0F008430 */  andi       $a0, $a0, 0xF
    /* 1E9EC 8002E1EC AE79000C */  jal        func_8001E6B8
    /* 1E9F0 8002E1F0 2320C403 */   subu      $a0, $fp, $a0
    /* 1E9F4 8002E1F4 9B034392 */  lbu        $v1, 0x39B($s2)
    /* 1E9F8 8002E1F8 00000000 */  nop
    /* 1E9FC 8002E1FC 0A006014 */  bnez       $v1, .L8002E228
    /* 1EA00 8002E200 21B80202 */   addu      $s7, $s0, $v0
    /* 1EA04 8002E204 B0034292 */  lbu        $v0, 0x3B0($s2)
    /* 1EA08 8002E208 00000000 */  nop
    /* 1EA0C 8002E20C 06004010 */  beqz       $v0, .L8002E228
    /* 1EA10 8002E210 00000000 */   nop
    /* 1EA14 8002E214 CE034286 */  lh         $v0, 0x3CE($s2)
    /* 1EA18 8002E218 00000000 */  nop
    /* 1EA1C 8002E21C 38004228 */  slti       $v0, $v0, 0x38
    /* 1EA20 8002E220 1B004014 */  bnez       $v0, .L8002E290
    /* 1EA24 8002E224 00000000 */   nop
  .L8002E228:
    /* 1EA28 8002E228 92034292 */  lbu        $v0, 0x392($s2)
    /* 1EA2C 8002E22C 98034492 */  lbu        $a0, 0x398($s2)
    /* 1EA30 8002E230 40180200 */  sll        $v1, $v0, 1
    /* 1EA34 8002E234 21186200 */  addu       $v1, $v1, $v0
    /* 1EA38 8002E238 80180300 */  sll        $v1, $v1, 2
    /* 1EA3C 8002E23C 40110400 */  sll        $v0, $a0, 5
    /* 1EA40 8002E240 21104400 */  addu       $v0, $v0, $a0
    /* 1EA44 8002E244 C0100200 */  sll        $v0, $v0, 3
    /* 1EA48 8002E248 21186200 */  addu       $v1, $v1, $v0
    /* 1EA4C 8002E24C 1180013C */  lui        $at, %hi(D_8010C32E)
    /* 1EA50 8002E250 21082300 */  addu       $at, $at, $v1
    /* 1EA54 8002E254 2EC32394 */  lhu        $v1, %lo(D_8010C32E)($at)
    /* 1EA58 8002E258 09000224 */  addiu      $v0, $zero, 0x9
    /* 1EA5C 8002E25C 0F006330 */  andi       $v1, $v1, 0xF
    /* 1EA60 8002E260 23104300 */  subu       $v0, $v0, $v1
    /* 1EA64 8002E264 40200200 */  sll        $a0, $v0, 1
    /* 1EA68 8002E268 21208200 */  addu       $a0, $a0, $v0
    /* 1EA6C 8002E26C 40200400 */  sll        $a0, $a0, 1
    /* 1EA70 8002E270 AE79000C */  jal        func_8001E6B8
    /* 1EA74 8002E274 04008424 */   addiu     $a0, $a0, 0x4
    /* 1EA78 8002E278 04000324 */  addiu      $v1, $zero, 0x4
    /* 1EA7C 8002E27C 23806200 */  subu       $s0, $v1, $v0
    /* 1EA80 8002E280 AE79000C */  jal        func_8001E6B8
    /* 1EA84 8002E284 03000424 */   addiu     $a0, $zero, 0x3
    /* 1EA88 8002E288 B9B80008 */  j          .L8002E2E4
    /* 1EA8C 8002E28C 21B8E202 */   addu      $s7, $s7, $v0
  .L8002E290:
    /* 1EA90 8002E290 92034292 */  lbu        $v0, 0x392($s2)
    /* 1EA94 8002E294 98034492 */  lbu        $a0, 0x398($s2)
    /* 1EA98 8002E298 40180200 */  sll        $v1, $v0, 1
    /* 1EA9C 8002E29C 21186200 */  addu       $v1, $v1, $v0
    /* 1EAA0 8002E2A0 80180300 */  sll        $v1, $v1, 2
    /* 1EAA4 8002E2A4 40110400 */  sll        $v0, $a0, 5
    /* 1EAA8 8002E2A8 21104400 */  addu       $v0, $v0, $a0
    /* 1EAAC 8002E2AC C0100200 */  sll        $v0, $v0, 3
    /* 1EAB0 8002E2B0 21186200 */  addu       $v1, $v1, $v0
    /* 1EAB4 8002E2B4 1180013C */  lui        $at, %hi(D_8010C32E)
    /* 1EAB8 8002E2B8 21082300 */  addu       $at, $at, $v1
    /* 1EABC 8002E2BC 2EC32294 */  lhu        $v0, %lo(D_8010C32E)($at)
    /* 1EAC0 8002E2C0 00000000 */  nop
    /* 1EAC4 8002E2C4 0F004230 */  andi       $v0, $v0, 0xF
    /* 1EAC8 8002E2C8 2310C203 */  subu       $v0, $fp, $v0
    /* 1EACC 8002E2CC 40200200 */  sll        $a0, $v0, 1
    /* 1EAD0 8002E2D0 21208200 */  addu       $a0, $a0, $v0
    /* 1EAD4 8002E2D4 AE79000C */  jal        func_8001E6B8
    /* 1EAD8 8002E2D8 02008424 */   addiu     $a0, $a0, 0x2
    /* 1EADC 8002E2DC 04000324 */  addiu      $v1, $zero, 0x4
    /* 1EAE0 8002E2E0 23806200 */  subu       $s0, $v1, $v0
  .L8002E2E4:
    /* 1EAE4 8002E2E4 21208002 */  addu       $a0, $s4, $zero
    /* 1EAE8 8002E2E8 FF00A532 */  andi       $a1, $s5, 0xFF
    /* 1EAEC 8002E2EC 00321100 */  sll        $a2, $s1, 8
    /* 1EAF0 8002E2F0 00480724 */  addiu      $a3, $zero, 0x4800
    /* 1EAF4 8002E2F4 B4038392 */  lbu        $v1, 0x3B4($s4)
    /* 1EAF8 8002E2F8 40000224 */  addiu      $v0, $zero, 0x40
    /* 1EAFC 8002E2FC 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1EB00 8002E300 00141000 */  sll        $v0, $s0, 16
    /* 1EB04 8002E304 03140200 */  sra        $v0, $v0, 16
    /* 1EB08 8002E308 1800B3AF */  sw         $s3, 0x18($sp)
    /* 1EB0C 8002E30C 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 1EB10 8002E310 2000B7AF */  sw         $s7, 0x20($sp)
    /* 1EB14 8002E314 ACBC000C */  jal        func_8002F2B0
    /* 1EB18 8002E318 1000A3AF */   sw        $v1, 0x10($sp)
    /* 1EB1C 8002E31C 21F04000 */  addu       $fp, $v0, $zero
    /* 1EB20 8002E320 FE00C396 */  lhu        $v1, 0xFE($s6)
    /* 1EB24 8002E324 99034292 */  lbu        $v0, 0x399($s2)
    /* 1EB28 8002E328 001C0300 */  sll        $v1, $v1, 16
    /* 1EB2C 8002E32C 03004014 */  bnez       $v0, .L8002E33C
    /* 1EB30 8002E330 031C0300 */   sra       $v1, $v1, 16
    /* 1EB34 8002E334 D0B80008 */  j          .L8002E340
    /* 1EB38 8002E338 C0FF6224 */   addiu     $v0, $v1, -0x40
  .L8002E33C:
    /* 1EB3C 8002E33C 40006224 */  addiu      $v0, $v1, 0x40
  .L8002E340:
    /* 1EB40 8002E340 002C0200 */  sll        $a1, $v0, 16
    /* 1EB44 8002E344 032C0500 */  sra        $a1, $a1, 16
    /* 1EB48 8002E348 0001C696 */  lhu        $a2, 0x100($s6)
    /* 1EB4C 8002E34C 21380000 */  addu       $a3, $zero, $zero
    /* 1EB50 8002E350 FE00C2A6 */  sh         $v0, 0xFE($s6)
    /* 1EB54 8002E354 99034492 */  lbu        $a0, 0x399($s2)
    /* 1EB58 8002E358 00340600 */  sll        $a2, $a2, 16
    /* 1EB5C 8002E35C B19D010C */  jal        func_800676C4
    /* 1EB60 8002E360 03340600 */   sra       $a2, $a2, 16
    /* 1EB64 8002E364 6527010C */  jal        func_80049D94
    /* 1EB68 8002E368 21204002 */   addu      $a0, $s2, $zero
    /* 1EB6C 8002E36C FF004230 */  andi       $v0, $v0, 0xFF
    /* 1EB70 8002E370 AAAA033C */  lui        $v1, (0xAAAAAAAB >> 16)
    /* 1EB74 8002E374 ABAA6334 */  ori        $v1, $v1, (0xAAAAAAAB & 0xFFFF)
    /* 1EB78 8002E378 19004300 */  multu      $v0, $v1
    /* 1EB7C 8002E37C 10400000 */  mfhi       $t0
    /* 1EB80 8002E380 02210800 */  srl        $a0, $t0, 4
    /* 1EB84 8002E384 40180400 */  sll        $v1, $a0, 1
    /* 1EB88 8002E388 21186400 */  addu       $v1, $v1, $a0
    /* 1EB8C 8002E38C C0180300 */  sll        $v1, $v1, 3
    /* 1EB90 8002E390 23104300 */  subu       $v0, $v0, $v1
    /* 1EB94 8002E394 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1EB98 8002E398 40190200 */  sll        $v1, $v0, 5
    /* 1EB9C 8002E39C 23186200 */  subu       $v1, $v1, $v0
    /* 1EBA0 8002E3A0 80180300 */  sll        $v1, $v1, 2
    /* 1EBA4 8002E3A4 21186200 */  addu       $v1, $v1, $v0
    /* 1EBA8 8002E3A8 C0180300 */  sll        $v1, $v1, 3
    /* 1EBAC 8002E3AC 1080083C */  lui        $t0, %hi(D_800FF748)
    /* 1EBB0 8002E3B0 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* 1EBB4 8002E3B4 21800301 */  addu       $s0, $t0, $v1
    /* 1EBB8 8002E3B8 09019012 */  beq        $s4, $s0, .L8002E7E0
    /* 1EBBC 8002E3BC 00000000 */   nop
    /* 1EBC0 8002E3C0 1B4B010C */  jal        func_80052C6C
    /* 1EBC4 8002E3C4 21200002 */   addu      $a0, $s0, $zero
    /* 1EBC8 8002E3C8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1EBCC 8002E3CC 04014014 */  bnez       $v0, .L8002E7E0
    /* 1EBD0 8002E3D0 1D000224 */   addiu     $v0, $zero, 0x1D
  .L8002E3D4:
    /* 1EBD4 8002E3D4 960302A2 */  sb         $v0, 0x396($s0)
    /* 1EBD8 8002E3D8 F8B90008 */  j          .L8002E7E0
    /* 1EBDC 8002E3DC 970300A2 */   sb        $zero, 0x397($s0)
  jlabel .L8002E3E0
    /* 1EBE0 8002E3E0 CA035386 */  lh         $s3, 0x3CA($s2)
    /* 1EBE4 8002E3E4 CC035592 */  lbu        $s5, 0x3CC($s2)
    /* 1EBE8 8002E3E8 AE79000C */  jal        func_8001E6B8
    /* 1EBEC 8002E3EC 00180424 */   addiu     $a0, $zero, 0x1800
    /* 1EBF0 8002E3F0 00484524 */  addiu      $a1, $v0, 0x4800
    /* 1EBF4 8002E3F4 CFBA000C */  jal        func_8002EB3C
    /* 1EBF8 8002E3F8 21206002 */   addu      $a0, $s3, $zero
    /* 1EBFC 8002E3FC FF005E30 */  andi       $fp, $v0, 0xFF
    /* 1EC00 8002E400 B2BD000C */  jal        func_8002F6C8
    /* 1EC04 8002E404 21206002 */   addu      $a0, $s3, $zero
    /* 1EC08 8002E408 21B84000 */  addu       $s7, $v0, $zero
    /* 1EC0C 8002E40C 21380000 */  addu       $a3, $zero, $zero
    /* 1EC10 8002E410 FE00C596 */  lhu        $a1, 0xFE($s6)
    /* 1EC14 8002E414 99034492 */  lbu        $a0, 0x399($s2)
    /* 1EC18 8002E418 0001C696 */  lhu        $a2, 0x100($s6)
    /* 1EC1C 8002E41C 002C0500 */  sll        $a1, $a1, 16
    /* 1EC20 8002E420 032C0500 */  sra        $a1, $a1, 16
    /* 1EC24 8002E424 00340600 */  sll        $a2, $a2, 16
    /* 1EC28 8002E428 B19D010C */  jal        func_800676C4
    /* 1EC2C 8002E42C 03340600 */   sra       $a2, $a2, 16
    /* 1EC30 8002E430 6527010C */  jal        func_80049D94
    /* 1EC34 8002E434 21204002 */   addu      $a0, $s2, $zero
    /* 1EC38 8002E438 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1EC3C 8002E43C AAAA103C */  lui        $s0, (0xAAAAAAAB >> 16)
    /* 1EC40 8002E440 ABAA1036 */  ori        $s0, $s0, (0xAAAAAAAB & 0xFFFF)
    /* 1EC44 8002E444 19005000 */  multu      $v0, $s0
    /* 1EC48 8002E448 10400000 */  mfhi       $t0
    /* 1EC4C 8002E44C 02210800 */  srl        $a0, $t0, 4
    /* 1EC50 8002E450 40180400 */  sll        $v1, $a0, 1
    /* 1EC54 8002E454 21186400 */  addu       $v1, $v1, $a0
    /* 1EC58 8002E458 C0180300 */  sll        $v1, $v1, 3
    /* 1EC5C 8002E45C 23104300 */  subu       $v0, $v0, $v1
    /* 1EC60 8002E460 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1EC64 8002E464 40190200 */  sll        $v1, $v0, 5
    /* 1EC68 8002E468 23186200 */  subu       $v1, $v1, $v0
    /* 1EC6C 8002E46C 80180300 */  sll        $v1, $v1, 2
    /* 1EC70 8002E470 21186200 */  addu       $v1, $v1, $v0
    /* 1EC74 8002E474 C0180300 */  sll        $v1, $v1, 3
    /* 1EC78 8002E478 1080083C */  lui        $t0, %hi(D_800FF748)
    /* 1EC7C 8002E47C 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* 1EC80 8002E480 21A00301 */  addu       $s4, $t0, $v1
    /* 1EC84 8002E484 644B010C */  jal        func_80052D90
    /* 1EC88 8002E488 21208002 */   addu      $a0, $s4, $zero
    /* 1EC8C 8002E48C FF004230 */  andi       $v0, $v0, 0xFF
    /* 1EC90 8002E490 0A004014 */  bnez       $v0, .L8002E4BC
    /* 1EC94 8002E494 21300000 */   addu      $a2, $zero, $zero
    /* 1EC98 8002E498 21208002 */  addu       $a0, $s4, $zero
    /* 1EC9C 8002E49C AE44010C */  jal        func_800512B8
    /* 1ECA0 8002E4A0 01000524 */   addiu     $a1, $zero, 0x1
    /* 1ECA4 8002E4A4 1B000224 */  addiu      $v0, $zero, 0x1B
    /* 1ECA8 8002E4A8 960382A2 */  sb         $v0, 0x396($s4)
    /* 1ECAC 8002E4AC 10000224 */  addiu      $v0, $zero, 0x10
    /* 1ECB0 8002E4B0 970380A2 */  sb         $zero, 0x397($s4)
    /* 1ECB4 8002E4B4 C20382A6 */  sh         $v0, 0x3C2($s4)
    /* 1ECB8 8002E4B8 21300000 */  addu       $a2, $zero, $zero
  .L8002E4BC:
    /* 1ECBC 8002E4BC 21380000 */  addu       $a3, $zero, $zero
    /* 1ECC0 8002E4C0 99034492 */  lbu        $a0, 0x399($s2)
    /* 1ECC4 8002E4C4 FE00C596 */  lhu        $a1, 0xFE($s6)
    /* 1ECC8 8002E4C8 01008438 */  xori       $a0, $a0, 0x1
    /* 1ECCC 8002E4CC 002C0500 */  sll        $a1, $a1, 16
    /* 1ECD0 8002E4D0 B19D010C */  jal        func_800676C4
    /* 1ECD4 8002E4D4 032C0500 */   sra       $a1, $a1, 16
    /* 1ECD8 8002E4D8 99034292 */  lbu        $v0, 0x399($s2)
    /* 1ECDC 8002E4DC 00000000 */  nop
    /* 1ECE0 8002E4E0 01004238 */  xori       $v0, $v0, 0x1
    /* 1ECE4 8002E4E4 40100200 */  sll        $v0, $v0, 1
    /* 1ECE8 8002E4E8 2110C202 */  addu       $v0, $s6, $v0
    /* 1ECEC 8002E4EC 22034390 */  lbu        $v1, 0x322($v0)
    /* 1ECF0 8002E4F0 00000000 */  nop
    /* 1ECF4 8002E4F4 19007000 */  multu      $v1, $s0
    /* 1ECF8 8002E4F8 10400000 */  mfhi       $t0
    /* 1ECFC 8002E4FC 02210800 */  srl        $a0, $t0, 4
    /* 1ED00 8002E500 40100400 */  sll        $v0, $a0, 1
    /* 1ED04 8002E504 21104400 */  addu       $v0, $v0, $a0
    /* 1ED08 8002E508 C0100200 */  sll        $v0, $v0, 3
    /* 1ED0C 8002E50C 23186200 */  subu       $v1, $v1, $v0
    /* 1ED10 8002E510 FF006330 */  andi       $v1, $v1, 0xFF
    /* 1ED14 8002E514 40110300 */  sll        $v0, $v1, 5
    /* 1ED18 8002E518 23104300 */  subu       $v0, $v0, $v1
    /* 1ED1C 8002E51C 80100200 */  sll        $v0, $v0, 2
    /* 1ED20 8002E520 21104300 */  addu       $v0, $v0, $v1
    /* 1ED24 8002E524 C0100200 */  sll        $v0, $v0, 3
    /* 1ED28 8002E528 1080083C */  lui        $t0, %hi(D_800FF748)
    /* 1ED2C 8002E52C 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* 1ED30 8002E530 21800201 */  addu       $s0, $t0, $v0
    /* 1ED34 8002E534 644B010C */  jal        func_80052D90
    /* 1ED38 8002E538 21200002 */   addu      $a0, $s0, $zero
    /* 1ED3C 8002E53C FF004230 */  andi       $v0, $v0, 0xFF
    /* 1ED40 8002E540 A7004014 */  bnez       $v0, .L8002E7E0
    /* 1ED44 8002E544 1B000224 */   addiu     $v0, $zero, 0x1B
    /* 1ED48 8002E548 960302A2 */  sb         $v0, 0x396($s0)
    /* 1ED4C 8002E54C 01000224 */  addiu      $v0, $zero, 0x1
    /* 1ED50 8002E550 970300A2 */  sb         $zero, 0x397($s0)
    /* 1ED54 8002E554 F8B90008 */  j          .L8002E7E0
    /* 1ED58 8002E558 C20302A6 */   sh        $v0, 0x3C2($s0)
  jlabel .L8002E55C
    /* 1ED5C 8002E55C 8E034396 */  lhu        $v1, 0x38E($s2)
    /* 1ED60 8002E560 13000224 */  addiu      $v0, $zero, 0x13
    /* 1ED64 8002E564 04006214 */  bne        $v1, $v0, .L8002E578
    /* 1ED68 8002E568 78001E24 */   addiu     $fp, $zero, 0x78
    /* 1ED6C 8002E56C 00081324 */  addiu      $s3, $zero, 0x800
    /* 1ED70 8002E570 5FB90008 */  j          .L8002E57C
    /* 1ED74 8002E574 40001E24 */   addiu     $fp, $zero, 0x40
  .L8002E578:
    /* 1ED78 8002E578 00101324 */  addiu      $s3, $zero, 0x1000
  .L8002E57C:
    /* 1ED7C 8002E57C 99034292 */  lbu        $v0, 0x399($s2)
    /* 1ED80 8002E580 02004386 */  lh         $v1, 0x2($s2)
    /* 1ED84 8002E584 06004010 */  beqz       $v0, .L8002E5A0
    /* 1ED88 8002E588 23100300 */   negu      $v0, $v1
    /* 1ED8C 8002E58C 10D74228 */  slti       $v0, $v0, -0x28F0
    /* 1ED90 8002E590 4B004010 */  beqz       $v0, .L8002E6C0
    /* 1ED94 8002E594 00000000 */   nop
    /* 1ED98 8002E598 6BB90008 */  j          .L8002E5AC
    /* 1ED9C 8002E59C 00000000 */   nop
  .L8002E5A0:
    /* 1EDA0 8002E5A0 10D76228 */  slti       $v0, $v1, -0x28F0
    /* 1EDA4 8002E5A4 46004010 */  beqz       $v0, .L8002E6C0
    /* 1EDA8 8002E5A8 00000000 */   nop
  .L8002E5AC:
    /* 1EDAC 8002E5AC 06004586 */  lh         $a1, 0x6($s2)
    /* 1EDB0 8002E5B0 00000000 */  nop
    /* 1EDB4 8002E5B4 0200A104 */  bgez       $a1, .L8002E5C0
    /* 1EDB8 8002E5B8 2110A000 */   addu      $v0, $a1, $zero
    /* 1EDBC 8002E5BC 23100200 */  negu       $v0, $v0
  .L8002E5C0:
    /* 1EDC0 8002E5C0 F4124228 */  slti       $v0, $v0, 0x12F4
    /* 1EDC4 8002E5C4 3E004010 */  beqz       $v0, .L8002E6C0
    /* 1EDC8 8002E5C8 00000000 */   nop
    /* 1EDCC 8002E5CC 99034292 */  lbu        $v0, 0x399($s2)
    /* 1EDD0 8002E5D0 02004486 */  lh         $a0, 0x2($s2)
    /* 1EDD4 8002E5D4 02004014 */  bnez       $v0, .L8002E5E0
    /* 1EDD8 8002E5D8 20330624 */   addiu     $a2, $zero, 0x3320
    /* 1EDDC 8002E5DC E0CC0624 */  addiu      $a2, $zero, -0x3320
  .L8002E5E0:
    /* 1EDE0 8002E5E0 DB6C010C */  jal        func_8005B36C
    /* 1EDE4 8002E5E4 21380000 */   addu      $a3, $zero, $zero
    /* 1EDE8 8002E5E8 CC034392 */  lbu        $v1, 0x3CC($s2)
    /* 1EDEC 8002E5EC 00000000 */  nop
    /* 1EDF0 8002E5F0 23104300 */  subu       $v0, $v0, $v1
    /* 1EDF4 8002E5F4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1EDF8 8002E5F8 8100422C */  sltiu      $v0, $v0, 0x81
    /* 1EDFC 8002E5FC 12004014 */  bnez       $v0, .L8002E648
    /* 1EE00 8002E600 00000000 */   nop
    /* 1EE04 8002E604 02004486 */  lh         $a0, 0x2($s2)
    /* 1EE08 8002E608 99034292 */  lbu        $v0, 0x399($s2)
    /* 1EE0C 8002E60C 06004586 */  lh         $a1, 0x6($s2)
    /* 1EE10 8002E610 02004014 */  bnez       $v0, .L8002E61C
    /* 1EE14 8002E614 20330624 */   addiu     $a2, $zero, 0x3320
    /* 1EE18 8002E618 E0CC0624 */  addiu      $a2, $zero, -0x3320
  .L8002E61C:
    /* 1EE1C 8002E61C DB6C010C */  jal        func_8005B36C
    /* 1EE20 8002E620 21380000 */   addu      $a3, $zero, $zero
    /* 1EE24 8002E624 CC034392 */  lbu        $v1, 0x3CC($s2)
    /* 1EE28 8002E628 00000000 */  nop
    /* 1EE2C 8002E62C 23186200 */  subu       $v1, $v1, $v0
    /* 1EE30 8002E630 FF006330 */  andi       $v1, $v1, 0xFF
    /* 1EE34 8002E634 21006328 */  slti       $v1, $v1, 0x21
    /* 1EE38 8002E638 21006010 */  beqz       $v1, .L8002E6C0
    /* 1EE3C 8002E63C 00000000 */   nop
    /* 1EE40 8002E640 A1B90008 */  j          .L8002E684
    /* 1EE44 8002E644 00000000 */   nop
  .L8002E648:
    /* 1EE48 8002E648 02004486 */  lh         $a0, 0x2($s2)
    /* 1EE4C 8002E64C 99034292 */  lbu        $v0, 0x399($s2)
    /* 1EE50 8002E650 06004586 */  lh         $a1, 0x6($s2)
    /* 1EE54 8002E654 02004014 */  bnez       $v0, .L8002E660
    /* 1EE58 8002E658 20330624 */   addiu     $a2, $zero, 0x3320
    /* 1EE5C 8002E65C E0CC0624 */  addiu      $a2, $zero, -0x3320
  .L8002E660:
    /* 1EE60 8002E660 DB6C010C */  jal        func_8005B36C
    /* 1EE64 8002E664 21380000 */   addu      $a3, $zero, $zero
    /* 1EE68 8002E668 CC034392 */  lbu        $v1, 0x3CC($s2)
    /* 1EE6C 8002E66C 00000000 */  nop
    /* 1EE70 8002E670 23104300 */  subu       $v0, $v0, $v1
    /* 1EE74 8002E674 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1EE78 8002E678 21004228 */  slti       $v0, $v0, 0x21
    /* 1EE7C 8002E67C 10004010 */  beqz       $v0, .L8002E6C0
    /* 1EE80 8002E680 00000000 */   nop
  .L8002E684:
    /* 1EE84 8002E684 06004586 */  lh         $a1, 0x6($s2)
    /* 1EE88 8002E688 00000000 */  nop
    /* 1EE8C 8002E68C 0200A104 */  bgez       $a1, .L8002E698
    /* 1EE90 8002E690 00081024 */   addiu     $s0, $zero, 0x800
    /* 1EE94 8002E694 00F81024 */  addiu      $s0, $zero, -0x800
  .L8002E698:
    /* 1EE98 8002E698 99034292 */  lbu        $v0, 0x399($s2)
    /* 1EE9C 8002E69C 02004486 */  lh         $a0, 0x2($s2)
    /* 1EEA0 8002E6A0 02004014 */  bnez       $v0, .L8002E6AC
    /* 1EEA4 8002E6A4 20330624 */   addiu     $a2, $zero, 0x3320
    /* 1EEA8 8002E6A8 E0CC0624 */  addiu      $a2, $zero, -0x3320
  .L8002E6AC:
    /* 1EEAC 8002E6AC 003C1000 */  sll        $a3, $s0, 16
    /* 1EEB0 8002E6B0 DB6C010C */  jal        func_8005B36C
    /* 1EEB4 8002E6B4 033C0700 */   sra       $a3, $a3, 16
    /* 1EEB8 8002E6B8 C5B90008 */  j          .L8002E714
    /* 1EEBC 8002E6BC 21A84000 */   addu      $s5, $v0, $zero
  .L8002E6C0:
    /* 1EEC0 8002E6C0 8E034396 */  lhu        $v1, 0x38E($s2)
    /* 1EEC4 8002E6C4 13000224 */  addiu      $v0, $zero, 0x13
    /* 1EEC8 8002E6C8 04006214 */  bne        $v1, $v0, .L8002E6DC
    /* 1EECC 8002E6CC 01000324 */   addiu     $v1, $zero, 0x1
    /* 1EED0 8002E6D0 AA034292 */  lbu        $v0, 0x3AA($s2)
    /* 1EED4 8002E6D4 C5B90008 */  j          .L8002E714
    /* 1EED8 8002E6D8 80FF5524 */   addiu     $s5, $v0, -0x80
  .L8002E6DC:
    /* 1EEDC 8002E6DC 9A02C292 */  lbu        $v0, 0x29A($s6)
    /* 1EEE0 8002E6E0 00000000 */  nop
    /* 1EEE4 8002E6E4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1EEE8 8002E6E8 07004314 */  bne        $v0, $v1, .L8002E708
    /* 1EEEC 8002E6EC 00000000 */   nop
    /* 1EEF0 8002E6F0 21204002 */  addu       $a0, $s2, $zero
    /* 1EEF4 8002E6F4 CC034592 */  lbu        $a1, 0x3CC($s2)
    /* 1EEF8 8002E6F8 2CBB000C */  jal        func_8002ECB0
    /* 1EEFC 8002E6FC 21306002 */   addu      $a2, $s3, $zero
    /* 1EF00 8002E700 C5B90008 */  j          .L8002E714
    /* 1EF04 8002E704 21A84000 */   addu      $s5, $v0, $zero
  .L8002E708:
    /* 1EF08 8002E708 F402C28E */  lw         $v0, 0x2F4($s6)
    /* 1EF0C 8002E70C 00000000 */  nop
    /* 1EF10 8002E710 A4035590 */  lbu        $s5, 0x3A4($v0)
  .L8002E714:
    /* 1EF14 8002E714 B2BD000C */  jal        func_8002F6C8
    /* 1EF18 8002E718 21206002 */   addu      $a0, $s3, $zero
    /* 1EF1C 8002E71C 21B84000 */  addu       $s7, $v0, $zero
    /* 1EF20 8002E720 FF00B032 */  andi       $s0, $s5, 0xFF
    /* 1EF24 8002E724 21200002 */  addu       $a0, $s0, $zero
    /* 1EF28 8002E728 A579000C */  jal        func_8001E694
    /* 1EF2C 8002E72C 21286002 */   addu      $a1, $s3, $zero
    /* 1EF30 8002E730 21200002 */  addu       $a0, $s0, $zero
    /* 1EF34 8002E734 02004396 */  lhu        $v1, 0x2($s2)
    /* 1EF38 8002E738 21286002 */  addu       $a1, $s3, $zero
    /* 1EF3C 8002E73C 6979000C */  jal        func_8001E5A4
    /* 1EF40 8002E740 21886200 */   addu      $s1, $v1, $v0
    /* 1EF44 8002E744 06004696 */  lhu        $a2, 0x6($s2)
    /* 1EF48 8002E748 21380000 */  addu       $a3, $zero, $zero
    /* 1EF4C 8002E74C FE00D1A6 */  sh         $s1, 0xFE($s6)
    /* 1EF50 8002E750 FE00C596 */  lhu        $a1, 0xFE($s6)
    /* 1EF54 8002E754 2130C200 */  addu       $a2, $a2, $v0
    /* 1EF58 8002E758 2180C000 */  addu       $s0, $a2, $zero
    /* 1EF5C 8002E75C 002C0500 */  sll        $a1, $a1, 16
    /* 1EF60 8002E760 032C0500 */  sra        $a1, $a1, 16
    /* 1EF64 8002E764 00340600 */  sll        $a2, $a2, 16
    /* 1EF68 8002E768 0001D0A6 */  sh         $s0, 0x100($s6)
    /* 1EF6C 8002E76C 99034492 */  lbu        $a0, 0x399($s2)
    /* 1EF70 8002E770 B19D010C */  jal        func_800676C4
    /* 1EF74 8002E774 03340600 */   sra       $a2, $a2, 16
    /* 1EF78 8002E778 6527010C */  jal        func_80049D94
    /* 1EF7C 8002E77C 21204002 */   addu      $a0, $s2, $zero
    /* 1EF80 8002E780 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1EF84 8002E784 AAAA033C */  lui        $v1, (0xAAAAAAAB >> 16)
    /* 1EF88 8002E788 ABAA6334 */  ori        $v1, $v1, (0xAAAAAAAB & 0xFFFF)
    /* 1EF8C 8002E78C 19004300 */  multu      $v0, $v1
    /* 1EF90 8002E790 10400000 */  mfhi       $t0
    /* 1EF94 8002E794 02210800 */  srl        $a0, $t0, 4
    /* 1EF98 8002E798 40180400 */  sll        $v1, $a0, 1
    /* 1EF9C 8002E79C 21186400 */  addu       $v1, $v1, $a0
    /* 1EFA0 8002E7A0 C0180300 */  sll        $v1, $v1, 3
    /* 1EFA4 8002E7A4 23104300 */  subu       $v0, $v0, $v1
    /* 1EFA8 8002E7A8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1EFAC 8002E7AC 40190200 */  sll        $v1, $v0, 5
    /* 1EFB0 8002E7B0 23186200 */  subu       $v1, $v1, $v0
    /* 1EFB4 8002E7B4 80180300 */  sll        $v1, $v1, 2
    /* 1EFB8 8002E7B8 21186200 */  addu       $v1, $v1, $v0
    /* 1EFBC 8002E7BC C0180300 */  sll        $v1, $v1, 3
    /* 1EFC0 8002E7C0 1080083C */  lui        $t0, %hi(D_800FF748)
    /* 1EFC4 8002E7C4 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* 1EFC8 8002E7C8 21A00301 */  addu       $s4, $t0, $v1
    /* 1EFCC 8002E7CC 1B000224 */  addiu      $v0, $zero, 0x1B
    /* 1EFD0 8002E7D0 960382A2 */  sb         $v0, 0x396($s4)
    /* 1EFD4 8002E7D4 01000224 */  addiu      $v0, $zero, 0x1
    /* 1EFD8 8002E7D8 970380A2 */  sb         $zero, 0x397($s4)
    /* 1EFDC 8002E7DC C20382A6 */  sh         $v0, 0x3C2($s4)
  .L8002E7E0:
    /* 1EFE0 8002E7E0 99034292 */  lbu        $v0, 0x399($s2)
    /* 1EFE4 8002E7E4 00000000 */  nop
    /* 1EFE8 8002E7E8 01004238 */  xori       $v0, $v0, 0x1
    /* 1EFEC 8002E7EC FF004230 */  andi       $v0, $v0, 0xFF
    /* 1EFF0 8002E7F0 1C03C2A6 */  sh         $v0, (0x1F80031C & 0xFFFF)($s6)
    /* 1EFF4 8002E7F4 B0034292 */  lbu        $v0, 0x3B0($s2)
    /* 1EFF8 8002E7F8 00000000 */  nop
    /* 1EFFC 8002E7FC 16004014 */  bnez       $v0, .L8002E858
    /* 1F000 8002E800 00000000 */   nop
    /* 1F004 8002E804 92034292 */  lbu        $v0, 0x392($s2)
    /* 1F008 8002E808 98034492 */  lbu        $a0, 0x398($s2)
    /* 1F00C 8002E80C 40180200 */  sll        $v1, $v0, 1
    /* 1F010 8002E810 21186200 */  addu       $v1, $v1, $v0
    /* 1F014 8002E814 80180300 */  sll        $v1, $v1, 2
    /* 1F018 8002E818 40110400 */  sll        $v0, $a0, 5
    /* 1F01C 8002E81C 21104400 */  addu       $v0, $v0, $a0
    /* 1F020 8002E820 C0100200 */  sll        $v0, $v0, 3
    /* 1F024 8002E824 21186200 */  addu       $v1, $v1, $v0
    /* 1F028 8002E828 1180013C */  lui        $at, %hi(D_8010C32E)
    /* 1F02C 8002E82C 21082300 */  addu       $at, $at, $v1
    /* 1F030 8002E830 2EC32494 */  lhu        $a0, %lo(D_8010C32E)($at)
    /* 1F034 8002E834 00000000 */  nop
    /* 1F038 8002E838 0F008430 */  andi       $a0, $a0, 0xF
    /* 1F03C 8002E83C AE79000C */  jal        func_8001E6B8
    /* 1F040 8002E840 42200400 */   srl       $a0, $a0, 1
    /* 1F044 8002E844 1C03C396 */  lhu        $v1, (0x1F80031C & 0xFFFF)($s6)
    /* 1F048 8002E848 00000000 */  nop
    /* 1F04C 8002E84C F8FF6324 */  addiu      $v1, $v1, -0x8
    /* 1F050 8002E850 23186200 */  subu       $v1, $v1, $v0
    /* 1F054 8002E854 1C03C3A6 */  sh         $v1, (0x1F80031C & 0xFFFF)($s6)
  .L8002E858:
    /* 1F058 8002E858 1C03C296 */  lhu        $v0, (0x1F80031C & 0xFFFF)($s6)
    /* 1F05C 8002E85C AA034492 */  lbu        $a0, 0x3AA($s2)
    /* 1F060 8002E860 00140200 */  sll        $v0, $v0, 16
    /* 1F064 8002E864 032C0200 */  sra        $a1, $v0, 16
    /* 1F068 8002E868 2310A402 */  subu       $v0, $s5, $a0
    /* 1F06C 8002E86C FF004330 */  andi       $v1, $v0, 0xFF
    /* 1F070 8002E870 8100622C */  sltiu      $v0, $v1, 0x81
    /* 1F074 8002E874 04004014 */  bnez       $v0, .L8002E888
    /* 1F078 8002E878 23109500 */   subu      $v0, $a0, $s5
    /* 1F07C 8002E87C FF004230 */  andi       $v0, $v0, 0xFF
    /* 1F080 8002E880 23BA0008 */  j          .L8002E88C
    /* 1F084 8002E884 03110200 */   sra       $v0, $v0, 4
  .L8002E888:
    /* 1F088 8002E888 03110300 */  sra        $v0, $v1, 4
  .L8002E88C:
    /* 1F08C 8002E88C 2310A200 */  subu       $v0, $a1, $v0
    /* 1F090 8002E890 1C03C2A6 */  sh         $v0, (0x1F80031C & 0xFFFF)($s6)
    /* 1F094 8002E894 8E034396 */  lhu        $v1, 0x38E($s2)
    /* 1F098 8002E898 13000224 */  addiu      $v0, $zero, 0x13
    /* 1F09C 8002E89C 06006214 */  bne        $v1, $v0, .L8002E8B8
    /* 1F0A0 8002E8A0 21204002 */   addu      $a0, $s2, $zero
    /* 1F0A4 8002E8A4 7800C22F */  sltiu      $v0, $fp, 0x78
    /* 1F0A8 8002E8A8 04004014 */  bnez       $v0, .L8002E8BC
    /* 1F0AC 8002E8AC FF00B132 */   andi      $s1, $s5, 0xFF
    /* 1F0B0 8002E8B0 78001E24 */  addiu      $fp, $zero, 0x78
    /* 1F0B4 8002E8B4 21204002 */  addu       $a0, $s2, $zero
  .L8002E8B8:
    /* 1F0B8 8002E8B8 FF00B132 */  andi       $s1, $s5, 0xFF
  .L8002E8BC:
    /* 1F0BC 8002E8BC 21282002 */  addu       $a1, $s1, $zero
    /* 1F0C0 8002E8C0 2130C003 */  addu       $a2, $fp, $zero
    /* 1F0C4 8002E8C4 3C2C010C */  jal        func_8004B0F0
    /* 1F0C8 8002E8C8 2138E002 */   addu      $a3, $s7, $zero
    /* 1F0CC 8002E8CC F402C38E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s6)
    /* 1F0D0 8002E8D0 3600C296 */  lhu        $v0, (0x1F800036 & 0xFFFF)($s6)
    /* 1F0D4 8002E8D4 00000000 */  nop
    /* 1F0D8 8002E8D8 020062A4 */  sh         $v0, 0x2($v1)
    /* 1F0DC 8002E8DC F402C38E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s6)
    /* 1F0E0 8002E8E0 4E00C296 */  lhu        $v0, (0x1F80004E & 0xFFFF)($s6)
    /* 1F0E4 8002E8E4 00000000 */  nop
    /* 1F0E8 8002E8E8 040062A4 */  sh         $v0, 0x4($v1)
    /* 1F0EC 8002E8EC F402C38E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s6)
    /* 1F0F0 8002E8F0 6600C296 */  lhu        $v0, (0x1F800066 & 0xFFFF)($s6)
    /* 1F0F4 8002E8F4 08050424 */  addiu      $a0, $zero, 0x508
    /* 1F0F8 8002E8F8 060062A4 */  sh         $v0, 0x6($v1)
    /* 1F0FC 8002E8FC F402C28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s6)
    /* 1F100 8002E900 04001024 */  addiu      $s0, $zero, 0x4
    /* 1F104 8002E904 960350A0 */  sb         $s0, 0x396($v0)
    /* 1F108 8002E908 01000224 */  addiu      $v0, $zero, 0x1
    /* 1F10C 8002E90C B002C2AE */  sw         $v0, (0x1F8002B0 & 0xFFFF)($s6)
    /* 1F110 8002E910 88AD020C */  jal        func_800AB620
    /* 1F114 8002E914 3203C0A2 */   sb        $zero, (0x1F800332 & 0xFFFF)($s6)
    /* 1F118 8002E918 03000224 */  addiu      $v0, $zero, 0x3
    /* 1F11C 8002E91C D10342A2 */  sb         $v0, 0x3D1($s2)
    /* 1F120 8002E920 F402C28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s6)
    /* 1F124 8002E924 21204002 */  addu       $a0, $s2, $zero
    /* 1F128 8002E928 B00350A0 */  sb         $s0, 0x3B0($v0)
    /* 1F12C 8002E92C F402C38E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s6)
    /* 1F130 8002E930 02000224 */  addiu      $v0, $zero, 0x2
    /* 1F134 8002E934 55BD000C */  jal        func_8002F554
    /* 1F138 8002E938 B20362A0 */   sb        $v0, 0x3B2($v1)
    /* 1F13C 8002E93C 18007302 */  mult       $s3, $s3
    /* 1F140 8002E940 21980000 */  addu       $s3, $zero, $zero
    /* 1F144 8002E944 21382002 */  addu       $a3, $s1, $zero
    /* 1F148 8002E948 F402C28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s6)
    /* 1F14C 8002E94C 99034492 */  lbu        $a0, 0x399($s2)
    /* 1F150 8002E950 02004584 */  lh         $a1, 0x2($v0)
    /* 1F154 8002E954 06004684 */  lh         $a2, 0x6($v0)
    /* 1F158 8002E958 10000224 */  addiu      $v0, $zero, 0x10
    /* 1F15C 8002E95C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1F160 8002E960 12400000 */  mflo       $t0
    /* 1F164 8002E964 189E010C */  jal        func_80067860
    /* 1F168 8002E968 1400A8AF */   sw        $t0, 0x14($sp)
  .L8002E96C:
    /* 1F16C 8002E96C 99034292 */  lbu        $v0, 0x399($s2)
    /* 1F170 8002E970 00000000 */  nop
    /* 1F174 8002E974 40100200 */  sll        $v0, $v0, 1
    /* 1F178 8002E978 21105600 */  addu       $v0, $v0, $s6
    /* 1F17C 8002E97C 21105300 */  addu       $v0, $v0, $s3
    /* 1F180 8002E980 22034490 */  lbu        $a0, (0x1F800322 & 0xFFFF)($v0)
    /* 1F184 8002E984 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 1F188 8002E988 2A008210 */  beq        $a0, $v0, .L8002EA34
    /* 1F18C 8002E98C 00000000 */   nop
    /* 1F190 8002E990 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 1F194 8002E994 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 1F198 8002E998 19008200 */  multu      $a0, $v0
    /* 1F19C 8002E99C 10400000 */  mfhi       $t0
    /* 1F1A0 8002E9A0 02110800 */  srl        $v0, $t0, 4
    /* 1F1A4 8002E9A4 40180200 */  sll        $v1, $v0, 1
    /* 1F1A8 8002E9A8 21186200 */  addu       $v1, $v1, $v0
    /* 1F1AC 8002E9AC C0180300 */  sll        $v1, $v1, 3
    /* 1F1B0 8002E9B0 23188300 */  subu       $v1, $a0, $v1
    /* 1F1B4 8002E9B4 FF006330 */  andi       $v1, $v1, 0xFF
    /* 1F1B8 8002E9B8 40110300 */  sll        $v0, $v1, 5
    /* 1F1BC 8002E9BC 23104300 */  subu       $v0, $v0, $v1
    /* 1F1C0 8002E9C0 80100200 */  sll        $v0, $v0, 2
    /* 1F1C4 8002E9C4 21104300 */  addu       $v0, $v0, $v1
    /* 1F1C8 8002E9C8 C0100200 */  sll        $v0, $v0, 3
    /* 1F1CC 8002E9CC 1080083C */  lui        $t0, %hi(D_800FF748)
    /* 1F1D0 8002E9D0 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* 1F1D4 8002E9D4 21800201 */  addu       $s0, $t0, $v0
    /* 1F1D8 8002E9D8 8D030392 */  lbu        $v1, 0x38D($s0)
    /* 1F1DC 8002E9DC 8D034292 */  lbu        $v0, 0x38D($s2)
    /* 1F1E0 8002E9E0 00000000 */  nop
    /* 1F1E4 8002E9E4 13006210 */  beq        $v1, $v0, .L8002EA34
    /* 1F1E8 8002E9E8 00000000 */   nop
    /* 1F1EC 8002E9EC 8D038292 */  lbu        $v0, 0x38D($s4)
    /* 1F1F0 8002E9F0 00000000 */  nop
    /* 1F1F4 8002E9F4 0F006210 */  beq        $v1, $v0, .L8002EA34
    /* 1F1F8 8002E9F8 00000000 */   nop
    /* 1F1FC 8002E9FC 1B4B010C */  jal        func_80052C6C
    /* 1F200 8002EA00 21200002 */   addu      $a0, $s0, $zero
    /* 1F204 8002EA04 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1F208 8002EA08 0A004014 */  bnez       $v0, .L8002EA34
    /* 1F20C 8002EA0C 01000224 */   addiu     $v0, $zero, 0x1
    /* 1F210 8002EA10 8D030392 */  lbu        $v1, 0x38D($s0)
    /* 1F214 8002EA14 00000000 */  nop
    /* 1F218 8002EA18 06006210 */  beq        $v1, $v0, .L8002EA34
    /* 1F21C 8002EA1C 0C000224 */   addiu     $v0, $zero, 0xC
    /* 1F220 8002EA20 04006210 */  beq        $v1, $v0, .L8002EA34
    /* 1F224 8002EA24 1B000224 */   addiu     $v0, $zero, 0x1B
    /* 1F228 8002EA28 960302A2 */  sb         $v0, 0x396($s0)
    /* 1F22C 8002EA2C 40000224 */  addiu      $v0, $zero, 0x40
    /* 1F230 8002EA30 970302A2 */  sb         $v0, 0x397($s0)
  .L8002EA34:
    /* 1F234 8002EA34 01007326 */  addiu      $s3, $s3, 0x1
    /* 1F238 8002EA38 0200622A */  slti       $v0, $s3, 0x2
    /* 1F23C 8002EA3C CBFF4014 */  bnez       $v0, .L8002E96C
    /* 1F240 8002EA40 00000000 */   nop
    /* 1F244 8002EA44 98034292 */  lbu        $v0, 0x398($s2)
    /* 1F248 8002EA48 00000000 */  nop
    /* 1F24C 8002EA4C 01004238 */  xori       $v0, $v0, 0x1
    /* 1F250 8002EA50 2110C202 */  addu       $v0, $s6, $v0
    /* 1F254 8002EA54 07034290 */  lbu        $v0, (0x1F800307 & 0xFFFF)($v0)
    /* 1F258 8002EA58 00000000 */  nop
    /* 1F25C 8002EA5C 2A004014 */  bnez       $v0, .L8002EB08
    /* 1F260 8002EA60 00000000 */   nop
    /* 1F264 8002EA64 99034292 */  lbu        $v0, 0x399($s2)
    /* 1F268 8002EA68 00000000 */  nop
    /* 1F26C 8002EA6C C0210200 */  sll        $a0, $v0, 7
    /* 1F270 8002EA70 23109500 */  subu       $v0, $a0, $s5
    /* 1F274 8002EA74 FF004330 */  andi       $v1, $v0, 0xFF
    /* 1F278 8002EA78 8100622C */  sltiu      $v0, $v1, 0x81
    /* 1F27C 8002EA7C 08004014 */  bnez       $v0, .L8002EAA0
    /* 1F280 8002EA80 41006228 */   slti      $v0, $v1, 0x41
    /* 1F284 8002EA84 2310A402 */  subu       $v0, $s5, $a0
    /* 1F288 8002EA88 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1F28C 8002EA8C 41004228 */  slti       $v0, $v0, 0x41
    /* 1F290 8002EA90 1D004010 */  beqz       $v0, .L8002EB08
    /* 1F294 8002EA94 00000000 */   nop
    /* 1F298 8002EA98 AABA0008 */  j          .L8002EAA8
    /* 1F29C 8002EA9C 00000000 */   nop
  .L8002EAA0:
    /* 1F2A0 8002EAA0 19004010 */  beqz       $v0, .L8002EB08
    /* 1F2A4 8002EAA4 00000000 */   nop
  .L8002EAA8:
    /* 1F2A8 8002EAA8 8D034492 */  lbu        $a0, 0x38D($s2)
    /* 1F2AC 8002EAAC 8C73010C */  jal        func_8005CE30
    /* 1F2B0 8002EAB0 00000000 */   nop
    /* 1F2B4 8002EAB4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1F2B8 8002EAB8 AAAA033C */  lui        $v1, (0xAAAAAAAB >> 16)
    /* 1F2BC 8002EABC ABAA6334 */  ori        $v1, $v1, (0xAAAAAAAB & 0xFFFF)
    /* 1F2C0 8002EAC0 19004300 */  multu      $v0, $v1
    /* 1F2C4 8002EAC4 21280000 */  addu       $a1, $zero, $zero
    /* 1F2C8 8002EAC8 10400000 */  mfhi       $t0
    /* 1F2CC 8002EACC 02210800 */  srl        $a0, $t0, 4
    /* 1F2D0 8002EAD0 40180400 */  sll        $v1, $a0, 1
    /* 1F2D4 8002EAD4 21186400 */  addu       $v1, $v1, $a0
    /* 1F2D8 8002EAD8 C0180300 */  sll        $v1, $v1, 3
    /* 1F2DC 8002EADC 23104300 */  subu       $v0, $v0, $v1
    /* 1F2E0 8002EAE0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1F2E4 8002EAE4 40210200 */  sll        $a0, $v0, 5
    /* 1F2E8 8002EAE8 23208200 */  subu       $a0, $a0, $v0
    /* 1F2EC 8002EAEC 80200400 */  sll        $a0, $a0, 2
    /* 1F2F0 8002EAF0 21208200 */  addu       $a0, $a0, $v0
    /* 1F2F4 8002EAF4 C0200400 */  sll        $a0, $a0, 3
    /* 1F2F8 8002EAF8 1080083C */  lui        $t0, %hi(D_800FF748)
    /* 1F2FC 8002EAFC 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* 1F300 8002EB00 AE44010C */  jal        func_800512B8
    /* 1F304 8002EB04 21200401 */   addu      $a0, $t0, $a0
  .L8002EB08:
    /* 1F308 8002EB08 5C00BF8F */  lw         $ra, 0x5C($sp)
    /* 1F30C 8002EB0C 5800BE8F */  lw         $fp, 0x58($sp)
    /* 1F310 8002EB10 5400B78F */  lw         $s7, 0x54($sp)
    /* 1F314 8002EB14 5000B68F */  lw         $s6, 0x50($sp)
    /* 1F318 8002EB18 4C00B58F */  lw         $s5, 0x4C($sp)
    /* 1F31C 8002EB1C 4800B48F */  lw         $s4, 0x48($sp)
    /* 1F320 8002EB20 4400B38F */  lw         $s3, 0x44($sp)
    /* 1F324 8002EB24 4000B28F */  lw         $s2, 0x40($sp)
    /* 1F328 8002EB28 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 1F32C 8002EB2C 3800B08F */  lw         $s0, 0x38($sp)
    /* 1F330 8002EB30 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 1F334 8002EB34 0800E003 */  jr         $ra
    /* 1F338 8002EB38 00000000 */   nop
endlabel func_8002D9F4
