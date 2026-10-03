nonmatching func_800BEC88, 0x574

glabel func_800BEC88
    /* AF488 800BEC88 B8FEBD27 */  addiu      $sp, $sp, -0x148
    /* AF48C 800BEC8C 2001B0AF */  sw         $s0, 0x120($sp)
    /* AF490 800BEC90 21808000 */  addu       $s0, $a0, $zero
    /* AF494 800BEC94 2110A000 */  addu       $v0, $a1, $zero
    /* AF498 800BEC98 2801B2AF */  sw         $s2, 0x128($sp)
    /* AF49C 800BEC9C 21900000 */  addu       $s2, $zero, $zero
    /* AF4A0 800BECA0 00240200 */  sll        $a0, $v0, 16
    /* AF4A4 800BECA4 03240400 */  sra        $a0, $a0, 16
    /* AF4A8 800BECA8 002C0600 */  sll        $a1, $a2, 16
    /* AF4AC 800BECAC 032C0500 */  sra        $a1, $a1, 16
    /* AF4B0 800BECB0 3801B6AF */  sw         $s6, 0x138($sp)
    /* AF4B4 800BECB4 21B00002 */  addu       $s6, $s0, $zero
    /* AF4B8 800BECB8 2C01B3AF */  sw         $s3, 0x12C($sp)
    /* AF4BC 800BECBC 21984000 */  addu       $s3, $v0, $zero
    /* AF4C0 800BECC0 3C01B7AF */  sw         $s7, 0x13C($sp)
    /* AF4C4 800BECC4 21B8E000 */  addu       $s7, $a3, $zero
    /* AF4C8 800BECC8 1001A6A7 */  sh         $a2, 0x110($sp)
    /* AF4CC 800BECCC FF000632 */  andi       $a2, $s0, 0xFF
    /* AF4D0 800BECD0 80300600 */  sll        $a2, $a2, 2
    /* AF4D4 800BECD4 00141000 */  sll        $v0, $s0, 16
    /* AF4D8 800BECD8 2401B1AF */  sw         $s1, 0x124($sp)
    /* AF4DC 800BECDC 038C0200 */  sra        $s1, $v0, 16
    /* AF4E0 800BECE0 00FF2332 */  andi       $v1, $s1, 0xFF00
    /* AF4E4 800BECE4 031A0300 */  sra        $v1, $v1, 8
    /* AF4E8 800BECE8 40100300 */  sll        $v0, $v1, 1
    /* AF4EC 800BECEC 21104300 */  addu       $v0, $v0, $v1
    /* AF4F0 800BECF0 80100200 */  sll        $v0, $v0, 2
    /* AF4F4 800BECF4 23104300 */  subu       $v0, $v0, $v1
    /* AF4F8 800BECF8 00110200 */  sll        $v0, $v0, 4
    /* AF4FC 800BECFC 4401BFAF */  sw         $ra, 0x144($sp)
    /* AF500 800BED00 4001BEAF */  sw         $fp, 0x140($sp)
    /* AF504 800BED04 3401B5AF */  sw         $s5, 0x134($sp)
    /* AF508 800BED08 3001B4AF */  sw         $s4, 0x130($sp)
    /* AF50C 800BED0C 1180033C */  lui        $v1, %hi(D_8010C2A8)
    /* AF510 800BED10 21186600 */  addu       $v1, $v1, $a2
    /* AF514 800BED14 A8C2638C */  lw         $v1, %lo(D_8010C2A8)($v1)
    /* AF518 800BED18 5801B497 */  lhu        $s4, 0x158($sp)
    /* AF51C 800BED1C 5C01BE97 */  lhu        $fp, 0x15C($sp)
    /* AF520 800BED20 AE02030C */  jal        func_800C0AB8
    /* AF524 800BED24 21A86200 */   addu      $s5, $v1, $v0
    /* AF528 800BED28 28014014 */  bnez       $v0, .L800BF1CC
    /* AF52C 800BED2C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* AF530 800BED30 1180043C */  lui        $a0, %hi(D_8010A3DE)
    /* AF534 800BED34 DEA38424 */  addiu      $a0, $a0, %lo(D_8010A3DE)
    /* AF538 800BED38 21000224 */  addiu      $v0, $zero, 0x21
    /* AF53C 800BED3C 000090A4 */  sh         $s0, 0x0($a0)
    /* AF540 800BED40 ECFF97A0 */  sb         $s7, -0x14($a0)
    /* AF544 800BED44 03002216 */  bne        $s1, $v0, .L800BED54
    /* AF548 800BED48 EDFF80A0 */   sb        $zero, -0x13($a0)
    /* AF54C 800BED4C 66FB0208 */  j          .L800BED98
    /* AF550 800BED50 EEFF94A0 */   sb        $s4, -0x12($a0)
  .L800BED54:
    /* AF554 800BED54 1700A292 */  lbu        $v0, 0x17($s5)
    /* AF558 800BED58 00000000 */  nop
    /* AF55C 800BED5C 40100200 */  sll        $v0, $v0, 1
    /* AF560 800BED60 21105500 */  addu       $v0, $v0, $s5
    /* AF564 800BED64 60004284 */  lh         $v0, 0x60($v0)
    /* AF568 800BED68 00000000 */  nop
    /* AF56C 800BED6C 18008202 */  mult       $s4, $v0
    /* AF570 800BED70 12100000 */  mflo       $v0
    /* AF574 800BED74 0281033C */  lui        $v1, (0x81020409 >> 16)
    /* AF578 800BED78 09046334 */  ori        $v1, $v1, (0x81020409 & 0xFFFF)
    /* AF57C 800BED7C 18004300 */  mult       $v0, $v1
    /* AF580 800BED80 10400000 */  mfhi       $t0
    /* AF584 800BED84 21180201 */  addu       $v1, $t0, $v0
    /* AF588 800BED88 83190300 */  sra        $v1, $v1, 6
    /* AF58C 800BED8C C3170200 */  sra        $v0, $v0, 31
    /* AF590 800BED90 23186200 */  subu       $v1, $v1, $v0
    /* AF594 800BED94 EEFF83A0 */  sb         $v1, -0x12($a0)
  .L800BED98:
    /* AF598 800BED98 1180103C */  lui        $s0, %hi(D_8010A3CD)
    /* AF59C 800BED9C CDA31026 */  addiu      $s0, $s0, %lo(D_8010A3CD)
    /* AF5A0 800BEDA0 00001EA2 */  sb         $fp, 0x0($s0)
    /* AF5A4 800BEDA4 1001A897 */  lhu        $t0, 0x110($sp)
    /* AF5A8 800BEDA8 0F80033C */  lui        $v1, %hi(D_800F1098)
    /* AF5AC 800BEDAC 9810638C */  lw         $v1, %lo(D_800F1098)($v1)
    /* AF5B0 800BEDB0 00140800 */  sll        $v0, $t0, 16
    /* AF5B4 800BEDB4 03340200 */  sra        $a2, $v0, 16
    /* AF5B8 800BEDB8 00110600 */  sll        $v0, $a2, 4
    /* AF5BC 800BEDBC 21104300 */  addu       $v0, $v0, $v1
    /* AF5C0 800BEDC0 01004390 */  lbu        $v1, 0x1($v0)
    /* AF5C4 800BEDC4 00000000 */  nop
    /* AF5C8 800BEDC8 050003A2 */  sb         $v1, 0x5($s0)
    /* AF5CC 800BEDCC 04004390 */  lbu        $v1, 0x4($v0)
    /* AF5D0 800BEDD0 00000000 */  nop
    /* AF5D4 800BEDD4 060003A2 */  sb         $v1, 0x6($s0)
    /* AF5D8 800BEDD8 00004290 */  lbu        $v0, 0x0($v0)
    /* AF5DC 800BEDDC 00000000 */  nop
    /* AF5E0 800BEDE0 FBFF02A2 */  sb         $v0, -0x5($s0)
    /* AF5E4 800BEDE4 0F80033C */  lui        $v1, %hi(D_800F20AC)
    /* AF5E8 800BEDE8 AC20638C */  lw         $v1, %lo(D_800F20AC)($v1)
    /* AF5EC 800BEDEC 02000282 */  lb         $v0, 0x2($s0)
    /* AF5F0 800BEDF0 12006394 */  lhu        $v1, 0x12($v1)
    /* AF5F4 800BEDF4 00000000 */  nop
    /* AF5F8 800BEDF8 2A104300 */  slt        $v0, $v0, $v1
    /* AF5FC 800BEDFC F3004010 */  beqz       $v0, .L800BF1CC
    /* AF600 800BEE00 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* AF604 800BEE04 09008016 */  bnez       $s4, .L800BEE2C
    /* AF608 800BEE08 9000A427 */   addiu     $a0, $sp, 0x90
    /* AF60C 800BEE0C 00241600 */  sll        $a0, $s6, 16
    /* AF610 800BEE10 03240400 */  sra        $a0, $a0, 16
    /* AF614 800BEE14 002C1300 */  sll        $a1, $s3, 16
    /* AF618 800BEE18 032C0500 */  sra        $a1, $a1, 16
    /* AF61C 800BEE1C 7FFC020C */  jal        func_800BF1FC
    /* AF620 800BEE20 FFFFE732 */   andi      $a3, $s7, 0xFFFF
    /* AF624 800BEE24 72FC0208 */  j          .L800BF1C8
    /* AF628 800BEE28 21904000 */   addu      $s2, $v0, $zero
  .L800BEE2C:
    /* AF62C 800BEE2C 7A02030C */  jal        func_800C09E8
    /* AF630 800BEE30 1000A527 */   addiu     $a1, $sp, 0x10
    /* AF634 800BEE34 21984000 */  addu       $s3, $v0, $zero
    /* AF638 800BEE38 FF006232 */  andi       $v0, $s3, 0xFF
    /* AF63C 800BEE3C E2004010 */  beqz       $v0, .L800BF1C8
    /* AF640 800BEE40 21880000 */   addu      $s1, $zero, $zero
    /* AF644 800BEE44 13001026 */  addiu      $s0, $s0, 0x13
    /* AF648 800BEE48 00141600 */  sll        $v0, $s6, 16
    /* AF64C 800BEE4C 03140200 */  sra        $v0, $v0, 16
    /* AF650 800BEE50 1801A2AF */  sw         $v0, 0x118($sp)
    /* AF654 800BEE54 FF002332 */  andi       $v1, $s1, 0xFF
  .L800BEE58:
    /* AF658 800BEE58 2110A303 */  addu       $v0, $sp, $v1
    /* AF65C 800BEE5C 10004290 */  lbu        $v0, 0x10($v0)
    /* AF660 800BEE60 00000000 */  nop
    /* AF664 800BEE64 000002A6 */  sh         $v0, 0x0($s0)
    /* AF668 800BEE68 2110A303 */  addu       $v0, $sp, $v1
    /* AF66C 800BEE6C 90004490 */  lbu        $a0, 0x90($v0)
    /* AF670 800BEE70 EFFF0282 */  lb         $v0, -0x11($s0)
    /* AF674 800BEE74 001E0400 */  sll        $v1, $a0, 24
    /* AF678 800BEE78 031E0300 */  sra        $v1, $v1, 24
    /* AF67C 800BEE7C 00110200 */  sll        $v0, $v0, 4
    /* AF680 800BEE80 21186200 */  addu       $v1, $v1, $v0
    /* AF684 800BEE84 FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* AF688 800BEE88 F4FF04A2 */  sb         $a0, -0xC($s0)
    /* AF68C 800BEE8C 0F80023C */  lui        $v0, %hi(D_800F20B0)
    /* AF690 800BEE90 B020428C */  lw         $v0, %lo(D_800F20B0)($v0)
    /* AF694 800BEE94 40190300 */  sll        $v1, $v1, 5
    /* AF698 800BEE98 21186200 */  addu       $v1, $v1, $v0
    /* AF69C 800BEE9C 00006290 */  lbu        $v0, 0x0($v1)
    /* AF6A0 800BEEA0 00000000 */  nop
    /* AF6A4 800BEEA4 F7FF02A2 */  sb         $v0, -0x9($s0)
    /* AF6A8 800BEEA8 02006290 */  lbu        $v0, 0x2($v1)
    /* AF6AC 800BEEAC 00000000 */  nop
    /* AF6B0 800BEEB0 F5FF02A2 */  sb         $v0, -0xB($s0)
    /* AF6B4 800BEEB4 03006290 */  lbu        $v0, 0x3($v1)
    /* AF6B8 800BEEB8 00000000 */  nop
    /* AF6BC 800BEEBC F6FF02A2 */  sb         $v0, -0xA($s0)
    /* AF6C0 800BEEC0 04006290 */  lbu        $v0, 0x4($v1)
    /* AF6C4 800BEEC4 00000000 */  nop
    /* AF6C8 800BEEC8 F8FF02A2 */  sb         $v0, -0x8($s0)
    /* AF6CC 800BEECC 05006290 */  lbu        $v0, 0x5($v1)
    /* AF6D0 800BEED0 00000000 */  nop
    /* AF6D4 800BEED4 F9FF02A2 */  sb         $v0, -0x7($s0)
    /* AF6D8 800BEED8 01006290 */  lbu        $v0, 0x1($v1)
    /* AF6DC 800BEEDC 00000000 */  nop
    /* AF6E0 800BEEE0 FCFF02A2 */  sb         $v0, -0x4($s0)
    /* AF6E4 800BEEE4 06006290 */  lbu        $v0, 0x6($v1)
    /* AF6E8 800BEEE8 00000000 */  nop
    /* AF6EC 800BEEEC FAFF02A2 */  sb         $v0, -0x6($s0)
    /* AF6F0 800BEEF0 07006290 */  lbu        $v0, 0x7($v1)
    /* AF6F4 800BEEF4 21200000 */  addu       $a0, $zero, $zero
    /* AF6F8 800BEEF8 0AF8020C */  jal        func_800BE028
    /* AF6FC 800BEEFC FBFF02A2 */   sb        $v0, -0x5($s0)
    /* AF700 800BEF00 FF004230 */  andi       $v0, $v0, 0xFF
    /* AF704 800BEF04 1080033C */  lui        $v1, %hi(D_800FB578)
    /* AF708 800BEF08 78B56380 */  lb         $v1, %lo(D_800FB578)($v1)
    /* AF70C 800BEF0C 21204000 */  addu       $a0, $v0, $zero
    /* AF710 800BEF10 2A188300 */  slt        $v1, $a0, $v1
    /* AF714 800BEF14 A5006010 */  beqz       $v1, .L800BF1AC
    /* AF718 800BEF18 020002A6 */   sh        $v0, 0x2($s0)
    /* AF71C 800BEF1C C0100400 */  sll        $v0, $a0, 3
    /* AF720 800BEF20 23104400 */  subu       $v0, $v0, $a0
    /* AF724 800BEF24 80100200 */  sll        $v0, $v0, 2
    /* AF728 800BEF28 23104400 */  subu       $v0, $v0, $a0
    /* AF72C 800BEF2C 40100200 */  sll        $v0, $v0, 1
    /* AF730 800BEF30 01000324 */  addiu      $v1, $zero, 0x1
    /* AF734 800BEF34 0E80013C */  lui        $at, %hi(D_800E78F5)
    /* AF738 800BEF38 21082200 */  addu       $at, $at, $v0
    /* AF73C 800BEF3C F57823A0 */  sb         $v1, %lo(D_800E78F5)($at)
    /* AF740 800BEF40 02000386 */  lh         $v1, 0x2($s0)
    /* AF744 800BEF44 00000000 */  nop
    /* AF748 800BEF48 C0100300 */  sll        $v0, $v1, 3
    /* AF74C 800BEF4C 23104300 */  subu       $v0, $v0, $v1
    /* AF750 800BEF50 80100200 */  sll        $v0, $v0, 2
    /* AF754 800BEF54 23104300 */  subu       $v0, $v0, $v1
    /* AF758 800BEF58 40100200 */  sll        $v0, $v0, 1
    /* AF75C 800BEF5C 0E80013C */  lui        $at, %hi(D_800E78DA)
    /* AF760 800BEF60 21082200 */  addu       $at, $at, $v0
    /* AF764 800BEF64 DA7820A4 */  sh         $zero, %lo(D_800E78DA)($at)
    /* AF768 800BEF68 02000386 */  lh         $v1, 0x2($s0)
    /* AF76C 800BEF6C 00000000 */  nop
    /* AF770 800BEF70 C0100300 */  sll        $v0, $v1, 3
    /* AF774 800BEF74 23104300 */  subu       $v0, $v0, $v1
    /* AF778 800BEF78 80100200 */  sll        $v0, $v0, 2
    /* AF77C 800BEF7C 23104300 */  subu       $v0, $v0, $v1
    /* AF780 800BEF80 40100200 */  sll        $v0, $v0, 1
    /* AF784 800BEF84 0E80013C */  lui        $at, %hi(D_800E78E8)
    /* AF788 800BEF88 21082200 */  addu       $at, $at, $v0
    /* AF78C 800BEF8C E87836A4 */  sh         $s6, %lo(D_800E78E8)($at)
    /* AF790 800BEF90 E9FF0492 */  lbu        $a0, -0x17($s0)
    /* AF794 800BEF94 02000386 */  lh         $v1, 0x2($s0)
    /* AF798 800BEF98 00260400 */  sll        $a0, $a0, 24
    /* AF79C 800BEF9C 03260400 */  sra        $a0, $a0, 24
    /* AF7A0 800BEFA0 C0100300 */  sll        $v0, $v1, 3
    /* AF7A4 800BEFA4 23104300 */  subu       $v0, $v0, $v1
    /* AF7A8 800BEFA8 80100200 */  sll        $v0, $v0, 2
    /* AF7AC 800BEFAC 23104300 */  subu       $v0, $v0, $v1
    /* AF7B0 800BEFB0 40100200 */  sll        $v0, $v0, 1
    /* AF7B4 800BEFB4 0E80013C */  lui        $at, %hi(D_800E78F0)
    /* AF7B8 800BEFB8 21082200 */  addu       $at, $at, $v0
    /* AF7BC 800BEFBC F07824A4 */  sh         $a0, %lo(D_800E78F0)($at)
    /* AF7C0 800BEFC0 EFFF0492 */  lbu        $a0, -0x11($s0)
    /* AF7C4 800BEFC4 02000386 */  lh         $v1, 0x2($s0)
    /* AF7C8 800BEFC8 00260400 */  sll        $a0, $a0, 24
    /* AF7CC 800BEFCC 03260400 */  sra        $a0, $a0, 24
    /* AF7D0 800BEFD0 C0100300 */  sll        $v0, $v1, 3
    /* AF7D4 800BEFD4 23104300 */  subu       $v0, $v0, $v1
    /* AF7D8 800BEFD8 80100200 */  sll        $v0, $v0, 2
    /* AF7DC 800BEFDC 23104300 */  subu       $v0, $v0, $v1
    /* AF7E0 800BEFE0 40100200 */  sll        $v0, $v0, 1
    /* AF7E4 800BEFE4 0E80013C */  lui        $at, %hi(D_800E78EA)
    /* AF7E8 800BEFE8 21082200 */  addu       $at, $at, $v0
    /* AF7EC 800BEFEC EA7824A4 */  sh         $a0, %lo(D_800E78EA)($at)
    /* AF7F0 800BEFF0 02000386 */  lh         $v1, 0x2($s0)
    /* AF7F4 800BEFF4 1001A897 */  lhu        $t0, 0x110($sp)
    /* AF7F8 800BEFF8 C0100300 */  sll        $v0, $v1, 3
    /* AF7FC 800BEFFC 23104300 */  subu       $v0, $v0, $v1
    /* AF800 800BF000 80100200 */  sll        $v0, $v0, 2
    /* AF804 800BF004 23104300 */  subu       $v0, $v0, $v1
    /* AF808 800BF008 40100200 */  sll        $v0, $v0, 1
    /* AF80C 800BF00C 0E80013C */  lui        $at, %hi(D_800E78EC)
    /* AF810 800BF010 21082200 */  addu       $at, $at, $v0
    /* AF814 800BF014 EC7828A4 */  sh         $t0, %lo(D_800E78EC)($at)
    /* AF818 800BF018 1801A88F */  lw         $t0, 0x118($sp)
    /* AF81C 800BF01C 21000224 */  addiu      $v0, $zero, 0x21
    /* AF820 800BF020 16000211 */  beq        $t0, $v0, .L800BF07C
    /* AF824 800BF024 00000000 */   nop
    /* AF828 800BF028 02000386 */  lh         $v1, 0x2($s0)
    /* AF82C 800BF02C 00000000 */  nop
    /* AF830 800BF030 C0100300 */  sll        $v0, $v1, 3
    /* AF834 800BF034 23104300 */  subu       $v0, $v0, $v1
    /* AF838 800BF038 80100200 */  sll        $v0, $v0, 2
    /* AF83C 800BF03C 23104300 */  subu       $v0, $v0, $v1
    /* AF840 800BF040 40100200 */  sll        $v0, $v0, 1
    /* AF844 800BF044 0E80013C */  lui        $at, %hi(D_800E78E0)
    /* AF848 800BF048 21082200 */  addu       $at, $at, $v0
    /* AF84C 800BF04C E07834A4 */  sh         $s4, %lo(D_800E78E0)($at)
    /* AF850 800BF050 02000386 */  lh         $v1, 0x2($s0)
    /* AF854 800BF054 00000000 */  nop
    /* AF858 800BF058 C0100300 */  sll        $v0, $v1, 3
    /* AF85C 800BF05C 23104300 */  subu       $v0, $v0, $v1
    /* AF860 800BF060 80100200 */  sll        $v0, $v0, 2
    /* AF864 800BF064 23104300 */  subu       $v0, $v0, $v1
    /* AF868 800BF068 1700A392 */  lbu        $v1, 0x17($s5)
    /* AF86C 800BF06C 40100200 */  sll        $v0, $v0, 1
    /* AF870 800BF070 0E80013C */  lui        $at, %hi(D_800E78E4)
    /* AF874 800BF074 21082200 */  addu       $at, $at, $v0
    /* AF878 800BF078 E47823A4 */  sh         $v1, %lo(D_800E78E4)($at)
  .L800BF07C:
    /* AF87C 800BF07C 02000386 */  lh         $v1, 0x2($s0)
    /* AF880 800BF080 00000000 */  nop
    /* AF884 800BF084 C0100300 */  sll        $v0, $v1, 3
    /* AF888 800BF088 23104300 */  subu       $v0, $v0, $v1
    /* AF88C 800BF08C 80100200 */  sll        $v0, $v0, 2
    /* AF890 800BF090 23104300 */  subu       $v0, $v0, $v1
    /* AF894 800BF094 40100200 */  sll        $v0, $v0, 1
    /* AF898 800BF098 0E80013C */  lui        $at, %hi(D_800E78E2)
    /* AF89C 800BF09C 21082200 */  addu       $at, $at, $v0
    /* AF8A0 800BF0A0 E2783EA0 */  sb         $fp, %lo(D_800E78E2)($at)
    /* AF8A4 800BF0A4 F4FF0492 */  lbu        $a0, -0xC($s0)
    /* AF8A8 800BF0A8 02000386 */  lh         $v1, 0x2($s0)
    /* AF8AC 800BF0AC 00260400 */  sll        $a0, $a0, 24
    /* AF8B0 800BF0B0 03260400 */  sra        $a0, $a0, 24
    /* AF8B4 800BF0B4 C0100300 */  sll        $v0, $v1, 3
    /* AF8B8 800BF0B8 23104300 */  subu       $v0, $v0, $v1
    /* AF8BC 800BF0BC 80100200 */  sll        $v0, $v0, 2
    /* AF8C0 800BF0C0 23104300 */  subu       $v0, $v0, $v1
    /* AF8C4 800BF0C4 40100200 */  sll        $v0, $v0, 1
    /* AF8C8 800BF0C8 0E80013C */  lui        $at, %hi(D_800E78EE)
    /* AF8CC 800BF0CC 21082200 */  addu       $at, $at, $v0
    /* AF8D0 800BF0D0 EE7824A4 */  sh         $a0, %lo(D_800E78EE)($at)
    /* AF8D4 800BF0D4 02000386 */  lh         $v1, 0x2($s0)
    /* AF8D8 800BF0D8 00000000 */  nop
    /* AF8DC 800BF0DC C0100300 */  sll        $v0, $v1, 3
    /* AF8E0 800BF0E0 23104300 */  subu       $v0, $v0, $v1
    /* AF8E4 800BF0E4 80100200 */  sll        $v0, $v0, 2
    /* AF8E8 800BF0E8 23104300 */  subu       $v0, $v0, $v1
    /* AF8EC 800BF0EC 40100200 */  sll        $v0, $v0, 1
    /* AF8F0 800BF0F0 0E80013C */  lui        $at, %hi(D_800E78E6)
    /* AF8F4 800BF0F4 21082200 */  addu       $at, $at, $v0
    /* AF8F8 800BF0F8 E67837A4 */  sh         $s7, %lo(D_800E78E6)($at)
    /* AF8FC 800BF0FC F7FF0492 */  lbu        $a0, -0x9($s0)
    /* AF900 800BF100 02000386 */  lh         $v1, 0x2($s0)
    /* AF904 800BF104 00260400 */  sll        $a0, $a0, 24
    /* AF908 800BF108 03260400 */  sra        $a0, $a0, 24
    /* AF90C 800BF10C C0100300 */  sll        $v0, $v1, 3
    /* AF910 800BF110 23104300 */  subu       $v0, $v0, $v1
    /* AF914 800BF114 80100200 */  sll        $v0, $v0, 2
    /* AF918 800BF118 23104300 */  subu       $v0, $v0, $v1
    /* AF91C 800BF11C 40100200 */  sll        $v0, $v0, 1
    /* AF920 800BF120 0E80013C */  lui        $at, %hi(D_800E78F2)
    /* AF924 800BF124 21082200 */  addu       $at, $at, $v0
    /* AF928 800BF128 F27824A4 */  sh         $a0, %lo(D_800E78F2)($at)
    /* AF92C 800BF12C 02000386 */  lh         $v1, 0x2($s0)
    /* AF930 800BF130 00000000 */  nop
    /* AF934 800BF134 C0100300 */  sll        $v0, $v1, 3
    /* AF938 800BF138 23104300 */  subu       $v0, $v0, $v1
    /* AF93C 800BF13C 80100200 */  sll        $v0, $v0, 2
    /* AF940 800BF140 23104300 */  subu       $v0, $v0, $v1
    /* AF944 800BF144 00000396 */  lhu        $v1, 0x0($s0)
    /* AF948 800BF148 40100200 */  sll        $v0, $v0, 1
    /* AF94C 800BF14C 0E80013C */  lui        $at, %hi(D_800E78D8)
    /* AF950 800BF150 21082200 */  addu       $at, $at, $v0
    /* AF954 800BF154 AEF8020C */  jal        func_800BE2B8
    /* AF958 800BF158 D87823A4 */   sh        $v1, %lo(D_800E78D8)($at)
    /* AF95C 800BF15C 00000386 */  lh         $v1, 0x0($s0)
    /* AF960 800BF160 FF000224 */  addiu      $v0, $zero, 0xFF
    /* AF964 800BF164 06006214 */  bne        $v1, $v0, .L800BF180
    /* AF968 800BF168 00000000 */   nop
    /* AF96C 800BF16C 02000492 */  lbu        $a0, 0x2($s0)
    /* AF970 800BF170 D6FD020C */  jal        func_800BF758
    /* AF974 800BF174 00000000 */   nop
    /* AF978 800BF178 65FC0208 */  j          .L800BF194
    /* AF97C 800BF17C 00000000 */   nop
  .L800BF180:
    /* AF980 800BF180 26FD020C */  jal        func_800BF498
    /* AF984 800BF184 00000000 */   nop
    /* AF988 800BF188 FF006432 */  andi       $a0, $s3, 0xFF
    /* AF98C 800BF18C 7AFF020C */  jal        func_800BFDE8
    /* AF990 800BF190 FFFF4530 */   andi      $a1, $v0, 0xFFFF
  .L800BF194:
    /* AF994 800BF194 1180033C */  lui        $v1, %hi(D_8010A3E2)
    /* AF998 800BF198 E2A36384 */  lh         $v1, %lo(D_8010A3E2)($v1)
    /* AF99C 800BF19C 01000224 */  addiu      $v0, $zero, 0x1
    /* AF9A0 800BF1A0 04106200 */  sllv       $v0, $v0, $v1
    /* AF9A4 800BF1A4 6CFC0208 */  j          .L800BF1B0
    /* AF9A8 800BF1A8 25904202 */   or        $s2, $s2, $v0
  .L800BF1AC:
    /* AF9AC 800BF1AC FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800BF1B0:
    /* AF9B0 800BF1B0 01003126 */  addiu      $s1, $s1, 0x1
    /* AF9B4 800BF1B4 FF002232 */  andi       $v0, $s1, 0xFF
    /* AF9B8 800BF1B8 FF006332 */  andi       $v1, $s3, 0xFF
    /* AF9BC 800BF1BC 2B104300 */  sltu       $v0, $v0, $v1
    /* AF9C0 800BF1C0 25FF4014 */  bnez       $v0, .L800BEE58
    /* AF9C4 800BF1C4 FF002332 */   andi      $v1, $s1, 0xFF
  .L800BF1C8:
    /* AF9C8 800BF1C8 21104002 */  addu       $v0, $s2, $zero
  .L800BF1CC:
    /* AF9CC 800BF1CC 4401BF8F */  lw         $ra, 0x144($sp)
    /* AF9D0 800BF1D0 4001BE8F */  lw         $fp, 0x140($sp)
    /* AF9D4 800BF1D4 3C01B78F */  lw         $s7, 0x13C($sp)
    /* AF9D8 800BF1D8 3801B68F */  lw         $s6, 0x138($sp)
    /* AF9DC 800BF1DC 3401B58F */  lw         $s5, 0x134($sp)
    /* AF9E0 800BF1E0 3001B48F */  lw         $s4, 0x130($sp)
    /* AF9E4 800BF1E4 2C01B38F */  lw         $s3, 0x12C($sp)
    /* AF9E8 800BF1E8 2801B28F */  lw         $s2, 0x128($sp)
    /* AF9EC 800BF1EC 2401B18F */  lw         $s1, 0x124($sp)
    /* AF9F0 800BF1F0 2001B08F */  lw         $s0, 0x120($sp)
    /* AF9F4 800BF1F4 0800E003 */  jr         $ra
    /* AF9F8 800BF1F8 4801BD27 */   addiu     $sp, $sp, 0x148
endlabel func_800BEC88
