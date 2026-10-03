nonmatching func_8019B898, 0xBA4

glabel func_8019B898
    /* 12920 8019B898 1180033C */  lui        $v1, %hi(D_8010A322)
    /* 12924 8019B89C 22A36390 */  lbu        $v1, %lo(D_8010A322)($v1)
    /* 12928 8019B8A0 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 1292C 8019B8A4 4800B0AF */  sw         $s0, 0x48($sp)
    /* 12930 8019B8A8 01001024 */  addiu      $s0, $zero, 0x1
    /* 12934 8019B8AC 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 12938 8019B8B0 1080113C */  lui        $s1, %hi(D_800FF748)
    /* 1293C 8019B8B4 48F73126 */  addiu      $s1, $s1, %lo(D_800FF748)
    /* 12940 8019B8B8 5400BFAF */  sw         $ra, 0x54($sp)
    /* 12944 8019B8BC 3300622C */  sltiu      $v0, $v1, 0x33
    /* 12948 8019B8C0 D7024010 */  beqz       $v0, .L8019C420
    /* 1294C 8019B8C4 5000B2AF */   sw        $s2, 0x50($sp)
    /* 12950 8019B8C8 80100300 */  sll        $v0, $v1, 2
    /* 12954 8019B8CC 1980013C */  lui        $at, %hi(jtbl_80189E7C)
    /* 12958 8019B8D0 21082200 */  addu       $at, $at, $v0
    /* 1295C 8019B8D4 7C9E228C */  lw         $v0, %lo(jtbl_80189E7C)($at)
    /* 12960 8019B8D8 00000000 */  nop
    /* 12964 8019B8DC 08004000 */  jr         $v0
    /* 12968 8019B8E0 00000000 */   nop
  jlabel .L8019B8E4
    /* 1296C 8019B8E4 01000224 */  addiu      $v0, $zero, 0x1
    /* 12970 8019B8E8 02000324 */  addiu      $v1, $zero, 0x2
    /* 12974 8019B8EC 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 12978 8019B8F0 38D620A4 */  sh         $zero, %lo(D_800AD638)($at)
    /* 1297C 8019B8F4 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 12980 8019B8F8 50AE20A0 */  sb         $zero, %lo(D_801DAE50)($at)
    /* 12984 8019B8FC 1E80013C */  lui        $at, %hi(D_801D8C60)
    /* 12988 8019B900 608C20A0 */  sb         $zero, %lo(D_801D8C60)($at)
    /* 1298C 8019B904 801F013C */  lui        $at, (0x1F8002E2 >> 16)
    /* 12990 8019B908 E20220A0 */  sb         $zero, (0x1F8002E2 & 0xFFFF)($at)
    /* 12994 8019B90C 1E80013C */  lui        $at, %hi(D_801D8DF4)
    /* 12998 8019B910 F48D20A0 */  sb         $zero, %lo(D_801D8DF4)($at)
    /* 1299C 8019B914 1E80013C */  lui        $at, %hi(D_801D8DF5)
    /* 129A0 8019B918 F58D22A0 */  sb         $v0, %lo(D_801D8DF5)($at)
    /* 129A4 8019B91C 1E80013C */  lui        $at, %hi(D_801D8DF6)
    /* 129A8 8019B920 F68D22A0 */  sb         $v0, %lo(D_801D8DF6)($at)
    /* 129AC 8019B924 1E80013C */  lui        $at, %hi(D_801D8DF7)
    /* 129B0 8019B928 F78D23A0 */  sb         $v1, %lo(D_801D8DF7)($at)
    /* 129B4 8019B92C 1E80013C */  lui        $at, %hi(D_801D8DF8)
    /* 129B8 8019B930 F88D22A0 */  sb         $v0, %lo(D_801D8DF8)($at)
    /* 129BC 8019B934 1E80013C */  lui        $at, %hi(D_801D8DF9)
    /* 129C0 8019B938 F98D20A0 */  sb         $zero, %lo(D_801D8DF9)($at)
    /* 129C4 8019B93C 1E80013C */  lui        $at, %hi(D_801D8DFA)
    /* 129C8 8019B940 FA8D22A0 */  sb         $v0, %lo(D_801D8DFA)($at)
    /* 129CC 8019B944 1E80013C */  lui        $at, %hi(D_801D8C64)
    /* 129D0 8019B948 648C20A0 */  sb         $zero, %lo(D_801D8C64)($at)
    /* 129D4 8019B94C 1E80013C */  lui        $at, %hi(D_801D8C65)
    /* 129D8 8019B950 658C22A0 */  sb         $v0, %lo(D_801D8C65)($at)
    /* 129DC 8019B954 1E80013C */  lui        $at, %hi(D_801D8C66)
    /* 129E0 8019B958 668C23A0 */  sb         $v1, %lo(D_801D8C66)($at)
    /* 129E4 8019B95C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 129E8 8019B960 21082102 */  addu       $at, $s1, $at
    /* 129EC 8019B964 DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 129F0 8019B968 03000224 */  addiu      $v0, $zero, 0x3
    /* 129F4 8019B96C 1E80013C */  lui        $at, %hi(D_801D8C67)
    /* 129F8 8019B970 678C22A0 */  sb         $v0, %lo(D_801D8C67)($at)
    /* 129FC 8019B974 1E80013C */  lui        $at, %hi(D_801DA2F4)
    /* 12A00 8019B978 F4A220A0 */  sb         $zero, %lo(D_801DA2F4)($at)
    /* 12A04 8019B97C 1E80013C */  lui        $at, %hi(D_801DA2F5)
    /* 12A08 8019B980 F5A220A0 */  sb         $zero, %lo(D_801DA2F5)($at)
    /* 12A0C 8019B984 1E80013C */  lui        $at, %hi(D_801DA2F6)
    /* 12A10 8019B988 F6A220A0 */  sb         $zero, %lo(D_801DA2F6)($at)
    /* 12A14 8019B98C 1E80013C */  lui        $at, %hi(D_801DA2F7)
    /* 12A18 8019B990 F7A220A0 */  sb         $zero, %lo(D_801DA2F7)($at)
    /* 12A1C 8019B994 1E80013C */  lui        $at, %hi(D_801DA064)
    /* 12A20 8019B998 64A020AC */  sw         $zero, %lo(D_801DA064)($at)
    /* 12A24 8019B99C 1E80013C */  lui        $at, %hi(D_801DA060)
    /* 12A28 8019B9A0 60A020AC */  sw         $zero, %lo(D_801DA060)($at)
    /* 12A2C 8019B9A4 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 12A30 8019B9A8 5CA020AC */  sw         $zero, %lo(D_801DA05C)($at)
    /* 12A34 8019B9AC 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 12A38 8019B9B0 58A020AC */  sw         $zero, %lo(D_801DA058)($at)
    /* 12A3C 8019B9B4 01006324 */  addiu      $v1, $v1, 0x1
    /* 12A40 8019B9B8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 12A44 8019B9BC 21082102 */  addu       $at, $s1, $at
    /* 12A48 8019B9C0 DAAB23A0 */  sb         $v1, -0x5426($at)
    /* 12A4C 8019B9C4 08710608 */  j          .L8019C420
    /* 12A50 8019B9C8 00000000 */   nop
  jlabel .L8019B9CC
    /* 12A54 8019B9CC 0F71060C */  jal        func_8019C43C
    /* 12A58 8019B9D0 00000000 */   nop
    /* 12A5C 8019B9D4 756F0608 */  j          .L8019BDD4
    /* 12A60 8019B9D8 00000000 */   nop
  jlabel .L8019B9DC
    /* 12A64 8019B9DC 01000424 */  addiu      $a0, $zero, 0x1
    /* 12A68 8019B9E0 C839060C */  jal        func_8018E720
    /* 12A6C 8019B9E4 21280000 */   addu      $a1, $zero, $zero
    /* 12A70 8019B9E8 8771060C */  jal        func_8019C61C
    /* 12A74 8019B9EC 24800202 */   and       $s0, $s0, $v0
    /* 12A78 8019B9F0 24800202 */  and        $s0, $s0, $v0
    /* 12A7C 8019B9F4 8A020012 */  beqz       $s0, .L8019C420
    /* 12A80 8019B9F8 00000000 */   nop
    /* 12A84 8019B9FC 756F0608 */  j          .L8019BDD4
    /* 12A88 8019BA00 00000000 */   nop
  jlabel .L8019BA04
    /* 12A8C 8019BA04 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 12A90 8019BA08 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 12A94 8019BA0C 04000224 */  addiu      $v0, $zero, 0x4
    /* 12A98 8019BA10 06006210 */  beq        $v1, $v0, .L8019BA2C
    /* 12A9C 8019BA14 26000424 */   addiu     $a0, $zero, 0x26
    /* 12AA0 8019BA18 31000524 */  addiu      $a1, $zero, 0x31
    /* 12AA4 8019BA1C 2B39060C */  jal        func_8018E4AC
    /* 12AA8 8019BA20 21300000 */   addu      $a2, $zero, $zero
    /* 12AAC 8019BA24 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 12AB0 8019BA28 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
  .L8019BA2C:
    /* 12AB4 8019BA2C 00000000 */  nop
    /* 12AB8 8019BA30 0500622C */  sltiu      $v0, $v1, 0x5
    /* 12ABC 8019BA34 8E004010 */  beqz       $v0, .L8019BC70
    /* 12AC0 8019BA38 80100300 */   sll       $v0, $v1, 2
    /* 12AC4 8019BA3C 1980013C */  lui        $at, %hi(jtbl_80189F4C)
    /* 12AC8 8019BA40 21082200 */  addu       $at, $at, $v0
    /* 12ACC 8019BA44 4C9F228C */  lw         $v0, %lo(jtbl_80189F4C)($at)
    /* 12AD0 8019BA48 00000000 */  nop
    /* 12AD4 8019BA4C 08004000 */  jr         $v0
    /* 12AD8 8019BA50 00000000 */   nop
  jlabel .L8019BA54
    /* 12ADC 8019BA54 2778060C */  jal        func_8019E09C
    /* 12AE0 8019BA58 00000000 */   nop
    /* 12AE4 8019BA5C 0B80023C */  lui        $v0, %hi(D_800AD638)
    /* 12AE8 8019BA60 38D64294 */  lhu        $v0, %lo(D_800AD638)($v0)
    /* 12AEC 8019BA64 1E80013C */  lui        $at, %hi(D_801DA2F4)
    /* 12AF0 8019BA68 21082200 */  addu       $at, $at, $v0
    /* 12AF4 8019BA6C F4A22490 */  lbu        $a0, %lo(D_801DA2F4)($at)
    /* 12AF8 8019BA70 7478060C */  jal        func_8019E1D0
    /* 12AFC 8019BA74 00000000 */   nop
    /* 12B00 8019BA78 0B80023C */  lui        $v0, %hi(D_800AD638)
    /* 12B04 8019BA7C 38D64294 */  lhu        $v0, %lo(D_800AD638)($v0)
    /* 12B08 8019BA80 1E80013C */  lui        $at, %hi(D_801DA2F4)
    /* 12B0C 8019BA84 21082200 */  addu       $at, $at, $v0
    /* 12B10 8019BA88 F4A22490 */  lbu        $a0, %lo(D_801DA2F4)($at)
    /* 12B14 8019BA8C 9778060C */  jal        func_8019E25C
    /* 12B18 8019BA90 00000000 */   nop
    /* 12B1C 8019BA94 1280053C */  lui        $a1, %hi(D_8011D698)
    /* 12B20 8019BA98 98D6A58C */  lw         $a1, %lo(D_8011D698)($a1)
    /* 12B24 8019BA9C FB6E0608 */  j          .L8019BBEC
    /* 12B28 8019BAA0 00000000 */   nop
  jlabel .L8019BAA4
    /* 12B2C 8019BAA4 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 12B30 8019BAA8 38D68494 */  lhu        $a0, %lo(D_800AD638)($a0)
    /* 12B34 8019BAAC 8F74060C */  jal        func_8019D23C
    /* 12B38 8019BAB0 00000000 */   nop
    /* 12B3C 8019BAB4 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 12B40 8019BAB8 38D68494 */  lhu        $a0, %lo(D_800AD638)($a0)
    /* 12B44 8019BABC D775060C */  jal        func_8019D75C
    /* 12B48 8019BAC0 00000000 */   nop
    /* 12B4C 8019BAC4 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 12B50 8019BAC8 38D68494 */  lhu        $a0, %lo(D_800AD638)($a0)
    /* 12B54 8019BACC 4176060C */  jal        func_8019D904
    /* 12B58 8019BAD0 00000000 */   nop
    /* 12B5C 8019BAD4 0B80023C */  lui        $v0, %hi(D_800AD638)
    /* 12B60 8019BAD8 38D64294 */  lhu        $v0, %lo(D_800AD638)($v0)
    /* 12B64 8019BADC 1E80013C */  lui        $at, %hi(D_801DA2F4)
    /* 12B68 8019BAE0 21082200 */  addu       $at, $at, $v0
    /* 12B6C 8019BAE4 F4A22290 */  lbu        $v0, %lo(D_801DA2F4)($at)
    /* 12B70 8019BAE8 00000000 */  nop
    /* 12B74 8019BAEC 80100200 */  sll        $v0, $v0, 2
    /* 12B78 8019BAF0 1280013C */  lui        $at, %hi(D_8011D6BC)
    /* 12B7C 8019BAF4 21082200 */  addu       $at, $at, $v0
    /* 12B80 8019BAF8 BCD6258C */  lw         $a1, %lo(D_8011D6BC)($at)
    /* 12B84 8019BAFC FB6E0608 */  j          .L8019BBEC
    /* 12B88 8019BB00 00000000 */   nop
  jlabel .L8019BB04
    /* 12B8C 8019BB04 1E80123C */  lui        $s2, %hi(D_801D8DF4)
    /* 12B90 8019BB08 F48D5226 */  addiu      $s2, $s2, %lo(D_801D8DF4)
    /* 12B94 8019BB0C 00004292 */  lbu        $v0, 0x0($s2)
    /* 12B98 8019BB10 01001024 */  addiu      $s0, $zero, 0x1
    /* 12B9C 8019BB14 06005010 */  beq        $v0, $s0, .L8019BB30
    /* 12BA0 8019BB18 02000224 */   addiu     $v0, $zero, 0x2
    /* 12BA4 8019BB1C 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 12BA8 8019BB20 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 12BAC 8019BB24 1E80013C */  lui        $at, %hi(D_801DA2F4)
    /* 12BB0 8019BB28 21082300 */  addu       $at, $at, $v1
    /* 12BB4 8019BB2C F4A222A0 */  sb         $v0, %lo(D_801DA2F4)($at)
  .L8019BB30:
    /* 12BB8 8019BB30 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 12BBC 8019BB34 38D68494 */  lhu        $a0, %lo(D_800AD638)($a0)
    /* 12BC0 8019BB38 8F74060C */  jal        func_8019D23C
    /* 12BC4 8019BB3C 00000000 */   nop
    /* 12BC8 8019BB40 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 12BCC 8019BB44 38D68494 */  lhu        $a0, %lo(D_800AD638)($a0)
    /* 12BD0 8019BB48 D775060C */  jal        func_8019D75C
    /* 12BD4 8019BB4C 00000000 */   nop
    /* 12BD8 8019BB50 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 12BDC 8019BB54 38D68494 */  lhu        $a0, %lo(D_800AD638)($a0)
    /* 12BE0 8019BB58 4176060C */  jal        func_8019D904
    /* 12BE4 8019BB5C 00000000 */   nop
    /* 12BE8 8019BB60 00004292 */  lbu        $v0, 0x0($s2)
    /* 12BEC 8019BB64 00000000 */  nop
    /* 12BF0 8019BB68 11005014 */  bne        $v0, $s0, .L8019BBB0
    /* 12BF4 8019BB6C 00000000 */   nop
    /* 12BF8 8019BB70 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 12BFC 8019BB74 38D68494 */  lhu        $a0, %lo(D_800AD638)($a0)
    /* 12C00 8019BB78 6A77060C */  jal        func_8019DDA8
    /* 12C04 8019BB7C 00000000 */   nop
    /* 12C08 8019BB80 0B80023C */  lui        $v0, %hi(D_800AD638)
    /* 12C0C 8019BB84 38D64294 */  lhu        $v0, %lo(D_800AD638)($v0)
    /* 12C10 8019BB88 1E80013C */  lui        $at, %hi(D_801DA2F4)
    /* 12C14 8019BB8C 21082200 */  addu       $at, $at, $v0
    /* 12C18 8019BB90 F4A22290 */  lbu        $v0, %lo(D_801DA2F4)($at)
    /* 12C1C 8019BB94 00000000 */  nop
    /* 12C20 8019BB98 80100200 */  sll        $v0, $v0, 2
    /* 12C24 8019BB9C 1280013C */  lui        $at, %hi(D_8011D6C8)
    /* 12C28 8019BBA0 21082200 */  addu       $at, $at, $v0
    /* 12C2C 8019BBA4 C8D6258C */  lw         $a1, %lo(D_8011D6C8)($at)
    /* 12C30 8019BBA8 FB6E0608 */  j          .L8019BBEC
    /* 12C34 8019BBAC 00000000 */   nop
  .L8019BBB0:
    /* 12C38 8019BBB0 1280053C */  lui        $a1, %hi(D_8011D6D0)
    /* 12C3C 8019BBB4 D0D6A58C */  lw         $a1, %lo(D_8011D6D0)($a1)
    /* 12C40 8019BBB8 FB6E0608 */  j          .L8019BBEC
    /* 12C44 8019BBBC 00000000 */   nop
  jlabel .L8019BBC0
    /* 12C48 8019BBC0 0B80023C */  lui        $v0, %hi(D_800AD638)
    /* 12C4C 8019BBC4 38D64294 */  lhu        $v0, %lo(D_800AD638)($v0)
    /* 12C50 8019BBC8 1E80013C */  lui        $at, %hi(D_801DA2F4)
    /* 12C54 8019BBCC 21082200 */  addu       $at, $at, $v0
    /* 12C58 8019BBD0 F4A22490 */  lbu        $a0, %lo(D_801DA2F4)($at)
    /* 12C5C 8019BBD4 9778060C */  jal        func_8019E25C
    /* 12C60 8019BBD8 00000000 */   nop
    /* 12C64 8019BBDC CF76060C */  jal        func_8019DB3C
    /* 12C68 8019BBE0 00000000 */   nop
    /* 12C6C 8019BBE4 1280053C */  lui        $a1, %hi(D_8011D6D8)
    /* 12C70 8019BBE8 D8D6A58C */  lw         $a1, %lo(D_8011D6D8)($a1)
  .L8019BBEC:
    /* 12C74 8019BBEC 183B060C */  jal        func_8018EC60
    /* 12C78 8019BBF0 21200000 */   addu      $a0, $zero, $zero
    /* 12C7C 8019BBF4 1C6F0608 */  j          .L8019BC70
    /* 12C80 8019BBF8 00000000 */   nop
  jlabel .L8019BBFC
    /* 12C84 8019BBFC CF76060C */  jal        func_8019DB3C
    /* 12C88 8019BC00 00000000 */   nop
    /* 12C8C 8019BC04 1280053C */  lui        $a1, %hi(D_8011D6DC)
    /* 12C90 8019BC08 DCD6A58C */  lw         $a1, %lo(D_8011D6DC)($a1)
    /* 12C94 8019BC0C 183B060C */  jal        func_8018EC60
    /* 12C98 8019BC10 21200000 */   addu      $a0, $zero, $zero
    /* 12C9C 8019BC14 31000424 */  addiu      $a0, $zero, 0x31
    /* 12CA0 8019BC18 25300524 */  addiu      $a1, $zero, 0x3025
    /* 12CA4 8019BC1C 21300000 */  addu       $a2, $zero, $zero
    /* 12CA8 8019BC20 18000224 */  addiu      $v0, $zero, 0x18
    /* 12CAC 8019BC24 1400A2AF */  sw         $v0, 0x14($sp)
    /* 12CB0 8019BC28 00100224 */  addiu      $v0, $zero, 0x1000
    /* 12CB4 8019BC2C 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 12CB8 8019BC30 2000A2AF */  sw         $v0, 0x20($sp)
    /* 12CBC 8019BC34 80000224 */  addiu      $v0, $zero, 0x80
    /* 12CC0 8019BC38 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 12CC4 8019BC3C 3000A2AF */  sw         $v0, 0x30($sp)
    /* 12CC8 8019BC40 3400A2AF */  sw         $v0, 0x34($sp)
    /* 12CCC 8019BC44 02000224 */  addiu      $v0, $zero, 0x2
    /* 12CD0 8019BC48 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 12CD4 8019BC4C 01000224 */  addiu      $v0, $zero, 0x1
    /* 12CD8 8019BC50 0A000724 */  addiu      $a3, $zero, 0xA
    /* 12CDC 8019BC54 1000A0AF */  sw         $zero, 0x10($sp)
    /* 12CE0 8019BC58 1800A0AF */  sw         $zero, 0x18($sp)
    /* 12CE4 8019BC5C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 12CE8 8019BC60 2800A0AF */  sw         $zero, 0x28($sp)
    /* 12CEC 8019BC64 3800A0AF */  sw         $zero, 0x38($sp)
    /* 12CF0 8019BC68 ED4F060C */  jal        func_80193FB4
    /* 12CF4 8019BC6C 4000A2AF */   sw        $v0, 0x40($sp)
  .L8019BC70:
    /* 12CF8 8019BC70 0B80023C */  lui        $v0, %hi(D_800AD638)
    /* 12CFC 8019BC74 38D64290 */  lbu        $v0, %lo(D_800AD638)($v0)
    /* 12D00 8019BC78 00000000 */  nop
    /* 12D04 8019BC7C 14004224 */  addiu      $v0, $v0, 0x14
    /* 12D08 8019BC80 0100013C */  lui        $at, (0x10000 >> 16)
    /* 12D0C 8019BC84 21082102 */  addu       $at, $s1, $at
    /* 12D10 8019BC88 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 12D14 8019BC8C 08710608 */  j          .L8019C420
    /* 12D18 8019BC90 00000000 */   nop
  jlabel .L8019BC94
    /* 12D1C 8019BC94 1E80023C */  lui        $v0, %hi(D_801DAE50)
    /* 12D20 8019BC98 50AE4290 */  lbu        $v0, %lo(D_801DAE50)($v0)
    /* 12D24 8019BC9C 00000000 */  nop
    /* 12D28 8019BCA0 05004224 */  addiu      $v0, $v0, 0x5
    /* 12D2C 8019BCA4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 12D30 8019BCA8 21082102 */  addu       $at, $s1, $at
    /* 12D34 8019BCAC DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 12D38 8019BCB0 08710608 */  j          .L8019C420
    /* 12D3C 8019BCB4 00000000 */   nop
  jlabel .L8019BCB8
    /* 12D40 8019BCB8 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 12D44 8019BCBC 38D68494 */  lhu        $a0, %lo(D_800AD638)($a0)
    /* 12D48 8019BCC0 04000224 */  addiu      $v0, $zero, 0x4
    /* 12D4C 8019BCC4 FFFF8330 */  andi       $v1, $a0, 0xFFFF
    /* 12D50 8019BCC8 0D006214 */  bne        $v1, $v0, .L8019BD00
    /* 12D54 8019BCCC 03000224 */   addiu     $v0, $zero, 0x3
    /* 12D58 8019BCD0 26000424 */  addiu      $a0, $zero, 0x26
    /* 12D5C 8019BCD4 31000524 */  addiu      $a1, $zero, 0x31
    /* 12D60 8019BCD8 1E80013C */  lui        $at, %hi(D_801D8FB8)
    /* 12D64 8019BCDC B88F20A0 */  sb         $zero, %lo(D_801D8FB8)($at)
    /* 12D68 8019BCE0 2B39060C */  jal        func_8018E4AC
    /* 12D6C 8019BCE4 21300000 */   addu      $a2, $zero, $zero
    /* 12D70 8019BCE8 28000224 */  addiu      $v0, $zero, 0x28
    /* 12D74 8019BCEC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 12D78 8019BCF0 21082102 */  addu       $at, $s1, $at
    /* 12D7C 8019BCF4 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 12D80 8019BCF8 08710608 */  j          .L8019C420
    /* 12D84 8019BCFC 00000000 */   nop
  .L8019BD00:
    /* 12D88 8019BD00 26006214 */  bne        $v1, $v0, .L8019BD9C
    /* 12D8C 8019BD04 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 12D90 8019BD08 01008224 */  addiu      $v0, $a0, 0x1
    /* 12D94 8019BD0C 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 12D98 8019BD10 38D622A4 */  sh         $v0, %lo(D_800AD638)($at)
    /* 12D9C 8019BD14 BA6F0608 */  j          .L8019BEE8
    /* 12DA0 8019BD18 03000224 */   addiu     $v0, $zero, 0x3
  jlabel .L8019BD1C
    /* 12DA4 8019BD1C 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 12DA8 8019BD20 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 12DAC 8019BD24 00000000 */  nop
    /* 12DB0 8019BD28 0E006014 */  bnez       $v1, .L8019BD64
    /* 12DB4 8019BD2C 04000224 */   addiu     $v0, $zero, 0x4
    /* 12DB8 8019BD30 26000424 */  addiu      $a0, $zero, 0x26
    /* 12DBC 8019BD34 31000524 */  addiu      $a1, $zero, 0x31
    /* 12DC0 8019BD38 1E80013C */  lui        $at, %hi(D_801D8FB8)
    /* 12DC4 8019BD3C B88F20A0 */  sb         $zero, %lo(D_801D8FB8)($at)
    /* 12DC8 8019BD40 2B39060C */  jal        func_8018E4AC
    /* 12DCC 8019BD44 21300000 */   addu      $a2, $zero, $zero
    /* 12DD0 8019BD48 32000224 */  addiu      $v0, $zero, 0x32
    /* 12DD4 8019BD4C 8C5E20A2 */  sb         $zero, 0x5E8C($s1)
    /* 12DD8 8019BD50 0100013C */  lui        $at, (0x10000 >> 16)
    /* 12DDC 8019BD54 21082102 */  addu       $at, $s1, $at
    /* 12DE0 8019BD58 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 12DE4 8019BD5C 08710608 */  j          .L8019C420
    /* 12DE8 8019BD60 00000000 */   nop
  .L8019BD64:
    /* 12DEC 8019BD64 0D006214 */  bne        $v1, $v0, .L8019BD9C
    /* 12DF0 8019BD68 01000224 */   addiu     $v0, $zero, 0x1
    /* 12DF4 8019BD6C 6C6520A2 */  sb         $zero, 0x656C($s1)
    /* 12DF8 8019BD70 0B80023C */  lui        $v0, %hi(D_800AD638)
    /* 12DFC 8019BD74 38D64294 */  lhu        $v0, %lo(D_800AD638)($v0)
    /* 12E00 8019BD78 03000324 */  addiu      $v1, $zero, 0x3
    /* 12E04 8019BD7C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 12E08 8019BD80 21082102 */  addu       $at, $s1, $at
    /* 12E0C 8019BD84 DAAB23A0 */  sb         $v1, -0x5426($at)
    /* 12E10 8019BD88 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 12E14 8019BD8C 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 12E18 8019BD90 38D622A4 */  sh         $v0, %lo(D_800AD638)($at)
    /* 12E1C 8019BD94 08710608 */  j          .L8019C420
    /* 12E20 8019BD98 00000000 */   nop
  .L8019BD9C:
    /* 12E24 8019BD9C 1E80013C */  lui        $at, %hi(D_801D8C60)
    /* 12E28 8019BDA0 608C22A0 */  sb         $v0, %lo(D_801D8C60)($at)
    /* 12E2C 8019BDA4 0A000224 */  addiu      $v0, $zero, 0xA
    /* 12E30 8019BDA8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 12E34 8019BDAC 21082102 */  addu       $at, $s1, $at
    /* 12E38 8019BDB0 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 12E3C 8019BDB4 08710608 */  j          .L8019C420
    /* 12E40 8019BDB8 00000000 */   nop
  jlabel .L8019BDBC
    /* 12E44 8019BDBC 1E000424 */  addiu      $a0, $zero, 0x1E
    /* 12E48 8019BDC0 25000524 */  addiu      $a1, $zero, 0x25
    /* 12E4C 8019BDC4 2B39060C */  jal        func_8018E4AC
    /* 12E50 8019BDC8 21300000 */   addu      $a2, $zero, $zero
    /* 12E54 8019BDCC 4373060C */  jal        func_8019CD0C
    /* 12E58 8019BDD0 00000000 */   nop
  .L8019BDD4:
    /* 12E5C 8019BDD4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 12E60 8019BDD8 21082102 */  addu       $at, $s1, $at
    /* 12E64 8019BDDC DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 12E68 8019BDE0 00000000 */  nop
    /* 12E6C 8019BDE4 01004224 */  addiu      $v0, $v0, 0x1
    /* 12E70 8019BDE8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 12E74 8019BDEC 21082102 */  addu       $at, $s1, $at
    /* 12E78 8019BDF0 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 12E7C 8019BDF4 08710608 */  j          .L8019C420
    /* 12E80 8019BDF8 00000000 */   nop
  jlabel .L8019BDFC
    /* 12E84 8019BDFC D572060C */  jal        func_8019CB54
    /* 12E88 8019BE00 00000000 */   nop
    /* 12E8C 8019BE04 05004014 */  bnez       $v0, .L8019BE1C
    /* 12E90 8019BE08 00000000 */   nop
    /* 12E94 8019BE0C 4373060C */  jal        func_8019CD0C
    /* 12E98 8019BE10 00000000 */   nop
    /* 12E9C 8019BE14 08710608 */  j          .L8019C420
    /* 12EA0 8019BE18 00000000 */   nop
  .L8019BE1C:
    /* 12EA4 8019BE1C 1E80023C */  lui        $v0, %hi(D_801D8C60)
    /* 12EA8 8019BE20 608C4280 */  lb         $v0, %lo(D_801D8C60)($v0)
    /* 12EAC 8019BE24 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 12EB0 8019BE28 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 12EB4 8019BE2C 05004004 */  bltz       $v0, .L8019BE44
    /* 12EB8 8019BE30 00000000 */   nop
    /* 12EBC 8019BE34 04004010 */  beqz       $v0, .L8019BE48
    /* 12EC0 8019BE38 00000000 */   nop
    /* 12EC4 8019BE3C 926F0608 */  j          .L8019BE48
    /* 12EC8 8019BE40 FFFF6324 */   addiu     $v1, $v1, -0x1
  .L8019BE44:
    /* 12ECC 8019BE44 01006324 */  addiu      $v1, $v1, 0x1
  .L8019BE48:
    /* 12ED0 8019BE48 0100013C */  lui        $at, (0x10000 >> 16)
    /* 12ED4 8019BE4C 21082102 */  addu       $at, $s1, $at
    /* 12ED8 8019BE50 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 12EDC 8019BE54 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 12EE0 8019BE58 38D623A4 */  sh         $v1, %lo(D_800AD638)($at)
    /* 12EE4 8019BE5C 0F004230 */  andi       $v0, $v0, 0xF
    /* 12EE8 8019BE60 19004014 */  bnez       $v0, .L8019BEC8
    /* 12EEC 8019BE64 14000424 */   addiu     $a0, $zero, 0x14
    /* 12EF0 8019BE68 FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* 12EF4 8019BE6C 02000224 */  addiu      $v0, $zero, 0x2
    /* 12EF8 8019BE70 16006214 */  bne        $v1, $v0, .L8019BECC
    /* 12EFC 8019BE74 1B000524 */   addiu     $a1, $zero, 0x1B
    /* 12F00 8019BE78 1E80033C */  lui        $v1, %hi(D_801D8C60)
    /* 12F04 8019BE7C 608C6380 */  lb         $v1, %lo(D_801D8C60)($v1)
    /* 12F08 8019BE80 20000224 */  addiu      $v0, $zero, 0x20
    /* 12F0C 8019BE84 1E80013C */  lui        $at, %hi(D_801D8DF7)
    /* 12F10 8019BE88 F78D22A0 */  sb         $v0, %lo(D_801D8DF7)($at)
    /* 12F14 8019BE8C 01000224 */  addiu      $v0, $zero, 0x1
    /* 12F18 8019BE90 1E80013C */  lui        $at, %hi(D_801D8DF8)
    /* 12F1C 8019BE94 F88D20A0 */  sb         $zero, %lo(D_801D8DF8)($at)
    /* 12F20 8019BE98 1E80013C */  lui        $at, %hi(D_801D8DF9)
    /* 12F24 8019BE9C F98D22A0 */  sb         $v0, %lo(D_801D8DF9)($at)
    /* 12F28 8019BEA0 05006004 */  bltz       $v1, .L8019BEB8
    /* 12F2C 8019BEA4 00000000 */   nop
    /* 12F30 8019BEA8 04006010 */  beqz       $v1, .L8019BEBC
    /* 12F34 8019BEAC 02000224 */   addiu     $v0, $zero, 0x2
    /* 12F38 8019BEB0 AF6F0608 */  j          .L8019BEBC
    /* 12F3C 8019BEB4 01000224 */   addiu     $v0, $zero, 0x1
  .L8019BEB8:
    /* 12F40 8019BEB8 03000224 */  addiu      $v0, $zero, 0x3
  .L8019BEBC:
    /* 12F44 8019BEBC 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 12F48 8019BEC0 38D622A4 */  sh         $v0, %lo(D_800AD638)($at)
    /* 12F4C 8019BEC4 14000424 */  addiu      $a0, $zero, 0x14
  .L8019BEC8:
    /* 12F50 8019BEC8 1B000524 */  addiu      $a1, $zero, 0x1B
  .L8019BECC:
    /* 12F54 8019BECC 1E80013C */  lui        $at, %hi(D_801D8C60)
    /* 12F58 8019BED0 608C20A0 */  sb         $zero, %lo(D_801D8C60)($at)
    /* 12F5C 8019BED4 2B39060C */  jal        func_8018E4AC
    /* 12F60 8019BED8 21300000 */   addu      $a2, $zero, $zero
    /* 12F64 8019BEDC 1772060C */  jal        func_8019C85C
    /* 12F68 8019BEE0 00000000 */   nop
  jlabel .L8019BEE4
    /* 12F6C 8019BEE4 03000224 */  addiu      $v0, $zero, 0x3
  .L8019BEE8:
    /* 12F70 8019BEE8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 12F74 8019BEEC 21082102 */  addu       $at, $s1, $at
    /* 12F78 8019BEF0 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 12F7C 8019BEF4 08710608 */  j          .L8019C420
    /* 12F80 8019BEF8 00000000 */   nop
  jlabel .L8019BEFC
    /* 12F84 8019BEFC 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 12F88 8019BF00 50AE20A0 */  sb         $zero, %lo(D_801DAE50)($at)
    /* 12F8C 8019BF04 20BB010C */  jal        func_8006EC80
    /* 12F90 8019BF08 21200000 */   addu      $a0, $zero, $zero
    /* 12F94 8019BF0C FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 12F98 8019BF10 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 12F9C 8019BF14 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 12FA0 8019BF18 00100224 */  addiu      $v0, $zero, 0x1000
    /* 12FA4 8019BF1C 03006210 */  beq        $v1, $v0, .L8019BF2C
    /* 12FA8 8019BF20 00400224 */   addiu     $v0, $zero, 0x4000
    /* 12FAC 8019BF24 17006214 */  bne        $v1, $v0, .L8019BF84
    /* 12FB0 8019BF28 00000000 */   nop
  .L8019BF2C:
    /* 12FB4 8019BF2C 88AD020C */  jal        func_800AB620
    /* 12FB8 8019BF30 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 12FBC 8019BF34 21280000 */  addu       $a1, $zero, $zero
    /* 12FC0 8019BF38 1E80103C */  lui        $s0, %hi(D_801DA2F4)
    /* 12FC4 8019BF3C F4A21026 */  addiu      $s0, $s0, %lo(D_801DA2F4)
    /* 12FC8 8019BF40 00000492 */  lbu        $a0, 0x0($s0)
    /* 12FCC 8019BF44 7B39060C */  jal        func_8018E5EC
    /* 12FD0 8019BF48 05000624 */   addiu     $a2, $zero, 0x5
    /* 12FD4 8019BF4C 000002A2 */  sb         $v0, 0x0($s0)
    /* 12FD8 8019BF50 FF004230 */  andi       $v0, $v0, 0xFF
    /* 12FDC 8019BF54 80100200 */  sll        $v0, $v0, 2
    /* 12FE0 8019BF58 1280013C */  lui        $at, %hi(D_8011D69C)
    /* 12FE4 8019BF5C 21082200 */  addu       $at, $at, $v0
    /* 12FE8 8019BF60 9CD6258C */  lw         $a1, %lo(D_8011D69C)($at)
    /* 12FEC 8019BF64 183B060C */  jal        func_8018EC60
    /* 12FF0 8019BF68 21200000 */   addu      $a0, $zero, $zero
    /* 12FF4 8019BF6C 00000492 */  lbu        $a0, 0x0($s0)
    /* 12FF8 8019BF70 7478060C */  jal        func_8019E1D0
    /* 12FFC 8019BF74 00000000 */   nop
    /* 13000 8019BF78 00000492 */  lbu        $a0, 0x0($s0)
    /* 13004 8019BF7C 9778060C */  jal        func_8019E25C
    /* 13008 8019BF80 00000000 */   nop
  .L8019BF84:
    /* 1300C 8019BF84 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 13010 8019BF88 A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 13014 8019BF8C 20000224 */  addiu      $v0, $zero, 0x20
    /* 13018 8019BF90 F7006214 */  bne        $v1, $v0, .L8019C370
    /* 1301C 8019BF94 40000224 */   addiu     $v0, $zero, 0x40
    /* 13020 8019BF98 88AD020C */  jal        func_800AB620
    /* 13024 8019BF9C 28050424 */   addiu     $a0, $zero, 0x528
    /* 13028 8019BFA0 1E80033C */  lui        $v1, %hi(D_801DA2F4)
    /* 1302C 8019BFA4 F4A26390 */  lbu        $v1, %lo(D_801DA2F4)($v1)
    /* 13030 8019BFA8 01000224 */  addiu      $v0, $zero, 0x1
    /* 13034 8019BFAC 1E80013C */  lui        $at, %hi(D_801D8DF5)
    /* 13038 8019BFB0 F58D22A0 */  sb         $v0, %lo(D_801D8DF5)($at)
    /* 1303C 8019BFB4 1E80013C */  lui        $at, %hi(D_801D8DF6)
    /* 13040 8019BFB8 F68D22A0 */  sb         $v0, %lo(D_801D8DF6)($at)
    /* 13044 8019BFBC 02000224 */  addiu      $v0, $zero, 0x2
    /* 13048 8019BFC0 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 1304C 8019BFC4 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
    /* 13050 8019BFC8 04000224 */  addiu      $v0, $zero, 0x4
    /* 13054 8019BFCC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 13058 8019BFD0 21082102 */  addu       $at, $s1, $at
    /* 1305C 8019BFD4 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 13060 8019BFD8 1E80013C */  lui        $at, %hi(D_801D8DF4)
    /* 13064 8019BFDC F48D23A0 */  sb         $v1, %lo(D_801D8DF4)($at)
    /* 13068 8019BFE0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1306C 8019BFE4 21082102 */  addu       $at, $s1, $at
    /* 13070 8019BFE8 1F8F23A0 */  sb         $v1, -0x70E1($at)
  .L8019BFEC:
    /* 13074 8019BFEC 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 13078 8019BFF0 A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 1307C 8019BFF4 DC700608 */  j          .L8019C370
    /* 13080 8019BFF8 40000224 */   addiu     $v0, $zero, 0x40
  jlabel .L8019BFFC
    /* 13084 8019BFFC 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 13088 8019C000 50AE20A0 */  sb         $zero, %lo(D_801DAE50)($at)
    /* 1308C 8019C004 20BB010C */  jal        func_8006EC80
    /* 13090 8019C008 21200000 */   addu      $a0, $zero, $zero
    /* 13094 8019C00C FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 13098 8019C010 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 1309C 8019C014 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 130A0 8019C018 00100224 */  addiu      $v0, $zero, 0x1000
    /* 130A4 8019C01C 03006210 */  beq        $v1, $v0, .L8019C02C
    /* 130A8 8019C020 00400224 */   addiu     $v0, $zero, 0x4000
    /* 130AC 8019C024 46006214 */  bne        $v1, $v0, .L8019C140
    /* 130B0 8019C028 00000000 */   nop
  .L8019C02C:
    /* 130B4 8019C02C 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 130B8 8019C030 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 130BC 8019C034 02000224 */  addiu      $v0, $zero, 0x2
    /* 130C0 8019C038 0A006214 */  bne        $v1, $v0, .L8019C064
    /* 130C4 8019C03C 01000224 */   addiu     $v0, $zero, 0x1
    /* 130C8 8019C040 1E80033C */  lui        $v1, %hi(D_801D8DF4)
    /* 130CC 8019C044 F48D6390 */  lbu        $v1, %lo(D_801D8DF4)($v1)
    /* 130D0 8019C048 00000000 */  nop
    /* 130D4 8019C04C 05006210 */  beq        $v1, $v0, .L8019C064
    /* 130D8 8019C050 00000000 */   nop
    /* 130DC 8019C054 88AD020C */  jal        func_800AB620
    /* 130E0 8019C058 12050424 */   addiu     $a0, $zero, 0x512
    /* 130E4 8019C05C 08710608 */  j          .L8019C420
    /* 130E8 8019C060 00000000 */   nop
  .L8019C064:
    /* 130EC 8019C064 88AD020C */  jal        func_800AB620
    /* 130F0 8019C068 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 130F4 8019C06C 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 130F8 8019C070 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 130FC 8019C074 01000224 */  addiu      $v0, $zero, 0x1
    /* 13100 8019C078 05006210 */  beq        $v1, $v0, .L8019C090
    /* 13104 8019C07C 02000224 */   addiu     $v0, $zero, 0x2
    /* 13108 8019C080 11006210 */  beq        $v1, $v0, .L8019C0C8
    /* 1310C 8019C084 00000000 */   nop
    /* 13110 8019C088 4C700608 */  j          .L8019C130
    /* 13114 8019C08C 00000000 */   nop
  .L8019C090:
    /* 13118 8019C090 21280000 */  addu       $a1, $zero, $zero
    /* 1311C 8019C094 1E80103C */  lui        $s0, %hi(D_801DA2F5)
    /* 13120 8019C098 F5A21026 */  addiu      $s0, $s0, %lo(D_801DA2F5)
    /* 13124 8019C09C 00000492 */  lbu        $a0, 0x0($s0)
    /* 13128 8019C0A0 7B39060C */  jal        func_8018E5EC
    /* 1312C 8019C0A4 01000624 */   addiu     $a2, $zero, 0x1
    /* 13130 8019C0A8 000002A2 */  sb         $v0, 0x0($s0)
    /* 13134 8019C0AC FF004230 */  andi       $v0, $v0, 0xFF
    /* 13138 8019C0B0 80100200 */  sll        $v0, $v0, 2
    /* 1313C 8019C0B4 1280013C */  lui        $at, %hi(D_8011D6BC)
    /* 13140 8019C0B8 21082200 */  addu       $at, $at, $v0
    /* 13144 8019C0BC BCD6258C */  lw         $a1, %lo(D_8011D6BC)($at)
    /* 13148 8019C0C0 4A700608 */  j          .L8019C128
    /* 1314C 8019C0C4 00000000 */   nop
  .L8019C0C8:
    /* 13150 8019C0C8 1E80023C */  lui        $v0, %hi(D_801D8DF8)
    /* 13154 8019C0CC F88D4290 */  lbu        $v0, %lo(D_801D8DF8)($v0)
    /* 13158 8019C0D0 00000000 */  nop
    /* 1315C 8019C0D4 06004014 */  bnez       $v0, .L8019C0F0
    /* 13160 8019C0D8 21280000 */   addu      $a1, $zero, $zero
    /* 13164 8019C0DC 1E80103C */  lui        $s0, %hi(D_801DA2F6)
    /* 13168 8019C0E0 F6A21026 */  addiu      $s0, $s0, %lo(D_801DA2F6)
    /* 1316C 8019C0E4 00000492 */  lbu        $a0, 0x0($s0)
    /* 13170 8019C0E8 40700608 */  j          .L8019C100
    /* 13174 8019C0EC 01000624 */   addiu     $a2, $zero, 0x1
  .L8019C0F0:
    /* 13178 8019C0F0 1E80103C */  lui        $s0, %hi(D_801DA2F6)
    /* 1317C 8019C0F4 F6A21026 */  addiu      $s0, $s0, %lo(D_801DA2F6)
    /* 13180 8019C0F8 00000492 */  lbu        $a0, 0x0($s0)
    /* 13184 8019C0FC 02000624 */  addiu      $a2, $zero, 0x2
  .L8019C100:
    /* 13188 8019C100 7B39060C */  jal        func_8018E5EC
    /* 1318C 8019C104 00000000 */   nop
    /* 13190 8019C108 000002A2 */  sb         $v0, 0x0($s0)
    /* 13194 8019C10C 1E80023C */  lui        $v0, %hi(D_801DA2F6)
    /* 13198 8019C110 F6A24290 */  lbu        $v0, %lo(D_801DA2F6)($v0)
    /* 1319C 8019C114 00000000 */  nop
    /* 131A0 8019C118 80100200 */  sll        $v0, $v0, 2
    /* 131A4 8019C11C 1280013C */  lui        $at, %hi(D_8011D6C8)
    /* 131A8 8019C120 21082200 */  addu       $at, $at, $v0
    /* 131AC 8019C124 C8D6258C */  lw         $a1, %lo(D_8011D6C8)($at)
  .L8019C128:
    /* 131B0 8019C128 183B060C */  jal        func_8018EC60
    /* 131B4 8019C12C 21200000 */   addu      $a0, $zero, $zero
  .L8019C130:
    /* 131B8 8019C130 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 131BC 8019C134 38D68494 */  lhu        $a0, %lo(D_800AD638)($a0)
    /* 131C0 8019C138 D775060C */  jal        func_8019D75C
    /* 131C4 8019C13C 00000000 */   nop
  .L8019C140:
    /* 131C8 8019C140 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 131CC 8019C144 A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 131D0 8019C148 00800234 */  ori        $v0, $zero, 0x8000
    /* 131D4 8019C14C 03006210 */  beq        $v1, $v0, .L8019C15C
    /* 131D8 8019C150 00200224 */   addiu     $v0, $zero, 0x2000
    /* 131DC 8019C154 0E006214 */  bne        $v1, $v0, .L8019C190
    /* 131E0 8019C158 20000224 */   addiu     $v0, $zero, 0x20
  .L8019C15C:
    /* 131E4 8019C15C 88AD020C */  jal        func_800AB620
    /* 131E8 8019C160 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 131EC 8019C164 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 131F0 8019C168 38D68494 */  lhu        $a0, %lo(D_800AD638)($a0)
    /* 131F4 8019C16C 6A77060C */  jal        func_8019DDA8
    /* 131F8 8019C170 00000000 */   nop
    /* 131FC 8019C174 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 13200 8019C178 38D68494 */  lhu        $a0, %lo(D_800AD638)($a0)
    /* 13204 8019C17C 4176060C */  jal        func_8019D904
    /* 13208 8019C180 00000000 */   nop
    /* 1320C 8019C184 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 13210 8019C188 A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 13214 8019C18C 20000224 */  addiu      $v0, $zero, 0x20
  .L8019C190:
    /* 13218 8019C190 96FF6214 */  bne        $v1, $v0, .L8019BFEC
    /* 1321C 8019C194 00000000 */   nop
    /* 13220 8019C198 88AD020C */  jal        func_800AB620
    /* 13224 8019C19C 28050424 */   addiu     $a0, $zero, 0x528
    /* 13228 8019C1A0 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 1322C 8019C1A4 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 13230 8019C1A8 01000224 */  addiu      $v0, $zero, 0x1
    /* 13234 8019C1AC 26006214 */  bne        $v1, $v0, .L8019C248
    /* 13238 8019C1B0 01000224 */   addiu     $v0, $zero, 0x1
    /* 1323C 8019C1B4 1E80023C */  lui        $v0, %hi(D_801D8DF4)
    /* 13240 8019C1B8 F48D4290 */  lbu        $v0, %lo(D_801D8DF4)($v0)
    /* 13244 8019C1BC 00000000 */  nop
    /* 13248 8019C1C0 FFFF4324 */  addiu      $v1, $v0, -0x1
    /* 1324C 8019C1C4 0500622C */  sltiu      $v0, $v1, 0x5
    /* 13250 8019C1C8 21004010 */  beqz       $v0, .L8019C250
    /* 13254 8019C1CC 80100300 */   sll       $v0, $v1, 2
    /* 13258 8019C1D0 1980013C */  lui        $at, %hi(jtbl_80189F64)
    /* 1325C 8019C1D4 21082200 */  addu       $at, $at, $v0
    /* 13260 8019C1D8 649F228C */  lw         $v0, %lo(jtbl_80189F64)($at)
    /* 13264 8019C1DC 00000000 */  nop
    /* 13268 8019C1E0 08004000 */  jr         $v0
    /* 1326C 8019C1E4 00000000 */   nop
  jlabel .L8019C1E8
    /* 13270 8019C1E8 10000224 */  addiu      $v0, $zero, 0x10
    /* 13274 8019C1EC 1E80013C */  lui        $at, %hi(D_801D8DF7)
    /* 13278 8019C1F0 F78D22A0 */  sb         $v0, %lo(D_801D8DF7)($at)
    /* 1327C 8019C1F4 01000224 */  addiu      $v0, $zero, 0x1
    /* 13280 8019C1F8 1E80013C */  lui        $at, %hi(D_801D8DF8)
    /* 13284 8019C1FC F88D22A0 */  sb         $v0, %lo(D_801D8DF8)($at)
    /* 13288 8019C200 1E80013C */  lui        $at, %hi(D_801D8DF9)
    /* 1328C 8019C204 F98D20A0 */  sb         $zero, %lo(D_801D8DF9)($at)
    /* 13290 8019C208 95700608 */  j          .L8019C254
    /* 13294 8019C20C 02000224 */   addiu     $v0, $zero, 0x2
  jlabel .L8019C210
    /* 13298 8019C210 89700608 */  j          .L8019C224
    /* 1329C 8019C214 10000224 */   addiu     $v0, $zero, 0x10
  jlabel .L8019C218
    /* 132A0 8019C218 89700608 */  j          .L8019C224
    /* 132A4 8019C21C 08000224 */   addiu     $v0, $zero, 0x8
  jlabel .L8019C220
    /* 132A8 8019C220 05000224 */  addiu      $v0, $zero, 0x5
  .L8019C224:
    /* 132AC 8019C224 1E80013C */  lui        $at, %hi(D_801D8DF7)
    /* 132B0 8019C228 F78D22A0 */  sb         $v0, %lo(D_801D8DF7)($at)
    /* 132B4 8019C22C 01000224 */  addiu      $v0, $zero, 0x1
    /* 132B8 8019C230 1E80013C */  lui        $at, %hi(D_801D8DF8)
    /* 132BC 8019C234 F88D22A0 */  sb         $v0, %lo(D_801D8DF8)($at)
    /* 132C0 8019C238 1E80013C */  lui        $at, %hi(D_801D8DF9)
    /* 132C4 8019C23C F98D22A0 */  sb         $v0, %lo(D_801D8DF9)($at)
    /* 132C8 8019C240 95700608 */  j          .L8019C254
    /* 132CC 8019C244 02000224 */   addiu     $v0, $zero, 0x2
  .L8019C248:
    /* 132D0 8019C248 1E80013C */  lui        $at, %hi(D_801D8DFA)
    /* 132D4 8019C24C FA8D22A0 */  sb         $v0, %lo(D_801D8DFA)($at)
  .L8019C250:
    /* 132D8 8019C250 02000224 */  addiu      $v0, $zero, 0x2
  .L8019C254:
    /* 132DC 8019C254 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 132E0 8019C258 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
    /* 132E4 8019C25C 04000224 */  addiu      $v0, $zero, 0x4
    /* 132E8 8019C260 0100013C */  lui        $at, (0x10000 >> 16)
    /* 132EC 8019C264 21082102 */  addu       $at, $s1, $at
    /* 132F0 8019C268 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 132F4 8019C26C FB6F0608 */  j          .L8019BFEC
    /* 132F8 8019C270 00000000 */   nop
  jlabel .L8019C274
    /* 132FC 8019C274 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 13300 8019C278 50AE20A0 */  sb         $zero, %lo(D_801DAE50)($at)
    /* 13304 8019C27C 20BB010C */  jal        func_8006EC80
    /* 13308 8019C280 21200000 */   addu      $a0, $zero, $zero
    /* 1330C 8019C284 FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 13310 8019C288 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 13314 8019C28C A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 13318 8019C290 00100224 */  addiu      $v0, $zero, 0x1000
    /* 1331C 8019C294 0C006210 */  beq        $v1, $v0, .L8019C2C8
    /* 13320 8019C298 01106228 */   slti      $v0, $v1, 0x1001
    /* 13324 8019C29C 07004010 */  beqz       $v0, .L8019C2BC
    /* 13328 8019C2A0 20000224 */   addiu     $v0, $zero, 0x20
    /* 1332C 8019C2A4 20006210 */  beq        $v1, $v0, .L8019C328
    /* 13330 8019C2A8 40000224 */   addiu     $v0, $zero, 0x40
    /* 13334 8019C2AC 32006210 */  beq        $v1, $v0, .L8019C378
    /* 13338 8019C2B0 00000000 */   nop
    /* 1333C 8019C2B4 08710608 */  j          .L8019C420
    /* 13340 8019C2B8 00000000 */   nop
  .L8019C2BC:
    /* 13344 8019C2BC 00400224 */  addiu      $v0, $zero, 0x4000
    /* 13348 8019C2C0 57006214 */  bne        $v1, $v0, .L8019C420
    /* 1334C 8019C2C4 00000000 */   nop
  .L8019C2C8:
    /* 13350 8019C2C8 88AD020C */  jal        func_800AB620
    /* 13354 8019C2CC 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 13358 8019C2D0 1180043C */  lui        $a0, %hi(D_8010A5A4)
    /* 1335C 8019C2D4 A4A58494 */  lhu        $a0, %lo(D_8010A5A4)($a0)
    /* 13360 8019C2D8 00100224 */  addiu      $v0, $zero, 0x1000
    /* 13364 8019C2DC FFFF8330 */  andi       $v1, $a0, 0xFFFF
    /* 13368 8019C2E0 03006210 */  beq        $v1, $v0, .L8019C2F0
    /* 1336C 8019C2E4 00400224 */   addiu     $v0, $zero, 0x4000
    /* 13370 8019C2E8 04006214 */  bne        $v1, $v0, .L8019C2FC
    /* 13374 8019C2EC 00000000 */   nop
  .L8019C2F0:
    /* 13378 8019C2F0 00508238 */  xori       $v0, $a0, 0x5000
    /* 1337C 8019C2F4 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 13380 8019C2F8 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
  .L8019C2FC:
    /* 13384 8019C2FC 1E80103C */  lui        $s0, %hi(D_801D8DFA)
    /* 13388 8019C300 FA8D1026 */  addiu      $s0, $s0, %lo(D_801D8DFA)
    /* 1338C 8019C304 00000492 */  lbu        $a0, 0x0($s0)
    /* 13390 8019C308 1E80063C */  lui        $a2, %hi(D_801D8DF7)
    /* 13394 8019C30C F78DC690 */  lbu        $a2, %lo(D_801D8DF7)($a2)
    /* 13398 8019C310 7B39060C */  jal        func_8018E5EC
    /* 1339C 8019C314 01000524 */   addiu     $a1, $zero, 0x1
    /* 133A0 8019C318 CF76060C */  jal        func_8019DB3C
    /* 133A4 8019C31C 000002A2 */   sb        $v0, 0x0($s0)
    /* 133A8 8019C320 08710608 */  j          .L8019C420
    /* 133AC 8019C324 00000000 */   nop
  .L8019C328:
    /* 133B0 8019C328 88AD020C */  jal        func_800AB620
    /* 133B4 8019C32C 28050424 */   addiu     $a0, $zero, 0x528
    /* 133B8 8019C330 E1700608 */  j          .L8019C384
    /* 133BC 8019C334 02000224 */   addiu     $v0, $zero, 0x2
  jlabel .L8019C338
    /* 133C0 8019C338 3FBF010C */  jal        func_8006FCFC
    /* 133C4 8019C33C 36000424 */   addiu     $a0, $zero, 0x36
    /* 133C8 8019C340 20BB010C */  jal        func_8006EC80
    /* 133CC 8019C344 21200000 */   addu      $a0, $zero, $zero
    /* 133D0 8019C348 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 133D4 8019C34C A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 133D8 8019C350 FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 133DC 8019C354 20000224 */  addiu      $v0, $zero, 0x20
    /* 133E0 8019C358 05006214 */  bne        $v1, $v0, .L8019C370
    /* 133E4 8019C35C 40000224 */   addiu     $v0, $zero, 0x40
    /* 133E8 8019C360 88AD020C */  jal        func_800AB620
    /* 133EC 8019C364 28050424 */   addiu     $a0, $zero, 0x528
    /* 133F0 8019C368 E1700608 */  j          .L8019C384
    /* 133F4 8019C36C 02000224 */   addiu     $v0, $zero, 0x2
  .L8019C370:
    /* 133F8 8019C370 2B006214 */  bne        $v1, $v0, .L8019C420
    /* 133FC 8019C374 00000000 */   nop
  .L8019C378:
    /* 13400 8019C378 88AD020C */  jal        func_800AB620
    /* 13404 8019C37C 29050424 */   addiu     $a0, $zero, 0x529
    /* 13408 8019C380 01000224 */  addiu      $v0, $zero, 0x1
  .L8019C384:
    /* 1340C 8019C384 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 13410 8019C388 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
    /* 13414 8019C38C 04000224 */  addiu      $v0, $zero, 0x4
    /* 13418 8019C390 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1341C 8019C394 21082102 */  addu       $at, $s1, $at
    /* 13420 8019C398 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 13424 8019C39C 08710608 */  j          .L8019C420
    /* 13428 8019C3A0 00000000 */   nop
  jlabel .L8019C3A4
    /* 1342C 8019C3A4 02000424 */  addiu      $a0, $zero, 0x2
    /* 13430 8019C3A8 C839060C */  jal        func_8018E720
    /* 13434 8019C3AC 3A000524 */   addiu     $a1, $zero, 0x3A
    /* 13438 8019C3B0 CF71060C */  jal        func_8019C73C
    /* 1343C 8019C3B4 24800202 */   and       $s0, $s0, $v0
    /* 13440 8019C3B8 24800202 */  and        $s0, $s0, $v0
    /* 13444 8019C3BC 18000012 */  beqz       $s0, .L8019C420
    /* 13448 8019C3C0 1E000424 */   addiu     $a0, $zero, 0x1E
    /* 1344C 8019C3C4 31000524 */  addiu      $a1, $zero, 0x31
    /* 13450 8019C3C8 2B39060C */  jal        func_8018E4AC
    /* 13454 8019C3CC 21300000 */   addu      $a2, $zero, $zero
    /* 13458 8019C3D0 FF700608 */  j          .L8019C3FC
    /* 1345C 8019C3D4 03000424 */   addiu     $a0, $zero, 0x3
  jlabel .L8019C3D8
    /* 13460 8019C3D8 CF71060C */  jal        func_8019C73C
    /* 13464 8019C3DC 00000000 */   nop
    /* 13468 8019C3E0 24800202 */  and        $s0, $s0, $v0
    /* 1346C 8019C3E4 0E000012 */  beqz       $s0, .L8019C420
    /* 13470 8019C3E8 1E000424 */   addiu     $a0, $zero, 0x1E
    /* 13474 8019C3EC 31000524 */  addiu      $a1, $zero, 0x31
    /* 13478 8019C3F0 2B39060C */  jal        func_8018E4AC
    /* 1347C 8019C3F4 21300000 */   addu      $a2, $zero, $zero
    /* 13480 8019C3F8 01000424 */  addiu      $a0, $zero, 0x1
  .L8019C3FC:
    /* 13484 8019C3FC 1E80013C */  lui        $at, %hi(D_801D92BF)
    /* 13488 8019C400 BF9220A0 */  sb         $zero, %lo(D_801D92BF)($at)
    /* 1348C 8019C404 1E80013C */  lui        $at, %hi(D_801D92DB)
    /* 13490 8019C408 DB9220A0 */  sb         $zero, %lo(D_801D92DB)($at)
    /* 13494 8019C40C 7F5C000C */  jal        func_800171FC
    /* 13498 8019C410 00000000 */   nop
    /* 1349C 8019C414 0100013C */  lui        $at, (0x10000 >> 16)
    /* 134A0 8019C418 21082102 */  addu       $at, $s1, $at
    /* 134A4 8019C41C DAAB20A0 */  sb         $zero, -0x5426($at)
  jlabel .L8019C420
    /* 134A8 8019C420 5400BF8F */  lw         $ra, 0x54($sp)
    /* 134AC 8019C424 5000B28F */  lw         $s2, 0x50($sp)
    /* 134B0 8019C428 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 134B4 8019C42C 4800B08F */  lw         $s0, 0x48($sp)
    /* 134B8 8019C430 5800BD27 */  addiu      $sp, $sp, 0x58
    /* 134BC 8019C434 0800E003 */  jr         $ra
    /* 134C0 8019C438 00000000 */   nop
endlabel func_8019B898
