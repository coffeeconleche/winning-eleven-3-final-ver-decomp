nonmatching func_8006C1EC, 0x1EC

glabel func_8006C1EC
    /* 5C9EC 8006C1EC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5C9F0 8006C1F0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5C9F4 8006C1F4 21908000 */  addu       $s2, $a0, $zero
    /* 5C9F8 8006C1F8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5C9FC 8006C1FC FFFF1124 */  addiu      $s1, $zero, -0x1
    /* 5CA00 8006C200 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 5CA04 8006C204 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5CA08 8006C208 99034292 */  lbu        $v0, 0x399($s2)
    /* 5CA0C 8006C20C 00000000 */  nop
    /* 5CA10 8006C210 02004014 */  bnez       $v0, .L8006C21C
    /* 5CA14 8006C214 801F103C */   lui       $s0, (0x1F8000FC >> 16)
    /* 5CA18 8006C218 01001124 */  addiu      $s1, $zero, 0x1
  .L8006C21C:
    /* 5CA1C 8006C21C FDAD010C */  jal        func_8006B7F4
    /* 5CA20 8006C220 21204002 */   addu      $a0, $s2, $zero
    /* 5CA24 8006C224 801F033C */  lui        $v1, (0x1F80030B >> 16)
    /* 5CA28 8006C228 0B036390 */  lbu        $v1, (0x1F80030B & 0xFFFF)($v1)
    /* 5CA2C 8006C22C 801F013C */  lui        $at, (0x1F8000F8 >> 16)
    /* 5CA30 8006C230 F80022A4 */  sh         $v0, (0x1F8000F8 & 0xFFFF)($at)
    /* 5CA34 8006C234 0600622C */  sltiu      $v0, $v1, 0x6
    /* 5CA38 8006C238 60004010 */  beqz       $v0, .L8006C3BC
    /* 5CA3C 8006C23C 80100300 */   sll       $v0, $v1, 2
    /* 5CA40 8006C240 0180013C */  lui        $at, %hi(jtbl_80012898)
    /* 5CA44 8006C244 21082200 */  addu       $at, $at, $v0
    /* 5CA48 8006C248 9828228C */  lw         $v0, %lo(jtbl_80012898)($at)
    /* 5CA4C 8006C24C 00000000 */  nop
    /* 5CA50 8006C250 08004000 */  jr         $v0
    /* 5CA54 8006C254 00000000 */   nop
  jlabel .L8006C258
    /* 5CA58 8006C258 05000624 */  addiu      $a2, $zero, 0x5
    /* 5CA5C 8006C25C FC000496 */  lhu        $a0, (0x1F8000FC & 0xFFFF)($s0)
    /* 5CA60 8006C260 F402028E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s0)
    /* 5CA64 8006C264 00240400 */  sll        $a0, $a0, 16
    /* 5CA68 8006C268 06004584 */  lh         $a1, 0x6($v0)
    /* 5CA6C 8006C26C 03240400 */  sra        $a0, $a0, 16
    /* 5CA70 8006C270 F969010C */  jal        func_8005A7E4
    /* 5CA74 8006C274 23280500 */   negu      $a1, $a1
    /* 5CA78 8006C278 EFB00108 */  j          .L8006C3BC
    /* 5CA7C 8006C27C FC0002A6 */   sh        $v0, (0x1F8000FC & 0xFFFF)($s0)
  jlabel .L8006C280
    /* 5CA80 8006C280 0A000624 */  addiu      $a2, $zero, 0xA
    /* 5CA84 8006C284 FC000496 */  lhu        $a0, 0xFC($s0)
    /* 5CA88 8006C288 F402028E */  lw         $v0, 0x2F4($s0)
    /* 5CA8C 8006C28C 00240400 */  sll        $a0, $a0, 16
    /* 5CA90 8006C290 06004584 */  lh         $a1, 0x6($v0)
    /* 5CA94 8006C294 03240400 */  sra        $a0, $a0, 16
    /* 5CA98 8006C298 F969010C */  jal        func_8005A7E4
    /* 5CA9C 8006C29C 23280500 */   negu      $a1, $a1
    /* 5CAA0 8006C2A0 FC0002A6 */  sh         $v0, 0xFC($s0)
    /* 5CAA4 8006C2A4 E10340A2 */  sb         $zero, 0x3E1($s2)
    /* 5CAA8 8006C2A8 F8000296 */  lhu        $v0, 0xF8($s0)
    /* 5CAAC 8006C2AC 00000000 */  nop
    /* 5CAB0 8006C2B0 00140200 */  sll        $v0, $v0, 16
    /* 5CAB4 8006C2B4 031C0200 */  sra        $v1, $v0, 16
    /* 5CAB8 8006C2B8 02006104 */  bgez       $v1, .L8006C2C4
    /* 5CABC 8006C2BC 21106000 */   addu      $v0, $v1, $zero
    /* 5CAC0 8006C2C0 23100200 */  negu       $v0, $v0
  .L8006C2C4:
    /* 5CAC4 8006C2C4 63254228 */  slti       $v0, $v0, 0x2563
    /* 5CAC8 8006C2C8 3C004014 */  bnez       $v0, .L8006C3BC
    /* 5CACC 8006C2CC 00000000 */   nop
    /* 5CAD0 8006C2D0 22006104 */  bgez       $v1, .L8006C35C
    /* 5CAD4 8006C2D4 62250224 */   addiu     $v0, $zero, 0x2562
    /* 5CAD8 8006C2D8 D7B00108 */  j          .L8006C35C
    /* 5CADC 8006C2DC 9EDA0224 */   addiu     $v0, $zero, -0x2562
  jlabel .L8006C2E0
    /* 5CAE0 8006C2E0 21280000 */  addu       $a1, $zero, $zero
    /* 5CAE4 8006C2E4 FC000496 */  lhu        $a0, 0xFC($s0)
    /* 5CAE8 8006C2E8 06000624 */  addiu      $a2, $zero, 0x6
    /* 5CAEC 8006C2EC 00240400 */  sll        $a0, $a0, 16
    /* 5CAF0 8006C2F0 DB69010C */  jal        func_8005A76C
    /* 5CAF4 8006C2F4 03240400 */   sra       $a0, $a0, 16
    /* 5CAF8 8006C2F8 FC0002A6 */  sh         $v0, 0xFC($s0)
    /* 5CAFC 8006C2FC 00141100 */  sll        $v0, $s1, 16
    /* 5CB00 8006C300 C3110200 */  sra        $v0, $v0, 7
    /* 5CB04 8006C304 F8000396 */  lhu        $v1, 0xF8($s0)
    /* 5CB08 8006C308 F402048E */  lw         $a0, 0x2F4($s0)
    /* 5CB0C 8006C30C 001C0300 */  sll        $v1, $v1, 16
    /* 5CB10 8006C310 02008484 */  lh         $a0, 0x2($a0)
    /* 5CB14 8006C314 031C0300 */  sra        $v1, $v1, 16
    /* 5CB18 8006C318 23208200 */  subu       $a0, $a0, $v0
    /* 5CB1C 8006C31C 21186400 */  addu       $v1, $v1, $a0
    /* 5CB20 8006C320 C2170300 */  srl        $v0, $v1, 31
    /* 5CB24 8006C324 21186200 */  addu       $v1, $v1, $v0
    /* 5CB28 8006C328 43180300 */  sra        $v1, $v1, 1
    /* 5CB2C 8006C32C F80003A6 */  sh         $v1, 0xF8($s0)
    /* 5CB30 8006C330 001C0300 */  sll        $v1, $v1, 16
    /* 5CB34 8006C334 031C0300 */  sra        $v1, $v1, 16
    /* 5CB38 8006C338 02006104 */  bgez       $v1, .L8006C344
    /* 5CB3C 8006C33C 21106000 */   addu      $v0, $v1, $zero
    /* 5CB40 8006C340 23100200 */  negu       $v0, $v0
  .L8006C344:
    /* 5CB44 8006C344 092D4228 */  slti       $v0, $v0, 0x2D09
    /* 5CB48 8006C348 1C004014 */  bnez       $v0, .L8006C3BC
    /* 5CB4C 8006C34C 00000000 */   nop
    /* 5CB50 8006C350 02006104 */  bgez       $v1, .L8006C35C
    /* 5CB54 8006C354 082D0224 */   addiu     $v0, $zero, 0x2D08
    /* 5CB58 8006C358 F8D20224 */  addiu      $v0, $zero, -0x2D08
  .L8006C35C:
    /* 5CB5C 8006C35C EFB00108 */  j          .L8006C3BC
    /* 5CB60 8006C360 F80002A6 */   sh        $v0, 0xF8($s0)
  jlabel .L8006C364
    /* 5CB64 8006C364 00141100 */  sll        $v0, $s1, 16
    /* 5CB68 8006C368 03140200 */  sra        $v0, $v0, 16
    /* 5CB6C 8006C36C 80180200 */  sll        $v1, $v0, 2
    /* 5CB70 8006C370 F402048E */  lw         $a0, 0x2F4($s0)
    /* 5CB74 8006C374 21186200 */  addu       $v1, $v1, $v0
    /* 5CB78 8006C378 02008294 */  lhu        $v0, 0x2($a0)
    /* 5CB7C 8006C37C 001A0300 */  sll        $v1, $v1, 8
    /* 5CB80 8006C380 23104300 */  subu       $v0, $v0, $v1
    /* 5CB84 8006C384 F80002A6 */  sh         $v0, 0xF8($s0)
    /* 5CB88 8006C388 00140200 */  sll        $v0, $v0, 16
    /* 5CB8C 8006C38C 031C0200 */  sra        $v1, $v0, 16
    /* 5CB90 8006C390 02006104 */  bgez       $v1, .L8006C39C
    /* 5CB94 8006C394 21106000 */   addu      $v0, $v1, $zero
    /* 5CB98 8006C398 23100200 */  negu       $v0, $v0
  .L8006C39C:
    /* 5CB9C 8006C39C 092D4228 */  slti       $v0, $v0, 0x2D09
    /* 5CBA0 8006C3A0 05004014 */  bnez       $v0, .L8006C3B8
    /* 5CBA4 8006C3A4 00000000 */   nop
    /* 5CBA8 8006C3A8 02006104 */  bgez       $v1, .L8006C3B4
    /* 5CBAC 8006C3AC 082D0224 */   addiu     $v0, $zero, 0x2D08
    /* 5CBB0 8006C3B0 F8D20224 */  addiu      $v0, $zero, -0x2D08
  .L8006C3B4:
    /* 5CBB4 8006C3B4 F80002A6 */  sh         $v0, 0xF8($s0)
  .L8006C3B8:
    /* 5CBB8 8006C3B8 E10340A2 */  sb         $zero, 0x3E1($s2)
  jlabel .L8006C3BC
    /* 5CBBC 8006C3BC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 5CBC0 8006C3C0 1800B28F */  lw         $s2, 0x18($sp)
    /* 5CBC4 8006C3C4 1400B18F */  lw         $s1, 0x14($sp)
    /* 5CBC8 8006C3C8 1000B08F */  lw         $s0, 0x10($sp)
    /* 5CBCC 8006C3CC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 5CBD0 8006C3D0 0800E003 */  jr         $ra
    /* 5CBD4 8006C3D4 00000000 */   nop
endlabel func_8006C1EC
