/* Handwritten function */
nonmatching func_8001B894, 0x39C

glabel func_8001B894
    /* C094 8001B894 801F023C */  lui        $v0, (0x1F80029C >> 16)
    /* C098 8001B898 9C024290 */  lbu        $v0, (0x1F80029C & 0xFFFF)($v0)
    /* C09C 8001B89C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* C0A0 8001B8A0 1400B1AF */  sw         $s1, 0x14($sp)
    /* C0A4 8001B8A4 801F113C */  lui        $s1, (0x1F80032C >> 16)
    /* C0A8 8001B8A8 1800BFAF */  sw         $ra, 0x18($sp)
    /* C0AC 8001B8AC 04004004 */  bltz       $v0, .L8001B8C0
    /* C0B0 8001B8B0 1000B0AF */   sw        $s0, 0x10($sp)
    /* C0B4 8001B8B4 05004228 */  slti       $v0, $v0, 0x5
    /* C0B8 8001B8B8 1A004014 */  bnez       $v0, .L8001B924
    /* C0BC 8001B8BC 00000000 */   nop
  .L8001B8C0:
    /* C0C0 8001B8C0 9A022292 */  lbu        $v0, (0x1F80029A & 0xFFFF)($s1)
    /* C0C4 8001B8C4 00000000 */  nop
    /* C0C8 8001B8C8 FF004330 */  andi       $v1, $v0, 0xFF
    /* C0CC 8001B8CC 0F00622C */  sltiu      $v0, $v1, 0xF
    /* C0D0 8001B8D0 14004010 */  beqz       $v0, .L8001B924
    /* C0D4 8001B8D4 80100300 */   sll       $v0, $v1, 2
    /* C0D8 8001B8D8 0180013C */  lui        $at, %hi(jtbl_800104F8)
    /* C0DC 8001B8DC 21082200 */  addu       $at, $at, $v0
    /* C0E0 8001B8E0 F804228C */  lw         $v0, %lo(jtbl_800104F8)($at)
    /* C0E4 8001B8E4 00000000 */  nop
    /* C0E8 8001B8E8 08004000 */  jr         $v0
    /* C0EC 8001B8EC 00000000 */   nop
  jlabel .L8001B8F0
    /* C0F0 8001B8F0 6666023C */  lui        $v0, (0x66666667 >> 16)
    /* C0F4 8001B8F4 9002248E */  lw         $a0, (0x1F800290 & 0xFFFF)($s1)
    /* C0F8 8001B8F8 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* C0FC 8001B8FC 18008200 */  mult       $a0, $v0
    /* C100 8001B900 C3170400 */  sra        $v0, $a0, 31
    /* C104 8001B904 10380000 */  mfhi       $a3
    /* C108 8001B908 83180700 */  sra        $v1, $a3, 2
    /* C10C 8001B90C 23186200 */  subu       $v1, $v1, $v0
    /* C110 8001B910 80100300 */  sll        $v0, $v1, 2
    /* C114 8001B914 21104300 */  addu       $v0, $v0, $v1
    /* C118 8001B918 40100200 */  sll        $v0, $v0, 1
    /* C11C 8001B91C 05008214 */  bne        $a0, $v0, .L8001B934
    /* C120 8001B920 00000000 */   nop
  jlabel .L8001B924
    /* C124 8001B924 D27C020C */  jal        func_8009F348
    /* C128 8001B928 00000000 */   nop
    /* C12C 8001B92C 0E80013C */  lui        $at, %hi(D_800E6C10)
    /* C130 8001B930 106C22A0 */  sb         $v0, %lo(D_800E6C10)($at)
  .L8001B934:
    /* C134 8001B934 0E80043C */  lui        $a0, %hi(D_800E6C10)
    /* C138 8001B938 106C8490 */  lbu        $a0, %lo(D_800E6C10)($a0)
    /* C13C 8001B93C A579000C */  jal        func_8001E694
    /* C140 8001B940 01800524 */   addiu     $a1, $zero, -0x7FFF
    /* C144 8001B944 0E80043C */  lui        $a0, %hi(D_800E6C10)
    /* C148 8001B948 106C8490 */  lbu        $a0, %lo(D_800E6C10)($a0)
    /* C14C 8001B94C 01800524 */  addiu      $a1, $zero, -0x7FFF
    /* C150 8001B950 6979000C */  jal        func_8001E5A4
    /* C154 8001B954 F80022A6 */   sh        $v0, (0x1F8000F8 & 0xFFFF)($s1)
    /* C158 8001B958 F8002496 */  lhu        $a0, (0x1F8000F8 & 0xFFFF)($s1)
    /* C15C 8001B95C F001238E */  lw         $v1, (0x1F8001F0 & 0xFFFF)($s1)
    /* C160 8001B960 00240400 */  sll        $a0, $a0, 16
    /* C164 8001B964 03240400 */  sra        $a0, $a0, 16
    /* C168 8001B968 23186400 */  subu       $v1, $v1, $a0
    /* C16C 8001B96C 18006300 */  mult       $v1, $v1
    /* C170 8001B970 FC0022A6 */  sh         $v0, (0x1F8000FC & 0xFFFF)($s1)
    /* C174 8001B974 FC002396 */  lhu        $v1, (0x1F8000FC & 0xFFFF)($s1)
    /* C178 8001B978 F801228E */  lw         $v0, (0x1F8001F8 & 0xFFFF)($s1)
    /* C17C 8001B97C 001C0300 */  sll        $v1, $v1, 16
    /* C180 8001B980 12200000 */  mflo       $a0
    /* C184 8001B984 031C0300 */  sra        $v1, $v1, 16
    /* C188 8001B988 23104300 */  subu       $v0, $v0, $v1
    /* C18C 8001B98C 18004200 */  mult       $v0, $v0
    /* C190 8001B990 0E002296 */  lhu        $v0, (0x1F80000E & 0xFFFF)($s1)
    /* C194 8001B994 00000000 */  nop
    /* C198 8001B998 FA0022A6 */  sh         $v0, (0x1F8000FA & 0xFFFF)($s1)
    /* C19C 8001B99C 12180000 */  mflo       $v1
    /* C1A0 8001B9A0 4AC4020C */  jal        func_800B1128
    /* C1A4 8001B9A4 21208300 */   addu      $a0, $a0, $v1
    /* C1A8 8001B9A8 21184000 */  addu       $v1, $v0, $zero
    /* C1AC 8001B9AC 0010622C */  sltiu      $v0, $v1, 0x1000
    /* C1B0 8001B9B0 06004010 */  beqz       $v0, .L8001B9CC
    /* C1B4 8001B9B4 00100224 */   addiu     $v0, $zero, 0x1000
    /* C1B8 8001B9B8 23104300 */  subu       $v0, $v0, $v1
    /* C1BC 8001B9BC FA002396 */  lhu        $v1, (0x1F8000FA & 0xFFFF)($s1)
    /* C1C0 8001B9C0 02110200 */  srl        $v0, $v0, 4
    /* C1C4 8001B9C4 21186200 */  addu       $v1, $v1, $v0
    /* C1C8 8001B9C8 FA0023A6 */  sh         $v1, (0x1F8000FA & 0xFFFF)($s1)
  .L8001B9CC:
    /* C1CC 8001B9CC 24012436 */  ori        $a0, $s1, (0x1F800124 & 0xFFFF)
    /* C1D0 8001B9D0 04013026 */  addiu      $s0, $s1, %lo(D_1F800104)
    /* C1D4 8001B9D4 F8002696 */  lhu        $a2, (0x1F8000F8 & 0xFFFF)($s1)
    /* C1D8 8001B9D8 FA002396 */  lhu        $v1, (0x1F8000FA & 0xFFFF)($s1)
    /* C1DC 8001B9DC 00100224 */  addiu      $v0, $zero, 0x1000
    /* C1E0 8001B9E0 4C0122AE */  sw         $v0, (0x1F80014C & 0xFFFF)($s1)
    /* C1E4 8001B9E4 500122AE */  sw         $v0, (0x1F800150 & 0xFFFF)($s1)
    /* C1E8 8001B9E8 540122AE */  sw         $v0, (0x1F800154 & 0xFFFF)($s1)
    /* C1EC 8001B9EC FC002296 */  lhu        $v0, (0x1F8000FC & 0xFFFF)($s1)
    /* C1F0 8001B9F0 21280002 */  addu       $a1, $s0, $zero
    /* C1F4 8001B9F4 240120A6 */  sh         $zero, (0x1F800124 & 0xFFFF)($s1)
    /* C1F8 8001B9F8 260120A6 */  sh         $zero, (0x1F800126 & 0xFFFF)($s1)
    /* C1FC 8001B9FC 280120A6 */  sh         $zero, (0x1F800128 & 0xFFFF)($s1)
    /* C200 8001BA00 00340600 */  sll        $a2, $a2, 16
    /* C204 8001BA04 03340600 */  sra        $a2, $a2, 16
    /* C208 8001BA08 001C0300 */  sll        $v1, $v1, 16
    /* C20C 8001BA0C 031C0300 */  sra        $v1, $v1, 16
    /* C210 8001BA10 00140200 */  sll        $v0, $v0, 16
    /* C214 8001BA14 03140200 */  sra        $v0, $v0, 16
    /* C218 8001BA18 3C0126AE */  sw         $a2, (0x1F80013C & 0xFFFF)($s1)
    /* C21C 8001BA1C 400123AE */  sw         $v1, (0x1F800140 & 0xFFFF)($s1)
    /* C220 8001BA20 5EC8020C */  jal        func_800B2178
    /* C224 8001BA24 440122AE */   sw        $v0, (0x1F800144 & 0xFFFF)($s1)
    /* C228 8001BA28 21200002 */  addu       $a0, $s0, $zero
    /* C22C 8001BA2C D2C4020C */  jal        func_800B1348
    /* C230 8001BA30 4C012536 */   ori       $a1, $s1, (0x1F80014C & 0xFFFF)
    /* C234 8001BA34 21200002 */  addu       $a0, $s0, $zero
    /* C238 8001BA38 C6C4020C */  jal        func_800B1318
    /* C23C 8001BA3C 3C012536 */   ori       $a1, $s1, (0x1F80013C & 0xFFFF)
    /* C240 8001BA40 A8012326 */  addiu      $v1, $s1, %lo(D_1F8001A8)
    /* C244 8001BA44 00006C8C */  lw         $t4, 0x0($v1)
    /* C248 8001BA48 04006D8C */  lw         $t5, 0x4($v1)
    /* C24C 8001BA4C 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
    /* C250 8001BA50 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
    /* C254 8001BA54 08006C8C */  lw         $t4, 0x8($v1)
    /* C258 8001BA58 0C006D8C */  lw         $t5, 0xC($v1)
    /* C25C 8001BA5C 10006E8C */  lw         $t6, 0x10($v1)
    /* C260 8001BA60 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
    /* C264 8001BA64 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
    /* C268 8001BA68 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
    /* C26C 8001BA6C 00000C96 */  lhu        $t4, 0x0($s0)
    /* C270 8001BA70 06000D96 */  lhu        $t5, 0x6($s0)
    /* C274 8001BA74 0C000E96 */  lhu        $t6, 0xC($s0)
    /* C278 8001BA78 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
    /* C27C 8001BA7C 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
    /* C280 8001BA80 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
    /* C284 8001BA84 00000000 */  nop
    /* C288 8001BA88 00000000 */  nop
    /* C28C 8001BA8C 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* C290 8001BA90 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* C294 8001BA94 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* C298 8001BA98 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
    /* C29C 8001BA9C 00000CA6 */  sh         $t4, 0x0($s0)
    /* C2A0 8001BAA0 06000DA6 */  sh         $t5, 0x6($s0)
    /* C2A4 8001BAA4 0C000EA6 */  sh         $t6, 0xC($s0)
    /* C2A8 8001BAA8 06012226 */  addiu      $v0, $s1, %lo(D_1F800104 + 0x2)
    /* C2AC 8001BAAC 00004C94 */  lhu        $t4, 0x0($v0)
    /* C2B0 8001BAB0 06004D94 */  lhu        $t5, 0x6($v0)
    /* C2B4 8001BAB4 0C004E94 */  lhu        $t6, 0xC($v0)
    /* C2B8 8001BAB8 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
    /* C2BC 8001BABC 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
    /* C2C0 8001BAC0 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
    /* C2C4 8001BAC4 00000000 */  nop
    /* C2C8 8001BAC8 00000000 */  nop
    /* C2CC 8001BACC 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* C2D0 8001BAD0 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* C2D4 8001BAD4 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* C2D8 8001BAD8 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
    /* C2DC 8001BADC 00004CA4 */  sh         $t4, 0x0($v0)
    /* C2E0 8001BAE0 06004DA4 */  sh         $t5, 0x6($v0)
    /* C2E4 8001BAE4 0C004EA4 */  sh         $t6, 0xC($v0)
    /* C2E8 8001BAE8 08012226 */  addiu      $v0, $s1, %lo(D_1F800108)
    /* C2EC 8001BAEC 00004C94 */  lhu        $t4, 0x0($v0)
    /* C2F0 8001BAF0 06004D94 */  lhu        $t5, 0x6($v0)
    /* C2F4 8001BAF4 0C004E94 */  lhu        $t6, 0xC($v0)
    /* C2F8 8001BAF8 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
    /* C2FC 8001BAFC 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
    /* C300 8001BB00 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
    /* C304 8001BB04 00000000 */  nop
    /* C308 8001BB08 00000000 */  nop
    /* C30C 8001BB0C 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* C310 8001BB10 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* C314 8001BB14 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* C318 8001BB18 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
    /* C31C 8001BB1C 00004CA4 */  sh         $t4, 0x0($v0)
    /* C320 8001BB20 06004DA4 */  sh         $t5, 0x6($v0)
    /* C324 8001BB24 0C004EA4 */  sh         $t6, 0xC($v0)
    /* C328 8001BB28 14006C8C */  lw         $t4, 0x14($v1)
    /* C32C 8001BB2C 18006D8C */  lw         $t5, 0x18($v1)
    /* C330 8001BB30 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
    /* C334 8001BB34 1C006E8C */  lw         $t6, 0x1C($v1)
    /* C338 8001BB38 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
    /* C33C 8001BB3C 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
    /* C340 8001BB40 18012226 */  addiu      $v0, $s1, %lo(D_1F800118)
    /* C344 8001BB44 04004D94 */  lhu        $t5, 0x4($v0)
    /* C348 8001BB48 00004C94 */  lhu        $t4, 0x0($v0)
    /* C34C 8001BB4C 006C0D00 */  sll        $t5, $t5, 16
    /* C350 8001BB50 25608D01 */  or         $t4, $t4, $t5
    /* C354 8001BB54 00008C48 */  mtc2       $t4, $0 /* handwritten instruction */
    /* C358 8001BB58 080041C8 */  lwc2       $1, 0x8($v0)
    /* C35C 8001BB5C 00000000 */  nop
    /* C360 8001BB60 00000000 */  nop
    /* C364 8001BB64 1200484A */  mvmva      1, 0, 0, 0, 0
    /* C368 8001BB68 000059E8 */  swc2       $25, 0x0($v0)
    /* C36C 8001BB6C 04005AE8 */  swc2       $26, 0x4($v0) /* handwritten instruction */
    /* C370 8001BB70 08005BE8 */  swc2       $27, 0x8($v0) /* handwritten instruction */
    /* C374 8001BB74 2001228E */  lw         $v0, (0x1F800120 & 0xFFFF)($s1)
    /* C378 8001BB78 00000000 */  nop
    /* C37C 8001BB7C 21204000 */  addu       $a0, $v0, $zero
    /* C380 8001BB80 01028228 */  slti       $v0, $a0, 0x201
    /* C384 8001BB84 02004010 */  beqz       $v0, .L8001BB90
    /* C388 8001BB88 00000000 */   nop
    /* C38C 8001BB8C 00020424 */  addiu      $a0, $zero, 0x200
  .L8001BB90:
    /* C390 8001BB90 1C01238E */  lw         $v1, (0x1F80011C & 0xFFFF)($s1)
    /* C394 8001BB94 2C03228E */  lw         $v0, (0x1F80032C & 0xFFFF)($s1)
    /* C398 8001BB98 00000000 */  nop
    /* C39C 8001BB9C 18006200 */  mult       $v1, $v0
    /* C3A0 8001BBA0 12100000 */  mflo       $v0
    /* C3A4 8001BBA4 00000000 */  nop
    /* C3A8 8001BBA8 00000000 */  nop
    /* C3AC 8001BBAC 1A004400 */  div        $zero, $v0, $a0
    /* C3B0 8001BBB0 02008014 */  bnez       $a0, .L8001BBBC
    /* C3B4 8001BBB4 00000000 */   nop
    /* C3B8 8001BBB8 0D000700 */  break      7
  .L8001BBBC:
    /* C3BC 8001BBBC FFFF0124 */  addiu      $at, $zero, -0x1
    /* C3C0 8001BBC0 04008114 */  bne        $a0, $at, .L8001BBD4
    /* C3C4 8001BBC4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* C3C8 8001BBC8 02004114 */  bne        $v0, $at, .L8001BBD4
    /* C3CC 8001BBCC 00000000 */   nop
    /* C3D0 8001BBD0 0D000600 */  break      6
  .L8001BBD4:
    /* C3D4 8001BBD4 12100000 */  mflo       $v0
    /* C3D8 8001BBD8 00000000 */  nop
    /* C3DC 8001BBDC 21184000 */  addu       $v1, $v0, $zero
    /* C3E0 8001BBE0 00140200 */  sll        $v0, $v0, 16
    /* C3E4 8001BBE4 03140200 */  sra        $v0, $v0, 16
    /* C3E8 8001BBE8 A0004228 */  slti       $v0, $v0, 0xA0
    /* C3EC 8001BBEC 03004014 */  bnez       $v0, .L8001BBFC
    /* C3F0 8001BBF0 00140300 */   sll       $v0, $v1, 16
    /* C3F4 8001BBF4 A0000324 */  addiu      $v1, $zero, 0xA0
    /* C3F8 8001BBF8 00140300 */  sll        $v0, $v1, 16
  .L8001BBFC:
    /* C3FC 8001BBFC 03140200 */  sra        $v0, $v0, 16
    /* C400 8001BC00 E1FE4228 */  slti       $v0, $v0, -0x11F
    /* C404 8001BC04 03004010 */  beqz       $v0, .L8001BC14
    /* C408 8001BC08 00140300 */   sll       $v0, $v1, 16
    /* C40C 8001BC0C E0FE0324 */  addiu      $v1, $zero, -0x120
    /* C410 8001BC10 00140300 */  sll        $v0, $v1, 16
  .L8001BC14:
    /* C414 8001BC14 03140200 */  sra        $v0, $v0, 16
    /* C418 8001BC18 1800BF8F */  lw         $ra, 0x18($sp)
    /* C41C 8001BC1C 1400B18F */  lw         $s1, 0x14($sp)
    /* C420 8001BC20 1000B08F */  lw         $s0, 0x10($sp)
    /* C424 8001BC24 2000BD27 */  addiu      $sp, $sp, 0x20
    /* C428 8001BC28 0800E003 */  jr         $ra
    /* C42C 8001BC2C 00000000 */   nop
endlabel func_8001B894
