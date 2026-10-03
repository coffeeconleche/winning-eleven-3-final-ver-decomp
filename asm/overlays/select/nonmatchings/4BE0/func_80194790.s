nonmatching func_80194790, 0x2E4

glabel func_80194790
    /* B818 80194790 F8FEBD27 */  addiu      $sp, $sp, -0x108
    /* B81C 80194794 F400B1AF */  sw         $s1, 0xF4($sp)
    /* B820 80194798 21888000 */  addu       $s1, $a0, $zero
    /* B824 8019479C F800B2AF */  sw         $s2, 0xF8($sp)
    /* B828 801947A0 1D80123C */  lui        $s2, %hi(D_801D7DA8)
    /* B82C 801947A4 A87D5226 */  addiu      $s2, $s2, %lo(D_801D7DA8)
    /* B830 801947A8 21204002 */  addu       $a0, $s2, $zero
    /* B834 801947AC 21280000 */  addu       $a1, $zero, $zero
    /* B838 801947B0 21300000 */  addu       $a2, $zero, $zero
    /* B83C 801947B4 F000B0AF */  sw         $s0, 0xF0($sp)
    /* B840 801947B8 C0011024 */  addiu      $s0, $zero, 0x1C0
    /* B844 801947BC 80010224 */  addiu      $v0, $zero, 0x180
    /* B848 801947C0 0401BFAF */  sw         $ra, 0x104($sp)
    /* B84C 801947C4 0001B4AF */  sw         $s4, 0x100($sp)
    /* B850 801947C8 FC00B3AF */  sw         $s3, 0xFC($sp)
    /* B854 801947CC 000050A6 */  sh         $s0, 0x0($s2)
    /* B858 801947D0 1D80013C */  lui        $at, %hi(D_801D7DAA)
    /* B85C 801947D4 AA7D22A4 */  sh         $v0, %lo(D_801D7DAA)($at)
    /* B860 801947D8 40000224 */  addiu      $v0, $zero, 0x40
    /* B864 801947DC 1D80013C */  lui        $at, %hi(D_801D7DAC)
    /* B868 801947E0 AC7D22A4 */  sh         $v0, %lo(D_801D7DAC)($at)
    /* B86C 801947E4 20000224 */  addiu      $v0, $zero, 0x20
    /* B870 801947E8 1D80013C */  lui        $at, %hi(D_801D7DAE)
    /* B874 801947EC AE7D22A4 */  sh         $v0, %lo(D_801D7DAE)($at)
    /* B878 801947F0 AEB9020C */  jal        func_800AE6B8
    /* B87C 801947F4 21380000 */   addu      $a3, $zero, $zero
    /* B880 801947F8 4DB9020C */  jal        func_800AE534
    /* B884 801947FC 21200000 */   addu      $a0, $zero, $zero
    /* B888 80194800 21204002 */  addu       $a0, $s2, $zero
    /* B88C 80194804 21280000 */  addu       $a1, $zero, $zero
    /* B890 80194808 21300000 */  addu       $a2, $zero, $zero
    /* B894 8019480C A0010224 */  addiu      $v0, $zero, 0x1A0
    /* B898 80194810 000050A6 */  sh         $s0, 0x0($s2)
    /* B89C 80194814 1D80013C */  lui        $at, %hi(D_801D7DAA)
    /* B8A0 80194818 AA7D22A4 */  sh         $v0, %lo(D_801D7DAA)($at)
    /* B8A4 8019481C 30000224 */  addiu      $v0, $zero, 0x30
    /* B8A8 80194820 10001024 */  addiu      $s0, $zero, 0x10
    /* B8AC 80194824 1D80013C */  lui        $at, %hi(D_801D7DAC)
    /* B8B0 80194828 AC7D22A4 */  sh         $v0, %lo(D_801D7DAC)($at)
    /* B8B4 8019482C 1D80013C */  lui        $at, %hi(D_801D7DAE)
    /* B8B8 80194830 AE7D30A4 */  sh         $s0, %lo(D_801D7DAE)($at)
    /* B8BC 80194834 AEB9020C */  jal        func_800AE6B8
    /* B8C0 80194838 21380000 */   addu      $a3, $zero, $zero
    /* B8C4 8019483C 4DB9020C */  jal        func_800AE534
    /* B8C8 80194840 21200000 */   addu      $a0, $zero, $zero
    /* B8CC 80194844 03000224 */  addiu      $v0, $zero, 0x3
    /* B8D0 80194848 1D80013C */  lui        $at, %hi(D_801D7DAC)
    /* B8D4 8019484C AC7D22A4 */  sh         $v0, %lo(D_801D7DAC)($at)
    /* B8D8 80194850 1D80013C */  lui        $at, %hi(D_801D7DAE)
    /* B8DC 80194854 AE7D30A4 */  sh         $s0, %lo(D_801D7DAE)($at)
    /* B8E0 80194858 00002292 */  lbu        $v0, 0x0($s1)
    /* B8E4 8019485C 00000000 */  nop
    /* B8E8 80194860 7B004010 */  beqz       $v0, .L80194A50
    /* B8EC 80194864 21800000 */   addu      $s0, $zero, $zero
    /* B8F0 80194868 21A04002 */  addu       $s4, $s2, $zero
    /* B8F4 8019486C 9000B227 */  addiu      $s2, $sp, 0x90
    /* B8F8 80194870 1000B327 */  addiu      $s3, $sp, 0x10
    /* B8FC 80194874 3A00022A */  slti       $v0, $s0, 0x3A
  .L80194878:
    /* B900 80194878 75004010 */  beqz       $v0, .L80194A50
    /* B904 8019487C C330023C */   lui       $v0, (0x30C30C31 >> 16)
    /* B908 80194880 310C4234 */  ori        $v0, $v0, (0x30C30C31 & 0xFFFF)
    /* B90C 80194884 18000202 */  mult       $s0, $v0
    /* B910 80194888 C3171000 */  sra        $v0, $s0, 31
    /* B914 8019488C 10680000 */  mfhi       $t5
    /* B918 80194890 83200D00 */  sra        $a0, $t5, 2
    /* B91C 80194894 23208200 */  subu       $a0, $a0, $v0
    /* B920 80194898 80100400 */  sll        $v0, $a0, 2
    /* B924 8019489C 21104400 */  addu       $v0, $v0, $a0
    /* B928 801948A0 80100200 */  sll        $v0, $v0, 2
    /* B92C 801948A4 21104400 */  addu       $v0, $v0, $a0
    /* B930 801948A8 23100202 */  subu       $v0, $s0, $v0
    /* B934 801948AC 40180200 */  sll        $v1, $v0, 1
    /* B938 801948B0 21186200 */  addu       $v1, $v1, $v0
    /* B93C 801948B4 C0016324 */  addiu      $v1, $v1, 0x1C0
    /* B940 801948B8 00210400 */  sll        $a0, $a0, 4
    /* B944 801948BC 80018424 */  addiu      $a0, $a0, 0x180
    /* B948 801948C0 000083A6 */  sh         $v1, 0x0($s4)
    /* B94C 801948C4 020084A6 */  sh         $a0, 0x2($s4)
    /* B950 801948C8 00002492 */  lbu        $a0, 0x0($s1)
    /* B954 801948CC 00000000 */  nop
    /* B958 801948D0 F6FF8224 */  addiu      $v0, $a0, -0xA
    /* B95C 801948D4 0200422C */  sltiu      $v0, $v0, 0x2
    /* B960 801948D8 06004014 */  bnez       $v0, .L801948F4
    /* B964 801948DC 20000224 */   addiu     $v0, $zero, 0x20
    /* B968 801948E0 FF008430 */  andi       $a0, $a0, 0xFF
    /* B96C 801948E4 03008210 */  beq        $a0, $v0, .L801948F4
    /* B970 801948E8 5C000224 */   addiu     $v0, $zero, 0x5C
    /* B974 801948EC 03008214 */  bne        $a0, $v0, .L801948FC
    /* B978 801948F0 00000000 */   nop
  .L801948F4:
    /* B97C 801948F4 90520608 */  j          .L80194A40
    /* B980 801948F8 01003126 */   addiu     $s1, $s1, 0x1
  .L801948FC:
    /* B984 801948FC 01002292 */  lbu        $v0, 0x1($s1)
    /* B988 80194900 00220400 */  sll        $a0, $a0, 8
    /* B98C 80194904 BEB3020C */  jal        func_800ACEF8
    /* B990 80194908 25208200 */   or        $a0, $a0, $v0
    /* B994 8019490C 21184000 */  addu       $v1, $v0, $zero
    /* B998 80194910 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* B99C 80194914 0C006210 */  beq        $v1, $v0, .L80194948
    /* B9A0 80194918 21506000 */   addu      $t2, $v1, $zero
    /* B9A4 8019491C 21300000 */  addu       $a2, $zero, $zero
    /* B9A8 80194920 21184002 */  addu       $v1, $s2, $zero
  .L80194924:
    /* B9AC 80194924 00004295 */  lhu        $v0, 0x0($t2)
    /* B9B0 80194928 02004A25 */  addiu      $t2, $t2, 0x2
    /* B9B4 8019492C 0100C624 */  addiu      $a2, $a2, 0x1
    /* B9B8 80194930 000062A4 */  sh         $v0, 0x0($v1)
    /* B9BC 80194934 0F00C228 */  slti       $v0, $a2, 0xF
    /* B9C0 80194938 FAFF4014 */  bnez       $v0, .L80194924
    /* B9C4 8019493C 06006324 */   addiu     $v1, $v1, 0x6
    /* B9C8 80194940 58520608 */  j          .L80194960
    /* B9CC 80194944 EA00A0A7 */   sh        $zero, 0xEA($sp)
  .L80194948:
    /* B9D0 80194948 0F000624 */  addiu      $a2, $zero, 0xF
    /* B9D4 8019494C 5A004226 */  addiu      $v0, $s2, 0x5A
  .L80194950:
    /* B9D8 80194950 000040A4 */  sh         $zero, 0x0($v0)
    /* B9DC 80194954 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* B9E0 80194958 FDFFC104 */  bgez       $a2, .L80194950
    /* B9E4 8019495C FAFF4224 */   addiu     $v0, $v0, -0x6
  .L80194960:
    /* B9E8 80194960 21300000 */  addu       $a2, $zero, $zero
    /* B9EC 80194964 21606002 */  addu       $t4, $s3, $zero
    /* B9F0 80194968 21580000 */  addu       $t3, $zero, $zero
  .L8019496C:
    /* B9F4 8019496C 21504B02 */  addu       $t2, $s2, $t3
    /* B9F8 80194970 21280000 */  addu       $a1, $zero, $zero
    /* B9FC 80194974 21488001 */  addu       $t1, $t4, $zero
  .L80194978:
    /* BA00 80194978 21200000 */  addu       $a0, $zero, $zero
    /* BA04 8019497C 21180000 */  addu       $v1, $zero, $zero
    /* BA08 80194980 00004895 */  lhu        $t0, 0x0($t2)
    /* BA0C 80194984 C0380500 */  sll        $a3, $a1, 3
  .L80194988:
    /* BA10 80194988 2110E300 */  addu       $v0, $a3, $v1
    /* BA14 8019498C 07104800 */  srav       $v0, $t0, $v0
    /* BA18 80194990 01004230 */  andi       $v0, $v0, 0x1
    /* BA1C 80194994 02004010 */  beqz       $v0, .L801949A0
    /* BA20 80194998 00000000 */   nop
    /* BA24 8019499C 07008434 */  ori        $a0, $a0, 0x7
  .L801949A0:
    /* BA28 801949A0 01006324 */  addiu      $v1, $v1, 0x1
    /* BA2C 801949A4 08006228 */  slti       $v0, $v1, 0x8
    /* BA30 801949A8 F7FF4014 */  bnez       $v0, .L80194988
    /* BA34 801949AC C0200400 */   sll       $a0, $a0, 3
    /* BA38 801949B0 000024AD */  sw         $a0, 0x0($t1)
    /* BA3C 801949B4 0100A524 */  addiu      $a1, $a1, 0x1
    /* BA40 801949B8 0200A228 */  slti       $v0, $a1, 0x2
    /* BA44 801949BC EEFF4014 */  bnez       $v0, .L80194978
    /* BA48 801949C0 04002925 */   addiu     $t1, $t1, 0x4
    /* BA4C 801949C4 08008C25 */  addiu      $t4, $t4, 0x8
    /* BA50 801949C8 0100C624 */  addiu      $a2, $a2, 0x1
    /* BA54 801949CC 1000C228 */  slti       $v0, $a2, 0x10
    /* BA58 801949D0 E6FF4014 */  bnez       $v0, .L8019496C
    /* BA5C 801949D4 06006B25 */   addiu     $t3, $t3, 0x6
    /* BA60 801949D8 21300000 */  addu       $a2, $zero, $zero
    /* BA64 801949DC 21206002 */  addu       $a0, $s3, $zero
    /* BA68 801949E0 21284002 */  addu       $a1, $s2, $zero
  .L801949E4:
    /* BA6C 801949E4 0000828C */  lw         $v0, 0x0($a0)
    /* BA70 801949E8 0100C624 */  addiu      $a2, $a2, 0x1
    /* BA74 801949EC 0000A2A4 */  sh         $v0, 0x0($a1)
    /* BA78 801949F0 04008290 */  lbu        $v0, 0x4($a0)
    /* BA7C 801949F4 02008394 */  lhu        $v1, 0x2($a0)
    /* BA80 801949F8 00120200 */  sll        $v0, $v0, 8
    /* BA84 801949FC 25186200 */  or         $v1, $v1, $v0
    /* BA88 80194A00 0200A3A4 */  sh         $v1, 0x2($a1)
    /* BA8C 80194A04 0400828C */  lw         $v0, 0x4($a0)
    /* BA90 80194A08 08008424 */  addiu      $a0, $a0, 0x8
    /* BA94 80194A0C 02120200 */  srl        $v0, $v0, 8
    /* BA98 80194A10 0400A2A4 */  sh         $v0, 0x4($a1)
    /* BA9C 80194A14 1000C228 */  slti       $v0, $a2, 0x10
    /* BAA0 80194A18 F2FF4014 */  bnez       $v0, .L801949E4
    /* BAA4 80194A1C 0600A524 */   addiu     $a1, $a1, 0x6
    /* BAA8 80194A20 1D80043C */  lui        $a0, %hi(D_801D7DA8)
    /* BAAC 80194A24 A87D8424 */  addiu      $a0, $a0, %lo(D_801D7DA8)
    /* BAB0 80194A28 F8B9020C */  jal        func_800AE7E0
    /* BAB4 80194A2C 9000A527 */   addiu     $a1, $sp, 0x90
    /* BAB8 80194A30 4DB9020C */  jal        func_800AE534
    /* BABC 80194A34 21200000 */   addu      $a0, $zero, $zero
    /* BAC0 80194A38 02003126 */  addiu      $s1, $s1, 0x2
    /* BAC4 80194A3C 01001026 */  addiu      $s0, $s0, 0x1
  .L80194A40:
    /* BAC8 80194A40 00002292 */  lbu        $v0, 0x0($s1)
    /* BACC 80194A44 00000000 */  nop
    /* BAD0 80194A48 8BFF4014 */  bnez       $v0, .L80194878
    /* BAD4 80194A4C 3A00022A */   slti      $v0, $s0, 0x3A
  .L80194A50:
    /* BAD8 80194A50 0401BF8F */  lw         $ra, 0x104($sp)
    /* BADC 80194A54 0001B48F */  lw         $s4, 0x100($sp)
    /* BAE0 80194A58 FC00B38F */  lw         $s3, 0xFC($sp)
    /* BAE4 80194A5C F800B28F */  lw         $s2, 0xF8($sp)
    /* BAE8 80194A60 F400B18F */  lw         $s1, 0xF4($sp)
    /* BAEC 80194A64 F000B08F */  lw         $s0, 0xF0($sp)
    /* BAF0 80194A68 0801BD27 */  addiu      $sp, $sp, 0x108
    /* BAF4 80194A6C 0800E003 */  jr         $ra
    /* BAF8 80194A70 00000000 */   nop
endlabel func_80194790
