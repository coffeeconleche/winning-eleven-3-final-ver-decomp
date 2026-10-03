nonmatching func_8008CAB8, 0x334

glabel func_8008CAB8
    /* 7D2B8 8008CAB8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 7D2BC 8008CABC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 7D2C0 8008CAC0 21888000 */  addu       $s1, $a0, $zero
    /* 7D2C4 8008CAC4 2800BFAF */  sw         $ra, 0x28($sp)
    /* 7D2C8 8008CAC8 2400B3AF */  sw         $s3, 0x24($sp)
    /* 7D2CC 8008CACC 2000B2AF */  sw         $s2, 0x20($sp)
    /* 7D2D0 8008CAD0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 7D2D4 8008CAD4 97032292 */  lbu        $v0, 0x397($s1)
    /* 7D2D8 8008CAD8 00000000 */  nop
    /* 7D2DC 8008CADC 28004014 */  bnez       $v0, .L8008CB80
    /* 7D2E0 8008CAE0 801F133C */   lui       $s3, (0x1F80004E >> 16)
    /* 7D2E4 8008CAE4 B9032392 */  lbu        $v1, 0x3B9($s1)
    /* 7D2E8 8008CAE8 CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 7D2EC 8008CAEC CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 7D2F0 8008CAF0 19006200 */  multu      $v1, $v0
    /* 7D2F4 8008CAF4 0E000224 */  addiu      $v0, $zero, 0xE
    /* 7D2F8 8008CAF8 801F033C */  lui        $v1, (0x1F80031C >> 16)
    /* 7D2FC 8008CAFC 1C036384 */  lh         $v1, (0x1F80031C & 0xFFFF)($v1)
    /* 7D300 8008CB00 10400000 */  mfhi       $t0
    /* 7D304 8008CB04 C2200800 */  srl        $a0, $t0, 3
    /* 7D308 8008CB08 FF008430 */  andi       $a0, $a0, 0xFF
    /* 7D30C 8008CB0C 23104400 */  subu       $v0, $v0, $a0
    /* 7D310 8008CB10 2A186200 */  slt        $v1, $v1, $v0
    /* 7D314 8008CB14 12006010 */  beqz       $v1, .L8008CB60
    /* 7D318 8008CB18 00000000 */   nop
    /* 7D31C 8008CB1C 8D032392 */  lbu        $v1, 0x38D($s1)
    /* 7D320 8008CB20 801F023C */  lui        $v0, (0x1F8002AC >> 16)
    /* 7D324 8008CB24 AC024290 */  lbu        $v0, (0x1F8002AC & 0xFFFF)($v0)
    /* 7D328 8008CB28 00000000 */  nop
    /* 7D32C 8008CB2C 0D006210 */  beq        $v1, $v0, .L8008CB64
    /* 7D330 8008CB30 21202002 */   addu      $a0, $s1, $zero
    /* 7D334 8008CB34 17BB010C */  jal        func_8006EC5C
    /* 7D338 8008CB38 21202002 */   addu      $a0, $s1, $zero
    /* 7D33C 8008CB3C A003238E */  lw         $v1, 0x3A0($s1)
    /* 7D340 8008CB40 00000000 */  nop
    /* 7D344 8008CB44 1300622C */  sltiu      $v0, $v1, 0x13
    /* 7D348 8008CB48 03004010 */  beqz       $v0, .L8008CB58
    /* 7D34C 8008CB4C EEFF6224 */   addiu     $v0, $v1, -0x12
    /* 7D350 8008CB50 ED320208 */  j          .L8008CBB4
    /* 7D354 8008CB54 A00320AE */   sw        $zero, 0x3A0($s1)
  .L8008CB58:
    /* 7D358 8008CB58 ED320208 */  j          .L8008CBB4
    /* 7D35C 8008CB5C A00322AE */   sw        $v0, 0x3A0($s1)
  .L8008CB60:
    /* 7D360 8008CB60 21202002 */  addu       $a0, $s1, $zero
  .L8008CB64:
    /* 7D364 8008CB64 65000524 */  addiu      $a1, $zero, 0x65
    /* 7D368 8008CB68 8C6E010C */  jal        func_8005BA30
    /* 7D36C 8008CB6C 21300000 */   addu      $a2, $zero, $zero
    /* 7D370 8008CB70 97032292 */  lbu        $v0, 0x397($s1)
    /* 7D374 8008CB74 A00320AE */  sw         $zero, 0x3A0($s1)
    /* 7D378 8008CB78 EC320208 */  j          .L8008CBB0
    /* 7D37C 8008CB7C 01004224 */   addiu     $v0, $v0, 0x1
  .L8008CB80:
    /* 7D380 8008CB80 476F010C */  jal        func_8005BD1C
    /* 7D384 8008CB84 21202002 */   addu      $a0, $s1, $zero
    /* 7D388 8008CB88 90032292 */  lbu        $v0, 0x390($s1)
    /* 7D38C 8008CB8C 00000000 */  nop
    /* 7D390 8008CB90 08004014 */  bnez       $v0, .L8008CBB4
    /* 7D394 8008CB94 21202002 */   addu      $a0, $s1, $zero
    /* 7D398 8008CB98 62000524 */  addiu      $a1, $zero, 0x62
    /* 7D39C 8008CB9C 8C6E010C */  jal        func_8005BA30
    /* 7D3A0 8008CBA0 17000624 */   addiu     $a2, $zero, 0x17
    /* 7D3A4 8008CBA4 8D000224 */  addiu      $v0, $zero, 0x8D
    /* 7D3A8 8008CBA8 960322A2 */  sb         $v0, 0x396($s1)
    /* 7D3AC 8008CBAC 01000224 */  addiu      $v0, $zero, 0x1
  .L8008CBB0:
    /* 7D3B0 8008CBB0 970322A2 */  sb         $v0, 0x397($s1)
  .L8008CBB4:
    /* 7D3B4 8008CBB4 AB032492 */  lbu        $a0, 0x3AB($s1)
    /* 7D3B8 8008CBB8 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 7D3BC 8008CBBC F36D010C */  jal        func_8005B7CC
    /* 7D3C0 8008CBC0 0C000624 */   addiu     $a2, $zero, 0xC
    /* 7D3C4 8008CBC4 FF004430 */  andi       $a0, $v0, 0xFF
    /* 7D3C8 8008CBC8 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 7D3CC 8008CBCC 23186400 */  subu       $v1, $v1, $a0
    /* 7D3D0 8008CBD0 21206000 */  addu       $a0, $v1, $zero
    /* 7D3D4 8008CBD4 02006104 */  bgez       $v1, .L8008CBE0
    /* 7D3D8 8008CBD8 AA0322A2 */   sb        $v0, 0x3AA($s1)
    /* 7D3DC 8008CBDC FF006424 */  addiu      $a0, $v1, 0xFF
  .L8008CBE0:
    /* 7D3E0 8008CBE0 03120400 */  sra        $v0, $a0, 8
    /* 7D3E4 8008CBE4 00120200 */  sll        $v0, $v0, 8
    /* 7D3E8 8008CBE8 23106200 */  subu       $v0, $v1, $v0
    /* 7D3EC 8008CBEC 00110200 */  sll        $v0, $v0, 4
    /* 7D3F0 8008CBF0 260022A6 */  sh         $v0, 0x26($s1)
    /* 7D3F4 8008CBF4 AC032292 */  lbu        $v0, 0x3AC($s1)
    /* 7D3F8 8008CBF8 AA032392 */  lbu        $v1, 0x3AA($s1)
    /* 7D3FC 8008CBFC 02004014 */  bnez       $v0, .L8008CC08
    /* 7D400 8008CC00 40007224 */   addiu     $s2, $v1, 0x40
    /* 7D404 8008CC04 C0FF7224 */  addiu      $s2, $v1, -0x40
  .L8008CC08:
    /* 7D408 8008CC08 FF005032 */  andi       $s0, $s2, 0xFF
    /* 7D40C 8008CC0C 21200002 */  addu       $a0, $s0, $zero
    /* 7D410 8008CC10 A579000C */  jal        func_8001E694
    /* 7D414 8008CC14 0C000524 */   addiu     $a1, $zero, 0xC
    /* 7D418 8008CC18 21200002 */  addu       $a0, $s0, $zero
    /* 7D41C 8008CC1C 02002396 */  lhu        $v1, 0x2($s1)
    /* 7D420 8008CC20 0C000524 */  addiu      $a1, $zero, 0xC
    /* 7D424 8008CC24 21186200 */  addu       $v1, $v1, $v0
    /* 7D428 8008CC28 6979000C */  jal        func_8001E5A4
    /* 7D42C 8008CC2C 020023A6 */   sh        $v1, 0x2($s1)
    /* 7D430 8008CC30 06002596 */  lhu        $a1, 0x6($s1)
    /* 7D434 8008CC34 02002486 */  lh         $a0, 0x2($s1)
    /* 7D438 8008CC38 2128A200 */  addu       $a1, $a1, $v0
    /* 7D43C 8008CC3C 060025A6 */  sh         $a1, 0x6($s1)
    /* 7D440 8008CC40 002C0500 */  sll        $a1, $a1, 16
    /* 7D444 8008CC44 032C0500 */  sra        $a1, $a1, 16
    /* 7D448 8008CC48 36006696 */  lhu        $a2, (0x1F800036 & 0xFFFF)($s3)
    /* 7D44C 8008CC4C 66006796 */  lhu        $a3, (0x1F800066 & 0xFFFF)($s3)
    /* 7D450 8008CC50 00340600 */  sll        $a2, $a2, 16
    /* 7D454 8008CC54 03340600 */  sra        $a2, $a2, 16
    /* 7D458 8008CC58 003C0700 */  sll        $a3, $a3, 16
    /* 7D45C 8008CC5C DB6C010C */  jal        func_8005B36C
    /* 7D460 8008CC60 033C0700 */   sra       $a3, $a3, 16
    /* 7D464 8008CC64 AA032392 */  lbu        $v1, 0x3AA($s1)
    /* 7D468 8008CC68 00000000 */  nop
    /* 7D46C 8008CC6C 23104300 */  subu       $v0, $v0, $v1
    /* 7D470 8008CC70 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7D474 8008CC74 8100422C */  sltiu      $v0, $v0, 0x81
    /* 7D478 8008CC78 02004010 */  beqz       $v0, .L8008CC84
    /* 7D47C 8008CC7C 01001024 */   addiu     $s0, $zero, 0x1
    /* 7D480 8008CC80 FFFF1024 */  addiu      $s0, $zero, -0x1
  .L8008CC84:
    /* 7D484 8008CC84 0BB6053C */  lui        $a1, (0xB60B60B7 >> 16)
    /* 7D488 8008CC88 92032292 */  lbu        $v0, 0x392($s1)
    /* 7D48C 8008CC8C 98032492 */  lbu        $a0, 0x398($s1)
    /* 7D490 8008CC90 40180200 */  sll        $v1, $v0, 1
    /* 7D494 8008CC94 21186200 */  addu       $v1, $v1, $v0
    /* 7D498 8008CC98 80180300 */  sll        $v1, $v1, 2
    /* 7D49C 8008CC9C 40110400 */  sll        $v0, $a0, 5
    /* 7D4A0 8008CCA0 21104400 */  addu       $v0, $v0, $a0
    /* 7D4A4 8008CCA4 C0100200 */  sll        $v0, $v0, 3
    /* 7D4A8 8008CCA8 21186200 */  addu       $v1, $v1, $v0
    /* 7D4AC 8008CCAC 1180013C */  lui        $at, %hi(D_8010C330)
    /* 7D4B0 8008CCB0 21082300 */  addu       $at, $at, $v1
    /* 7D4B4 8008CCB4 30C3228C */  lw         $v0, %lo(D_8010C330)($at)
    /* 7D4B8 8008CCB8 B760A534 */  ori        $a1, $a1, (0xB60B60B7 & 0xFFFF)
    /* 7D4BC 8008CCBC C2120200 */  srl        $v0, $v0, 11
    /* 7D4C0 8008CCC0 7F004230 */  andi       $v0, $v0, 0x7F
    /* 7D4C4 8008CCC4 64004224 */  addiu      $v0, $v0, 0x64
    /* 7D4C8 8008CCC8 80180200 */  sll        $v1, $v0, 2
    /* 7D4CC 8008CCCC 21186200 */  addu       $v1, $v1, $v0
    /* 7D4D0 8008CCD0 40190300 */  sll        $v1, $v1, 5
    /* 7D4D4 8008CCD4 23180300 */  negu       $v1, $v1
    /* 7D4D8 8008CCD8 18006500 */  mult       $v1, $a1
    /* 7D4DC 8008CCDC 4E006296 */  lhu        $v0, (0x1F80004E & 0xFFFF)($s3)
    /* 7D4E0 8008CCE0 00000000 */  nop
    /* 7D4E4 8008CCE4 00140200 */  sll        $v0, $v0, 16
    /* 7D4E8 8008CCE8 03140200 */  sra        $v0, $v0, 16
    /* 7D4EC 8008CCEC 10400000 */  mfhi       $t0
    /* 7D4F0 8008CCF0 21200301 */  addu       $a0, $t0, $v1
    /* 7D4F4 8008CCF4 C3210400 */  sra        $a0, $a0, 7
    /* 7D4F8 8008CCF8 C31F0300 */  sra        $v1, $v1, 31
    /* 7D4FC 8008CCFC 23208300 */  subu       $a0, $a0, $v1
    /* 7D500 8008CD00 2A104400 */  slt        $v0, $v0, $a0
    /* 7D504 8008CD04 05004010 */  beqz       $v0, .L8008CD1C
    /* 7D508 8008CD08 00000000 */   nop
    /* 7D50C 8008CD0C AE79000C */  jal        func_8001E6B8
    /* 7D510 8008CD10 14000424 */   addiu     $a0, $zero, 0x14
    /* 7D514 8008CD14 4A330208 */  j          .L8008CD28
    /* 7D518 8008CD18 34004224 */   addiu     $v0, $v0, 0x34
  .L8008CD1C:
    /* 7D51C 8008CD1C AE79000C */  jal        func_8001E6B8
    /* 7D520 8008CD20 40000424 */   addiu     $a0, $zero, 0x40
    /* 7D524 8008CD24 30004224 */  addiu      $v0, $v0, 0x30
  .L8008CD28:
    /* 7D528 8008CD28 18000202 */  mult       $s0, $v0
    /* 7D52C 8008CD2C F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 7D530 8008CD30 00000000 */  nop
    /* 7D534 8008CD34 A4034290 */  lbu        $v0, 0x3A4($v0)
    /* 7D538 8008CD38 12400000 */  mflo       $t0
    /* 7D53C 8008CD3C 21904800 */  addu       $s2, $v0, $t0
    /* 7D540 8008CD40 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 7D544 8008CD44 16B2033C */  lui        $v1, (0xB21642C9 >> 16)
    /* 7D548 8008CD48 0C00428C */  lw         $v0, 0xC($v0)
    /* 7D54C 8008CD4C C9426334 */  ori        $v1, $v1, (0xB21642C9 & 0xFFFF)
    /* 7D550 8008CD50 18004300 */  mult       $v0, $v1
    /* 7D554 8008CD54 10400000 */  mfhi       $t0
    /* 7D558 8008CD58 21200201 */  addu       $a0, $t0, $v0
    /* 7D55C 8008CD5C 43220400 */  sra        $a0, $a0, 9
    /* 7D560 8008CD60 C3170200 */  sra        $v0, $v0, 31
    /* 7D564 8008CD64 23208200 */  subu       $a0, $a0, $v0
    /* 7D568 8008CD68 02008104 */  bgez       $a0, .L8008CD74
    /* 7D56C 8008CD6C 00000000 */   nop
    /* 7D570 8008CD70 23200400 */  negu       $a0, $a0
  .L8008CD74:
    /* 7D574 8008CD74 AE79000C */  jal        func_8001E6B8
    /* 7D578 8008CD78 00000000 */   nop
    /* 7D57C 8008CD7C 04000424 */  addiu      $a0, $zero, 0x4
    /* 7D580 8008CD80 AE79000C */  jal        func_8001E6B8
    /* 7D584 8008CD84 21804000 */   addu      $s0, $v0, $zero
    /* 7D588 8008CD88 21202002 */  addu       $a0, $s1, $zero
    /* 7D58C 8008CD8C 0C000524 */  addiu      $a1, $zero, 0xC
    /* 7D590 8008CD90 FF004632 */  andi       $a2, $s2, 0xFF
    /* 7D594 8008CD94 21380000 */  addu       $a3, $zero, $zero
    /* 7D598 8008CD98 23105000 */  subu       $v0, $v0, $s0
    /* 7D59C 8008CD9C 8B51020C */  jal        func_8009462C
    /* 7D5A0 8008CDA0 1000A2AF */   sw        $v0, 0x10($sp)
    /* 7D5A4 8008CDA4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7D5A8 8008CDA8 03004010 */  beqz       $v0, .L8008CDB8
    /* 7D5AC 8008CDAC 00000000 */   nop
    /* 7D5B0 8008CDB0 855E010C */  jal        func_80057A14
    /* 7D5B4 8008CDB4 21202002 */   addu      $a0, $s1, $zero
  .L8008CDB8:
    /* 7D5B8 8008CDB8 A0032596 */  lhu        $a1, 0x3A0($s1)
    /* 7D5BC 8008CDBC 196E010C */  jal        func_8005B864
    /* 7D5C0 8008CDC0 21202002 */   addu      $a0, $s1, $zero
    /* 7D5C4 8008CDC4 3A55020C */  jal        func_800954E8
    /* 7D5C8 8008CDC8 21202002 */   addu      $a0, $s1, $zero
    /* 7D5CC 8008CDCC 2800BF8F */  lw         $ra, 0x28($sp)
    /* 7D5D0 8008CDD0 2400B38F */  lw         $s3, 0x24($sp)
    /* 7D5D4 8008CDD4 2000B28F */  lw         $s2, 0x20($sp)
    /* 7D5D8 8008CDD8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 7D5DC 8008CDDC 1800B08F */  lw         $s0, 0x18($sp)
    /* 7D5E0 8008CDE0 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 7D5E4 8008CDE4 0800E003 */  jr         $ra
    /* 7D5E8 8008CDE8 00000000 */   nop
endlabel func_8008CAB8
