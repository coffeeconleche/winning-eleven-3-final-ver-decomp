nonmatching func_801AA7C4, 0x698

glabel func_801AA7C4
    /* 2184C 801AA7C4 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 21850 801AA7C8 2000A4A3 */  sb         $a0, 0x20($sp)
    /* 21854 801AA7CC 2000A493 */  lbu        $a0, 0x20($sp)
    /* 21858 801AA7D0 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* 2185C 801AA7D4 4800BEAF */  sw         $fp, 0x48($sp)
    /* 21860 801AA7D8 4400B7AF */  sw         $s7, 0x44($sp)
    /* 21864 801AA7DC 4000B6AF */  sw         $s6, 0x40($sp)
    /* 21868 801AA7E0 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 2186C 801AA7E4 3800B4AF */  sw         $s4, 0x38($sp)
    /* 21870 801AA7E8 3400B3AF */  sw         $s3, 0x34($sp)
    /* 21874 801AA7EC 3000B2AF */  sw         $s2, 0x30($sp)
    /* 21878 801AA7F0 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 2187C 801AA7F4 97AB060C */  jal        func_801AAE5C
    /* 21880 801AA7F8 2800B0AF */   sw        $s0, 0x28($sp)
    /* 21884 801AA7FC 21204000 */  addu       $a0, $v0, $zero
    /* 21888 801AA800 00008390 */  lbu        $v1, 0x0($a0)
    /* 2188C 801AA804 03000224 */  addiu      $v0, $zero, 0x3
    /* 21890 801AA808 04006214 */  bne        $v1, $v0, .L801AA81C
    /* 21894 801AA80C 00000000 */   nop
    /* 21898 801AA810 03009090 */  lbu        $s0, 0x3($a0)
    /* 2189C 801AA814 18AA0608 */  j          .L801AA860
    /* 218A0 801AA818 21880002 */   addu      $s1, $s0, $zero
  .L801AA81C:
    /* 218A4 801AA81C 01008390 */  lbu        $v1, 0x1($a0)
    /* 218A8 801AA820 801F023C */  lui        $v0, (0x1F8002DD >> 16)
    /* 218AC 801AA824 DD024290 */  lbu        $v0, (0x1F8002DD & 0xFFFF)($v0)
    /* 218B0 801AA828 00000000 */  nop
    /* 218B4 801AA82C 05006214 */  bne        $v1, $v0, .L801AA844
    /* 218B8 801AA830 00000000 */   nop
    /* 218BC 801AA834 03009190 */  lbu        $s1, 0x3($a0)
    /* 218C0 801AA838 04009090 */  lbu        $s0, 0x4($a0)
    /* 218C4 801AA83C 18AA0608 */  j          .L801AA860
    /* 218C8 801AA840 00000000 */   nop
  .L801AA844:
    /* 218CC 801AA844 801F023C */  lui        $v0, (0x1F8002DE >> 16)
    /* 218D0 801AA848 DE024290 */  lbu        $v0, (0x1F8002DE & 0xFFFF)($v0)
    /* 218D4 801AA84C 00000000 */  nop
    /* 218D8 801AA850 03006214 */  bne        $v1, $v0, .L801AA860
    /* 218DC 801AA854 00000000 */   nop
    /* 218E0 801AA858 04009190 */  lbu        $s1, 0x4($a0)
    /* 218E4 801AA85C 03009090 */  lbu        $s0, 0x3($a0)
  .L801AA860:
    /* 218E8 801AA860 AE79000C */  jal        func_8001E6B8
    /* 218EC 801AA864 FF002432 */   andi      $a0, $s1, 0xFF
    /* 218F0 801AA868 801F013C */  lui        $at, (0x1F8002D3 >> 16)
    /* 218F4 801AA86C D30222A0 */  sb         $v0, (0x1F8002D3 & 0xFFFF)($at)
    /* 218F8 801AA870 AE79000C */  jal        func_8001E6B8
    /* 218FC 801AA874 FF000432 */   andi      $a0, $s0, 0xFF
    /* 21900 801AA878 21980000 */  addu       $s3, $zero, $zero
    /* 21904 801AA87C D1880534 */  ori        $a1, $zero, 0x88D1
    /* 21908 801AA880 801F013C */  lui        $at, (0x1F8002D7 >> 16)
    /* 2190C 801AA884 D70222A0 */  sb         $v0, (0x1F8002D7 & 0xFFFF)($at)
    /* 21910 801AA888 801F023C */  lui        $v0, (0x1F8002D3 >> 16)
    /* 21914 801AA88C D3024290 */  lbu        $v0, (0x1F8002D3 & 0xFFFF)($v0)
    /* 21918 801AA890 801F033C */  lui        $v1, (0x1F8002D7 >> 16)
    /* 2191C 801AA894 D7026390 */  lbu        $v1, (0x1F8002D7 & 0xFFFF)($v1)
    /* 21920 801AA898 E7880434 */  ori        $a0, $zero, 0x88E7
    /* 21924 801AA89C 801F013C */  lui        $at, (0x1F8002D1 >> 16)
    /* 21928 801AA8A0 D10231A0 */  sb         $s1, (0x1F8002D1 & 0xFFFF)($at)
    /* 2192C 801AA8A4 801F013C */  lui        $at, (0x1F8002D2 >> 16)
    /* 21930 801AA8A8 D20230A0 */  sb         $s0, (0x1F8002D2 & 0xFFFF)($at)
    /* 21934 801AA8AC 23102202 */  subu       $v0, $s1, $v0
    /* 21938 801AA8B0 23180302 */  subu       $v1, $s0, $v1
    /* 2193C 801AA8B4 801F013C */  lui        $at, (0x1F8002D4 >> 16)
    /* 21940 801AA8B8 D40222A0 */  sb         $v0, (0x1F8002D4 & 0xFFFF)($at)
    /* 21944 801AA8BC 801F013C */  lui        $at, (0x1F8002D8 >> 16)
    /* 21948 801AA8C0 D80223A0 */  sb         $v1, (0x1F8002D8 & 0xFFFF)($at)
  .L801AA8C4:
    /* 2194C 801AA8C4 FF006332 */  andi       $v1, $s3, 0xFF
    /* 21950 801AA8C8 01007326 */  addiu      $s3, $s3, 0x1
    /* 21954 801AA8CC 1080073C */  lui        $a3, %hi(D_800FF748)
    /* 21958 801AA8D0 48F7E724 */  addiu      $a3, $a3, %lo(D_800FF748)
    /* 2195C 801AA8D4 2118E300 */  addu       $v1, $a3, $v1
    /* 21960 801AA8D8 21106400 */  addu       $v0, $v1, $a0
    /* 21964 801AA8DC 21186500 */  addu       $v1, $v1, $a1
    /* 21968 801AA8E0 000040A0 */  sb         $zero, 0x0($v0)
    /* 2196C 801AA8E4 FF006232 */  andi       $v0, $s3, 0xFF
    /* 21970 801AA8E8 1600422C */  sltiu      $v0, $v0, 0x16
    /* 21974 801AA8EC F5FF4014 */  bnez       $v0, .L801AA8C4
    /* 21978 801AA8F0 000060A0 */   sb        $zero, 0x0($v1)
    /* 2197C 801AA8F4 21980000 */  addu       $s3, $zero, $zero
    /* 21980 801AA8F8 FF000424 */  addiu      $a0, $zero, 0xFF
    /* 21984 801AA8FC FF006332 */  andi       $v1, $s3, 0xFF
  .L801AA900:
    /* 21988 801AA900 01007326 */  addiu      $s3, $s3, 0x1
    /* 2198C 801AA904 40100300 */  sll        $v0, $v1, 1
    /* 21990 801AA908 21104300 */  addu       $v0, $v0, $v1
    /* 21994 801AA90C 1080073C */  lui        $a3, %hi(D_800FF748)
    /* 21998 801AA910 48F7E724 */  addiu      $a3, $a3, %lo(D_800FF748)
    /* 2199C 801AA914 2110E200 */  addu       $v0, $a3, $v0
    /* 219A0 801AA918 0100013C */  lui        $at, (0x10000 >> 16)
    /* 219A4 801AA91C 21084100 */  addu       $at, $v0, $at
    /* 219A8 801AA920 5F8924A0 */  sb         $a0, -0x76A1($at)
    /* 219AC 801AA924 0100013C */  lui        $at, (0x10000 >> 16)
    /* 219B0 801AA928 21084100 */  addu       $at, $v0, $at
    /* 219B4 801AA92C 5E8924A0 */  sb         $a0, -0x76A2($at)
    /* 219B8 801AA930 0100013C */  lui        $at, (0x10000 >> 16)
    /* 219BC 801AA934 21084100 */  addu       $at, $v0, $at
    /* 219C0 801AA938 5D8924A0 */  sb         $a0, -0x76A3($at)
    /* 219C4 801AA93C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 219C8 801AA940 21084100 */  addu       $at, $v0, $at
    /* 219CC 801AA944 FF8824A0 */  sb         $a0, -0x7701($at)
    /* 219D0 801AA948 0100013C */  lui        $at, (0x10000 >> 16)
    /* 219D4 801AA94C 21084100 */  addu       $at, $v0, $at
    /* 219D8 801AA950 FE8824A0 */  sb         $a0, -0x7702($at)
    /* 219DC 801AA954 0100013C */  lui        $at, (0x10000 >> 16)
    /* 219E0 801AA958 21084100 */  addu       $at, $v0, $at
    /* 219E4 801AA95C FD8824A0 */  sb         $a0, -0x7703($at)
    /* 219E8 801AA960 FF006232 */  andi       $v0, $s3, 0xFF
    /* 219EC 801AA964 2000422C */  sltiu      $v0, $v0, 0x20
    /* 219F0 801AA968 E5FF4014 */  bnez       $v0, .L801AA900
    /* 219F4 801AA96C FF006332 */   andi      $v1, $s3, 0xFF
    /* 219F8 801AA970 21980000 */  addu       $s3, $zero, $zero
    /* 219FC 801AA974 1000B527 */  addiu      $s5, $sp, 0x10
    /* 21A00 801AA978 1800BE27 */  addiu      $fp, $sp, 0x18
  .L801AA97C:
    /* 21A04 801AA97C 21900000 */  addu       $s2, $zero, $zero
    /* 21A08 801AA980 FF006232 */  andi       $v0, $s3, 0xFF
    /* 21A0C 801AA984 801F073C */  lui        $a3, (0x1F8002DD >> 16)
    /* 21A10 801AA988 2130E200 */  addu       $a2, $a3, $v0
    /* 21A14 801AA98C FF004332 */  andi       $v1, $s2, 0xFF
  .L801AA990:
    /* 21A18 801AA990 DD02C290 */  lbu        $v0, (0x1F8002DD & 0xFFFF)($a2)
    /* 21A1C 801AA994 2128A302 */  addu       $a1, $s5, $v1
    /* 21A20 801AA998 80100200 */  sll        $v0, $v0, 2
    /* 21A24 801AA99C 1280013C */  lui        $at, %hi(D_8011CB94)
    /* 21A28 801AA9A0 21082200 */  addu       $at, $at, $v0
    /* 21A2C 801AA9A4 94CB2294 */  lhu        $v0, %lo(D_8011CB94)($at)
    /* 21A30 801AA9A8 80200300 */  sll        $a0, $v1, 2
    /* 21A34 801AA9AC 07108200 */  srav       $v0, $v0, $a0
    /* 21A38 801AA9B0 0F004230 */  andi       $v0, $v0, 0xF
    /* 21A3C 801AA9B4 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 21A40 801AA9B8 DD02C290 */  lbu        $v0, (0x1F8002DD & 0xFFFF)($a2)
    /* 21A44 801AA9BC 01005226 */  addiu      $s2, $s2, 0x1
    /* 21A48 801AA9C0 80100200 */  sll        $v0, $v0, 2
    /* 21A4C 801AA9C4 1280013C */  lui        $at, %hi(D_8011CB96)
    /* 21A50 801AA9C8 21082200 */  addu       $at, $at, $v0
    /* 21A54 801AA9CC 96CB2294 */  lhu        $v0, %lo(D_8011CB96)($at)
    /* 21A58 801AA9D0 2118C303 */  addu       $v1, $fp, $v1
    /* 21A5C 801AA9D4 07108200 */  srav       $v0, $v0, $a0
    /* 21A60 801AA9D8 0F004230 */  andi       $v0, $v0, 0xF
    /* 21A64 801AA9DC 000062A0 */  sb         $v0, 0x0($v1)
    /* 21A68 801AA9E0 FF004232 */  andi       $v0, $s2, 0xFF
    /* 21A6C 801AA9E4 0400422C */  sltiu      $v0, $v0, 0x4
    /* 21A70 801AA9E8 E9FF4014 */  bnez       $v0, .L801AA990
    /* 21A74 801AA9EC FF004332 */   andi      $v1, $s2, 0xFF
    /* 21A78 801AA9F0 FF006332 */  andi       $v1, $s3, 0xFF
    /* 21A7C 801AA9F4 801F073C */  lui        $a3, (0x1F8002D1 >> 16)
    /* 21A80 801AA9F8 2120E300 */  addu       $a0, $a3, $v1
    /* 21A84 801AA9FC D1028290 */  lbu        $v0, (0x1F8002D1 & 0xFFFF)($a0)
    /* 21A88 801AAA00 00000000 */  nop
    /* 21A8C 801AAA04 81004010 */  beqz       $v0, .L801AAC0C
    /* 21A90 801AAA08 21900000 */   addu      $s2, $zero, $zero
    /* 21A94 801AAA0C 40100300 */  sll        $v0, $v1, 1
    /* 21A98 801AAA10 21A04300 */  addu       $s4, $v0, $v1
    /* 21A9C 801AAA14 80101400 */  sll        $v0, $s4, 2
    /* 21AA0 801AAA18 23104300 */  subu       $v0, $v0, $v1
    /* 21AA4 801AAA1C 40100200 */  sll        $v0, $v0, 1
    /* 21AA8 801AAA20 1080073C */  lui        $a3, %hi(D_800FF748)
    /* 21AAC 801AAA24 48F7E724 */  addiu      $a3, $a3, %lo(D_800FF748)
    /* 21AB0 801AAA28 21B84700 */  addu       $s7, $v0, $a3
    /* 21AB4 801AAA2C 21B08000 */  addu       $s6, $a0, $zero
  .L801AAA30:
    /* 21AB8 801AAA30 AE79000C */  jal        func_8001E6B8
    /* 21ABC 801AAA34 0B000424 */   addiu     $a0, $zero, 0xB
    /* 21AC0 801AAA38 21180000 */  addu       $v1, $zero, $zero
    /* 21AC4 801AAA3C 0A000524 */  addiu      $a1, $zero, 0xA
    /* 21AC8 801AAA40 FF001124 */  addiu      $s1, $zero, 0xFF
    /* 21ACC 801AAA44 FF004630 */  andi       $a2, $v0, 0xFF
    /* 21AD0 801AAA48 FF006430 */  andi       $a0, $v1, 0xFF
  .L801AAA4C:
    /* 21AD4 801AAA4C 2110C403 */  addu       $v0, $fp, $a0
    /* 21AD8 801AAA50 00004290 */  lbu        $v0, 0x0($v0)
    /* 21ADC 801AAA54 00000000 */  nop
    /* 21AE0 801AAA58 09004010 */  beqz       $v0, .L801AAA80
    /* 21AE4 801AAA5C 00000000 */   nop
    /* 21AE8 801AAA60 2328A200 */  subu       $a1, $a1, $v0
    /* 21AEC 801AAA64 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 21AF0 801AAA68 2B104600 */  sltu       $v0, $v0, $a2
    /* 21AF4 801AAA6C 04004010 */  beqz       $v0, .L801AAA80
    /* 21AF8 801AAA70 2110A402 */   addu      $v0, $s5, $a0
    /* 21AFC 801AAA74 00005190 */  lbu        $s1, 0x0($v0)
    /* 21B00 801AAA78 A6AA0608 */  j          .L801AAA98
    /* 21B04 801AAA7C FF002332 */   andi      $v1, $s1, 0xFF
  .L801AAA80:
    /* 21B08 801AAA80 01006324 */  addiu      $v1, $v1, 0x1
    /* 21B0C 801AAA84 FF006230 */  andi       $v0, $v1, 0xFF
    /* 21B10 801AAA88 0400422C */  sltiu      $v0, $v0, 0x4
    /* 21B14 801AAA8C EFFF4014 */  bnez       $v0, .L801AAA4C
    /* 21B18 801AAA90 FF006430 */   andi      $a0, $v1, 0xFF
    /* 21B1C 801AAA94 FF002332 */  andi       $v1, $s1, 0xFF
  .L801AAA98:
    /* 21B20 801AAA98 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 21B24 801AAA9C 05006214 */  bne        $v1, $v0, .L801AAAB4
    /* 21B28 801AAAA0 FF004232 */   andi      $v0, $s2, 0xFF
    /* 21B2C 801AAAA4 AE79000C */  jal        func_8001E6B8
    /* 21B30 801AAAA8 0A000424 */   addiu     $a0, $zero, 0xA
    /* 21B34 801AAAAC 01005124 */  addiu      $s1, $v0, 0x1
    /* 21B38 801AAAB0 FF004232 */  andi       $v0, $s2, 0xFF
  .L801AAAB4:
    /* 21B3C 801AAAB4 40800200 */  sll        $s0, $v0, 1
    /* 21B40 801AAAB8 21800202 */  addu       $s0, $s0, $v0
    /* 21B44 801AAABC 40111400 */  sll        $v0, $s4, 5
    /* 21B48 801AAAC0 21800202 */  addu       $s0, $s0, $v0
    /* 21B4C 801AAAC4 1080073C */  lui        $a3, %hi(D_800FF748)
    /* 21B50 801AAAC8 48F7E724 */  addiu      $a3, $a3, %lo(D_800FF748)
    /* 21B54 801AAACC 2180F000 */  addu       $s0, $a3, $s0
    /* 21B58 801AAAD0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 21B5C 801AAAD4 21080102 */  addu       $at, $s0, $at
    /* 21B60 801AAAD8 FD8831A0 */  sb         $s1, -0x7703($at)
    /* 21B64 801AAADC AE79000C */  jal        func_8001E6B8
    /* 21B68 801AAAE0 6F000424 */   addiu     $a0, $zero, 0x6F
    /* 21B6C 801AAAE4 01004230 */  andi       $v0, $v0, 0x1
    /* 21B70 801AAAE8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 21B74 801AAAEC 21080102 */  addu       $at, $s0, $at
    /* 21B78 801AAAF0 FF8822A0 */  sb         $v0, -0x7701($at)
    /* 21B7C 801AAAF4 AE79000C */  jal        func_8001E6B8
    /* 21B80 801AAAF8 05000424 */   addiu     $a0, $zero, 0x5
    /* 21B84 801AAAFC D1880434 */  ori        $a0, $zero, 0x88D1
    /* 21B88 801AAB00 2120E402 */  addu       $a0, $s7, $a0
    /* 21B8C 801AAB04 FF002332 */  andi       $v1, $s1, 0xFF
    /* 21B90 801AAB08 21208300 */  addu       $a0, $a0, $v1
    /* 21B94 801AAB0C 00008390 */  lbu        $v1, 0x0($a0)
    /* 21B98 801AAB10 01005226 */  addiu      $s2, $s2, 0x1
    /* 21B9C 801AAB14 01006324 */  addiu      $v1, $v1, 0x1
    /* 21BA0 801AAB18 21186200 */  addu       $v1, $v1, $v0
    /* 21BA4 801AAB1C 000083A0 */  sb         $v1, 0x0($a0)
    /* 21BA8 801AAB20 D102C392 */  lbu        $v1, (0x1F8002D1 & 0xFFFF)($s6)
    /* 21BAC 801AAB24 FF004232 */  andi       $v0, $s2, 0xFF
    /* 21BB0 801AAB28 2B104300 */  sltu       $v0, $v0, $v1
    /* 21BB4 801AAB2C C0FF4014 */  bnez       $v0, .L801AAA30
    /* 21BB8 801AAB30 FF006332 */   andi      $v1, $s3, 0xFF
    /* 21BBC 801AAB34 801F073C */  lui        $a3, (0x1F8002D1 >> 16)
    /* 21BC0 801AAB38 2120E300 */  addu       $a0, $a3, $v1
    /* 21BC4 801AAB3C D1028290 */  lbu        $v0, (0x1F8002D1 & 0xFFFF)($a0)
    /* 21BC8 801AAB40 00000000 */  nop
    /* 21BCC 801AAB44 31004010 */  beqz       $v0, .L801AAC0C
    /* 21BD0 801AAB48 21900000 */   addu      $s2, $zero, $zero
    /* 21BD4 801AAB4C 40100300 */  sll        $v0, $v1, 1
    /* 21BD8 801AAB50 21104300 */  addu       $v0, $v0, $v1
    /* 21BDC 801AAB54 40A10200 */  sll        $s4, $v0, 5
    /* 21BE0 801AAB58 21808000 */  addu       $s0, $a0, $zero
  .L801AAB5C:
    /* 21BE4 801AAB5C AE79000C */  jal        func_8001E6B8
    /* 21BE8 801AAB60 0C000424 */   addiu     $a0, $zero, 0xC
    /* 21BEC 801AAB64 FF004330 */  andi       $v1, $v0, 0xFF
    /* 21BF0 801AAB68 0200622C */  sltiu      $v0, $v1, 0x2
    /* 21BF4 801AAB6C 21004014 */  bnez       $v0, .L801AABF4
    /* 21BF8 801AAB70 0300622C */   sltiu     $v0, $v1, 0x3
    /* 21BFC 801AAB74 05004010 */  beqz       $v0, .L801AAB8C
    /* 21C00 801AAB78 00000000 */   nop
    /* 21C04 801AAB7C AE79000C */  jal        func_8001E6B8
    /* 21C08 801AAB80 0A000424 */   addiu     $a0, $zero, 0xA
    /* 21C0C 801AAB84 E8AA0608 */  j          .L801AABA0
    /* 21C10 801AAB88 01005124 */   addiu     $s1, $v0, 0x1
  .L801AAB8C:
    /* 21C14 801AAB8C AE79000C */  jal        func_8001E6B8
    /* 21C18 801AAB90 04000424 */   addiu     $a0, $zero, 0x4
    /* 21C1C 801AAB94 FF004230 */  andi       $v0, $v0, 0xFF
    /* 21C20 801AAB98 2110A202 */  addu       $v0, $s5, $v0
    /* 21C24 801AAB9C 00005190 */  lbu        $s1, 0x0($v0)
  .L801AABA0:
    /* 21C28 801AABA0 FF004332 */  andi       $v1, $s2, 0xFF
    /* 21C2C 801AABA4 40100300 */  sll        $v0, $v1, 1
    /* 21C30 801AABA8 21104300 */  addu       $v0, $v0, $v1
    /* 21C34 801AABAC 21105400 */  addu       $v0, $v0, $s4
    /* 21C38 801AABB0 1080073C */  lui        $a3, %hi(D_800FF748)
    /* 21C3C 801AABB4 48F7E724 */  addiu      $a3, $a3, %lo(D_800FF748)
    /* 21C40 801AABB8 2120E200 */  addu       $a0, $a3, $v0
    /* 21C44 801AABBC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 21C48 801AABC0 21088100 */  addu       $at, $a0, $at
    /* 21C4C 801AABC4 FD882390 */  lbu        $v1, -0x7703($at)
    /* 21C50 801AABC8 FF002232 */  andi       $v0, $s1, 0xFF
    /* 21C54 801AABCC 06004310 */  beq        $v0, $v1, .L801AABE8
    /* 21C58 801AABD0 FFFF2226 */   addiu     $v0, $s1, -0x1
    /* 21C5C 801AABD4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 21C60 801AABD8 21088100 */  addu       $at, $a0, $at
    /* 21C64 801AABDC FE8831A0 */  sb         $s1, -0x7702($at)
    /* 21C68 801AABE0 FEAA0608 */  j          .L801AABF8
    /* 21C6C 801AABE4 01005226 */   addiu     $s2, $s2, 0x1
  .L801AABE8:
    /* 21C70 801AABE8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 21C74 801AABEC 21088100 */  addu       $at, $a0, $at
    /* 21C78 801AABF0 FE8822A0 */  sb         $v0, -0x7702($at)
  .L801AABF4:
    /* 21C7C 801AABF4 01005226 */  addiu      $s2, $s2, 0x1
  .L801AABF8:
    /* 21C80 801AABF8 D1020392 */  lbu        $v1, (0x1F8002D1 & 0xFFFF)($s0)
    /* 21C84 801AABFC FF004232 */  andi       $v0, $s2, 0xFF
    /* 21C88 801AAC00 2B104300 */  sltu       $v0, $v0, $v1
    /* 21C8C 801AAC04 D5FF4014 */  bnez       $v0, .L801AAB5C
    /* 21C90 801AAC08 00000000 */   nop
  .L801AAC0C:
    /* 21C94 801AAC0C 01007326 */  addiu      $s3, $s3, 0x1
    /* 21C98 801AAC10 FF006232 */  andi       $v0, $s3, 0xFF
    /* 21C9C 801AAC14 0200422C */  sltiu      $v0, $v0, 0x2
    /* 21CA0 801AAC18 58FF4014 */  bnez       $v0, .L801AA97C
    /* 21CA4 801AAC1C 02000224 */   addiu     $v0, $zero, 0x2
    /* 21CA8 801AAC20 2000A393 */  lbu        $v1, 0x20($sp)
    /* 21CAC 801AAC24 00000000 */  nop
    /* 21CB0 801AAC28 7F006210 */  beq        $v1, $v0, .L801AAE28
    /* 21CB4 801AAC2C 21980000 */   addu      $s3, $zero, $zero
    /* 21CB8 801AAC30 A5880534 */  ori        $a1, $zero, 0x88A5
    /* 21CBC 801AAC34 BB880434 */  ori        $a0, $zero, 0x88BB
  .L801AAC38:
    /* 21CC0 801AAC38 FF006332 */  andi       $v1, $s3, 0xFF
    /* 21CC4 801AAC3C 01007326 */  addiu      $s3, $s3, 0x1
    /* 21CC8 801AAC40 1080073C */  lui        $a3, %hi(D_800FF748)
    /* 21CCC 801AAC44 48F7E724 */  addiu      $a3, $a3, %lo(D_800FF748)
    /* 21CD0 801AAC48 2118E300 */  addu       $v1, $a3, $v1
    /* 21CD4 801AAC4C 21106400 */  addu       $v0, $v1, $a0
    /* 21CD8 801AAC50 21186500 */  addu       $v1, $v1, $a1
    /* 21CDC 801AAC54 000040A0 */  sb         $zero, 0x0($v0)
    /* 21CE0 801AAC58 FF006232 */  andi       $v0, $s3, 0xFF
    /* 21CE4 801AAC5C 1600422C */  sltiu      $v0, $v0, 0x16
    /* 21CE8 801AAC60 F5FF4014 */  bnez       $v0, .L801AAC38
    /* 21CEC 801AAC64 000060A0 */   sb        $zero, 0x0($v1)
    /* 21CF0 801AAC68 21980000 */  addu       $s3, $zero, $zero
    /* 21CF4 801AAC6C A5881534 */  ori        $s5, $zero, 0x88A5
    /* 21CF8 801AAC70 1180013C */  lui        $at, %hi(D_80108618)
    /* 21CFC 801AAC74 188620A0 */  sb         $zero, %lo(D_80108618)($at)
    /* 21D00 801AAC78 1180013C */  lui        $at, %hi(D_80108619)
    /* 21D04 801AAC7C 198620A0 */  sb         $zero, %lo(D_80108619)($at)
    /* 21D08 801AAC80 1180013C */  lui        $at, %hi(D_80108616)
    /* 21D0C 801AAC84 168620A0 */  sb         $zero, %lo(D_80108616)($at)
    /* 21D10 801AAC88 1180013C */  lui        $at, %hi(D_80108617)
    /* 21D14 801AAC8C 178620A0 */  sb         $zero, %lo(D_80108617)($at)
  .L801AAC90:
    /* 21D18 801AAC90 AE79000C */  jal        func_8001E6B8
    /* 21D1C 801AAC94 08000424 */   addiu     $a0, $zero, 0x8
    /* 21D20 801AAC98 21184000 */  addu       $v1, $v0, $zero
    /* 21D24 801AAC9C 0800622C */  sltiu      $v0, $v1, 0x8
    /* 21D28 801AACA0 0B004010 */  beqz       $v0, .L801AACD0
    /* 21D2C 801AACA4 80100300 */   sll       $v0, $v1, 2
    /* 21D30 801AACA8 1980013C */  lui        $at, %hi(jtbl_8018A2C0)
    /* 21D34 801AACAC 21082200 */  addu       $at, $at, $v0
    /* 21D38 801AACB0 C0A2228C */  lw         $v0, %lo(jtbl_8018A2C0)($at)
    /* 21D3C 801AACB4 00000000 */  nop
    /* 21D40 801AACB8 08004000 */  jr         $v0
    /* 21D44 801AACBC 00000000 */   nop
  jlabel .L801AACC0
    /* 21D48 801AACC0 35AB0608 */  j          .L801AACD4
    /* 21D4C 801AACC4 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801AACC8
    /* 21D50 801AACC8 35AB0608 */  j          .L801AACD4
    /* 21D54 801AACCC 01000224 */   addiu     $v0, $zero, 0x1
  jlabel .L801AACD0
    /* 21D58 801AACD0 02000224 */  addiu      $v0, $zero, 0x2
  .L801AACD4:
    /* 21D5C 801AACD4 04001024 */  addiu      $s0, $zero, 0x4
    /* 21D60 801AACD8 21904000 */  addu       $s2, $v0, $zero
    /* 21D64 801AACDC FF006332 */  andi       $v1, $s3, 0xFF
    /* 21D68 801AACE0 40100300 */  sll        $v0, $v1, 1
    /* 21D6C 801AACE4 21104300 */  addu       $v0, $v0, $v1
    /* 21D70 801AACE8 80100200 */  sll        $v0, $v0, 2
    /* 21D74 801AACEC 23104300 */  subu       $v0, $v0, $v1
    /* 21D78 801AACF0 40100200 */  sll        $v0, $v0, 1
    /* 21D7C 801AACF4 1080073C */  lui        $a3, %hi(D_800FF748)
    /* 21D80 801AACF8 48F7E724 */  addiu      $a3, $a3, %lo(D_800FF748)
    /* 21D84 801AACFC 21104700 */  addu       $v0, $v0, $a3
    /* 21D88 801AAD00 21A05500 */  addu       $s4, $v0, $s5
    /* 21D8C 801AAD04 2188E300 */  addu       $s1, $a3, $v1
  .L801AAD08:
    /* 21D90 801AAD08 AE79000C */  jal        func_8001E6B8
    /* 21D94 801AAD0C FF000432 */   andi      $a0, $s0, 0xFF
    /* 21D98 801AAD10 FF004332 */  andi       $v1, $s2, 0xFF
    /* 21D9C 801AAD14 2A186200 */  slt        $v1, $v1, $v0
    /* 21DA0 801AAD18 19006010 */  beqz       $v1, .L801AAD80
    /* 21DA4 801AAD1C 00000000 */   nop
    /* 21DA8 801AAD20 AE79000C */  jal        func_8001E6B8
    /* 21DAC 801AAD24 0A000424 */   addiu     $a0, $zero, 0xA
    /* 21DB0 801AAD28 01004324 */  addiu      $v1, $v0, 0x1
    /* 21DB4 801AAD2C FF006230 */  andi       $v0, $v1, 0xFF
    /* 21DB8 801AAD30 21208202 */  addu       $a0, $s4, $v0
    /* 21DBC 801AAD34 00008390 */  lbu        $v1, 0x0($a0)
    /* 21DC0 801AAD38 00000000 */  nop
    /* 21DC4 801AAD3C FF006230 */  andi       $v0, $v1, 0xFF
    /* 21DC8 801AAD40 03004014 */  bnez       $v0, .L801AAD50
    /* 21DCC 801AAD44 00000000 */   nop
    /* 21DD0 801AAD48 58AB0608 */  j          .L801AAD60
    /* 21DD4 801AAD4C 01000224 */   addiu     $v0, $zero, 0x1
  .L801AAD50:
    /* 21DD8 801AAD50 04004004 */  bltz       $v0, .L801AAD64
    /* 21DDC 801AAD54 03004228 */   slti      $v0, $v0, 0x3
    /* 21DE0 801AAD58 02004010 */  beqz       $v0, .L801AAD64
    /* 21DE4 801AAD5C 40100300 */   sll       $v0, $v1, 1
  .L801AAD60:
    /* 21DE8 801AAD60 000082A0 */  sb         $v0, 0x0($a0)
  .L801AAD64:
    /* 21DEC 801AAD64 D08E0334 */  ori        $v1, $zero, 0x8ED0
    /* 21DF0 801AAD68 21182302 */  addu       $v1, $s1, $v1
    /* 21DF4 801AAD6C 00006290 */  lbu        $v0, 0x0($v1)
    /* 21DF8 801AAD70 01005226 */  addiu      $s2, $s2, 0x1
    /* 21DFC 801AAD74 01004224 */  addiu      $v0, $v0, 0x1
    /* 21E00 801AAD78 42AB0608 */  j          .L801AAD08
    /* 21E04 801AAD7C 000062A0 */   sb        $v0, 0x0($v1)
  .L801AAD80:
    /* 21E08 801AAD80 AE79000C */  jal        func_8001E6B8
    /* 21E0C 801AAD84 64000424 */   addiu     $a0, $zero, 0x64
    /* 21E10 801AAD88 0A004228 */  slti       $v0, $v0, 0xA
    /* 21E14 801AAD8C 21004010 */  beqz       $v0, .L801AAE14
    /* 21E18 801AAD90 00000000 */   nop
    /* 21E1C 801AAD94 AE79000C */  jal        func_8001E6B8
    /* 21E20 801AAD98 0A000424 */   addiu     $a0, $zero, 0xA
    /* 21E24 801AAD9C 01004324 */  addiu      $v1, $v0, 0x1
    /* 21E28 801AADA0 FF006432 */  andi       $a0, $s3, 0xFF
    /* 21E2C 801AADA4 40100400 */  sll        $v0, $a0, 1
    /* 21E30 801AADA8 21104400 */  addu       $v0, $v0, $a0
    /* 21E34 801AADAC 80100200 */  sll        $v0, $v0, 2
    /* 21E38 801AADB0 23104400 */  subu       $v0, $v0, $a0
    /* 21E3C 801AADB4 40100200 */  sll        $v0, $v0, 1
    /* 21E40 801AADB8 1080073C */  lui        $a3, %hi(D_800FF748)
    /* 21E44 801AADBC 48F7E724 */  addiu      $a3, $a3, %lo(D_800FF748)
    /* 21E48 801AADC0 21104700 */  addu       $v0, $v0, $a3
    /* 21E4C 801AADC4 21105500 */  addu       $v0, $v0, $s5
    /* 21E50 801AADC8 FF006330 */  andi       $v1, $v1, 0xFF
    /* 21E54 801AADCC 21284300 */  addu       $a1, $v0, $v1
    /* 21E58 801AADD0 0000A390 */  lbu        $v1, 0x0($a1)
    /* 21E5C 801AADD4 00000000 */  nop
    /* 21E60 801AADD8 27100300 */  nor        $v0, $zero, $v1
    /* 21E64 801AADDC 83100200 */  sra        $v0, $v0, 2
    /* 21E68 801AADE0 01004230 */  andi       $v0, $v0, 0x1
    /* 21E6C 801AADE4 04004010 */  beqz       $v0, .L801AADF8
    /* 21E70 801AADE8 04006234 */   ori       $v0, $v1, 0x4
    /* 21E74 801AADEC 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 21E78 801AADF0 1080073C */  lui        $a3, %hi(D_800FF748)
    /* 21E7C 801AADF4 48F7E724 */  addiu      $a3, $a3, %lo(D_800FF748)
  .L801AADF8:
    /* 21E80 801AADF8 2118E400 */  addu       $v1, $a3, $a0
    /* 21E84 801AADFC CE8E0234 */  ori        $v0, $zero, 0x8ECE
    /* 21E88 801AAE00 21186200 */  addu       $v1, $v1, $v0
    /* 21E8C 801AAE04 00006290 */  lbu        $v0, 0x0($v1)
    /* 21E90 801AAE08 00000000 */  nop
    /* 21E94 801AAE0C 01004224 */  addiu      $v0, $v0, 0x1
    /* 21E98 801AAE10 000062A0 */  sb         $v0, 0x0($v1)
  .L801AAE14:
    /* 21E9C 801AAE14 01007326 */  addiu      $s3, $s3, 0x1
    /* 21EA0 801AAE18 FF006232 */  andi       $v0, $s3, 0xFF
    /* 21EA4 801AAE1C 0200422C */  sltiu      $v0, $v0, 0x2
    /* 21EA8 801AAE20 9BFF4014 */  bnez       $v0, .L801AAC90
    /* 21EAC 801AAE24 00000000 */   nop
  .L801AAE28:
    /* 21EB0 801AAE28 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* 21EB4 801AAE2C 4800BE8F */  lw         $fp, 0x48($sp)
    /* 21EB8 801AAE30 4400B78F */  lw         $s7, 0x44($sp)
    /* 21EBC 801AAE34 4000B68F */  lw         $s6, 0x40($sp)
    /* 21EC0 801AAE38 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 21EC4 801AAE3C 3800B48F */  lw         $s4, 0x38($sp)
    /* 21EC8 801AAE40 3400B38F */  lw         $s3, 0x34($sp)
    /* 21ECC 801AAE44 3000B28F */  lw         $s2, 0x30($sp)
    /* 21ED0 801AAE48 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 21ED4 801AAE4C 2800B08F */  lw         $s0, 0x28($sp)
    /* 21ED8 801AAE50 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 21EDC 801AAE54 0800E003 */  jr         $ra
    /* 21EE0 801AAE58 00000000 */   nop
endlabel func_801AA7C4
