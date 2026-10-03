nonmatching func_801C8D00, 0x410

glabel func_801C8D00
    /* 3FD88 801C8D00 1E80043C */  lui        $a0, %hi(D_801D8DFE)
    /* 3FD8C 801C8D04 FE8D8490 */  lbu        $a0, %lo(D_801D8DFE)($a0)
    /* 3FD90 801C8D08 00000000 */  nop
    /* 3FD94 801C8D0C 13008014 */  bnez       $a0, .L801C8D5C
    /* 3FD98 801C8D10 01000224 */   addiu     $v0, $zero, 0x1
    /* 3FD9C 801C8D14 1E80033C */  lui        $v1, %hi(D_801D8DFD)
    /* 3FDA0 801C8D18 FD8D6390 */  lbu        $v1, %lo(D_801D8DFD)($v1)
    /* 3FDA4 801C8D1C 00000000 */  nop
    /* 3FDA8 801C8D20 0200622C */  sltiu      $v0, $v1, 0x2
    /* 3FDAC 801C8D24 0B004014 */  bnez       $v0, .L801C8D54
    /* 3FDB0 801C8D28 21100000 */   addu      $v0, $zero, $zero
    /* 3FDB4 801C8D2C 0400622C */  sltiu      $v0, $v1, 0x4
    /* 3FDB8 801C8D30 08004014 */  bnez       $v0, .L801C8D54
    /* 3FDBC 801C8D34 01000224 */   addiu     $v0, $zero, 0x1
    /* 3FDC0 801C8D38 0800622C */  sltiu      $v0, $v1, 0x8
    /* 3FDC4 801C8D3C 05004014 */  bnez       $v0, .L801C8D54
    /* 3FDC8 801C8D40 02000224 */   addiu     $v0, $zero, 0x2
    /* 3FDCC 801C8D44 0C00622C */  sltiu      $v0, $v1, 0xC
    /* 3FDD0 801C8D48 02004010 */  beqz       $v0, .L801C8D54
    /* 3FDD4 801C8D4C 04000224 */   addiu     $v0, $zero, 0x4
    /* 3FDD8 801C8D50 03000224 */  addiu      $v0, $zero, 0x3
  .L801C8D54:
    /* 3FDDC 801C8D54 42240708 */  j          .L801C9108
    /* 3FDE0 801C8D58 10004234 */   ori       $v0, $v0, 0x10
  .L801C8D5C:
    /* 3FDE4 801C8D5C 1E80033C */  lui        $v1, %hi(D_801DA5C8)
    /* 3FDE8 801C8D60 C8A56390 */  lbu        $v1, %lo(D_801DA5C8)($v1)
    /* 3FDEC 801C8D64 00000000 */  nop
    /* 3FDF0 801C8D68 71006210 */  beq        $v1, $v0, .L801C8F30
    /* 3FDF4 801C8D6C 0500822C */   sltiu     $v0, $a0, 0x5
    /* 3FDF8 801C8D70 4E004010 */  beqz       $v0, .L801C8EAC
    /* 3FDFC 801C8D74 00000000 */   nop
    /* 3FE00 801C8D78 1E80033C */  lui        $v1, %hi(D_801D8DFD)
    /* 3FE04 801C8D7C FD8D6390 */  lbu        $v1, %lo(D_801D8DFD)($v1)
    /* 3FE08 801C8D80 00000000 */  nop
    /* 3FE0C 801C8D84 0800622C */  sltiu      $v0, $v1, 0x8
    /* 3FE10 801C8D88 23004010 */  beqz       $v0, .L801C8E18
    /* 3FE14 801C8D8C 07000224 */   addiu     $v0, $zero, 0x7
    /* 3FE18 801C8D90 03006210 */  beq        $v1, $v0, .L801C8DA0
    /* 3FE1C 801C8D94 00110300 */   sll       $v0, $v1, 4
    /* 3FE20 801C8D98 69230708 */  j          .L801C8DA4
    /* 3FE24 801C8D9C C0FF4224 */   addiu     $v0, $v0, -0x40
  .L801C8DA0:
    /* 3FE28 801C8DA0 20000224 */  addiu      $v0, $zero, 0x20
  .L801C8DA4:
    /* 3FE2C 801C8DA4 1E80033C */  lui        $v1, %hi(D_801D8DFE)
    /* 3FE30 801C8DA8 FE8D6390 */  lbu        $v1, %lo(D_801D8DFE)($v1)
    /* 3FE34 801C8DAC 1D80043C */  lui        $a0, %hi(D_801D5984)
    /* 3FE38 801C8DB0 8459848C */  lw         $a0, %lo(D_801D5984)($a0)
    /* 3FE3C 801C8DB4 1E80013C */  lui        $at, %hi(D_801D8DEE)
    /* 3FE40 801C8DB8 EE8D22A4 */  sh         $v0, %lo(D_801D8DEE)($at)
    /* 3FE44 801C8DBC 0C000224 */  addiu      $v0, $zero, 0xC
    /* 3FE48 801C8DC0 1E80013C */  lui        $at, %hi(D_801D8DEC)
    /* 3FE4C 801C8DC4 EC8D22A0 */  sb         $v0, %lo(D_801D8DEC)($at)
    /* 3FE50 801C8DC8 10000224 */  addiu      $v0, $zero, 0x10
    /* 3FE54 801C8DCC 1E80013C */  lui        $at, %hi(D_801D8DBE)
    /* 3FE58 801C8DD0 BE8D22A0 */  sb         $v0, %lo(D_801D8DBE)($at)
    /* 3FE5C 801C8DD4 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 3FE60 801C8DD8 00110300 */  sll        $v0, $v1, 4
    /* 3FE64 801C8DDC D3FF4224 */  addiu      $v0, $v0, -0x2D
    /* 3FE68 801C8DE0 1E80013C */  lui        $at, %hi(D_801D8DF0)
    /* 3FE6C 801C8DE4 F08D22A4 */  sh         $v0, %lo(D_801D8DF0)($at)
    /* 3FE70 801C8DE8 C0100300 */  sll        $v0, $v1, 3
    /* 3FE74 801C8DEC 23104300 */  subu       $v0, $v0, $v1
    /* 3FE78 801C8DF0 21188200 */  addu       $v1, $a0, $v0
    /* 3FE7C 801C8DF4 1E80043C */  lui        $a0, %hi(D_801D8DFD)
    /* 3FE80 801C8DF8 FD8D8490 */  lbu        $a0, %lo(D_801D8DFD)($a0)
    /* 3FE84 801C8DFC 07000224 */  addiu      $v0, $zero, 0x7
    /* 3FE88 801C8E00 02008214 */  bne        $a0, $v0, .L801C8E0C
    /* 3FE8C 801C8E04 21206400 */   addu      $a0, $v1, $a0
    /* 3FE90 801C8E08 06006424 */  addiu      $a0, $v1, 0x6
  .L801C8E0C:
    /* 3FE94 801C8E0C 00008290 */  lbu        $v0, 0x0($a0)
    /* 3FE98 801C8E10 42240708 */  j          .L801C9108
    /* 3FE9C 801C8E14 00000000 */   nop
  .L801C8E18:
    /* 3FEA0 801C8E18 00110300 */  sll        $v0, $v1, 4
    /* 3FEA4 801C8E1C B6FF4224 */  addiu      $v0, $v0, -0x4A
    /* 3FEA8 801C8E20 1E80013C */  lui        $at, %hi(D_801D8DEE)
    /* 3FEAC 801C8E24 EE8D22A4 */  sh         $v0, %lo(D_801D8DEE)($at)
    /* 3FEB0 801C8E28 00110400 */  sll        $v0, $a0, 4
    /* 3FEB4 801C8E2C C3FF4224 */  addiu      $v0, $v0, -0x3D
    /* 3FEB8 801C8E30 1E80013C */  lui        $at, %hi(D_801D8DF0)
    /* 3FEBC 801C8E34 F08D22A4 */  sh         $v0, %lo(D_801D8DF0)($at)
    /* 3FEC0 801C8E38 0C000224 */  addiu      $v0, $zero, 0xC
    /* 3FEC4 801C8E3C 1E80013C */  lui        $at, %hi(D_801D8DEC)
    /* 3FEC8 801C8E40 EC8D22A0 */  sb         $v0, %lo(D_801D8DEC)($at)
    /* 3FECC 801C8E44 10000224 */  addiu      $v0, $zero, 0x10
    /* 3FED0 801C8E48 1E80013C */  lui        $at, %hi(D_801D8DBE)
    /* 3FED4 801C8E4C BE8D22A0 */  sb         $v0, %lo(D_801D8DBE)($at)
    /* 3FED8 801C8E50 04000224 */  addiu      $v0, $zero, 0x4
    /* 3FEDC 801C8E54 07008214 */  bne        $a0, $v0, .L801C8E74
    /* 3FEE0 801C8E58 0E000224 */   addiu     $v0, $zero, 0xE
    /* 3FEE4 801C8E5C 05006214 */  bne        $v1, $v0, .L801C8E74
    /* 3FEE8 801C8E60 0D000224 */   addiu     $v0, $zero, 0xD
    /* 3FEEC 801C8E64 1E80013C */  lui        $at, %hi(D_801D8DEC)
    /* 3FEF0 801C8E68 EC8D22A0 */  sb         $v0, %lo(D_801D8DEC)($at)
  .L801C8E6C:
    /* 3FEF4 801C8E6C 42240708 */  j          .L801C9108
    /* 3FEF8 801C8E70 20000224 */   addiu     $v0, $zero, 0x20
  .L801C8E74:
    /* 3FEFC 801C8E74 1E80033C */  lui        $v1, %hi(D_801D8DFE)
    /* 3FF00 801C8E78 FE8D6390 */  lbu        $v1, %lo(D_801D8DFE)($v1)
    /* 3FF04 801C8E7C 00000000 */  nop
    /* 3FF08 801C8E80 C0100300 */  sll        $v0, $v1, 3
    /* 3FF0C 801C8E84 23104300 */  subu       $v0, $v0, $v1
    /* 3FF10 801C8E88 1D80033C */  lui        $v1, %hi(D_801D5984)
    /* 3FF14 801C8E8C 8459638C */  lw         $v1, %lo(D_801D5984)($v1)
    /* 3FF18 801C8E90 1E80043C */  lui        $a0, %hi(D_801D8DFD)
    /* 3FF1C 801C8E94 FD8D8490 */  lbu        $a0, %lo(D_801D8DFD)($a0)
    /* 3FF20 801C8E98 21104300 */  addu       $v0, $v0, $v1
    /* 3FF24 801C8E9C 21104400 */  addu       $v0, $v0, $a0
    /* 3FF28 801C8EA0 0D004290 */  lbu        $v0, 0xD($v0)
    /* 3FF2C 801C8EA4 42240708 */  j          .L801C9108
    /* 3FF30 801C8EA8 00000000 */   nop
  .L801C8EAC:
    /* 3FF34 801C8EAC 1E80033C */  lui        $v1, %hi(D_801D8DFD)
    /* 3FF38 801C8EB0 FD8D6390 */  lbu        $v1, %lo(D_801D8DFD)($v1)
    /* 3FF3C 801C8EB4 00000000 */  nop
    /* 3FF40 801C8EB8 F3FF6224 */  addiu      $v0, $v1, -0xD
    /* 3FF44 801C8EBC 0200422C */  sltiu      $v0, $v0, 0x2
    /* 3FF48 801C8EC0 24004014 */  bnez       $v0, .L801C8F54
    /* 3FF4C 801C8EC4 FF006330 */   andi      $v1, $v1, 0xFF
    /* 3FF50 801C8EC8 0A00622C */  sltiu      $v0, $v1, 0xA
    /* 3FF54 801C8ECC 04004010 */  beqz       $v0, .L801C8EE0
    /* 3FF58 801C8ED0 00110300 */   sll       $v0, $v1, 4
    /* 3FF5C 801C8ED4 23104300 */  subu       $v0, $v0, $v1
    /* 3FF60 801C8ED8 B9230708 */  j          .L801C8EE4
    /* 3FF64 801C8EDC C0FF4224 */   addiu     $v0, $v0, -0x40
  .L801C8EE0:
    /* 3FF68 801C8EE0 B8FF4224 */  addiu      $v0, $v0, -0x48
  .L801C8EE4:
    /* 3FF6C 801C8EE4 1E80013C */  lui        $at, %hi(D_801D8DEE)
    /* 3FF70 801C8EE8 EE8D22A4 */  sh         $v0, %lo(D_801D8DEE)($at)
    /* 3FF74 801C8EEC 1E80043C */  lui        $a0, %hi(D_801D8DFD)
    /* 3FF78 801C8EF0 FD8D8490 */  lbu        $a0, %lo(D_801D8DFD)($a0)
    /* 3FF7C 801C8EF4 1B000224 */  addiu      $v0, $zero, 0x1B
    /* 3FF80 801C8EF8 1E80013C */  lui        $at, %hi(D_801D8DF0)
    /* 3FF84 801C8EFC F08D22A4 */  sh         $v0, %lo(D_801D8DF0)($at)
    /* 3FF88 801C8F00 0C000224 */  addiu      $v0, $zero, 0xC
    /* 3FF8C 801C8F04 1E80013C */  lui        $at, %hi(D_801D8DEC)
    /* 3FF90 801C8F08 EC8D22A0 */  sb         $v0, %lo(D_801D8DEC)($at)
    /* 3FF94 801C8F0C 1D80023C */  lui        $v0, %hi(D_801D5984)
    /* 3FF98 801C8F10 8459428C */  lw         $v0, %lo(D_801D5984)($v0)
    /* 3FF9C 801C8F14 10000324 */  addiu      $v1, $zero, 0x10
    /* 3FFA0 801C8F18 1E80013C */  lui        $at, %hi(D_801D8DBE)
    /* 3FFA4 801C8F1C BE8D23A0 */  sb         $v1, %lo(D_801D8DBE)($at)
    /* 3FFA8 801C8F20 21104400 */  addu       $v0, $v0, $a0
    /* 3FFAC 801C8F24 37004290 */  lbu        $v0, 0x37($v0)
    /* 3FFB0 801C8F28 42240708 */  j          .L801C9108
    /* 3FFB4 801C8F2C 00000000 */   nop
  .L801C8F30:
    /* 3FFB8 801C8F30 05000224 */  addiu      $v0, $zero, 0x5
    /* 3FFBC 801C8F34 12008214 */  bne        $a0, $v0, .L801C8F80
    /* 3FFC0 801C8F38 00000000 */   nop
    /* 3FFC4 801C8F3C 1E80023C */  lui        $v0, %hi(D_801D8DFD)
    /* 3FFC8 801C8F40 FD8D4290 */  lbu        $v0, %lo(D_801D8DFD)($v0)
    /* 3FFCC 801C8F44 00000000 */  nop
    /* 3FFD0 801C8F48 0B00422C */  sltiu      $v0, $v0, 0xB
    /* 3FFD4 801C8F4C 0C004014 */  bnez       $v0, .L801C8F80
    /* 3FFD8 801C8F50 00000000 */   nop
  .L801C8F54:
    /* 3FFDC 801C8F54 89000324 */  addiu      $v1, $zero, 0x89
    /* 3FFE0 801C8F58 1E80013C */  lui        $at, %hi(D_801D8DEE)
    /* 3FFE4 801C8F5C EE8D23A4 */  sh         $v1, %lo(D_801D8DEE)($at)
    /* 3FFE8 801C8F60 1C000324 */  addiu      $v1, $zero, 0x1C
    /* 3FFEC 801C8F64 1E80013C */  lui        $at, %hi(D_801D8DF0)
    /* 3FFF0 801C8F68 F08D23A4 */  sh         $v1, %lo(D_801D8DF0)($at)
    /* 3FFF4 801C8F6C 1A000324 */  addiu      $v1, $zero, 0x1A
    /* 3FFF8 801C8F70 1E80013C */  lui        $at, %hi(D_801D8DEC)
    /* 3FFFC 801C8F74 EC8D23A0 */  sb         $v1, %lo(D_801D8DEC)($at)
    /* 40000 801C8F78 42240708 */  j          .L801C9108
    /* 40004 801C8F7C 16000224 */   addiu     $v0, $zero, 0x16
  .L801C8F80:
    /* 40008 801C8F80 1E80033C */  lui        $v1, %hi(D_801D8DFD)
    /* 4000C 801C8F84 FD8D6390 */  lbu        $v1, %lo(D_801D8DFD)($v1)
    /* 40010 801C8F88 00000000 */  nop
    /* 40014 801C8F8C 0C00622C */  sltiu      $v0, $v1, 0xC
    /* 40018 801C8F90 05004010 */  beqz       $v0, .L801C8FA8
    /* 4001C 801C8F94 C0100300 */   sll       $v0, $v1, 3
    /* 40020 801C8F98 21104300 */  addu       $v0, $v0, $v1
    /* 40024 801C8F9C 40100200 */  sll        $v0, $v0, 1
    /* 40028 801C8FA0 EB230708 */  j          .L801C8FAC
    /* 4002C 801C8FA4 C0FF4724 */   addiu     $a3, $v0, -0x40
  .L801C8FA8:
    /* 40030 801C8FA8 98000724 */  addiu      $a3, $zero, 0x98
  .L801C8FAC:
    /* 40034 801C8FAC 1E80053C */  lui        $a1, %hi(D_801D8DFE)
    /* 40038 801C8FB0 FE8DA590 */  lbu        $a1, %lo(D_801D8DFE)($a1)
    /* 4003C 801C8FB4 1E80063C */  lui        $a2, %hi(D_801D8DFD)
    /* 40040 801C8FB8 FD8DC690 */  lbu        $a2, %lo(D_801D8DFD)($a2)
    /* 40044 801C8FBC 0C000224 */  addiu      $v0, $zero, 0xC
    /* 40048 801C8FC0 1E80013C */  lui        $at, %hi(D_801D8DEC)
    /* 4004C 801C8FC4 EC8D22A0 */  sb         $v0, %lo(D_801D8DEC)($at)
    /* 40050 801C8FC8 10000224 */  addiu      $v0, $zero, 0x10
    /* 40054 801C8FCC 1E80013C */  lui        $at, %hi(D_801D8DEE)
    /* 40058 801C8FD0 EE8D27A4 */  sh         $a3, %lo(D_801D8DEE)($at)
    /* 4005C 801C8FD4 1E80013C */  lui        $at, %hi(D_801D8DBE)
    /* 40060 801C8FD8 BE8D22A0 */  sb         $v0, %lo(D_801D8DBE)($at)
    /* 40064 801C8FDC FF00A430 */  andi       $a0, $a1, 0xFF
    /* 40068 801C8FE0 FFFF8324 */  addiu      $v1, $a0, -0x1
    /* 4006C 801C8FE4 C0100300 */  sll        $v0, $v1, 3
    /* 40070 801C8FE8 21104300 */  addu       $v0, $v0, $v1
    /* 40074 801C8FEC 40100200 */  sll        $v0, $v0, 1
    /* 40078 801C8FF0 D4FF4224 */  addiu      $v0, $v0, -0x2C
    /* 4007C 801C8FF4 FF00C330 */  andi       $v1, $a2, 0xFF
    /* 40080 801C8FF8 1E80013C */  lui        $at, %hi(D_801D8DF0)
    /* 40084 801C8FFC F08D22A4 */  sh         $v0, %lo(D_801D8DF0)($at)
    /* 40088 801C9000 0700622C */  sltiu      $v0, $v1, 0x7
    /* 4008C 801C9004 06004010 */  beqz       $v0, .L801C9020
    /* 40090 801C9008 80100300 */   sll       $v0, $v1, 2
    /* 40094 801C900C 21104300 */  addu       $v0, $v0, $v1
    /* 40098 801C9010 2110A200 */  addu       $v0, $a1, $v0
    /* 4009C 801C9014 B0FF4224 */  addiu      $v0, $v0, -0x50
    /* 400A0 801C9018 42240708 */  j          .L801C9108
    /* 400A4 801C901C FF004230 */   andi      $v0, $v0, 0xFF
  .L801C9020:
    /* 400A8 801C9020 07000224 */  addiu      $v0, $zero, 0x7
    /* 400AC 801C9024 07006214 */  bne        $v1, $v0, .L801C9044
    /* 400B0 801C9028 08000224 */   addiu     $v0, $zero, 0x8
    /* 400B4 801C902C 0100A230 */  andi       $v0, $a1, 0x1
    /* 400B8 801C9030 8EFF4010 */  beqz       $v0, .L801C8E6C
    /* 400BC 801C9034 42100400 */   srl       $v0, $a0, 1
    /* 400C0 801C9038 D4004224 */  addiu      $v0, $v0, 0xD4
    /* 400C4 801C903C 42240708 */  j          .L801C9108
    /* 400C8 801C9040 FF004230 */   andi      $v0, $v0, 0xFF
  .L801C9044:
    /* 400CC 801C9044 03006214 */  bne        $v1, $v0, .L801C9054
    /* 400D0 801C9048 D6FFA224 */   addiu     $v0, $a1, -0x2A
    /* 400D4 801C904C 42240708 */  j          .L801C9108
    /* 400D8 801C9050 FF004230 */   andi      $v0, $v0, 0xFF
  .L801C9054:
    /* 400DC 801C9054 09000224 */  addiu      $v0, $zero, 0x9
    /* 400E0 801C9058 0E006214 */  bne        $v1, $v0, .L801C9094
    /* 400E4 801C905C F6FFC224 */   addiu     $v0, $a2, -0xA
    /* 400E8 801C9060 01000224 */  addiu      $v0, $zero, 0x1
    /* 400EC 801C9064 03008214 */  bne        $a0, $v0, .L801C9074
    /* 400F0 801C9068 03000224 */   addiu     $v0, $zero, 0x3
    /* 400F4 801C906C 42240708 */  j          .L801C9108
    /* 400F8 801C9070 DC000224 */   addiu     $v0, $zero, 0xDC
  .L801C9074:
    /* 400FC 801C9074 03008214 */  bne        $a0, $v0, .L801C9084
    /* 40100 801C9078 05000324 */   addiu     $v1, $zero, 0x5
    /* 40104 801C907C 42240708 */  j          .L801C9108
    /* 40108 801C9080 A6000224 */   addiu     $v0, $zero, 0xA6
  .L801C9084:
    /* 4010C 801C9084 20008314 */  bne        $a0, $v1, .L801C9108
    /* 40110 801C9088 20000224 */   addiu     $v0, $zero, 0x20
    /* 40114 801C908C 42240708 */  j          .L801C9108
    /* 40118 801C9090 DD000224 */   addiu     $v0, $zero, 0xDD
  .L801C9094:
    /* 4011C 801C9094 0200422C */  sltiu      $v0, $v0, 0x2
    /* 40120 801C9098 08004010 */  beqz       $v0, .L801C90BC
    /* 40124 801C909C 00000000 */   nop
    /* 40128 801C90A0 F6FF6324 */  addiu      $v1, $v1, -0xA
    /* 4012C 801C90A4 80100300 */  sll        $v0, $v1, 2
    /* 40130 801C90A8 21104300 */  addu       $v0, $v0, $v1
    /* 40134 801C90AC 2110A200 */  addu       $v0, $a1, $v0
    /* 40138 801C90B0 A6FF4224 */  addiu      $v0, $v0, -0x5A
    /* 4013C 801C90B4 42240708 */  j          .L801C9108
    /* 40140 801C90B8 FF004230 */   andi      $v0, $v0, 0xFF
  .L801C90BC:
    /* 40144 801C90BC 0C00622C */  sltiu      $v0, $v1, 0xC
    /* 40148 801C90C0 11004014 */  bnez       $v0, .L801C9108
    /* 4014C 801C90C4 00000000 */   nop
    /* 40150 801C90C8 01000224 */  addiu      $v0, $zero, 0x1
    /* 40154 801C90CC 03008214 */  bne        $a0, $v0, .L801C90DC
    /* 40158 801C90D0 02000224 */   addiu     $v0, $zero, 0x2
    /* 4015C 801C90D4 42240708 */  j          .L801C9108
    /* 40160 801C90D8 2D000224 */   addiu     $v0, $zero, 0x2D
  .L801C90DC:
    /* 40164 801C90DC 03008214 */  bne        $a0, $v0, .L801C90EC
    /* 40168 801C90E0 03000224 */   addiu     $v0, $zero, 0x3
    /* 4016C 801C90E4 42240708 */  j          .L801C9108
    /* 40170 801C90E8 DE000224 */   addiu     $v0, $zero, 0xDE
  .L801C90EC:
    /* 40174 801C90EC 03008214 */  bne        $a0, $v0, .L801C90FC
    /* 40178 801C90F0 FEFFE224 */   addiu     $v0, $a3, -0x2
    /* 4017C 801C90F4 42240708 */  j          .L801C9108
    /* 40180 801C90F8 DF000224 */   addiu     $v0, $zero, 0xDF
  .L801C90FC:
    /* 40184 801C90FC 1E80013C */  lui        $at, %hi(D_801D8DEE)
    /* 40188 801C9100 EE8D22A4 */  sh         $v0, %lo(D_801D8DEE)($at)
    /* 4018C 801C9104 20000224 */  addiu      $v0, $zero, 0x20
  .L801C9108:
    /* 40190 801C9108 0800E003 */  jr         $ra
    /* 40194 801C910C 00000000 */   nop
endlabel func_801C8D00
