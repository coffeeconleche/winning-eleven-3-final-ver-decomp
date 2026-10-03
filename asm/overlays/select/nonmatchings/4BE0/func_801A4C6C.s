nonmatching func_801A4C6C, 0x13C

glabel func_801A4C6C
    /* 1BCF4 801A4C6C 21280000 */  addu       $a1, $zero, $zero
    /* 1BCF8 801A4C70 1E80043C */  lui        $a0, %hi(D_801D8B17)
    /* 1BCFC 801A4C74 178B8490 */  lbu        $a0, %lo(D_801D8B17)($a0)
    /* 1BD00 801A4C78 00000000 */  nop
    /* 1BD04 801A4C7C 06008010 */  beqz       $a0, .L801A4C98
    /* 1BD08 801A4C80 21180000 */   addu      $v1, $zero, $zero
    /* 1BD0C 801A4C84 01000224 */  addiu      $v0, $zero, 0x1
    /* 1BD10 801A4C88 2A008210 */  beq        $a0, $v0, .L801A4D34
    /* 1BD14 801A4C8C 00000000 */   nop
    /* 1BD18 801A4C90 64930608 */  j          .L801A4D90
    /* 1BD1C 801A4C94 00000000 */   nop
  .L801A4C98:
    /* 1BD20 801A4C98 1180023C */  lui        $v0, %hi(D_80108667)
    /* 1BD24 801A4C9C 67864290 */  lbu        $v0, %lo(D_80108667)($v0)
    /* 1BD28 801A4CA0 00000000 */  nop
    /* 1BD2C 801A4CA4 0F004230 */  andi       $v0, $v0, 0xF
    /* 1BD30 801A4CA8 11004014 */  bnez       $v0, .L801A4CF0
    /* 1BD34 801A4CAC 00000000 */   nop
    /* 1BD38 801A4CB0 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 1BD3C 801A4CB4 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 1BD40 801A4CB8 00000000 */  nop
    /* 1BD44 801A4CBC 0F004330 */  andi       $v1, $v0, 0xF
    /* 1BD48 801A4CC0 80200300 */  sll        $a0, $v1, 2
    /* 1BD4C 801A4CC4 21208300 */  addu       $a0, $a0, $v1
    /* 1BD50 801A4CC8 80200400 */  sll        $a0, $a0, 2
    /* 1BD54 801A4CCC 21208300 */  addu       $a0, $a0, $v1
    /* 1BD58 801A4CD0 82180300 */  srl        $v1, $v1, 2
    /* 1BD5C 801A4CD4 40180300 */  sll        $v1, $v1, 1
    /* 1BD60 801A4CD8 5AFF6324 */  addiu      $v1, $v1, -0xA6
    /* 1BD64 801A4CDC 21288300 */  addu       $a1, $a0, $v1
    /* 1BD68 801A4CE0 02110200 */  srl        $v0, $v0, 4
    /* 1BD6C 801A4CE4 40110200 */  sll        $v0, $v0, 5
    /* 1BD70 801A4CE8 64930608 */  j          .L801A4D90
    /* 1BD74 801A4CEC CBFF4324 */   addiu     $v1, $v0, -0x35
  .L801A4CF0:
    /* 1BD78 801A4CF0 1E80043C */  lui        $a0, %hi(D_801D8A70)
    /* 1BD7C 801A4CF4 708A8490 */  lbu        $a0, %lo(D_801D8A70)($a0)
    /* 1BD80 801A4CF8 00000000 */  nop
    /* 1BD84 801A4CFC 07008330 */  andi       $v1, $a0, 0x7
    /* 1BD88 801A4D00 80100300 */  sll        $v0, $v1, 2
    /* 1BD8C 801A4D04 21104300 */  addu       $v0, $v0, $v1
    /* 1BD90 801A4D08 80100200 */  sll        $v0, $v0, 2
    /* 1BD94 801A4D0C 21104300 */  addu       $v0, $v0, $v1
    /* 1BD98 801A4D10 07004524 */  addiu      $a1, $v0, 0x7
    /* 1BD9C 801A4D14 C2200400 */  srl        $a0, $a0, 3
    /* 1BDA0 801A4D18 40100400 */  sll        $v0, $a0, 1
    /* 1BDA4 801A4D1C 21104400 */  addu       $v0, $v0, $a0
    /* 1BDA8 801A4D20 80100200 */  sll        $v0, $v0, 2
    /* 1BDAC 801A4D24 21104400 */  addu       $v0, $v0, $a0
    /* 1BDB0 801A4D28 40100200 */  sll        $v0, $v0, 1
    /* 1BDB4 801A4D2C 64930608 */  j          .L801A4D90
    /* 1BDB8 801A4D30 D0FF4324 */   addiu     $v1, $v0, -0x30
  .L801A4D34:
    /* 1BDBC 801A4D34 801F033C */  lui        $v1, (0x1F8002DD >> 16)
    /* 1BDC0 801A4D38 DD026390 */  lbu        $v1, (0x1F8002DD & 0xFFFF)($v1)
    /* 1BDC4 801A4D3C 2EBA023C */  lui        $v0, (0xBA2E8BA3 >> 16)
    /* 1BDC8 801A4D40 A38B4234 */  ori        $v0, $v0, (0xBA2E8BA3 & 0xFFFF)
    /* 1BDCC 801A4D44 19006200 */  multu      $v1, $v0
    /* 1BDD0 801A4D48 10300000 */  mfhi       $a2
    /* 1BDD4 801A4D4C C2200600 */  srl        $a0, $a2, 3
    /* 1BDD8 801A4D50 40100400 */  sll        $v0, $a0, 1
    /* 1BDDC 801A4D54 21104400 */  addu       $v0, $v0, $a0
    /* 1BDE0 801A4D58 80100200 */  sll        $v0, $v0, 2
    /* 1BDE4 801A4D5C 23104400 */  subu       $v0, $v0, $a0
    /* 1BDE8 801A4D60 23186200 */  subu       $v1, $v1, $v0
    /* 1BDEC 801A4D64 FF006330 */  andi       $v1, $v1, 0xFF
    /* 1BDF0 801A4D68 40110300 */  sll        $v0, $v1, 5
    /* 1BDF4 801A4D6C 23104300 */  subu       $v0, $v0, $v1
    /* 1BDF8 801A4D70 59FF4524 */  addiu      $a1, $v0, -0xA7
    /* 1BDFC 801A4D74 FF008430 */  andi       $a0, $a0, 0xFF
    /* 1BE00 801A4D78 40100400 */  sll        $v0, $a0, 1
    /* 1BE04 801A4D7C 21104400 */  addu       $v0, $v0, $a0
    /* 1BE08 801A4D80 80100200 */  sll        $v0, $v0, 2
    /* 1BE0C 801A4D84 23104400 */  subu       $v0, $v0, $a0
    /* 1BE10 801A4D88 40100200 */  sll        $v0, $v0, 1
    /* 1BE14 801A4D8C 0E004324 */  addiu      $v1, $v0, 0xE
  .L801A4D90:
    /* 1BE18 801A4D90 1E80013C */  lui        $at, %hi(D_801D8A86)
    /* 1BE1C 801A4D94 868A25A4 */  sh         $a1, %lo(D_801D8A86)($at)
    /* 1BE20 801A4D98 1E80013C */  lui        $at, %hi(D_801D8A88)
    /* 1BE24 801A4D9C 888A23A4 */  sh         $v1, %lo(D_801D8A88)($at)
    /* 1BE28 801A4DA0 0800E003 */  jr         $ra
    /* 1BE2C 801A4DA4 00000000 */   nop
endlabel func_801A4C6C
