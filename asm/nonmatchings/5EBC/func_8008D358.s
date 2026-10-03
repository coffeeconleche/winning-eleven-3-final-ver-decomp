nonmatching func_8008D358, 0x82C

glabel func_8008D358
    /* 7DB58 8008D358 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 7DB5C 8008D35C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 7DB60 8008D360 21888000 */  addu       $s1, $a0, $zero
    /* 7DB64 8008D364 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 7DB68 8008D368 2800B4AF */  sw         $s4, 0x28($sp)
    /* 7DB6C 8008D36C 2400B3AF */  sw         $s3, 0x24($sp)
    /* 7DB70 8008D370 2000B2AF */  sw         $s2, 0x20($sp)
    /* 7DB74 8008D374 1800B0AF */  sw         $s0, 0x18($sp)
    /* 7DB78 8008D378 97032392 */  lbu        $v1, 0x397($s1)
    /* 7DB7C 8008D37C 00000000 */  nop
    /* 7DB80 8008D380 1100622C */  sltiu      $v0, $v1, 0x11
    /* 7DB84 8008D384 63014010 */  beqz       $v0, .L8008D914
    /* 7DB88 8008D388 801F143C */   lui       $s4, (0x1F80004E >> 16)
    /* 7DB8C 8008D38C 80100300 */  sll        $v0, $v1, 2
    /* 7DB90 8008D390 0180013C */  lui        $at, %hi(jtbl_80013DA0)
    /* 7DB94 8008D394 21082200 */  addu       $at, $at, $v0
    /* 7DB98 8008D398 A03D228C */  lw         $v0, %lo(jtbl_80013DA0)($at)
    /* 7DB9C 8008D39C 00000000 */  nop
    /* 7DBA0 8008D3A0 08004000 */  jr         $v0
    /* 7DBA4 8008D3A4 00000000 */   nop
  jlabel .L8008D3A8
    /* 7DBA8 8008D3A8 B9032392 */  lbu        $v1, 0x3B9($s1)
    /* 7DBAC 8008D3AC CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 7DBB0 8008D3B0 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 7DBB4 8008D3B4 19006200 */  multu      $v1, $v0
    /* 7DBB8 8008D3B8 1C038396 */  lhu        $v1, (0x1F80031C & 0xFFFF)($s4)
    /* 7DBBC 8008D3BC 0E000224 */  addiu      $v0, $zero, 0xE
    /* 7DBC0 8008D3C0 001C0300 */  sll        $v1, $v1, 16
    /* 7DBC4 8008D3C4 031C0300 */  sra        $v1, $v1, 16
    /* 7DBC8 8008D3C8 10400000 */  mfhi       $t0
    /* 7DBCC 8008D3CC C2200800 */  srl        $a0, $t0, 3
    /* 7DBD0 8008D3D0 FF008430 */  andi       $a0, $a0, 0xFF
    /* 7DBD4 8008D3D4 23104400 */  subu       $v0, $v0, $a0
    /* 7DBD8 8008D3D8 2A186200 */  slt        $v1, $v1, $v0
    /* 7DBDC 8008D3DC 0A006010 */  beqz       $v1, .L8008D408
    /* 7DBE0 8008D3E0 00000000 */   nop
    /* 7DBE4 8008D3E4 AC028392 */  lbu        $v1, (0x1F8002AC & 0xFFFF)($s4)
    /* 7DBE8 8008D3E8 8D032292 */  lbu        $v0, 0x38D($s1)
    /* 7DBEC 8008D3EC 00000000 */  nop
    /* 7DBF0 8008D3F0 05004310 */  beq        $v0, $v1, .L8008D408
    /* 7DBF4 8008D3F4 00000000 */   nop
    /* 7DBF8 8008D3F8 17BB010C */  jal        func_8006EC5C
    /* 7DBFC 8008D3FC 21202002 */   addu      $a0, $s1, $zero
    /* 7DC00 8008D400 45360208 */  j          .L8008D914
    /* 7DC04 8008D404 00000000 */   nop
  .L8008D408:
    /* 7DC08 8008D408 AB032492 */  lbu        $a0, 0x3AB($s1)
    /* 7DC0C 8008D40C AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 7DC10 8008D410 F36D010C */  jal        func_8005B7CC
    /* 7DC14 8008D414 0C000624 */   addiu     $a2, $zero, 0xC
    /* 7DC18 8008D418 FF004430 */  andi       $a0, $v0, 0xFF
    /* 7DC1C 8008D41C C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 7DC20 8008D420 23206400 */  subu       $a0, $v1, $a0
    /* 7DC24 8008D424 21288000 */  addu       $a1, $a0, $zero
    /* 7DC28 8008D428 02008104 */  bgez       $a0, .L8008D434
    /* 7DC2C 8008D42C AA0322A2 */   sb        $v0, 0x3AA($s1)
    /* 7DC30 8008D430 FF008524 */  addiu      $a1, $a0, 0xFF
  .L8008D434:
    /* 7DC34 8008D434 02002286 */  lh         $v0, 0x2($s1)
    /* 7DC38 8008D438 C2032386 */  lh         $v1, 0x3C2($s1)
    /* 7DC3C 8008D43C 00000000 */  nop
    /* 7DC40 8008D440 23104300 */  subu       $v0, $v0, $v1
    /* 7DC44 8008D444 18004200 */  mult       $v0, $v0
    /* 7DC48 8008D448 06002286 */  lh         $v0, 0x6($s1)
    /* 7DC4C 8008D44C C6032386 */  lh         $v1, 0x3C6($s1)
    /* 7DC50 8008D450 12300000 */  mflo       $a2
    /* 7DC54 8008D454 23104300 */  subu       $v0, $v0, $v1
    /* 7DC58 8008D458 00000000 */  nop
    /* 7DC5C 8008D45C 18004200 */  mult       $v0, $v0
    /* 7DC60 8008D460 C4032786 */  lh         $a3, 0x3C4($s1)
    /* 7DC64 8008D464 03120500 */  sra        $v0, $a1, 8
    /* 7DC68 8008D468 00120200 */  sll        $v0, $v0, 8
    /* 7DC6C 8008D46C 23108200 */  subu       $v0, $a0, $v0
    /* 7DC70 8008D470 00110200 */  sll        $v0, $v0, 4
    /* 7DC74 8008D474 260022A6 */  sh         $v0, 0x26($s1)
    /* 7DC78 8008D478 80FFE228 */  slti       $v0, $a3, -0x80
    /* 7DC7C 8008D47C 12180000 */  mflo       $v1
    /* 7DC80 8008D480 36004010 */  beqz       $v0, .L8008D55C
    /* 7DC84 8008D484 2198C300 */   addu      $s3, $a2, $v1
    /* 7DC88 8008D488 0BB6053C */  lui        $a1, (0xB60B60B7 >> 16)
    /* 7DC8C 8008D48C 92032292 */  lbu        $v0, 0x392($s1)
    /* 7DC90 8008D490 98032492 */  lbu        $a0, 0x398($s1)
    /* 7DC94 8008D494 40180200 */  sll        $v1, $v0, 1
    /* 7DC98 8008D498 21186200 */  addu       $v1, $v1, $v0
    /* 7DC9C 8008D49C 80180300 */  sll        $v1, $v1, 2
    /* 7DCA0 8008D4A0 40110400 */  sll        $v0, $a0, 5
    /* 7DCA4 8008D4A4 21104400 */  addu       $v0, $v0, $a0
    /* 7DCA8 8008D4A8 C0100200 */  sll        $v0, $v0, 3
    /* 7DCAC 8008D4AC 21186200 */  addu       $v1, $v1, $v0
    /* 7DCB0 8008D4B0 1180013C */  lui        $at, %hi(D_8010C330)
    /* 7DCB4 8008D4B4 21082300 */  addu       $at, $at, $v1
    /* 7DCB8 8008D4B8 30C3228C */  lw         $v0, %lo(D_8010C330)($at)
    /* 7DCBC 8008D4BC B760A534 */  ori        $a1, $a1, (0xB60B60B7 & 0xFFFF)
    /* 7DCC0 8008D4C0 C2120200 */  srl        $v0, $v0, 11
    /* 7DCC4 8008D4C4 7F004230 */  andi       $v0, $v0, 0x7F
    /* 7DCC8 8008D4C8 64004424 */  addiu      $a0, $v0, 0x64
    /* 7DCCC 8008D4CC 00120400 */  sll        $v0, $a0, 8
    /* 7DCD0 8008D4D0 18004500 */  mult       $v0, $a1
    /* 7DCD4 8008D4D4 10400000 */  mfhi       $t0
    /* 7DCD8 8008D4D8 21180201 */  addu       $v1, $t0, $v0
    /* 7DCDC 8008D4DC C3190300 */  sra        $v1, $v1, 7
    /* 7DCE0 8008D4E0 18006200 */  mult       $v1, $v0
    /* 7DCE4 8008D4E4 12180000 */  mflo       $v1
    /* 7DCE8 8008D4E8 00000000 */  nop
    /* 7DCEC 8008D4EC 00000000 */  nop
    /* 7DCF0 8008D4F0 18006500 */  mult       $v1, $a1
    /* 7DCF4 8008D4F4 10400000 */  mfhi       $t0
    /* 7DCF8 8008D4F8 21100301 */  addu       $v0, $t0, $v1
    /* 7DCFC 8008D4FC C3110200 */  sra        $v0, $v0, 7
    /* 7DD00 8008D500 C31F0300 */  sra        $v1, $v1, 31
    /* 7DD04 8008D504 23104300 */  subu       $v0, $v0, $v1
    /* 7DD08 8008D508 2B105300 */  sltu       $v0, $v0, $s3
    /* 7DD0C 8008D50C 1D004010 */  beqz       $v0, .L8008D584
    /* 7DD10 8008D510 C0100400 */   sll       $v0, $a0, 3
    /* 7DD14 8008D514 21104400 */  addu       $v0, $v0, $a0
    /* 7DD18 8008D518 80100200 */  sll        $v0, $v0, 2
    /* 7DD1C 8008D51C 21104400 */  addu       $v0, $v0, $a0
    /* 7DD20 8008D520 C0100200 */  sll        $v0, $v0, 3
    /* 7DD24 8008D524 23100200 */  negu       $v0, $v0
    /* 7DD28 8008D528 18004500 */  mult       $v0, $a1
    /* 7DD2C 8008D52C 10400000 */  mfhi       $t0
    /* 7DD30 8008D530 21180201 */  addu       $v1, $t0, $v0
    /* 7DD34 8008D534 C3190300 */  sra        $v1, $v1, 7
    /* 7DD38 8008D538 C3170200 */  sra        $v0, $v0, 31
    /* 7DD3C 8008D53C 23186200 */  subu       $v1, $v1, $v0
    /* 7DD40 8008D540 2318E300 */  subu       $v1, $a3, $v1
    /* 7DD44 8008D544 02006104 */  bgez       $v1, .L8008D550
    /* 7DD48 8008D548 00000000 */   nop
    /* 7DD4C 8008D54C 23180300 */  negu       $v1, $v1
  .L8008D550:
    /* 7DD50 8008D550 19006328 */  slti       $v1, $v1, 0x19
    /* 7DD54 8008D554 0B006010 */  beqz       $v1, .L8008D584
    /* 7DD58 8008D558 00000000 */   nop
  .L8008D55C:
    /* 7DD5C 8008D55C 21202002 */  addu       $a0, $s1, $zero
    /* 7DD60 8008D560 64000524 */  addiu      $a1, $zero, 0x64
    /* 7DD64 8008D564 8C6E010C */  jal        func_8005BA30
    /* 7DD68 8008D568 21300000 */   addu      $a2, $zero, $zero
    /* 7DD6C 8008D56C A003228E */  lw         $v0, 0x3A0($s1)
    /* 7DD70 8008D570 08000324 */  addiu      $v1, $zero, 0x8
    /* 7DD74 8008D574 970323A2 */  sb         $v1, 0x397($s1)
    /* 7DD78 8008D578 42100200 */  srl        $v0, $v0, 1
    /* 7DD7C 8008D57C 45360208 */  j          .L8008D914
    /* 7DD80 8008D580 A00322AE */   sw        $v0, 0x3A0($s1)
  .L8008D584:
    /* 7DD84 8008D584 02002486 */  lh         $a0, 0x2($s1)
    /* 7DD88 8008D588 06002586 */  lh         $a1, 0x6($s1)
    /* 7DD8C 8008D58C C2032686 */  lh         $a2, 0x3C2($s1)
    /* 7DD90 8008D590 C6032786 */  lh         $a3, 0x3C6($s1)
    /* 7DD94 8008D594 DB6C010C */  jal        func_8005B36C
    /* 7DD98 8008D598 00000000 */   nop
    /* 7DD9C 8008D59C 21904000 */  addu       $s2, $v0, $zero
    /* 7DDA0 8008D5A0 4AC4020C */  jal        func_800B1128
    /* 7DDA4 8008D5A4 21206002 */   addu      $a0, $s3, $zero
    /* 7DDA8 8008D5A8 21984000 */  addu       $s3, $v0, $zero
    /* 7DDAC 8008D5AC 4000622E */  sltiu      $v0, $s3, 0x40
    /* 7DDB0 8008D5B0 1B004014 */  bnez       $v0, .L8008D620
    /* 7DDB4 8008D5B4 C0FF7326 */   addiu     $s3, $s3, -0x40
    /* 7DDB8 8008D5B8 CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 7DDBC 8008D5BC CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 7DDC0 8008D5C0 19006202 */  multu      $s3, $v0
    /* 7DDC4 8008D5C4 10400000 */  mfhi       $t0
    /* 7DDC8 8008D5C8 82980800 */  srl        $s3, $t0, 2
    /* 7DDCC 8008D5CC 2000622E */  sltiu      $v0, $s3, 0x20
    /* 7DDD0 8008D5D0 02004014 */  bnez       $v0, .L8008D5DC
    /* 7DDD4 8008D5D4 FF005032 */   andi      $s0, $s2, 0xFF
    /* 7DDD8 8008D5D8 20001324 */  addiu      $s3, $zero, 0x20
  .L8008D5DC:
    /* 7DDDC 8008D5DC 21200002 */  addu       $a0, $s0, $zero
    /* 7DDE0 8008D5E0 A579000C */  jal        func_8001E694
    /* 7DDE4 8008D5E4 21286002 */   addu      $a1, $s3, $zero
    /* 7DDE8 8008D5E8 21200002 */  addu       $a0, $s0, $zero
    /* 7DDEC 8008D5EC 21286002 */  addu       $a1, $s3, $zero
    /* 7DDF0 8008D5F0 6979000C */  jal        func_8001E5A4
    /* 7DDF4 8008D5F4 080022AE */   sw        $v0, 0x8($s1)
    /* 7DDF8 8008D5F8 0800248E */  lw         $a0, 0x8($s1)
    /* 7DDFC 8008D5FC 100022AE */  sw         $v0, 0x10($s1)
    /* 7DE00 8008D600 02002296 */  lhu        $v0, 0x2($s1)
    /* 7DE04 8008D604 1000258E */  lw         $a1, 0x10($s1)
    /* 7DE08 8008D608 06002396 */  lhu        $v1, 0x6($s1)
    /* 7DE0C 8008D60C 21104400 */  addu       $v0, $v0, $a0
    /* 7DE10 8008D610 21186500 */  addu       $v1, $v1, $a1
    /* 7DE14 8008D614 020022A6 */  sh         $v0, 0x2($s1)
    /* 7DE18 8008D618 8A350208 */  j          .L8008D628
    /* 7DE1C 8008D61C 060023A6 */   sh        $v1, 0x6($s1)
  .L8008D620:
    /* 7DE20 8008D620 080020AE */  sw         $zero, 0x8($s1)
    /* 7DE24 8008D624 100020AE */  sw         $zero, 0x10($s1)
  .L8008D628:
    /* 7DE28 8008D628 21202002 */  addu       $a0, $s1, $zero
    /* 7DE2C 8008D62C 65000524 */  addiu      $a1, $zero, 0x65
    /* 7DE30 8008D630 01360208 */  j          .L8008D804
    /* 7DE34 8008D634 21300000 */   addu      $a2, $zero, $zero
  jlabel .L8008D638
    /* 7DE38 8008D638 476F010C */  jal        func_8005BD1C
    /* 7DE3C 8008D63C 21202002 */   addu      $a0, $s1, $zero
    /* 7DE40 8008D640 AB032492 */  lbu        $a0, 0x3AB($s1)
    /* 7DE44 8008D644 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 7DE48 8008D648 F36D010C */  jal        func_8005B7CC
    /* 7DE4C 8008D64C 0C000624 */   addiu     $a2, $zero, 0xC
    /* 7DE50 8008D650 FF004430 */  andi       $a0, $v0, 0xFF
    /* 7DE54 8008D654 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 7DE58 8008D658 23186400 */  subu       $v1, $v1, $a0
    /* 7DE5C 8008D65C 21206000 */  addu       $a0, $v1, $zero
    /* 7DE60 8008D660 02006104 */  bgez       $v1, .L8008D66C
    /* 7DE64 8008D664 AA0322A2 */   sb        $v0, 0x3AA($s1)
    /* 7DE68 8008D668 FF006424 */  addiu      $a0, $v1, 0xFF
  .L8008D66C:
    /* 7DE6C 8008D66C 03120400 */  sra        $v0, $a0, 8
    /* 7DE70 8008D670 00120200 */  sll        $v0, $v0, 8
    /* 7DE74 8008D674 23106200 */  subu       $v0, $v1, $v0
    /* 7DE78 8008D678 0800248E */  lw         $a0, 0x8($s1)
    /* 7DE7C 8008D67C 02002396 */  lhu        $v1, 0x2($s1)
    /* 7DE80 8008D680 00110200 */  sll        $v0, $v0, 4
    /* 7DE84 8008D684 260022A6 */  sh         $v0, 0x26($s1)
    /* 7DE88 8008D688 06002296 */  lhu        $v0, 0x6($s1)
    /* 7DE8C 8008D68C 21186400 */  addu       $v1, $v1, $a0
    /* 7DE90 8008D690 1000248E */  lw         $a0, 0x10($s1)
    /* 7DE94 8008D694 020023A6 */  sh         $v1, 0x2($s1)
    /* 7DE98 8008D698 90032392 */  lbu        $v1, 0x390($s1)
    /* 7DE9C 8008D69C 21104400 */  addu       $v0, $v0, $a0
    /* 7DEA0 8008D6A0 0500632C */  sltiu      $v1, $v1, 0x5
    /* 7DEA4 8008D6A4 15006014 */  bnez       $v1, .L8008D6FC
    /* 7DEA8 8008D6A8 060022A6 */   sh        $v0, 0x6($s1)
    /* 7DEAC 8008D6AC 6666053C */  lui        $a1, (0x66666667 >> 16)
    /* 7DEB0 8008D6B0 0800228E */  lw         $v0, 0x8($s1)
    /* 7DEB4 8008D6B4 6766A534 */  ori        $a1, $a1, (0x66666667 & 0xFFFF)
    /* 7DEB8 8008D6B8 C0180200 */  sll        $v1, $v0, 3
    /* 7DEBC 8008D6BC 21186200 */  addu       $v1, $v1, $v0
    /* 7DEC0 8008D6C0 18006500 */  mult       $v1, $a1
    /* 7DEC4 8008D6C4 1000228E */  lw         $v0, 0x10($s1)
    /* 7DEC8 8008D6C8 10480000 */  mfhi       $t1
    /* 7DECC 8008D6CC C0200200 */  sll        $a0, $v0, 3
    /* 7DED0 8008D6D0 21208200 */  addu       $a0, $a0, $v0
    /* 7DED4 8008D6D4 18008500 */  mult       $a0, $a1
    /* 7DED8 8008D6D8 C31F0300 */  sra        $v1, $v1, 31
    /* 7DEDC 8008D6DC 83100900 */  sra        $v0, $t1, 2
    /* 7DEE0 8008D6E0 23104300 */  subu       $v0, $v0, $v1
    /* 7DEE4 8008D6E4 C3270400 */  sra        $a0, $a0, 31
    /* 7DEE8 8008D6E8 080022AE */  sw         $v0, 0x8($s1)
    /* 7DEEC 8008D6EC 10280000 */  mfhi       $a1
    /* 7DEF0 8008D6F0 83100500 */  sra        $v0, $a1, 2
    /* 7DEF4 8008D6F4 23104400 */  subu       $v0, $v0, $a0
    /* 7DEF8 8008D6F8 100022AE */  sw         $v0, 0x10($s1)
  .L8008D6FC:
    /* 7DEFC 8008D6FC 90032292 */  lbu        $v0, 0x390($s1)
    /* 7DF00 8008D700 00000000 */  nop
    /* 7DF04 8008D704 83004014 */  bnez       $v0, .L8008D914
    /* 7DF08 8008D708 21202002 */   addu      $a0, $s1, $zero
    /* 7DF0C 8008D70C 62000524 */  addiu      $a1, $zero, 0x62
    /* 7DF10 8008D710 8C6E010C */  jal        func_8005BA30
    /* 7DF14 8008D714 17000624 */   addiu     $a2, $zero, 0x17
    /* 7DF18 8008D718 8D000224 */  addiu      $v0, $zero, 0x8D
    /* 7DF1C 8008D71C 960322A2 */  sb         $v0, 0x396($s1)
    /* 7DF20 8008D720 01000224 */  addiu      $v0, $zero, 0x1
    /* 7DF24 8008D724 45360208 */  j          .L8008D914
    /* 7DF28 8008D728 970322A2 */   sb        $v0, 0x397($s1)
  jlabel .L8008D72C
    /* 7DF2C 8008D72C 476F010C */  jal        func_8005BD1C
    /* 7DF30 8008D730 21202002 */   addu      $a0, $s1, $zero
    /* 7DF34 8008D734 AB032492 */  lbu        $a0, 0x3AB($s1)
    /* 7DF38 8008D738 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 7DF3C 8008D73C F36D010C */  jal        func_8005B7CC
    /* 7DF40 8008D740 0C000624 */   addiu     $a2, $zero, 0xC
    /* 7DF44 8008D744 FF004430 */  andi       $a0, $v0, 0xFF
    /* 7DF48 8008D748 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 7DF4C 8008D74C 23186400 */  subu       $v1, $v1, $a0
    /* 7DF50 8008D750 21206000 */  addu       $a0, $v1, $zero
    /* 7DF54 8008D754 02006104 */  bgez       $v1, .L8008D760
    /* 7DF58 8008D758 AA0322A2 */   sb        $v0, 0x3AA($s1)
    /* 7DF5C 8008D75C FF006424 */  addiu      $a0, $v1, 0xFF
  .L8008D760:
    /* 7DF60 8008D760 03120400 */  sra        $v0, $a0, 8
    /* 7DF64 8008D764 00120200 */  sll        $v0, $v0, 8
    /* 7DF68 8008D768 23106200 */  subu       $v0, $v1, $v0
    /* 7DF6C 8008D76C 90032392 */  lbu        $v1, 0x390($s1)
    /* 7DF70 8008D770 00110200 */  sll        $v0, $v0, 4
    /* 7DF74 8008D774 0B360208 */  j          .L8008D82C
    /* 7DF78 8008D778 260022A6 */   sh        $v0, 0x26($s1)
  jlabel .L8008D77C
    /* 7DF7C 8008D77C 476F010C */  jal        func_8005BD1C
    /* 7DF80 8008D780 21202002 */   addu      $a0, $s1, $zero
    /* 7DF84 8008D784 AB032492 */  lbu        $a0, 0x3AB($s1)
    /* 7DF88 8008D788 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 7DF8C 8008D78C F36D010C */  jal        func_8005B7CC
    /* 7DF90 8008D790 0C000624 */   addiu     $a2, $zero, 0xC
    /* 7DF94 8008D794 FF004430 */  andi       $a0, $v0, 0xFF
    /* 7DF98 8008D798 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 7DF9C 8008D79C 23186400 */  subu       $v1, $v1, $a0
    /* 7DFA0 8008D7A0 21306000 */  addu       $a2, $v1, $zero
    /* 7DFA4 8008D7A4 02006104 */  bgez       $v1, .L8008D7B0
    /* 7DFA8 8008D7A8 AA0322A2 */   sb        $v0, 0x3AA($s1)
    /* 7DFAC 8008D7AC FF006624 */  addiu      $a2, $v1, 0xFF
  .L8008D7B0:
    /* 7DFB0 8008D7B0 21202002 */  addu       $a0, $s1, $zero
    /* 7DFB4 8008D7B4 03120600 */  sra        $v0, $a2, 8
    /* 7DFB8 8008D7B8 00120200 */  sll        $v0, $v0, 8
    /* 7DFBC 8008D7BC 23106200 */  subu       $v0, $v1, $v0
    /* 7DFC0 8008D7C0 A0032596 */  lhu        $a1, 0x3A0($s1)
    /* 7DFC4 8008D7C4 00110200 */  sll        $v0, $v0, 4
    /* 7DFC8 8008D7C8 196E010C */  jal        func_8005B864
    /* 7DFCC 8008D7CC 260022A6 */   sh        $v0, 0x26($s1)
    /* 7DFD0 8008D7D0 A003228E */  lw         $v0, 0x3A0($s1)
    /* 7DFD4 8008D7D4 CCCC033C */  lui        $v1, (0xCCCCCCCD >> 16)
    /* 7DFD8 8008D7D8 CDCC6334 */  ori        $v1, $v1, (0xCCCCCCCD & 0xFFFF)
    /* 7DFDC 8008D7DC C0100200 */  sll        $v0, $v0, 3
    /* 7DFE0 8008D7E0 19004300 */  multu      $v0, $v1
    /* 7DFE4 8008D7E4 90032392 */  lbu        $v1, 0x390($s1)
    /* 7DFE8 8008D7E8 10400000 */  mfhi       $t0
    /* 7DFEC 8008D7EC C2100800 */  srl        $v0, $t0, 3
    /* 7DFF0 8008D7F0 48006014 */  bnez       $v1, .L8008D914
    /* 7DFF4 8008D7F4 A00322AE */   sw        $v0, 0x3A0($s1)
    /* 7DFF8 8008D7F8 21202002 */  addu       $a0, $s1, $zero
    /* 7DFFC 8008D7FC 2C000524 */  addiu      $a1, $zero, 0x2C
    /* 7E000 8008D800 23000624 */  addiu      $a2, $zero, 0x23
  .L8008D804:
    /* 7E004 8008D804 8C6E010C */  jal        func_8005BA30
    /* 7E008 8008D808 00000000 */   nop
    /* 7E00C 8008D80C 97032292 */  lbu        $v0, 0x397($s1)
    /* 7E010 8008D810 00000000 */  nop
    /* 7E014 8008D814 01004224 */  addiu      $v0, $v0, 0x1
    /* 7E018 8008D818 45360208 */  j          .L8008D914
    /* 7E01C 8008D81C 970322A2 */   sb        $v0, 0x397($s1)
  jlabel .L8008D820
    /* 7E020 8008D820 476F010C */  jal        func_8005BD1C
    /* 7E024 8008D824 21202002 */   addu      $a0, $s1, $zero
    /* 7E028 8008D828 90032392 */  lbu        $v1, 0x390($s1)
  .L8008D82C:
    /* 7E02C 8008D82C 2E000224 */  addiu      $v0, $zero, 0x2E
    /* 7E030 8008D830 38006214 */  bne        $v1, $v0, .L8008D914
    /* 7E034 8008D834 21202002 */   addu      $a0, $s1, $zero
    /* 7E038 8008D838 01000524 */  addiu      $a1, $zero, 0x1
    /* 7E03C 8008D83C 8C6E010C */  jal        func_8005BA30
    /* 7E040 8008D840 21300000 */   addu      $a2, $zero, $zero
    /* 7E044 8008D844 82000224 */  addiu      $v0, $zero, 0x82
    /* 7E048 8008D848 960322A2 */  sb         $v0, 0x396($s1)
    /* 7E04C 8008D84C 45360208 */  j          .L8008D914
    /* 7E050 8008D850 970320A2 */   sb        $zero, 0x397($s1)
  jlabel .L8008D854
    /* 7E054 8008D854 02002486 */  lh         $a0, 0x2($s1)
    /* 7E058 8008D858 46008696 */  lhu        $a2, 0x46($s4)
    /* 7E05C 8008D85C 06002586 */  lh         $a1, 0x6($s1)
    /* 7E060 8008D860 76008796 */  lhu        $a3, 0x76($s4)
    /* 7E064 8008D864 00340600 */  sll        $a2, $a2, 16
    /* 7E068 8008D868 03340600 */  sra        $a2, $a2, 16
    /* 7E06C 8008D86C 003C0700 */  sll        $a3, $a3, 16
    /* 7E070 8008D870 DB6C010C */  jal        func_8005B36C
    /* 7E074 8008D874 033C0700 */   sra       $a3, $a3, 16
    /* 7E078 8008D878 F402838E */  lw         $v1, 0x2F4($s4)
    /* 7E07C 8008D87C 00000000 */  nop
    /* 7E080 8008D880 A4036490 */  lbu        $a0, 0x3A4($v1)
    /* 7E084 8008D884 21904000 */  addu       $s2, $v0, $zero
    /* 7E088 8008D888 23104402 */  subu       $v0, $s2, $a0
    /* 7E08C 8008D88C FF004330 */  andi       $v1, $v0, 0xFF
    /* 7E090 8008D890 8100622C */  sltiu      $v0, $v1, 0x81
    /* 7E094 8008D894 08004014 */  bnez       $v0, .L8008D8B8
    /* 7E098 8008D898 40006228 */   slti      $v0, $v1, 0x40
    /* 7E09C 8008D89C 23109200 */  subu       $v0, $a0, $s2
    /* 7E0A0 8008D8A0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7E0A4 8008D8A4 40004228 */  slti       $v0, $v0, 0x40
    /* 7E0A8 8008D8A8 AD004010 */  beqz       $v0, .L8008DB60
    /* 7E0AC 8008D8AC 00000000 */   nop
    /* 7E0B0 8008D8B0 30360208 */  j          .L8008D8C0
    /* 7E0B4 8008D8B4 00000000 */   nop
  .L8008D8B8:
    /* 7E0B8 8008D8B8 A9004010 */  beqz       $v0, .L8008DB60
    /* 7E0BC 8008D8BC 00000000 */   nop
  .L8008D8C0:
    /* 7E0C0 8008D8C0 02002686 */  lh         $a2, 0x2($s1)
    /* 7E0C4 8008D8C4 F402828E */  lw         $v0, 0x2F4($s4)
    /* 7E0C8 8008D8C8 06002786 */  lh         $a3, 0x6($s1)
    /* 7E0CC 8008D8CC 02004484 */  lh         $a0, 0x2($v0)
    /* 7E0D0 8008D8D0 06004584 */  lh         $a1, 0x6($v0)
    /* 7E0D4 8008D8D4 DB6C010C */  jal        func_8005B36C
    /* 7E0D8 8008D8D8 00000000 */   nop
    /* 7E0DC 8008D8DC 23105200 */  subu       $v0, $v0, $s2
    /* 7E0E0 8008D8E0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7E0E4 8008D8E4 8100422C */  sltiu      $v0, $v0, 0x81
    /* 7E0E8 8008D8E8 AC0322A2 */  sb         $v0, 0x3AC($s1)
    /* 7E0EC 8008D8EC 40008296 */  lhu        $v0, 0x40($s4)
    /* 7E0F0 8008D8F0 00000000 */  nop
    /* 7E0F4 8008D8F4 C20322A6 */  sh         $v0, 0x3C2($s1)
    /* 7E0F8 8008D8F8 58008296 */  lhu        $v0, 0x58($s4)
    /* 7E0FC 8008D8FC 00000000 */  nop
    /* 7E100 8008D900 C40322A6 */  sh         $v0, 0x3C4($s1)
    /* 7E104 8008D904 70008296 */  lhu        $v0, 0x70($s4)
    /* 7E108 8008D908 970320A2 */  sb         $zero, 0x397($s1)
    /* 7E10C 8008D90C D8360208 */  j          .L8008DB60
    /* 7E110 8008D910 C60322A6 */   sh        $v0, 0x3C6($s1)
  jlabel .L8008D914
    /* 7E114 8008D914 8E032396 */  lhu        $v1, 0x38E($s1)
    /* 7E118 8008D918 64000224 */  addiu      $v0, $zero, 0x64
    /* 7E11C 8008D91C 30006214 */  bne        $v1, $v0, .L8008D9E0
    /* 7E120 8008D920 0BB6053C */   lui       $a1, (0xB60B60B7 >> 16)
    /* 7E124 8008D924 92032292 */  lbu        $v0, 0x392($s1)
    /* 7E128 8008D928 98032492 */  lbu        $a0, 0x398($s1)
    /* 7E12C 8008D92C 40180200 */  sll        $v1, $v0, 1
    /* 7E130 8008D930 21186200 */  addu       $v1, $v1, $v0
    /* 7E134 8008D934 80180300 */  sll        $v1, $v1, 2
    /* 7E138 8008D938 40110400 */  sll        $v0, $a0, 5
    /* 7E13C 8008D93C 21104400 */  addu       $v0, $v0, $a0
    /* 7E140 8008D940 C0100200 */  sll        $v0, $v0, 3
    /* 7E144 8008D944 21186200 */  addu       $v1, $v1, $v0
    /* 7E148 8008D948 1180013C */  lui        $at, %hi(D_8010C330)
    /* 7E14C 8008D94C 21082300 */  addu       $at, $at, $v1
    /* 7E150 8008D950 30C3228C */  lw         $v0, %lo(D_8010C330)($at)
    /* 7E154 8008D954 B760A534 */  ori        $a1, $a1, (0xB60B60B7 & 0xFFFF)
    /* 7E158 8008D958 C2120200 */  srl        $v0, $v0, 11
    /* 7E15C 8008D95C 7F004230 */  andi       $v0, $v0, 0x7F
    /* 7E160 8008D960 64004224 */  addiu      $v0, $v0, 0x64
    /* 7E164 8008D964 80180200 */  sll        $v1, $v0, 2
    /* 7E168 8008D968 21186200 */  addu       $v1, $v1, $v0
    /* 7E16C 8008D96C 40190300 */  sll        $v1, $v1, 5
    /* 7E170 8008D970 23180300 */  negu       $v1, $v1
    /* 7E174 8008D974 18006500 */  mult       $v1, $a1
    /* 7E178 8008D978 4E008296 */  lhu        $v0, (0x1F80004E & 0xFFFF)($s4)
    /* 7E17C 8008D97C 00000000 */  nop
    /* 7E180 8008D980 00140200 */  sll        $v0, $v0, 16
    /* 7E184 8008D984 03140200 */  sra        $v0, $v0, 16
    /* 7E188 8008D988 10400000 */  mfhi       $t0
    /* 7E18C 8008D98C 21200301 */  addu       $a0, $t0, $v1
    /* 7E190 8008D990 C3210400 */  sra        $a0, $a0, 7
    /* 7E194 8008D994 C31F0300 */  sra        $v1, $v1, 31
    /* 7E198 8008D998 23208300 */  subu       $a0, $a0, $v1
    /* 7E19C 8008D99C 2A104400 */  slt        $v0, $v0, $a0
    /* 7E1A0 8008D9A0 0A004010 */  beqz       $v0, .L8008D9CC
    /* 7E1A4 8008D9A4 00000000 */   nop
    /* 7E1A8 8008D9A8 AE79000C */  jal        func_8001E6B8
    /* 7E1AC 8008D9AC 20000424 */   addiu     $a0, $zero, 0x20
    /* 7E1B0 8008D9B0 48004424 */  addiu      $a0, $v0, 0x48
    /* 7E1B4 8008D9B4 AC032292 */  lbu        $v0, 0x3AC($s1)
    /* 7E1B8 8008D9B8 AA032392 */  lbu        $v1, 0x3AA($s1)
    /* 7E1BC 8008D9BC 48004014 */  bnez       $v0, .L8008DAE0
    /* 7E1C0 8008D9C0 21906400 */   addu      $s2, $v1, $a0
    /* 7E1C4 8008D9C4 B8360208 */  j          .L8008DAE0
    /* 7E1C8 8008D9C8 23906400 */   subu      $s2, $v1, $a0
  .L8008D9CC:
    /* 7E1CC 8008D9CC E871010C */  jal        func_8005C7A0
    /* 7E1D0 8008D9D0 10000424 */   addiu     $a0, $zero, 0x10
    /* 7E1D4 8008D9D4 AA032392 */  lbu        $v1, 0x3AA($s1)
    /* 7E1D8 8008D9D8 B8360208 */  j          .L8008DAE0
    /* 7E1DC 8008D9DC 21906200 */   addu      $s2, $v1, $v0
  .L8008D9E0:
    /* 7E1E0 8008D9E0 02002486 */  lh         $a0, 0x2($s1)
    /* 7E1E4 8008D9E4 36008696 */  lhu        $a2, (0x1F800036 & 0xFFFF)($s4)
    /* 7E1E8 8008D9E8 06002586 */  lh         $a1, 0x6($s1)
    /* 7E1EC 8008D9EC 66008796 */  lhu        $a3, (0x1F800066 & 0xFFFF)($s4)
    /* 7E1F0 8008D9F0 00340600 */  sll        $a2, $a2, 16
    /* 7E1F4 8008D9F4 03340600 */  sra        $a2, $a2, 16
    /* 7E1F8 8008D9F8 003C0700 */  sll        $a3, $a3, 16
    /* 7E1FC 8008D9FC DB6C010C */  jal        func_8005B36C
    /* 7E200 8008DA00 033C0700 */   sra       $a3, $a3, 16
    /* 7E204 8008DA04 AA032392 */  lbu        $v1, 0x3AA($s1)
    /* 7E208 8008DA08 00000000 */  nop
    /* 7E20C 8008DA0C 23104300 */  subu       $v0, $v0, $v1
    /* 7E210 8008DA10 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7E214 8008DA14 8100422C */  sltiu      $v0, $v0, 0x81
    /* 7E218 8008DA18 02004010 */  beqz       $v0, .L8008DA24
    /* 7E21C 8008DA1C 01001024 */   addiu     $s0, $zero, 0x1
    /* 7E220 8008DA20 FFFF1024 */  addiu      $s0, $zero, -0x1
  .L8008DA24:
    /* 7E224 8008DA24 0BB6053C */  lui        $a1, (0xB60B60B7 >> 16)
    /* 7E228 8008DA28 92032292 */  lbu        $v0, 0x392($s1)
    /* 7E22C 8008DA2C 98032492 */  lbu        $a0, 0x398($s1)
    /* 7E230 8008DA30 40180200 */  sll        $v1, $v0, 1
    /* 7E234 8008DA34 21186200 */  addu       $v1, $v1, $v0
    /* 7E238 8008DA38 80180300 */  sll        $v1, $v1, 2
    /* 7E23C 8008DA3C 40110400 */  sll        $v0, $a0, 5
    /* 7E240 8008DA40 21104400 */  addu       $v0, $v0, $a0
    /* 7E244 8008DA44 C0100200 */  sll        $v0, $v0, 3
    /* 7E248 8008DA48 21186200 */  addu       $v1, $v1, $v0
    /* 7E24C 8008DA4C 1180013C */  lui        $at, %hi(D_8010C330)
    /* 7E250 8008DA50 21082300 */  addu       $at, $at, $v1
    /* 7E254 8008DA54 30C3228C */  lw         $v0, %lo(D_8010C330)($at)
    /* 7E258 8008DA58 B760A534 */  ori        $a1, $a1, (0xB60B60B7 & 0xFFFF)
    /* 7E25C 8008DA5C C2120200 */  srl        $v0, $v0, 11
    /* 7E260 8008DA60 7F004230 */  andi       $v0, $v0, 0x7F
    /* 7E264 8008DA64 64004224 */  addiu      $v0, $v0, 0x64
    /* 7E268 8008DA68 80180200 */  sll        $v1, $v0, 2
    /* 7E26C 8008DA6C 21186200 */  addu       $v1, $v1, $v0
    /* 7E270 8008DA70 40190300 */  sll        $v1, $v1, 5
    /* 7E274 8008DA74 23180300 */  negu       $v1, $v1
    /* 7E278 8008DA78 18006500 */  mult       $v1, $a1
    /* 7E27C 8008DA7C 4E008296 */  lhu        $v0, (0x1F80004E & 0xFFFF)($s4)
    /* 7E280 8008DA80 00000000 */  nop
    /* 7E284 8008DA84 00140200 */  sll        $v0, $v0, 16
    /* 7E288 8008DA88 03140200 */  sra        $v0, $v0, 16
    /* 7E28C 8008DA8C 10400000 */  mfhi       $t0
    /* 7E290 8008DA90 21200301 */  addu       $a0, $t0, $v1
    /* 7E294 8008DA94 C3210400 */  sra        $a0, $a0, 7
    /* 7E298 8008DA98 C31F0300 */  sra        $v1, $v1, 31
    /* 7E29C 8008DA9C 23208300 */  subu       $a0, $a0, $v1
    /* 7E2A0 8008DAA0 2A104400 */  slt        $v0, $v0, $a0
    /* 7E2A4 8008DAA4 05004010 */  beqz       $v0, .L8008DABC
    /* 7E2A8 8008DAA8 00000000 */   nop
    /* 7E2AC 8008DAAC AE79000C */  jal        func_8001E6B8
    /* 7E2B0 8008DAB0 14000424 */   addiu     $a0, $zero, 0x14
    /* 7E2B4 8008DAB4 B2360208 */  j          .L8008DAC8
    /* 7E2B8 8008DAB8 34004224 */   addiu     $v0, $v0, 0x34
  .L8008DABC:
    /* 7E2BC 8008DABC AE79000C */  jal        func_8001E6B8
    /* 7E2C0 8008DAC0 20000424 */   addiu     $a0, $zero, 0x20
    /* 7E2C4 8008DAC4 30004224 */  addiu      $v0, $v0, 0x30
  .L8008DAC8:
    /* 7E2C8 8008DAC8 18000202 */  mult       $s0, $v0
    /* 7E2CC 8008DACC F402828E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s4)
    /* 7E2D0 8008DAD0 00000000 */  nop
    /* 7E2D4 8008DAD4 A4034290 */  lbu        $v0, 0x3A4($v0)
    /* 7E2D8 8008DAD8 12400000 */  mflo       $t0
    /* 7E2DC 8008DADC 21904800 */  addu       $s2, $v0, $t0
  .L8008DAE0:
    /* 7E2E0 8008DAE0 F402828E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s4)
    /* 7E2E4 8008DAE4 16B2033C */  lui        $v1, (0xB21642C9 >> 16)
    /* 7E2E8 8008DAE8 0C00428C */  lw         $v0, 0xC($v0)
    /* 7E2EC 8008DAEC C9426334 */  ori        $v1, $v1, (0xB21642C9 & 0xFFFF)
    /* 7E2F0 8008DAF0 18004300 */  mult       $v0, $v1
    /* 7E2F4 8008DAF4 10400000 */  mfhi       $t0
    /* 7E2F8 8008DAF8 21200201 */  addu       $a0, $t0, $v0
    /* 7E2FC 8008DAFC 43220400 */  sra        $a0, $a0, 9
    /* 7E300 8008DB00 C3170200 */  sra        $v0, $v0, 31
    /* 7E304 8008DB04 23208200 */  subu       $a0, $a0, $v0
    /* 7E308 8008DB08 02008104 */  bgez       $a0, .L8008DB14
    /* 7E30C 8008DB0C 00000000 */   nop
    /* 7E310 8008DB10 23200400 */  negu       $a0, $a0
  .L8008DB14:
    /* 7E314 8008DB14 AE79000C */  jal        func_8001E6B8
    /* 7E318 8008DB18 00000000 */   nop
    /* 7E31C 8008DB1C 04000424 */  addiu      $a0, $zero, 0x4
    /* 7E320 8008DB20 AE79000C */  jal        func_8001E6B8
    /* 7E324 8008DB24 21804000 */   addu      $s0, $v0, $zero
    /* 7E328 8008DB28 21202002 */  addu       $a0, $s1, $zero
    /* 7E32C 8008DB2C 0C000524 */  addiu      $a1, $zero, 0xC
    /* 7E330 8008DB30 FF004632 */  andi       $a2, $s2, 0xFF
    /* 7E334 8008DB34 21380000 */  addu       $a3, $zero, $zero
    /* 7E338 8008DB38 23105000 */  subu       $v0, $v0, $s0
    /* 7E33C 8008DB3C 8B51020C */  jal        func_8009462C
    /* 7E340 8008DB40 1000A2AF */   sw        $v0, 0x10($sp)
    /* 7E344 8008DB44 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7E348 8008DB48 03004010 */  beqz       $v0, .L8008DB58
    /* 7E34C 8008DB4C 00000000 */   nop
    /* 7E350 8008DB50 855E010C */  jal        func_80057A14
    /* 7E354 8008DB54 21202002 */   addu      $a0, $s1, $zero
  .L8008DB58:
    /* 7E358 8008DB58 3A55020C */  jal        func_800954E8
    /* 7E35C 8008DB5C 21202002 */   addu      $a0, $s1, $zero
  .L8008DB60:
    /* 7E360 8008DB60 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 7E364 8008DB64 2800B48F */  lw         $s4, 0x28($sp)
    /* 7E368 8008DB68 2400B38F */  lw         $s3, 0x24($sp)
    /* 7E36C 8008DB6C 2000B28F */  lw         $s2, 0x20($sp)
    /* 7E370 8008DB70 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 7E374 8008DB74 1800B08F */  lw         $s0, 0x18($sp)
    /* 7E378 8008DB78 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 7E37C 8008DB7C 0800E003 */  jr         $ra
    /* 7E380 8008DB80 00000000 */   nop
endlabel func_8008D358
