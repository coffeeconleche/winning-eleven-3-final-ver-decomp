nonmatching func_8007B41C, 0x2E4

glabel func_8007B41C
    /* 6BC1C 8007B41C 801F023C */  lui        $v0, (0x1F800334 >> 16)
    /* 6BC20 8007B420 34034294 */  lhu        $v0, (0x1F800334 & 0xFFFF)($v0)
    /* 6BC24 8007B424 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 6BC28 8007B428 3400B3AF */  sw         $s3, 0x34($sp)
    /* 6BC2C 8007B42C 1080133C */  lui        $s3, %hi(D_800FF748)
    /* 6BC30 8007B430 48F77326 */  addiu      $s3, $s3, %lo(D_800FF748)
    /* 6BC34 8007B434 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 6BC38 8007B438 801F113C */  lui        $s1, (0x1F8002F4 >> 16)
    /* 6BC3C 8007B43C 3800BFAF */  sw         $ra, 0x38($sp)
    /* 6BC40 8007B440 3000B2AF */  sw         $s2, 0x30($sp)
    /* 6BC44 8007B444 03004010 */  beqz       $v0, .L8007B454
    /* 6BC48 8007B448 2800B0AF */   sw        $s0, 0x28($sp)
    /* 6BC4C 8007B44C 73CA010C */  jal        func_800729CC
    /* 6BC50 8007B450 00000000 */   nop
  .L8007B454:
    /* 6BC54 8007B454 21200000 */  addu       $a0, $zero, $zero
    /* 6BC58 8007B458 05000624 */  addiu      $a2, $zero, 0x5
    /* 6BC5C 8007B45C 2F000524 */  addiu      $a1, $zero, 0x2F
    /* 6BC60 8007B460 7F076326 */  addiu      $v1, $s3, 0x77F
  .L8007B464:
    /* 6BC64 8007B464 E1022292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s1)
    /* 6BC68 8007B468 00000000 */  nop
    /* 6BC6C 8007B46C 05004614 */  bne        $v0, $a2, .L8007B484
    /* 6BC70 8007B470 00000000 */   nop
    /* 6BC74 8007B474 03006290 */  lbu        $v0, 0x3($v1)
    /* 6BC78 8007B478 00000000 */  nop
    /* 6BC7C 8007B47C 03004014 */  bnez       $v0, .L8007B48C
    /* 6BC80 8007B480 00000000 */   nop
  .L8007B484:
    /* 6BC84 8007B484 FFFF65A0 */  sb         $a1, -0x1($v1)
    /* 6BC88 8007B488 000060A0 */  sb         $zero, 0x0($v1)
  .L8007B48C:
    /* 6BC8C 8007B48C 01008424 */  addiu      $a0, $a0, 0x1
    /* 6BC90 8007B490 16008228 */  slti       $v0, $a0, 0x16
    /* 6BC94 8007B494 F3FF4014 */  bnez       $v0, .L8007B464
    /* 6BC98 8007B498 E8036324 */   addiu     $v1, $v1, 0x3E8
    /* 6BC9C 8007B49C AD022392 */  lbu        $v1, (0x1F8002AD & 0xFFFF)($s1)
    /* 6BCA0 8007B4A0 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 6BCA4 8007B4A4 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 6BCA8 8007B4A8 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6BCAC 8007B4AC 19006200 */  multu      $v1, $v0
    /* 6BCB0 8007B4B0 A80220A2 */  sb         $zero, (0x1F8002A8 & 0xFFFF)($s1)
    /* 6BCB4 8007B4B4 10400000 */  mfhi       $t0
    /* 6BCB8 8007B4B8 02210800 */  srl        $a0, $t0, 4
    /* 6BCBC 8007B4BC 40100400 */  sll        $v0, $a0, 1
    /* 6BCC0 8007B4C0 21104400 */  addu       $v0, $v0, $a0
    /* 6BCC4 8007B4C4 C0100200 */  sll        $v0, $v0, 3
    /* 6BCC8 8007B4C8 23186200 */  subu       $v1, $v1, $v0
    /* 6BCCC 8007B4CC FF006330 */  andi       $v1, $v1, 0xFF
    /* 6BCD0 8007B4D0 40110300 */  sll        $v0, $v1, 5
    /* 6BCD4 8007B4D4 23104300 */  subu       $v0, $v0, $v1
    /* 6BCD8 8007B4D8 80100200 */  sll        $v0, $v0, 2
    /* 6BCDC 8007B4DC 21104300 */  addu       $v0, $v0, $v1
    /* 6BCE0 8007B4E0 C0100200 */  sll        $v0, $v0, 3
    /* 6BCE4 8007B4E4 21806202 */  addu       $s0, $s3, $v0
    /* 6BCE8 8007B4E8 98030292 */  lbu        $v0, 0x398($s0)
    /* 6BCEC 8007B4EC 00000000 */  nop
    /* 6BCF0 8007B4F0 21102202 */  addu       $v0, $s1, $v0
    /* 6BCF4 8007B4F4 CF0240A0 */  sb         $zero, (0x1F8002CF & 0xFFFF)($v0)
    /* 6BCF8 8007B4F8 98030292 */  lbu        $v0, 0x398($s0)
    /* 6BCFC 8007B4FC 01000324 */  addiu      $v1, $zero, 0x1
    /* 6BD00 8007B500 01004238 */  xori       $v0, $v0, 0x1
    /* 6BD04 8007B504 21102202 */  addu       $v0, $s1, $v0
    /* 6BD08 8007B508 CF0243A0 */  sb         $v1, (0x1F8002CF & 0xFFFF)($v0)
    /* 6BD0C 8007B50C 92030292 */  lbu        $v0, 0x392($s0)
    /* 6BD10 8007B510 98030492 */  lbu        $a0, 0x398($s0)
    /* 6BD14 8007B514 40180200 */  sll        $v1, $v0, 1
    /* 6BD18 8007B518 21186200 */  addu       $v1, $v1, $v0
    /* 6BD1C 8007B51C 80180300 */  sll        $v1, $v1, 2
    /* 6BD20 8007B520 40110400 */  sll        $v0, $a0, 5
    /* 6BD24 8007B524 21104400 */  addu       $v0, $v0, $a0
    /* 6BD28 8007B528 C0100200 */  sll        $v0, $v0, 3
    /* 6BD2C 8007B52C 21186200 */  addu       $v1, $v1, $v0
    /* 6BD30 8007B530 1180013C */  lui        $at, %hi(D_8010C330)
    /* 6BD34 8007B534 21082300 */  addu       $at, $at, $v1
    /* 6BD38 8007B538 30C3228C */  lw         $v0, %lo(D_8010C330)($at)
    /* 6BD3C 8007B53C 48001224 */  addiu      $s2, $zero, 0x48
    /* 6BD40 8007B540 02110200 */  srl        $v0, $v0, 4
    /* 6BD44 8007B544 01004230 */  andi       $v0, $v0, 0x1
    /* 6BD48 8007B548 02004014 */  bnez       $v0, .L8007B554
    /* 6BD4C 8007B54C AC0302A2 */   sb        $v0, 0x3AC($s0)
    /* 6BD50 8007B550 38001224 */  addiu      $s2, $zero, 0x38
  .L8007B554:
    /* 6BD54 8007B554 BC022296 */  lhu        $v0, (0x1F8002BC & 0xFFFF)($s1)
    /* 6BD58 8007B558 00000000 */  nop
    /* 6BD5C 8007B55C 00140200 */  sll        $v0, $v0, 16
    /* 6BD60 8007B560 04004104 */  bgez       $v0, .L8007B574
    /* 6BD64 8007B564 80320224 */   addiu     $v0, $zero, 0x3280
    /* 6BD68 8007B568 F402238E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s1)
    /* 6BD6C 8007B56C 5EED0108 */  j          .L8007B578
    /* 6BD70 8007B570 80CD0224 */   addiu     $v0, $zero, -0x3280
  .L8007B574:
    /* 6BD74 8007B574 F402238E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s1)
  .L8007B578:
    /* 6BD78 8007B578 00000000 */  nop
    /* 6BD7C 8007B57C 020062A4 */  sh         $v0, 0x2($v1)
    /* 6BD80 8007B580 F402238E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s1)
    /* 6BD84 8007B584 E0FF0224 */  addiu      $v0, $zero, -0x20
    /* 6BD88 8007B588 040062A4 */  sh         $v0, 0x4($v1)
    /* 6BD8C 8007B58C BE022296 */  lhu        $v0, (0x1F8002BE & 0xFFFF)($s1)
    /* 6BD90 8007B590 00000000 */  nop
    /* 6BD94 8007B594 00140200 */  sll        $v0, $v0, 16
    /* 6BD98 8007B598 04004018 */  blez       $v0, .L8007B5AC
    /* 6BD9C 8007B59C C0200224 */   addiu     $v0, $zero, 0x20C0
    /* 6BDA0 8007B5A0 F402238E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s1)
    /* 6BDA4 8007B5A4 6DED0108 */  j          .L8007B5B4
    /* 6BDA8 8007B5A8 80FF5226 */   addiu     $s2, $s2, -0x80
  .L8007B5AC:
    /* 6BDAC 8007B5AC F402238E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s1)
    /* 6BDB0 8007B5B0 40DF0224 */  addiu      $v0, $zero, -0x20C0
  .L8007B5B4:
    /* 6BDB4 8007B5B4 060062A4 */  sh         $v0, 0x6($v1)
    /* 6BDB8 8007B5B8 F402238E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s1)
    /* 6BDBC 8007B5BC 99030292 */  lbu        $v0, 0x399($s0)
    /* 6BDC0 8007B5C0 02006484 */  lh         $a0, 0x2($v1)
    /* 6BDC4 8007B5C4 06006584 */  lh         $a1, 0x6($v1)
    /* 6BDC8 8007B5C8 02004014 */  bnez       $v0, .L8007B5D4
    /* 6BDCC 8007B5CC 10D40624 */   addiu     $a2, $zero, -0x2BF0
    /* 6BDD0 8007B5D0 F02B0624 */  addiu      $a2, $zero, 0x2BF0
  .L8007B5D4:
    /* 6BDD4 8007B5D4 DB6C010C */  jal        func_8005B36C
    /* 6BDD8 8007B5D8 21380000 */   addu      $a3, $zero, $zero
    /* 6BDDC 8007B5DC F402238E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s1)
    /* 6BDE0 8007B5E0 00000000 */  nop
    /* 6BDE4 8007B5E4 A40362A0 */  sb         $v0, 0x3A4($v1)
    /* 6BDE8 8007B5E8 F402228E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s1)
    /* 6BDEC 8007B5EC 21200002 */  addu       $a0, $s0, $zero
    /* 6BDF0 8007B5F0 A4034290 */  lbu        $v0, 0x3A4($v0)
    /* 6BDF4 8007B5F4 2F000524 */  addiu      $a1, $zero, 0x2F
    /* 6BDF8 8007B5F8 AB0302A2 */  sb         $v0, 0x3AB($s0)
    /* 6BDFC 8007B5FC F402228E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s1)
    /* 6BE00 8007B600 21300000 */  addu       $a2, $zero, $zero
    /* 6BE04 8007B604 8C6E010C */  jal        func_8005BA30
    /* 6BE08 8007B608 960340A0 */   sb        $zero, 0x396($v0)
    /* 6BE0C 8007B60C 21200002 */  addu       $a0, $s0, $zero
    /* 6BE10 8007B610 FF004532 */  andi       $a1, $s2, 0xFF
    /* 6BE14 8007B614 01000224 */  addiu      $v0, $zero, 0x1
    /* 6BE18 8007B618 970302A2 */  sb         $v0, 0x397($s0)
    /* 6BE1C 8007B61C 39E3010C */  jal        func_80078CE4
    /* 6BE20 8007B620 AA0312A2 */   sb        $s2, 0x3AA($s0)
    /* 6BE24 8007B624 0496020C */  jal        func_800A5810
    /* 6BE28 8007B628 00000000 */   nop
    /* 6BE2C 8007B62C 1458020C */  jal        func_80096050
    /* 6BE30 8007B630 00000000 */   nop
    /* 6BE34 8007B634 0446010C */  jal        func_80051810
    /* 6BE38 8007B638 00000000 */   nop
    /* 6BE3C 8007B63C 0A61020C */  jal        func_80098428
    /* 6BE40 8007B640 00000000 */   nop
    /* 6BE44 8007B644 F626020C */  jal        func_80089BD8
    /* 6BE48 8007B648 EC0120A2 */   sb        $zero, (0x1F8001EC & 0xFFFF)($s1)
    /* 6BE4C 8007B64C FF7F0224 */  addiu      $v0, $zero, 0x7FFF
    /* 6BE50 8007B650 B80222A6 */  sh         $v0, (0x1F8002B8 & 0xFFFF)($s1)
    /* 6BE54 8007B654 02000224 */  addiu      $v0, $zero, 0x2
    /* 6BE58 8007B658 960220A6 */  sh         $zero, (0x1F800296 & 0xFFFF)($s1)
    /* 6BE5C 8007B65C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6BE60 8007B660 21086102 */  addu       $at, $s3, $at
    /* 6BE64 8007B664 A48822A0 */  sb         $v0, -0x775C($at)
    /* 6BE68 8007B668 3681000C */  jal        func_800204D8
    /* 6BE6C 8007B66C 00000000 */   nop
    /* 6BE70 8007B670 5A3B010C */  jal        func_8004ED68
    /* 6BE74 8007B674 21200000 */   addu      $a0, $zero, $zero
    /* 6BE78 8007B678 5A3B010C */  jal        func_8004ED68
    /* 6BE7C 8007B67C 01000424 */   addiu     $a0, $zero, 0x1
    /* 6BE80 8007B680 21200002 */  addu       $a0, $s0, $zero
    /* 6BE84 8007B684 0366010C */  jal        func_8005980C
    /* 6BE88 8007B688 940220A6 */   sh        $zero, (0x1F800294 & 0xFFFF)($s1)
    /* 6BE8C 8007B68C 775C000C */  jal        func_800171DC
    /* 6BE90 8007B690 00000000 */   nop
    /* 6BE94 8007B694 E1022292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s1)
    /* 6BE98 8007B698 05000324 */  addiu      $v1, $zero, 0x5
    /* 6BE9C 8007B69C FF004230 */  andi       $v0, $v0, 0xFF
    /* 6BEA0 8007B6A0 0F004314 */  bne        $v0, $v1, .L8007B6E0
    /* 6BEA4 8007B6A4 11000424 */   addiu     $a0, $zero, 0x11
    /* 6BEA8 8007B6A8 09000524 */  addiu      $a1, $zero, 0x9
    /* 6BEAC 8007B6AC 21300000 */  addu       $a2, $zero, $zero
    /* 6BEB0 8007B6B0 21380000 */  addu       $a3, $zero, $zero
    /* 6BEB4 8007B6B4 40000224 */  addiu      $v0, $zero, 0x40
    /* 6BEB8 8007B6B8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 6BEBC 8007B6BC 00100224 */  addiu      $v0, $zero, 0x1000
    /* 6BEC0 8007B6C0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 6BEC4 8007B6C4 1800A2AF */  sw         $v0, 0x18($sp)
    /* 6BEC8 8007B6C8 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 6BECC 8007B6CC 1C75000C */  jal        func_8001D470
    /* 6BED0 8007B6D0 2000A0AF */   sw        $zero, 0x20($sp)
    /* 6BED4 8007B6D4 446560A2 */  sb         $zero, 0x6544($s3)
    /* 6BED8 8007B6D8 546460A2 */  sb         $zero, 0x6454($s3)
    /* 6BEDC 8007B6DC 7C6460A2 */  sb         $zero, 0x647C($s3)
  .L8007B6E0:
    /* 6BEE0 8007B6E0 3800BF8F */  lw         $ra, 0x38($sp)
    /* 6BEE4 8007B6E4 3400B38F */  lw         $s3, 0x34($sp)
    /* 6BEE8 8007B6E8 3000B28F */  lw         $s2, 0x30($sp)
    /* 6BEEC 8007B6EC 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 6BEF0 8007B6F0 2800B08F */  lw         $s0, 0x28($sp)
    /* 6BEF4 8007B6F4 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 6BEF8 8007B6F8 0800E003 */  jr         $ra
    /* 6BEFC 8007B6FC 00000000 */   nop
endlabel func_8007B41C
