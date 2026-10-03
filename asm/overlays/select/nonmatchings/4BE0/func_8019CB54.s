nonmatching func_8019CB54, 0x1B8

glabel func_8019CB54
    /* 13BDC 8019CB54 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 13BE0 8019CB58 1E80043C */  lui        $a0, %hi(D_801D8C60)
    /* 13BE4 8019CB5C 608C8480 */  lb         $a0, %lo(D_801D8C60)($a0)
    /* 13BE8 8019CB60 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 13BEC 8019CB64 02008004 */  bltz       $a0, .L8019CB70
    /* 13BF0 8019CB68 21108000 */   addu      $v0, $a0, $zero
    /* 13BF4 8019CB6C 2B180400 */  sltu       $v1, $zero, $a0
  .L8019CB70:
    /* 13BF8 8019CB70 21104300 */  addu       $v0, $v0, $v1
    /* 13BFC 8019CB74 1E80013C */  lui        $at, %hi(D_801D8C60)
    /* 13C00 8019CB78 608C22A0 */  sb         $v0, %lo(D_801D8C60)($at)
    /* 13C04 8019CB7C 07004230 */  andi       $v0, $v0, 0x7
    /* 13C08 8019CB80 5F004014 */  bnez       $v0, .L8019CD00
    /* 13C0C 8019CB84 21100000 */   addu      $v0, $zero, $zero
    /* 13C10 8019CB88 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 13C14 8019CB8C 05006210 */  beq        $v1, $v0, .L8019CBA4
    /* 13C18 8019CB90 01000224 */   addiu     $v0, $zero, 0x1
    /* 13C1C 8019CB94 30006210 */  beq        $v1, $v0, .L8019CC58
    /* 13C20 8019CB98 02000224 */   addiu     $v0, $zero, 0x2
    /* 13C24 8019CB9C 40730608 */  j          .L8019CD00
    /* 13C28 8019CBA0 01000224 */   addiu     $v0, $zero, 0x1
  .L8019CBA4:
    /* 13C2C 8019CBA4 801F033C */  lui        $v1, (0x1F8002E1 >> 16)
    /* 13C30 8019CBA8 E1026390 */  lbu        $v1, (0x1F8002E1 & 0xFFFF)($v1)
    /* 13C34 8019CBAC 02000224 */  addiu      $v0, $zero, 0x2
    /* 13C38 8019CBB0 07006214 */  bne        $v1, $v0, .L8019CBD0
    /* 13C3C 8019CBB4 01000224 */   addiu     $v0, $zero, 0x1
    /* 13C40 8019CBB8 1180023C */  lui        $v0, %hi(D_80108667)
    /* 13C44 8019CBBC 67864290 */  lbu        $v0, %lo(D_80108667)($v0)
    /* 13C48 8019CBC0 00000000 */  nop
    /* 13C4C 8019CBC4 0F004230 */  andi       $v0, $v0, 0xF
    /* 13C50 8019CBC8 03004010 */  beqz       $v0, .L8019CBD8
    /* 13C54 8019CBCC 01000224 */   addiu     $v0, $zero, 0x1
  .L8019CBD0:
    /* 13C58 8019CBD0 0F006214 */  bne        $v1, $v0, .L8019CC10
    /* 13C5C 8019CBD4 00000000 */   nop
  .L8019CBD8:
    /* 13C60 8019CBD8 1E80023C */  lui        $v0, %hi(D_801D8C64)
    /* 13C64 8019CBDC 648C4224 */  addiu      $v0, $v0, %lo(D_801D8C64)
    /* 13C68 8019CBE0 1E80033C */  lui        $v1, %hi(D_801D8C65)
    /* 13C6C 8019CBE4 658C6390 */  lbu        $v1, %lo(D_801D8C65)($v1)
    /* 13C70 8019CBE8 00004690 */  lbu        $a2, 0x0($v0)
    /* 13C74 8019CBEC 1E80043C */  lui        $a0, %hi(D_801D8C67)
    /* 13C78 8019CBF0 678C8490 */  lbu        $a0, %lo(D_801D8C67)($a0)
    /* 13C7C 8019CBF4 000043A0 */  sb         $v1, 0x0($v0)
    /* 13C80 8019CBF8 1E80013C */  lui        $at, %hi(D_801D8C65)
    /* 13C84 8019CBFC 658C24A0 */  sb         $a0, %lo(D_801D8C65)($at)
    /* 13C88 8019CC00 1E80013C */  lui        $at, %hi(D_801D8C67)
    /* 13C8C 8019CC04 678C26A0 */  sb         $a2, %lo(D_801D8C67)($at)
    /* 13C90 8019CC08 40730608 */  j          .L8019CD00
    /* 13C94 8019CC0C 01000224 */   addiu     $v0, $zero, 0x1
  .L8019CC10:
    /* 13C98 8019CC10 1E80053C */  lui        $a1, %hi(D_801D8C64)
    /* 13C9C 8019CC14 648CA524 */  addiu      $a1, $a1, %lo(D_801D8C64)
    /* 13CA0 8019CC18 1E80023C */  lui        $v0, %hi(D_801D8C65)
    /* 13CA4 8019CC1C 658C4290 */  lbu        $v0, %lo(D_801D8C65)($v0)
    /* 13CA8 8019CC20 0000A690 */  lbu        $a2, 0x0($a1)
    /* 13CAC 8019CC24 1E80033C */  lui        $v1, %hi(D_801D8C66)
    /* 13CB0 8019CC28 668C6390 */  lbu        $v1, %lo(D_801D8C66)($v1)
    /* 13CB4 8019CC2C 1E80043C */  lui        $a0, %hi(D_801D8C67)
    /* 13CB8 8019CC30 678C8490 */  lbu        $a0, %lo(D_801D8C67)($a0)
    /* 13CBC 8019CC34 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 13CC0 8019CC38 1E80013C */  lui        $at, %hi(D_801D8C65)
    /* 13CC4 8019CC3C 658C23A0 */  sb         $v1, %lo(D_801D8C65)($at)
    /* 13CC8 8019CC40 1E80013C */  lui        $at, %hi(D_801D8C66)
    /* 13CCC 8019CC44 668C24A0 */  sb         $a0, %lo(D_801D8C66)($at)
    /* 13CD0 8019CC48 1E80013C */  lui        $at, %hi(D_801D8C67)
    /* 13CD4 8019CC4C 678C26A0 */  sb         $a2, %lo(D_801D8C67)($at)
    /* 13CD8 8019CC50 40730608 */  j          .L8019CD00
    /* 13CDC 8019CC54 01000224 */   addiu     $v0, $zero, 0x1
  .L8019CC58:
    /* 13CE0 8019CC58 801F043C */  lui        $a0, (0x1F8002E1 >> 16)
    /* 13CE4 8019CC5C E1028490 */  lbu        $a0, (0x1F8002E1 & 0xFFFF)($a0)
    /* 13CE8 8019CC60 00000000 */  nop
    /* 13CEC 8019CC64 07008214 */  bne        $a0, $v0, .L8019CC84
    /* 13CF0 8019CC68 00000000 */   nop
    /* 13CF4 8019CC6C 1180023C */  lui        $v0, %hi(D_80108667)
    /* 13CF8 8019CC70 67864290 */  lbu        $v0, %lo(D_80108667)($v0)
    /* 13CFC 8019CC74 00000000 */  nop
    /* 13D00 8019CC78 0F004230 */  andi       $v0, $v0, 0xF
    /* 13D04 8019CC7C 03004010 */  beqz       $v0, .L8019CC8C
    /* 13D08 8019CC80 00000000 */   nop
  .L8019CC84:
    /* 13D0C 8019CC84 0D008314 */  bne        $a0, $v1, .L8019CCBC
    /* 13D10 8019CC88 00000000 */   nop
  .L8019CC8C:
    /* 13D14 8019CC8C 1E80023C */  lui        $v0, %hi(D_801D8C64)
    /* 13D18 8019CC90 648C4224 */  addiu      $v0, $v0, %lo(D_801D8C64)
    /* 13D1C 8019CC94 1E80033C */  lui        $v1, %hi(D_801D8C67)
    /* 13D20 8019CC98 678C6390 */  lbu        $v1, %lo(D_801D8C67)($v1)
    /* 13D24 8019CC9C 00004690 */  lbu        $a2, 0x0($v0)
    /* 13D28 8019CCA0 1E80043C */  lui        $a0, %hi(D_801D8C65)
    /* 13D2C 8019CCA4 658C8490 */  lbu        $a0, %lo(D_801D8C65)($a0)
    /* 13D30 8019CCA8 000043A0 */  sb         $v1, 0x0($v0)
    /* 13D34 8019CCAC 1E80013C */  lui        $at, %hi(D_801D8C67)
    /* 13D38 8019CCB0 678C24A0 */  sb         $a0, %lo(D_801D8C67)($at)
    /* 13D3C 8019CCB4 3D730608 */  j          .L8019CCF4
    /* 13D40 8019CCB8 00000000 */   nop
  .L8019CCBC:
    /* 13D44 8019CCBC 1E80053C */  lui        $a1, %hi(D_801D8C64)
    /* 13D48 8019CCC0 648CA524 */  addiu      $a1, $a1, %lo(D_801D8C64)
    /* 13D4C 8019CCC4 1E80023C */  lui        $v0, %hi(D_801D8C67)
    /* 13D50 8019CCC8 678C4290 */  lbu        $v0, %lo(D_801D8C67)($v0)
    /* 13D54 8019CCCC 0000A690 */  lbu        $a2, 0x0($a1)
    /* 13D58 8019CCD0 1E80033C */  lui        $v1, %hi(D_801D8C66)
    /* 13D5C 8019CCD4 668C6390 */  lbu        $v1, %lo(D_801D8C66)($v1)
    /* 13D60 8019CCD8 1E80043C */  lui        $a0, %hi(D_801D8C65)
    /* 13D64 8019CCDC 658C8490 */  lbu        $a0, %lo(D_801D8C65)($a0)
    /* 13D68 8019CCE0 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 13D6C 8019CCE4 1E80013C */  lui        $at, %hi(D_801D8C67)
    /* 13D70 8019CCE8 678C23A0 */  sb         $v1, %lo(D_801D8C67)($at)
    /* 13D74 8019CCEC 1E80013C */  lui        $at, %hi(D_801D8C66)
    /* 13D78 8019CCF0 668C24A0 */  sb         $a0, %lo(D_801D8C66)($at)
  .L8019CCF4:
    /* 13D7C 8019CCF4 1E80013C */  lui        $at, %hi(D_801D8C65)
    /* 13D80 8019CCF8 658C26A0 */  sb         $a2, %lo(D_801D8C65)($at)
    /* 13D84 8019CCFC 01000224 */  addiu      $v0, $zero, 0x1
  .L8019CD00:
    /* 13D88 8019CD00 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 13D8C 8019CD04 0800E003 */  jr         $ra
    /* 13D90 8019CD08 00000000 */   nop
endlabel func_8019CB54
