nonmatching func_801CFB84, 0x3B4

glabel func_801CFB84
    /* 46C0C 801CFB84 1180093C */  lui        $t1, %hi(D_8010A5A8)
    /* 46C10 801CFB88 A8A52925 */  addiu      $t1, $t1, %lo(D_8010A5A8)
    /* 46C14 801CFB8C 1080063C */  lui        $a2, %hi(D_800FF748)
    /* 46C18 801CFB90 48F7C624 */  addiu      $a2, $a2, %lo(D_800FF748)
    /* 46C1C 801CFB94 1180023C */  lui        $v0, %hi(D_8010865C)
    /* 46C20 801CFB98 5C864290 */  lbu        $v0, %lo(D_8010865C)($v0)
    /* 46C24 801CFB9C 00000000 */  nop
    /* 46C28 801CFBA0 01004230 */  andi       $v0, $v0, 0x1
    /* 46C2C 801CFBA4 E2004014 */  bnez       $v0, .L801CFF30
    /* 46C30 801CFBA8 801F0A3C */   lui       $t2, (0x1F8002E6 >> 16)
    /* 46C34 801CFBAC 21400000 */  addu       $t0, $zero, $zero
    /* 46C38 801CFBB0 FF000731 */  andi       $a3, $t0, 0xFF
  .L801CFBB4:
    /* 46C3C 801CFBB4 40100700 */  sll        $v0, $a3, 1
    /* 46C40 801CFBB8 21204600 */  addu       $a0, $v0, $a2
    /* 46C44 801CFBBC 21284A00 */  addu       $a1, $v0, $t2
    /* 46C48 801CFBC0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46C4C 801CFBC4 21088100 */  addu       $at, $a0, $at
    /* 46C50 801CFBC8 D88E2394 */  lhu        $v1, -0x7128($at)
    /* 46C54 801CFBCC 1200A294 */  lhu        $v0, (0x1F800012 & 0xFFFF)($a1)
    /* 46C58 801CFBD0 00000000 */  nop
    /* 46C5C 801CFBD4 5F006214 */  bne        $v1, $v0, .L801CFD54
    /* 46C60 801CFBD8 00000000 */   nop
    /* 46C64 801CFBDC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46C68 801CFBE0 21088100 */  addu       $at, $a0, $at
    /* 46C6C 801CFBE4 DC8E2394 */  lhu        $v1, -0x7124($at)
    /* 46C70 801CFBE8 1600A294 */  lhu        $v0, (0x1F800016 & 0xFFFF)($a1)
    /* 46C74 801CFBEC 00000000 */  nop
    /* 46C78 801CFBF0 58006214 */  bne        $v1, $v0, .L801CFD54
    /* 46C7C 801CFBF4 00000000 */   nop
    /* 46C80 801CFBF8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46C84 801CFBFC 21088100 */  addu       $at, $a0, $at
    /* 46C88 801CFC00 E08E2394 */  lhu        $v1, -0x7120($at)
    /* 46C8C 801CFC04 1A00A294 */  lhu        $v0, (0x1F80001A & 0xFFFF)($a1)
    /* 46C90 801CFC08 00000000 */  nop
    /* 46C94 801CFC0C 51006214 */  bne        $v1, $v0, .L801CFD54
    /* 46C98 801CFC10 00000000 */   nop
    /* 46C9C 801CFC14 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46CA0 801CFC18 21088100 */  addu       $at, $a0, $at
    /* 46CA4 801CFC1C E48E2394 */  lhu        $v1, -0x711C($at)
    /* 46CA8 801CFC20 1E00A294 */  lhu        $v0, (0x1F80001E & 0xFFFF)($a1)
    /* 46CAC 801CFC24 00000000 */  nop
    /* 46CB0 801CFC28 4A006214 */  bne        $v1, $v0, .L801CFD54
    /* 46CB4 801CFC2C 00000000 */   nop
    /* 46CB8 801CFC30 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46CBC 801CFC34 21088100 */  addu       $at, $a0, $at
    /* 46CC0 801CFC38 E88E2394 */  lhu        $v1, -0x7118($at)
    /* 46CC4 801CFC3C 2200A294 */  lhu        $v0, (0x1F800022 & 0xFFFF)($a1)
    /* 46CC8 801CFC40 00000000 */  nop
    /* 46CCC 801CFC44 43006214 */  bne        $v1, $v0, .L801CFD54
    /* 46CD0 801CFC48 00000000 */   nop
    /* 46CD4 801CFC4C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46CD8 801CFC50 21088100 */  addu       $at, $a0, $at
    /* 46CDC 801CFC54 EC8E2394 */  lhu        $v1, -0x7114($at)
    /* 46CE0 801CFC58 2600A294 */  lhu        $v0, (0x1F800026 & 0xFFFF)($a1)
    /* 46CE4 801CFC5C 00000000 */  nop
    /* 46CE8 801CFC60 3C006214 */  bne        $v1, $v0, .L801CFD54
    /* 46CEC 801CFC64 00000000 */   nop
    /* 46CF0 801CFC68 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46CF4 801CFC6C 21088100 */  addu       $at, $a0, $at
    /* 46CF8 801CFC70 F08E2394 */  lhu        $v1, -0x7110($at)
    /* 46CFC 801CFC74 2A00A294 */  lhu        $v0, (0x1F80002A & 0xFFFF)($a1)
    /* 46D00 801CFC78 00000000 */  nop
    /* 46D04 801CFC7C 35006214 */  bne        $v1, $v0, .L801CFD54
    /* 46D08 801CFC80 00000000 */   nop
    /* 46D0C 801CFC84 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46D10 801CFC88 21088100 */  addu       $at, $a0, $at
    /* 46D14 801CFC8C F48E2394 */  lhu        $v1, -0x710C($at)
    /* 46D18 801CFC90 2E00A294 */  lhu        $v0, (0x1F80002E & 0xFFFF)($a1)
    /* 46D1C 801CFC94 00000000 */  nop
    /* 46D20 801CFC98 2E006214 */  bne        $v1, $v0, .L801CFD54
    /* 46D24 801CFC9C 00000000 */   nop
    /* 46D28 801CFCA0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46D2C 801CFCA4 21088100 */  addu       $at, $a0, $at
    /* 46D30 801CFCA8 F88E2394 */  lhu        $v1, -0x7108($at)
    /* 46D34 801CFCAC 3200A294 */  lhu        $v0, (0x1F800032 & 0xFFFF)($a1)
    /* 46D38 801CFCB0 00000000 */  nop
    /* 46D3C 801CFCB4 27006214 */  bne        $v1, $v0, .L801CFD54
    /* 46D40 801CFCB8 00000000 */   nop
    /* 46D44 801CFCBC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46D48 801CFCC0 21088100 */  addu       $at, $a0, $at
    /* 46D4C 801CFCC4 FC8E2394 */  lhu        $v1, -0x7104($at)
    /* 46D50 801CFCC8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46D54 801CFCCC 21088100 */  addu       $at, $a0, $at
    /* 46D58 801CFCD0 1A8F2294 */  lhu        $v0, -0x70E6($at)
    /* 46D5C 801CFCD4 00000000 */  nop
    /* 46D60 801CFCD8 1E006214 */  bne        $v1, $v0, .L801CFD54
    /* 46D64 801CFCDC 2110C700 */   addu      $v0, $a2, $a3
    /* 46D68 801CFCE0 21184701 */  addu       $v1, $t2, $a3
    /* 46D6C 801CFCE4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46D70 801CFCE8 21084100 */  addu       $at, $v0, $at
    /* 46D74 801CFCEC 098F2490 */  lbu        $a0, -0x70F7($at)
    /* 46D78 801CFCF0 07036290 */  lbu        $v0, (0x1F800307 & 0xFFFF)($v1)
    /* 46D7C 801CFCF4 00000000 */  nop
    /* 46D80 801CFCF8 16008214 */  bne        $a0, $v0, .L801CFD54
    /* 46D84 801CFCFC 01000825 */   addiu     $t0, $t0, 0x1
    /* 46D88 801CFD00 FF000231 */  andi       $v0, $t0, 0xFF
    /* 46D8C 801CFD04 0200422C */  sltiu      $v0, $v0, 0x2
    /* 46D90 801CFD08 AAFF4014 */  bnez       $v0, .L801CFBB4
    /* 46D94 801CFD0C FF000731 */   andi      $a3, $t0, 0xFF
  .L801CFD10:
    /* 46D98 801CFD10 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46D9C 801CFD14 2108C100 */  addu       $at, $a2, $at
    /* 46DA0 801CFD18 148F2590 */  lbu        $a1, -0x70EC($at)
    /* 46DA4 801CFD1C 00000000 */  nop
    /* 46DA8 801CFD20 0100A230 */  andi       $v0, $a1, 0x1
    /* 46DAC 801CFD24 82004014 */  bnez       $v0, .L801CFF30
    /* 46DB0 801CFD28 00000000 */   nop
    /* 46DB4 801CFD2C 09002291 */  lbu        $v0, 0x9($t1)
    /* 46DB8 801CFD30 E6024491 */  lbu        $a0, (0x1F8002E6 & 0xFFFF)($t2)
    /* 46DBC 801CFD34 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46DC0 801CFD38 2108C100 */  addu       $at, $a2, $at
    /* 46DC4 801CFD3C 008F2390 */  lbu        $v1, -0x7100($at)
    /* 46DC8 801CFD40 00000000 */  nop
    /* 46DCC 801CFD44 0D006410 */  beq        $v1, $a0, .L801CFD7C
    /* 46DD0 801CFD48 73004830 */   andi      $t0, $v0, 0x73
    /* 46DD4 801CFD4C C93F0708 */  j          .L801CFF24
    /* 46DD8 801CFD50 0100A234 */   ori       $v0, $a1, 0x1
  .L801CFD54:
    /* 46DDC 801CFD54 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46DE0 801CFD58 2108C100 */  addu       $at, $a2, $at
    /* 46DE4 801CFD5C 148F2290 */  lbu        $v0, -0x70EC($at)
    /* 46DE8 801CFD60 00000000 */  nop
    /* 46DEC 801CFD64 01004234 */  ori        $v0, $v0, 0x1
    /* 46DF0 801CFD68 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46DF4 801CFD6C 2108C100 */  addu       $at, $a2, $at
    /* 46DF8 801CFD70 148F22A0 */  sb         $v0, -0x70EC($at)
    /* 46DFC 801CFD74 443F0708 */  j          .L801CFD10
    /* 46E00 801CFD78 00000000 */   nop
  .L801CFD7C:
    /* 46E04 801CFD7C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46E08 801CFD80 2108C100 */  addu       $at, $a2, $at
    /* 46E0C 801CFD84 018F2390 */  lbu        $v1, -0x70FF($at)
    /* 46E10 801CFD88 0A002291 */  lbu        $v0, 0xA($t1)
    /* 46E14 801CFD8C 00000000 */  nop
    /* 46E18 801CFD90 64006214 */  bne        $v1, $v0, .L801CFF24
    /* 46E1C 801CFD94 0100A234 */   ori       $v0, $a1, 0x1
    /* 46E20 801CFD98 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46E24 801CFD9C 2108C100 */  addu       $at, $a2, $at
    /* 46E28 801CFDA0 028F2390 */  lbu        $v1, -0x70FE($at)
    /* 46E2C 801CFDA4 06002291 */  lbu        $v0, 0x6($t1)
    /* 46E30 801CFDA8 00000000 */  nop
    /* 46E34 801CFDAC 5D006214 */  bne        $v1, $v0, .L801CFF24
    /* 46E38 801CFDB0 0100A234 */   ori       $v0, $a1, 0x1
    /* 46E3C 801CFDB4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46E40 801CFDB8 2108C100 */  addu       $at, $a2, $at
    /* 46E44 801CFDBC 038F2390 */  lbu        $v1, -0x70FD($at)
    /* 46E48 801CFDC0 02002291 */  lbu        $v0, 0x2($t1)
    /* 46E4C 801CFDC4 00000000 */  nop
    /* 46E50 801CFDC8 56006214 */  bne        $v1, $v0, .L801CFF24
    /* 46E54 801CFDCC 0100A234 */   ori       $v0, $a1, 0x1
    /* 46E58 801CFDD0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46E5C 801CFDD4 2108C100 */  addu       $at, $a2, $at
    /* 46E60 801CFDD8 048F2390 */  lbu        $v1, -0x70FC($at)
    /* 46E64 801CFDDC 03002291 */  lbu        $v0, 0x3($t1)
    /* 46E68 801CFDE0 00000000 */  nop
    /* 46E6C 801CFDE4 4F006214 */  bne        $v1, $v0, .L801CFF24
    /* 46E70 801CFDE8 0100A234 */   ori       $v0, $a1, 0x1
    /* 46E74 801CFDEC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46E78 801CFDF0 2108C100 */  addu       $at, $a2, $at
    /* 46E7C 801CFDF4 058F2390 */  lbu        $v1, -0x70FB($at)
    /* 46E80 801CFDF8 04002291 */  lbu        $v0, 0x4($t1)
    /* 46E84 801CFDFC 00000000 */  nop
    /* 46E88 801CFE00 48006214 */  bne        $v1, $v0, .L801CFF24
    /* 46E8C 801CFE04 0100A234 */   ori       $v0, $a1, 0x1
    /* 46E90 801CFE08 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46E94 801CFE0C 2108C100 */  addu       $at, $a2, $at
    /* 46E98 801CFE10 068F2390 */  lbu        $v1, -0x70FA($at)
    /* 46E9C 801CFE14 05002291 */  lbu        $v0, 0x5($t1)
    /* 46EA0 801CFE18 00000000 */  nop
    /* 46EA4 801CFE1C 41006214 */  bne        $v1, $v0, .L801CFF24
    /* 46EA8 801CFE20 0100A234 */   ori       $v0, $a1, 0x1
    /* 46EAC 801CFE24 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46EB0 801CFE28 2108C100 */  addu       $at, $a2, $at
    /* 46EB4 801CFE2C 078F2390 */  lbu        $v1, -0x70F9($at)
    /* 46EB8 801CFE30 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46EBC 801CFE34 2108C100 */  addu       $at, $a2, $at
    /* 46EC0 801CFE38 E2AB2290 */  lbu        $v0, -0x541E($at)
    /* 46EC4 801CFE3C 00000000 */  nop
    /* 46EC8 801CFE40 38006214 */  bne        $v1, $v0, .L801CFF24
    /* 46ECC 801CFE44 0100A234 */   ori       $v0, $a1, 0x1
    /* 46ED0 801CFE48 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46ED4 801CFE4C 2108C100 */  addu       $at, $a2, $at
    /* 46ED8 801CFE50 128F2390 */  lbu        $v1, -0x70EE($at)
    /* 46EDC 801CFE54 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46EE0 801CFE58 2108C100 */  addu       $at, $a2, $at
    /* 46EE4 801CFE5C 138F2290 */  lbu        $v0, -0x70ED($at)
    /* 46EE8 801CFE60 00000000 */  nop
    /* 46EEC 801CFE64 2F006214 */  bne        $v1, $v0, .L801CFF24
    /* 46EF0 801CFE68 0100A234 */   ori       $v0, $a1, 0x1
    /* 46EF4 801CFE6C 36034295 */  lhu        $v0, (0x1F800336 & 0xFFFF)($t2)
    /* 46EF8 801CFE70 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46EFC 801CFE74 2108C100 */  addu       $at, $a2, $at
    /* 46F00 801CFE78 0C8F2384 */  lh         $v1, -0x70F4($at)
    /* 46F04 801CFE7C 00140200 */  sll        $v0, $v0, 16
    /* 46F08 801CFE80 03140200 */  sra        $v0, $v0, 16
    /* 46F0C 801CFE84 27006214 */  bne        $v1, $v0, .L801CFF24
    /* 46F10 801CFE88 0100A234 */   ori       $v0, $a1, 0x1
    /* 46F14 801CFE8C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46F18 801CFE90 2108C100 */  addu       $at, $a2, $at
    /* 46F1C 801CFE94 0E8F2390 */  lbu        $v1, -0x70F2($at)
    /* 46F20 801CFE98 FF000231 */  andi       $v0, $t0, 0xFF
    /* 46F24 801CFE9C 1C006214 */  bne        $v1, $v0, .L801CFF10
    /* 46F28 801CFEA0 00000000 */   nop
    /* 46F2C 801CFEA4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46F30 801CFEA8 2108C100 */  addu       $at, $a2, $at
    /* 46F34 801CFEAC 0F8F2390 */  lbu        $v1, -0x70F1($at)
    /* 46F38 801CFEB0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46F3C 801CFEB4 2108C100 */  addu       $at, $a2, $at
    /* 46F40 801CFEB8 1DAC2290 */  lbu        $v0, -0x53E3($at)
    /* 46F44 801CFEBC 00000000 */  nop
    /* 46F48 801CFEC0 13006214 */  bne        $v1, $v0, .L801CFF10
    /* 46F4C 801CFEC4 00000000 */   nop
    /* 46F50 801CFEC8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46F54 801CFECC 2108C100 */  addu       $at, $a2, $at
    /* 46F58 801CFED0 108F2390 */  lbu        $v1, -0x70F0($at)
    /* 46F5C 801CFED4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46F60 801CFED8 2108C100 */  addu       $at, $a2, $at
    /* 46F64 801CFEDC 1EAC2290 */  lbu        $v0, -0x53E2($at)
    /* 46F68 801CFEE0 00000000 */  nop
    /* 46F6C 801CFEE4 0A006214 */  bne        $v1, $v0, .L801CFF10
    /* 46F70 801CFEE8 00000000 */   nop
    /* 46F74 801CFEEC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46F78 801CFEF0 2108C100 */  addu       $at, $a2, $at
    /* 46F7C 801CFEF4 118F2390 */  lbu        $v1, -0x70EF($at)
    /* 46F80 801CFEF8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46F84 801CFEFC 2108C100 */  addu       $at, $a2, $at
    /* 46F88 801CFF00 1FAC2290 */  lbu        $v0, -0x53E1($at)
    /* 46F8C 801CFF04 00000000 */  nop
    /* 46F90 801CFF08 09006210 */  beq        $v1, $v0, .L801CFF30
    /* 46F94 801CFF0C 00000000 */   nop
  .L801CFF10:
    /* 46F98 801CFF10 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46F9C 801CFF14 2108C100 */  addu       $at, $a2, $at
    /* 46FA0 801CFF18 148F2290 */  lbu        $v0, -0x70EC($at)
    /* 46FA4 801CFF1C 00000000 */  nop
    /* 46FA8 801CFF20 01004234 */  ori        $v0, $v0, 0x1
  .L801CFF24:
    /* 46FAC 801CFF24 0100013C */  lui        $at, (0x10000 >> 16)
    /* 46FB0 801CFF28 2108C100 */  addu       $at, $a2, $at
    /* 46FB4 801CFF2C 148F22A0 */  sb         $v0, -0x70EC($at)
  .L801CFF30:
    /* 46FB8 801CFF30 0800E003 */  jr         $ra
    /* 46FBC 801CFF34 00000000 */   nop
endlabel func_801CFB84
