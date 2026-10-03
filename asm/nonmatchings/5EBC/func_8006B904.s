nonmatching func_8006B904, 0x4E0

glabel func_8006B904
    /* 5C104 8006B904 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 5C108 8006B908 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5C10C 8006B90C 21888000 */  addu       $s1, $a0, $zero
    /* 5C110 8006B910 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5C114 8006B914 0E80123C */  lui        $s2, %hi(D_800E6CB9)
    /* 5C118 8006B918 B96C5226 */  addiu      $s2, $s2, %lo(D_800E6CB9)
    /* 5C11C 8006B91C 2000BFAF */  sw         $ra, 0x20($sp)
    /* 5C120 8006B920 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 5C124 8006B924 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5C128 8006B928 00004292 */  lbu        $v0, 0x0($s2)
    /* 5C12C 8006B92C 00000000 */  nop
    /* 5C130 8006B930 0A004010 */  beqz       $v0, .L8006B95C
    /* 5C134 8006B934 801F103C */   lui       $s0, (0x1F8000FC >> 16)
    /* 5C138 8006B938 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 5C13C 8006B93C 21280000 */  addu       $a1, $zero, $zero
    /* 5C140 8006B940 801F043C */  lui        $a0, (0x1F8000FC >> 16)
    /* 5C144 8006B944 FC008484 */  lh         $a0, (0x1F8000FC & 0xFFFF)($a0)
    /* 5C148 8006B948 06000624 */  addiu      $a2, $zero, 0x6
    /* 5C14C 8006B94C DB69010C */  jal        func_8005A76C
    /* 5C150 8006B950 000042A2 */   sb        $v0, 0x0($s2)
    /* 5C154 8006B954 801F013C */  lui        $at, (0x1F8000FC >> 16)
    /* 5C158 8006B958 FC0022A4 */  sh         $v0, (0x1F8000FC & 0xFFFF)($at)
  .L8006B95C:
    /* 5C15C 8006B95C 99032292 */  lbu        $v0, 0x399($s1)
    /* 5C160 8006B960 00000000 */  nop
    /* 5C164 8006B964 02004014 */  bnez       $v0, .L8006B970
    /* 5C168 8006B968 FFFF1324 */   addiu     $s3, $zero, -0x1
    /* 5C16C 8006B96C 01001324 */  addiu      $s3, $zero, 0x1
  .L8006B970:
    /* 5C170 8006B970 02002386 */  lh         $v1, 0x2($s1)
    /* 5C174 8006B974 00141300 */  sll        $v0, $s3, 16
    /* 5C178 8006B978 03140200 */  sra        $v0, $v0, 16
    /* 5C17C 8006B97C 18006200 */  mult       $v1, $v0
    /* 5C180 8006B980 12500000 */  mflo       $t2
    /* 5C184 8006B984 05004019 */  blez       $t2, .L8006B99C
    /* 5C188 8006B988 14000224 */   addiu     $v0, $zero, 0x14
    /* 5C18C 8006B98C 8D032392 */  lbu        $v1, 0x38D($s1)
    /* 5C190 8006B990 000042A2 */  sb         $v0, 0x0($s2)
    /* 5C194 8006B994 0E80013C */  lui        $at, %hi(D_800E6CB8)
    /* 5C198 8006B998 B86C23A0 */  sb         $v1, %lo(D_800E6CB8)($at)
  .L8006B99C:
    /* 5C19C 8006B99C FDAD010C */  jal        func_8006B7F4
    /* 5C1A0 8006B9A0 21202002 */   addu      $a0, $s1, $zero
    /* 5C1A4 8006B9A4 801F033C */  lui        $v1, (0x1F80030B >> 16)
    /* 5C1A8 8006B9A8 0B036390 */  lbu        $v1, (0x1F80030B & 0xFFFF)($v1)
    /* 5C1AC 8006B9AC 801F013C */  lui        $at, (0x1F8000F8 >> 16)
    /* 5C1B0 8006B9B0 F80022A4 */  sh         $v0, (0x1F8000F8 & 0xFFFF)($at)
    /* 5C1B4 8006B9B4 0600622C */  sltiu      $v0, $v1, 0x6
    /* 5C1B8 8006B9B8 CA004010 */  beqz       $v0, .L8006BCE4
    /* 5C1BC 8006B9BC 80100300 */   sll       $v0, $v1, 2
    /* 5C1C0 8006B9C0 0180013C */  lui        $at, %hi(jtbl_80012840)
    /* 5C1C4 8006B9C4 21082200 */  addu       $at, $at, $v0
    /* 5C1C8 8006B9C8 4028228C */  lw         $v0, %lo(jtbl_80012840)($at)
    /* 5C1CC 8006B9CC 00000000 */  nop
    /* 5C1D0 8006B9D0 08004000 */  jr         $v0
    /* 5C1D4 8006B9D4 00000000 */   nop
  jlabel .L8006B9D8
    /* 5C1D8 8006B9D8 01000624 */  addiu      $a2, $zero, 0x1
    /* 5C1DC 8006B9DC FC000496 */  lhu        $a0, (0x1F8000FC & 0xFFFF)($s0)
    /* 5C1E0 8006B9E0 F402028E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s0)
    /* 5C1E4 8006B9E4 00240400 */  sll        $a0, $a0, 16
    /* 5C1E8 8006B9E8 06004584 */  lh         $a1, 0x6($v0)
    /* 5C1EC 8006B9EC DB69010C */  jal        func_8005A76C
    /* 5C1F0 8006B9F0 03240400 */   sra       $a0, $a0, 16
    /* 5C1F4 8006B9F4 FC0002A6 */  sh         $v0, (0x1F8000FC & 0xFFFF)($s0)
    /* 5C1F8 8006B9F8 91032392 */  lbu        $v1, 0x391($s1)
    /* 5C1FC 8006B9FC 17000224 */  addiu      $v0, $zero, 0x17
    /* 5C200 8006BA00 B8006210 */  beq        $v1, $v0, .L8006BCE4
    /* 5C204 8006BA04 21202002 */   addu      $a0, $s1, $zero
    /* 5C208 8006BA08 F8000536 */  ori        $a1, $s0, (0x1F8000F8 & 0xFFFF)
    /* 5C20C 8006BA0C FC000636 */  ori        $a2, $s0, (0x1F8000FC & 0xFFFF)
    /* 5C210 8006BA10 2185020C */  jal        func_800A1484
    /* 5C214 8006BA14 00040724 */   addiu     $a3, $zero, 0x400
    /* 5C218 8006BA18 39AF0108 */  j          .L8006BCE4
    /* 5C21C 8006BA1C 00000000 */   nop
  jlabel .L8006BA20
    /* 5C220 8006BA20 01000624 */  addiu      $a2, $zero, 0x1
    /* 5C224 8006BA24 FC000496 */  lhu        $a0, 0xFC($s0)
    /* 5C228 8006BA28 F402028E */  lw         $v0, 0x2F4($s0)
    /* 5C22C 8006BA2C 00240400 */  sll        $a0, $a0, 16
    /* 5C230 8006BA30 06004584 */  lh         $a1, 0x6($v0)
    /* 5C234 8006BA34 DB69010C */  jal        func_8005A76C
    /* 5C238 8006BA38 03240400 */   sra       $a0, $a0, 16
    /* 5C23C 8006BA3C 21204000 */  addu       $a0, $v0, $zero
    /* 5C240 8006BA40 FC0004A6 */  sh         $a0, 0xFC($s0)
    /* 5C244 8006BA44 91032292 */  lbu        $v0, 0x391($s1)
    /* 5C248 8006BA48 00000000 */  nop
    /* 5C24C 8006BA4C EFFF4224 */  addiu      $v0, $v0, -0x11
    /* 5C250 8006BA50 0200422C */  sltiu      $v0, $v0, 0x2
    /* 5C254 8006BA54 0F004010 */  beqz       $v0, .L8006BA94
    /* 5C258 8006BA58 00000000 */   nop
    /* 5C25C 8006BA5C F402028E */  lw         $v0, 0x2F4($s0)
    /* 5C260 8006BA60 00000000 */  nop
    /* 5C264 8006BA64 06004584 */  lh         $a1, 0x6($v0)
    /* 5C268 8006BA68 00000000 */  nop
    /* 5C26C 8006BA6C 0200A104 */  bgez       $a1, .L8006BA78
    /* 5C270 8006BA70 2110A000 */   addu      $v0, $a1, $zero
    /* 5C274 8006BA74 23100200 */  negu       $v0, $v0
  .L8006BA78:
    /* 5C278 8006BA78 F5124228 */  slti       $v0, $v0, 0x12F5
    /* 5C27C 8006BA7C 05004014 */  bnez       $v0, .L8006BA94
    /* 5C280 8006BA80 00240400 */   sll       $a0, $a0, 16
    /* 5C284 8006BA84 03240400 */  sra        $a0, $a0, 16
    /* 5C288 8006BA88 DB69010C */  jal        func_8005A76C
    /* 5C28C 8006BA8C 02000624 */   addiu     $a2, $zero, 0x2
    /* 5C290 8006BA90 FC0002A6 */  sh         $v0, 0xFC($s0)
  .L8006BA94:
    /* 5C294 8006BA94 F8000296 */  lhu        $v0, 0xF8($s0)
    /* 5C298 8006BA98 00000000 */  nop
    /* 5C29C 8006BA9C 00140200 */  sll        $v0, $v0, 16
    /* 5C2A0 8006BAA0 031C0200 */  sra        $v1, $v0, 16
    /* 5C2A4 8006BAA4 02006104 */  bgez       $v1, .L8006BAB0
    /* 5C2A8 8006BAA8 21106000 */   addu      $v0, $v1, $zero
    /* 5C2AC 8006BAAC 23100200 */  negu       $v0, $v0
  .L8006BAB0:
    /* 5C2B0 8006BAB0 E3234228 */  slti       $v0, $v0, 0x23E3
    /* 5C2B4 8006BAB4 06004014 */  bnez       $v0, .L8006BAD0
    /* 5C2B8 8006BAB8 21202002 */   addu      $a0, $s1, $zero
    /* 5C2BC 8006BABC 02006104 */  bgez       $v1, .L8006BAC8
    /* 5C2C0 8006BAC0 E2230224 */   addiu     $v0, $zero, 0x23E2
    /* 5C2C4 8006BAC4 1EDC0224 */  addiu      $v0, $zero, -0x23E2
  .L8006BAC8:
    /* 5C2C8 8006BAC8 F80002A6 */  sh         $v0, 0xF8($s0)
    /* 5C2CC 8006BACC 21202002 */  addu       $a0, $s1, $zero
  .L8006BAD0:
    /* 5C2D0 8006BAD0 F8000536 */  ori        $a1, $s0, 0xF8
    /* 5C2D4 8006BAD4 FC000636 */  ori        $a2, $s0, 0xFC
    /* 5C2D8 8006BAD8 2185020C */  jal        func_800A1484
    /* 5C2DC 8006BADC 00060724 */   addiu     $a3, $zero, 0x600
    /* 5C2E0 8006BAE0 39AF0108 */  j          .L8006BCE4
    /* 5C2E4 8006BAE4 00000000 */   nop
  jlabel .L8006BAE8
    /* 5C2E8 8006BAE8 0F000624 */  addiu      $a2, $zero, 0xF
    /* 5C2EC 8006BAEC FC000496 */  lhu        $a0, 0xFC($s0)
    /* 5C2F0 8006BAF0 F402028E */  lw         $v0, 0x2F4($s0)
    /* 5C2F4 8006BAF4 00240400 */  sll        $a0, $a0, 16
    /* 5C2F8 8006BAF8 06004584 */  lh         $a1, 0x6($v0)
    /* 5C2FC 8006BAFC F969010C */  jal        func_8005A7E4
    /* 5C300 8006BB00 03240400 */   sra       $a0, $a0, 16
    /* 5C304 8006BB04 21204000 */  addu       $a0, $v0, $zero
    /* 5C308 8006BB08 FC0004A6 */  sh         $a0, 0xFC($s0)
    /* 5C30C 8006BB0C 91032292 */  lbu        $v0, 0x391($s1)
    /* 5C310 8006BB10 00000000 */  nop
    /* 5C314 8006BB14 EFFF4224 */  addiu      $v0, $v0, -0x11
    /* 5C318 8006BB18 0200422C */  sltiu      $v0, $v0, 0x2
    /* 5C31C 8006BB1C 0F004010 */  beqz       $v0, .L8006BB5C
    /* 5C320 8006BB20 00000000 */   nop
    /* 5C324 8006BB24 F402028E */  lw         $v0, 0x2F4($s0)
    /* 5C328 8006BB28 00000000 */  nop
    /* 5C32C 8006BB2C 06004584 */  lh         $a1, 0x6($v0)
    /* 5C330 8006BB30 00000000 */  nop
    /* 5C334 8006BB34 0200A104 */  bgez       $a1, .L8006BB40
    /* 5C338 8006BB38 2110A000 */   addu      $v0, $a1, $zero
    /* 5C33C 8006BB3C 23100200 */  negu       $v0, $v0
  .L8006BB40:
    /* 5C340 8006BB40 F5124228 */  slti       $v0, $v0, 0x12F5
    /* 5C344 8006BB44 05004014 */  bnez       $v0, .L8006BB5C
    /* 5C348 8006BB48 00240400 */   sll       $a0, $a0, 16
    /* 5C34C 8006BB4C 03240400 */  sra        $a0, $a0, 16
    /* 5C350 8006BB50 DB69010C */  jal        func_8005A76C
    /* 5C354 8006BB54 02000624 */   addiu     $a2, $zero, 0x2
    /* 5C358 8006BB58 FC0002A6 */  sh         $v0, 0xFC($s0)
  .L8006BB5C:
    /* 5C35C 8006BB5C F8000296 */  lhu        $v0, 0xF8($s0)
    /* 5C360 8006BB60 00000000 */  nop
    /* 5C364 8006BB64 00140200 */  sll        $v0, $v0, 16
    /* 5C368 8006BB68 031C0200 */  sra        $v1, $v0, 16
    /* 5C36C 8006BB6C 02006104 */  bgez       $v1, .L8006BB78
    /* 5C370 8006BB70 21106000 */   addu      $v0, $v1, $zero
    /* 5C374 8006BB74 23100200 */  negu       $v0, $v0
  .L8006BB78:
    /* 5C378 8006BB78 E3234228 */  slti       $v0, $v0, 0x23E3
    /* 5C37C 8006BB7C 06004014 */  bnez       $v0, .L8006BB98
    /* 5C380 8006BB80 21202002 */   addu      $a0, $s1, $zero
    /* 5C384 8006BB84 02006104 */  bgez       $v1, .L8006BB90
    /* 5C388 8006BB88 E2230224 */   addiu     $v0, $zero, 0x23E2
    /* 5C38C 8006BB8C 1EDC0224 */  addiu      $v0, $zero, -0x23E2
  .L8006BB90:
    /* 5C390 8006BB90 F80002A6 */  sh         $v0, 0xF8($s0)
    /* 5C394 8006BB94 21202002 */  addu       $a0, $s1, $zero
  .L8006BB98:
    /* 5C398 8006BB98 F8000536 */  ori        $a1, $s0, 0xF8
    /* 5C39C 8006BB9C FC000636 */  ori        $a2, $s0, 0xFC
    /* 5C3A0 8006BBA0 2185020C */  jal        func_800A1484
    /* 5C3A4 8006BBA4 00090724 */   addiu     $a3, $zero, 0x900
    /* 5C3A8 8006BBA8 39AF0108 */  j          .L8006BCE4
    /* 5C3AC 8006BBAC 00000000 */   nop
  jlabel .L8006BBB0
    /* 5C3B0 8006BBB0 21280000 */  addu       $a1, $zero, $zero
    /* 5C3B4 8006BBB4 FC000496 */  lhu        $a0, 0xFC($s0)
    /* 5C3B8 8006BBB8 02000624 */  addiu      $a2, $zero, 0x2
    /* 5C3BC 8006BBBC 00240400 */  sll        $a0, $a0, 16
    /* 5C3C0 8006BBC0 DB69010C */  jal        func_8005A76C
    /* 5C3C4 8006BBC4 03240400 */   sra       $a0, $a0, 16
    /* 5C3C8 8006BBC8 21202002 */  addu       $a0, $s1, $zero
    /* 5C3CC 8006BBCC F8000536 */  ori        $a1, $s0, 0xF8
    /* 5C3D0 8006BBD0 FC000636 */  ori        $a2, $s0, 0xFC
    /* 5C3D4 8006BBD4 000C0724 */  addiu      $a3, $zero, 0xC00
    /* 5C3D8 8006BBD8 FC0002A6 */  sh         $v0, 0xFC($s0)
    /* 5C3DC 8006BBDC 00141300 */  sll        $v0, $s3, 16
    /* 5C3E0 8006BBE0 03140200 */  sra        $v0, $v0, 16
    /* 5C3E4 8006BBE4 40180200 */  sll        $v1, $v0, 1
    /* 5C3E8 8006BBE8 21186200 */  addu       $v1, $v1, $v0
    /* 5C3EC 8006BBEC 001A0300 */  sll        $v1, $v1, 8
    /* 5C3F0 8006BBF0 F8000896 */  lhu        $t0, 0xF8($s0)
    /* 5C3F4 8006BBF4 F402098E */  lw         $t1, 0x2F4($s0)
    /* 5C3F8 8006BBF8 00440800 */  sll        $t0, $t0, 16
    /* 5C3FC 8006BBFC 02002285 */  lh         $v0, 0x2($t1)
    /* 5C400 8006BC00 03440800 */  sra        $t0, $t0, 16
    /* 5C404 8006BC04 23104300 */  subu       $v0, $v0, $v1
    /* 5C408 8006BC08 21400201 */  addu       $t0, $t0, $v0
    /* 5C40C 8006BC0C C2170800 */  srl        $v0, $t0, 31
    /* 5C410 8006BC10 21400201 */  addu       $t0, $t0, $v0
    /* 5C414 8006BC14 43400800 */  sra        $t0, $t0, 1
    /* 5C418 8006BC18 2185020C */  jal        func_800A1484
    /* 5C41C 8006BC1C F80008A6 */   sh        $t0, 0xF8($s0)
    /* 5C420 8006BC20 F8000296 */  lhu        $v0, 0xF8($s0)
    /* 5C424 8006BC24 00000000 */  nop
    /* 5C428 8006BC28 00140200 */  sll        $v0, $v0, 16
    /* 5C42C 8006BC2C 031C0200 */  sra        $v1, $v0, 16
    /* 5C430 8006BC30 02006104 */  bgez       $v1, .L8006BC3C
    /* 5C434 8006BC34 21106000 */   addu      $v0, $v1, $zero
    /* 5C438 8006BC38 23100200 */  negu       $v0, $v0
  .L8006BC3C:
    /* 5C43C 8006BC3C 092E4228 */  slti       $v0, $v0, 0x2E09
    /* 5C440 8006BC40 28004014 */  bnez       $v0, .L8006BCE4
    /* 5C444 8006BC44 00000000 */   nop
    /* 5C448 8006BC48 25006104 */  bgez       $v1, .L8006BCE0
    /* 5C44C 8006BC4C 082E0224 */   addiu     $v0, $zero, 0x2E08
    /* 5C450 8006BC50 38AF0108 */  j          .L8006BCE0
    /* 5C454 8006BC54 F8D10224 */   addiu     $v0, $zero, -0x2E08
  jlabel .L8006BC58
    /* 5C458 8006BC58 21280000 */  addu       $a1, $zero, $zero
    /* 5C45C 8006BC5C 02000624 */  addiu      $a2, $zero, 0x2
    /* 5C460 8006BC60 00141300 */  sll        $v0, $s3, 16
    /* 5C464 8006BC64 03140200 */  sra        $v0, $v0, 16
    /* 5C468 8006BC68 80180200 */  sll        $v1, $v0, 2
    /* 5C46C 8006BC6C 21186200 */  addu       $v1, $v1, $v0
    /* 5C470 8006BC70 001A0300 */  sll        $v1, $v1, 8
    /* 5C474 8006BC74 FC000496 */  lhu        $a0, 0xFC($s0)
    /* 5C478 8006BC78 F402078E */  lw         $a3, 0x2F4($s0)
    /* 5C47C 8006BC7C 00240400 */  sll        $a0, $a0, 16
    /* 5C480 8006BC80 0200E294 */  lhu        $v0, 0x2($a3)
    /* 5C484 8006BC84 03240400 */  sra        $a0, $a0, 16
    /* 5C488 8006BC88 23104300 */  subu       $v0, $v0, $v1
    /* 5C48C 8006BC8C DB69010C */  jal        func_8005A76C
    /* 5C490 8006BC90 F80002A6 */   sh        $v0, 0xF8($s0)
    /* 5C494 8006BC94 21202002 */  addu       $a0, $s1, $zero
    /* 5C498 8006BC98 F8000536 */  ori        $a1, $s0, 0xF8
    /* 5C49C 8006BC9C FC000636 */  ori        $a2, $s0, 0xFC
    /* 5C4A0 8006BCA0 00080724 */  addiu      $a3, $zero, 0x800
    /* 5C4A4 8006BCA4 2185020C */  jal        func_800A1484
    /* 5C4A8 8006BCA8 FC0002A6 */   sh        $v0, 0xFC($s0)
    /* 5C4AC 8006BCAC F8000296 */  lhu        $v0, 0xF8($s0)
    /* 5C4B0 8006BCB0 00000000 */  nop
    /* 5C4B4 8006BCB4 00140200 */  sll        $v0, $v0, 16
    /* 5C4B8 8006BCB8 031C0200 */  sra        $v1, $v0, 16
    /* 5C4BC 8006BCBC 02006104 */  bgez       $v1, .L8006BCC8
    /* 5C4C0 8006BCC0 21106000 */   addu      $v0, $v1, $zero
    /* 5C4C4 8006BCC4 23100200 */  negu       $v0, $v0
  .L8006BCC8:
    /* 5C4C8 8006BCC8 092C4228 */  slti       $v0, $v0, 0x2C09
    /* 5C4CC 8006BCCC 05004014 */  bnez       $v0, .L8006BCE4
    /* 5C4D0 8006BCD0 00000000 */   nop
    /* 5C4D4 8006BCD4 02006104 */  bgez       $v1, .L8006BCE0
    /* 5C4D8 8006BCD8 082C0224 */   addiu     $v0, $zero, 0x2C08
    /* 5C4DC 8006BCDC F8D30224 */  addiu      $v0, $zero, -0x2C08
  .L8006BCE0:
    /* 5C4E0 8006BCE0 F80002A6 */  sh         $v0, 0xF8($s0)
  jlabel .L8006BCE4
    /* 5C4E4 8006BCE4 98032292 */  lbu        $v0, 0x398($s1)
    /* 5C4E8 8006BCE8 00000000 */  nop
    /* 5C4EC 8006BCEC 21100202 */  addu       $v0, $s0, $v0
    /* 5C4F0 8006BCF0 FD024390 */  lbu        $v1, (0x1F8002FD & 0xFFFF)($v0)
    /* 5C4F4 8006BCF4 00000000 */  nop
    /* 5C4F8 8006BCF8 14006228 */  slti       $v0, $v1, 0x14
    /* 5C4FC 8006BCFC 0D004010 */  beqz       $v0, .L8006BD34
    /* 5C500 8006BD00 12006228 */   slti      $v0, $v1, 0x12
    /* 5C504 8006BD04 0B004014 */  bnez       $v0, .L8006BD34
    /* 5C508 8006BD08 6666033C */   lui       $v1, (0x66666667 >> 16)
    /* 5C50C 8006BD0C FC000296 */  lhu        $v0, (0x1F8000FC & 0xFFFF)($s0)
    /* 5C510 8006BD10 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
    /* 5C514 8006BD14 00140200 */  sll        $v0, $v0, 16
    /* 5C518 8006BD18 83130200 */  sra        $v0, $v0, 14
    /* 5C51C 8006BD1C 18004300 */  mult       $v0, $v1
    /* 5C520 8006BD20 C3170200 */  sra        $v0, $v0, 31
    /* 5C524 8006BD24 10500000 */  mfhi       $t2
    /* 5C528 8006BD28 43180A00 */  sra        $v1, $t2, 1
    /* 5C52C 8006BD2C 23186200 */  subu       $v1, $v1, $v0
    /* 5C530 8006BD30 FC0003A6 */  sh         $v1, (0x1F8000FC & 0xFFFF)($s0)
  .L8006BD34:
    /* 5C534 8006BD34 91032292 */  lbu        $v0, 0x391($s1)
    /* 5C538 8006BD38 00000000 */  nop
    /* 5C53C 8006BD3C EFFF4324 */  addiu      $v1, $v0, -0x11
    /* 5C540 8006BD40 0900622C */  sltiu      $v0, $v1, 0x9
    /* 5C544 8006BD44 1F004010 */  beqz       $v0, .L8006BDC4
    /* 5C548 8006BD48 80100300 */   sll       $v0, $v1, 2
    /* 5C54C 8006BD4C 0180013C */  lui        $at, %hi(jtbl_80012858)
    /* 5C550 8006BD50 21082200 */  addu       $at, $at, $v0
    /* 5C554 8006BD54 5828228C */  lw         $v0, %lo(jtbl_80012858)($at)
    /* 5C558 8006BD58 00000000 */  nop
    /* 5C55C 8006BD5C 08004000 */  jr         $v0
    /* 5C560 8006BD60 00000000 */   nop
  jlabel .L8006BD64
    /* 5C564 8006BD64 F8000296 */  lhu        $v0, 0xF8($s0)
    /* 5C568 8006BD68 001C1300 */  sll        $v1, $s3, 16
    /* 5C56C 8006BD6C 031C0300 */  sra        $v1, $v1, 16
    /* 5C570 8006BD70 00140200 */  sll        $v0, $v0, 16
    /* 5C574 8006BD74 03140200 */  sra        $v0, $v0, 16
    /* 5C578 8006BD78 18004300 */  mult       $v0, $v1
    /* 5C57C 8006BD7C 12500000 */  mflo       $t2
    /* 5C580 8006BD80 01034229 */  slti       $v0, $t2, 0x301
    /* 5C584 8006BD84 0F004014 */  bnez       $v0, .L8006BDC4
    /* 5C588 8006BD88 40100300 */   sll       $v0, $v1, 1
    /* 5C58C 8006BD8C 21104300 */  addu       $v0, $v0, $v1
    /* 5C590 8006BD90 00120200 */  sll        $v0, $v0, 8
    /* 5C594 8006BD94 71AF0108 */  j          .L8006BDC4
    /* 5C598 8006BD98 F80002A6 */   sh        $v0, 0xF8($s0)
  jlabel .L8006BD9C
    /* 5C59C 8006BD9C F8000396 */  lhu        $v1, 0xF8($s0)
    /* 5C5A0 8006BDA0 00141300 */  sll        $v0, $s3, 16
    /* 5C5A4 8006BDA4 03140200 */  sra        $v0, $v0, 16
    /* 5C5A8 8006BDA8 001C0300 */  sll        $v1, $v1, 16
    /* 5C5AC 8006BDAC 031C0300 */  sra        $v1, $v1, 16
    /* 5C5B0 8006BDB0 18006200 */  mult       $v1, $v0
    /* 5C5B4 8006BDB4 12500000 */  mflo       $t2
    /* 5C5B8 8006BDB8 02004019 */  blez       $t2, .L8006BDC4
    /* 5C5BC 8006BDBC 00000000 */   nop
    /* 5C5C0 8006BDC0 F80000A6 */  sh         $zero, 0xF8($s0)
  jlabel .L8006BDC4
    /* 5C5C4 8006BDC4 2000BF8F */  lw         $ra, 0x20($sp)
    /* 5C5C8 8006BDC8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 5C5CC 8006BDCC 1800B28F */  lw         $s2, 0x18($sp)
    /* 5C5D0 8006BDD0 1400B18F */  lw         $s1, 0x14($sp)
    /* 5C5D4 8006BDD4 1000B08F */  lw         $s0, 0x10($sp)
    /* 5C5D8 8006BDD8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 5C5DC 8006BDDC 0800E003 */  jr         $ra
    /* 5C5E0 8006BDE0 00000000 */   nop
endlabel func_8006B904
