nonmatching func_8008C204, 0x144

glabel func_8008C204
    /* 7CA04 8008C204 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 7CA08 8008C208 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7CA0C 8008C20C 21808000 */  addu       $s0, $a0, $zero
    /* 7CA10 8008C210 1800BFAF */  sw         $ra, 0x18($sp)
    /* 7CA14 8008C214 1400B1AF */  sw         $s1, 0x14($sp)
    /* 7CA18 8008C218 97030292 */  lbu        $v0, 0x397($s0)
    /* 7CA1C 8008C21C 00000000 */  nop
    /* 7CA20 8008C220 0C004014 */  bnez       $v0, .L8008C254
    /* 7CA24 8008C224 801F113C */   lui       $s1, (0x1F800332 >> 16)
    /* 7CA28 8008C228 6F000524 */  addiu      $a1, $zero, 0x6F
    /* 7CA2C 8008C22C 8C6E010C */  jal        func_8005BA30
    /* 7CA30 8008C230 21300000 */   addu      $a2, $zero, $zero
    /* 7CA34 8008C234 97030392 */  lbu        $v1, 0x397($s0)
    /* 7CA38 8008C238 81000224 */  addiu      $v0, $zero, 0x81
    /* 7CA3C 8008C23C AC0300A2 */  sb         $zero, 0x3AC($s0)
    /* 7CA40 8008C240 B00302A2 */  sb         $v0, 0x3B0($s0)
    /* 7CA44 8008C244 D10300A2 */  sb         $zero, 0x3D1($s0)
    /* 7CA48 8008C248 01006324 */  addiu      $v1, $v1, 0x1
    /* 7CA4C 8008C24C 9E300208 */  j          .L8008C278
    /* 7CA50 8008C250 970303A2 */   sb        $v1, 0x397($s0)
  .L8008C254:
    /* 7CA54 8008C254 476F010C */  jal        func_8005BD1C
    /* 7CA58 8008C258 21200002 */   addu      $a0, $s0, $zero
    /* 7CA5C 8008C25C 90030392 */  lbu        $v1, 0x390($s0)
    /* 7CA60 8008C260 17000224 */  addiu      $v0, $zero, 0x17
    /* 7CA64 8008C264 04006214 */  bne        $v1, $v0, .L8008C278
    /* 7CA68 8008C268 00000000 */   nop
    /* 7CA6C 8008C26C B0030292 */  lbu        $v0, 0x3B0($s0)
    /* 7CA70 8008C270 970300A2 */  sb         $zero, 0x397($s0)
    /* 7CA74 8008C274 960302A2 */  sb         $v0, 0x396($s0)
  .L8008C278:
    /* 7CA78 8008C278 9A030292 */  lbu        $v0, 0x39A($s0)
    /* 7CA7C 8008C27C 00000000 */  nop
    /* 7CA80 8008C280 24004014 */  bnez       $v0, .L8008C314
    /* 7CA84 8008C284 00000000 */   nop
    /* 7CA88 8008C288 98030292 */  lbu        $v0, 0x398($s0)
    /* 7CA8C 8008C28C D6030396 */  lhu        $v1, 0x3D6($s0)
    /* 7CA90 8008C290 40100200 */  sll        $v0, $v0, 1
    /* 7CA94 8008C294 21105100 */  addu       $v0, $v0, $s1
    /* 7CA98 8008C298 1A004294 */  lhu        $v0, (0x1F80001A & 0xFFFF)($v0)
    /* 7CA9C 8008C29C 00000000 */  nop
    /* 7CAA0 8008C2A0 24104300 */  and        $v0, $v0, $v1
    /* 7CAA4 8008C2A4 09004010 */  beqz       $v0, .L8008C2CC
    /* 7CAA8 8008C2A8 00000000 */   nop
    /* 7CAAC 8008C2AC 02000286 */  lh         $v0, 0x2($s0)
    /* 7CAB0 8008C2B0 00000000 */  nop
    /* 7CAB4 8008C2B4 02004104 */  bgez       $v0, .L8008C2C0
    /* 7CAB8 8008C2B8 00000000 */   nop
    /* 7CABC 8008C2BC 23100200 */  negu       $v0, $v0
  .L8008C2C0:
    /* 7CAC0 8008C2C0 63254228 */  slti       $v0, $v0, 0x2563
    /* 7CAC4 8008C2C4 12004010 */  beqz       $v0, .L8008C310
    /* 7CAC8 8008C2C8 94000224 */   addiu     $v0, $zero, 0x94
  .L8008C2CC:
    /* 7CACC 8008C2CC 98030292 */  lbu        $v0, 0x398($s0)
    /* 7CAD0 8008C2D0 00000000 */  nop
    /* 7CAD4 8008C2D4 40100200 */  sll        $v0, $v0, 1
    /* 7CAD8 8008C2D8 21105100 */  addu       $v0, $v0, $s1
    /* 7CADC 8008C2DC 12004394 */  lhu        $v1, (0x1F800012 & 0xFFFF)($v0)
    /* 7CAE0 8008C2E0 16004494 */  lhu        $a0, (0x1F800016 & 0xFFFF)($v0)
    /* 7CAE4 8008C2E4 D6030296 */  lhu        $v0, 0x3D6($s0)
    /* 7CAE8 8008C2E8 25186400 */  or         $v1, $v1, $a0
    /* 7CAEC 8008C2EC 24104300 */  and        $v0, $v0, $v1
    /* 7CAF0 8008C2F0 08004010 */  beqz       $v0, .L8008C314
    /* 7CAF4 8008C2F4 00000000 */   nop
    /* 7CAF8 8008C2F8 482F020C */  jal        func_8008BD20
    /* 7CAFC 8008C2FC 21200002 */   addu      $a0, $s0, $zero
    /* 7CB00 8008C300 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7CB04 8008C304 03004010 */  beqz       $v0, .L8008C314
    /* 7CB08 8008C308 C20302A6 */   sh        $v0, 0x3C2($s0)
    /* 7CB0C 8008C30C 92000224 */  addiu      $v0, $zero, 0x92
  .L8008C310:
    /* 7CB10 8008C310 B00302A2 */  sb         $v0, 0x3B0($s0)
  .L8008C314:
    /* 7CB14 8008C314 3A55020C */  jal        func_800954E8
    /* 7CB18 8008C318 21200002 */   addu      $a0, $s0, $zero
    /* 7CB1C 8008C31C 320320A2 */  sb         $zero, (0x1F800332 & 0xFFFF)($s1)
    /* 7CB20 8008C320 B1030292 */  lbu        $v0, 0x3B1($s0)
    /* 7CB24 8008C324 00000000 */  nop
    /* 7CB28 8008C328 01004224 */  addiu      $v0, $v0, 0x1
    /* 7CB2C 8008C32C B10302A2 */  sb         $v0, 0x3B1($s0)
    /* 7CB30 8008C330 1800BF8F */  lw         $ra, 0x18($sp)
    /* 7CB34 8008C334 1400B18F */  lw         $s1, 0x14($sp)
    /* 7CB38 8008C338 1000B08F */  lw         $s0, 0x10($sp)
    /* 7CB3C 8008C33C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 7CB40 8008C340 0800E003 */  jr         $ra
    /* 7CB44 8008C344 00000000 */   nop
endlabel func_8008C204
