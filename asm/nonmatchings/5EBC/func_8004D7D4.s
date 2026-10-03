nonmatching func_8004D7D4, 0x244

glabel func_8004D7D4
    /* 3DFD4 8004D7D4 801F023C */  lui        $v0, (0x1F8002A9 >> 16)
    /* 3DFD8 8004D7D8 A9024290 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($v0)
    /* 3DFDC 8004D7DC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3DFE0 8004D7E0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3DFE4 8004D7E4 21888000 */  addu       $s1, $a0, $zero
    /* 3DFE8 8004D7E8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3DFEC 8004D7EC 801F133C */  lui        $s3, (0x1F8002CF >> 16)
    /* 3DFF0 8004D7F0 2000BFAF */  sw         $ra, 0x20($sp)
    /* 3DFF4 8004D7F4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3DFF8 8004D7F8 35004014 */  bnez       $v0, .L8004D8D0
    /* 3DFFC 8004D7FC 1000B0AF */   sw        $s0, 0x10($sp)
    /* 3E000 8004D800 801F043C */  lui        $a0, (0x1F8002F4 >> 16)
    /* 3E004 8004D804 F402848C */  lw         $a0, (0x1F8002F4 & 0xFFFF)($a0)
    /* 3E008 8004D808 02002286 */  lh         $v0, 0x2($s1)
    /* 3E00C 8004D80C 02008384 */  lh         $v1, 0x2($a0)
    /* 3E010 8004D810 00000000 */  nop
    /* 3E014 8004D814 23104300 */  subu       $v0, $v0, $v1
    /* 3E018 8004D818 18004200 */  mult       $v0, $v0
    /* 3E01C 8004D81C 06002286 */  lh         $v0, 0x6($s1)
    /* 3E020 8004D820 06008384 */  lh         $v1, 0x6($a0)
    /* 3E024 8004D824 12280000 */  mflo       $a1
    /* 3E028 8004D828 23104300 */  subu       $v0, $v0, $v1
    /* 3E02C 8004D82C 00000000 */  nop
    /* 3E030 8004D830 18004200 */  mult       $v0, $v0
    /* 3E034 8004D834 12180000 */  mflo       $v1
    /* 3E038 8004D838 2110A300 */  addu       $v0, $a1, $v1
    /* 3E03C 8004D83C 01404228 */  slti       $v0, $v0, 0x4001
    /* 3E040 8004D840 23004010 */  beqz       $v0, .L8004D8D0
    /* 3E044 8004D844 21202002 */   addu      $a0, $s1, $zero
    /* 3E048 8004D848 7370010C */  jal        func_8005C1CC
    /* 3E04C 8004D84C 21280000 */   addu      $a1, $zero, $zero
    /* 3E050 8004D850 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 3E054 8004D854 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 3E058 8004D858 801F033C */  lui        $v1, (0x1F8000F2 >> 16)
    /* 3E05C 8004D85C F2006384 */  lh         $v1, (0x1F8000F2 & 0xFFFF)($v1)
    /* 3E060 8004D860 04004284 */  lh         $v0, 0x4($v0)
    /* 3E064 8004D864 E0FF6324 */  addiu      $v1, $v1, -0x20
    /* 3E068 8004D868 2A104300 */  slt        $v0, $v0, $v1
    /* 3E06C 8004D86C 62004014 */  bnez       $v0, .L8004D9F8
    /* 3E070 8004D870 21100000 */   addu      $v0, $zero, $zero
    /* 3E074 8004D874 21202002 */  addu       $a0, $s1, $zero
    /* 3E078 8004D878 7370010C */  jal        func_8005C1CC
    /* 3E07C 8004D87C 08000524 */   addiu     $a1, $zero, 0x8
    /* 3E080 8004D880 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 3E084 8004D884 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 3E088 8004D888 801F033C */  lui        $v1, (0x1F8000F2 >> 16)
    /* 3E08C 8004D88C F2006384 */  lh         $v1, (0x1F8000F2 & 0xFFFF)($v1)
    /* 3E090 8004D890 04004284 */  lh         $v0, 0x4($v0)
    /* 3E094 8004D894 10006324 */  addiu      $v1, $v1, 0x10
    /* 3E098 8004D898 2A186200 */  slt        $v1, $v1, $v0
    /* 3E09C 8004D89C 0E006010 */  beqz       $v1, .L8004D8D8
    /* 3E0A0 8004D8A0 21202002 */   addu      $a0, $s1, $zero
    /* 3E0A4 8004D8A4 7370010C */  jal        func_8005C1CC
    /* 3E0A8 8004D8A8 0B000524 */   addiu     $a1, $zero, 0xB
    /* 3E0AC 8004D8AC 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 3E0B0 8004D8B0 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 3E0B4 8004D8B4 801F033C */  lui        $v1, (0x1F8000F2 >> 16)
    /* 3E0B8 8004D8B8 F2006384 */  lh         $v1, (0x1F8000F2 & 0xFFFF)($v1)
    /* 3E0BC 8004D8BC 04004284 */  lh         $v0, 0x4($v0)
    /* 3E0C0 8004D8C0 10006324 */  addiu      $v1, $v1, 0x10
    /* 3E0C4 8004D8C4 2A186200 */  slt        $v1, $v1, $v0
    /* 3E0C8 8004D8C8 03006010 */  beqz       $v1, .L8004D8D8
    /* 3E0CC 8004D8CC 21202002 */   addu      $a0, $s1, $zero
  .L8004D8D0:
    /* 3E0D0 8004D8D0 7E360108 */  j          .L8004D9F8
    /* 3E0D4 8004D8D4 21100000 */   addu      $v0, $zero, $zero
  .L8004D8D8:
    /* 3E0D8 8004D8D8 FF7F0224 */  addiu      $v0, $zero, 0x7FFF
    /* 3E0DC 8004D8DC F20260A2 */  sb         $zero, (0x1F8002F2 & 0xFFFF)($s3)
    /* 3E0E0 8004D8E0 B40262A6 */  sh         $v0, (0x1F8002B4 & 0xFFFF)($s3)
    /* 3E0E4 8004D8E4 0439010C */  jal        func_8004E410
    /* 3E0E8 8004D8E8 B80262A6 */   sh        $v0, (0x1F8002B8 & 0xFFFF)($s3)
    /* 3E0EC 8004D8EC 21804000 */  addu       $s0, $v0, $zero
    /* 3E0F0 8004D8F0 F402638E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3E0F4 8004D8F4 A4032692 */  lbu        $a2, 0x3A4($s1)
    /* 3E0F8 8004D8F8 A4036590 */  lbu        $a1, 0x3A4($v1)
    /* 3E0FC 8004D8FC A003248E */  lw         $a0, 0x3A0($s1)
    /* 3E100 8004D900 2310C500 */  subu       $v0, $a2, $a1
    /* 3E104 8004D904 FF004330 */  andi       $v1, $v0, 0xFF
    /* 3E108 8004D908 8100622C */  sltiu      $v0, $v1, 0x81
    /* 3E10C 8004D90C 04004014 */  bnez       $v0, .L8004D920
    /* 3E110 8004D910 18008300 */   mult      $a0, $v1
    /* 3E114 8004D914 2310A600 */  subu       $v0, $a1, $a2
    /* 3E118 8004D918 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E11C 8004D91C 18008200 */  mult       $a0, $v0
  .L8004D920:
    /* 3E120 8004D920 12180000 */  mflo       $v1
    /* 3E124 8004D924 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 3E128 8004D928 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 3E12C 8004D92C 19006200 */  multu      $v1, $v0
    /* 3E130 8004D930 10400000 */  mfhi       $t0
    /* 3E134 8004D934 C2910800 */  srl        $s2, $t0, 7
    /* 3E138 8004D938 FF001032 */  andi       $s0, $s0, 0xFF
    /* 3E13C 8004D93C 6A39010C */  jal        func_8004E5A8
    /* 3E140 8004D940 21200002 */   addu      $a0, $s0, $zero
    /* 3E144 8004D944 21202002 */  addu       $a0, $s1, $zero
    /* 3E148 8004D948 21280002 */  addu       $a1, $s0, $zero
    /* 3E14C 8004D94C 21304000 */  addu       $a2, $v0, $zero
    /* 3E150 8004D950 7154020C */  jal        func_800951C4
    /* 3E154 8004D954 21384002 */   addu      $a3, $s2, $zero
    /* 3E158 8004D958 21200002 */  addu       $a0, $s0, $zero
    /* 3E15C 8004D95C F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3E160 8004D960 02000324 */  addiu      $v1, $zero, 0x2
    /* 3E164 8004D964 B00343A0 */  sb         $v1, 0x3B0($v0)
    /* 3E168 8004D968 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3E16C 8004D96C 68000524 */  addiu      $a1, $zero, 0x68
    /* 3E170 8004D970 A579000C */  jal        func_8001E694
    /* 3E174 8004D974 B20343A0 */   sb        $v1, 0x3B2($v0)
    /* 3E178 8004D978 21200002 */  addu       $a0, $s0, $zero
    /* 3E17C 8004D97C 68000524 */  addiu      $a1, $zero, 0x68
    /* 3E180 8004D980 02002396 */  lhu        $v1, 0x2($s1)
    /* 3E184 8004D984 F402668E */  lw         $a2, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3E188 8004D988 21186200 */  addu       $v1, $v1, $v0
    /* 3E18C 8004D98C 6979000C */  jal        func_8001E5A4
    /* 3E190 8004D990 0200C3A4 */   sh        $v1, 0x2($a2)
    /* 3E194 8004D994 06002396 */  lhu        $v1, 0x6($s1)
    /* 3E198 8004D998 F402648E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3E19C 8004D99C 21186200 */  addu       $v1, $v1, $v0
    /* 3E1A0 8004D9A0 0B000224 */  addiu      $v0, $zero, 0xB
    /* 3E1A4 8004D9A4 060083A4 */  sh         $v1, 0x6($a0)
    /* 3E1A8 8004D9A8 21202002 */  addu       $a0, $s1, $zero
    /* 3E1AC 8004D9AC B00262AE */  sw         $v0, (0x1F8002B0 & 0xFFFF)($s3)
    /* 3E1B0 8004D9B0 1C0360A6 */  sh         $zero, (0x1F80031C & 0xFFFF)($s3)
    /* 3E1B4 8004D9B4 98032292 */  lbu        $v0, 0x398($s1)
    /* 3E1B8 8004D9B8 01000324 */  addiu      $v1, $zero, 0x1
    /* 3E1BC 8004D9BC 21106202 */  addu       $v0, $s3, $v0
    /* 3E1C0 8004D9C0 1B4B010C */  jal        func_80052C6C
    /* 3E1C4 8004D9C4 CF0243A0 */   sb        $v1, (0x1F8002CF & 0xFFFF)($v0)
    /* 3E1C8 8004D9C8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E1CC 8004D9CC 0A004014 */  bnez       $v0, .L8004D9F8
    /* 3E1D0 8004D9D0 01000224 */   addiu     $v0, $zero, 0x1
    /* 3E1D4 8004D9D4 AE79000C */  jal        func_8001E6B8
    /* 3E1D8 8004D9D8 04000424 */   addiu     $a0, $zero, 0x4
    /* 3E1DC 8004D9DC 04004224 */  addiu      $v0, $v0, 0x4
    /* 3E1E0 8004D9E0 D00322A2 */  sb         $v0, 0x3D0($s1)
    /* 3E1E4 8004D9E4 0E000224 */  addiu      $v0, $zero, 0xE
    /* 3E1E8 8004D9E8 960322A2 */  sb         $v0, 0x396($s1)
    /* 3E1EC 8004D9EC 40000224 */  addiu      $v0, $zero, 0x40
    /* 3E1F0 8004D9F0 970322A2 */  sb         $v0, 0x397($s1)
    /* 3E1F4 8004D9F4 01000224 */  addiu      $v0, $zero, 0x1
  .L8004D9F8:
    /* 3E1F8 8004D9F8 2000BF8F */  lw         $ra, 0x20($sp)
    /* 3E1FC 8004D9FC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3E200 8004DA00 1800B28F */  lw         $s2, 0x18($sp)
    /* 3E204 8004DA04 1400B18F */  lw         $s1, 0x14($sp)
    /* 3E208 8004DA08 1000B08F */  lw         $s0, 0x10($sp)
    /* 3E20C 8004DA0C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3E210 8004DA10 0800E003 */  jr         $ra
    /* 3E214 8004DA14 00000000 */   nop
endlabel func_8004D7D4
