nonmatching func_8005C1CC, 0xE0

glabel func_8005C1CC
    /* 4C9CC 8005C1CC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4C9D0 8005C1D0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4C9D4 8005C1D4 21888000 */  addu       $s1, $a0, $zero
    /* 4C9D8 8005C1D8 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 4C9DC 8005C1DC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4C9E0 8005C1E0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 4C9E4 8005C1E4 8E032296 */  lhu        $v0, 0x38E($s1)
    /* 4C9E8 8005C1E8 90032392 */  lbu        $v1, 0x390($s1)
    /* 4C9EC 8005C1EC 80100200 */  sll        $v0, $v0, 2
    /* 4C9F0 8005C1F0 1580013C */  lui        $at, %hi(D_8014A000)
    /* 4C9F4 8005C1F4 21082200 */  addu       $at, $at, $v0
    /* 4C9F8 8005C1F8 00A0228C */  lw         $v0, %lo(D_8014A000)($at)
    /* 4C9FC 8005C1FC 80180300 */  sll        $v1, $v1, 2
    /* 4CA00 8005C200 21104300 */  addu       $v0, $v0, $v1
    /* 4CA04 8005C204 0000448C */  lw         $a0, 0x0($v0)
    /* 4CA08 8005C208 40100500 */  sll        $v0, $a1, 1
    /* 4CA0C 8005C20C 21104500 */  addu       $v0, $v0, $a1
    /* 4CA10 8005C210 80100200 */  sll        $v0, $v0, 2
    /* 4CA14 8005C214 21208200 */  addu       $a0, $a0, $v0
    /* 4CA18 8005C218 AC032292 */  lbu        $v0, 0x3AC($s1)
    /* 4CA1C 8005C21C 06008384 */  lh         $v1, 0x6($a0)
    /* 4CA20 8005C220 03004010 */  beqz       $v0, .L8005C230
    /* 4CA24 8005C224 801F103C */   lui       $s0, (0x1F8000F4 >> 16)
    /* 4CA28 8005C228 8D700108 */  j          .L8005C234
    /* 4CA2C 8005C22C 23100300 */   negu      $v0, $v1
  .L8005C230:
    /* 4CA30 8005C230 21106000 */  addu       $v0, $v1, $zero
  .L8005C234:
    /* 4CA34 8005C234 2C010536 */  ori        $a1, $s0, (0x1F80012C & 0xFFFF)
    /* 4CA38 8005C238 2C0102A6 */  sh         $v0, (0x1F80012C & 0xFFFF)($s0)
    /* 4CA3C 8005C23C 08008294 */  lhu        $v0, 0x8($a0)
    /* 4CA40 8005C240 3C010636 */  ori        $a2, $s0, (0x1F80013C & 0xFFFF)
    /* 4CA44 8005C244 2E0102A6 */  sh         $v0, (0x1F80012E & 0xFFFF)($s0)
    /* 4CA48 8005C248 0A008294 */  lhu        $v0, 0xA($a0)
    /* 4CA4C 8005C24C 40002426 */  addiu      $a0, $s1, 0x40
    /* 4CA50 8005C250 B2C4020C */  jal        func_800B12C8
    /* 4CA54 8005C254 300102A6 */   sh        $v0, (0x1F800130 & 0xFFFF)($s0)
    /* 4CA58 8005C258 3C01038E */  lw         $v1, (0x1F80013C & 0xFFFF)($s0)
    /* 4CA5C 8005C25C 02002296 */  lhu        $v0, 0x2($s1)
    /* 4CA60 8005C260 00000000 */  nop
    /* 4CA64 8005C264 21104300 */  addu       $v0, $v0, $v1
    /* 4CA68 8005C268 4001038E */  lw         $v1, (0x1F800140 & 0xFFFF)($s0)
    /* 4CA6C 8005C26C F00002A6 */  sh         $v0, (0x1F8000F0 & 0xFFFF)($s0)
    /* 4CA70 8005C270 04002296 */  lhu        $v0, 0x4($s1)
    /* 4CA74 8005C274 00000000 */  nop
    /* 4CA78 8005C278 21104300 */  addu       $v0, $v0, $v1
    /* 4CA7C 8005C27C 4401038E */  lw         $v1, (0x1F800144 & 0xFFFF)($s0)
    /* 4CA80 8005C280 F20002A6 */  sh         $v0, (0x1F8000F2 & 0xFFFF)($s0)
    /* 4CA84 8005C284 06002296 */  lhu        $v0, 0x6($s1)
    /* 4CA88 8005C288 00000000 */  nop
    /* 4CA8C 8005C28C 21104300 */  addu       $v0, $v0, $v1
    /* 4CA90 8005C290 F40002A6 */  sh         $v0, (0x1F8000F4 & 0xFFFF)($s0)
    /* 4CA94 8005C294 1800BF8F */  lw         $ra, 0x18($sp)
    /* 4CA98 8005C298 1400B18F */  lw         $s1, 0x14($sp)
    /* 4CA9C 8005C29C 1000B08F */  lw         $s0, 0x10($sp)
    /* 4CAA0 8005C2A0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4CAA4 8005C2A4 0800E003 */  jr         $ra
    /* 4CAA8 8005C2A8 00000000 */   nop
endlabel func_8005C1CC
