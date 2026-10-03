nonmatching func_800AE1B8, 0x174

glabel func_800AE1B8
    /* 9E9B8 800AE1B8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9E9BC 800AE1BC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9E9C0 800AE1C0 21888000 */  addu       $s1, $a0, $zero
    /* 9E9C4 800AE1C4 07002332 */  andi       $v1, $s1, 0x7
    /* 9E9C8 800AE1C8 03000224 */  addiu      $v0, $zero, 0x3
    /* 9E9CC 800AE1CC 1800BFAF */  sw         $ra, 0x18($sp)
    /* 9E9D0 800AE1D0 0C006210 */  beq        $v1, $v0, .L800AE204
    /* 9E9D4 800AE1D4 1000B0AF */   sw        $s0, 0x10($sp)
    /* 9E9D8 800AE1D8 04006228 */  slti       $v0, $v1, 0x4
    /* 9E9DC 800AE1DC 05004010 */  beqz       $v0, .L800AE1F4
    /* 9E9E0 800AE1E0 05000224 */   addiu     $v0, $zero, 0x5
    /* 9E9E4 800AE1E4 07006010 */  beqz       $v1, .L800AE204
    /* 9E9E8 800AE1E8 00000000 */   nop
    /* 9E9EC 800AE1EC B2B80208 */  j          .L800AE2C8
    /* 9E9F0 800AE1F0 00000000 */   nop
  .L800AE1F4:
    /* 9E9F4 800AE1F4 0A006210 */  beq        $v1, $v0, .L800AE220
    /* 9E9F8 800AE1F8 00000000 */   nop
    /* 9E9FC 800AE1FC B2B80208 */  j          .L800AE2C8
    /* 9EA00 800AE200 00000000 */   nop
  .L800AE204:
    /* 9EA04 800AE204 0180043C */  lui        $a0, %hi(D_80014E60)
    /* 9EA08 800AE208 604E8424 */  addiu      $a0, $a0, %lo(D_80014E60)
    /* 9EA0C 800AE20C 0D80053C */  lui        $a1, %hi(D_800CEA7C)
    /* 9EA10 800AE210 7CEAA524 */  addiu      $a1, $a1, %lo(D_800CEA7C)
    /* 9EA14 800AE214 0D80063C */  lui        $a2, %hi(D_800CEAC4)
    /* 9EA18 800AE218 A6B5020C */  jal        func_800AD698
    /* 9EA1C 800AE21C C4EAC624 */   addiu     $a2, $a2, %lo(D_800CEAC4)
  .L800AE220:
    /* 9EA20 800AE220 0D80103C */  lui        $s0, %hi(D_800CEAC4)
    /* 9EA24 800AE224 C4EA1026 */  addiu      $s0, $s0, %lo(D_800CEAC4)
    /* 9EA28 800AE228 21200002 */  addu       $a0, $s0, $zero
    /* 9EA2C 800AE22C 21280000 */  addu       $a1, $zero, $zero
    /* 9EA30 800AE230 36C4020C */  jal        func_800B10D8
    /* 9EA34 800AE234 80000624 */   addiu     $a2, $zero, 0x80
    /* 9EA38 800AE238 CEE9020C */  jal        func_800BA738
    /* 9EA3C 800AE23C 00000000 */   nop
    /* 9EA40 800AE240 FF00023C */  lui        $v0, (0xFFFFFF >> 16)
    /* 9EA44 800AE244 0D80043C */  lui        $a0, %hi(D_800CEABC)
    /* 9EA48 800AE248 BCEA848C */  lw         $a0, %lo(D_800CEABC)($a0)
    /* 9EA4C 800AE24C FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* 9EA50 800AE250 42C4020C */  jal        func_800B1108
    /* 9EA54 800AE254 24208200 */   and       $a0, $a0, $v0
    /* 9EA58 800AE258 FDC1020C */  jal        func_800B07F4
    /* 9EA5C 800AE25C 21202002 */   addu      $a0, $s1, $zero
    /* 9EA60 800AE260 10000426 */  addiu      $a0, $s0, 0x10
    /* 9EA64 800AE264 000002A2 */  sb         $v0, 0x0($s0)
    /* 9EA68 800AE268 00000292 */  lbu        $v0, 0x0($s0)
    /* 9EA6C 800AE26C 01000324 */  addiu      $v1, $zero, 0x1
    /* 9EA70 800AE270 010003A2 */  sb         $v1, 0x1($s0)
    /* 9EA74 800AE274 80100200 */  sll        $v0, $v0, 2
    /* 9EA78 800AE278 0D80033C */  lui        $v1, %hi(D_800CEB44)
    /* 9EA7C 800AE27C 21186200 */  addu       $v1, $v1, $v0
    /* 9EA80 800AE280 44EB6394 */  lhu        $v1, %lo(D_800CEB44)($v1)
    /* 9EA84 800AE284 00000292 */  lbu        $v0, 0x0($s0)
    /* 9EA88 800AE288 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 9EA8C 800AE28C 80100200 */  sll        $v0, $v0, 2
    /* 9EA90 800AE290 040003A6 */  sh         $v1, 0x4($s0)
    /* 9EA94 800AE294 0D80013C */  lui        $at, %hi(D_800CEB50)
    /* 9EA98 800AE298 21082200 */  addu       $at, $at, $v0
    /* 9EA9C 800AE29C 50EB2294 */  lhu        $v0, %lo(D_800CEB50)($at)
    /* 9EAA0 800AE2A0 5C000624 */  addiu      $a2, $zero, 0x5C
    /* 9EAA4 800AE2A4 36C4020C */  jal        func_800B10D8
    /* 9EAA8 800AE2A8 060002A6 */   sh        $v0, 0x6($s0)
    /* 9EAAC 800AE2AC 6C000426 */  addiu      $a0, $s0, 0x6C
    /* 9EAB0 800AE2B0 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 9EAB4 800AE2B4 36C4020C */  jal        func_800B10D8
    /* 9EAB8 800AE2B8 14000624 */   addiu     $a2, $zero, 0x14
    /* 9EABC 800AE2BC 00000292 */  lbu        $v0, 0x0($s0)
    /* 9EAC0 800AE2C0 C6B80208 */  j          .L800AE318
    /* 9EAC4 800AE2C4 00000000 */   nop
  .L800AE2C8:
    /* 9EAC8 800AE2C8 0D80023C */  lui        $v0, %hi(D_800CEAC6)
    /* 9EACC 800AE2CC C6EA4290 */  lbu        $v0, %lo(D_800CEAC6)($v0)
    /* 9EAD0 800AE2D0 00000000 */  nop
    /* 9EAD4 800AE2D4 0200422C */  sltiu      $v0, $v0, 0x2
    /* 9EAD8 800AE2D8 08004014 */  bnez       $v0, .L800AE2FC
    /* 9EADC 800AE2DC 00000000 */   nop
    /* 9EAE0 800AE2E0 0180043C */  lui        $a0, %hi(D_80014E80)
    /* 9EAE4 800AE2E4 804E8424 */  addiu      $a0, $a0, %lo(D_80014E80)
    /* 9EAE8 800AE2E8 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9EAEC 800AE2EC C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9EAF0 800AE2F0 00000000 */  nop
    /* 9EAF4 800AE2F4 09F84000 */  jalr       $v0
    /* 9EAF8 800AE2F8 21282002 */   addu      $a1, $s1, $zero
  .L800AE2FC:
    /* 9EAFC 800AE2FC 0D80023C */  lui        $v0, %hi(D_800CEABC)
    /* 9EB00 800AE300 BCEA428C */  lw         $v0, %lo(D_800CEABC)($v0)
    /* 9EB04 800AE304 00000000 */  nop
    /* 9EB08 800AE308 3400428C */  lw         $v0, 0x34($v0)
    /* 9EB0C 800AE30C 00000000 */  nop
    /* 9EB10 800AE310 09F84000 */  jalr       $v0
    /* 9EB14 800AE314 01000424 */   addiu     $a0, $zero, 0x1
  .L800AE318:
    /* 9EB18 800AE318 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9EB1C 800AE31C 1400B18F */  lw         $s1, 0x14($sp)
    /* 9EB20 800AE320 1000B08F */  lw         $s0, 0x10($sp)
    /* 9EB24 800AE324 0800E003 */  jr         $ra
    /* 9EB28 800AE328 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800AE1B8
