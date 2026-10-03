nonmatching func_8009D670, 0x1AC

glabel func_8009D670
    /* 8DE70 8009D670 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8DE74 8009D674 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8DE78 8009D678 21808000 */  addu       $s0, $a0, $zero
    /* 8DE7C 8009D67C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8DE80 8009D680 1175020C */  jal        func_8009D444
    /* 8DE84 8009D684 1400B1AF */   sw        $s1, 0x14($sp)
    /* 8DE88 8009D688 FF004230 */  andi       $v0, $v0, 0xFF
    /* 8DE8C 8009D68C 5D004014 */  bnez       $v0, .L8009D804
    /* 8DE90 8009D690 801F113C */   lui       $s1, (0x1F8000FC >> 16)
    /* 8DE94 8009D694 801F033C */  lui        $v1, (0x1F800006 >> 16)
    /* 8DE98 8009D698 06006390 */  lbu        $v1, (0x1F800006 & 0xFFFF)($v1)
    /* 8DE9C 8009D69C 8D030292 */  lbu        $v0, 0x38D($s0)
    /* 8DEA0 8009D6A0 00000000 */  nop
    /* 8DEA4 8009D6A4 03006210 */  beq        $v1, $v0, .L8009D6B4
    /* 8DEA8 8009D6A8 00000000 */   nop
    /* 8DEAC 8009D6AC E20300A2 */  sb         $zero, 0x3E2($s0)
    /* 8DEB0 8009D6B0 E30300A2 */  sb         $zero, 0x3E3($s0)
  .L8009D6B4:
    /* 8DEB4 8009D6B4 8D030592 */  lbu        $a1, 0x38D($s0)
    /* 8DEB8 8009D6B8 2EBA023C */  lui        $v0, (0xBA2E8BA3 >> 16)
    /* 8DEBC 8009D6BC A38B4234 */  ori        $v0, $v0, (0xBA2E8BA3 & 0xFFFF)
    /* 8DEC0 8009D6C0 1900A200 */  multu      $a1, $v0
    /* 8DEC4 8009D6C4 801F043C */  lui        $a0, (0x1F800290 >> 16)
    /* 8DEC8 8009D6C8 9002848C */  lw         $a0, (0x1F800290 & 0xFFFF)($a0)
    /* 8DECC 8009D6CC 10180000 */  mfhi       $v1
    /* 8DED0 8009D6D0 8B2E023C */  lui        $v0, (0x2E8BA2E9 >> 16)
    /* 8DED4 8009D6D4 E9A24234 */  ori        $v0, $v0, (0x2E8BA2E9 & 0xFFFF)
    /* 8DED8 8009D6D8 18008200 */  mult       $a0, $v0
    /* 8DEDC 8009D6DC 02190300 */  srl        $v1, $v1, 4
    /* 8DEE0 8009D6E0 40100300 */  sll        $v0, $v1, 1
    /* 8DEE4 8009D6E4 21104300 */  addu       $v0, $v0, $v1
    /* 8DEE8 8009D6E8 80100200 */  sll        $v0, $v0, 2
    /* 8DEEC 8009D6EC 23104300 */  subu       $v0, $v0, $v1
    /* 8DEF0 8009D6F0 40100200 */  sll        $v0, $v0, 1
    /* 8DEF4 8009D6F4 2328A200 */  subu       $a1, $a1, $v0
    /* 8DEF8 8009D6F8 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 8DEFC 8009D6FC C3170400 */  sra        $v0, $a0, 31
    /* 8DF00 8009D700 10300000 */  mfhi       $a2
    /* 8DF04 8009D704 83180600 */  sra        $v1, $a2, 2
    /* 8DF08 8009D708 23186200 */  subu       $v1, $v1, $v0
    /* 8DF0C 8009D70C 40100300 */  sll        $v0, $v1, 1
    /* 8DF10 8009D710 21104300 */  addu       $v0, $v0, $v1
    /* 8DF14 8009D714 80100200 */  sll        $v0, $v0, 2
    /* 8DF18 8009D718 23104300 */  subu       $v0, $v0, $v1
    /* 8DF1C 8009D71C 40100200 */  sll        $v0, $v0, 1
    /* 8DF20 8009D720 23208200 */  subu       $a0, $a0, $v0
    /* 8DF24 8009D724 3100A414 */  bne        $a1, $a0, .L8009D7EC
    /* 8DF28 8009D728 00000000 */   nop
    /* 8DF2C 8009D72C 99030392 */  lbu        $v1, 0x399($s0)
    /* 8DF30 8009D730 00000000 */  nop
    /* 8DF34 8009D734 09006014 */  bnez       $v1, .L8009D75C
    /* 8DF38 8009D738 01000224 */   addiu     $v0, $zero, 0x1
    /* 8DF3C 8009D73C 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 8DF40 8009D740 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 8DF44 8009D744 00000000 */  nop
    /* 8DF48 8009D748 02004284 */  lh         $v0, 0x2($v0)
    /* 8DF4C 8009D74C 00000000 */  nop
    /* 8DF50 8009D750 0B00401C */  bgtz       $v0, .L8009D780
    /* 8DF54 8009D754 21200002 */   addu      $a0, $s0, $zero
    /* 8DF58 8009D758 01000224 */  addiu      $v0, $zero, 0x1
  .L8009D75C:
    /* 8DF5C 8009D75C 14006214 */  bne        $v1, $v0, .L8009D7B0
    /* 8DF60 8009D760 00000000 */   nop
    /* 8DF64 8009D764 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 8DF68 8009D768 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 8DF6C 8009D76C 00000000 */  nop
    /* 8DF70 8009D770 02004284 */  lh         $v0, 0x2($v0)
    /* 8DF74 8009D774 00000000 */  nop
    /* 8DF78 8009D778 0D004104 */  bgez       $v0, .L8009D7B0
    /* 8DF7C 8009D77C 21200002 */   addu      $a0, $s0, $zero
  .L8009D780:
    /* 8DF80 8009D780 017E020C */  jal        func_8009F804
    /* 8DF84 8009D784 21280000 */   addu      $a1, $zero, $zero
    /* 8DF88 8009D788 21200002 */  addu       $a0, $s0, $zero
    /* 8DF8C 8009D78C F8002596 */  lhu        $a1, (0x1F8000F8 & 0xFFFF)($s1)
    /* 8DF90 8009D790 FC002696 */  lhu        $a2, (0x1F8000FC & 0xFFFF)($s1)
    /* 8DF94 8009D794 002C0500 */  sll        $a1, $a1, 16
    /* 8DF98 8009D798 032C0500 */  sra        $a1, $a1, 16
    /* 8DF9C 8009D79C 00340600 */  sll        $a2, $a2, 16
    /* 8DFA0 8009D7A0 25A4010C */  jal        func_80069094
    /* 8DFA4 8009D7A4 03340600 */   sra       $a2, $a2, 16
    /* 8DFA8 8009D7A8 F6750208 */  j          .L8009D7D8
    /* 8DFAC 8009D7AC 00000000 */   nop
  .L8009D7B0:
    /* 8DFB0 8009D7B0 DA7B020C */  jal        func_8009EF68
    /* 8DFB4 8009D7B4 21200002 */   addu      $a0, $s0, $zero
    /* 8DFB8 8009D7B8 21200002 */  addu       $a0, $s0, $zero
    /* 8DFBC 8009D7BC F8002596 */  lhu        $a1, (0x1F8000F8 & 0xFFFF)($s1)
    /* 8DFC0 8009D7C0 FC002696 */  lhu        $a2, (0x1F8000FC & 0xFFFF)($s1)
    /* 8DFC4 8009D7C4 002C0500 */  sll        $a1, $a1, 16
    /* 8DFC8 8009D7C8 032C0500 */  sra        $a1, $a1, 16
    /* 8DFCC 8009D7CC 00340600 */  sll        $a2, $a2, 16
    /* 8DFD0 8009D7D0 F0A3010C */  jal        func_80068FC0
    /* 8DFD4 8009D7D4 03340600 */   sra       $a2, $a2, 16
  .L8009D7D8:
    /* 8DFD8 8009D7D8 D4030396 */  lhu        $v1, 0x3D4($s0)
    /* 8DFDC 8009D7DC 01000224 */  addiu      $v0, $zero, 0x1
    /* 8DFE0 8009D7E0 9C0302A2 */  sb         $v0, 0x39C($s0)
    /* 8DFE4 8009D7E4 FD750208 */  j          .L8009D7F4
    /* 8DFE8 8009D7E8 D80303A6 */   sh        $v1, 0x3D8($s0)
  .L8009D7EC:
    /* 8DFEC 8009D7EC D60300A6 */  sh         $zero, 0x3D6($s0)
    /* 8DFF0 8009D7F0 9C0300A2 */  sb         $zero, 0x39C($s0)
  .L8009D7F4:
    /* 8DFF4 8009D7F4 D4030296 */  lhu        $v0, 0x3D4($s0)
    /* 8DFF8 8009D7F8 00000000 */  nop
    /* 8DFFC 8009D7FC 02130200 */  srl        $v0, $v0, 12
    /* 8E000 8009D800 8C0222A2 */  sb         $v0, (0x1F80028C & 0xFFFF)($s1)
  .L8009D804:
    /* 8E004 8009D804 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8E008 8009D808 1400B18F */  lw         $s1, 0x14($sp)
    /* 8E00C 8009D80C 1000B08F */  lw         $s0, 0x10($sp)
    /* 8E010 8009D810 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8E014 8009D814 0800E003 */  jr         $ra
    /* 8E018 8009D818 00000000 */   nop
endlabel func_8009D670
