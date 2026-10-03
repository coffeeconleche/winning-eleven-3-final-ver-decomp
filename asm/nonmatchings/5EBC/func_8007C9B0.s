nonmatching func_8007C9B0, 0x250

glabel func_8007C9B0
    /* 6D1B0 8007C9B0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6D1B4 8007C9B4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6D1B8 8007C9B8 21808000 */  addu       $s0, $a0, $zero
    /* 6D1BC 8007C9BC 1080073C */  lui        $a3, %hi(D_800FF748)
    /* 6D1C0 8007C9C0 48F7E724 */  addiu      $a3, $a3, %lo(D_800FF748)
    /* 6D1C4 8007C9C4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 6D1C8 8007C9C8 97030392 */  lbu        $v1, 0x397($s0)
    /* 6D1CC 8007C9CC 10000224 */  addiu      $v0, $zero, 0x10
    /* 6D1D0 8007C9D0 20006210 */  beq        $v1, $v0, .L8007CA54
    /* 6D1D4 8007C9D4 11006228 */   slti      $v0, $v1, 0x11
    /* 6D1D8 8007C9D8 05004010 */  beqz       $v0, .L8007C9F0
    /* 6D1DC 8007C9DC 00000000 */   nop
    /* 6D1E0 8007C9E0 0A006010 */  beqz       $v1, .L8007CA0C
    /* 6D1E4 8007C9E4 00000000 */   nop
    /* 6D1E8 8007C9E8 FBF20108 */  j          .L8007CBEC
    /* 6D1EC 8007C9EC 00000000 */   nop
  .L8007C9F0:
    /* 6D1F0 8007C9F0 20000224 */  addiu      $v0, $zero, 0x20
    /* 6D1F4 8007C9F4 40006210 */  beq        $v1, $v0, .L8007CAF8
    /* 6D1F8 8007C9F8 21000224 */   addiu     $v0, $zero, 0x21
    /* 6D1FC 8007C9FC 61006210 */  beq        $v1, $v0, .L8007CB84
    /* 6D200 8007CA00 00000000 */   nop
    /* 6D204 8007CA04 FBF20108 */  j          .L8007CBEC
    /* 6D208 8007CA08 00000000 */   nop
  .L8007CA0C:
    /* 6D20C 8007CA0C 8D030392 */  lbu        $v1, 0x38D($s0)
    /* 6D210 8007CA10 801F023C */  lui        $v0, (0x1F8002AD >> 16)
    /* 6D214 8007CA14 AD024290 */  lbu        $v0, (0x1F8002AD & 0xFFFF)($v0)
    /* 6D218 8007CA18 00000000 */  nop
    /* 6D21C 8007CA1C 72006210 */  beq        $v1, $v0, .L8007CBE8
    /* 6D220 8007CA20 20000224 */   addiu     $v0, $zero, 0x20
    /* 6D224 8007CA24 AE79000C */  jal        func_8001E6B8
    /* 6D228 8007CA28 03000424 */   addiu     $a0, $zero, 0x3
    /* 6D22C 8007CA2C 03004014 */  bnez       $v0, .L8007CA3C
    /* 6D230 8007CA30 21200002 */   addu      $a0, $s0, $zero
    /* 6D234 8007CA34 90F20108 */  j          .L8007CA40
    /* 6D238 8007CA38 2F000524 */   addiu     $a1, $zero, 0x2F
  .L8007CA3C:
    /* 6D23C 8007CA3C 01000524 */  addiu      $a1, $zero, 0x1
  .L8007CA40:
    /* 6D240 8007CA40 8C6E010C */  jal        func_8005BA30
    /* 6D244 8007CA44 21300000 */   addu      $a2, $zero, $zero
    /* 6D248 8007CA48 10000224 */  addiu      $v0, $zero, 0x10
    /* 6D24C 8007CA4C FAF20108 */  j          .L8007CBE8
    /* 6D250 8007CA50 A00300AE */   sw        $zero, 0x3A0($s0)
  .L8007CA54:
    /* 6D254 8007CA54 801F033C */  lui        $v1, (0x1F8002AD >> 16)
    /* 6D258 8007CA58 AD026390 */  lbu        $v1, (0x1F8002AD & 0xFFFF)($v1)
    /* 6D25C 8007CA5C AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 6D260 8007CA60 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 6D264 8007CA64 19006200 */  multu      $v1, $v0
    /* 6D268 8007CA68 02000486 */  lh         $a0, 0x2($s0)
    /* 6D26C 8007CA6C 06000586 */  lh         $a1, 0x6($s0)
    /* 6D270 8007CA70 10400000 */  mfhi       $t0
    /* 6D274 8007CA74 02310800 */  srl        $a2, $t0, 4
    /* 6D278 8007CA78 40100600 */  sll        $v0, $a2, 1
    /* 6D27C 8007CA7C 21104600 */  addu       $v0, $v0, $a2
    /* 6D280 8007CA80 C0100200 */  sll        $v0, $v0, 3
    /* 6D284 8007CA84 23186200 */  subu       $v1, $v1, $v0
    /* 6D288 8007CA88 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6D28C 8007CA8C 40110300 */  sll        $v0, $v1, 5
    /* 6D290 8007CA90 23104300 */  subu       $v0, $v0, $v1
    /* 6D294 8007CA94 80100200 */  sll        $v0, $v0, 2
    /* 6D298 8007CA98 21104300 */  addu       $v0, $v0, $v1
    /* 6D29C 8007CA9C C0100200 */  sll        $v0, $v0, 3
    /* 6D2A0 8007CAA0 21104700 */  addu       $v0, $v0, $a3
    /* 6D2A4 8007CAA4 02004684 */  lh         $a2, 0x2($v0)
    /* 6D2A8 8007CAA8 06004784 */  lh         $a3, 0x6($v0)
    /* 6D2AC 8007CAAC DB6C010C */  jal        func_8005B36C
    /* 6D2B0 8007CAB0 00000000 */   nop
    /* 6D2B4 8007CAB4 FF004430 */  andi       $a0, $v0, 0xFF
    /* 6D2B8 8007CAB8 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 6D2BC 8007CABC F36D010C */  jal        func_8005B7CC
    /* 6D2C0 8007CAC0 10000624 */   addiu     $a2, $zero, 0x10
    /* 6D2C4 8007CAC4 FF004430 */  andi       $a0, $v0, 0xFF
    /* 6D2C8 8007CAC8 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 6D2CC 8007CACC 23186400 */  subu       $v1, $v1, $a0
    /* 6D2D0 8007CAD0 21206000 */  addu       $a0, $v1, $zero
    /* 6D2D4 8007CAD4 02006104 */  bgez       $v1, .L8007CAE0
    /* 6D2D8 8007CAD8 AA0302A2 */   sb        $v0, 0x3AA($s0)
    /* 6D2DC 8007CADC FF006424 */  addiu      $a0, $v1, 0xFF
  .L8007CAE0:
    /* 6D2E0 8007CAE0 03120400 */  sra        $v0, $a0, 8
    /* 6D2E4 8007CAE4 00120200 */  sll        $v0, $v0, 8
    /* 6D2E8 8007CAE8 23106200 */  subu       $v0, $v1, $v0
    /* 6D2EC 8007CAEC 00110200 */  sll        $v0, $v0, 4
    /* 6D2F0 8007CAF0 FBF20108 */  j          .L8007CBEC
    /* 6D2F4 8007CAF4 260002A6 */   sh        $v0, 0x26($s0)
  .L8007CAF8:
    /* 6D2F8 8007CAF8 01000224 */  addiu      $v0, $zero, 0x1
    /* 6D2FC 8007CAFC A00300AE */  sw         $zero, 0x3A0($s0)
    /* 6D300 8007CB00 D30302A2 */  sb         $v0, 0x3D3($s0)
    /* 6D304 8007CB04 801F033C */  lui        $v1, (0x1F8002AE >> 16)
    /* 6D308 8007CB08 AE026390 */  lbu        $v1, (0x1F8002AE & 0xFFFF)($v1)
    /* 6D30C 8007CB0C AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 6D310 8007CB10 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 6D314 8007CB14 19006200 */  multu      $v1, $v0
    /* 6D318 8007CB18 02000486 */  lh         $a0, 0x2($s0)
    /* 6D31C 8007CB1C 06000586 */  lh         $a1, 0x6($s0)
    /* 6D320 8007CB20 10400000 */  mfhi       $t0
    /* 6D324 8007CB24 02310800 */  srl        $a2, $t0, 4
    /* 6D328 8007CB28 40100600 */  sll        $v0, $a2, 1
    /* 6D32C 8007CB2C 21104600 */  addu       $v0, $v0, $a2
    /* 6D330 8007CB30 C0100200 */  sll        $v0, $v0, 3
    /* 6D334 8007CB34 23186200 */  subu       $v1, $v1, $v0
    /* 6D338 8007CB38 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6D33C 8007CB3C 40110300 */  sll        $v0, $v1, 5
    /* 6D340 8007CB40 23104300 */  subu       $v0, $v0, $v1
    /* 6D344 8007CB44 80100200 */  sll        $v0, $v0, 2
    /* 6D348 8007CB48 21104300 */  addu       $v0, $v0, $v1
    /* 6D34C 8007CB4C C0100200 */  sll        $v0, $v0, 3
    /* 6D350 8007CB50 21104700 */  addu       $v0, $v0, $a3
    /* 6D354 8007CB54 02004684 */  lh         $a2, 0x2($v0)
    /* 6D358 8007CB58 06004784 */  lh         $a3, 0x6($v0)
    /* 6D35C 8007CB5C DB6C010C */  jal        func_8005B36C
    /* 6D360 8007CB60 00000000 */   nop
    /* 6D364 8007CB64 21200002 */  addu       $a0, $s0, $zero
    /* 6D368 8007CB68 33000524 */  addiu      $a1, $zero, 0x33
    /* 6D36C 8007CB6C 21300000 */  addu       $a2, $zero, $zero
    /* 6D370 8007CB70 50004224 */  addiu      $v0, $v0, 0x50
    /* 6D374 8007CB74 8C6E010C */  jal        func_8005BA30
    /* 6D378 8007CB78 AB0302A2 */   sb        $v0, 0x3AB($s0)
    /* 6D37C 8007CB7C F7F20108 */  j          .L8007CBDC
    /* 6D380 8007CB80 00000000 */   nop
  .L8007CB84:
    /* 6D384 8007CB84 476F010C */  jal        func_8005BD1C
    /* 6D388 8007CB88 21200002 */   addu      $a0, $s0, $zero
    /* 6D38C 8007CB8C AB030492 */  lbu        $a0, 0x3AB($s0)
    /* 6D390 8007CB90 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 6D394 8007CB94 F36D010C */  jal        func_8005B7CC
    /* 6D398 8007CB98 10000624 */   addiu     $a2, $zero, 0x10
    /* 6D39C 8007CB9C FF004430 */  andi       $a0, $v0, 0xFF
    /* 6D3A0 8007CBA0 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 6D3A4 8007CBA4 23186400 */  subu       $v1, $v1, $a0
    /* 6D3A8 8007CBA8 21206000 */  addu       $a0, $v1, $zero
    /* 6D3AC 8007CBAC 02006104 */  bgez       $v1, .L8007CBB8
    /* 6D3B0 8007CBB0 AA0302A2 */   sb        $v0, 0x3AA($s0)
    /* 6D3B4 8007CBB4 FF006424 */  addiu      $a0, $v1, 0xFF
  .L8007CBB8:
    /* 6D3B8 8007CBB8 03120400 */  sra        $v0, $a0, 8
    /* 6D3BC 8007CBBC 00120200 */  sll        $v0, $v0, 8
    /* 6D3C0 8007CBC0 23106200 */  subu       $v0, $v1, $v0
    /* 6D3C4 8007CBC4 90030392 */  lbu        $v1, 0x390($s0)
    /* 6D3C8 8007CBC8 00110200 */  sll        $v0, $v0, 4
    /* 6D3CC 8007CBCC 260002A6 */  sh         $v0, 0x26($s0)
    /* 6D3D0 8007CBD0 0F000224 */  addiu      $v0, $zero, 0xF
    /* 6D3D4 8007CBD4 05006214 */  bne        $v1, $v0, .L8007CBEC
    /* 6D3D8 8007CBD8 00000000 */   nop
  .L8007CBDC:
    /* 6D3DC 8007CBDC 97030292 */  lbu        $v0, 0x397($s0)
    /* 6D3E0 8007CBE0 00000000 */  nop
    /* 6D3E4 8007CBE4 01004224 */  addiu      $v0, $v0, 0x1
  .L8007CBE8:
    /* 6D3E8 8007CBE8 970302A2 */  sb         $v0, 0x397($s0)
  .L8007CBEC:
    /* 6D3EC 8007CBEC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 6D3F0 8007CBF0 1000B08F */  lw         $s0, 0x10($sp)
    /* 6D3F4 8007CBF4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6D3F8 8007CBF8 0800E003 */  jr         $ra
    /* 6D3FC 8007CBFC 00000000 */   nop
endlabel func_8007C9B0
