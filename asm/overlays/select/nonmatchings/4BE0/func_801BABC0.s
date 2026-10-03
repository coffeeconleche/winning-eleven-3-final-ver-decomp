nonmatching func_801BABC0, 0x3FC

glabel func_801BABC0
    /* 31C48 801BABC0 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 31C4C 801BABC4 21200000 */  addu       $a0, $zero, $zero
    /* 31C50 801BABC8 2800B0AF */  sw         $s0, 0x28($sp)
    /* 31C54 801BABCC 1E80103C */  lui        $s0, %hi(D_801D88A8)
    /* 31C58 801BABD0 A8881026 */  addiu      $s0, $s0, %lo(D_801D88A8)
    /* 31C5C 801BABD4 21280002 */  addu       $a1, $s0, $zero
    /* 31C60 801BABD8 4000B6AF */  sw         $s6, 0x40($sp)
    /* 31C64 801BABDC 1E80163C */  lui        $s6, %hi(D_801D88C0)
    /* 31C68 801BABE0 C088D626 */  addiu      $s6, $s6, %lo(D_801D88C0)
    /* 31C6C 801BABE4 14000924 */  addiu      $t1, $zero, 0x14
    /* 31C70 801BABE8 28000724 */  addiu      $a3, $zero, 0x28
    /* 31C74 801BABEC 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 31C78 801BABF0 1E80153C */  lui        $s5, %hi(D_801D88C4)
    /* 31C7C 801BABF4 C488B526 */  addiu      $s5, $s5, %lo(D_801D88C4)
    /* 31C80 801BABF8 08000824 */  addiu      $t0, $zero, 0x8
    /* 31C84 801BABFC 48000324 */  addiu      $v1, $zero, 0x48
    /* 31C88 801BAC00 3000B2AF */  sw         $s2, 0x30($sp)
    /* 31C8C 801BAC04 1E80123C */  lui        $s2, %hi(D_801D88C8)
    /* 31C90 801BAC08 C8885226 */  addiu      $s2, $s2, %lo(D_801D88C8)
    /* 31C94 801BAC0C D8000224 */  addiu      $v0, $zero, 0xD8
    /* 31C98 801BAC10 4400BFAF */  sw         $ra, 0x44($sp)
    /* 31C9C 801BAC14 3800B4AF */  sw         $s4, 0x38($sp)
    /* 31CA0 801BAC18 3400B3AF */  sw         $s3, 0x34($sp)
    /* 31CA4 801BAC1C 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 31CA8 801BAC20 0000C0A2 */  sb         $zero, 0x0($s6)
    /* 31CAC 801BAC24 1E80013C */  lui        $at, %hi(D_801D88C0 + 0x1)
    /* 31CB0 801BAC28 C18829A0 */  sb         $t1, %lo(D_801D88C0 + 0x1)($at)
    /* 31CB4 801BAC2C 1E80013C */  lui        $at, %hi(D_801D88C0 + 0x2)
    /* 31CB8 801BAC30 C28827A0 */  sb         $a3, %lo(D_801D88C0 + 0x2)($at)
    /* 31CBC 801BAC34 0000A8A2 */  sb         $t0, 0x0($s5)
    /* 31CC0 801BAC38 1E80013C */  lui        $at, %hi(D_801D88C4 + 0x1)
    /* 31CC4 801BAC3C C58823A0 */  sb         $v1, %lo(D_801D88C4 + 0x1)($at)
    /* 31CC8 801BAC40 1E80013C */  lui        $at, %hi(D_801D88C4 + 0x2)
    /* 31CCC 801BAC44 C68823A0 */  sb         $v1, %lo(D_801D88C4 + 0x2)($at)
    /* 31CD0 801BAC48 000047A2 */  sb         $a3, 0x0($s2)
    /* 31CD4 801BAC4C 1E80013C */  lui        $at, %hi(D_801D88C8 + 0x1)
    /* 31CD8 801BAC50 C98822A0 */  sb         $v0, %lo(D_801D88C8 + 0x1)($at)
    /* 31CDC 801BAC54 68000224 */  addiu      $v0, $zero, 0x68
    /* 31CE0 801BAC58 40FF1324 */  addiu      $s3, $zero, -0xC0
    /* 31CE4 801BAC5C 88FF1124 */  addiu      $s1, $zero, -0x78
    /* 31CE8 801BAC60 1E80013C */  lui        $at, %hi(D_801D88C8 + 0x2)
    /* 31CEC 801BAC64 CA8822A0 */  sb         $v0, %lo(D_801D88C8 + 0x2)($at)
    /* 31CF0 801BAC68 000013A6 */  sh         $s3, 0x0($s0)
    /* 31CF4 801BAC6C 1E80013C */  lui        $at, %hi(D_801D88AA)
    /* 31CF8 801BAC70 AA8831A4 */  sh         $s1, %lo(D_801D88AA)($at)
    /* 31CFC 801BAC74 1E80013C */  lui        $at, %hi(D_801D88AC)
    /* 31D00 801BAC78 AC8820A4 */  sh         $zero, %lo(D_801D88AC)($at)
    /* 31D04 801BAC7C 1E80013C */  lui        $at, %hi(D_801D88AE)
    /* 31D08 801BAC80 AE8831A4 */  sh         $s1, %lo(D_801D88AE)($at)
    /* 31D0C 801BAC84 1E80013C */  lui        $at, %hi(D_801D88B0)
    /* 31D10 801BAC88 B08833A4 */  sh         $s3, %lo(D_801D88B0)($at)
    /* 31D14 801BAC8C 1E80013C */  lui        $at, %hi(D_801D88B2)
    /* 31D18 801BAC90 B28820A4 */  sh         $zero, %lo(D_801D88B2)($at)
    /* 31D1C 801BAC94 1E80013C */  lui        $at, %hi(D_801D88B4)
    /* 31D20 801BAC98 B48820A0 */  sb         $zero, %lo(D_801D88B4)($at)
    /* 31D24 801BAC9C 1E80013C */  lui        $at, %hi(D_801D88B5)
    /* 31D28 801BACA0 B58829A0 */  sb         $t1, %lo(D_801D88B5)($at)
    /* 31D2C 801BACA4 1E80013C */  lui        $at, %hi(D_801D88B6)
    /* 31D30 801BACA8 B68827A0 */  sb         $a3, %lo(D_801D88B6)($at)
    /* 31D34 801BACAC 1E80013C */  lui        $at, %hi(D_801D88B7)
    /* 31D38 801BACB0 B78828A0 */  sb         $t0, %lo(D_801D88B7)($at)
    /* 31D3C 801BACB4 1E80013C */  lui        $at, %hi(D_801D88B8)
    /* 31D40 801BACB8 B88823A0 */  sb         $v1, %lo(D_801D88B8)($at)
    /* 31D44 801BACBC 1E80013C */  lui        $at, %hi(D_801D88B9)
    /* 31D48 801BACC0 B98823A0 */  sb         $v1, %lo(D_801D88B9)($at)
    /* 31D4C 801BACC4 1E80013C */  lui        $at, %hi(D_801D88BA)
    /* 31D50 801BACC8 BA8828A0 */  sb         $t0, %lo(D_801D88BA)($at)
    /* 31D54 801BACCC 1E80013C */  lui        $at, %hi(D_801D88BB)
    /* 31D58 801BACD0 BB8823A0 */  sb         $v1, %lo(D_801D88BB)($at)
    /* 31D5C 801BACD4 1E80013C */  lui        $at, %hi(D_801D88BC)
    /* 31D60 801BACD8 BC8823A0 */  sb         $v1, %lo(D_801D88BC)($at)
    /* 31D64 801BACDC 875B060C */  jal        func_80196E1C
    /* 31D68 801BACE0 06000624 */   addiu     $a2, $zero, 0x6
    /* 31D6C 801BACE4 21200000 */  addu       $a0, $zero, $zero
    /* 31D70 801BACE8 21280002 */  addu       $a1, $s0, $zero
    /* 31D74 801BACEC 00004292 */  lbu        $v0, 0x0($s2)
    /* 31D78 801BACF0 1E80033C */  lui        $v1, %hi(D_801D88C8 + 0x1)
    /* 31D7C 801BACF4 C9886390 */  lbu        $v1, %lo(D_801D88C8 + 0x1)($v1)
    /* 31D80 801BACF8 1E80073C */  lui        $a3, %hi(D_801D88C8 + 0x2)
    /* 31D84 801BACFC CA88E790 */  lbu        $a3, %lo(D_801D88C8 + 0x2)($a3)
    /* 31D88 801BAD00 000000A6 */  sh         $zero, 0x0($s0)
    /* 31D8C 801BAD04 1E80013C */  lui        $at, %hi(D_801D88AA)
    /* 31D90 801BAD08 AA8820A4 */  sh         $zero, %lo(D_801D88AA)($at)
    /* 31D94 801BAD0C 1E80013C */  lui        $at, %hi(D_801D88B4)
    /* 31D98 801BAD10 B48822A0 */  sb         $v0, %lo(D_801D88B4)($at)
    /* 31D9C 801BAD14 1E80013C */  lui        $at, %hi(D_801D88B5)
    /* 31DA0 801BAD18 B58823A0 */  sb         $v1, %lo(D_801D88B5)($at)
    /* 31DA4 801BAD1C 1E80013C */  lui        $at, %hi(D_801D88B6)
    /* 31DA8 801BAD20 B68827A0 */  sb         $a3, %lo(D_801D88B6)($at)
    /* 31DAC 801BAD24 875B060C */  jal        func_80196E1C
    /* 31DB0 801BAD28 06000624 */   addiu     $a2, $zero, 0x6
    /* 31DB4 801BAD2C 21200000 */  addu       $a0, $zero, $zero
    /* 31DB8 801BAD30 21280002 */  addu       $a1, $s0, $zero
    /* 31DBC 801BAD34 00004292 */  lbu        $v0, 0x0($s2)
    /* 31DC0 801BAD38 1E80033C */  lui        $v1, %hi(D_801D88C8 + 0x1)
    /* 31DC4 801BAD3C C9886390 */  lbu        $v1, %lo(D_801D88C8 + 0x1)($v1)
    /* 31DC8 801BAD40 1E80073C */  lui        $a3, %hi(D_801D88C8 + 0x2)
    /* 31DCC 801BAD44 CA88E790 */  lbu        $a3, %lo(D_801D88C8 + 0x2)($a3)
    /* 31DD0 801BAD48 C0001424 */  addiu      $s4, $zero, 0xC0
    /* 31DD4 801BAD4C 1E80013C */  lui        $at, %hi(D_801D88B0)
    /* 31DD8 801BAD50 B08834A4 */  sh         $s4, %lo(D_801D88B0)($at)
    /* 31DDC 801BAD54 1E80013C */  lui        $at, %hi(D_801D88B2)
    /* 31DE0 801BAD58 B28831A4 */  sh         $s1, %lo(D_801D88B2)($at)
    /* 31DE4 801BAD5C 1E80013C */  lui        $at, %hi(D_801D88BA)
    /* 31DE8 801BAD60 BA8822A0 */  sb         $v0, %lo(D_801D88BA)($at)
    /* 31DEC 801BAD64 1E80013C */  lui        $at, %hi(D_801D88BB)
    /* 31DF0 801BAD68 BB8823A0 */  sb         $v1, %lo(D_801D88BB)($at)
    /* 31DF4 801BAD6C 1E80013C */  lui        $at, %hi(D_801D88BC)
    /* 31DF8 801BAD70 BC8827A0 */  sb         $a3, %lo(D_801D88BC)($at)
    /* 31DFC 801BAD74 875B060C */  jal        func_80196E1C
    /* 31E00 801BAD78 06000624 */   addiu     $a2, $zero, 0x6
    /* 31E04 801BAD7C 21200000 */  addu       $a0, $zero, $zero
    /* 31E08 801BAD80 21280002 */  addu       $a1, $s0, $zero
    /* 31E0C 801BAD84 0000A292 */  lbu        $v0, 0x0($s5)
    /* 31E10 801BAD88 1E80033C */  lui        $v1, %hi(D_801D88C4 + 0x1)
    /* 31E14 801BAD8C C5886390 */  lbu        $v1, %lo(D_801D88C4 + 0x1)($v1)
    /* 31E18 801BAD90 1E80073C */  lui        $a3, %hi(D_801D88C4 + 0x2)
    /* 31E1C 801BAD94 C688E790 */  lbu        $a3, %lo(D_801D88C4 + 0x2)($a3)
    /* 31E20 801BAD98 1E80013C */  lui        $at, %hi(D_801D88AC)
    /* 31E24 801BAD9C AC8834A4 */  sh         $s4, %lo(D_801D88AC)($at)
    /* 31E28 801BADA0 1E80013C */  lui        $at, %hi(D_801D88AE)
    /* 31E2C 801BADA4 AE8820A4 */  sh         $zero, %lo(D_801D88AE)($at)
    /* 31E30 801BADA8 1E80013C */  lui        $at, %hi(D_801D88B7)
    /* 31E34 801BADAC B78822A0 */  sb         $v0, %lo(D_801D88B7)($at)
    /* 31E38 801BADB0 1E80013C */  lui        $at, %hi(D_801D88B8)
    /* 31E3C 801BADB4 B88823A0 */  sb         $v1, %lo(D_801D88B8)($at)
    /* 31E40 801BADB8 1E80013C */  lui        $at, %hi(D_801D88B9)
    /* 31E44 801BADBC B98827A0 */  sb         $a3, %lo(D_801D88B9)($at)
    /* 31E48 801BADC0 875B060C */  jal        func_80196E1C
    /* 31E4C 801BADC4 06000624 */   addiu     $a2, $zero, 0x6
    /* 31E50 801BADC8 21200000 */  addu       $a0, $zero, $zero
    /* 31E54 801BADCC 21280002 */  addu       $a1, $s0, $zero
    /* 31E58 801BADD0 000000A6 */  sh         $zero, 0x0($s0)
    /* 31E5C 801BADD4 1E80013C */  lui        $at, %hi(D_801D88AA)
    /* 31E60 801BADD8 AA8820A4 */  sh         $zero, %lo(D_801D88AA)($at)
    /* 31E64 801BADDC 1E80013C */  lui        $at, %hi(D_801D88AC)
    /* 31E68 801BADE0 AC8833A4 */  sh         $s3, %lo(D_801D88AC)($at)
    /* 31E6C 801BADE4 00004292 */  lbu        $v0, 0x0($s2)
    /* 31E70 801BADE8 1E80033C */  lui        $v1, %hi(D_801D88C8 + 0x1)
    /* 31E74 801BADEC C9886390 */  lbu        $v1, %lo(D_801D88C8 + 0x1)($v1)
    /* 31E78 801BADF0 1E80073C */  lui        $a3, %hi(D_801D88C8 + 0x2)
    /* 31E7C 801BADF4 CA88E790 */  lbu        $a3, %lo(D_801D88C8 + 0x2)($a3)
    /* 31E80 801BADF8 0000A892 */  lbu        $t0, 0x0($s5)
    /* 31E84 801BADFC 1E80093C */  lui        $t1, %hi(D_801D88C4 + 0x1)
    /* 31E88 801BAE00 C5882991 */  lbu        $t1, %lo(D_801D88C4 + 0x1)($t1)
    /* 31E8C 801BAE04 1E800A3C */  lui        $t2, %hi(D_801D88C4 + 0x2)
    /* 31E90 801BAE08 C6884A91 */  lbu        $t2, %lo(D_801D88C4 + 0x2)($t2)
    /* 31E94 801BAE0C 78001124 */  addiu      $s1, $zero, 0x78
    /* 31E98 801BAE10 1E80013C */  lui        $at, %hi(D_801D88AE)
    /* 31E9C 801BAE14 AE8831A4 */  sh         $s1, %lo(D_801D88AE)($at)
    /* 31EA0 801BAE18 1E80013C */  lui        $at, %hi(D_801D88B0)
    /* 31EA4 801BAE1C B08833A4 */  sh         $s3, %lo(D_801D88B0)($at)
    /* 31EA8 801BAE20 1E80013C */  lui        $at, %hi(D_801D88B2)
    /* 31EAC 801BAE24 B28820A4 */  sh         $zero, %lo(D_801D88B2)($at)
    /* 31EB0 801BAE28 1E80013C */  lui        $at, %hi(D_801D88B4)
    /* 31EB4 801BAE2C B48822A0 */  sb         $v0, %lo(D_801D88B4)($at)
    /* 31EB8 801BAE30 1E80013C */  lui        $at, %hi(D_801D88B5)
    /* 31EBC 801BAE34 B58823A0 */  sb         $v1, %lo(D_801D88B5)($at)
    /* 31EC0 801BAE38 1E80013C */  lui        $at, %hi(D_801D88B6)
    /* 31EC4 801BAE3C B68827A0 */  sb         $a3, %lo(D_801D88B6)($at)
    /* 31EC8 801BAE40 1E80013C */  lui        $at, %hi(D_801D88B7)
    /* 31ECC 801BAE44 B78822A0 */  sb         $v0, %lo(D_801D88B7)($at)
    /* 31ED0 801BAE48 1E80013C */  lui        $at, %hi(D_801D88B8)
    /* 31ED4 801BAE4C B88823A0 */  sb         $v1, %lo(D_801D88B8)($at)
    /* 31ED8 801BAE50 1E80013C */  lui        $at, %hi(D_801D88B9)
    /* 31EDC 801BAE54 B98827A0 */  sb         $a3, %lo(D_801D88B9)($at)
    /* 31EE0 801BAE58 1E80013C */  lui        $at, %hi(D_801D88BA)
    /* 31EE4 801BAE5C BA8828A0 */  sb         $t0, %lo(D_801D88BA)($at)
    /* 31EE8 801BAE60 1E80013C */  lui        $at, %hi(D_801D88BB)
    /* 31EEC 801BAE64 BB8829A0 */  sb         $t1, %lo(D_801D88BB)($at)
    /* 31EF0 801BAE68 1E80013C */  lui        $at, %hi(D_801D88BC)
    /* 31EF4 801BAE6C BC882AA0 */  sb         $t2, %lo(D_801D88BC)($at)
    /* 31EF8 801BAE70 875B060C */  jal        func_80196E1C
    /* 31EFC 801BAE74 06000624 */   addiu     $a2, $zero, 0x6
    /* 31F00 801BAE78 21200000 */  addu       $a0, $zero, $zero
    /* 31F04 801BAE7C 21280002 */  addu       $a1, $s0, $zero
    /* 31F08 801BAE80 0000A292 */  lbu        $v0, 0x0($s5)
    /* 31F0C 801BAE84 1E80033C */  lui        $v1, %hi(D_801D88C4 + 0x1)
    /* 31F10 801BAE88 C5886390 */  lbu        $v1, %lo(D_801D88C4 + 0x1)($v1)
    /* 31F14 801BAE8C 1E80073C */  lui        $a3, %hi(D_801D88C4 + 0x2)
    /* 31F18 801BAE90 C688E790 */  lbu        $a3, %lo(D_801D88C4 + 0x2)($a3)
    /* 31F1C 801BAE94 1E80013C */  lui        $at, %hi(D_801D88B0)
    /* 31F20 801BAE98 B08820A4 */  sh         $zero, %lo(D_801D88B0)($at)
    /* 31F24 801BAE9C 1E80013C */  lui        $at, %hi(D_801D88B2)
    /* 31F28 801BAEA0 B28831A4 */  sh         $s1, %lo(D_801D88B2)($at)
    /* 31F2C 801BAEA4 1E80013C */  lui        $at, %hi(D_801D88BA)
    /* 31F30 801BAEA8 BA8822A0 */  sb         $v0, %lo(D_801D88BA)($at)
    /* 31F34 801BAEAC 1E80013C */  lui        $at, %hi(D_801D88BB)
    /* 31F38 801BAEB0 BB8823A0 */  sb         $v1, %lo(D_801D88BB)($at)
    /* 31F3C 801BAEB4 1E80013C */  lui        $at, %hi(D_801D88BC)
    /* 31F40 801BAEB8 BC8827A0 */  sb         $a3, %lo(D_801D88BC)($at)
    /* 31F44 801BAEBC 875B060C */  jal        func_80196E1C
    /* 31F48 801BAEC0 06000624 */   addiu     $a2, $zero, 0x6
    /* 31F4C 801BAEC4 21200000 */  addu       $a0, $zero, $zero
    /* 31F50 801BAEC8 21280002 */  addu       $a1, $s0, $zero
    /* 31F54 801BAECC 0000A292 */  lbu        $v0, 0x0($s5)
    /* 31F58 801BAED0 1E80033C */  lui        $v1, %hi(D_801D88C4 + 0x1)
    /* 31F5C 801BAED4 C5886390 */  lbu        $v1, %lo(D_801D88C4 + 0x1)($v1)
    /* 31F60 801BAED8 1E80073C */  lui        $a3, %hi(D_801D88C4 + 0x2)
    /* 31F64 801BAEDC C688E790 */  lbu        $a3, %lo(D_801D88C4 + 0x2)($a3)
    /* 31F68 801BAEE0 1E80013C */  lui        $at, %hi(D_801D88AC)
    /* 31F6C 801BAEE4 AC8834A4 */  sh         $s4, %lo(D_801D88AC)($at)
    /* 31F70 801BAEE8 1E80013C */  lui        $at, %hi(D_801D88AE)
    /* 31F74 801BAEEC AE8820A4 */  sh         $zero, %lo(D_801D88AE)($at)
    /* 31F78 801BAEF0 1E80013C */  lui        $at, %hi(D_801D88B7)
    /* 31F7C 801BAEF4 B78822A0 */  sb         $v0, %lo(D_801D88B7)($at)
    /* 31F80 801BAEF8 1E80013C */  lui        $at, %hi(D_801D88B8)
    /* 31F84 801BAEFC B88823A0 */  sb         $v1, %lo(D_801D88B8)($at)
    /* 31F88 801BAF00 1E80013C */  lui        $at, %hi(D_801D88B9)
    /* 31F8C 801BAF04 B98827A0 */  sb         $a3, %lo(D_801D88B9)($at)
    /* 31F90 801BAF08 875B060C */  jal        func_80196E1C
    /* 31F94 801BAF0C 06000624 */   addiu     $a2, $zero, 0x6
    /* 31F98 801BAF10 21200000 */  addu       $a0, $zero, $zero
    /* 31F9C 801BAF14 21280002 */  addu       $a1, $s0, $zero
    /* 31FA0 801BAF18 0000C292 */  lbu        $v0, 0x0($s6)
    /* 31FA4 801BAF1C 1E80033C */  lui        $v1, %hi(D_801D88C0 + 0x1)
    /* 31FA8 801BAF20 C1886390 */  lbu        $v1, %lo(D_801D88C0 + 0x1)($v1)
    /* 31FAC 801BAF24 1E80073C */  lui        $a3, %hi(D_801D88C0 + 0x2)
    /* 31FB0 801BAF28 C288E790 */  lbu        $a3, %lo(D_801D88C0 + 0x2)($a3)
    /* 31FB4 801BAF2C 0000B4A4 */  sh         $s4, 0x0($a1)
    /* 31FB8 801BAF30 1E80013C */  lui        $at, %hi(D_801D88AA)
    /* 31FBC 801BAF34 AA8831A4 */  sh         $s1, %lo(D_801D88AA)($at)
    /* 31FC0 801BAF38 1E80013C */  lui        $at, %hi(D_801D88B4)
    /* 31FC4 801BAF3C B48822A0 */  sb         $v0, %lo(D_801D88B4)($at)
    /* 31FC8 801BAF40 1E80013C */  lui        $at, %hi(D_801D88B5)
    /* 31FCC 801BAF44 B58823A0 */  sb         $v1, %lo(D_801D88B5)($at)
    /* 31FD0 801BAF48 1E80013C */  lui        $at, %hi(D_801D88B6)
    /* 31FD4 801BAF4C B68827A0 */  sb         $a3, %lo(D_801D88B6)($at)
    /* 31FD8 801BAF50 875B060C */  jal        func_80196E1C
    /* 31FDC 801BAF54 06000624 */   addiu     $a2, $zero, 0x6
    /* 31FE0 801BAF58 0060043C */  lui        $a0, (0x60000000 >> 16)
    /* 31FE4 801BAF5C 38FF0524 */  addiu      $a1, $zero, -0xC8
    /* 31FE8 801BAF60 90010624 */  addiu      $a2, $zero, 0x190
    /* 31FEC 801BAF64 F0000224 */  addiu      $v0, $zero, 0xF0
    /* 31FF0 801BAF68 1000A2AF */  sw         $v0, 0x10($sp)
    /* 31FF4 801BAF6C 60000224 */  addiu      $v0, $zero, 0x60
    /* 31FF8 801BAF70 1400A2AF */  sw         $v0, 0x14($sp)
    /* 31FFC 801BAF74 1800A2AF */  sw         $v0, 0x18($sp)
    /* 32000 801BAF78 20000224 */  addiu      $v0, $zero, 0x20
    /* 32004 801BAF7C 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 32008 801BAF80 07000224 */  addiu      $v0, $zero, 0x7
    /* 3200C 801BAF84 88FF0724 */  addiu      $a3, $zero, -0x78
    /* 32010 801BAF88 005A060C */  jal        func_80196800
    /* 32014 801BAF8C 2000A2AF */   sw        $v0, 0x20($sp)
    /* 32018 801BAF90 4400BF8F */  lw         $ra, 0x44($sp)
    /* 3201C 801BAF94 4000B68F */  lw         $s6, 0x40($sp)
    /* 32020 801BAF98 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 32024 801BAF9C 3800B48F */  lw         $s4, 0x38($sp)
    /* 32028 801BAFA0 3400B38F */  lw         $s3, 0x34($sp)
    /* 3202C 801BAFA4 3000B28F */  lw         $s2, 0x30($sp)
    /* 32030 801BAFA8 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 32034 801BAFAC 2800B08F */  lw         $s0, 0x28($sp)
    /* 32038 801BAFB0 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 3203C 801BAFB4 0800E003 */  jr         $ra
    /* 32040 801BAFB8 00000000 */   nop
endlabel func_801BABC0
