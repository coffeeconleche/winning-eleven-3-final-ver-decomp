nonmatching func_801BE9F0, 0x704

glabel func_801BE9F0
    /* 35A78 801BE9F0 70FFBD27 */  addiu      $sp, $sp, -0x90
    /* 35A7C 801BE9F4 8C00BFAF */  sw         $ra, 0x8C($sp)
    /* 35A80 801BE9F8 8800BEAF */  sw         $fp, 0x88($sp)
    /* 35A84 801BE9FC 8400B7AF */  sw         $s7, 0x84($sp)
    /* 35A88 801BEA00 8000B6AF */  sw         $s6, 0x80($sp)
    /* 35A8C 801BEA04 7C00B5AF */  sw         $s5, 0x7C($sp)
    /* 35A90 801BEA08 7800B4AF */  sw         $s4, 0x78($sp)
    /* 35A94 801BEA0C 7400B3AF */  sw         $s3, 0x74($sp)
    /* 35A98 801BEA10 7000B2AF */  sw         $s2, 0x70($sp)
    /* 35A9C 801BEA14 6C00B1AF */  sw         $s1, 0x6C($sp)
    /* 35AA0 801BEA18 D6FE060C */  jal        func_801BFB58
    /* 35AA4 801BEA1C 6800B0AF */   sw        $s0, 0x68($sp)
    /* 35AA8 801BEA20 1180023C */  lui        $v0, %hi(D_80108667)
    /* 35AAC 801BEA24 67864290 */  lbu        $v0, %lo(D_80108667)($v0)
    /* 35AB0 801BEA28 00000000 */  nop
    /* 35AB4 801BEA2C 82110200 */  srl        $v0, $v0, 6
    /* 35AB8 801BEA30 01004230 */  andi       $v0, $v0, 0x1
    /* 35ABC 801BEA34 0F004010 */  beqz       $v0, .L801BEA74
    /* 35AC0 801BEA38 0040043C */   lui       $a0, (0x40000000 >> 16)
    /* 35AC4 801BEA3C 3A000524 */  addiu      $a1, $zero, 0x3A
    /* 35AC8 801BEA40 5FFF0624 */  addiu      $a2, $zero, -0xA1
    /* 35ACC 801BEA44 21380000 */  addu       $a3, $zero, $zero
    /* 35AD0 801BEA48 62010224 */  addiu      $v0, $zero, 0x162
    /* 35AD4 801BEA4C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 35AD8 801BEA50 30000224 */  addiu      $v0, $zero, 0x30
    /* 35ADC 801BEA54 1400A2AF */  sw         $v0, 0x14($sp)
    /* 35AE0 801BEA58 60000224 */  addiu      $v0, $zero, 0x60
    /* 35AE4 801BEA5C 1800A2AF */  sw         $v0, 0x18($sp)
    /* 35AE8 801BEA60 80000224 */  addiu      $v0, $zero, 0x80
    /* 35AEC 801BEA64 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 35AF0 801BEA68 04000224 */  addiu      $v0, $zero, 0x4
    /* 35AF4 801BEA6C 3E59060C */  jal        func_801964F8
    /* 35AF8 801BEA70 2000A2AF */   sw        $v0, 0x20($sp)
  .L801BEA74:
    /* 35AFC 801BEA74 0040043C */  lui        $a0, (0x40000000 >> 16)
    /* 35B00 801BEA78 CCFF0524 */  addiu      $a1, $zero, -0x34
    /* 35B04 801BEA7C 0F000624 */  addiu      $a2, $zero, 0xF
    /* 35B08 801BEA80 E0000724 */  addiu      $a3, $zero, 0xE0
    /* 35B0C 801BEA84 30001324 */  addiu      $s3, $zero, 0x30
    /* 35B10 801BEA88 60001224 */  addiu      $s2, $zero, 0x60
    /* 35B14 801BEA8C 80001124 */  addiu      $s1, $zero, 0x80
    /* 35B18 801BEA90 04001024 */  addiu      $s0, $zero, 0x4
    /* 35B1C 801BEA94 1000A0AF */  sw         $zero, 0x10($sp)
    /* 35B20 801BEA98 1400B3AF */  sw         $s3, 0x14($sp)
    /* 35B24 801BEA9C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 35B28 801BEAA0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 35B2C 801BEAA4 3E59060C */  jal        func_801964F8
    /* 35B30 801BEAA8 2000B0AF */   sw        $s0, 0x20($sp)
    /* 35B34 801BEAAC 0040043C */  lui        $a0, (0x40000000 >> 16)
    /* 35B38 801BEAB0 CCFF0524 */  addiu      $a1, $zero, -0x34
    /* 35B3C 801BEAB4 10000624 */  addiu      $a2, $zero, 0x10
    /* 35B40 801BEAB8 E0000724 */  addiu      $a3, $zero, 0xE0
    /* 35B44 801BEABC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 35B48 801BEAC0 1400B3AF */  sw         $s3, 0x14($sp)
    /* 35B4C 801BEAC4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 35B50 801BEAC8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 35B54 801BEACC 3E59060C */  jal        func_801964F8
    /* 35B58 801BEAD0 2000B0AF */   sw        $s0, 0x20($sp)
    /* 35B5C 801BEAD4 1E80033C */  lui        $v1, %hi(D_801DA2F8)
    /* 35B60 801BEAD8 F8A26390 */  lbu        $v1, %lo(D_801DA2F8)($v1)
    /* 35B64 801BEADC 00000000 */  nop
    /* 35B68 801BEAE0 02006228 */  slti       $v0, $v1, 0x2
    /* 35B6C 801BEAE4 4C014010 */  beqz       $v0, .L801BF018
    /* 35B70 801BEAE8 0050043C */   lui       $a0, (0x50000000 >> 16)
    /* 35B74 801BEAEC 4B016004 */  bltz       $v1, .L801BF01C
    /* 35B78 801BEAF0 64FF0524 */   addiu     $a1, $zero, -0x9C
    /* 35B7C 801BEAF4 2800A0AF */  sw         $zero, 0x28($sp)
    /* 35B80 801BEAF8 1080083C */  lui        $t0, %hi(D_800FF748)
    /* 35B84 801BEAFC 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* 35B88 801BEB00 6000A8AF */  sw         $t0, 0x60($sp)
  .L801BEB04:
    /* 35B8C 801BEB04 0B80023C */  lui        $v0, %hi(D_800AD638)
    /* 35B90 801BEB08 38D64294 */  lhu        $v0, %lo(D_800AD638)($v0)
    /* 35B94 801BEB0C 2800A98F */  lw         $t1, 0x28($sp)
    /* 35B98 801BEB10 00000000 */  nop
    /* 35B9C 801BEB14 09002215 */  bne        $t1, $v0, .L801BEB3C
    /* 35BA0 801BEB18 C0000824 */   addiu     $t0, $zero, 0xC0
    /* 35BA4 801BEB1C 80000424 */  addiu      $a0, $zero, 0x80
    /* 35BA8 801BEB20 03000524 */  addiu      $a1, $zero, 0x3
    /* 35BAC 801BEB24 6E39060C */  jal        func_8018E5B8
    /* 35BB0 801BEB28 3800A8A3 */   sb        $t0, 0x38($sp)
    /* 35BB4 801BEB2C 3000A2A3 */  sb         $v0, 0x30($sp)
    /* 35BB8 801BEB30 3000BE93 */  lbu        $fp, 0x30($sp)
    /* 35BBC 801BEB34 D8FA0608 */  j          .L801BEB60
    /* 35BC0 801BEB38 00000000 */   nop
  .L801BEB3C:
    /* 35BC4 801BEB3C 1E80023C */  lui        $v0, %hi(D_801DA2F8)
    /* 35BC8 801BEB40 F8A24290 */  lbu        $v0, %lo(D_801DA2F8)($v0)
    /* 35BCC 801BEB44 00000000 */  nop
    /* 35BD0 801BEB48 2A014010 */  beqz       $v0, .L801BEFF4
    /* 35BD4 801BEB4C 18000924 */   addiu     $t1, $zero, 0x18
    /* 35BD8 801BEB50 21F00000 */  addu       $fp, $zero, $zero
    /* 35BDC 801BEB54 3000A9A3 */  sb         $t1, 0x30($sp)
    /* 35BE0 801BEB58 18000824 */  addiu      $t0, $zero, 0x18
    /* 35BE4 801BEB5C 3800A8A3 */  sb         $t0, 0x38($sp)
  .L801BEB60:
    /* 35BE8 801BEB60 1180023C */  lui        $v0, %hi(D_80108667)
    /* 35BEC 801BEB64 67864290 */  lbu        $v0, %lo(D_80108667)($v0)
    /* 35BF0 801BEB68 00000000 */  nop
    /* 35BF4 801BEB6C 82110200 */  srl        $v0, $v0, 6
    /* 35BF8 801BEB70 01004230 */  andi       $v0, $v0, 0x1
    /* 35BFC 801BEB74 D2004010 */  beqz       $v0, .L801BEEC0
    /* 35C00 801BEB78 00000000 */   nop
    /* 35C04 801BEB7C 1180023C */  lui        $v0, %hi(D_8010866A)
    /* 35C08 801BEB80 6A864290 */  lbu        $v0, %lo(D_8010866A)($v0)
    /* 35C0C 801BEB84 00000000 */  nop
    /* 35C10 801BEB88 34004010 */  beqz       $v0, .L801BEC5C
    /* 35C14 801BEB8C 50AB0834 */   ori       $t0, $zero, 0xAB50
    /* 35C18 801BEB90 6000A98F */  lw         $t1, 0x60($sp)
    /* 35C1C 801BEB94 00000000 */  nop
    /* 35C20 801BEB98 21802801 */  addu       $s0, $t1, $t0
    /* 35C24 801BEB9C 00000492 */  lbu        $a0, 0x0($s0)
    /* 35C28 801BEBA0 BEF4060C */  jal        func_801BD2F8
    /* 35C2C 801BEBA4 21280000 */   addu      $a1, $zero, $zero
    /* 35C30 801BEBA8 01000524 */  addiu      $a1, $zero, 0x1
    /* 35C34 801BEBAC 00000492 */  lbu        $a0, 0x0($s0)
    /* 35C38 801BEBB0 BEF4060C */  jal        func_801BD2F8
    /* 35C3C 801BEBB4 21804000 */   addu      $s0, $v0, $zero
    /* 35C40 801BEBB8 21200000 */  addu       $a0, $zero, $zero
    /* 35C44 801BEBBC CCFF0524 */  addiu      $a1, $zero, -0x34
    /* 35C48 801BEBC0 00841000 */  sll        $s0, $s0, 16
    /* 35C4C 801BEBC4 03841000 */  sra        $s0, $s0, 16
    /* 35C50 801BEBC8 40881000 */  sll        $s1, $s0, 1
    /* 35C54 801BEBCC 21883002 */  addu       $s1, $s1, $s0
    /* 35C58 801BEBD0 80881100 */  sll        $s1, $s1, 2
    /* 35C5C 801BEBD4 23883002 */  subu       $s1, $s1, $s0
    /* 35C60 801BEBD8 40881100 */  sll        $s1, $s1, 1
    /* 35C64 801BEBDC 69FF3126 */  addiu      $s1, $s1, -0x97
    /* 35C68 801BEBE0 21302002 */  addu       $a2, $s1, $zero
    /* 35C6C 801BEBE4 D2FF0724 */  addiu      $a3, $zero, -0x2E
    /* 35C70 801BEBE8 00140200 */  sll        $v0, $v0, 16
    /* 35C74 801BEBEC 03140200 */  sra        $v0, $v0, 16
    /* 35C78 801BEBF0 40800200 */  sll        $s0, $v0, 1
    /* 35C7C 801BEBF4 21800202 */  addu       $s0, $s0, $v0
    /* 35C80 801BEBF8 80801000 */  sll        $s0, $s0, 2
    /* 35C84 801BEBFC 23800202 */  subu       $s0, $s0, $v0
    /* 35C88 801BEC00 40801000 */  sll        $s0, $s0, 1
    /* 35C8C 801BEC04 69FF1026 */  addiu      $s0, $s0, -0x97
    /* 35C90 801BEC08 FF00D433 */  andi       $s4, $fp, 0xFF
    /* 35C94 801BEC0C 3800B393 */  lbu        $s3, 0x38($sp)
    /* 35C98 801BEC10 3000B293 */  lbu        $s2, 0x30($sp)
    /* 35C9C 801BEC14 02000924 */  addiu      $t1, $zero, 0x2
    /* 35CA0 801BEC18 1000B0AF */  sw         $s0, 0x10($sp)
    /* 35CA4 801BEC1C 1400B4AF */  sw         $s4, 0x14($sp)
    /* 35CA8 801BEC20 2000A9AF */  sw         $t1, 0x20($sp)
    /* 35CAC 801BEC24 1800B3AF */  sw         $s3, 0x18($sp)
    /* 35CB0 801BEC28 1759060C */  jal        func_8019645C
    /* 35CB4 801BEC2C 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 35CB8 801BEC30 21200000 */  addu       $a0, $zero, $zero
    /* 35CBC 801BEC34 CDFF0524 */  addiu      $a1, $zero, -0x33
    /* 35CC0 801BEC38 21302002 */  addu       $a2, $s1, $zero
    /* 35CC4 801BEC3C D3FF0724 */  addiu      $a3, $zero, -0x2D
    /* 35CC8 801BEC40 02000824 */  addiu      $t0, $zero, 0x2
    /* 35CCC 801BEC44 1000B0AF */  sw         $s0, 0x10($sp)
    /* 35CD0 801BEC48 1400B4AF */  sw         $s4, 0x14($sp)
    /* 35CD4 801BEC4C 1800B3AF */  sw         $s3, 0x18($sp)
    /* 35CD8 801BEC50 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 35CDC 801BEC54 1759060C */  jal        func_8019645C
    /* 35CE0 801BEC58 2000A8AF */   sw        $t0, 0x20($sp)
  .L801BEC5C:
    /* 35CE4 801BEC5C 1180033C */  lui        $v1, %hi(D_8010866A)
    /* 35CE8 801BEC60 6A866390 */  lbu        $v1, %lo(D_8010866A)($v1)
    /* 35CEC 801BEC64 55FB0608 */  j          .L801BED54
    /* 35CF0 801BEC68 02001724 */   addiu     $s7, $zero, 0x2
  .L801BEC6C:
    /* 35CF4 801BEC6C 40004010 */  beqz       $v0, .L801BED70
    /* 35CF8 801BEC70 50AB0834 */   ori       $t0, $zero, 0xAB50
  .L801BEC74:
    /* 35CFC 801BEC74 6000A98F */  lw         $t1, 0x60($sp)
    /* 35D00 801BEC78 FFFFF526 */  addiu      $s5, $s7, -0x1
    /* 35D04 801BEC7C 21802801 */  addu       $s0, $t1, $t0
    /* 35D08 801BEC80 00000492 */  lbu        $a0, 0x0($s0)
    /* 35D0C 801BEC84 BEF4060C */  jal        func_801BD2F8
    /* 35D10 801BEC88 2128A002 */   addu      $a1, $s5, $zero
    /* 35D14 801BEC8C 2128E002 */  addu       $a1, $s7, $zero
    /* 35D18 801BEC90 00000492 */  lbu        $a0, 0x0($s0)
    /* 35D1C 801BEC94 BEF4060C */  jal        func_801BD2F8
    /* 35D20 801BEC98 21804000 */   addu      $s0, $v0, $zero
    /* 35D24 801BEC9C 21200000 */  addu       $a0, $zero, $zero
    /* 35D28 801BECA0 C0A81500 */  sll        $s5, $s5, 3
    /* 35D2C 801BECA4 CAFFA526 */  addiu      $a1, $s5, -0x36
    /* 35D30 801BECA8 00841000 */  sll        $s0, $s0, 16
    /* 35D34 801BECAC 03841000 */  sra        $s0, $s0, 16
    /* 35D38 801BECB0 40881000 */  sll        $s1, $s0, 1
    /* 35D3C 801BECB4 21883002 */  addu       $s1, $s1, $s0
    /* 35D40 801BECB8 80881100 */  sll        $s1, $s1, 2
    /* 35D44 801BECBC 23883002 */  subu       $s1, $s1, $s0
    /* 35D48 801BECC0 40881100 */  sll        $s1, $s1, 1
    /* 35D4C 801BECC4 69FF3126 */  addiu      $s1, $s1, -0x97
    /* 35D50 801BECC8 21302002 */  addu       $a2, $s1, $zero
    /* 35D54 801BECCC C0B01700 */  sll        $s6, $s7, 3
    /* 35D58 801BECD0 CAFFC726 */  addiu      $a3, $s6, -0x36
    /* 35D5C 801BECD4 00140200 */  sll        $v0, $v0, 16
    /* 35D60 801BECD8 03140200 */  sra        $v0, $v0, 16
    /* 35D64 801BECDC 40800200 */  sll        $s0, $v0, 1
    /* 35D68 801BECE0 21800202 */  addu       $s0, $s0, $v0
    /* 35D6C 801BECE4 80801000 */  sll        $s0, $s0, 2
    /* 35D70 801BECE8 23800202 */  subu       $s0, $s0, $v0
    /* 35D74 801BECEC 40801000 */  sll        $s0, $s0, 1
    /* 35D78 801BECF0 69FF1026 */  addiu      $s0, $s0, -0x97
    /* 35D7C 801BECF4 FF00D433 */  andi       $s4, $fp, 0xFF
    /* 35D80 801BECF8 3800B393 */  lbu        $s3, 0x38($sp)
    /* 35D84 801BECFC 3000B293 */  lbu        $s2, 0x30($sp)
    /* 35D88 801BED00 02000924 */  addiu      $t1, $zero, 0x2
    /* 35D8C 801BED04 1000B0AF */  sw         $s0, 0x10($sp)
    /* 35D90 801BED08 1400B4AF */  sw         $s4, 0x14($sp)
    /* 35D94 801BED0C 2000A9AF */  sw         $t1, 0x20($sp)
    /* 35D98 801BED10 1800B3AF */  sw         $s3, 0x18($sp)
    /* 35D9C 801BED14 1759060C */  jal        func_8019645C
    /* 35DA0 801BED18 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 35DA4 801BED1C 21200000 */  addu       $a0, $zero, $zero
    /* 35DA8 801BED20 CBFFA526 */  addiu      $a1, $s5, -0x35
    /* 35DAC 801BED24 21302002 */  addu       $a2, $s1, $zero
    /* 35DB0 801BED28 CBFFC726 */  addiu      $a3, $s6, -0x35
    /* 35DB4 801BED2C 02000824 */  addiu      $t0, $zero, 0x2
    /* 35DB8 801BED30 1000B0AF */  sw         $s0, 0x10($sp)
    /* 35DBC 801BED34 1400B4AF */  sw         $s4, 0x14($sp)
    /* 35DC0 801BED38 1800B3AF */  sw         $s3, 0x18($sp)
    /* 35DC4 801BED3C 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 35DC8 801BED40 1759060C */  jal        func_8019645C
    /* 35DCC 801BED44 2000A8AF */   sw        $t0, 0x20($sp)
    /* 35DD0 801BED48 1180033C */  lui        $v1, %hi(D_8010866A)
    /* 35DD4 801BED4C 6A866390 */  lbu        $v1, %lo(D_8010866A)($v1)
    /* 35DD8 801BED50 0100F726 */  addiu      $s7, $s7, 0x1
  .L801BED54:
    /* 35DDC 801BED54 0F00622C */  sltiu      $v0, $v1, 0xF
    /* 35DE0 801BED58 C4FF4010 */  beqz       $v0, .L801BEC6C
    /* 35DE4 801BED5C 0F00E22A */   slti      $v0, $s7, 0xF
    /* 35DE8 801BED60 01006224 */  addiu      $v0, $v1, 0x1
    /* 35DEC 801BED64 2A10E202 */  slt        $v0, $s7, $v0
    /* 35DF0 801BED68 C2FF4014 */  bnez       $v0, .L801BEC74
    /* 35DF4 801BED6C 50AB0834 */   ori       $t0, $zero, 0xAB50
  .L801BED70:
    /* 35DF8 801BED70 1180033C */  lui        $v1, %hi(D_8010866A)
    /* 35DFC 801BED74 6A866390 */  lbu        $v1, %lo(D_8010866A)($v1)
    /* 35E00 801BED78 00000000 */  nop
    /* 35E04 801BED7C 0F00622C */  sltiu      $v0, $v1, 0xF
    /* 35E08 801BED80 9C004014 */  bnez       $v0, .L801BEFF4
    /* 35E0C 801BED84 0F006228 */   slti      $v0, $v1, 0xF
    /* 35E10 801BED88 9A004014 */  bnez       $v0, .L801BEFF4
    /* 35E14 801BED8C 0F001724 */   addiu     $s7, $zero, 0xF
    /* 35E18 801BED90 50AB0834 */  ori        $t0, $zero, 0xAB50
    /* 35E1C 801BED94 69001624 */  addiu      $s6, $zero, 0x69
    /* 35E20 801BED98 6000A98F */  lw         $t1, 0x60($sp)
    /* 35E24 801BED9C 3800B493 */  lbu        $s4, 0x38($sp)
    /* 35E28 801BEDA0 21402801 */  addu       $t0, $t1, $t0
    /* 35E2C 801BEDA4 FF00C933 */  andi       $t1, $fp, 0xFF
    /* 35E30 801BEDA8 3000BE93 */  lbu        $fp, 0x30($sp)
    /* 35E34 801BEDAC 62001524 */  addiu      $s5, $zero, 0x62
    /* 35E38 801BEDB0 4000A8AF */  sw         $t0, 0x40($sp)
    /* 35E3C 801BEDB4 4800A9AF */  sw         $t1, 0x48($sp)
  .L801BEDB8:
    /* 35E40 801BEDB8 4000A88F */  lw         $t0, 0x40($sp)
    /* 35E44 801BEDBC FFFFF226 */  addiu      $s2, $s7, -0x1
    /* 35E48 801BEDC0 00000491 */  lbu        $a0, 0x0($t0)
    /* 35E4C 801BEDC4 BEF4060C */  jal        func_801BD2F8
    /* 35E50 801BEDC8 21284002 */   addu      $a1, $s2, $zero
    /* 35E54 801BEDCC 2128E002 */  addu       $a1, $s7, $zero
    /* 35E58 801BEDD0 43981700 */  sra        $s3, $s7, 1
    /* 35E5C 801BEDD4 4000A98F */  lw         $t1, 0x40($sp)
    /* 35E60 801BEDD8 0100F726 */  addiu      $s7, $s7, 0x1
    /* 35E64 801BEDDC 00002491 */  lbu        $a0, 0x0($t1)
    /* 35E68 801BEDE0 BEF4060C */  jal        func_801BD2F8
    /* 35E6C 801BEDE4 21804000 */   addu      $s0, $v0, $zero
    /* 35E70 801BEDE8 21200000 */  addu       $a0, $zero, $zero
    /* 35E74 801BEDEC 43901200 */  sra        $s2, $s2, 1
    /* 35E78 801BEDF0 D1FF4526 */  addiu      $a1, $s2, -0x2F
    /* 35E7C 801BEDF4 2128A502 */  addu       $a1, $s5, $a1
    /* 35E80 801BEDF8 00841000 */  sll        $s0, $s0, 16
    /* 35E84 801BEDFC 03841000 */  sra        $s0, $s0, 16
    /* 35E88 801BEE00 40881000 */  sll        $s1, $s0, 1
    /* 35E8C 801BEE04 21883002 */  addu       $s1, $s1, $s0
    /* 35E90 801BEE08 80881100 */  sll        $s1, $s1, 2
    /* 35E94 801BEE0C 23883002 */  subu       $s1, $s1, $s0
    /* 35E98 801BEE10 40881100 */  sll        $s1, $s1, 1
    /* 35E9C 801BEE14 69FF3126 */  addiu      $s1, $s1, -0x97
    /* 35EA0 801BEE18 21302002 */  addu       $a2, $s1, $zero
    /* 35EA4 801BEE1C D1FF6726 */  addiu      $a3, $s3, -0x2F
    /* 35EA8 801BEE20 2138C702 */  addu       $a3, $s6, $a3
    /* 35EAC 801BEE24 00140200 */  sll        $v0, $v0, 16
    /* 35EB0 801BEE28 03140200 */  sra        $v0, $v0, 16
    /* 35EB4 801BEE2C 40800200 */  sll        $s0, $v0, 1
    /* 35EB8 801BEE30 21800202 */  addu       $s0, $s0, $v0
    /* 35EBC 801BEE34 80801000 */  sll        $s0, $s0, 2
    /* 35EC0 801BEE38 23800202 */  subu       $s0, $s0, $v0
    /* 35EC4 801BEE3C 40801000 */  sll        $s0, $s0, 1
    /* 35EC8 801BEE40 69FF1026 */  addiu      $s0, $s0, -0x97
    /* 35ECC 801BEE44 4800A88F */  lw         $t0, 0x48($sp)
    /* 35ED0 801BEE48 02000924 */  addiu      $t1, $zero, 0x2
    /* 35ED4 801BEE4C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 35ED8 801BEE50 1800B4AF */  sw         $s4, 0x18($sp)
    /* 35EDC 801BEE54 1C00BEAF */  sw         $fp, 0x1C($sp)
    /* 35EE0 801BEE58 2000A9AF */  sw         $t1, 0x20($sp)
    /* 35EE4 801BEE5C 1759060C */  jal        func_8019645C
    /* 35EE8 801BEE60 1400A8AF */   sw        $t0, 0x14($sp)
    /* 35EEC 801BEE64 21200000 */  addu       $a0, $zero, $zero
    /* 35EF0 801BEE68 D2FF5226 */  addiu      $s2, $s2, -0x2E
    /* 35EF4 801BEE6C 2128B202 */  addu       $a1, $s5, $s2
    /* 35EF8 801BEE70 21302002 */  addu       $a2, $s1, $zero
    /* 35EFC 801BEE74 D2FF7326 */  addiu      $s3, $s3, -0x2E
    /* 35F00 801BEE78 2138D302 */  addu       $a3, $s6, $s3
    /* 35F04 801BEE7C 4800A88F */  lw         $t0, 0x48($sp)
    /* 35F08 801BEE80 02000924 */  addiu      $t1, $zero, 0x2
    /* 35F0C 801BEE84 1000B0AF */  sw         $s0, 0x10($sp)
    /* 35F10 801BEE88 1800B4AF */  sw         $s4, 0x18($sp)
    /* 35F14 801BEE8C 1C00BEAF */  sw         $fp, 0x1C($sp)
    /* 35F18 801BEE90 2000A9AF */  sw         $t1, 0x20($sp)
    /* 35F1C 801BEE94 1759060C */  jal        func_8019645C
    /* 35F20 801BEE98 1400A8AF */   sw        $t0, 0x14($sp)
    /* 35F24 801BEE9C 0700D626 */  addiu      $s6, $s6, 0x7
    /* 35F28 801BEEA0 1180023C */  lui        $v0, %hi(D_8010866A)
    /* 35F2C 801BEEA4 6A864290 */  lbu        $v0, %lo(D_8010866A)($v0)
    /* 35F30 801BEEA8 00000000 */  nop
    /* 35F34 801BEEAC 2A105700 */  slt        $v0, $v0, $s7
    /* 35F38 801BEEB0 C1FF4010 */  beqz       $v0, .L801BEDB8
    /* 35F3C 801BEEB4 0700B526 */   addiu     $s5, $s5, 0x7
    /* 35F40 801BEEB8 FDFB0608 */  j          .L801BEFF4
    /* 35F44 801BEEBC 00000000 */   nop
  .L801BEEC0:
    /* 35F48 801BEEC0 1180023C */  lui        $v0, %hi(D_8010866A)
    /* 35F4C 801BEEC4 6A864290 */  lbu        $v0, %lo(D_8010866A)($v0)
    /* 35F50 801BEEC8 00000000 */  nop
    /* 35F54 801BEECC 49004010 */  beqz       $v0, .L801BEFF4
    /* 35F58 801BEED0 01001724 */   addiu     $s7, $zero, 0x1
    /* 35F5C 801BEED4 50AB0934 */  ori        $t1, $zero, 0xAB50
    /* 35F60 801BEED8 DDFF1324 */  addiu      $s3, $zero, -0x23
    /* 35F64 801BEEDC CDFF1224 */  addiu      $s2, $zero, -0x33
    /* 35F68 801BEEE0 DCFF1624 */  addiu      $s6, $zero, -0x24
    /* 35F6C 801BEEE4 6000A88F */  lw         $t0, 0x60($sp)
    /* 35F70 801BEEE8 3000B493 */  lbu        $s4, 0x30($sp)
    /* 35F74 801BEEEC 21480901 */  addu       $t1, $t0, $t1
    /* 35F78 801BEEF0 FF00C833 */  andi       $t0, $fp, 0xFF
    /* 35F7C 801BEEF4 3800BE93 */  lbu        $fp, 0x38($sp)
    /* 35F80 801BEEF8 CCFF1524 */  addiu      $s5, $zero, -0x34
    /* 35F84 801BEEFC 5000A9AF */  sw         $t1, 0x50($sp)
    /* 35F88 801BEF00 5800A8AF */  sw         $t0, 0x58($sp)
  .L801BEF04:
    /* 35F8C 801BEF04 5000A98F */  lw         $t1, 0x50($sp)
    /* 35F90 801BEF08 00000000 */  nop
    /* 35F94 801BEF0C 00002491 */  lbu        $a0, 0x0($t1)
    /* 35F98 801BEF10 BEF4060C */  jal        func_801BD2F8
    /* 35F9C 801BEF14 FFFFE526 */   addiu     $a1, $s7, -0x1
    /* 35FA0 801BEF18 2128E002 */  addu       $a1, $s7, $zero
    /* 35FA4 801BEF1C 5000A88F */  lw         $t0, 0x50($sp)
    /* 35FA8 801BEF20 0100F726 */  addiu      $s7, $s7, 0x1
    /* 35FAC 801BEF24 00000491 */  lbu        $a0, 0x0($t0)
    /* 35FB0 801BEF28 BEF4060C */  jal        func_801BD2F8
    /* 35FB4 801BEF2C 21804000 */   addu      $s0, $v0, $zero
    /* 35FB8 801BEF30 21200000 */  addu       $a0, $zero, $zero
    /* 35FBC 801BEF34 2128A002 */  addu       $a1, $s5, $zero
    /* 35FC0 801BEF38 00841000 */  sll        $s0, $s0, 16
    /* 35FC4 801BEF3C 03841000 */  sra        $s0, $s0, 16
    /* 35FC8 801BEF40 40881000 */  sll        $s1, $s0, 1
    /* 35FCC 801BEF44 21883002 */  addu       $s1, $s1, $s0
    /* 35FD0 801BEF48 80881100 */  sll        $s1, $s1, 2
    /* 35FD4 801BEF4C 23883002 */  subu       $s1, $s1, $s0
    /* 35FD8 801BEF50 40881100 */  sll        $s1, $s1, 1
    /* 35FDC 801BEF54 69FF3126 */  addiu      $s1, $s1, -0x97
    /* 35FE0 801BEF58 21302002 */  addu       $a2, $s1, $zero
    /* 35FE4 801BEF5C 2138C002 */  addu       $a3, $s6, $zero
    /* 35FE8 801BEF60 00140200 */  sll        $v0, $v0, 16
    /* 35FEC 801BEF64 03140200 */  sra        $v0, $v0, 16
    /* 35FF0 801BEF68 40800200 */  sll        $s0, $v0, 1
    /* 35FF4 801BEF6C 21800202 */  addu       $s0, $s0, $v0
    /* 35FF8 801BEF70 80801000 */  sll        $s0, $s0, 2
    /* 35FFC 801BEF74 23800202 */  subu       $s0, $s0, $v0
    /* 36000 801BEF78 40801000 */  sll        $s0, $s0, 1
    /* 36004 801BEF7C 69FF1026 */  addiu      $s0, $s0, -0x97
    /* 36008 801BEF80 5800A98F */  lw         $t1, 0x58($sp)
    /* 3600C 801BEF84 02000824 */  addiu      $t0, $zero, 0x2
    /* 36010 801BEF88 1000B0AF */  sw         $s0, 0x10($sp)
    /* 36014 801BEF8C 1800BEAF */  sw         $fp, 0x18($sp)
    /* 36018 801BEF90 1C00B4AF */  sw         $s4, 0x1C($sp)
    /* 3601C 801BEF94 2000A8AF */  sw         $t0, 0x20($sp)
    /* 36020 801BEF98 1759060C */  jal        func_8019645C
    /* 36024 801BEF9C 1400A9AF */   sw        $t1, 0x14($sp)
    /* 36028 801BEFA0 21200000 */  addu       $a0, $zero, $zero
    /* 3602C 801BEFA4 21284002 */  addu       $a1, $s2, $zero
    /* 36030 801BEFA8 21302002 */  addu       $a2, $s1, $zero
    /* 36034 801BEFAC 21386002 */  addu       $a3, $s3, $zero
    /* 36038 801BEFB0 5800A98F */  lw         $t1, 0x58($sp)
    /* 3603C 801BEFB4 02000824 */  addiu      $t0, $zero, 0x2
    /* 36040 801BEFB8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 36044 801BEFBC 1800BEAF */  sw         $fp, 0x18($sp)
    /* 36048 801BEFC0 1C00B4AF */  sw         $s4, 0x1C($sp)
    /* 3604C 801BEFC4 2000A8AF */  sw         $t0, 0x20($sp)
    /* 36050 801BEFC8 1759060C */  jal        func_8019645C
    /* 36054 801BEFCC 1400A9AF */   sw        $t1, 0x14($sp)
    /* 36058 801BEFD0 10007326 */  addiu      $s3, $s3, 0x10
    /* 3605C 801BEFD4 10005226 */  addiu      $s2, $s2, 0x10
    /* 36060 801BEFD8 1000D626 */  addiu      $s6, $s6, 0x10
    /* 36064 801BEFDC 1180023C */  lui        $v0, %hi(D_8010866A)
    /* 36068 801BEFE0 6A864290 */  lbu        $v0, %lo(D_8010866A)($v0)
    /* 3606C 801BEFE4 00000000 */  nop
    /* 36070 801BEFE8 2A105700 */  slt        $v0, $v0, $s7
    /* 36074 801BEFEC C5FF4010 */  beqz       $v0, .L801BEF04
    /* 36078 801BEFF0 1000B526 */   addiu     $s5, $s5, 0x10
  .L801BEFF4:
    /* 3607C 801BEFF4 6000A98F */  lw         $t1, 0x60($sp)
    /* 36080 801BEFF8 2800A88F */  lw         $t0, 0x28($sp)
    /* 36084 801BEFFC 01002925 */  addiu      $t1, $t1, 0x1
    /* 36088 801BF000 01000825 */  addiu      $t0, $t0, 0x1
    /* 3608C 801BF004 10000229 */  slti       $v0, $t0, 0x10
    /* 36090 801BF008 6000A9AF */  sw         $t1, 0x60($sp)
    /* 36094 801BF00C BDFE4014 */  bnez       $v0, .L801BEB04
    /* 36098 801BF010 2800A8AF */   sw        $t0, 0x28($sp)
    /* 3609C 801BF014 0050043C */  lui        $a0, (0x50000000 >> 16)
  .L801BF018:
    /* 360A0 801BF018 64FF0524 */  addiu      $a1, $zero, -0x9C
  .L801BF01C:
    /* 360A4 801BF01C 50000724 */  addiu      $a3, $zero, 0x50
    /* 360A8 801BF020 14001024 */  addiu      $s0, $zero, 0x14
    /* 360AC 801BF024 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 360B0 801BF028 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 360B4 801BF02C A0000224 */  addiu      $v0, $zero, 0xA0
    /* 360B8 801BF030 1400A2AF */  sw         $v0, 0x14($sp)
    /* 360BC 801BF034 30000224 */  addiu      $v0, $zero, 0x30
    /* 360C0 801BF038 1800A2AF */  sw         $v0, 0x18($sp)
    /* 360C4 801BF03C 01000224 */  addiu      $v0, $zero, 0x1
    /* 360C8 801BF040 2000A2AF */  sw         $v0, 0x20($sp)
    /* 360CC 801BF044 04000224 */  addiu      $v0, $zero, 0x4
    /* 360D0 801BF048 1000B0AF */  sw         $s0, 0x10($sp)
    /* 360D4 801BF04C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 360D8 801BF050 2400A2AF */  sw         $v0, 0x24($sp)
    /* 360DC 801BF054 40300300 */  sll        $a2, $v1, 1
    /* 360E0 801BF058 2130C300 */  addu       $a2, $a2, $v1
    /* 360E4 801BF05C 80300600 */  sll        $a2, $a2, 2
    /* 360E8 801BF060 2330C300 */  subu       $a2, $a2, $v1
    /* 360EC 801BF064 40300600 */  sll        $a2, $a2, 1
    /* 360F0 801BF068 005A060C */  jal        func_80196800
    /* 360F4 801BF06C 60FFC624 */   addiu     $a2, $a2, -0xA0
    /* 360F8 801BF070 0070043C */  lui        $a0, (0x70000000 >> 16)
    /* 360FC 801BF074 CCFF0524 */  addiu      $a1, $zero, -0x34
    /* 36100 801BF078 E0000724 */  addiu      $a3, $zero, 0xE0
    /* 36104 801BF07C FF000324 */  addiu      $v1, $zero, 0xFF
    /* 36108 801BF080 1400A3AF */  sw         $v1, 0x14($sp)
    /* 3610C 801BF084 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* 36110 801BF088 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 36114 801BF08C 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 36118 801BF090 AA000224 */  addiu      $v0, $zero, 0xAA
    /* 3611C 801BF094 1800A2AF */  sw         $v0, 0x18($sp)
    /* 36120 801BF098 02000224 */  addiu      $v0, $zero, 0x2
    /* 36124 801BF09C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 36128 801BF0A0 2000A2AF */  sw         $v0, 0x20($sp)
    /* 3612C 801BF0A4 40300300 */  sll        $a2, $v1, 1
    /* 36130 801BF0A8 2130C300 */  addu       $a2, $a2, $v1
    /* 36134 801BF0AC 80300600 */  sll        $a2, $a2, 2
    /* 36138 801BF0B0 2330C300 */  subu       $a2, $a2, $v1
    /* 3613C 801BF0B4 40300600 */  sll        $a2, $a2, 1
    /* 36140 801BF0B8 005A060C */  jal        func_80196800
    /* 36144 801BF0BC 60FFC624 */   addiu     $a2, $a2, -0xA0
    /* 36148 801BF0C0 8C00BF8F */  lw         $ra, 0x8C($sp)
    /* 3614C 801BF0C4 8800BE8F */  lw         $fp, 0x88($sp)
    /* 36150 801BF0C8 8400B78F */  lw         $s7, 0x84($sp)
    /* 36154 801BF0CC 8000B68F */  lw         $s6, 0x80($sp)
    /* 36158 801BF0D0 7C00B58F */  lw         $s5, 0x7C($sp)
    /* 3615C 801BF0D4 7800B48F */  lw         $s4, 0x78($sp)
    /* 36160 801BF0D8 7400B38F */  lw         $s3, 0x74($sp)
    /* 36164 801BF0DC 7000B28F */  lw         $s2, 0x70($sp)
    /* 36168 801BF0E0 6C00B18F */  lw         $s1, 0x6C($sp)
    /* 3616C 801BF0E4 6800B08F */  lw         $s0, 0x68($sp)
    /* 36170 801BF0E8 9000BD27 */  addiu      $sp, $sp, 0x90
    /* 36174 801BF0EC 0800E003 */  jr         $ra
    /* 36178 801BF0F0 00000000 */   nop
endlabel func_801BE9F0
