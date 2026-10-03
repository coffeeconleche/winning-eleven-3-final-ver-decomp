nonmatching func_801D0C80, 0x48C

glabel func_801D0C80
    /* 47D08 801D0C80 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 47D0C 801D0C84 21188000 */  addu       $v1, $a0, $zero
    /* 47D10 801D0C88 2400B3AF */  sw         $s3, 0x24($sp)
    /* 47D14 801D0C8C 1180133C */  lui        $s3, %hi(D_8010A5A8)
    /* 47D18 801D0C90 A8A57326 */  addiu      $s3, $s3, %lo(D_8010A5A8)
    /* 47D1C 801D0C94 2000B2AF */  sw         $s2, 0x20($sp)
    /* 47D20 801D0C98 1080123C */  lui        $s2, %hi(D_800FF748)
    /* 47D24 801D0C9C 48F75226 */  addiu      $s2, $s2, %lo(D_800FF748)
    /* 47D28 801D0CA0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 47D2C 801D0CA4 801F113C */  lui        $s1, (0x1F8002E6 >> 16)
    /* 47D30 801D0CA8 FF006230 */  andi       $v0, $v1, 0xFF
    /* 47D34 801D0CAC 2800BFAF */  sw         $ra, 0x28($sp)
    /* 47D38 801D0CB0 04004014 */  bnez       $v0, .L801D0CC4
    /* 47D3C 801D0CB4 1800B0AF */   sw        $s0, 0x18($sp)
    /* 47D40 801D0CB8 01000424 */  addiu      $a0, $zero, 0x1
    /* 47D44 801D0CBC 33430708 */  j          .L801D0CCC
    /* 47D48 801D0CC0 00240224 */   addiu     $v0, $zero, 0x2400
  .L801D0CC4:
    /* 47D4C 801D0CC4 FF000424 */  addiu      $a0, $zero, 0xFF
    /* 47D50 801D0CC8 001F0224 */  addiu      $v0, $zero, 0x1F00
  .L801D0CCC:
    /* 47D54 801D0CCC 01001024 */  addiu      $s0, $zero, 0x1
    /* 47D58 801D0CD0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 47D5C 801D0CD4 FF006230 */  andi       $v0, $v1, 0xFF
    /* 47D60 801D0CD8 1D80073C */  lui        $a3, %hi(D_801D1AFC)
    /* 47D64 801D0CDC FC1AE78C */  lw         $a3, %lo(D_801D1AFC)($a3)
    /* 47D68 801D0CE0 80100200 */  sll        $v0, $v0, 2
    /* 47D6C 801D0CE4 1400B0AF */  sw         $s0, 0x14($sp)
    /* 47D70 801D0CE8 1D80013C */  lui        $at, %hi(D_801D5A9C)
    /* 47D74 801D0CEC 21082200 */  addu       $at, $at, $v0
    /* 47D78 801D0CF0 9C5A268C */  lw         $a2, %lo(D_801D5A9C)($at)
    /* 47D7C 801D0CF4 8C4A060C */  jal        func_80192A30
    /* 47D80 801D0CF8 21280000 */   addu      $a1, $zero, $zero
    /* 47D84 801D0CFC FB004010 */  beqz       $v0, .L801D10EC
    /* 47D88 801D0D00 00000000 */   nop
    /* 47D8C 801D0D04 F8005014 */  bne        $v0, $s0, .L801D10E8
    /* 47D90 801D0D08 00000000 */   nop
    /* 47D94 801D0D0C 1D80023C */  lui        $v0, %hi(D_801D59A8)
    /* 47D98 801D0D10 A8594290 */  lbu        $v0, %lo(D_801D59A8)($v0)
    /* 47D9C 801D0D14 00000000 */  nop
    /* 47DA0 801D0D18 09004014 */  bnez       $v0, .L801D0D40
    /* 47DA4 801D0D1C E6022536 */   ori       $a1, $s1, (0x1F8002E6 & 0xFFFF)
    /* 47DA8 801D0D20 1D80043C */  lui        $a0, %hi(D_801D1AF8)
    /* 47DAC 801D0D24 F81A848C */  lw         $a0, %lo(D_801D1AF8)($a0)
    /* 47DB0 801D0D28 CE3F070C */  jal        func_801CFF38
    /* 47DB4 801D0D2C 00018424 */   addiu     $a0, $a0, 0x100
    /* 47DB8 801D0D30 593E070C */  jal        func_801CF964
    /* 47DBC 801D0D34 00000000 */   nop
    /* 47DC0 801D0D38 0A440708 */  j          .L801D1028
    /* 47DC4 801D0D3C 00000000 */   nop
  .L801D0D40:
    /* 47DC8 801D0D40 1D80103C */  lui        $s0, %hi(D_801D1AFC)
    /* 47DCC 801D0D44 FC1A108E */  lw         $s0, %lo(D_801D1AFC)($s0)
    /* 47DD0 801D0D48 01000624 */  addiu      $a2, $zero, 0x1
    /* 47DD4 801D0D4C 80011026 */  addiu      $s0, $s0, 0x180
    /* 47DD8 801D0D50 92B5020C */  jal        func_800AD648
    /* 47DDC 801D0D54 21200002 */   addu      $a0, $s0, $zero
    /* 47DE0 801D0D58 E6022292 */  lbu        $v0, (0x1F8002E6 & 0xFFFF)($s1)
    /* 47DE4 801D0D5C 00000000 */  nop
    /* 47DE8 801D0D60 FF004330 */  andi       $v1, $v0, 0xFF
    /* 47DEC 801D0D64 03000224 */  addiu      $v0, $zero, 0x3
    /* 47DF0 801D0D68 06006210 */  beq        $v1, $v0, .L801D0D84
    /* 47DF4 801D0D6C 01001026 */   addiu     $s0, $s0, 0x1
    /* 47DF8 801D0D70 04000224 */  addiu      $v0, $zero, 0x4
    /* 47DFC 801D0D74 04006210 */  beq        $v1, $v0, .L801D0D88
    /* 47E00 801D0D78 06000224 */   addiu     $v0, $zero, 0x6
    /* 47E04 801D0D7C 64430708 */  j          .L801D0D90
    /* 47E08 801D0D80 21200002 */   addu      $a0, $s0, $zero
  .L801D0D84:
    /* 47E0C 801D0D84 04000224 */  addiu      $v0, $zero, 0x4
  .L801D0D88:
    /* 47E10 801D0D88 E60222A2 */  sb         $v0, (0x1F8002E6 & 0xFFFF)($s1)
    /* 47E14 801D0D8C 21200002 */  addu       $a0, $s0, $zero
  .L801D0D90:
    /* 47E18 801D0D90 12002536 */  ori        $a1, $s1, (0x1F800012 & 0xFFFF)
    /* 47E1C 801D0D94 92B5020C */  jal        func_800AD648
    /* 47E20 801D0D98 04000624 */   addiu     $a2, $zero, 0x4
    /* 47E24 801D0D9C 04001026 */  addiu      $s0, $s0, 0x4
    /* 47E28 801D0DA0 21200002 */  addu       $a0, $s0, $zero
    /* 47E2C 801D0DA4 16002536 */  ori        $a1, $s1, (0x1F800016 & 0xFFFF)
    /* 47E30 801D0DA8 92B5020C */  jal        func_800AD648
    /* 47E34 801D0DAC 04000624 */   addiu     $a2, $zero, 0x4
    /* 47E38 801D0DB0 04001026 */  addiu      $s0, $s0, 0x4
    /* 47E3C 801D0DB4 21200002 */  addu       $a0, $s0, $zero
    /* 47E40 801D0DB8 1A002536 */  ori        $a1, $s1, (0x1F80001A & 0xFFFF)
    /* 47E44 801D0DBC 92B5020C */  jal        func_800AD648
    /* 47E48 801D0DC0 04000624 */   addiu     $a2, $zero, 0x4
    /* 47E4C 801D0DC4 04001026 */  addiu      $s0, $s0, 0x4
    /* 47E50 801D0DC8 21200002 */  addu       $a0, $s0, $zero
    /* 47E54 801D0DCC 1E002536 */  ori        $a1, $s1, (0x1F80001E & 0xFFFF)
    /* 47E58 801D0DD0 92B5020C */  jal        func_800AD648
    /* 47E5C 801D0DD4 04000624 */   addiu     $a2, $zero, 0x4
    /* 47E60 801D0DD8 04001026 */  addiu      $s0, $s0, 0x4
    /* 47E64 801D0DDC 21200002 */  addu       $a0, $s0, $zero
    /* 47E68 801D0DE0 22002536 */  ori        $a1, $s1, (0x1F800022 & 0xFFFF)
    /* 47E6C 801D0DE4 92B5020C */  jal        func_800AD648
    /* 47E70 801D0DE8 04000624 */   addiu     $a2, $zero, 0x4
    /* 47E74 801D0DEC 04001026 */  addiu      $s0, $s0, 0x4
    /* 47E78 801D0DF0 21200002 */  addu       $a0, $s0, $zero
    /* 47E7C 801D0DF4 26002536 */  ori        $a1, $s1, (0x1F800026 & 0xFFFF)
    /* 47E80 801D0DF8 92B5020C */  jal        func_800AD648
    /* 47E84 801D0DFC 04000624 */   addiu     $a2, $zero, 0x4
    /* 47E88 801D0E00 04001026 */  addiu      $s0, $s0, 0x4
    /* 47E8C 801D0E04 21200002 */  addu       $a0, $s0, $zero
    /* 47E90 801D0E08 2A002536 */  ori        $a1, $s1, (0x1F80002A & 0xFFFF)
    /* 47E94 801D0E0C 92B5020C */  jal        func_800AD648
    /* 47E98 801D0E10 04000624 */   addiu     $a2, $zero, 0x4
    /* 47E9C 801D0E14 04001026 */  addiu      $s0, $s0, 0x4
    /* 47EA0 801D0E18 21200002 */  addu       $a0, $s0, $zero
    /* 47EA4 801D0E1C 2E002536 */  ori        $a1, $s1, (0x1F80002E & 0xFFFF)
    /* 47EA8 801D0E20 92B5020C */  jal        func_800AD648
    /* 47EAC 801D0E24 04000624 */   addiu     $a2, $zero, 0x4
    /* 47EB0 801D0E28 04001026 */  addiu      $s0, $s0, 0x4
    /* 47EB4 801D0E2C 21200002 */  addu       $a0, $s0, $zero
    /* 47EB8 801D0E30 32002536 */  ori        $a1, $s1, (0x1F800032 & 0xFFFF)
    /* 47EBC 801D0E34 92B5020C */  jal        func_800AD648
    /* 47EC0 801D0E38 04000624 */   addiu     $a2, $zero, 0x4
    /* 47EC4 801D0E3C 04001026 */  addiu      $s0, $s0, 0x4
    /* 47EC8 801D0E40 21200002 */  addu       $a0, $s0, $zero
    /* 47ECC 801D0E44 1A8F0534 */  ori        $a1, $zero, 0x8F1A
    /* 47ED0 801D0E48 21284502 */  addu       $a1, $s2, $a1
    /* 47ED4 801D0E4C 92B5020C */  jal        func_800AD648
    /* 47ED8 801D0E50 04000624 */   addiu     $a2, $zero, 0x4
    /* 47EDC 801D0E54 04001026 */  addiu      $s0, $s0, 0x4
    /* 47EE0 801D0E58 21200002 */  addu       $a0, $s0, $zero
    /* 47EE4 801D0E5C 0A006526 */  addiu      $a1, $s3, 0xA
    /* 47EE8 801D0E60 92B5020C */  jal        func_800AD648
    /* 47EEC 801D0E64 01000624 */   addiu     $a2, $zero, 0x1
    /* 47EF0 801D0E68 01001026 */  addiu      $s0, $s0, 0x1
    /* 47EF4 801D0E6C 21200002 */  addu       $a0, $s0, $zero
    /* 47EF8 801D0E70 07006526 */  addiu      $a1, $s3, 0x7
    /* 47EFC 801D0E74 92B5020C */  jal        func_800AD648
    /* 47F00 801D0E78 01000624 */   addiu     $a2, $zero, 0x1
    /* 47F04 801D0E7C 01001026 */  addiu      $s0, $s0, 0x1
    /* 47F08 801D0E80 21200002 */  addu       $a0, $s0, $zero
    /* 47F0C 801D0E84 08006526 */  addiu      $a1, $s3, 0x8
    /* 47F10 801D0E88 92B5020C */  jal        func_800AD648
    /* 47F14 801D0E8C 01000624 */   addiu     $a2, $zero, 0x1
    /* 47F18 801D0E90 01001026 */  addiu      $s0, $s0, 0x1
    /* 47F1C 801D0E94 21200002 */  addu       $a0, $s0, $zero
    /* 47F20 801D0E98 06006526 */  addiu      $a1, $s3, 0x6
    /* 47F24 801D0E9C 92B5020C */  jal        func_800AD648
    /* 47F28 801D0EA0 01000624 */   addiu     $a2, $zero, 0x1
    /* 47F2C 801D0EA4 01001026 */  addiu      $s0, $s0, 0x1
    /* 47F30 801D0EA8 21200002 */  addu       $a0, $s0, $zero
    /* 47F34 801D0EAC 02006526 */  addiu      $a1, $s3, 0x2
    /* 47F38 801D0EB0 92B5020C */  jal        func_800AD648
    /* 47F3C 801D0EB4 01000624 */   addiu     $a2, $zero, 0x1
    /* 47F40 801D0EB8 01001026 */  addiu      $s0, $s0, 0x1
    /* 47F44 801D0EBC 21200002 */  addu       $a0, $s0, $zero
    /* 47F48 801D0EC0 03006526 */  addiu      $a1, $s3, 0x3
    /* 47F4C 801D0EC4 92B5020C */  jal        func_800AD648
    /* 47F50 801D0EC8 01000624 */   addiu     $a2, $zero, 0x1
    /* 47F54 801D0ECC 01001026 */  addiu      $s0, $s0, 0x1
    /* 47F58 801D0ED0 21200002 */  addu       $a0, $s0, $zero
    /* 47F5C 801D0ED4 04006526 */  addiu      $a1, $s3, 0x4
    /* 47F60 801D0ED8 92B5020C */  jal        func_800AD648
    /* 47F64 801D0EDC 01000624 */   addiu     $a2, $zero, 0x1
    /* 47F68 801D0EE0 01001026 */  addiu      $s0, $s0, 0x1
    /* 47F6C 801D0EE4 21200002 */  addu       $a0, $s0, $zero
    /* 47F70 801D0EE8 05006526 */  addiu      $a1, $s3, 0x5
    /* 47F74 801D0EEC 92B5020C */  jal        func_800AD648
    /* 47F78 801D0EF0 01000624 */   addiu     $a2, $zero, 0x1
    /* 47F7C 801D0EF4 01001026 */  addiu      $s0, $s0, 0x1
    /* 47F80 801D0EF8 21200002 */  addu       $a0, $s0, $zero
    /* 47F84 801D0EFC 18AC0534 */  ori        $a1, $zero, 0xAC18
    /* 47F88 801D0F00 21284502 */  addu       $a1, $s2, $a1
    /* 47F8C 801D0F04 92B5020C */  jal        func_800AD648
    /* 47F90 801D0F08 02000624 */   addiu     $a2, $zero, 0x2
    /* 47F94 801D0F0C 02001026 */  addiu      $s0, $s0, 0x2
    /* 47F98 801D0F10 21200002 */  addu       $a0, $s0, $zero
    /* 47F9C 801D0F14 1AAC0534 */  ori        $a1, $zero, 0xAC1A
    /* 47FA0 801D0F18 21284502 */  addu       $a1, $s2, $a1
    /* 47FA4 801D0F1C 92B5020C */  jal        func_800AD648
    /* 47FA8 801D0F20 02000624 */   addiu     $a2, $zero, 0x2
    /* 47FAC 801D0F24 0100013C */  lui        $at, (0x10000 >> 16)
    /* 47FB0 801D0F28 21084102 */  addu       $at, $s2, $at
    /* 47FB4 801D0F2C 18AC2284 */  lh         $v0, -0x53E8($at)
    /* 47FB8 801D0F30 00000000 */  nop
    /* 47FBC 801D0F34 A6004228 */  slti       $v0, $v0, 0xA6
    /* 47FC0 801D0F38 05004010 */  beqz       $v0, .L801D0F50
    /* 47FC4 801D0F3C 02001026 */   addiu     $s0, $s0, 0x2
    /* 47FC8 801D0F40 A6000224 */  addiu      $v0, $zero, 0xA6
    /* 47FCC 801D0F44 0100013C */  lui        $at, (0x10000 >> 16)
    /* 47FD0 801D0F48 21084102 */  addu       $at, $s2, $at
    /* 47FD4 801D0F4C 18AC22A4 */  sh         $v0, -0x53E8($at)
  .L801D0F50:
    /* 47FD8 801D0F50 0100013C */  lui        $at, (0x10000 >> 16)
    /* 47FDC 801D0F54 21084102 */  addu       $at, $s2, $at
    /* 47FE0 801D0F58 18AC2284 */  lh         $v0, -0x53E8($at)
    /* 47FE4 801D0F5C 00000000 */  nop
    /* 47FE8 801D0F60 C7004228 */  slti       $v0, $v0, 0xC7
    /* 47FEC 801D0F64 04004014 */  bnez       $v0, .L801D0F78
    /* 47FF0 801D0F68 C6000224 */   addiu     $v0, $zero, 0xC6
    /* 47FF4 801D0F6C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 47FF8 801D0F70 21084102 */  addu       $at, $s2, $at
    /* 47FFC 801D0F74 18AC22A4 */  sh         $v0, -0x53E8($at)
  .L801D0F78:
    /* 48000 801D0F78 0100013C */  lui        $at, (0x10000 >> 16)
    /* 48004 801D0F7C 21084102 */  addu       $at, $s2, $at
    /* 48008 801D0F80 1AAC2284 */  lh         $v0, -0x53E6($at)
    /* 4800C 801D0F84 00000000 */  nop
    /* 48010 801D0F88 70004228 */  slti       $v0, $v0, 0x70
    /* 48014 801D0F8C 04004010 */  beqz       $v0, .L801D0FA0
    /* 48018 801D0F90 70000224 */   addiu     $v0, $zero, 0x70
    /* 4801C 801D0F94 0100013C */  lui        $at, (0x10000 >> 16)
    /* 48020 801D0F98 21084102 */  addu       $at, $s2, $at
    /* 48024 801D0F9C 1AAC22A4 */  sh         $v0, -0x53E6($at)
  .L801D0FA0:
    /* 48028 801D0FA0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4802C 801D0FA4 21084102 */  addu       $at, $s2, $at
    /* 48030 801D0FA8 1AAC2284 */  lh         $v0, -0x53E6($at)
    /* 48034 801D0FAC 00000000 */  nop
    /* 48038 801D0FB0 81004228 */  slti       $v0, $v0, 0x81
    /* 4803C 801D0FB4 04004014 */  bnez       $v0, .L801D0FC8
    /* 48040 801D0FB8 80000224 */   addiu     $v0, $zero, 0x80
    /* 48044 801D0FBC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 48048 801D0FC0 21084102 */  addu       $at, $s2, $at
    /* 4804C 801D0FC4 1AAC22A4 */  sh         $v0, -0x53E6($at)
  .L801D0FC8:
    /* 48050 801D0FC8 06031026 */  addiu      $s0, $s0, 0x306
    /* 48054 801D0FCC 21200002 */  addu       $a0, $s0, $zero
    /* 48058 801D0FD0 BD890534 */  ori        $a1, $zero, 0x89BD
    /* 4805C 801D0FD4 21284502 */  addu       $a1, $s2, $a1
    /* 48060 801D0FD8 92B5020C */  jal        func_800AD648
    /* 48064 801D0FDC 2B000624 */   addiu     $a2, $zero, 0x2B
    /* 48068 801D0FE0 2B001026 */  addiu      $s0, $s0, 0x2B
    /* 4806C 801D0FE4 21200002 */  addu       $a0, $s0, $zero
    /* 48070 801D0FE8 E8890534 */  ori        $a1, $zero, 0x89E8
    /* 48074 801D0FEC 21284502 */  addu       $a1, $s2, $a1
    /* 48078 801D0FF0 92B5020C */  jal        func_800AD648
    /* 4807C 801D0FF4 2B000624 */   addiu     $a2, $zero, 0x2B
    /* 48080 801D0FF8 03011026 */  addiu      $s0, $s0, 0x103
    /* 48084 801D0FFC 21200002 */  addu       $a0, $s0, $zero
    /* 48088 801D1000 07032536 */  ori        $a1, $s1, (0x1F800307 & 0xFFFF)
    /* 4808C 801D1004 92B5020C */  jal        func_800AD648
    /* 48090 801D1008 02000624 */   addiu     $a2, $zero, 0x2
    /* 48094 801D100C 02001026 */  addiu      $s0, $s0, 0x2
    /* 48098 801D1010 21200002 */  addu       $a0, $s0, $zero
    /* 4809C 801D1014 38032536 */  ori        $a1, $s1, (0x1F800338 & 0xFFFF)
    /* 480A0 801D1018 92B5020C */  jal        func_800AD648
    /* 480A4 801D101C 01000624 */   addiu     $a2, $zero, 0x1
    /* 480A8 801D1020 4344070C */  jal        func_801D110C
    /* 480AC 801D1024 01000426 */   addiu     $a0, $s0, 0x1
  .L801D1028:
    /* 480B0 801D1028 05006292 */  lbu        $v0, 0x5($s3)
    /* 480B4 801D102C 00000000 */  nop
    /* 480B8 801D1030 02004010 */  beqz       $v0, .L801D103C
    /* 480BC 801D1034 0D000424 */   addiu     $a0, $zero, 0xD
    /* 480C0 801D1038 0C000424 */  addiu      $a0, $zero, 0xC
  .L801D103C:
    /* 480C4 801D103C 88AD020C */  jal        func_800AB620
    /* 480C8 801D1040 00000000 */   nop
    /* 480CC 801D1044 06006292 */  lbu        $v0, 0x6($s3)
    /* 480D0 801D1048 00000000 */  nop
    /* 480D4 801D104C 02004010 */  beqz       $v0, .L801D1058
    /* 480D8 801D1050 05000424 */   addiu     $a0, $zero, 0x5
    /* 480DC 801D1054 04000424 */  addiu      $a0, $zero, 0x4
  .L801D1058:
    /* 480E0 801D1058 88AD020C */  jal        func_800AB620
    /* 480E4 801D105C 00000000 */   nop
    /* 480E8 801D1060 02006492 */  lbu        $a0, 0x2($s3)
    /* 480EC 801D1064 00000000 */  nop
    /* 480F0 801D1068 2000822C */  sltiu      $v0, $a0, 0x20
    /* 480F4 801D106C 02004014 */  bnez       $v0, .L801D1078
    /* 480F8 801D1070 42200400 */   srl       $a0, $a0, 1
    /* 480FC 801D1074 0F000424 */  addiu      $a0, $zero, 0xF
  .L801D1078:
    /* 48100 801D1078 C5A5020C */  jal        func_800A9714
    /* 48104 801D107C 00000000 */   nop
    /* 48108 801D1080 03006492 */  lbu        $a0, 0x3($s3)
    /* 4810C 801D1084 00000000 */  nop
    /* 48110 801D1088 2000822C */  sltiu      $v0, $a0, 0x20
    /* 48114 801D108C 02004014 */  bnez       $v0, .L801D1098
    /* 48118 801D1090 42200400 */   srl       $a0, $a0, 1
    /* 4811C 801D1094 0F000424 */  addiu      $a0, $zero, 0xF
  .L801D1098:
    /* 48120 801D1098 49AC020C */  jal        func_800AB124
    /* 48124 801D109C 00000000 */   nop
    /* 48128 801D10A0 04006492 */  lbu        $a0, 0x4($s3)
    /* 4812C 801D10A4 00000000 */  nop
    /* 48130 801D10A8 2000822C */  sltiu      $v0, $a0, 0x20
    /* 48134 801D10AC 02004014 */  bnez       $v0, .L801D10B8
    /* 48138 801D10B0 42200400 */   srl       $a0, $a0, 1
    /* 4813C 801D10B4 0F000424 */  addiu      $a0, $zero, 0xF
  .L801D10B8:
    /* 48140 801D10B8 38A6020C */  jal        func_800A98E0
    /* 48144 801D10BC 00000000 */   nop
    /* 48148 801D10C0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4814C 801D10C4 21084102 */  addu       $at, $s2, $at
    /* 48150 801D10C8 18AC2484 */  lh         $a0, -0x53E8($at)
    /* 48154 801D10CC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 48158 801D10D0 21084102 */  addu       $at, $s2, $at
    /* 4815C 801D10D4 1AAC2584 */  lh         $a1, -0x53E6($at)
    /* 48160 801D10D8 56D2020C */  jal        func_800B4958
    /* 48164 801D10DC 00000000 */   nop
    /* 48168 801D10E0 3B440708 */  j          .L801D10EC
    /* 4816C 801D10E4 01000224 */   addiu     $v0, $zero, 0x1
  .L801D10E8:
    /* 48170 801D10E8 940220A6 */  sh         $zero, (0x1F800294 & 0xFFFF)($s1)
  .L801D10EC:
    /* 48174 801D10EC 2800BF8F */  lw         $ra, 0x28($sp)
    /* 48178 801D10F0 2400B38F */  lw         $s3, 0x24($sp)
    /* 4817C 801D10F4 2000B28F */  lw         $s2, 0x20($sp)
    /* 48180 801D10F8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 48184 801D10FC 1800B08F */  lw         $s0, 0x18($sp)
    /* 48188 801D1100 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 4818C 801D1104 0800E003 */  jr         $ra
    /* 48190 801D1108 00000000 */   nop
endlabel func_801D0C80
