nonmatching func_8018FB8C, 0x250

glabel func_8018FB8C
    /* 6C14 8018FB8C 1180033C */  lui        $v1, %hi(D_8010A394)
    /* 6C18 8018FB90 94A36394 */  lhu        $v1, %lo(D_8010A394)($v1)
    /* 6C1C 8018FB94 1180073C */  lui        $a3, %hi(D_8010A392)
    /* 6C20 8018FB98 92A3E790 */  lbu        $a3, %lo(D_8010A392)($a3)
    /* 6C24 8018FB9C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6C28 8018FBA0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6C2C 8018FBA4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6C30 8018FBA8 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 6C34 8018FBAC 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 6C38 8018FBB0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 6C3C 8018FBB4 01006324 */  addiu      $v1, $v1, 0x1
    /* 6C40 8018FBB8 1180013C */  lui        $at, %hi(D_8010A394)
    /* 6C44 8018FBBC 94A323A4 */  sh         $v1, %lo(D_8010A394)($at)
    /* 6C48 8018FBC0 FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* 6C4C 8018FBC4 FF00E430 */  andi       $a0, $a3, 0xFF
    /* 6C50 8018FBC8 00110400 */  sll        $v0, $a0, 4
    /* 6C54 8018FBCC 23104400 */  subu       $v0, $v0, $a0
    /* 6C58 8018FBD0 40100200 */  sll        $v0, $v0, 1
    /* 6C5C 8018FBD4 0F004224 */  addiu      $v0, $v0, 0xF
    /* 6C60 8018FBD8 1E006214 */  bne        $v1, $v0, .L8018FC54
    /* 6C64 8018FBDC 801F113C */   lui       $s1, (0x1F8002DD >> 16)
    /* 6C68 8018FBE0 0B00822C */  sltiu      $v0, $a0, 0xB
    /* 6C6C 8018FBE4 1B004010 */  beqz       $v0, .L8018FC54
    /* 6C70 8018FBE8 01000524 */   addiu     $a1, $zero, 0x1
    /* 6C74 8018FBEC 21300000 */  addu       $a2, $zero, $zero
    /* 6C78 8018FBF0 1180033C */  lui        $v1, %hi(D_8010865D)
    /* 6C7C 8018FBF4 5D866390 */  lbu        $v1, %lo(D_8010865D)($v1)
    /* 6C80 8018FBF8 0100E224 */  addiu      $v0, $a3, 0x1
    /* 6C84 8018FBFC 1180013C */  lui        $at, %hi(D_8010A392)
    /* 6C88 8018FC00 92A322A0 */  sb         $v0, %lo(D_8010A392)($at)
    /* 6C8C 8018FC04 40100300 */  sll        $v0, $v1, 1
    /* 6C90 8018FC08 21104300 */  addu       $v0, $v0, $v1
    /* 6C94 8018FC0C 80100200 */  sll        $v0, $v0, 2
    /* 6C98 8018FC10 23104300 */  subu       $v0, $v0, $v1
    /* 6C9C 8018FC14 80100200 */  sll        $v0, $v0, 2
    /* 6CA0 8018FC18 23104300 */  subu       $v0, $v0, $v1
    /* 6CA4 8018FC1C 40110200 */  sll        $v0, $v0, 5
    /* 6CA8 8018FC20 23104300 */  subu       $v0, $v0, $v1
    /* 6CAC 8018FC24 C0100200 */  sll        $v0, $v0, 3
    /* 6CB0 8018FC28 E8034224 */  addiu      $v0, $v0, 0x3E8
    /* 6CB4 8018FC2C 21105000 */  addu       $v0, $v0, $s0
    /* 6CB8 8018FC30 0A000324 */  addiu      $v1, $zero, 0xA
    /* 6CBC 8018FC34 23186400 */  subu       $v1, $v1, $a0
    /* 6CC0 8018FC38 40210300 */  sll        $a0, $v1, 5
    /* 6CC4 8018FC3C 23208300 */  subu       $a0, $a0, $v1
    /* 6CC8 8018FC40 80200400 */  sll        $a0, $a0, 2
    /* 6CCC 8018FC44 21208300 */  addu       $a0, $a0, $v1
    /* 6CD0 8018FC48 C0200400 */  sll        $a0, $a0, 3
    /* 6CD4 8018FC4C B95E010C */  jal        func_80057AE4
    /* 6CD8 8018FC50 21204400 */   addu      $a0, $v0, $a0
  .L8018FC54:
    /* 6CDC 8018FC54 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6CE0 8018FC58 21080102 */  addu       $at, $s0, $at
    /* 6CE4 8018FC5C 4CAC2394 */  lhu        $v1, -0x53B4($at)
    /* 6CE8 8018FC60 68010224 */  addiu      $v0, $zero, 0x168
    /* 6CEC 8018FC64 11006214 */  bne        $v1, $v0, .L8018FCAC
    /* 6CF0 8018FC68 00000000 */   nop
    /* 6CF4 8018FC6C 88AD020C */  jal        func_800AB620
    /* 6CF8 8018FC70 7C100424 */   addiu     $a0, $zero, 0x107C
    /* 6CFC 8018FC74 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6D00 8018FC78 21080102 */  addu       $at, $s0, $at
    /* 6D04 8018FC7C 158F2290 */  lbu        $v0, -0x70EB($at)
    /* 6D08 8018FC80 00000000 */  nop
    /* 6D0C 8018FC84 01004238 */  xori       $v0, $v0, 0x1
    /* 6D10 8018FC88 21102202 */  addu       $v0, $s1, $v0
    /* 6D14 8018FC8C DD024490 */  lbu        $a0, (0x1F8002DD & 0xFFFF)($v0)
    /* 6D18 8018FC90 7C68010C */  jal        func_8005A1F0
    /* 6D1C 8018FC94 D60F0524 */   addiu     $a1, $zero, 0xFD6
    /* 6D20 8018FC98 88AD020C */  jal        func_800AB620
    /* 6D24 8018FC9C 7D100424 */   addiu     $a0, $zero, 0x107D
    /* 6D28 8018FCA0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6D2C 8018FCA4 21080102 */  addu       $at, $s0, $at
    /* 6D30 8018FCA8 4AAC20A0 */  sb         $zero, -0x53B6($at)
  .L8018FCAC:
    /* 6D34 8018FCAC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6D38 8018FCB0 21080102 */  addu       $at, $s0, $at
    /* 6D3C 8018FCB4 4AAC2490 */  lbu        $a0, -0x53B6($at)
    /* 6D40 8018FCB8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6D44 8018FCBC 21080102 */  addu       $at, $s0, $at
    /* 6D48 8018FCC0 4CAC2394 */  lhu        $v1, -0x53B4($at)
    /* 6D4C 8018FCC4 FF008730 */  andi       $a3, $a0, 0xFF
    /* 6D50 8018FCC8 00110700 */  sll        $v0, $a3, 4
    /* 6D54 8018FCCC 23104700 */  subu       $v0, $v0, $a3
    /* 6D58 8018FCD0 40100200 */  sll        $v0, $v0, 1
    /* 6D5C 8018FCD4 86014224 */  addiu      $v0, $v0, 0x186
    /* 6D60 8018FCD8 23006214 */  bne        $v1, $v0, .L8018FD68
    /* 6D64 8018FCDC 0C030224 */   addiu     $v0, $zero, 0x30C
    /* 6D68 8018FCE0 0B00E22C */  sltiu      $v0, $a3, 0xB
    /* 6D6C 8018FCE4 1F004010 */  beqz       $v0, .L8018FD64
    /* 6D70 8018FCE8 01000524 */   addiu     $a1, $zero, 0x1
    /* 6D74 8018FCEC 21300000 */  addu       $a2, $zero, $zero
    /* 6D78 8018FCF0 01008224 */  addiu      $v0, $a0, 0x1
    /* 6D7C 8018FCF4 40210700 */  sll        $a0, $a3, 5
    /* 6D80 8018FCF8 23208700 */  subu       $a0, $a0, $a3
    /* 6D84 8018FCFC 80200400 */  sll        $a0, $a0, 2
    /* 6D88 8018FD00 21208700 */  addu       $a0, $a0, $a3
    /* 6D8C 8018FD04 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6D90 8018FD08 21080102 */  addu       $at, $s0, $at
    /* 6D94 8018FD0C 158F2390 */  lbu        $v1, -0x70EB($at)
    /* 6D98 8018FD10 C0200400 */  sll        $a0, $a0, 3
    /* 6D9C 8018FD14 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6DA0 8018FD18 21080102 */  addu       $at, $s0, $at
    /* 6DA4 8018FD1C 4AAC22A0 */  sb         $v0, -0x53B6($at)
    /* 6DA8 8018FD20 01006338 */  xori       $v1, $v1, 0x1
    /* 6DAC 8018FD24 40100300 */  sll        $v0, $v1, 1
    /* 6DB0 8018FD28 21104300 */  addu       $v0, $v0, $v1
    /* 6DB4 8018FD2C 80100200 */  sll        $v0, $v0, 2
    /* 6DB8 8018FD30 23104300 */  subu       $v0, $v0, $v1
    /* 6DBC 8018FD34 80100200 */  sll        $v0, $v0, 2
    /* 6DC0 8018FD38 23104300 */  subu       $v0, $v0, $v1
    /* 6DC4 8018FD3C 40110200 */  sll        $v0, $v0, 5
    /* 6DC8 8018FD40 23104300 */  subu       $v0, $v0, $v1
    /* 6DCC 8018FD44 C0100200 */  sll        $v0, $v0, 3
    /* 6DD0 8018FD48 E8034224 */  addiu      $v0, $v0, 0x3E8
    /* 6DD4 8018FD4C 21100202 */  addu       $v0, $s0, $v0
    /* 6DD8 8018FD50 B95E010C */  jal        func_80057AE4
    /* 6DDC 8018FD54 21204400 */   addu      $a0, $v0, $a0
    /* 6DE0 8018FD58 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6DE4 8018FD5C 21080102 */  addu       $at, $s0, $at
    /* 6DE8 8018FD60 4CAC2394 */  lhu        $v1, -0x53B4($at)
  .L8018FD64:
    /* 6DEC 8018FD64 0C030224 */  addiu      $v0, $zero, 0x30C
  .L8018FD68:
    /* 6DF0 8018FD68 16006214 */  bne        $v1, $v0, .L8018FDC4
    /* 6DF4 8018FD6C 40000324 */   addiu     $v1, $zero, 0x40
    /* 6DF8 8018FD70 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6DFC 8018FD74 21080102 */  addu       $at, $s0, $at
    /* 6E00 8018FD78 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 6E04 8018FD7C 00000000 */  nop
    /* 6E08 8018FD80 CF004230 */  andi       $v0, $v0, 0xCF
    /* 6E0C 8018FD84 0C004314 */  bne        $v0, $v1, .L8018FDB8
    /* 6E10 8018FD88 03000324 */   addiu     $v1, $zero, 0x3
    /* 6E14 8018FD8C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6E18 8018FD90 21080102 */  addu       $at, $s0, $at
    /* 6E1C 8018FD94 228F2290 */  lbu        $v0, -0x70DE($at)
    /* 6E20 8018FD98 00000000 */  nop
    /* 6E24 8018FD9C 02110200 */  srl        $v0, $v0, 4
    /* 6E28 8018FDA0 06004314 */  bne        $v0, $v1, .L8018FDBC
    /* 6E2C 8018FDA4 7E100424 */   addiu     $a0, $zero, 0x107E
    /* 6E30 8018FDA8 AE79000C */  jal        func_8001E6B8
    /* 6E34 8018FDAC 03000424 */   addiu     $a0, $zero, 0x3
    /* 6E38 8018FDB0 6F3F0608 */  j          .L8018FDBC
    /* 6E3C 8018FDB4 950C4424 */   addiu     $a0, $v0, 0xC95
  .L8018FDB8:
    /* 6E40 8018FDB8 7E100424 */  addiu      $a0, $zero, 0x107E
  .L8018FDBC:
    /* 6E44 8018FDBC 88AD020C */  jal        func_800AB620
    /* 6E48 8018FDC0 00000000 */   nop
  .L8018FDC4:
    /* 6E4C 8018FDC4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 6E50 8018FDC8 1400B18F */  lw         $s1, 0x14($sp)
    /* 6E54 8018FDCC 1000B08F */  lw         $s0, 0x10($sp)
    /* 6E58 8018FDD0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 6E5C 8018FDD4 0800E003 */  jr         $ra
    /* 6E60 8018FDD8 00000000 */   nop
endlabel func_8018FB8C
