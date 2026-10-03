nonmatching func_801CF964, 0x220

glabel func_801CF964
    /* 469EC 801CF964 11800D3C */  lui        $t5, %hi(D_8010A5A8)
    /* 469F0 801CF968 A8A5AD25 */  addiu      $t5, $t5, %lo(D_8010A5A8)
    /* 469F4 801CF96C 10800C3C */  lui        $t4, %hi(D_800FF748)
    /* 469F8 801CF970 48F78C25 */  addiu      $t4, $t4, %lo(D_800FF748)
    /* 469FC 801CF974 801F0B3C */  lui        $t3, (0x1F800336 >> 16)
    /* 46A00 801CF978 21380000 */  addu       $a3, $zero, $zero
    /* 46A04 801CF97C 801F023C */  lui        $v0, (0x1F8002E6 >> 16)
    /* 46A08 801CF980 E6024290 */  lbu        $v0, (0x1F8002E6 & 0xFFFF)($v0)
    /* 46A0C 801CF984 D88E0834 */  ori        $t0, $zero, 0x8ED8
    /* 46A10 801CF988 1180013C */  lui        $at, %hi(D_80108648)
    /* 46A14 801CF98C 488622A0 */  sb         $v0, %lo(D_80108648)($at)
    /* 46A18 801CF990 FF00E630 */  andi       $a2, $a3, 0xFF
  .L801CF994:
    /* 46A1C 801CF994 40180600 */  sll        $v1, $a2, 1
    /* 46A20 801CF998 21206C00 */  addu       $a0, $v1, $t4
    /* 46A24 801CF99C 21186B00 */  addu       $v1, $v1, $t3
    /* 46A28 801CF9A0 12006594 */  lhu        $a1, (0x1F800012 & 0xFFFF)($v1)
    /* 46A2C 801CF9A4 21108800 */  addu       $v0, $a0, $t0
    /* 46A30 801CF9A8 000045A4 */  sh         $a1, 0x0($v0)
    /* 46A34 801CF9AC 16006294 */  lhu        $v0, (0x1F800016 & 0xFFFF)($v1)
    /* 46A38 801CF9B0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46A3C 801CF9B4 21088100 */  addu       $at, $a0, $at
    /* 46A40 801CF9B8 DC8E22A4 */  sh         $v0, -0x7124($at)
    /* 46A44 801CF9BC 1A006294 */  lhu        $v0, (0x1F80001A & 0xFFFF)($v1)
    /* 46A48 801CF9C0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46A4C 801CF9C4 21088100 */  addu       $at, $a0, $at
    /* 46A50 801CF9C8 E08E22A4 */  sh         $v0, -0x7120($at)
    /* 46A54 801CF9CC 1E006294 */  lhu        $v0, (0x1F80001E & 0xFFFF)($v1)
    /* 46A58 801CF9D0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46A5C 801CF9D4 21088100 */  addu       $at, $a0, $at
    /* 46A60 801CF9D8 E48E22A4 */  sh         $v0, -0x711C($at)
    /* 46A64 801CF9DC 22006294 */  lhu        $v0, (0x1F800022 & 0xFFFF)($v1)
    /* 46A68 801CF9E0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46A6C 801CF9E4 21088100 */  addu       $at, $a0, $at
    /* 46A70 801CF9E8 E88E22A4 */  sh         $v0, -0x7118($at)
    /* 46A74 801CF9EC 26006294 */  lhu        $v0, (0x1F800026 & 0xFFFF)($v1)
    /* 46A78 801CF9F0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46A7C 801CF9F4 21088100 */  addu       $at, $a0, $at
    /* 46A80 801CF9F8 EC8E22A4 */  sh         $v0, -0x7114($at)
    /* 46A84 801CF9FC 2A006294 */  lhu        $v0, (0x1F80002A & 0xFFFF)($v1)
    /* 46A88 801CFA00 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46A8C 801CFA04 21088100 */  addu       $at, $a0, $at
    /* 46A90 801CFA08 F08E22A4 */  sh         $v0, -0x7110($at)
    /* 46A94 801CFA0C 2E006294 */  lhu        $v0, (0x1F80002E & 0xFFFF)($v1)
    /* 46A98 801CFA10 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46A9C 801CFA14 21088100 */  addu       $at, $a0, $at
    /* 46AA0 801CFA18 F48E22A4 */  sh         $v0, -0x710C($at)
    /* 46AA4 801CFA1C 32006394 */  lhu        $v1, (0x1F800032 & 0xFFFF)($v1)
    /* 46AA8 801CFA20 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46AAC 801CFA24 21088100 */  addu       $at, $a0, $at
    /* 46AB0 801CFA28 1A8F2294 */  lhu        $v0, -0x70E6($at)
    /* 46AB4 801CFA2C 0100E724 */  addiu      $a3, $a3, 0x1
    /* 46AB8 801CFA30 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46ABC 801CFA34 21088100 */  addu       $at, $a0, $at
    /* 46AC0 801CFA38 FC8E22A4 */  sh         $v0, -0x7104($at)
    /* 46AC4 801CFA3C 21106601 */  addu       $v0, $t3, $a2
    /* 46AC8 801CFA40 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46ACC 801CFA44 21088100 */  addu       $at, $a0, $at
    /* 46AD0 801CFA48 F88E23A4 */  sh         $v1, -0x7108($at)
    /* 46AD4 801CFA4C 07034290 */  lbu        $v0, (0x1F800307 & 0xFFFF)($v0)
    /* 46AD8 801CFA50 21308601 */  addu       $a2, $t4, $a2
    /* 46ADC 801CFA54 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46AE0 801CFA58 2108C100 */  addu       $at, $a2, $at
    /* 46AE4 801CFA5C 098F22A0 */  sb         $v0, -0x70F7($at)
    /* 46AE8 801CFA60 FF00E230 */  andi       $v0, $a3, 0xFF
    /* 46AEC 801CFA64 0200422C */  sltiu      $v0, $v0, 0x2
    /* 46AF0 801CFA68 CAFF4014 */  bnez       $v0, .L801CF994
    /* 46AF4 801CFA6C FF00E630 */   andi      $a2, $a3, 0xFF
    /* 46AF8 801CFA70 0A00A291 */  lbu        $v0, 0xA($t5)
    /* 46AFC 801CFA74 0700A391 */  lbu        $v1, 0x7($t5)
    /* 46B00 801CFA78 0600A491 */  lbu        $a0, 0x6($t5)
    /* 46B04 801CFA7C 0200A591 */  lbu        $a1, 0x2($t5)
    /* 46B08 801CFA80 0300A691 */  lbu        $a2, 0x3($t5)
    /* 46B0C 801CFA84 0400A791 */  lbu        $a3, 0x4($t5)
    /* 46B10 801CFA88 0500A891 */  lbu        $t0, 0x5($t5)
    /* 46B14 801CFA8C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46B18 801CFA90 21088101 */  addu       $at, $t4, $at
    /* 46B1C 801CFA94 E2AB2990 */  lbu        $t1, -0x541E($at)
    /* 46B20 801CFA98 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46B24 801CFA9C 21088101 */  addu       $at, $t4, $at
    /* 46B28 801CFAA0 138F2A90 */  lbu        $t2, -0x70ED($at)
    /* 46B2C 801CFAA4 36036B95 */  lhu        $t3, (0x1F800336 & 0xFFFF)($t3)
    /* 46B30 801CFAA8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46B34 801CFAAC 21088101 */  addu       $at, $t4, $at
    /* 46B38 801CFAB0 018F22A0 */  sb         $v0, -0x70FF($at)
    /* 46B3C 801CFAB4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46B40 801CFAB8 21088101 */  addu       $at, $t4, $at
    /* 46B44 801CFABC 088F23A0 */  sb         $v1, -0x70F8($at)
    /* 46B48 801CFAC0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46B4C 801CFAC4 21088101 */  addu       $at, $t4, $at
    /* 46B50 801CFAC8 028F24A0 */  sb         $a0, -0x70FE($at)
    /* 46B54 801CFACC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46B58 801CFAD0 21088101 */  addu       $at, $t4, $at
    /* 46B5C 801CFAD4 038F25A0 */  sb         $a1, -0x70FD($at)
    /* 46B60 801CFAD8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46B64 801CFADC 21088101 */  addu       $at, $t4, $at
    /* 46B68 801CFAE0 048F26A0 */  sb         $a2, -0x70FC($at)
    /* 46B6C 801CFAE4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46B70 801CFAE8 21088101 */  addu       $at, $t4, $at
    /* 46B74 801CFAEC 058F27A0 */  sb         $a3, -0x70FB($at)
    /* 46B78 801CFAF0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46B7C 801CFAF4 21088101 */  addu       $at, $t4, $at
    /* 46B80 801CFAF8 068F28A0 */  sb         $t0, -0x70FA($at)
    /* 46B84 801CFAFC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46B88 801CFB00 21088101 */  addu       $at, $t4, $at
    /* 46B8C 801CFB04 078F29A0 */  sb         $t1, -0x70F9($at)
    /* 46B90 801CFB08 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46B94 801CFB0C 21088101 */  addu       $at, $t4, $at
    /* 46B98 801CFB10 128F2AA0 */  sb         $t2, -0x70EE($at)
    /* 46B9C 801CFB14 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46BA0 801CFB18 21088101 */  addu       $at, $t4, $at
    /* 46BA4 801CFB1C 0C8F2BA4 */  sh         $t3, -0x70F4($at)
    /* 46BA8 801CFB20 0900A291 */  lbu        $v0, 0x9($t5)
    /* 46BAC 801CFB24 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46BB0 801CFB28 21088101 */  addu       $at, $t4, $at
    /* 46BB4 801CFB2C 1DAC2390 */  lbu        $v1, -0x53E3($at)
    /* 46BB8 801CFB30 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46BBC 801CFB34 21088101 */  addu       $at, $t4, $at
    /* 46BC0 801CFB38 1EAC2490 */  lbu        $a0, -0x53E2($at)
    /* 46BC4 801CFB3C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46BC8 801CFB40 21088101 */  addu       $at, $t4, $at
    /* 46BCC 801CFB44 1FAC2590 */  lbu        $a1, -0x53E1($at)
    /* 46BD0 801CFB48 73004230 */  andi       $v0, $v0, 0x73
    /* 46BD4 801CFB4C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46BD8 801CFB50 21088101 */  addu       $at, $t4, $at
    /* 46BDC 801CFB54 0E8F22A0 */  sb         $v0, -0x70F2($at)
    /* 46BE0 801CFB58 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46BE4 801CFB5C 21088101 */  addu       $at, $t4, $at
    /* 46BE8 801CFB60 0F8F23A0 */  sb         $v1, -0x70F1($at)
    /* 46BEC 801CFB64 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46BF0 801CFB68 21088101 */  addu       $at, $t4, $at
    /* 46BF4 801CFB6C 108F24A0 */  sb         $a0, -0x70F0($at)
    /* 46BF8 801CFB70 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46BFC 801CFB74 21088101 */  addu       $at, $t4, $at
    /* 46C00 801CFB78 118F25A0 */  sb         $a1, -0x70EF($at)
    /* 46C04 801CFB7C 0800E003 */  jr         $ra
    /* 46C08 801CFB80 00000000 */   nop
endlabel func_801CF964
