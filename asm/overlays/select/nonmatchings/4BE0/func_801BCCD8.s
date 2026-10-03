nonmatching func_801BCCD8, 0x2A8

glabel func_801BCCD8
    /* 33D60 801BCCD8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 33D64 801BCCDC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 33D68 801BCCE0 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 33D6C 801BCCE4 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 33D70 801BCCE8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 33D74 801BCCEC 801F123C */  lui        $s2, (0x1F8002D8 >> 16)
    /* 33D78 801BCCF0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 33D7C 801BCCF4 21980000 */  addu       $s3, $zero, $zero
    /* 33D80 801BCCF8 2400B5AF */  sw         $s5, 0x24($sp)
    /* 33D84 801BCCFC 80AB1534 */  ori        $s5, $zero, 0xAB80
    /* 33D88 801BCD00 2800BFAF */  sw         $ra, 0x28($sp)
    /* 33D8C 801BCD04 2000B4AF */  sw         $s4, 0x20($sp)
    /* 33D90 801BCD08 1400B1AF */  sw         $s1, 0x14($sp)
    /* 33D94 801BCD0C FF007432 */  andi       $s4, $s3, 0xFF
  .L801BCD10:
    /* 33D98 801BCD10 40881400 */  sll        $s1, $s4, 1
    /* 33D9C 801BCD14 1E80013C */  lui        $at, %hi(D_801D9290)
    /* 33DA0 801BCD18 21083100 */  addu       $at, $at, $s1
    /* 33DA4 801BCD1C 90922290 */  lbu        $v0, %lo(D_801D9290)($at)
    /* 33DA8 801BCD20 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33DAC 801BCD24 21080102 */  addu       $at, $s0, $at
    /* 33DB0 801BCD28 A0AB22A0 */  sb         $v0, -0x5460($at)
    /* 33DB4 801BCD2C 21105000 */  addu       $v0, $v0, $s0
    /* 33DB8 801BCD30 21105500 */  addu       $v0, $v0, $s5
    /* 33DBC 801BCD34 00004390 */  lbu        $v1, 0x0($v0)
    /* 33DC0 801BCD38 00000000 */  nop
    /* 33DC4 801BCD3C C0100300 */  sll        $v0, $v1, 3
    /* 33DC8 801BCD40 21104300 */  addu       $v0, $v0, $v1
    /* 33DCC 801BCD44 80100200 */  sll        $v0, $v0, 2
    /* 33DD0 801BCD48 21100202 */  addu       $v0, $s0, $v0
    /* 33DD4 801BCD4C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33DD8 801BCD50 21084100 */  addu       $at, $v0, $at
    /* 33DDC 801BCD54 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 33DE0 801BCD58 00000000 */  nop
    /* 33DE4 801BCD5C DD0242A2 */  sb         $v0, (0x1F8002DD & 0xFFFF)($s2)
    /* 33DE8 801BCD60 1E80013C */  lui        $at, %hi(D_801D9291)
    /* 33DEC 801BCD64 21083100 */  addu       $at, $at, $s1
    /* 33DF0 801BCD68 91922290 */  lbu        $v0, %lo(D_801D9291)($at)
    /* 33DF4 801BCD6C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33DF8 801BCD70 21080102 */  addu       $at, $s0, $at
    /* 33DFC 801BCD74 A1AB22A0 */  sb         $v0, -0x545F($at)
    /* 33E00 801BCD78 21105000 */  addu       $v0, $v0, $s0
    /* 33E04 801BCD7C 21105500 */  addu       $v0, $v0, $s5
    /* 33E08 801BCD80 00004390 */  lbu        $v1, 0x0($v0)
    /* 33E0C 801BCD84 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33E10 801BCD88 21080102 */  addu       $at, $s0, $at
    /* 33E14 801BCD8C 218F2490 */  lbu        $a0, -0x70DF($at)
    /* 33E18 801BCD90 C0100300 */  sll        $v0, $v1, 3
    /* 33E1C 801BCD94 21104300 */  addu       $v0, $v0, $v1
    /* 33E20 801BCD98 80100200 */  sll        $v0, $v0, 2
    /* 33E24 801BCD9C 21100202 */  addu       $v0, $s0, $v0
    /* 33E28 801BCDA0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33E2C 801BCDA4 21084100 */  addu       $at, $v0, $at
    /* 33E30 801BCDA8 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 33E34 801BCDAC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33E38 801BCDB0 21080102 */  addu       $at, $s0, $at
    /* 33E3C 801BCDB4 A0AB2390 */  lbu        $v1, -0x5460($at)
    /* 33E40 801BCDB8 00000000 */  nop
    /* 33E44 801BCDBC 61006410 */  beq        $v1, $a0, .L801BCF44
    /* 33E48 801BCDC0 DE0242A2 */   sb        $v0, (0x1F8002DE & 0xFFFF)($s2)
    /* 33E4C 801BCDC4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33E50 801BCDC8 21080102 */  addu       $at, $s0, $at
    /* 33E54 801BCDCC A1AB2290 */  lbu        $v0, -0x545F($at)
    /* 33E58 801BCDD0 00000000 */  nop
    /* 33E5C 801BCDD4 5B004410 */  beq        $v0, $a0, .L801BCF44
    /* 33E60 801BCDD8 00000000 */   nop
    /* 33E64 801BCDDC F1A9060C */  jal        func_801AA7C4
    /* 33E68 801BCDE0 21200000 */   addu      $a0, $zero, $zero
    /* 33E6C 801BCDE4 1E80033C */  lui        $v1, %hi(D_801D94D8)
    /* 33E70 801BCDE8 D8946324 */  addiu      $v1, $v1, %lo(D_801D94D8)
    /* 33E74 801BCDEC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33E78 801BCDF0 21080102 */  addu       $at, $s0, $at
    /* 33E7C 801BCDF4 158F20A0 */  sb         $zero, -0x70EB($at)
    /* 33E80 801BCDF8 D1024292 */  lbu        $v0, (0x1F8002D1 & 0xFFFF)($s2)
    /* 33E84 801BCDFC 21182302 */  addu       $v1, $s1, $v1
    /* 33E88 801BCE00 000062A0 */  sb         $v0, 0x0($v1)
    /* 33E8C 801BCE04 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33E90 801BCE08 21080102 */  addu       $at, $s0, $at
    /* 33E94 801BCE0C 158F2290 */  lbu        $v0, -0x70EB($at)
    /* 33E98 801BCE10 D2024492 */  lbu        $a0, (0x1F8002D2 & 0xFFFF)($s2)
    /* 33E9C 801BCE14 01004238 */  xori       $v0, $v0, 0x1
    /* 33EA0 801BCE18 21186200 */  addu       $v1, $v1, $v0
    /* 33EA4 801BCE1C 000064A0 */  sb         $a0, 0x0($v1)
    /* 33EA8 801BCE20 80201400 */  sll        $a0, $s4, 2
    /* 33EAC 801BCE24 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33EB0 801BCE28 21080102 */  addu       $at, $s0, $at
    /* 33EB4 801BCE2C 158F2290 */  lbu        $v0, -0x70EB($at)
    /* 33EB8 801BCE30 D3024392 */  lbu        $v1, (0x1F8002D3 & 0xFFFF)($s2)
    /* 33EBC 801BCE34 40100200 */  sll        $v0, $v0, 1
    /* 33EC0 801BCE38 21104400 */  addu       $v0, $v0, $a0
    /* 33EC4 801BCE3C 1E80013C */  lui        $at, %hi(D_801DA310)
    /* 33EC8 801BCE40 21082200 */  addu       $at, $at, $v0
    /* 33ECC 801BCE44 10A323A0 */  sb         $v1, %lo(D_801DA310)($at)
    /* 33ED0 801BCE48 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33ED4 801BCE4C 21080102 */  addu       $at, $s0, $at
    /* 33ED8 801BCE50 158F2290 */  lbu        $v0, -0x70EB($at)
    /* 33EDC 801BCE54 D7024392 */  lbu        $v1, (0x1F8002D7 & 0xFFFF)($s2)
    /* 33EE0 801BCE58 01004238 */  xori       $v0, $v0, 0x1
    /* 33EE4 801BCE5C 40100200 */  sll        $v0, $v0, 1
    /* 33EE8 801BCE60 21104400 */  addu       $v0, $v0, $a0
    /* 33EEC 801BCE64 1E80013C */  lui        $at, %hi(D_801DA310)
    /* 33EF0 801BCE68 21082200 */  addu       $at, $at, $v0
    /* 33EF4 801BCE6C 10A323A0 */  sb         $v1, %lo(D_801DA310)($at)
    /* 33EF8 801BCE70 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33EFC 801BCE74 21080102 */  addu       $at, $s0, $at
    /* 33F00 801BCE78 158F2290 */  lbu        $v0, -0x70EB($at)
    /* 33F04 801BCE7C D4024392 */  lbu        $v1, (0x1F8002D4 & 0xFFFF)($s2)
    /* 33F08 801BCE80 40100200 */  sll        $v0, $v0, 1
    /* 33F0C 801BCE84 21104400 */  addu       $v0, $v0, $a0
    /* 33F10 801BCE88 1E80013C */  lui        $at, %hi(D_801DA311)
    /* 33F14 801BCE8C 21082200 */  addu       $at, $at, $v0
    /* 33F18 801BCE90 11A323A0 */  sb         $v1, %lo(D_801DA311)($at)
    /* 33F1C 801BCE94 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33F20 801BCE98 21080102 */  addu       $at, $s0, $at
    /* 33F24 801BCE9C 158F2290 */  lbu        $v0, -0x70EB($at)
    /* 33F28 801BCEA0 D8024392 */  lbu        $v1, (0x1F8002D8 & 0xFFFF)($s2)
    /* 33F2C 801BCEA4 01004238 */  xori       $v0, $v0, 0x1
    /* 33F30 801BCEA8 40100200 */  sll        $v0, $v0, 1
    /* 33F34 801BCEAC 21104400 */  addu       $v0, $v0, $a0
    /* 33F38 801BCEB0 1E80013C */  lui        $at, %hi(D_801DA311)
    /* 33F3C 801BCEB4 21082200 */  addu       $at, $at, $v0
    /* 33F40 801BCEB8 11A323A0 */  sb         $v1, %lo(D_801DA311)($at)
    /* 33F44 801BCEBC 15A7060C */  jal        func_801A9C54
    /* 33F48 801BCEC0 00000000 */   nop
    /* 33F4C 801BCEC4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33F50 801BCEC8 21080102 */  addu       $at, $s0, $at
    /* 33F54 801BCECC A0AB2390 */  lbu        $v1, -0x5460($at)
    /* 33F58 801BCED0 00000000 */  nop
    /* 33F5C 801BCED4 C0100300 */  sll        $v0, $v1, 3
    /* 33F60 801BCED8 21104300 */  addu       $v0, $v0, $v1
    /* 33F64 801BCEDC 80100200 */  sll        $v0, $v0, 2
    /* 33F68 801BCEE0 21100202 */  addu       $v0, $s0, $v0
    /* 33F6C 801BCEE4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33F70 801BCEE8 21084100 */  addu       $at, $v0, $at
    /* 33F74 801BCEEC 268F2390 */  lbu        $v1, -0x70DA($at)
    /* 33F78 801BCEF0 00000000 */  nop
    /* 33F7C 801BCEF4 01006324 */  addiu      $v1, $v1, 0x1
    /* 33F80 801BCEF8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33F84 801BCEFC 21084100 */  addu       $at, $v0, $at
    /* 33F88 801BCF00 268F23A0 */  sb         $v1, -0x70DA($at)
    /* 33F8C 801BCF04 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33F90 801BCF08 21080102 */  addu       $at, $s0, $at
    /* 33F94 801BCF0C A1AB2390 */  lbu        $v1, -0x545F($at)
    /* 33F98 801BCF10 00000000 */  nop
    /* 33F9C 801BCF14 C0100300 */  sll        $v0, $v1, 3
    /* 33FA0 801BCF18 21104300 */  addu       $v0, $v0, $v1
    /* 33FA4 801BCF1C 80100200 */  sll        $v0, $v0, 2
    /* 33FA8 801BCF20 21100202 */  addu       $v0, $s0, $v0
    /* 33FAC 801BCF24 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33FB0 801BCF28 21084100 */  addu       $at, $v0, $at
    /* 33FB4 801BCF2C 268F2390 */  lbu        $v1, -0x70DA($at)
    /* 33FB8 801BCF30 00000000 */  nop
    /* 33FBC 801BCF34 01006324 */  addiu      $v1, $v1, 0x1
    /* 33FC0 801BCF38 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33FC4 801BCF3C 21084100 */  addu       $at, $v0, $at
    /* 33FC8 801BCF40 268F23A0 */  sb         $v1, -0x70DA($at)
  .L801BCF44:
    /* 33FCC 801BCF44 01007326 */  addiu      $s3, $s3, 0x1
    /* 33FD0 801BCF48 FF006232 */  andi       $v0, $s3, 0xFF
    /* 33FD4 801BCF4C 0800422C */  sltiu      $v0, $v0, 0x8
    /* 33FD8 801BCF50 6FFF4014 */  bnez       $v0, .L801BCD10
    /* 33FDC 801BCF54 FF007432 */   andi      $s4, $s3, 0xFF
    /* 33FE0 801BCF58 2800BF8F */  lw         $ra, 0x28($sp)
    /* 33FE4 801BCF5C 2400B58F */  lw         $s5, 0x24($sp)
    /* 33FE8 801BCF60 2000B48F */  lw         $s4, 0x20($sp)
    /* 33FEC 801BCF64 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 33FF0 801BCF68 1800B28F */  lw         $s2, 0x18($sp)
    /* 33FF4 801BCF6C 1400B18F */  lw         $s1, 0x14($sp)
    /* 33FF8 801BCF70 1000B08F */  lw         $s0, 0x10($sp)
    /* 33FFC 801BCF74 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 34000 801BCF78 0800E003 */  jr         $ra
    /* 34004 801BCF7C 00000000 */   nop
endlabel func_801BCCD8
