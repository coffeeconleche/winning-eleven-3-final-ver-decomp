nonmatching func_801B8D70, 0x148

glabel func_801B8D70
    /* 2FDF8 801B8D70 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2FDFC 801B8D74 21288000 */  addu       $a1, $a0, $zero
    /* 2FE00 801B8D78 1080063C */  lui        $a2, %hi(D_800FF748)
    /* 2FE04 801B8D7C 48F7C624 */  addiu      $a2, $a2, %lo(D_800FF748)
    /* 2FE08 801B8D80 1E80033C */  lui        $v1, %hi(D_801DA618)
    /* 2FE0C 801B8D84 18A66390 */  lbu        $v1, %lo(D_801DA618)($v1)
    /* 2FE10 801B8D88 01000224 */  addiu      $v0, $zero, 0x1
    /* 2FE14 801B8D8C 46006210 */  beq        $v1, $v0, .L801B8EA8
    /* 2FE18 801B8D90 1800BFAF */   sw        $ra, 0x18($sp)
    /* 2FE1C 801B8D94 0600A390 */  lbu        $v1, 0x6($a1)
    /* 2FE20 801B8D98 02000224 */  addiu      $v0, $zero, 0x2
    /* 2FE24 801B8D9C 37006214 */  bne        $v1, $v0, .L801B8E7C
    /* 2FE28 801B8DA0 FF000224 */   addiu     $v0, $zero, 0xFF
    /* 2FE2C 801B8DA4 01000224 */  addiu      $v0, $zero, 0x1
    /* 2FE30 801B8DA8 1E80013C */  lui        $at, %hi(D_801DA618)
    /* 2FE34 801B8DAC 18A622A0 */  sb         $v0, %lo(D_801DA618)($at)
    /* 2FE38 801B8DB0 0700A290 */  lbu        $v0, 0x7($a1)
    /* 2FE3C 801B8DB4 1180013C */  lui        $at, %hi(D_8010A2E8)
    /* 2FE40 801B8DB8 E8A222A0 */  sb         $v0, %lo(D_8010A2E8)($at)
    /* 2FE44 801B8DBC 0800A490 */  lbu        $a0, 0x8($a1)
    /* 2FE48 801B8DC0 21104600 */  addu       $v0, $v0, $a2
    /* 2FE4C 801B8DC4 1180013C */  lui        $at, %hi(D_8010A2E9)
    /* 2FE50 801B8DC8 E9A224A0 */  sb         $a0, %lo(D_8010A2E9)($at)
    /* 2FE54 801B8DCC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2FE58 801B8DD0 21084100 */  addu       $at, $v0, $at
    /* 2FE5C 801B8DD4 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 2FE60 801B8DD8 00000000 */  nop
    /* 2FE64 801B8DDC C0100300 */  sll        $v0, $v1, 3
    /* 2FE68 801B8DE0 21104300 */  addu       $v0, $v0, $v1
    /* 2FE6C 801B8DE4 80100200 */  sll        $v0, $v0, 2
    /* 2FE70 801B8DE8 21104600 */  addu       $v0, $v0, $a2
    /* 2FE74 801B8DEC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2FE78 801B8DF0 21084100 */  addu       $at, $v0, $at
    /* 2FE7C 801B8DF4 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 2FE80 801B8DF8 21208600 */  addu       $a0, $a0, $a2
    /* 2FE84 801B8DFC 801F013C */  lui        $at, (0x1F8002DD >> 16)
    /* 2FE88 801B8E00 DD0222A0 */  sb         $v0, (0x1F8002DD & 0xFFFF)($at)
    /* 2FE8C 801B8E04 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2FE90 801B8E08 21088100 */  addu       $at, $a0, $at
    /* 2FE94 801B8E0C 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 2FE98 801B8E10 00000000 */  nop
    /* 2FE9C 801B8E14 C0100300 */  sll        $v0, $v1, 3
    /* 2FEA0 801B8E18 21104300 */  addu       $v0, $v0, $v1
    /* 2FEA4 801B8E1C 80100200 */  sll        $v0, $v0, 2
    /* 2FEA8 801B8E20 21104600 */  addu       $v0, $v0, $a2
    /* 2FEAC 801B8E24 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2FEB0 801B8E28 21084100 */  addu       $at, $v0, $at
    /* 2FEB4 801B8E2C 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 2FEB8 801B8E30 801F013C */  lui        $at, (0x1F8002DE >> 16)
    /* 2FEBC 801B8E34 DE0222A0 */  sb         $v0, (0x1F8002DE & 0xFFFF)($at)
    /* 2FEC0 801B8E38 0000A28C */  lw         $v0, 0x0($a1)
    /* 2FEC4 801B8E3C 00000000 */  nop
    /* 2FEC8 801B8E40 05004290 */  lbu        $v0, 0x5($v0)
    /* 2FECC 801B8E44 1180013C */  lui        $at, %hi(D_8010A2F1)
    /* 2FED0 801B8E48 F1A222A0 */  sb         $v0, %lo(D_8010A2F1)($at)
    /* 2FED4 801B8E4C 0500A390 */  lbu        $v1, 0x5($a1)
    /* 2FED8 801B8E50 1180023C */  lui        $v0, %hi(D_8010866A)
    /* 2FEDC 801B8E54 6A864290 */  lbu        $v0, %lo(D_8010866A)($v0)
    /* 2FEE0 801B8E58 1E80013C */  lui        $at, %hi(D_801D8A4C)
    /* 2FEE4 801B8E5C 4C8A25AC */  sw         $a1, %lo(D_801D8A4C)($at)
    /* 2FEE8 801B8E60 00190300 */  sll        $v1, $v1, 4
    /* 2FEEC 801B8E64 0F004230 */  andi       $v0, $v0, 0xF
    /* 2FEF0 801B8E68 25186200 */  or         $v1, $v1, $v0
    /* 2FEF4 801B8E6C 1180013C */  lui        $at, %hi(D_8010866A)
    /* 2FEF8 801B8E70 6A8623A0 */  sb         $v1, %lo(D_8010866A)($at)
    /* 2FEFC 801B8E74 AAE30608 */  j          .L801B8EA8
    /* 2FF00 801B8E78 00000000 */   nop
  .L801B8E7C:
    /* 2FF04 801B8E7C 0400A390 */  lbu        $v1, 0x4($a1)
    /* 2FF08 801B8E80 00000000 */  nop
    /* 2FF0C 801B8E84 05006214 */  bne        $v1, $v0, .L801B8E9C
    /* 2FF10 801B8E88 00000000 */   nop
    /* 2FF14 801B8E8C 1E80013C */  lui        $at, %hi(D_801D8A4C)
    /* 2FF18 801B8E90 4C8A20AC */  sw         $zero, %lo(D_801D8A4C)($at)
    /* 2FF1C 801B8E94 AAE30608 */  j          .L801B8EA8
    /* 2FF20 801B8E98 00000000 */   nop
  .L801B8E9C:
    /* 2FF24 801B8E9C 0000A48C */  lw         $a0, 0x0($a1)
    /* 2FF28 801B8EA0 5CE3060C */  jal        func_801B8D70
    /* 2FF2C 801B8EA4 00000000 */   nop
  .L801B8EA8:
    /* 2FF30 801B8EA8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 2FF34 801B8EAC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2FF38 801B8EB0 0800E003 */  jr         $ra
    /* 2FF3C 801B8EB4 00000000 */   nop
endlabel func_801B8D70
