nonmatching func_800BF498, 0xD4

glabel func_800BF498
    /* AFC98 800BF498 1180023C */  lui        $v0, %hi(D_8010A3CA)
    /* AFC9C 800BF49C CAA34224 */  addiu      $v0, $v0, %lo(D_8010A3CA)
    /* AFCA0 800BF4A0 00004390 */  lbu        $v1, 0x0($v0)
    /* AFCA4 800BF4A4 0F004580 */  lb         $a1, 0xF($v0)
    /* AFCA8 800BF4A8 0E004290 */  lbu        $v0, 0xE($v0)
    /* AFCAC 800BF4AC 001E0300 */  sll        $v1, $v1, 24
    /* AFCB0 800BF4B0 031E0300 */  sra        $v1, $v1, 24
    /* AFCB4 800BF4B4 00160200 */  sll        $v0, $v0, 24
    /* AFCB8 800BF4B8 03160200 */  sra        $v0, $v0, 24
    /* AFCBC 800BF4BC C4FF4224 */  addiu      $v0, $v0, -0x3C
    /* AFCC0 800BF4C0 0200A104 */  bgez       $a1, .L800BF4CC
    /* AFCC4 800BF4C4 23106200 */   subu      $v0, $v1, $v0
    /* AFCC8 800BF4C8 0700A524 */  addiu      $a1, $a1, 0x7
  .L800BF4CC:
    /* AFCCC 800BF4CC AA2A033C */  lui        $v1, (0x2AAAAAAB >> 16)
    /* AFCD0 800BF4D0 ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
    /* AFCD4 800BF4D4 00140200 */  sll        $v0, $v0, 16
    /* AFCD8 800BF4D8 03240200 */  sra        $a0, $v0, 16
    /* AFCDC 800BF4DC 18008300 */  mult       $a0, $v1
    /* AFCE0 800BF4E0 C2280500 */  srl        $a1, $a1, 3
    /* AFCE4 800BF4E4 C3170200 */  sra        $v0, $v0, 31
    /* AFCE8 800BF4E8 10380000 */  mfhi       $a3
    /* AFCEC 800BF4EC 43180700 */  sra        $v1, $a3, 1
    /* AFCF0 800BF4F0 23306200 */  subu       $a2, $v1, $v0
    /* AFCF4 800BF4F4 40100600 */  sll        $v0, $a2, 1
    /* AFCF8 800BF4F8 21104600 */  addu       $v0, $v0, $a2
    /* AFCFC 800BF4FC 80100200 */  sll        $v0, $v0, 2
    /* AFD00 800BF500 23208200 */  subu       $a0, $a0, $v0
    /* AFD04 800BF504 FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* AFD08 800BF508 1000422C */  sltiu      $v0, $v0, 0x10
    /* AFD0C 800BF50C 02004014 */  bnez       $v0, .L800BF518
    /* AFD10 800BF510 00140400 */   sll       $v0, $a0, 16
    /* AFD14 800BF514 0F000524 */  addiu      $a1, $zero, 0xF
  .L800BF518:
    /* AFD18 800BF518 03130200 */  sra        $v0, $v0, 12
    /* AFD1C 800BF51C FFFFA330 */  andi       $v1, $a1, 0xFFFF
    /* AFD20 800BF520 21104300 */  addu       $v0, $v0, $v1
    /* AFD24 800BF524 40100200 */  sll        $v0, $v0, 1
    /* AFD28 800BF528 0D80033C */  lui        $v1, %hi(D_800D4F6C)
    /* AFD2C 800BF52C 21186200 */  addu       $v1, $v1, $v0
    /* AFD30 800BF530 6C4F6394 */  lhu        $v1, %lo(D_800D4F6C)($v1)
    /* AFD34 800BF534 FBFFC224 */  addiu      $v0, $a2, -0x5
    /* AFD38 800BF538 00140200 */  sll        $v0, $v0, 16
    /* AFD3C 800BF53C 03140200 */  sra        $v0, $v0, 16
    /* AFD40 800BF540 03004018 */  blez       $v0, .L800BF550
    /* AFD44 800BF544 00000000 */   nop
    /* AFD48 800BF548 59FD0208 */  j          .L800BF564
    /* AFD4C 800BF54C 04184300 */   sllv      $v1, $v1, $v0
  .L800BF550:
    /* AFD50 800BF550 04004104 */  bgez       $v0, .L800BF564
    /* AFD54 800BF554 00000000 */   nop
    /* AFD58 800BF558 FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* AFD5C 800BF55C 23100200 */  negu       $v0, $v0
    /* AFD60 800BF560 07184300 */  srav       $v1, $v1, $v0
  .L800BF564:
    /* AFD64 800BF564 0800E003 */  jr         $ra
    /* AFD68 800BF568 FFFF6230 */   andi      $v0, $v1, 0xFFFF
endlabel func_800BF498
