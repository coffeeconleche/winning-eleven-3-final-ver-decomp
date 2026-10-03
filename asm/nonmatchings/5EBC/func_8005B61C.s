nonmatching func_8005B61C, 0x1B0

glabel func_8005B61C
    /* 4BE1C 8005B61C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4BE20 8005B620 2330C400 */  subu       $a2, $a2, $a0
    /* 4BE24 8005B624 2120C000 */  addu       $a0, $a2, $zero
    /* 4BE28 8005B628 2338E500 */  subu       $a3, $a3, $a1
    /* 4BE2C 8005B62C 2128E000 */  addu       $a1, $a3, $zero
    /* 4BE30 8005B630 00140700 */  sll        $v0, $a3, 16
    /* 4BE34 8005B634 031C0200 */  sra        $v1, $v0, 16
    /* 4BE38 8005B638 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 4BE3C 8005B63C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4BE40 8005B640 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4BE44 8005B644 04006014 */  bnez       $v1, .L8005B658
    /* 4BE48 8005B648 1000B0AF */   sw        $s0, 0x10($sp)
    /* 4BE4C 8005B64C 02120600 */  srl        $v0, $a2, 8
    /* 4BE50 8005B650 EC6D0108 */  j          .L8005B7B0
    /* 4BE54 8005B654 80004230 */   andi      $v0, $v0, 0x80
  .L8005B658:
    /* 4BE58 8005B658 00140600 */  sll        $v0, $a2, 16
    /* 4BE5C 8005B65C 03140200 */  sra        $v0, $v0, 16
    /* 4BE60 8005B660 05004014 */  bnez       $v0, .L8005B678
    /* 4BE64 8005B664 21900000 */   addu      $s2, $zero, $zero
    /* 4BE68 8005B668 51006018 */  blez       $v1, .L8005B7B0
    /* 4BE6C 8005B66C C0000224 */   addiu     $v0, $zero, 0xC0
    /* 4BE70 8005B670 EC6D0108 */  j          .L8005B7B0
    /* 4BE74 8005B674 40000224 */   addiu     $v0, $zero, 0x40
  .L8005B678:
    /* 4BE78 8005B678 03004104 */  bgez       $v0, .L8005B688
    /* 4BE7C 8005B67C 21880000 */   addu      $s1, $zero, $zero
    /* 4BE80 8005B680 01001124 */  addiu      $s1, $zero, 0x1
    /* 4BE84 8005B684 23200600 */  negu       $a0, $a2
  .L8005B688:
    /* 4BE88 8005B688 03006104 */  bgez       $v1, .L8005B698
    /* 4BE8C 8005B68C 00140400 */   sll       $v0, $a0, 16
    /* 4BE90 8005B690 01001224 */  addiu      $s2, $zero, 0x1
    /* 4BE94 8005B694 23280700 */  negu       $a1, $a3
  .L8005B698:
    /* 4BE98 8005B698 03140200 */  sra        $v0, $v0, 16
    /* 4BE9C 8005B69C 18004200 */  mult       $v0, $v0
    /* 4BEA0 8005B6A0 12180000 */  mflo       $v1
    /* 4BEA4 8005B6A4 00140500 */  sll        $v0, $a1, 16
    /* 4BEA8 8005B6A8 03840200 */  sra        $s0, $v0, 16
    /* 4BEAC 8005B6AC 18001002 */  mult       $s0, $s0
    /* 4BEB0 8005B6B0 12400000 */  mflo       $t0
    /* 4BEB4 8005B6B4 4AC4020C */  jal        func_800B1128
    /* 4BEB8 8005B6B8 21206800 */   addu      $a0, $v1, $t0
    /* 4BEBC 8005B6BC 21384000 */  addu       $a3, $v0, $zero
    /* 4BEC0 8005B6C0 0200E014 */  bnez       $a3, .L8005B6CC
    /* 4BEC4 8005B6C4 21480000 */   addu      $t1, $zero, $zero
    /* 4BEC8 8005B6C8 01000724 */  addiu      $a3, $zero, 0x1
  .L8005B6CC:
    /* 4BECC 8005B6CC 3F000824 */  addiu      $t0, $zero, 0x3F
    /* 4BED0 8005B6D0 3F000D24 */  addiu      $t5, $zero, 0x3F
    /* 4BED4 8005B6D4 0C800A3C */  lui        $t2, %hi(D_800C6A58)
    /* 4BED8 8005B6D8 586A4A25 */  addiu      $t2, $t2, %lo(D_800C6A58)
    /* 4BEDC 8005B6DC 02004C25 */  addiu      $t4, $t2, 0x2
    /* 4BEE0 8005B6E0 FEFF4B25 */  addiu      $t3, $t2, -0x2
    /* 4BEE4 8005B6E4 00131000 */  sll        $v0, $s0, 12
    /* 4BEE8 8005B6E8 1B004700 */  divu       $zero, $v0, $a3
    /* 4BEEC 8005B6EC 0200E014 */  bnez       $a3, .L8005B6F8
    /* 4BEF0 8005B6F0 00000000 */   nop
    /* 4BEF4 8005B6F4 0D000700 */  break      7
  .L8005B6F8:
    /* 4BEF8 8005B6F8 12380000 */  mflo       $a3
  .L8005B6FC:
    /* 4BEFC 8005B6FC FF002631 */  andi       $a2, $t1, 0xFF
    /* 4BF00 8005B700 FF000531 */  andi       $a1, $t0, 0xFF
  .L8005B704:
    /* 4BF04 8005B704 2110C500 */  addu       $v0, $a2, $a1
    /* 4BF08 8005B708 42180200 */  srl        $v1, $v0, 1
    /* 4BF0C 8005B70C FF006430 */  andi       $a0, $v1, 0xFF
    /* 4BF10 8005B710 19008010 */  beqz       $a0, .L8005B778
    /* 4BF14 8005B714 00000000 */   nop
    /* 4BF18 8005B718 17008D10 */  beq        $a0, $t5, .L8005B778
    /* 4BF1C 8005B71C 2310A600 */   subu      $v0, $a1, $a2
    /* 4BF20 8005B720 02004228 */  slti       $v0, $v0, 0x2
    /* 4BF24 8005B724 14004014 */  bnez       $v0, .L8005B778
    /* 4BF28 8005B728 40200400 */   sll       $a0, $a0, 1
    /* 4BF2C 8005B72C 21108A00 */  addu       $v0, $a0, $t2
    /* 4BF30 8005B730 00004284 */  lh         $v0, 0x0($v0)
    /* 4BF34 8005B734 00000000 */  nop
    /* 4BF38 8005B738 2B104700 */  sltu       $v0, $v0, $a3
    /* 4BF3C 8005B73C 08004010 */  beqz       $v0, .L8005B760
    /* 4BF40 8005B740 21108C00 */   addu      $v0, $a0, $t4
    /* 4BF44 8005B744 00004284 */  lh         $v0, 0x0($v0)
    /* 4BF48 8005B748 00000000 */  nop
    /* 4BF4C 8005B74C 2B104700 */  sltu       $v0, $v0, $a3
    /* 4BF50 8005B750 09004010 */  beqz       $v0, .L8005B778
    /* 4BF54 8005B754 21486000 */   addu      $t1, $v1, $zero
    /* 4BF58 8005B758 C16D0108 */  j          .L8005B704
    /* 4BF5C 8005B75C FF002631 */   andi      $a2, $t1, 0xFF
  .L8005B760:
    /* 4BF60 8005B760 21108B00 */  addu       $v0, $a0, $t3
    /* 4BF64 8005B764 00004284 */  lh         $v0, 0x0($v0)
    /* 4BF68 8005B768 00000000 */  nop
    /* 4BF6C 8005B76C 2B104700 */  sltu       $v0, $v0, $a3
    /* 4BF70 8005B770 E2FF4010 */  beqz       $v0, .L8005B6FC
    /* 4BF74 8005B774 21406000 */   addu      $t0, $v1, $zero
  .L8005B778:
    /* 4BF78 8005B778 09002012 */  beqz       $s1, .L8005B7A0
    /* 4BF7C 8005B77C 80010224 */   addiu     $v0, $zero, 0x180
    /* 4BF80 8005B780 FF006330 */  andi       $v1, $v1, 0xFF
    /* 4BF84 8005B784 23184300 */  subu       $v1, $v0, $v1
    /* 4BF88 8005B788 02006104 */  bgez       $v1, .L8005B794
    /* 4BF8C 8005B78C 21106000 */   addu      $v0, $v1, $zero
    /* 4BF90 8005B790 FF006224 */  addiu      $v0, $v1, 0xFF
  .L8005B794:
    /* 4BF94 8005B794 03120200 */  sra        $v0, $v0, 8
    /* 4BF98 8005B798 00120200 */  sll        $v0, $v0, 8
    /* 4BF9C 8005B79C 23186200 */  subu       $v1, $v1, $v0
  .L8005B7A0:
    /* 4BFA0 8005B7A0 03004012 */  beqz       $s2, .L8005B7B0
    /* 4BFA4 8005B7A4 FF006230 */   andi      $v0, $v1, 0xFF
    /* 4BFA8 8005B7A8 23180300 */  negu       $v1, $v1
    /* 4BFAC 8005B7AC FF006230 */  andi       $v0, $v1, 0xFF
  .L8005B7B0:
    /* 4BFB0 8005B7B0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 4BFB4 8005B7B4 1800B28F */  lw         $s2, 0x18($sp)
    /* 4BFB8 8005B7B8 1400B18F */  lw         $s1, 0x14($sp)
    /* 4BFBC 8005B7BC 1000B08F */  lw         $s0, 0x10($sp)
    /* 4BFC0 8005B7C0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4BFC4 8005B7C4 0800E003 */  jr         $ra
    /* 4BFC8 8005B7C8 00000000 */   nop
endlabel func_8005B61C
