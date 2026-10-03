nonmatching func_8008B924, 0x3FC

glabel func_8008B924
    /* 7C124 8008B924 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 7C128 8008B928 2800B4AF */  sw         $s4, 0x28($sp)
    /* 7C12C 8008B92C 21A08000 */  addu       $s4, $a0, $zero
    /* 7C130 8008B930 3400B7AF */  sw         $s7, 0x34($sp)
    /* 7C134 8008B934 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 7C138 8008B938 3800BEAF */  sw         $fp, 0x38($sp)
    /* 7C13C 8008B93C 3000B6AF */  sw         $s6, 0x30($sp)
    /* 7C140 8008B940 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 7C144 8008B944 2400B3AF */  sw         $s3, 0x24($sp)
    /* 7C148 8008B948 2000B2AF */  sw         $s2, 0x20($sp)
    /* 7C14C 8008B94C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 7C150 8008B950 1800B0AF */  sw         $s0, 0x18($sp)
    /* 7C154 8008B954 C2038296 */  lhu        $v0, 0x3C2($s4)
    /* 7C158 8008B958 10801E3C */  lui        $fp, %hi(D_800FF748)
    /* 7C15C 8008B95C 48F7DE27 */  addiu      $fp, $fp, %lo(D_800FF748)
    /* 7C160 8008B960 001C0200 */  sll        $v1, $v0, 16
    /* 7C164 8008B964 03240300 */  sra        $a0, $v1, 16
    /* 7C168 8008B968 07008014 */  bnez       $a0, .L8008B988
    /* 7C16C 8008B96C 801F173C */   lui       $s7, (0x1F800322 >> 16)
    /* 7C170 8008B970 476F010C */  jal        func_8005BD1C
    /* 7C174 8008B974 21208002 */   addu      $a0, $s4, $zero
    /* 7C178 8008B978 81000224 */  addiu      $v0, $zero, 0x81
    /* 7C17C 8008B97C 960382A2 */  sb         $v0, 0x396($s4)
    /* 7C180 8008B980 3B2F0208 */  j          .L8008BCEC
    /* 7C184 8008B984 970380A2 */   sb        $zero, 0x397($s4)
  .L8008B988:
    /* 7C188 8008B988 AA2A023C */  lui        $v0, (0x2AAAAAAB >> 16)
    /* 7C18C 8008B98C ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
    /* 7C190 8008B990 18008200 */  mult       $a0, $v0
    /* 7C194 8008B994 C31F0300 */  sra        $v1, $v1, 31
    /* 7C198 8008B998 10400000 */  mfhi       $t0
    /* 7C19C 8008B99C 83100800 */  sra        $v0, $t0, 2
    /* 7C1A0 8008B9A0 23104300 */  subu       $v0, $v0, $v1
    /* 7C1A4 8008B9A4 40180200 */  sll        $v1, $v0, 1
    /* 7C1A8 8008B9A8 21186200 */  addu       $v1, $v1, $v0
    /* 7C1AC 8008B9AC C0180300 */  sll        $v1, $v1, 3
    /* 7C1B0 8008B9B0 23188300 */  subu       $v1, $a0, $v1
    /* 7C1B4 8008B9B4 001C0300 */  sll        $v1, $v1, 16
    /* 7C1B8 8008B9B8 031C0300 */  sra        $v1, $v1, 16
    /* 7C1BC 8008B9BC 40110300 */  sll        $v0, $v1, 5
    /* 7C1C0 8008B9C0 23104300 */  subu       $v0, $v0, $v1
    /* 7C1C4 8008B9C4 80100200 */  sll        $v0, $v0, 2
    /* 7C1C8 8008B9C8 21104300 */  addu       $v0, $v0, $v1
    /* 7C1CC 8008B9CC C0100200 */  sll        $v0, $v0, 3
    /* 7C1D0 8008B9D0 97038392 */  lbu        $v1, 0x397($s4)
    /* 7C1D4 8008B9D4 00000000 */  nop
    /* 7C1D8 8008B9D8 06006010 */  beqz       $v1, .L8008B9F4
    /* 7C1DC 8008B9DC 21B05E00 */   addu      $s6, $v0, $fp
    /* 7C1E0 8008B9E0 01000224 */  addiu      $v0, $zero, 0x1
    /* 7C1E4 8008B9E4 19006210 */  beq        $v1, $v0, .L8008BA4C
    /* 7C1E8 8008B9E8 00000000 */   nop
    /* 7C1EC 8008B9EC 242F0208 */  j          .L8008BC90
    /* 7C1F0 8008B9F0 00000000 */   nop
  .L8008B9F4:
    /* 7C1F4 8008B9F4 21208002 */  addu       $a0, $s4, $zero
    /* 7C1F8 8008B9F8 70000524 */  addiu      $a1, $zero, 0x70
    /* 7C1FC 8008B9FC 8C6E010C */  jal        func_8005BA30
    /* 7C200 8008BA00 21300000 */   addu      $a2, $zero, $zero
    /* 7C204 8008BA04 C6038486 */  lh         $a0, 0x3C6($s4)
    /* 7C208 8008BA08 99038292 */  lbu        $v0, 0x399($s4)
    /* 7C20C 8008BA0C AC0380A2 */  sb         $zero, 0x3AC($s4)
    /* 7C210 8008BA10 0200C386 */  lh         $v1, 0x2($s6)
    /* 7C214 8008BA14 02004014 */  bnez       $v0, .L8008BA20
    /* 7C218 8008BA18 23306400 */   subu      $a2, $v1, $a0
    /* 7C21C 8008BA1C 21306400 */  addu       $a2, $v1, $a0
  .L8008BA20:
    /* 7C220 8008BA20 00340600 */  sll        $a2, $a2, 16
    /* 7C224 8008BA24 02008486 */  lh         $a0, 0x2($s4)
    /* 7C228 8008BA28 06008586 */  lh         $a1, 0x6($s4)
    /* 7C22C 8008BA2C 0600C786 */  lh         $a3, 0x6($s6)
    /* 7C230 8008BA30 DB6C010C */  jal        func_8005B36C
    /* 7C234 8008BA34 03340600 */   sra       $a2, $a2, 16
    /* 7C238 8008BA38 97038392 */  lbu        $v1, 0x397($s4)
    /* 7C23C 8008BA3C AB0382A2 */  sb         $v0, 0x3AB($s4)
    /* 7C240 8008BA40 01006324 */  addiu      $v1, $v1, 0x1
    /* 7C244 8008BA44 242F0208 */  j          .L8008BC90
    /* 7C248 8008BA48 970383A2 */   sb        $v1, 0x397($s4)
  .L8008BA4C:
    /* 7C24C 8008BA4C 476F010C */  jal        func_8005BD1C
    /* 7C250 8008BA50 21208002 */   addu      $a0, $s4, $zero
    /* 7C254 8008BA54 90038392 */  lbu        $v1, 0x390($s4)
    /* 7C258 8008BA58 13000224 */  addiu      $v0, $zero, 0x13
    /* 7C25C 8008BA5C 05006210 */  beq        $v1, $v0, .L8008BA74
    /* 7C260 8008BA60 2A000224 */   addiu     $v0, $zero, 0x2A
    /* 7C264 8008BA64 88006210 */  beq        $v1, $v0, .L8008BC88
    /* 7C268 8008BA68 82000224 */   addiu     $v0, $zero, 0x82
    /* 7C26C 8008BA6C 242F0208 */  j          .L8008BC90
    /* 7C270 8008BA70 00000000 */   nop
  .L8008BA74:
    /* 7C274 8008BA74 C6038486 */  lh         $a0, 0x3C6($s4)
    /* 7C278 8008BA78 99038292 */  lbu        $v0, 0x399($s4)
    /* 7C27C 8008BA7C 0200C386 */  lh         $v1, 0x2($s6)
    /* 7C280 8008BA80 03004010 */  beqz       $v0, .L8008BA90
    /* 7C284 8008BA84 00000000 */   nop
    /* 7C288 8008BA88 A52E0208 */  j          .L8008BA94
    /* 7C28C 8008BA8C 23306400 */   subu      $a2, $v1, $a0
  .L8008BA90:
    /* 7C290 8008BA90 21306400 */  addu       $a2, $v1, $a0
  .L8008BA94:
    /* 7C294 8008BA94 00840600 */  sll        $s0, $a2, 16
    /* 7C298 8008BA98 03841000 */  sra        $s0, $s0, 16
    /* 7C29C 8008BA9C 02008486 */  lh         $a0, 0x2($s4)
    /* 7C2A0 8008BAA0 06008586 */  lh         $a1, 0x6($s4)
    /* 7C2A4 8008BAA4 0600C786 */  lh         $a3, 0x6($s6)
    /* 7C2A8 8008BAA8 DB6C010C */  jal        func_8005B36C
    /* 7C2AC 8008BAAC 21300002 */   addu      $a2, $s0, $zero
    /* 7C2B0 8008BAB0 02008386 */  lh         $v1, 0x2($s4)
    /* 7C2B4 8008BAB4 00000000 */  nop
    /* 7C2B8 8008BAB8 23187000 */  subu       $v1, $v1, $s0
    /* 7C2BC 8008BABC 18006300 */  mult       $v1, $v1
    /* 7C2C0 8008BAC0 0600C486 */  lh         $a0, 0x6($s6)
    /* 7C2C4 8008BAC4 06008386 */  lh         $v1, 0x6($s4)
    /* 7C2C8 8008BAC8 12280000 */  mflo       $a1
    /* 7C2CC 8008BACC 23186400 */  subu       $v1, $v1, $a0
    /* 7C2D0 8008BAD0 00000000 */  nop
    /* 7C2D4 8008BAD4 18006300 */  mult       $v1, $v1
    /* 7C2D8 8008BAD8 21A80000 */  addu       $s5, $zero, $zero
    /* 7C2DC 8008BADC 21884000 */  addu       $s1, $v0, $zero
    /* 7C2E0 8008BAE0 12180000 */  mflo       $v1
    /* 7C2E4 8008BAE4 4AC4020C */  jal        func_800B1128
    /* 7C2E8 8008BAE8 2120A300 */   addu      $a0, $a1, $v1
    /* 7C2EC 8008BAEC 21904000 */  addu       $s2, $v0, $zero
    /* 7C2F0 8008BAF0 21204002 */  addu       $a0, $s2, $zero
    /* 7C2F4 8008BAF4 CFBA000C */  jal        func_8002EB3C
    /* 7C2F8 8008BAF8 00300524 */   addiu     $a1, $zero, 0x3000
    /* 7C2FC 8008BAFC 21204002 */  addu       $a0, $s2, $zero
    /* 7C300 8008BB00 B2BD000C */  jal        func_8002F6C8
    /* 7C304 8008BB04 FF005330 */   andi      $s3, $v0, 0xFF
    /* 7C308 8008BB08 FF003132 */  andi       $s1, $s1, 0xFF
    /* 7C30C 8008BB0C 21202002 */  addu       $a0, $s1, $zero
    /* 7C310 8008BB10 21286002 */  addu       $a1, $s3, $zero
    /* 7C314 8008BB14 21300002 */  addu       $a2, $s0, $zero
    /* 7C318 8008BB18 21804000 */  addu       $s0, $v0, $zero
    /* 7C31C 8008BB1C 00141000 */  sll        $v0, $s0, 16
    /* 7C320 8008BB20 0600C786 */  lh         $a3, 0x6($s6)
    /* 7C324 8008BB24 03140200 */  sra        $v0, $v0, 16
    /* 7C328 8008BB28 3FBC000C */  jal        func_8002F0FC
    /* 7C32C 8008BB2C 1000A2AF */   sw        $v0, 0x10($sp)
    /* 7C330 8008BB30 21208002 */  addu       $a0, $s4, $zero
    /* 7C334 8008BB34 F402E38E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s7)
    /* 7C338 8008BB38 21282002 */  addu       $a1, $s1, $zero
    /* 7C33C 8008BB3C CC036294 */  lhu        $v0, 0x3CC($v1)
    /* 7C340 8008BB40 21306002 */  addu       $a2, $s3, $zero
    /* 7C344 8008BB44 FEFF4224 */  addiu      $v0, $v0, -0x2
    /* 7C348 8008BB48 CC0362A4 */  sh         $v0, 0x3CC($v1)
    /* 7C34C 8008BB4C FE00E296 */  lhu        $v0, (0x1F8000FE & 0xFFFF)($s7)
    /* 7C350 8008BB50 0001E396 */  lhu        $v1, (0x1F800100 & 0xFFFF)($s7)
    /* 7C354 8008BB54 21380002 */  addu       $a3, $s0, $zero
    /* 7C358 8008BB58 B802E2A6 */  sh         $v0, (0x1F8002B8 & 0xFFFF)($s7)
    /* 7C35C 8008BB5C 3C2C010C */  jal        func_8004B0F0
    /* 7C360 8008BB60 BA02E3A6 */   sh        $v1, (0x1F8002BA & 0xFFFF)($s7)
    /* 7C364 8008BB64 2120C002 */  addu       $a0, $s6, $zero
    /* 7C368 8008BB68 01000524 */  addiu      $a1, $zero, 0x1
    /* 7C36C 8008BB6C F402E38E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s7)
    /* 7C370 8008BB70 08000224 */  addiu      $v0, $zero, 0x8
    /* 7C374 8008BB74 B20362A0 */  sb         $v0, 0x3B2($v1)
    /* 7C378 8008BB78 01000224 */  addiu      $v0, $zero, 0x1
    /* 7C37C 8008BB7C AE44010C */  jal        func_800512B8
    /* 7C380 8008BB80 B002E2AE */   sw        $v0, (0x1F8002B0 & 0xFFFF)($s7)
    /* 7C384 8008BB84 21382002 */  addu       $a3, $s1, $zero
    /* 7C388 8008BB88 0B000224 */  addiu      $v0, $zero, 0xB
    /* 7C38C 8008BB8C 18005202 */  mult       $s2, $s2
    /* 7C390 8008BB90 9603C2A2 */  sb         $v0, 0x396($s6)
    /* 7C394 8008BB94 D8FF0224 */  addiu      $v0, $zero, -0x28
    /* 7C398 8008BB98 9703C0A2 */  sb         $zero, 0x397($s6)
    /* 7C39C 8008BB9C CA03C0A6 */  sh         $zero, 0x3CA($s6)
    /* 7C3A0 8008BBA0 1C03E2A6 */  sh         $v0, (0x1F80031C & 0xFFFF)($s7)
    /* 7C3A4 8008BBA4 FC02E0A2 */  sb         $zero, (0x1F8002FC & 0xFFFF)($s7)
    /* 7C3A8 8008BBA8 99038492 */  lbu        $a0, 0x399($s4)
    /* 7C3AC 8008BBAC 02008586 */  lh         $a1, 0x2($s4)
    /* 7C3B0 8008BBB0 06008686 */  lh         $a2, 0x6($s4)
    /* 7C3B4 8008BBB4 0C000224 */  addiu      $v0, $zero, 0xC
    /* 7C3B8 8008BBB8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 7C3BC 8008BBBC 12180000 */  mflo       $v1
    /* 7C3C0 8008BBC0 189E010C */  jal        func_80067860
    /* 7C3C4 8008BBC4 1400A3AF */   sw        $v1, 0x14($sp)
  .L8008BBC8:
    /* 7C3C8 8008BBC8 99038292 */  lbu        $v0, 0x399($s4)
    /* 7C3CC 8008BBCC 00000000 */  nop
    /* 7C3D0 8008BBD0 40100200 */  sll        $v0, $v0, 1
    /* 7C3D4 8008BBD4 21105700 */  addu       $v0, $v0, $s7
    /* 7C3D8 8008BBD8 21105500 */  addu       $v0, $v0, $s5
    /* 7C3DC 8008BBDC 22034490 */  lbu        $a0, (0x1F800322 & 0xFFFF)($v0)
    /* 7C3E0 8008BBE0 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 7C3E4 8008BBE4 22008210 */  beq        $a0, $v0, .L8008BC70
    /* 7C3E8 8008BBE8 00000000 */   nop
    /* 7C3EC 8008BBEC AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 7C3F0 8008BBF0 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 7C3F4 8008BBF4 19008200 */  multu      $a0, $v0
    /* 7C3F8 8008BBF8 10400000 */  mfhi       $t0
    /* 7C3FC 8008BBFC 02110800 */  srl        $v0, $t0, 4
    /* 7C400 8008BC00 40180200 */  sll        $v1, $v0, 1
    /* 7C404 8008BC04 21186200 */  addu       $v1, $v1, $v0
    /* 7C408 8008BC08 C0180300 */  sll        $v1, $v1, 3
    /* 7C40C 8008BC0C 23188300 */  subu       $v1, $a0, $v1
    /* 7C410 8008BC10 FF006330 */  andi       $v1, $v1, 0xFF
    /* 7C414 8008BC14 40110300 */  sll        $v0, $v1, 5
    /* 7C418 8008BC18 23104300 */  subu       $v0, $v0, $v1
    /* 7C41C 8008BC1C 80100200 */  sll        $v0, $v0, 2
    /* 7C420 8008BC20 21104300 */  addu       $v0, $v0, $v1
    /* 7C424 8008BC24 C0100200 */  sll        $v0, $v0, 3
    /* 7C428 8008BC28 2180C203 */  addu       $s0, $fp, $v0
    /* 7C42C 8008BC2C 8D030392 */  lbu        $v1, 0x38D($s0)
    /* 7C430 8008BC30 8D038292 */  lbu        $v0, 0x38D($s4)
    /* 7C434 8008BC34 00000000 */  nop
    /* 7C438 8008BC38 0D006210 */  beq        $v1, $v0, .L8008BC70
    /* 7C43C 8008BC3C 00000000 */   nop
    /* 7C440 8008BC40 8D03C292 */  lbu        $v0, 0x38D($s6)
    /* 7C444 8008BC44 00000000 */  nop
    /* 7C448 8008BC48 09006210 */  beq        $v1, $v0, .L8008BC70
    /* 7C44C 8008BC4C 00000000 */   nop
    /* 7C450 8008BC50 644B010C */  jal        func_80052D90
    /* 7C454 8008BC54 21200002 */   addu      $a0, $s0, $zero
    /* 7C458 8008BC58 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7C45C 8008BC5C 04004014 */  bnez       $v0, .L8008BC70
    /* 7C460 8008BC60 1B000224 */   addiu     $v0, $zero, 0x1B
    /* 7C464 8008BC64 960302A2 */  sb         $v0, 0x396($s0)
    /* 7C468 8008BC68 40000224 */  addiu      $v0, $zero, 0x40
    /* 7C46C 8008BC6C 970302A2 */  sb         $v0, 0x397($s0)
  .L8008BC70:
    /* 7C470 8008BC70 0100B526 */  addiu      $s5, $s5, 0x1
    /* 7C474 8008BC74 0200A22A */  slti       $v0, $s5, 0x2
    /* 7C478 8008BC78 05004010 */  beqz       $v0, .L8008BC90
    /* 7C47C 8008BC7C 00000000 */   nop
    /* 7C480 8008BC80 F22E0208 */  j          .L8008BBC8
    /* 7C484 8008BC84 00000000 */   nop
  .L8008BC88:
    /* 7C488 8008BC88 960382A2 */  sb         $v0, 0x396($s4)
    /* 7C48C 8008BC8C 970380A2 */  sb         $zero, 0x397($s4)
  .L8008BC90:
    /* 7C490 8008BC90 AB038492 */  lbu        $a0, 0x3AB($s4)
    /* 7C494 8008BC94 AA038592 */  lbu        $a1, 0x3AA($s4)
    /* 7C498 8008BC98 F36D010C */  jal        func_8005B7CC
    /* 7C49C 8008BC9C 08000624 */   addiu     $a2, $zero, 0x8
    /* 7C4A0 8008BCA0 90038392 */  lbu        $v1, 0x390($s4)
    /* 7C4A4 8008BCA4 5555043C */  lui        $a0, (0x55555556 >> 16)
    /* 7C4A8 8008BCA8 AA0382A2 */  sb         $v0, 0x3AA($s4)
    /* 7C4AC 8008BCAC 0D80013C */  lui        $at, %hi(D_800CA674)
    /* 7C4B0 8008BCB0 21082300 */  addu       $at, $at, $v1
    /* 7C4B4 8008BCB4 74A62290 */  lbu        $v0, %lo(D_800CA674)($at)
    /* 7C4B8 8008BCB8 56558434 */  ori        $a0, $a0, (0x55555556 & 0xFFFF)
    /* 7C4BC 8008BCBC C0100200 */  sll        $v0, $v0, 3
    /* 7C4C0 8008BCC0 18004400 */  mult       $v0, $a0
    /* 7C4C4 8008BCC4 21208002 */  addu       $a0, $s4, $zero
    /* 7C4C8 8008BCC8 C3170200 */  sra        $v0, $v0, 31
    /* 7C4CC 8008BCCC 10400000 */  mfhi       $t0
    /* 7C4D0 8008BCD0 23100201 */  subu       $v0, $t0, $v0
    /* 7C4D4 8008BCD4 FFFF4530 */  andi       $a1, $v0, 0xFFFF
    /* 7C4D8 8008BCD8 196E010C */  jal        func_8005B864
    /* 7C4DC 8008BCDC A00382AE */   sw        $v0, 0x3A0($s4)
    /* 7C4E0 8008BCE0 21208002 */  addu       $a0, $s4, $zero
    /* 7C4E4 8008BCE4 3A55020C */  jal        func_800954E8
    /* 7C4E8 8008BCE8 A00380AC */   sw        $zero, 0x3A0($a0)
  .L8008BCEC:
    /* 7C4EC 8008BCEC 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 7C4F0 8008BCF0 3800BE8F */  lw         $fp, 0x38($sp)
    /* 7C4F4 8008BCF4 3400B78F */  lw         $s7, 0x34($sp)
    /* 7C4F8 8008BCF8 3000B68F */  lw         $s6, 0x30($sp)
    /* 7C4FC 8008BCFC 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 7C500 8008BD00 2800B48F */  lw         $s4, 0x28($sp)
    /* 7C504 8008BD04 2400B38F */  lw         $s3, 0x24($sp)
    /* 7C508 8008BD08 2000B28F */  lw         $s2, 0x20($sp)
    /* 7C50C 8008BD0C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 7C510 8008BD10 1800B08F */  lw         $s0, 0x18($sp)
    /* 7C514 8008BD14 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 7C518 8008BD18 0800E003 */  jr         $ra
    /* 7C51C 8008BD1C 00000000 */   nop
endlabel func_8008B924
