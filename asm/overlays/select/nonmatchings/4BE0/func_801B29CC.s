nonmatching func_801B29CC, 0x730

glabel func_801B29CC
    /* 29A54 801B29CC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 29A58 801B29D0 2000B0AF */  sw         $s0, 0x20($sp)
    /* 29A5C 801B29D4 21808000 */  addu       $s0, $a0, $zero
    /* 29A60 801B29D8 2400B1AF */  sw         $s1, 0x24($sp)
    /* 29A64 801B29DC 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 29A68 801B29E0 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 29A6C 801B29E4 04000224 */  addiu      $v0, $zero, 0x4
    /* 29A70 801B29E8 2800BFAF */  sw         $ra, 0x28($sp)
    /* 29A74 801B29EC 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 29A78 801B29F0 50AE20A0 */  sb         $zero, %lo(D_801DAE50)($at)
    /* 29A7C 801B29F4 0E006214 */  bne        $v1, $v0, .L801B2A30
    /* 29A80 801B29F8 2188A000 */   addu      $s1, $a1, $zero
    /* 29A84 801B29FC 1E80033C */  lui        $v1, %hi(D_801DA2F0)
    /* 29A88 801B2A00 F0A26390 */  lbu        $v1, %lo(D_801DA2F0)($v1)
    /* 29A8C 801B2A04 01000224 */  addiu      $v0, $zero, 0x1
    /* 29A90 801B2A08 09006214 */  bne        $v1, $v0, .L801B2A30
    /* 29A94 801B2A0C 00000000 */   nop
    /* 29A98 801B2A10 0174000C */  jal        func_8001D004
    /* 29A9C 801B2A14 AC300424 */   addiu     $a0, $zero, 0x30AC
    /* 29AA0 801B2A18 36000324 */  addiu      $v1, $zero, 0x36
    /* 29AA4 801B2A1C 0A0043A0 */  sb         $v1, 0xA($v0)
    /* 29AA8 801B2A20 3FBF010C */  jal        func_8006FCFC
    /* 29AAC 801B2A24 36000424 */   addiu     $a0, $zero, 0x36
    /* 29AB0 801B2A28 90CA0608 */  j          .L801B2A40
    /* 29AB4 801B2A2C 00000000 */   nop
  .L801B2A30:
    /* 29AB8 801B2A30 0174000C */  jal        func_8001D004
    /* 29ABC 801B2A34 AC300424 */   addiu     $a0, $zero, 0x30AC
    /* 29AC0 801B2A38 5B000324 */  addiu      $v1, $zero, 0x5B
    /* 29AC4 801B2A3C 0A0043A0 */  sb         $v1, 0xA($v0)
  .L801B2A40:
    /* 29AC8 801B2A40 58D5060C */  jal        func_801B5560
    /* 29ACC 801B2A44 FF000432 */   andi      $a0, $s0, 0xFF
    /* 29AD0 801B2A48 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 29AD4 801B2A4C A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 29AD8 801B2A50 00100224 */  addiu      $v0, $zero, 0x1000
    /* 29ADC 801B2A54 3C006214 */  bne        $v1, $v0, .L801B2B48
    /* 29AE0 801B2A58 00400224 */   addiu     $v0, $zero, 0x4000
    /* 29AE4 801B2A5C 88AD020C */  jal        func_800AB620
    /* 29AE8 801B2A60 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 29AEC 801B2A64 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 29AF0 801B2A68 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 29AF4 801B2A6C 00000000 */  nop
    /* 29AF8 801B2A70 0600622C */  sltiu      $v0, $v1, 0x6
    /* 29AFC 801B2A74 9A014010 */  beqz       $v0, .L801B30E0
    /* 29B00 801B2A78 80100300 */   sll       $v0, $v1, 2
    /* 29B04 801B2A7C 1980013C */  lui        $at, %hi(jtbl_8018ACF4)
    /* 29B08 801B2A80 21082200 */  addu       $at, $at, $v0
    /* 29B0C 801B2A84 F4AC228C */  lw         $v0, %lo(jtbl_8018ACF4)($at)
    /* 29B10 801B2A88 00000000 */  nop
    /* 29B14 801B2A8C 08004000 */  jr         $v0
    /* 29B18 801B2A90 00000000 */   nop
  jlabel .L801B2A94
    /* 29B1C 801B2A94 88AD020C */  jal        func_800AB620
    /* 29B20 801B2A98 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 29B24 801B2A9C 1E80023C */  lui        $v0, %hi(D_801D8A82)
    /* 29B28 801B2AA0 828A4224 */  addiu      $v0, $v0, %lo(D_801D8A82)
    /* 29B2C 801B2AA4 1E80033C */  lui        $v1, %hi(D_801D8A84)
    /* 29B30 801B2AA8 848A6394 */  lhu        $v1, %lo(D_801D8A84)($v1)
    /* 29B34 801B2AAC 00004494 */  lhu        $a0, 0x0($v0)
    /* 29B38 801B2AB0 F0FF6324 */  addiu      $v1, $v1, -0x10
  .L801B2AB4:
    /* 29B3C 801B2AB4 000044A4 */  sh         $a0, 0x0($v0)
    /* 29B40 801B2AB8 1E80013C */  lui        $at, %hi(D_801D8A84)
    /* 29B44 801B2ABC 848A23A4 */  sh         $v1, %lo(D_801D8A84)($at)
    /* 29B48 801B2AC0 39CC0608 */  j          .L801B30E4
    /* 29B4C 801B2AC4 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801B2AC8
    /* 29B50 801B2AC8 02000224 */  addiu      $v0, $zero, 0x2
  .L801B2ACC:
    /* 29B54 801B2ACC 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 29B58 801B2AD0 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 29B5C 801B2AD4 39CC0608 */  j          .L801B30E4
    /* 29B60 801B2AD8 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801B2ADC
    /* 29B64 801B2ADC 0B80023C */  lui        $v0, %hi(D_800AD638)
    /* 29B68 801B2AE0 38D64294 */  lhu        $v0, %lo(D_800AD638)($v0)
    /* 29B6C 801B2AE4 00000000 */  nop
    /* 29B70 801B2AE8 05004010 */  beqz       $v0, .L801B2B00
    /* 29B74 801B2AEC FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 29B78 801B2AF0 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 29B7C 801B2AF4 38D622A4 */  sh         $v0, %lo(D_800AD638)($at)
    /* 29B80 801B2AF8 26CB0608 */  j          .L801B2C98
    /* 29B84 801B2AFC 00000000 */   nop
  .L801B2B00:
    /* 29B88 801B2B00 1E80033C */  lui        $v1, %hi(D_801DA5D2)
    /* 29B8C 801B2B04 D2A56324 */  addiu      $v1, $v1, %lo(D_801DA5D2)
    /* 29B90 801B2B08 00006284 */  lh         $v0, 0x0($v1)
    /* 29B94 801B2B0C 00000000 */  nop
    /* 29B98 801B2B10 04004018 */  blez       $v0, .L801B2B24
    /* 29B9C 801B2B14 21284000 */   addu      $a1, $v0, $zero
    /* 29BA0 801B2B18 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 29BA4 801B2B1C 17CB0608 */  j          .L801B2C5C
    /* 29BA8 801B2B20 000065A4 */   sh        $a1, 0x0($v1)
  .L801B2B24:
    /* 29BAC 801B2B24 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 29BB0 801B2B28 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 29BB4 801B2B2C 04000224 */  addiu      $v0, $zero, 0x4
    /* 29BB8 801B2B30 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 29BBC 801B2B34 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 29BC0 801B2B38 1E80013C */  lui        $at, %hi(D_801D8A51)
    /* 29BC4 801B2B3C 518A23A0 */  sb         $v1, %lo(D_801D8A51)($at)
    /* 29BC8 801B2B40 26CB0608 */  j          .L801B2C98
    /* 29BCC 801B2B44 00000000 */   nop
  .L801B2B48:
    /* 29BD0 801B2B48 68006214 */  bne        $v1, $v0, .L801B2CEC
    /* 29BD4 801B2B4C 00800234 */   ori       $v0, $zero, 0x8000
    /* 29BD8 801B2B50 88AD020C */  jal        func_800AB620
    /* 29BDC 801B2B54 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 29BE0 801B2B58 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 29BE4 801B2B5C 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 29BE8 801B2B60 00000000 */  nop
    /* 29BEC 801B2B64 0600622C */  sltiu      $v0, $v1, 0x6
    /* 29BF0 801B2B68 5D014010 */  beqz       $v0, .L801B30E0
    /* 29BF4 801B2B6C 80100300 */   sll       $v0, $v1, 2
    /* 29BF8 801B2B70 1980013C */  lui        $at, %hi(jtbl_8018AD0C)
    /* 29BFC 801B2B74 21082200 */  addu       $at, $at, $v0
    /* 29C00 801B2B78 0CAD228C */  lw         $v0, %lo(jtbl_8018AD0C)($at)
    /* 29C04 801B2B7C 00000000 */  nop
    /* 29C08 801B2B80 08004000 */  jr         $v0
    /* 29C0C 801B2B84 00000000 */   nop
  jlabel .L801B2B88
    /* 29C10 801B2B88 88AD020C */  jal        func_800AB620
    /* 29C14 801B2B8C 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 29C18 801B2B90 1E80023C */  lui        $v0, %hi(D_801D8A82)
    /* 29C1C 801B2B94 828A4224 */  addiu      $v0, $v0, %lo(D_801D8A82)
    /* 29C20 801B2B98 1E80033C */  lui        $v1, %hi(D_801D8A84)
    /* 29C24 801B2B9C 848A6394 */  lhu        $v1, %lo(D_801D8A84)($v1)
    /* 29C28 801B2BA0 00004494 */  lhu        $a0, 0x0($v0)
    /* 29C2C 801B2BA4 ADCA0608 */  j          .L801B2AB4
    /* 29C30 801B2BA8 10006324 */   addiu     $v1, $v1, 0x10
  jlabel .L801B2BAC
    /* 29C34 801B2BAC 1E80023C */  lui        $v0, %hi(D_801D8A51)
    /* 29C38 801B2BB0 518A4290 */  lbu        $v0, %lo(D_801D8A51)($v0)
    /* 29C3C 801B2BB4 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 29C40 801B2BB8 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 29C44 801B2BBC 0200422C */  sltiu      $v0, $v0, 0x2
    /* 29C48 801B2BC0 48014010 */  beqz       $v0, .L801B30E4
    /* 29C4C 801B2BC4 21100000 */   addu      $v0, $zero, $zero
    /* 29C50 801B2BC8 26CB0608 */  j          .L801B2C98
    /* 29C54 801B2BCC 00000000 */   nop
  jlabel .L801B2BD0
    /* 29C58 801B2BD0 0B80053C */  lui        $a1, %hi(D_800AD638)
    /* 29C5C 801B2BD4 38D6A594 */  lhu        $a1, %lo(D_800AD638)($a1)
    /* 29C60 801B2BD8 00000000 */  nop
    /* 29C64 801B2BDC 0800A22C */  sltiu      $v0, $a1, 0x8
    /* 29C68 801B2BE0 13004010 */  beqz       $v0, .L801B2C30
    /* 29C6C 801B2BE4 0100A324 */   addiu     $v1, $a1, 0x1
    /* 29C70 801B2BE8 1E80023C */  lui        $v0, %hi(D_801DA5D2)
    /* 29C74 801B2BEC D2A54284 */  lh         $v0, %lo(D_801DA5D2)($v0)
    /* 29C78 801B2BF0 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 29C7C 801B2BF4 38D623A4 */  sh         $v1, %lo(D_800AD638)($at)
    /* 29C80 801B2BF8 FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* 29C84 801B2BFC 21104300 */  addu       $v0, $v0, $v1
    /* 29C88 801B2C00 41004228 */  slti       $v0, $v0, 0x41
    /* 29C8C 801B2C04 24004014 */  bnez       $v0, .L801B2C98
    /* 29C90 801B2C08 00000000 */   nop
    /* 29C94 801B2C0C 1E80023C */  lui        $v0, %hi(D_801D8A82)
    /* 29C98 801B2C10 828A4224 */  addiu      $v0, $v0, %lo(D_801D8A82)
    /* 29C9C 801B2C14 00004494 */  lhu        $a0, 0x0($v0)
    /* 29CA0 801B2C18 1E80033C */  lui        $v1, %hi(D_801D8A84)
    /* 29CA4 801B2C1C 848A6394 */  lhu        $v1, %lo(D_801D8A84)($v1)
    /* 29CA8 801B2C20 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 29CAC 801B2C24 38D625A4 */  sh         $a1, %lo(D_800AD638)($at)
    /* 29CB0 801B2C28 23CB0608 */  j          .L801B2C8C
    /* 29CB4 801B2C2C 10006324 */   addiu     $v1, $v1, 0x10
  .L801B2C30:
    /* 29CB8 801B2C30 1E80043C */  lui        $a0, %hi(D_801DA5D2)
    /* 29CBC 801B2C34 D2A58424 */  addiu      $a0, $a0, %lo(D_801DA5D2)
    /* 29CC0 801B2C38 00008284 */  lh         $v0, 0x0($a0)
    /* 29CC4 801B2C3C 1E80033C */  lui        $v1, %hi(D_801DA5D6)
    /* 29CC8 801B2C40 D6A56384 */  lh         $v1, %lo(D_801DA5D6)($v1)
    /* 29CCC 801B2C44 21284000 */  addu       $a1, $v0, $zero
    /* 29CD0 801B2C48 21104300 */  addu       $v0, $v0, $v1
    /* 29CD4 801B2C4C 41004228 */  slti       $v0, $v0, 0x41
    /* 29CD8 801B2C50 08004010 */  beqz       $v0, .L801B2C74
    /* 29CDC 801B2C54 0100A524 */   addiu     $a1, $a1, 0x1
    /* 29CE0 801B2C58 000085A4 */  sh         $a1, 0x0($a0)
  .L801B2C5C:
    /* 29CE4 801B2C5C 21200000 */  addu       $a0, $zero, $zero
    /* 29CE8 801B2C60 002C0500 */  sll        $a1, $a1, 16
    /* 29CEC 801B2C64 38CE060C */  jal        func_801B38E0
    /* 29CF0 801B2C68 032C0500 */   sra       $a1, $a1, 16
    /* 29CF4 801B2C6C 26CB0608 */  j          .L801B2C98
    /* 29CF8 801B2C70 00000000 */   nop
  .L801B2C74:
    /* 29CFC 801B2C74 1E80023C */  lui        $v0, %hi(D_801D8A82)
    /* 29D00 801B2C78 828A4224 */  addiu      $v0, $v0, %lo(D_801D8A82)
    /* 29D04 801B2C7C 1E80033C */  lui        $v1, %hi(D_801D8A84)
    /* 29D08 801B2C80 848A6394 */  lhu        $v1, %lo(D_801D8A84)($v1)
    /* 29D0C 801B2C84 00004494 */  lhu        $a0, 0x0($v0)
    /* 29D10 801B2C88 10006324 */  addiu      $v1, $v1, 0x10
  .L801B2C8C:
    /* 29D14 801B2C8C 000044A4 */  sh         $a0, 0x0($v0)
    /* 29D18 801B2C90 1E80013C */  lui        $at, %hi(D_801D8A84)
    /* 29D1C 801B2C94 848A23A4 */  sh         $v1, %lo(D_801D8A84)($at)
  .L801B2C98:
    /* 29D20 801B2C98 0B80023C */  lui        $v0, %hi(D_800AD638)
    /* 29D24 801B2C9C 38D64294 */  lhu        $v0, %lo(D_800AD638)($v0)
    /* 29D28 801B2CA0 1E80033C */  lui        $v1, %hi(D_801DA5D2)
    /* 29D2C 801B2CA4 D2A56384 */  lh         $v1, %lo(D_801DA5D2)($v1)
    /* 29D30 801B2CA8 00000000 */  nop
    /* 29D34 801B2CAC 21104300 */  addu       $v0, $v0, $v1
    /* 29D38 801B2CB0 40180200 */  sll        $v1, $v0, 1
    /* 29D3C 801B2CB4 21186200 */  addu       $v1, $v1, $v0
    /* 29D40 801B2CB8 00110300 */  sll        $v0, $v1, 4
    /* 29D44 801B2CBC 23104300 */  subu       $v0, $v0, $v1
    /* 29D48 801B2CC0 1E80013C */  lui        $at, %hi(D_801D94E8)
    /* 29D4C 801B2CC4 21082200 */  addu       $at, $at, $v0
    /* 29D50 801B2CC8 E8942390 */  lbu        $v1, %lo(D_801D94E8)($at)
    /* 29D54 801B2CCC FF000224 */  addiu      $v0, $zero, 0xFF
    /* 29D58 801B2CD0 04016214 */  bne        $v1, $v0, .L801B30E4
    /* 29D5C 801B2CD4 21100000 */   addu      $v0, $zero, $zero
    /* 29D60 801B2CD8 FF000432 */  andi       $a0, $s0, 0xFF
    /* 29D64 801B2CDC 73CA060C */  jal        func_801B29CC
    /* 29D68 801B2CE0 FF002532 */   andi      $a1, $s1, 0xFF
    /* 29D6C 801B2CE4 39CC0608 */  j          .L801B30E4
    /* 29D70 801B2CE8 21100000 */   addu      $v0, $zero, $zero
  .L801B2CEC:
    /* 29D74 801B2CEC 4F006214 */  bne        $v1, $v0, .L801B2E2C
    /* 29D78 801B2CF0 00200224 */   addiu     $v0, $zero, 0x2000
    /* 29D7C 801B2CF4 88AD020C */  jal        func_800AB620
    /* 29D80 801B2CF8 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 29D84 801B2CFC 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 29D88 801B2D00 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 29D8C 801B2D04 00000000 */  nop
    /* 29D90 801B2D08 0600622C */  sltiu      $v0, $v1, 0x6
    /* 29D94 801B2D0C F4004010 */  beqz       $v0, .L801B30E0
    /* 29D98 801B2D10 80100300 */   sll       $v0, $v1, 2
    /* 29D9C 801B2D14 1980013C */  lui        $at, %hi(jtbl_8018AD24)
    /* 29DA0 801B2D18 21082200 */  addu       $at, $at, $v0
    /* 29DA4 801B2D1C 24AD228C */  lw         $v0, %lo(jtbl_8018AD24)($at)
    /* 29DA8 801B2D20 00000000 */  nop
    /* 29DAC 801B2D24 08004000 */  jr         $v0
    /* 29DB0 801B2D28 00000000 */   nop
  jlabel .L801B2D2C
    /* 29DB4 801B2D2C 88AD020C */  jal        func_800AB620
    /* 29DB8 801B2D30 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 29DBC 801B2D34 1E80023C */  lui        $v0, %hi(D_801D8A82)
    /* 29DC0 801B2D38 828A4224 */  addiu      $v0, $v0, %lo(D_801D8A82)
    /* 29DC4 801B2D3C 00004394 */  lhu        $v1, 0x0($v0)
    /* 29DC8 801B2D40 1E80043C */  lui        $a0, %hi(D_801D8A84)
    /* 29DCC 801B2D44 848A8494 */  lhu        $a0, %lo(D_801D8A84)($a0)
    /* 29DD0 801B2D48 F0FF6324 */  addiu      $v1, $v1, -0x10
  .L801B2D4C:
    /* 29DD4 801B2D4C 000043A4 */  sh         $v1, 0x0($v0)
    /* 29DD8 801B2D50 1E80013C */  lui        $at, %hi(D_801D8A84)
    /* 29DDC 801B2D54 848A24A4 */  sh         $a0, %lo(D_801D8A84)($at)
    /* 29DE0 801B2D58 39CC0608 */  j          .L801B30E4
    /* 29DE4 801B2D5C 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801B2D60
    /* 29DE8 801B2D60 1E80023C */  lui        $v0, %hi(D_801D8A51)
    /* 29DEC 801B2D64 518A4290 */  lbu        $v0, %lo(D_801D8A51)($v0)
    /* 29DF0 801B2D68 02000324 */  addiu      $v1, $zero, 0x2
    /* 29DF4 801B2D6C 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 29DF8 801B2D70 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 29DFC 801B2D74 FF004230 */  andi       $v0, $v0, 0xFF
    /* 29E00 801B2D78 03004314 */  bne        $v0, $v1, .L801B2D88
    /* 29E04 801B2D7C 01000224 */   addiu     $v0, $zero, 0x1
    /* 29E08 801B2D80 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 29E0C 801B2D84 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
  .L801B2D88:
    /* 29E10 801B2D88 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 29E14 801B2D8C 38D68494 */  lhu        $a0, %lo(D_800AD638)($a0)
    /* 29E18 801B2D90 1E80023C */  lui        $v0, %hi(D_801DA5D2)
    /* 29E1C 801B2D94 D2A54284 */  lh         $v0, %lo(D_801DA5D2)($v0)
    /* 29E20 801B2D98 74CB0608 */  j          .L801B2DD0
    /* 29E24 801B2D9C 21108200 */   addu      $v0, $a0, $v0
  jlabel .L801B2DA0
    /* 29E28 801B2DA0 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 29E2C 801B2DA4 84AD20A0 */  sb         $zero, %lo(D_801DAD84)($at)
    /* 29E30 801B2DA8 39CC0608 */  j          .L801B30E4
    /* 29E34 801B2DAC 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801B2DB0
    /* 29E38 801B2DB0 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 29E3C 801B2DB4 38D68494 */  lhu        $a0, %lo(D_800AD638)($a0)
    /* 29E40 801B2DB8 1E80023C */  lui        $v0, %hi(D_801DA5D2)
    /* 29E44 801B2DBC D2A54284 */  lh         $v0, %lo(D_801DA5D2)($v0)
    /* 29E48 801B2DC0 01000324 */  addiu      $v1, $zero, 0x1
    /* 29E4C 801B2DC4 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 29E50 801B2DC8 84AD23A0 */  sb         $v1, %lo(D_801DAD84)($at)
    /* 29E54 801B2DCC 21108200 */  addu       $v0, $a0, $v0
  .L801B2DD0:
    /* 29E58 801B2DD0 40180200 */  sll        $v1, $v0, 1
    /* 29E5C 801B2DD4 21186200 */  addu       $v1, $v1, $v0
    /* 29E60 801B2DD8 00110300 */  sll        $v0, $v1, 4
    /* 29E64 801B2DDC 23104300 */  subu       $v0, $v0, $v1
    /* 29E68 801B2DE0 1E80013C */  lui        $at, %hi(D_801D94E8)
    /* 29E6C 801B2DE4 21082200 */  addu       $at, $at, $v0
    /* 29E70 801B2DE8 E8942390 */  lbu        $v1, %lo(D_801D94E8)($at)
    /* 29E74 801B2DEC FF000224 */  addiu      $v0, $zero, 0xFF
    /* 29E78 801B2DF0 03006214 */  bne        $v1, $v0, .L801B2E00
    /* 29E7C 801B2DF4 01008224 */   addiu     $v0, $a0, 0x1
    /* 29E80 801B2DF8 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 29E84 801B2DFC 38D622A4 */  sh         $v0, %lo(D_800AD638)($at)
  .L801B2E00:
    /* 29E88 801B2E00 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 29E8C 801B2E04 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 29E90 801B2E08 00000000 */  nop
    /* 29E94 801B2E0C 0900622C */  sltiu      $v0, $v1, 0x9
    /* 29E98 801B2E10 B4004014 */  bnez       $v0, .L801B30E4
    /* 29E9C 801B2E14 21100000 */   addu      $v0, $zero, $zero
    /* 29EA0 801B2E18 FEFF6224 */  addiu      $v0, $v1, -0x2
    /* 29EA4 801B2E1C 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 29EA8 801B2E20 38D622A4 */  sh         $v0, %lo(D_800AD638)($at)
    /* 29EAC 801B2E24 39CC0608 */  j          .L801B30E4
    /* 29EB0 801B2E28 21100000 */   addu      $v0, $zero, $zero
  .L801B2E2C:
    /* 29EB4 801B2E2C 20006214 */  bne        $v1, $v0, .L801B2EB0
    /* 29EB8 801B2E30 20000224 */   addiu     $v0, $zero, 0x20
    /* 29EBC 801B2E34 88AD020C */  jal        func_800AB620
    /* 29EC0 801B2E38 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 29EC4 801B2E3C 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 29EC8 801B2E40 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 29ECC 801B2E44 00000000 */  nop
    /* 29ED0 801B2E48 0600622C */  sltiu      $v0, $v1, 0x6
    /* 29ED4 801B2E4C A4004010 */  beqz       $v0, .L801B30E0
    /* 29ED8 801B2E50 80100300 */   sll       $v0, $v1, 2
    /* 29EDC 801B2E54 1980013C */  lui        $at, %hi(jtbl_8018AD3C)
    /* 29EE0 801B2E58 21082200 */  addu       $at, $at, $v0
    /* 29EE4 801B2E5C 3CAD228C */  lw         $v0, %lo(jtbl_8018AD3C)($at)
    /* 29EE8 801B2E60 00000000 */  nop
    /* 29EEC 801B2E64 08004000 */  jr         $v0
    /* 29EF0 801B2E68 00000000 */   nop
  jlabel .L801B2E6C
    /* 29EF4 801B2E6C 1E80023C */  lui        $v0, %hi(D_801D8A82)
    /* 29EF8 801B2E70 828A4224 */  addiu      $v0, $v0, %lo(D_801D8A82)
    /* 29EFC 801B2E74 00004394 */  lhu        $v1, 0x0($v0)
    /* 29F00 801B2E78 1E80043C */  lui        $a0, %hi(D_801D8A84)
    /* 29F04 801B2E7C 848A8494 */  lhu        $a0, %lo(D_801D8A84)($a0)
    /* 29F08 801B2E80 53CB0608 */  j          .L801B2D4C
    /* 29F0C 801B2E84 10006324 */   addiu     $v1, $v1, 0x10
  jlabel .L801B2E88
    /* 29F10 801B2E88 B3CA0608 */  j          .L801B2ACC
    /* 29F14 801B2E8C 01000224 */   addiu     $v0, $zero, 0x1
  jlabel .L801B2E90
    /* 29F18 801B2E90 0B80023C */  lui        $v0, %hi(D_800AD638)
    /* 29F1C 801B2E94 38D64294 */  lhu        $v0, %lo(D_800AD638)($v0)
    /* 29F20 801B2E98 00000000 */  nop
    /* 29F24 801B2E9C 0500422C */  sltiu      $v0, $v0, 0x5
    /* 29F28 801B2EA0 0AFF4014 */  bnez       $v0, .L801B2ACC
    /* 29F2C 801B2EA4 02000224 */   addiu     $v0, $zero, 0x2
  jlabel .L801B2EA8
    /* 29F30 801B2EA8 B3CA0608 */  j          .L801B2ACC
    /* 29F34 801B2EAC 03000224 */   addiu     $v0, $zero, 0x3
  .L801B2EB0:
    /* 29F38 801B2EB0 62006214 */  bne        $v1, $v0, .L801B303C
    /* 29F3C 801B2EB4 40000224 */   addiu     $v0, $zero, 0x40
    /* 29F40 801B2EB8 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 29F44 801B2EBC 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 29F48 801B2EC0 00000000 */  nop
    /* 29F4C 801B2EC4 0600622C */  sltiu      $v0, $v1, 0x6
    /* 29F50 801B2EC8 85004010 */  beqz       $v0, .L801B30E0
    /* 29F54 801B2ECC 80100300 */   sll       $v0, $v1, 2
    /* 29F58 801B2ED0 1980013C */  lui        $at, %hi(jtbl_8018AD54)
    /* 29F5C 801B2ED4 21082200 */  addu       $at, $at, $v0
    /* 29F60 801B2ED8 54AD228C */  lw         $v0, %lo(jtbl_8018AD54)($at)
    /* 29F64 801B2EDC 00000000 */  nop
    /* 29F68 801B2EE0 08004000 */  jr         $v0
    /* 29F6C 801B2EE4 00000000 */   nop
  jlabel .L801B2EE8
    /* 29F70 801B2EE8 1E80033C */  lui        $v1, %hi(D_801DA5D2)
    /* 29F74 801B2EEC D2A56384 */  lh         $v1, %lo(D_801DA5D2)($v1)
    /* 29F78 801B2EF0 0B80023C */  lui        $v0, %hi(D_800AD638)
    /* 29F7C 801B2EF4 38D64294 */  lhu        $v0, %lo(D_800AD638)($v0)
    /* 29F80 801B2EF8 00000000 */  nop
    /* 29F84 801B2EFC 21186200 */  addu       $v1, $v1, $v0
    /* 29F88 801B2F00 40100300 */  sll        $v0, $v1, 1
    /* 29F8C 801B2F04 21104300 */  addu       $v0, $v0, $v1
    /* 29F90 801B2F08 00190200 */  sll        $v1, $v0, 4
    /* 29F94 801B2F0C 23206200 */  subu       $a0, $v1, $v0
    /* 29F98 801B2F10 1E80013C */  lui        $at, %hi(D_801D94E8)
    /* 29F9C 801B2F14 21082400 */  addu       $at, $at, $a0
    /* 29FA0 801B2F18 E8942390 */  lbu        $v1, %lo(D_801D94E8)($at)
    /* 29FA4 801B2F1C FF000224 */  addiu      $v0, $zero, 0xFF
    /* 29FA8 801B2F20 70006210 */  beq        $v1, $v0, .L801B30E4
    /* 29FAC 801B2F24 21100000 */   addu      $v0, $zero, $zero
    /* 29FB0 801B2F28 1E80023C */  lui        $v0, %hi(D_801D94E8)
    /* 29FB4 801B2F2C E8944224 */  addiu      $v0, $v0, %lo(D_801D94E8)
    /* 29FB8 801B2F30 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 29FBC 801B2F34 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 29FC0 801B2F38 21108200 */  addu       $v0, $a0, $v0
    /* 29FC4 801B2F3C 21104300 */  addu       $v0, $v0, $v1
    /* 29FC8 801B2F40 00004590 */  lbu        $a1, 0x0($v0)
    /* 29FCC 801B2F44 44AE060C */  jal        func_801AB910
    /* 29FD0 801B2F48 21200000 */   addu      $a0, $zero, $zero
    /* 29FD4 801B2F4C 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 29FD8 801B2F50 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 29FDC 801B2F54 05000224 */  addiu      $v0, $zero, 0x5
    /* 29FE0 801B2F58 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 29FE4 801B2F5C 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 29FE8 801B2F60 1E80013C */  lui        $at, %hi(D_801D8A51)
    /* 29FEC 801B2F64 518A23A0 */  sb         $v1, %lo(D_801D8A51)($at)
    /* 29FF0 801B2F68 88AD020C */  jal        func_800AB620
    /* 29FF4 801B2F6C 28050424 */   addiu     $a0, $zero, 0x528
    /* 29FF8 801B2F70 39CC0608 */  j          .L801B30E4
    /* 29FFC 801B2F74 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801B2F78
    /* 2A000 801B2F78 88AD020C */  jal        func_800AB620
    /* 2A004 801B2F7C 28050424 */   addiu     $a0, $zero, 0x528
    /* 2A008 801B2F80 02000224 */  addiu      $v0, $zero, 0x2
    /* 2A00C 801B2F84 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 2A010 801B2F88 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
    /* 2A014 801B2F8C 39CC0608 */  j          .L801B30E4
    /* 2A018 801B2F90 02000224 */   addiu     $v0, $zero, 0x2
  jlabel .L801B2F94
    /* 2A01C 801B2F94 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 2A020 801B2F98 1E80023C */  lui        $v0, %hi(D_801D8A51)
    /* 2A024 801B2F9C 518A4290 */  lbu        $v0, %lo(D_801D8A51)($v0)
    /* 2A028 801B2FA0 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 2A02C 801B2FA4 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 2A030 801B2FA8 44AE060C */  jal        func_801AB910
    /* 2A034 801B2FAC 21280000 */   addu      $a1, $zero, $zero
    /* 2A038 801B2FB0 39CC0608 */  j          .L801B30E4
    /* 2A03C 801B2FB4 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801B2FB8
    /* 2A040 801B2FB8 1E80103C */  lui        $s0, %hi(D_801DA5D2)
    /* 2A044 801B2FBC D2A51026 */  addiu      $s0, $s0, %lo(D_801DA5D2)
    /* 2A048 801B2FC0 00000286 */  lh         $v0, 0x0($s0)
    /* 2A04C 801B2FC4 00000000 */  nop
    /* 2A050 801B2FC8 45004010 */  beqz       $v0, .L801B30E0
    /* 2A054 801B2FCC 00000000 */   nop
    /* 2A058 801B2FD0 88AD020C */  jal        func_800AB620
    /* 2A05C 801B2FD4 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 2A060 801B2FD8 00000296 */  lhu        $v0, 0x0($s0)
    /* 2A064 801B2FDC 21200000 */  addu       $a0, $zero, $zero
    /* 2A068 801B2FE0 09CC0608 */  j          .L801B3024
    /* 2A06C 801B2FE4 FFFF4224 */   addiu     $v0, $v0, -0x1
  jlabel .L801B2FE8
    /* 2A070 801B2FE8 1E80103C */  lui        $s0, %hi(D_801DA5D2)
    /* 2A074 801B2FEC D2A51026 */  addiu      $s0, $s0, %lo(D_801DA5D2)
    /* 2A078 801B2FF0 00000286 */  lh         $v0, 0x0($s0)
    /* 2A07C 801B2FF4 1E80033C */  lui        $v1, %hi(D_801DA5D6)
    /* 2A080 801B2FF8 D6A56384 */  lh         $v1, %lo(D_801DA5D6)($v1)
    /* 2A084 801B2FFC 00000000 */  nop
    /* 2A088 801B3000 21104300 */  addu       $v0, $v0, $v1
    /* 2A08C 801B3004 41004228 */  slti       $v0, $v0, 0x41
    /* 2A090 801B3008 36004010 */  beqz       $v0, .L801B30E4
    /* 2A094 801B300C 21100000 */   addu      $v0, $zero, $zero
    /* 2A098 801B3010 88AD020C */  jal        func_800AB620
    /* 2A09C 801B3014 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 2A0A0 801B3018 00000296 */  lhu        $v0, 0x0($s0)
    /* 2A0A4 801B301C 21200000 */  addu       $a0, $zero, $zero
    /* 2A0A8 801B3020 01004224 */  addiu      $v0, $v0, 0x1
  .L801B3024:
    /* 2A0AC 801B3024 002C0200 */  sll        $a1, $v0, 16
    /* 2A0B0 801B3028 032C0500 */  sra        $a1, $a1, 16
    /* 2A0B4 801B302C 38CE060C */  jal        func_801B38E0
    /* 2A0B8 801B3030 000002A6 */   sh        $v0, 0x0($s0)
    /* 2A0BC 801B3034 39CC0608 */  j          .L801B30E4
    /* 2A0C0 801B3038 21100000 */   addu      $v0, $zero, $zero
  .L801B303C:
    /* 2A0C4 801B303C 29006214 */  bne        $v1, $v0, .L801B30E4
    /* 2A0C8 801B3040 21100000 */   addu      $v0, $zero, $zero
    /* 2A0CC 801B3044 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 2A0D0 801B3048 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 2A0D4 801B304C 04000224 */  addiu      $v0, $zero, 0x4
    /* 2A0D8 801B3050 05006210 */  beq        $v1, $v0, .L801B3068
    /* 2A0DC 801B3054 05000224 */   addiu     $v0, $zero, 0x5
    /* 2A0E0 801B3058 0D006210 */  beq        $v1, $v0, .L801B3090
    /* 2A0E4 801B305C 00000000 */   nop
    /* 2A0E8 801B3060 2FCC0608 */  j          .L801B30BC
    /* 2A0EC 801B3064 00000000 */   nop
  .L801B3068:
    /* 2A0F0 801B3068 FF002232 */  andi       $v0, $s1, 0xFF
    /* 2A0F4 801B306C 1C004014 */  bnez       $v0, .L801B30E0
    /* 2A0F8 801B3070 00000000 */   nop
    /* 2A0FC 801B3074 88AD020C */  jal        func_800AB620
    /* 2A100 801B3078 29050424 */   addiu     $a0, $zero, 0x529
    /* 2A104 801B307C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2A108 801B3080 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 2A10C 801B3084 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
    /* 2A110 801B3088 39CC0608 */  j          .L801B30E4
    /* 2A114 801B308C 01000224 */   addiu     $v0, $zero, 0x1
  .L801B3090:
    /* 2A118 801B3090 88AD020C */  jal        func_800AB620
    /* 2A11C 801B3094 29050424 */   addiu     $a0, $zero, 0x529
    /* 2A120 801B3098 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 2A124 801B309C 1E80023C */  lui        $v0, %hi(D_801D8A51)
    /* 2A128 801B30A0 518A4290 */  lbu        $v0, %lo(D_801D8A51)($v0)
    /* 2A12C 801B30A4 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 2A130 801B30A8 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 2A134 801B30AC 44AE060C */  jal        func_801AB910
    /* 2A138 801B30B0 21280000 */   addu      $a1, $zero, $zero
    /* 2A13C 801B30B4 39CC0608 */  j          .L801B30E4
    /* 2A140 801B30B8 21100000 */   addu      $v0, $zero, $zero
  .L801B30BC:
    /* 2A144 801B30BC 88AD020C */  jal        func_800AB620
    /* 2A148 801B30C0 29050424 */   addiu     $a0, $zero, 0x529
  jlabel .L801B30C4
    /* 2A14C 801B30C4 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 2A150 801B30C8 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 2A154 801B30CC 04000224 */  addiu      $v0, $zero, 0x4
    /* 2A158 801B30D0 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 2A15C 801B30D4 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 2A160 801B30D8 1E80013C */  lui        $at, %hi(D_801D8A51)
    /* 2A164 801B30DC 518A23A0 */  sb         $v1, %lo(D_801D8A51)($at)
  .L801B30E0:
    /* 2A168 801B30E0 21100000 */  addu       $v0, $zero, $zero
  .L801B30E4:
    /* 2A16C 801B30E4 2800BF8F */  lw         $ra, 0x28($sp)
    /* 2A170 801B30E8 2400B18F */  lw         $s1, 0x24($sp)
    /* 2A174 801B30EC 2000B08F */  lw         $s0, 0x20($sp)
    /* 2A178 801B30F0 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2A17C 801B30F4 0800E003 */  jr         $ra
    /* 2A180 801B30F8 00000000 */   nop
endlabel func_801B29CC
