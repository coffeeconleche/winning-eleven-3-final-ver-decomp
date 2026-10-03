nonmatching func_8007A774, 0x4FC

glabel func_8007A774
    /* 6AF74 8007A774 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 6AF78 8007A778 801F043C */  lui        $a0, (0x1F8002F4 >> 16)
    /* 6AF7C 8007A77C F402848C */  lw         $a0, (0x1F8002F4 & 0xFFFF)($a0)
    /* 6AF80 8007A780 801F033C */  lui        $v1, (0x1F8002BC >> 16)
    /* 6AF84 8007A784 BC026394 */  lhu        $v1, (0x1F8002BC & 0xFFFF)($v1)
    /* 6AF88 8007A788 01000224 */  addiu      $v0, $zero, 0x1
    /* 6AF8C 8007A78C 2800BFAF */  sw         $ra, 0x28($sp)
    /* 6AF90 8007A790 2400B5AF */  sw         $s5, 0x24($sp)
    /* 6AF94 8007A794 2000B4AF */  sw         $s4, 0x20($sp)
    /* 6AF98 8007A798 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6AF9C 8007A79C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6AFA0 8007A7A0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6AFA4 8007A7A4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6AFA8 8007A7A8 801F013C */  lui        $at, (0x1F8001E8 >> 16)
    /* 6AFAC 8007A7AC E80122A0 */  sb         $v0, (0x1F8001E8 & 0xFFFF)($at)
    /* 6AFB0 8007A7B0 020083A4 */  sh         $v1, 0x2($a0)
    /* 6AFB4 8007A7B4 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 6AFB8 8007A7B8 F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 6AFBC 8007A7BC 1080153C */  lui        $s5, %hi(D_800FF748)
    /* 6AFC0 8007A7C0 48F7B526 */  addiu      $s5, $s5, %lo(D_800FF748)
    /* 6AFC4 8007A7C4 02006284 */  lh         $v0, 0x2($v1)
    /* 6AFC8 8007A7C8 00000000 */  nop
    /* 6AFCC 8007A7CC A1324228 */  slti       $v0, $v0, 0x32A1
    /* 6AFD0 8007A7D0 05004014 */  bnez       $v0, .L8007A7E8
    /* 6AFD4 8007A7D4 801F133C */   lui       $s3, (0x1F800294 >> 16)
    /* 6AFD8 8007A7D8 A0320224 */  addiu      $v0, $zero, 0x32A0
    /* 6AFDC 8007A7DC 020062A4 */  sh         $v0, 0x2($v1)
    /* 6AFE0 8007A7E0 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 6AFE4 8007A7E4 F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
  .L8007A7E8:
    /* 6AFE8 8007A7E8 00000000 */  nop
    /* 6AFEC 8007A7EC 02006284 */  lh         $v0, 0x2($v1)
    /* 6AFF0 8007A7F0 00000000 */  nop
    /* 6AFF4 8007A7F4 60CD4228 */  slti       $v0, $v0, -0x32A0
    /* 6AFF8 8007A7F8 02004010 */  beqz       $v0, .L8007A804
    /* 6AFFC 8007A7FC 60CD0224 */   addiu     $v0, $zero, -0x32A0
    /* 6B000 8007A800 020062A4 */  sh         $v0, 0x2($v1)
  .L8007A804:
    /* 6B004 8007A804 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 6B008 8007A808 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 6B00C 8007A80C 00000000 */  nop
    /* 6B010 8007A810 040040A4 */  sh         $zero, 0x4($v0)
    /* 6B014 8007A814 801F023C */  lui        $v0, (0x1F8002BE >> 16)
    /* 6B018 8007A818 BE024284 */  lh         $v0, (0x1F8002BE & 0xFFFF)($v0)
    /* 6B01C 8007A81C 00000000 */  nop
    /* 6B020 8007A820 06004104 */  bgez       $v0, .L8007A83C
    /* 6B024 8007A824 C0001224 */   addiu     $s2, $zero, 0xC0
    /* 6B028 8007A828 40001224 */  addiu      $s2, $zero, 0x40
    /* 6B02C 8007A82C 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 6B030 8007A830 F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 6B034 8007A834 12EA0108 */  j          .L8007A848
    /* 6B038 8007A838 00DD0224 */   addiu     $v0, $zero, -0x2300
  .L8007A83C:
    /* 6B03C 8007A83C 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 6B040 8007A840 F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 6B044 8007A844 00230224 */  addiu      $v0, $zero, 0x2300
  .L8007A848:
    /* 6B048 8007A848 060062A4 */  sh         $v0, 0x6($v1)
    /* 6B04C 8007A84C F402638E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s3)
    /* 6B050 8007A850 03000224 */  addiu      $v0, $zero, 0x3
    /* 6B054 8007A854 960362A0 */  sb         $v0, 0x396($v1)
    /* 6B058 8007A858 3403628E */  lw         $v0, (0x1F800334 & 0xFFFF)($s3)
    /* 6B05C 8007A85C FF7F0324 */  addiu      $v1, $zero, 0x7FFF
    /* 6B060 8007A860 B40263A6 */  sh         $v1, (0x1F8002B4 & 0xFFFF)($s3)
    /* 6B064 8007A864 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 6B068 8007A868 03004010 */  beqz       $v0, .L8007A878
    /* 6B06C 8007A86C B80263A6 */   sh        $v1, (0x1F8002B8 & 0xFFFF)($s3)
    /* 6B070 8007A870 73CA010C */  jal        func_800729CC
    /* 6B074 8007A874 00000000 */   nop
  .L8007A878:
    /* 6B078 8007A878 AD026392 */  lbu        $v1, (0x1F8002AD & 0xFFFF)($s3)
    /* 6B07C 8007A87C AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 6B080 8007A880 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 6B084 8007A884 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6B088 8007A888 19006200 */  multu      $v1, $v0
    /* 6B08C 8007A88C 10400000 */  mfhi       $t0
    /* 6B090 8007A890 02210800 */  srl        $a0, $t0, 4
    /* 6B094 8007A894 40100400 */  sll        $v0, $a0, 1
    /* 6B098 8007A898 21104400 */  addu       $v0, $v0, $a0
    /* 6B09C 8007A89C C0100200 */  sll        $v0, $v0, 3
    /* 6B0A0 8007A8A0 23186200 */  subu       $v1, $v1, $v0
    /* 6B0A4 8007A8A4 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6B0A8 8007A8A8 40110300 */  sll        $v0, $v1, 5
    /* 6B0AC 8007A8AC 23104300 */  subu       $v0, $v0, $v1
    /* 6B0B0 8007A8B0 80100200 */  sll        $v0, $v0, 2
    /* 6B0B4 8007A8B4 21104300 */  addu       $v0, $v0, $v1
    /* 6B0B8 8007A8B8 C0100200 */  sll        $v0, $v0, 3
    /* 6B0BC 8007A8BC 2188A202 */  addu       $s1, $s5, $v0
    /* 6B0C0 8007A8C0 98032292 */  lbu        $v0, 0x398($s1)
    /* 6B0C4 8007A8C4 00000000 */  nop
    /* 6B0C8 8007A8C8 21106202 */  addu       $v0, $s3, $v0
    /* 6B0CC 8007A8CC CF0240A0 */  sb         $zero, (0x1F8002CF & 0xFFFF)($v0)
    /* 6B0D0 8007A8D0 98032292 */  lbu        $v0, 0x398($s1)
    /* 6B0D4 8007A8D4 01000324 */  addiu      $v1, $zero, 0x1
    /* 6B0D8 8007A8D8 01004238 */  xori       $v0, $v0, 0x1
    /* 6B0DC 8007A8DC 21106202 */  addu       $v0, $s3, $v0
    /* 6B0E0 8007A8E0 8C91020C */  jal        func_800A4630
    /* 6B0E4 8007A8E4 CF0243A0 */   sb        $v1, (0x1F8002CF & 0xFFFF)($v0)
    /* 6B0E8 8007A8E8 21280000 */  addu       $a1, $zero, $zero
    /* 6B0EC 8007A8EC 05000624 */  addiu      $a2, $zero, 0x5
    /* 6B0F0 8007A8F0 2C000424 */  addiu      $a0, $zero, 0x2C
    /* 6B0F4 8007A8F4 7F07A326 */  addiu      $v1, $s5, 0x77F
  .L8007A8F8:
    /* 6B0F8 8007A8F8 E1026292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s3)
    /* 6B0FC 8007A8FC 00000000 */  nop
    /* 6B100 8007A900 05004614 */  bne        $v0, $a2, .L8007A918
    /* 6B104 8007A904 00000000 */   nop
    /* 6B108 8007A908 03006290 */  lbu        $v0, 0x3($v1)
    /* 6B10C 8007A90C 00000000 */  nop
    /* 6B110 8007A910 03004014 */  bnez       $v0, .L8007A920
    /* 6B114 8007A914 00000000 */   nop
  .L8007A918:
    /* 6B118 8007A918 FFFF64A0 */  sb         $a0, -0x1($v1)
    /* 6B11C 8007A91C 000060A0 */  sb         $zero, 0x0($v1)
  .L8007A920:
    /* 6B120 8007A920 0100A524 */  addiu      $a1, $a1, 0x1
    /* 6B124 8007A924 1600A228 */  slti       $v0, $a1, 0x16
    /* 6B128 8007A928 F3FF4014 */  bnez       $v0, .L8007A8F8
    /* 6B12C 8007A92C E8036324 */   addiu     $v1, $v1, 0x3E8
    /* 6B130 8007A930 AD026392 */  lbu        $v1, (0x1F8002AD & 0xFFFF)($s3)
    /* 6B134 8007A934 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 6B138 8007A938 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 6B13C 8007A93C FF006330 */  andi       $v1, $v1, 0xFF
    /* 6B140 8007A940 19006200 */  multu      $v1, $v0
    /* 6B144 8007A944 1D000524 */  addiu      $a1, $zero, 0x1D
    /* 6B148 8007A948 21300000 */  addu       $a2, $zero, $zero
    /* 6B14C 8007A94C 10400000 */  mfhi       $t0
    /* 6B150 8007A950 02210800 */  srl        $a0, $t0, 4
    /* 6B154 8007A954 40100400 */  sll        $v0, $a0, 1
    /* 6B158 8007A958 21104400 */  addu       $v0, $v0, $a0
    /* 6B15C 8007A95C C0100200 */  sll        $v0, $v0, 3
    /* 6B160 8007A960 23186200 */  subu       $v1, $v1, $v0
    /* 6B164 8007A964 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6B168 8007A968 40110300 */  sll        $v0, $v1, 5
    /* 6B16C 8007A96C 23104300 */  subu       $v0, $v0, $v1
    /* 6B170 8007A970 80100200 */  sll        $v0, $v0, 2
    /* 6B174 8007A974 21104300 */  addu       $v0, $v0, $v1
    /* 6B178 8007A978 C0100200 */  sll        $v0, $v0, 3
    /* 6B17C 8007A97C 2188A202 */  addu       $s1, $s5, $v0
    /* 6B180 8007A980 8C6E010C */  jal        func_8005BA30
    /* 6B184 8007A984 21202002 */   addu      $a0, $s1, $zero
    /* 6B188 8007A988 F402638E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s3)
    /* 6B18C 8007A98C 04000224 */  addiu      $v0, $zero, 0x4
    /* 6B190 8007A990 B10362A0 */  sb         $v0, 0x3B1($v1)
    /* 6B194 8007A994 05000224 */  addiu      $v0, $zero, 0x5
    /* 6B198 8007A998 970322A2 */  sb         $v0, 0x397($s1)
    /* 6B19C 8007A99C F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 6B1A0 8007A9A0 00000000 */  nop
    /* 6B1A4 8007A9A4 02004294 */  lhu        $v0, 0x2($v0)
    /* 6B1A8 8007A9A8 00000000 */  nop
    /* 6B1AC 8007A9AC 020022A6 */  sh         $v0, 0x2($s1)
    /* 6B1B0 8007A9B0 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 6B1B4 8007A9B4 9A032392 */  lbu        $v1, 0x39A($s1)
    /* 6B1B8 8007A9B8 06004294 */  lhu        $v0, 0x6($v0)
    /* 6B1BC 8007A9BC A00320AE */  sw         $zero, 0x3A0($s1)
    /* 6B1C0 8007A9C0 AB0332A2 */  sb         $s2, 0x3AB($s1)
    /* 6B1C4 8007A9C4 0A006014 */  bnez       $v1, .L8007A9F0
    /* 6B1C8 8007A9C8 060022A6 */   sh        $v0, 0x6($s1)
    /* 6B1CC 8007A9CC 02002486 */  lh         $a0, 0x2($s1)
    /* 6B1D0 8007A9D0 99032292 */  lbu        $v0, 0x399($s1)
    /* 6B1D4 8007A9D4 06002586 */  lh         $a1, 0x6($s1)
    /* 6B1D8 8007A9D8 02004014 */  bnez       $v0, .L8007A9E4
    /* 6B1DC 8007A9DC 10D70624 */   addiu     $a2, $zero, -0x28F0
    /* 6B1E0 8007A9E0 F0280624 */  addiu      $a2, $zero, 0x28F0
  .L8007A9E4:
    /* 6B1E4 8007A9E4 DB6C010C */  jal        func_8005B36C
    /* 6B1E8 8007A9E8 21380000 */   addu      $a3, $zero, $zero
    /* 6B1EC 8007A9EC 21904000 */  addu       $s2, $v0, $zero
  .L8007A9F0:
    /* 6B1F0 8007A9F0 21202002 */  addu       $a0, $s1, $zero
    /* 6B1F4 8007A9F4 21280000 */  addu       $a1, $zero, $zero
    /* 6B1F8 8007A9F8 196E010C */  jal        func_8005B864
    /* 6B1FC 8007A9FC AA0332A2 */   sb        $s2, 0x3AA($s1)
    /* 6B200 8007AA00 8D032292 */  lbu        $v0, 0x38D($s1)
    /* 6B204 8007AA04 F402638E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s3)
    /* 6B208 8007AA08 21200000 */  addu       $a0, $zero, $zero
    /* 6B20C 8007AA0C A90262A2 */  sb         $v0, (0x1F8002A9 & 0xFFFF)($s3)
    /* 6B210 8007AA10 A80262A2 */  sb         $v0, (0x1F8002A8 & 0xFFFF)($s3)
    /* 6B214 8007AA14 02006584 */  lh         $a1, 0x2($v1)
    /* 6B218 8007AA18 06006684 */  lh         $a2, 0x6($v1)
    /* 6B21C 8007AA1C B19D010C */  jal        func_800676C4
    /* 6B220 8007AA20 21380000 */   addu      $a3, $zero, $zero
    /* 6B224 8007AA24 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 6B228 8007AA28 01000424 */  addiu      $a0, $zero, 0x1
    /* 6B22C 8007AA2C 02004584 */  lh         $a1, 0x2($v0)
    /* 6B230 8007AA30 06004684 */  lh         $a2, 0x6($v0)
    /* 6B234 8007AA34 B19D010C */  jal        func_800676C4
    /* 6B238 8007AA38 21380000 */   addu      $a3, $zero, $zero
    /* 6B23C 8007AA3C 99032292 */  lbu        $v0, 0x399($s1)
    /* 6B240 8007AA40 00000000 */  nop
    /* 6B244 8007AA44 40100200 */  sll        $v0, $v0, 1
    /* 6B248 8007AA48 21106202 */  addu       $v0, $s3, $v0
    /* 6B24C 8007AA4C 22034390 */  lbu        $v1, (0x1F800322 & 0xFFFF)($v0)
    /* 6B250 8007AA50 00000000 */  nop
    /* 6B254 8007AA54 1E0343A0 */  sb         $v1, (0x1F80031E & 0xFFFF)($v0)
    /* 6B258 8007AA58 99032292 */  lbu        $v0, 0x399($s1)
    /* 6B25C 8007AA5C 00000000 */  nop
    /* 6B260 8007AA60 40100200 */  sll        $v0, $v0, 1
    /* 6B264 8007AA64 21106202 */  addu       $v0, $s3, $v0
    /* 6B268 8007AA68 23034390 */  lbu        $v1, (0x1F800323 & 0xFFFF)($v0)
    /* 6B26C 8007AA6C 00000000 */  nop
    /* 6B270 8007AA70 1F0343A0 */  sb         $v1, (0x1F80031F & 0xFFFF)($v0)
    /* 6B274 8007AA74 99032292 */  lbu        $v0, 0x399($s1)
    /* 6B278 8007AA78 00000000 */  nop
    /* 6B27C 8007AA7C 01004238 */  xori       $v0, $v0, 0x1
    /* 6B280 8007AA80 40100200 */  sll        $v0, $v0, 1
    /* 6B284 8007AA84 21106202 */  addu       $v0, $s3, $v0
    /* 6B288 8007AA88 22034390 */  lbu        $v1, (0x1F800322 & 0xFFFF)($v0)
    /* 6B28C 8007AA8C AAAA143C */  lui        $s4, (0xAAAAAAAB >> 16)
    /* 6B290 8007AA90 ABAA9436 */  ori        $s4, $s4, (0xAAAAAAAB & 0xFFFF)
    /* 6B294 8007AA94 1E0343A0 */  sb         $v1, (0x1F80031E & 0xFFFF)($v0)
    /* 6B298 8007AA98 99032292 */  lbu        $v0, 0x399($s1)
    /* 6B29C 8007AA9C 21280000 */  addu       $a1, $zero, $zero
    /* 6B2A0 8007AAA0 40100200 */  sll        $v0, $v0, 1
    /* 6B2A4 8007AAA4 21105300 */  addu       $v0, $v0, $s3
    /* 6B2A8 8007AAA8 22034624 */  addiu      $a2, $v0, %lo(D_1F800322)
  .L8007AAAC:
    /* 6B2AC 8007AAAC 0000C390 */  lbu        $v1, 0x0($a2)
    /* 6B2B0 8007AAB0 00000000 */  nop
    /* 6B2B4 8007AAB4 19007400 */  multu      $v1, $s4
    /* 6B2B8 8007AAB8 10400000 */  mfhi       $t0
    /* 6B2BC 8007AABC 02210800 */  srl        $a0, $t0, 4
    /* 6B2C0 8007AAC0 40100400 */  sll        $v0, $a0, 1
    /* 6B2C4 8007AAC4 21104400 */  addu       $v0, $v0, $a0
    /* 6B2C8 8007AAC8 C0100200 */  sll        $v0, $v0, 3
    /* 6B2CC 8007AACC 23186200 */  subu       $v1, $v1, $v0
    /* 6B2D0 8007AAD0 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6B2D4 8007AAD4 40110300 */  sll        $v0, $v1, 5
    /* 6B2D8 8007AAD8 23104300 */  subu       $v0, $v0, $v1
    /* 6B2DC 8007AADC 80100200 */  sll        $v0, $v0, 2
    /* 6B2E0 8007AAE0 21104300 */  addu       $v0, $v0, $v1
    /* 6B2E4 8007AAE4 C0100200 */  sll        $v0, $v0, 3
    /* 6B2E8 8007AAE8 2180A202 */  addu       $s0, $s5, $v0
    /* 6B2EC 8007AAEC 04003016 */  bne        $s1, $s0, .L8007AB00
    /* 6B2F0 8007AAF0 0100A524 */   addiu     $a1, $a1, 0x1
    /* 6B2F4 8007AAF4 0200A228 */  slti       $v0, $a1, 0x2
    /* 6B2F8 8007AAF8 ECFF4014 */  bnez       $v0, .L8007AAAC
    /* 6B2FC 8007AAFC 0100C624 */   addiu     $a2, $a2, 0x1
  .L8007AB00:
    /* 6B300 8007AB00 FF005232 */  andi       $s2, $s2, 0xFF
    /* 6B304 8007AB04 21204002 */  addu       $a0, $s2, $zero
    /* 6B308 8007AB08 A579000C */  jal        func_8001E694
    /* 6B30C 8007AB0C 000A0524 */   addiu     $a1, $zero, 0xA00
    /* 6B310 8007AB10 21204002 */  addu       $a0, $s2, $zero
    /* 6B314 8007AB14 02002396 */  lhu        $v1, 0x2($s1)
    /* 6B318 8007AB18 000A0524 */  addiu      $a1, $zero, 0xA00
    /* 6B31C 8007AB1C 21186200 */  addu       $v1, $v1, $v0
    /* 6B320 8007AB20 6979000C */  jal        func_8001E5A4
    /* 6B324 8007AB24 020003A6 */   sh        $v1, 0x2($s0)
    /* 6B328 8007AB28 06002396 */  lhu        $v1, 0x6($s1)
    /* 6B32C 8007AB2C 00000000 */  nop
    /* 6B330 8007AB30 21186200 */  addu       $v1, $v1, $v0
    /* 6B334 8007AB34 060003A6 */  sh         $v1, 0x6($s0)
    /* 6B338 8007AB38 99032292 */  lbu        $v0, 0x399($s1)
    /* 6B33C 8007AB3C 00000000 */  nop
    /* 6B340 8007AB40 01004238 */  xori       $v0, $v0, 0x1
    /* 6B344 8007AB44 40100200 */  sll        $v0, $v0, 1
    /* 6B348 8007AB48 21106202 */  addu       $v0, $s3, $v0
    /* 6B34C 8007AB4C 22034390 */  lbu        $v1, (0x1F800322 & 0xFFFF)($v0)
    /* 6B350 8007AB50 00000000 */  nop
    /* 6B354 8007AB54 19007400 */  multu      $v1, $s4
    /* 6B358 8007AB58 10400000 */  mfhi       $t0
    /* 6B35C 8007AB5C 02210800 */  srl        $a0, $t0, 4
    /* 6B360 8007AB60 40100400 */  sll        $v0, $a0, 1
    /* 6B364 8007AB64 21104400 */  addu       $v0, $v0, $a0
    /* 6B368 8007AB68 C0100200 */  sll        $v0, $v0, 3
    /* 6B36C 8007AB6C 23186200 */  subu       $v1, $v1, $v0
    /* 6B370 8007AB70 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6B374 8007AB74 40110300 */  sll        $v0, $v1, 5
    /* 6B378 8007AB78 23104300 */  subu       $v0, $v0, $v1
    /* 6B37C 8007AB7C 80100200 */  sll        $v0, $v0, 2
    /* 6B380 8007AB80 21104300 */  addu       $v0, $v0, $v1
    /* 6B384 8007AB84 C0100200 */  sll        $v0, $v0, 3
    /* 6B388 8007AB88 2180A202 */  addu       $s0, $s5, $v0
    /* 6B38C 8007AB8C E1026392 */  lbu        $v1, (0x1F8002E1 & 0xFFFF)($s3)
    /* 6B390 8007AB90 05000224 */  addiu      $v0, $zero, 0x5
    /* 6B394 8007AB94 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6B398 8007AB98 05006214 */  bne        $v1, $v0, .L8007ABB0
    /* 6B39C 8007AB9C 00000000 */   nop
    /* 6B3A0 8007ABA0 9A030292 */  lbu        $v0, 0x39A($s0)
    /* 6B3A4 8007ABA4 00000000 */  nop
    /* 6B3A8 8007ABA8 0F004014 */  bnez       $v0, .L8007ABE8
    /* 6B3AC 8007ABAC 21202002 */   addu      $a0, $s1, $zero
  .L8007ABB0:
    /* 6B3B0 8007ABB0 21204002 */  addu       $a0, $s2, $zero
    /* 6B3B4 8007ABB4 A579000C */  jal        func_8001E694
    /* 6B3B8 8007ABB8 00100524 */   addiu     $a1, $zero, 0x1000
    /* 6B3BC 8007ABBC 21204002 */  addu       $a0, $s2, $zero
    /* 6B3C0 8007ABC0 02002396 */  lhu        $v1, 0x2($s1)
    /* 6B3C4 8007ABC4 00100524 */  addiu      $a1, $zero, 0x1000
    /* 6B3C8 8007ABC8 21186200 */  addu       $v1, $v1, $v0
    /* 6B3CC 8007ABCC 6979000C */  jal        func_8001E5A4
    /* 6B3D0 8007ABD0 020003A6 */   sh        $v1, 0x2($s0)
    /* 6B3D4 8007ABD4 06002396 */  lhu        $v1, 0x6($s1)
    /* 6B3D8 8007ABD8 00000000 */  nop
    /* 6B3DC 8007ABDC 21186200 */  addu       $v1, $v1, $v0
    /* 6B3E0 8007ABE0 060003A6 */  sh         $v1, 0x6($s0)
    /* 6B3E4 8007ABE4 21202002 */  addu       $a0, $s1, $zero
  .L8007ABE8:
    /* 6B3E8 8007ABE8 AE44010C */  jal        func_800512B8
    /* 6B3EC 8007ABEC 06000524 */   addiu     $a1, $zero, 0x6
    /* 6B3F0 8007ABF0 D061A226 */  addiu      $v0, $s5, 0x61D0
    /* 6B3F4 8007ABF4 09000524 */  addiu      $a1, $zero, 0x9
  .L8007ABF8:
    /* 6B3F8 8007ABF8 040040A0 */  sb         $zero, 0x4($v0)
    /* 6B3FC 8007ABFC FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 6B400 8007AC00 FDFFA104 */  bgez       $a1, .L8007ABF8
    /* 6B404 8007AC04 28004224 */   addiu     $v0, $v0, 0x28
    /* 6B408 8007AC08 5A3B010C */  jal        func_8004ED68
    /* 6B40C 8007AC0C 21200000 */   addu      $a0, $zero, $zero
    /* 6B410 8007AC10 5A3B010C */  jal        func_8004ED68
    /* 6B414 8007AC14 01000424 */   addiu     $a0, $zero, 0x1
    /* 6B418 8007AC18 1458020C */  jal        func_80096050
    /* 6B41C 8007AC1C 00000000 */   nop
    /* 6B420 8007AC20 0446010C */  jal        func_80051810
    /* 6B424 8007AC24 EC0160A2 */   sb        $zero, (0x1F8001EC & 0xFFFF)($s3)
    /* 6B428 8007AC28 F626020C */  jal        func_80089BD8
    /* 6B42C 8007AC2C 00000000 */   nop
    /* 6B430 8007AC30 01000224 */  addiu      $v0, $zero, 0x1
    /* 6B434 8007AC34 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6B438 8007AC38 2108A102 */  addu       $at, $s5, $at
    /* 6B43C 8007AC3C A48822A0 */  sb         $v0, -0x775C($at)
    /* 6B440 8007AC40 775C000C */  jal        func_800171DC
    /* 6B444 8007AC44 940260A6 */   sh        $zero, (0x1F800294 & 0xFFFF)($s3)
    /* 6B448 8007AC48 2800BF8F */  lw         $ra, 0x28($sp)
    /* 6B44C 8007AC4C 2400B58F */  lw         $s5, 0x24($sp)
    /* 6B450 8007AC50 2000B48F */  lw         $s4, 0x20($sp)
    /* 6B454 8007AC54 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6B458 8007AC58 1800B28F */  lw         $s2, 0x18($sp)
    /* 6B45C 8007AC5C 1400B18F */  lw         $s1, 0x14($sp)
    /* 6B460 8007AC60 1000B08F */  lw         $s0, 0x10($sp)
    /* 6B464 8007AC64 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 6B468 8007AC68 0800E003 */  jr         $ra
    /* 6B46C 8007AC6C 00000000 */   nop
endlabel func_8007A774
