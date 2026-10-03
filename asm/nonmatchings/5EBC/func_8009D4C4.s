nonmatching func_8009D4C4, 0x1AC

glabel func_8009D4C4
    /* 8DCC4 8009D4C4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8DCC8 8009D4C8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8DCCC 8009D4CC 21808000 */  addu       $s0, $a0, $zero
    /* 8DCD0 8009D4D0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8DCD4 8009D4D4 1175020C */  jal        func_8009D444
    /* 8DCD8 8009D4D8 1400B1AF */   sw        $s1, 0x14($sp)
    /* 8DCDC 8009D4DC FF004230 */  andi       $v0, $v0, 0xFF
    /* 8DCE0 8009D4E0 5D004014 */  bnez       $v0, .L8009D658
    /* 8DCE4 8009D4E4 801F113C */   lui       $s1, (0x1F8000FC >> 16)
    /* 8DCE8 8009D4E8 801F033C */  lui        $v1, (0x1F800007 >> 16)
    /* 8DCEC 8009D4EC 07006390 */  lbu        $v1, (0x1F800007 & 0xFFFF)($v1)
    /* 8DCF0 8009D4F0 8D030292 */  lbu        $v0, 0x38D($s0)
    /* 8DCF4 8009D4F4 00000000 */  nop
    /* 8DCF8 8009D4F8 03006210 */  beq        $v1, $v0, .L8009D508
    /* 8DCFC 8009D4FC 00000000 */   nop
    /* 8DD00 8009D500 E20300A2 */  sb         $zero, 0x3E2($s0)
    /* 8DD04 8009D504 E30300A2 */  sb         $zero, 0x3E3($s0)
  .L8009D508:
    /* 8DD08 8009D508 8D030592 */  lbu        $a1, 0x38D($s0)
    /* 8DD0C 8009D50C 2EBA023C */  lui        $v0, (0xBA2E8BA3 >> 16)
    /* 8DD10 8009D510 A38B4234 */  ori        $v0, $v0, (0xBA2E8BA3 & 0xFFFF)
    /* 8DD14 8009D514 1900A200 */  multu      $a1, $v0
    /* 8DD18 8009D518 801F043C */  lui        $a0, (0x1F800290 >> 16)
    /* 8DD1C 8009D51C 9002848C */  lw         $a0, (0x1F800290 & 0xFFFF)($a0)
    /* 8DD20 8009D520 10180000 */  mfhi       $v1
    /* 8DD24 8009D524 8B2E023C */  lui        $v0, (0x2E8BA2E9 >> 16)
    /* 8DD28 8009D528 E9A24234 */  ori        $v0, $v0, (0x2E8BA2E9 & 0xFFFF)
    /* 8DD2C 8009D52C 18008200 */  mult       $a0, $v0
    /* 8DD30 8009D530 02190300 */  srl        $v1, $v1, 4
    /* 8DD34 8009D534 40100300 */  sll        $v0, $v1, 1
    /* 8DD38 8009D538 21104300 */  addu       $v0, $v0, $v1
    /* 8DD3C 8009D53C 80100200 */  sll        $v0, $v0, 2
    /* 8DD40 8009D540 23104300 */  subu       $v0, $v0, $v1
    /* 8DD44 8009D544 40100200 */  sll        $v0, $v0, 1
    /* 8DD48 8009D548 2328A200 */  subu       $a1, $a1, $v0
    /* 8DD4C 8009D54C FF00A530 */  andi       $a1, $a1, 0xFF
    /* 8DD50 8009D550 C3170400 */  sra        $v0, $a0, 31
    /* 8DD54 8009D554 10300000 */  mfhi       $a2
    /* 8DD58 8009D558 83180600 */  sra        $v1, $a2, 2
    /* 8DD5C 8009D55C 23186200 */  subu       $v1, $v1, $v0
    /* 8DD60 8009D560 40100300 */  sll        $v0, $v1, 1
    /* 8DD64 8009D564 21104300 */  addu       $v0, $v0, $v1
    /* 8DD68 8009D568 80100200 */  sll        $v0, $v0, 2
    /* 8DD6C 8009D56C 23104300 */  subu       $v0, $v0, $v1
    /* 8DD70 8009D570 40100200 */  sll        $v0, $v0, 1
    /* 8DD74 8009D574 23208200 */  subu       $a0, $a0, $v0
    /* 8DD78 8009D578 3100A414 */  bne        $a1, $a0, .L8009D640
    /* 8DD7C 8009D57C 00000000 */   nop
    /* 8DD80 8009D580 99030392 */  lbu        $v1, 0x399($s0)
    /* 8DD84 8009D584 00000000 */  nop
    /* 8DD88 8009D588 09006014 */  bnez       $v1, .L8009D5B0
    /* 8DD8C 8009D58C 01000224 */   addiu     $v0, $zero, 0x1
    /* 8DD90 8009D590 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 8DD94 8009D594 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 8DD98 8009D598 00000000 */  nop
    /* 8DD9C 8009D59C 02004284 */  lh         $v0, 0x2($v0)
    /* 8DDA0 8009D5A0 00000000 */  nop
    /* 8DDA4 8009D5A4 0B00401C */  bgtz       $v0, .L8009D5D4
    /* 8DDA8 8009D5A8 21200002 */   addu      $a0, $s0, $zero
    /* 8DDAC 8009D5AC 01000224 */  addiu      $v0, $zero, 0x1
  .L8009D5B0:
    /* 8DDB0 8009D5B0 14006214 */  bne        $v1, $v0, .L8009D604
    /* 8DDB4 8009D5B4 00000000 */   nop
    /* 8DDB8 8009D5B8 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 8DDBC 8009D5BC F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 8DDC0 8009D5C0 00000000 */  nop
    /* 8DDC4 8009D5C4 02004284 */  lh         $v0, 0x2($v0)
    /* 8DDC8 8009D5C8 00000000 */  nop
    /* 8DDCC 8009D5CC 0D004104 */  bgez       $v0, .L8009D604
    /* 8DDD0 8009D5D0 21200002 */   addu      $a0, $s0, $zero
  .L8009D5D4:
    /* 8DDD4 8009D5D4 017E020C */  jal        func_8009F804
    /* 8DDD8 8009D5D8 01000524 */   addiu     $a1, $zero, 0x1
    /* 8DDDC 8009D5DC 21200002 */  addu       $a0, $s0, $zero
    /* 8DDE0 8009D5E0 F8002596 */  lhu        $a1, (0x1F8000F8 & 0xFFFF)($s1)
    /* 8DDE4 8009D5E4 FC002696 */  lhu        $a2, (0x1F8000FC & 0xFFFF)($s1)
    /* 8DDE8 8009D5E8 002C0500 */  sll        $a1, $a1, 16
    /* 8DDEC 8009D5EC 032C0500 */  sra        $a1, $a1, 16
    /* 8DDF0 8009D5F0 00340600 */  sll        $a2, $a2, 16
    /* 8DDF4 8009D5F4 25A4010C */  jal        func_80069094
    /* 8DDF8 8009D5F8 03340600 */   sra       $a2, $a2, 16
    /* 8DDFC 8009D5FC 8B750208 */  j          .L8009D62C
    /* 8DE00 8009D600 00000000 */   nop
  .L8009D604:
    /* 8DE04 8009D604 DA7B020C */  jal        func_8009EF68
    /* 8DE08 8009D608 21200002 */   addu      $a0, $s0, $zero
    /* 8DE0C 8009D60C 21200002 */  addu       $a0, $s0, $zero
    /* 8DE10 8009D610 F8002596 */  lhu        $a1, (0x1F8000F8 & 0xFFFF)($s1)
    /* 8DE14 8009D614 FC002696 */  lhu        $a2, (0x1F8000FC & 0xFFFF)($s1)
    /* 8DE18 8009D618 002C0500 */  sll        $a1, $a1, 16
    /* 8DE1C 8009D61C 032C0500 */  sra        $a1, $a1, 16
    /* 8DE20 8009D620 00340600 */  sll        $a2, $a2, 16
    /* 8DE24 8009D624 F0A3010C */  jal        func_80068FC0
    /* 8DE28 8009D628 03340600 */   sra       $a2, $a2, 16
  .L8009D62C:
    /* 8DE2C 8009D62C D4030396 */  lhu        $v1, 0x3D4($s0)
    /* 8DE30 8009D630 01000224 */  addiu      $v0, $zero, 0x1
    /* 8DE34 8009D634 9C0302A2 */  sb         $v0, 0x39C($s0)
    /* 8DE38 8009D638 92750208 */  j          .L8009D648
    /* 8DE3C 8009D63C D80303A6 */   sh        $v1, 0x3D8($s0)
  .L8009D640:
    /* 8DE40 8009D640 D60300A6 */  sh         $zero, 0x3D6($s0)
    /* 8DE44 8009D644 9C0300A2 */  sb         $zero, 0x39C($s0)
  .L8009D648:
    /* 8DE48 8009D648 D4030296 */  lhu        $v0, 0x3D4($s0)
    /* 8DE4C 8009D64C 00000000 */  nop
    /* 8DE50 8009D650 02130200 */  srl        $v0, $v0, 12
    /* 8DE54 8009D654 8C0222A2 */  sb         $v0, (0x1F80028C & 0xFFFF)($s1)
  .L8009D658:
    /* 8DE58 8009D658 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8DE5C 8009D65C 1400B18F */  lw         $s1, 0x14($sp)
    /* 8DE60 8009D660 1000B08F */  lw         $s0, 0x10($sp)
    /* 8DE64 8009D664 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8DE68 8009D668 0800E003 */  jr         $ra
    /* 8DE6C 8009D66C 00000000 */   nop
endlabel func_8009D4C4
