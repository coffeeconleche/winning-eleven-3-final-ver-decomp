nonmatching func_801B0B9C, 0x5CC

glabel func_801B0B9C
    /* 27C24 801B0B9C 1180033C */  lui        $v1, %hi(D_8010A322)
    /* 27C28 801B0BA0 22A36390 */  lbu        $v1, %lo(D_8010A322)($v1)
    /* 27C2C 801B0BA4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 27C30 801B0BA8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 27C34 801B0BAC 1080113C */  lui        $s1, %hi(D_800FF748)
    /* 27C38 801B0BB0 48F73126 */  addiu      $s1, $s1, %lo(D_800FF748)
    /* 27C3C 801B0BB4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 27C40 801B0BB8 801F103C */  lui        $s0, (0x1F800000 >> 16)
    /* 27C44 801B0BBC 6700622C */  sltiu      $v0, $v1, 0x67
    /* 27C48 801B0BC0 63014010 */  beqz       $v0, .L801B1150
    /* 27C4C 801B0BC4 1800BFAF */   sw        $ra, 0x18($sp)
    /* 27C50 801B0BC8 80100300 */  sll        $v0, $v1, 2
    /* 27C54 801B0BCC 1980013C */  lui        $at, %hi(jtbl_8018A634)
    /* 27C58 801B0BD0 21082200 */  addu       $at, $at, $v0
    /* 27C5C 801B0BD4 34A6228C */  lw         $v0, %lo(jtbl_8018A634)($at)
    /* 27C60 801B0BD8 00000000 */  nop
    /* 27C64 801B0BDC 08004000 */  jr         $v0
    /* 27C68 801B0BE0 00000000 */   nop
  jlabel .L801B0BE4
    /* 27C6C 801B0BE4 1E80013C */  lui        $at, %hi(D_801D8DFB)
    /* 27C70 801B0BE8 FB8D20A0 */  sb         $zero, %lo(D_801D8DFB)($at)
    /* 27C74 801B0BEC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27C78 801B0BF0 21082102 */  addu       $at, $s1, $at
    /* 27C7C 801B0BF4 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 27C80 801B0BF8 01000324 */  addiu      $v1, $zero, 0x1
    /* 27C84 801B0BFC 1E80013C */  lui        $at, %hi(D_801D8DFC)
    /* 27C88 801B0C00 FC8D23A0 */  sb         $v1, %lo(D_801D8DFC)($at)
    /* 27C8C 801B0C04 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 27C90 801B0C08 F0A223A0 */  sb         $v1, %lo(D_801DA2F0)($at)
    /* 27C94 801B0C0C 51C40608 */  j          .L801B1144
    /* 27C98 801B0C10 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B0C14
    /* 27C9C 801B0C14 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27CA0 801B0C18 21082102 */  addu       $at, $s1, $at
    /* 27CA4 801B0C1C 238F2390 */  lbu        $v1, -0x70DD($at)
    /* 27CA8 801B0C20 01000224 */  addiu      $v0, $zero, 0x1
    /* 27CAC 801B0C24 47016214 */  bne        $v1, $v0, .L801B1144
    /* 27CB0 801B0C28 0A000224 */   addiu     $v0, $zero, 0xA
    /* 27CB4 801B0C2C 51C40608 */  j          .L801B1144
    /* 27CB8 801B0C30 14000224 */   addiu     $v0, $zero, 0x14
  jlabel .L801B0C34
    /* 27CBC 801B0C34 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27CC0 801B0C38 21082102 */  addu       $at, $s1, $at
    /* 27CC4 801B0C3C 228F2590 */  lbu        $a1, -0x70DE($at)
    /* 27CC8 801B0C40 1280043C */  lui        $a0, %hi(D_8011CA90)
    /* 27CCC 801B0C44 90CA8424 */  addiu      $a0, $a0, %lo(D_8011CA90)
    /* 27CD0 801B0C48 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27CD4 801B0C4C 21082102 */  addu       $at, $s1, $at
    /* 27CD8 801B0C50 158F20A0 */  sb         $zero, -0x70EB($at)
    /* 27CDC 801B0C54 3CA6060C */  jal        func_801A98F0
    /* 27CE0 801B0C58 00000000 */   nop
    /* 27CE4 801B0C5C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27CE8 801B0C60 21082102 */  addu       $at, $s1, $at
    /* 27CEC 801B0C64 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 27CF0 801B0C68 51C40608 */  j          .L801B1144
    /* 27CF4 801B0C6C 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B0C70
    /* 27CF8 801B0C70 E2020292 */  lbu        $v0, 0x2E2($s0)
    /* 27CFC 801B0C74 04000324 */  addiu      $v1, $zero, 0x4
    /* 27D00 801B0C78 FF004230 */  andi       $v0, $v0, 0xFF
    /* 27D04 801B0C7C 02004314 */  bne        $v0, $v1, .L801B0C88
    /* 27D08 801B0C80 03000424 */   addiu     $a0, $zero, 0x3
    /* 27D0C 801B0C84 02000424 */  addiu      $a0, $zero, 0x2
  .L801B0C88:
    /* 27D10 801B0C88 7F5C000C */  jal        func_800171FC
    /* 27D14 801B0C8C 00000000 */   nop
    /* 27D18 801B0C90 01000224 */  addiu      $v0, $zero, 0x1
    /* 27D1C 801B0C94 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27D20 801B0C98 21082102 */  addu       $at, $s1, $at
    /* 27D24 801B0C9C DAAB20A0 */  sb         $zero, -0x5426($at)
    /* 27D28 801B0CA0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27D2C 801B0CA4 21082102 */  addu       $at, $s1, $at
    /* 27D30 801B0CA8 238F22A0 */  sb         $v0, -0x70DD($at)
    /* 27D34 801B0CAC 54C40608 */  j          .L801B1150
    /* 27D38 801B0CB0 00000000 */   nop
  jlabel .L801B0CB4
    /* 27D3C 801B0CB4 15A7060C */  jal        func_801A9C54
    /* 27D40 801B0CB8 00000000 */   nop
    /* 27D44 801B0CBC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27D48 801B0CC0 21082102 */  addu       $at, $s1, $at
    /* 27D4C 801B0CC4 A0AB2390 */  lbu        $v1, -0x5460($at)
    /* 27D50 801B0CC8 00000000 */  nop
    /* 27D54 801B0CCC C0100300 */  sll        $v0, $v1, 3
    /* 27D58 801B0CD0 21104300 */  addu       $v0, $v0, $v1
    /* 27D5C 801B0CD4 80100200 */  sll        $v0, $v0, 2
    /* 27D60 801B0CD8 21102202 */  addu       $v0, $s1, $v0
    /* 27D64 801B0CDC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27D68 801B0CE0 21084100 */  addu       $at, $v0, $at
    /* 27D6C 801B0CE4 268F2390 */  lbu        $v1, -0x70DA($at)
    /* 27D70 801B0CE8 00000000 */  nop
    /* 27D74 801B0CEC 01006324 */  addiu      $v1, $v1, 0x1
    /* 27D78 801B0CF0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27D7C 801B0CF4 21084100 */  addu       $at, $v0, $at
    /* 27D80 801B0CF8 268F23A0 */  sb         $v1, -0x70DA($at)
    /* 27D84 801B0CFC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27D88 801B0D00 21082102 */  addu       $at, $s1, $at
    /* 27D8C 801B0D04 A1AB2390 */  lbu        $v1, -0x545F($at)
    /* 27D90 801B0D08 00000000 */  nop
    /* 27D94 801B0D0C C0100300 */  sll        $v0, $v1, 3
    /* 27D98 801B0D10 21104300 */  addu       $v0, $v0, $v1
    /* 27D9C 801B0D14 80100200 */  sll        $v0, $v0, 2
    /* 27DA0 801B0D18 21102202 */  addu       $v0, $s1, $v0
    /* 27DA4 801B0D1C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27DA8 801B0D20 21084100 */  addu       $at, $v0, $at
    /* 27DAC 801B0D24 268F2390 */  lbu        $v1, -0x70DA($at)
    /* 27DB0 801B0D28 00000000 */  nop
    /* 27DB4 801B0D2C 01006324 */  addiu      $v1, $v1, 0x1
    /* 27DB8 801B0D30 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27DBC 801B0D34 21084100 */  addu       $at, $v0, $at
    /* 27DC0 801B0D38 268F23A0 */  sb         $v1, -0x70DA($at)
    /* 27DC4 801B0D3C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27DC8 801B0D40 21082102 */  addu       $at, $s1, $at
    /* 27DCC 801B0D44 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 27DD0 801B0D48 51C40608 */  j          .L801B1144
    /* 27DD4 801B0D4C 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B0D50
    /* 27DD8 801B0D50 E2020292 */  lbu        $v0, 0x2E2($s0)
    /* 27DDC 801B0D54 04000324 */  addiu      $v1, $zero, 0x4
    /* 27DE0 801B0D58 FF004230 */  andi       $v0, $v0, 0xFF
    /* 27DE4 801B0D5C 03004314 */  bne        $v0, $v1, .L801B0D6C
    /* 27DE8 801B0D60 01000224 */   addiu     $v0, $zero, 0x1
    /* 27DEC 801B0D64 51C40608 */  j          .L801B1144
    /* 27DF0 801B0D68 50000224 */   addiu     $v0, $zero, 0x50
  .L801B0D6C:
    /* 27DF4 801B0D6C 1E80103C */  lui        $s0, %hi(D_801DA5D0)
    /* 27DF8 801B0D70 D0A51026 */  addiu      $s0, $s0, %lo(D_801DA5D0)
    /* 27DFC 801B0D74 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 27E00 801B0D78 38D620A4 */  sh         $zero, %lo(D_800AD638)($at)
    /* 27E04 801B0D7C 1E80013C */  lui        $at, %hi(D_801DA06B)
    /* 27E08 801B0D80 6BA020A0 */  sb         $zero, %lo(D_801DA06B)($at)
    /* 27E0C 801B0D84 1E80013C */  lui        $at, %hi(D_801DA069)
    /* 27E10 801B0D88 69A020A0 */  sb         $zero, %lo(D_801DA069)($at)
    /* 27E14 801B0D8C 1E80013C */  lui        $at, %hi(D_801DA06A)
    /* 27E18 801B0D90 6AA020A0 */  sb         $zero, %lo(D_801DA06A)($at)
    /* 27E1C 801B0D94 1E80013C */  lui        $at, %hi(D_801DA068)
    /* 27E20 801B0D98 68A020A0 */  sb         $zero, %lo(D_801DA068)($at)
    /* 27E24 801B0D9C 000000A6 */  sh         $zero, 0x0($s0)
    /* 27E28 801B0DA0 1E80013C */  lui        $at, %hi(D_801DA5D2)
    /* 27E2C 801B0DA4 D2A520A4 */  sh         $zero, %lo(D_801DA5D2)($at)
    /* 27E30 801B0DA8 1E80013C */  lui        $at, %hi(D_801DA5D4)
    /* 27E34 801B0DAC D4A522A4 */  sh         $v0, %lo(D_801DA5D4)($at)
    /* 27E38 801B0DB0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27E3C 801B0DB4 21082102 */  addu       $at, $s1, $at
    /* 27E40 801B0DB8 228F2390 */  lbu        $v1, -0x70DE($at)
    /* 27E44 801B0DBC 09000224 */  addiu      $v0, $zero, 0x9
    /* 27E48 801B0DC0 1E80013C */  lui        $at, %hi(D_801DA5D6)
    /* 27E4C 801B0DC4 D6A522A4 */  sh         $v0, %lo(D_801DA5D6)($at)
    /* 27E50 801B0DC8 50AB0234 */  ori        $v0, $zero, 0xAB50
    /* 27E54 801B0DCC 21182302 */  addu       $v1, $s1, $v1
    /* 27E58 801B0DD0 21186200 */  addu       $v1, $v1, $v0
    /* 27E5C 801B0DD4 00006290 */  lbu        $v0, 0x0($v1)
    /* 27E60 801B0DD8 00000000 */  nop
    /* 27E64 801B0DDC 02004234 */  ori        $v0, $v0, 0x2
    /* 27E68 801B0DE0 3CC40608 */  j          .L801B10F0
    /* 27E6C 801B0DE4 000062A0 */   sb        $v0, 0x0($v1)
  jlabel .L801B0DE8
    /* 27E70 801B0DE8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27E74 801B0DEC 21082102 */  addu       $at, $s1, $at
    /* 27E78 801B0DF0 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 27E7C 801B0DF4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27E80 801B0DF8 21082102 */  addu       $at, $s1, $at
    /* 27E84 801B0DFC D8AB20A0 */  sb         $zero, -0x5428($at)
    /* 27E88 801B0E00 51C40608 */  j          .L801B1144
    /* 27E8C 801B0E04 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B0E08
    /* 27E90 801B0E08 43C6060C */  jal        func_801B190C
    /* 27E94 801B0E0C 00000000 */   nop
    /* 27E98 801B0E10 02000324 */  addiu      $v1, $zero, 0x2
    /* 27E9C 801B0E14 CE004314 */  bne        $v0, $v1, .L801B1150
    /* 27EA0 801B0E18 28000224 */   addiu     $v0, $zero, 0x28
    /* 27EA4 801B0E1C 51C40608 */  j          .L801B1144
    /* 27EA8 801B0E20 00000000 */   nop
  jlabel .L801B0E24
    /* 27EAC 801B0E24 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27EB0 801B0E28 21082102 */  addu       $at, $s1, $at
    /* 27EB4 801B0E2C DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 27EB8 801B0E30 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27EBC 801B0E34 21082102 */  addu       $at, $s1, $at
    /* 27EC0 801B0E38 D8AB20A0 */  sb         $zero, -0x5428($at)
    /* 27EC4 801B0E3C 51C40608 */  j          .L801B1144
    /* 27EC8 801B0E40 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B0E44
    /* 27ECC 801B0E44 C3C6060C */  jal        func_801B1B0C
    /* 27ED0 801B0E48 21200000 */   addu      $a0, $zero, $zero
    /* 27ED4 801B0E4C 21184000 */  addu       $v1, $v0, $zero
    /* 27ED8 801B0E50 01000224 */  addiu      $v0, $zero, 0x1
    /* 27EDC 801B0E54 BA006210 */  beq        $v1, $v0, .L801B1140
    /* 27EE0 801B0E58 02000224 */   addiu     $v0, $zero, 0x2
    /* 27EE4 801B0E5C BC006214 */  bne        $v1, $v0, .L801B1150
    /* 27EE8 801B0E60 32000224 */   addiu     $v0, $zero, 0x32
    /* 27EEC 801B0E64 51C40608 */  j          .L801B1144
    /* 27EF0 801B0E68 00000000 */   nop
  jlabel .L801B0E6C
    /* 27EF4 801B0E6C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27EF8 801B0E70 21082102 */  addu       $at, $s1, $at
    /* 27EFC 801B0E74 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 27F00 801B0E78 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27F04 801B0E7C 21082102 */  addu       $at, $s1, $at
    /* 27F08 801B0E80 D8AB20A0 */  sb         $zero, -0x5428($at)
    /* 27F0C 801B0E84 51C40608 */  j          .L801B1144
    /* 27F10 801B0E88 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B0E8C
    /* 27F14 801B0E8C A5B8060C */  jal        func_801AE294
    /* 27F18 801B0E90 21200000 */   addu      $a0, $zero, $zero
    /* 27F1C 801B0E94 21184000 */  addu       $v1, $v0, $zero
    /* 27F20 801B0E98 01000224 */  addiu      $v0, $zero, 0x1
    /* 27F24 801B0E9C 05006210 */  beq        $v1, $v0, .L801B0EB4
    /* 27F28 801B0EA0 02000224 */   addiu     $v0, $zero, 0x2
    /* 27F2C 801B0EA4 AA006214 */  bne        $v1, $v0, .L801B1150
    /* 27F30 801B0EA8 3C000224 */   addiu     $v0, $zero, 0x3C
    /* 27F34 801B0EAC 51C40608 */  j          .L801B1144
    /* 27F38 801B0EB0 00000000 */   nop
  .L801B0EB4:
    /* 27F3C 801B0EB4 51C40608 */  j          .L801B1144
    /* 27F40 801B0EB8 28000224 */   addiu     $v0, $zero, 0x28
  jlabel .L801B0EBC
    /* 27F44 801B0EBC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27F48 801B0EC0 21082102 */  addu       $at, $s1, $at
    /* 27F4C 801B0EC4 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 27F50 801B0EC8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27F54 801B0ECC 21082102 */  addu       $at, $s1, $at
    /* 27F58 801B0ED0 D8AB20A0 */  sb         $zero, -0x5428($at)
    /* 27F5C 801B0ED4 51C40608 */  j          .L801B1144
    /* 27F60 801B0ED8 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B0EDC
    /* 27F64 801B0EDC A5B8060C */  jal        func_801AE294
    /* 27F68 801B0EE0 01000424 */   addiu     $a0, $zero, 0x1
    /* 27F6C 801B0EE4 21184000 */  addu       $v1, $v0, $zero
    /* 27F70 801B0EE8 01000224 */  addiu      $v0, $zero, 0x1
    /* 27F74 801B0EEC 05006210 */  beq        $v1, $v0, .L801B0F04
    /* 27F78 801B0EF0 02000224 */   addiu     $v0, $zero, 0x2
    /* 27F7C 801B0EF4 96006214 */  bne        $v1, $v0, .L801B1150
    /* 27F80 801B0EF8 46000224 */   addiu     $v0, $zero, 0x46
    /* 27F84 801B0EFC 51C40608 */  j          .L801B1144
    /* 27F88 801B0F00 00000000 */   nop
  .L801B0F04:
    /* 27F8C 801B0F04 51C40608 */  j          .L801B1144
    /* 27F90 801B0F08 32000224 */   addiu     $v0, $zero, 0x32
  jlabel .L801B0F0C
    /* 27F94 801B0F0C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27F98 801B0F10 21082102 */  addu       $at, $s1, $at
    /* 27F9C 801B0F14 DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 27FA0 801B0F18 01000224 */  addiu      $v0, $zero, 0x1
    /* 27FA4 801B0F1C 1E80013C */  lui        $at, %hi(D_801D8DFC)
    /* 27FA8 801B0F20 FC8D22A0 */  sb         $v0, %lo(D_801D8DFC)($at)
    /* 27FAC 801B0F24 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27FB0 801B0F28 21082102 */  addu       $at, $s1, $at
    /* 27FB4 801B0F2C D8AB20A0 */  sb         $zero, -0x5428($at)
    /* 27FB8 801B0F30 01006324 */  addiu      $v1, $v1, 0x1
    /* 27FBC 801B0F34 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27FC0 801B0F38 21082102 */  addu       $at, $s1, $at
    /* 27FC4 801B0F3C DAAB23A0 */  sb         $v1, -0x5426($at)
    /* 27FC8 801B0F40 54C40608 */  j          .L801B1150
    /* 27FCC 801B0F44 00000000 */   nop
  jlabel .L801B0F48
    /* 27FD0 801B0F48 1E80043C */  lui        $a0, %hi(D_801D8DFB)
    /* 27FD4 801B0F4C FB8D8490 */  lbu        $a0, %lo(D_801D8DFB)($a0)
    /* 27FD8 801B0F50 00000000 */  nop
    /* 27FDC 801B0F54 2B200400 */  sltu       $a0, $zero, $a0
    /* 27FE0 801B0F58 8BB3060C */  jal        func_801ACE2C
    /* 27FE4 801B0F5C 40200400 */   sll       $a0, $a0, 1
    /* 27FE8 801B0F60 21184000 */  addu       $v1, $v0, $zero
    /* 27FEC 801B0F64 02000224 */  addiu      $v0, $zero, 0x2
    /* 27FF0 801B0F68 0C006210 */  beq        $v1, $v0, .L801B0F9C
    /* 27FF4 801B0F6C 03006228 */   slti      $v0, $v1, 0x3
    /* 27FF8 801B0F70 05004010 */  beqz       $v0, .L801B0F88
    /* 27FFC 801B0F74 01000224 */   addiu     $v0, $zero, 0x1
    /* 28000 801B0F78 72006210 */  beq        $v1, $v0, .L801B1144
    /* 28004 801B0F7C 3C000224 */   addiu     $v0, $zero, 0x3C
    /* 28008 801B0F80 54C40608 */  j          .L801B1150
    /* 2800C 801B0F84 00000000 */   nop
  .L801B0F88:
    /* 28010 801B0F88 03000224 */  addiu      $v0, $zero, 0x3
    /* 28014 801B0F8C 05006210 */  beq        $v1, $v0, .L801B0FA4
    /* 28018 801B0F90 00000000 */   nop
    /* 2801C 801B0F94 54C40608 */  j          .L801B1150
    /* 28020 801B0F98 00000000 */   nop
  .L801B0F9C:
    /* 28024 801B0F9C 51C40608 */  j          .L801B1144
    /* 28028 801B0FA0 50000224 */   addiu     $v0, $zero, 0x50
  .L801B0FA4:
    /* 2802C 801B0FA4 9F0200A2 */  sb         $zero, 0x29F($s0)
    /* 28030 801B0FA8 715C000C */  jal        func_800171C4
    /* 28034 801B0FAC FF000424 */   addiu     $a0, $zero, 0xFF
    /* 28038 801B0FB0 54C40608 */  j          .L801B1150
    /* 2803C 801B0FB4 00000000 */   nop
  jlabel .L801B0FB8
    /* 28040 801B0FB8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 28044 801B0FBC 21082102 */  addu       $at, $s1, $at
    /* 28048 801B0FC0 228F2290 */  lbu        $v0, -0x70DE($at)
    /* 2804C 801B0FC4 00000000 */  nop
    /* 28050 801B0FC8 01004224 */  addiu      $v0, $v0, 0x1
    /* 28054 801B0FCC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 28058 801B0FD0 21082102 */  addu       $at, $s1, $at
    /* 2805C 801B0FD4 228F22A0 */  sb         $v0, -0x70DE($at)
    /* 28060 801B0FD8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 28064 801B0FDC 3000422C */  sltiu      $v0, $v0, 0x30
    /* 28068 801B0FE0 58004010 */  beqz       $v0, .L801B1144
    /* 2806C 801B0FE4 5A000224 */   addiu     $v0, $zero, 0x5A
    /* 28070 801B0FE8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 28074 801B0FEC 21082102 */  addu       $at, $s1, $at
    /* 28078 801B0FF0 DAAB20A0 */  sb         $zero, -0x5426($at)
    /* 2807C 801B0FF4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 28080 801B0FF8 21082102 */  addu       $at, $s1, $at
    /* 28084 801B0FFC 238F20A0 */  sb         $zero, -0x70DD($at)
    /* 28088 801B1000 54C40608 */  j          .L801B1150
    /* 2808C 801B1004 00000000 */   nop
  jlabel .L801B1008
    /* 28090 801B1008 7F5C000C */  jal        func_800171FC
    /* 28094 801B100C 0A000424 */   addiu     $a0, $zero, 0xA
    /* 28098 801B1010 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2809C 801B1014 21082102 */  addu       $at, $s1, $at
    /* 280A0 801B1018 DAAB20A0 */  sb         $zero, -0x5426($at)
    /* 280A4 801B101C 54C40608 */  j          .L801B1150
    /* 280A8 801B1020 00000000 */   nop
  jlabel .L801B1024
    /* 280AC 801B1024 4E39060C */  jal        func_8018E538
    /* 280B0 801B1028 21200000 */   addu      $a0, $zero, $zero
    /* 280B4 801B102C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 280B8 801B1030 21082102 */  addu       $at, $s1, $at
    /* 280BC 801B1034 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 280C0 801B1038 300300A2 */  sb         $zero, 0x330($s0)
    /* 280C4 801B103C 9F0200A2 */  sb         $zero, 0x29F($s0)
    /* 280C8 801B1040 51C40608 */  j          .L801B1144
    /* 280CC 801B1044 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B1048
    /* 280D0 801B1048 D966000C */  jal        func_80019B64
    /* 280D4 801B104C CA000424 */   addiu     $a0, $zero, 0xCA
    /* 280D8 801B1050 3F004010 */  beqz       $v0, .L801B1150
    /* 280DC 801B1054 01000224 */   addiu     $v0, $zero, 0x1
    /* 280E0 801B1058 300302A2 */  sb         $v0, 0x330($s0)
    /* 280E4 801B105C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 280E8 801B1060 21082102 */  addu       $at, $s1, $at
    /* 280EC 801B1064 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 280F0 801B1068 FF000324 */  addiu      $v1, $zero, 0xFF
    /* 280F4 801B106C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 280F8 801B1070 21082102 */  addu       $at, $s1, $at
    /* 280FC 801B1074 D6AB23A4 */  sh         $v1, -0x542A($at)
    /* 28100 801B1078 51C40608 */  j          .L801B1144
    /* 28104 801B107C 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B1080
    /* 28108 801B1080 88AD020C */  jal        func_800AB620
    /* 2810C 801B1084 05020424 */   addiu     $a0, $zero, 0x205
    /* 28110 801B1088 34A3060C */  jal        func_801A8CD0
    /* 28114 801B108C 00000000 */   nop
    /* 28118 801B1090 01000224 */  addiu      $v0, $zero, 0x1
    /* 2811C 801B1094 1E80103C */  lui        $s0, %hi(D_801DA5D0)
    /* 28120 801B1098 D0A51026 */  addiu      $s0, $s0, %lo(D_801DA5D0)
    /* 28124 801B109C 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 28128 801B10A0 F0A222A0 */  sb         $v0, %lo(D_801DA2F0)($at)
    /* 2812C 801B10A4 01000224 */  addiu      $v0, $zero, 0x1
    /* 28130 801B10A8 000000A6 */  sh         $zero, 0x0($s0)
    /* 28134 801B10AC 1E80013C */  lui        $at, %hi(D_801DA5D4)
    /* 28138 801B10B0 D4A522A4 */  sh         $v0, %lo(D_801DA5D4)($at)
    /* 2813C 801B10B4 09000224 */  addiu      $v0, $zero, 0x9
    /* 28140 801B10B8 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 28144 801B10BC 38D620A4 */  sh         $zero, %lo(D_800AD638)($at)
    /* 28148 801B10C0 1E80013C */  lui        $at, %hi(D_801DA06B)
    /* 2814C 801B10C4 6BA020A0 */  sb         $zero, %lo(D_801DA06B)($at)
    /* 28150 801B10C8 1E80013C */  lui        $at, %hi(D_801DA069)
    /* 28154 801B10CC 69A020A0 */  sb         $zero, %lo(D_801DA069)($at)
    /* 28158 801B10D0 1E80013C */  lui        $at, %hi(D_801DA06A)
    /* 2815C 801B10D4 6AA020A0 */  sb         $zero, %lo(D_801DA06A)($at)
    /* 28160 801B10D8 1E80013C */  lui        $at, %hi(D_801DA068)
    /* 28164 801B10DC 68A020A0 */  sb         $zero, %lo(D_801DA068)($at)
    /* 28168 801B10E0 1E80013C */  lui        $at, %hi(D_801DA5D2)
    /* 2816C 801B10E4 D2A520A4 */  sh         $zero, %lo(D_801DA5D2)($at)
    /* 28170 801B10E8 1E80013C */  lui        $at, %hi(D_801DA5D6)
    /* 28174 801B10EC D6A522A4 */  sh         $v0, %lo(D_801DA5D6)($at)
  .L801B10F0:
    /* 28178 801B10F0 3FCC060C */  jal        func_801B30FC
    /* 2817C 801B10F4 00000000 */   nop
    /* 28180 801B10F8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 28184 801B10FC 21082102 */  addu       $at, $s1, $at
    /* 28188 801B1100 A0AB2390 */  lbu        $v1, -0x5460($at)
    /* 2818C 801B1104 0100013C */  lui        $at, (0x10000 >> 16)
    /* 28190 801B1108 21082102 */  addu       $at, $s1, $at
    /* 28194 801B110C 228F2490 */  lbu        $a0, -0x70DE($at)
    /* 28198 801B1110 C0100300 */  sll        $v0, $v1, 3
    /* 2819C 801B1114 21104300 */  addu       $v0, $v0, $v1
    /* 281A0 801B1118 80100200 */  sll        $v0, $v0, 2
    /* 281A4 801B111C 21102202 */  addu       $v0, $s1, $v0
    /* 281A8 801B1120 0100013C */  lui        $at, (0x10000 >> 16)
    /* 281AC 801B1124 21084100 */  addu       $at, $v0, $at
    /* 281B0 801B1128 278F2290 */  lbu        $v0, -0x70D9($at)
    /* 281B4 801B112C 48CF060C */  jal        func_801B3D20
    /* 281B8 801B1130 000002A6 */   sh        $v0, 0x0($s0)
    /* 281BC 801B1134 FF004230 */  andi       $v0, $v0, 0xFF
    /* 281C0 801B1138 1E80013C */  lui        $at, %hi(D_801DA5D2)
    /* 281C4 801B113C D2A522A4 */  sh         $v0, %lo(D_801DA5D2)($at)
  .L801B1140:
    /* 281C8 801B1140 1E000224 */  addiu      $v0, $zero, 0x1E
  .L801B1144:
    /* 281CC 801B1144 0100013C */  lui        $at, (0x10000 >> 16)
    /* 281D0 801B1148 21082102 */  addu       $at, $s1, $at
    /* 281D4 801B114C DAAB22A0 */  sb         $v0, -0x5426($at)
  jlabel .L801B1150
    /* 281D8 801B1150 1800BF8F */  lw         $ra, 0x18($sp)
    /* 281DC 801B1154 1400B18F */  lw         $s1, 0x14($sp)
    /* 281E0 801B1158 1000B08F */  lw         $s0, 0x10($sp)
    /* 281E4 801B115C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 281E8 801B1160 0800E003 */  jr         $ra
    /* 281EC 801B1164 00000000 */   nop
endlabel func_801B0B9C
