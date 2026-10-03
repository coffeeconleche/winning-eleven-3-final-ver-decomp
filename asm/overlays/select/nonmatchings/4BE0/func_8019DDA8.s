nonmatching func_8019DDA8, 0x1C8

glabel func_8019DDA8
    /* 14E30 8019DDA8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 14E34 8019DDAC FF008530 */  andi       $a1, $a0, 0xFF
    /* 14E38 8019DDB0 02000224 */  addiu      $v0, $zero, 0x2
    /* 14E3C 8019DDB4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 14E40 8019DDB8 2F00A210 */  beq        $a1, $v0, .L8019DE78
    /* 14E44 8019DDBC 1000B0AF */   sw        $s0, 0x10($sp)
    /* 14E48 8019DDC0 0300A228 */  slti       $v0, $a1, 0x3
    /* 14E4C 8019DDC4 05004010 */  beqz       $v0, .L8019DDDC
    /* 14E50 8019DDC8 01000224 */   addiu     $v0, $zero, 0x1
    /* 14E54 8019DDCC 0B00A210 */  beq        $a1, $v0, .L8019DDFC
    /* 14E58 8019DDD0 FF008330 */   andi      $v1, $a0, 0xFF
    /* 14E5C 8019DDD4 D7770608 */  j          .L8019DF5C
    /* 14E60 8019DDD8 00000000 */   nop
  .L8019DDDC:
    /* 14E64 8019DDDC 0B000224 */  addiu      $v0, $zero, 0xB
    /* 14E68 8019DDE0 0500A210 */  beq        $a1, $v0, .L8019DDF8
    /* 14E6C 8019DDE4 0D000224 */   addiu     $v0, $zero, 0xD
    /* 14E70 8019DDE8 5500A210 */  beq        $a1, $v0, .L8019DF40
    /* 14E74 8019DDEC 21280000 */   addu      $a1, $zero, $zero
    /* 14E78 8019DDF0 D7770608 */  j          .L8019DF5C
    /* 14E7C 8019DDF4 00000000 */   nop
  .L8019DDF8:
    /* 14E80 8019DDF8 FF008330 */  andi       $v1, $a0, 0xFF
  .L8019DDFC:
    /* 14E84 8019DDFC CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 14E88 8019DE00 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 14E8C 8019DE04 19006200 */  multu      $v1, $v0
    /* 14E90 8019DE08 10380000 */  mfhi       $a3
    /* 14E94 8019DE0C C2200700 */  srl        $a0, $a3, 3
    /* 14E98 8019DE10 80100400 */  sll        $v0, $a0, 2
    /* 14E9C 8019DE14 21104400 */  addu       $v0, $v0, $a0
    /* 14EA0 8019DE18 40100200 */  sll        $v0, $v0, 1
    /* 14EA4 8019DE1C 23186200 */  subu       $v1, $v1, $v0
    /* 14EA8 8019DE20 FF006330 */  andi       $v1, $v1, 0xFF
    /* 14EAC 8019DE24 1E80013C */  lui        $at, %hi(D_801DA2F4)
    /* 14EB0 8019DE28 21082300 */  addu       $at, $at, $v1
    /* 14EB4 8019DE2C F4A22390 */  lbu        $v1, %lo(D_801DA2F4)($at)
    /* 14EB8 8019DE30 00000000 */  nop
    /* 14EBC 8019DE34 05006010 */  beqz       $v1, .L8019DE4C
    /* 14EC0 8019DE38 01000224 */   addiu     $v0, $zero, 0x1
    /* 14EC4 8019DE3C 09006210 */  beq        $v1, $v0, .L8019DE64
    /* 14EC8 8019DE40 21280000 */   addu      $a1, $zero, $zero
    /* 14ECC 8019DE44 D7770608 */  j          .L8019DF5C
    /* 14ED0 8019DE48 00000000 */   nop
  .L8019DE4C:
    /* 14ED4 8019DE4C 21280000 */  addu       $a1, $zero, $zero
    /* 14ED8 8019DE50 1E80103C */  lui        $s0, %hi(D_801D8DF5)
    /* 14EDC 8019DE54 F58D1026 */  addiu      $s0, $s0, %lo(D_801D8DF5)
    /* 14EE0 8019DE58 00000492 */  lbu        $a0, 0x0($s0)
    /* 14EE4 8019DE5C D4770608 */  j          .L8019DF50
    /* 14EE8 8019DE60 02000624 */   addiu     $a2, $zero, 0x2
  .L8019DE64:
    /* 14EEC 8019DE64 1E80103C */  lui        $s0, %hi(D_801D8DF6)
    /* 14EF0 8019DE68 F68D1026 */  addiu      $s0, $s0, %lo(D_801D8DF6)
    /* 14EF4 8019DE6C 00000492 */  lbu        $a0, 0x0($s0)
    /* 14EF8 8019DE70 D4770608 */  j          .L8019DF50
    /* 14EFC 8019DE74 05000624 */   addiu     $a2, $zero, 0x5
  .L8019DE78:
    /* 14F00 8019DE78 1E80033C */  lui        $v1, %hi(D_801DA2F6)
    /* 14F04 8019DE7C F6A26390 */  lbu        $v1, %lo(D_801DA2F6)($v1)
    /* 14F08 8019DE80 01000224 */  addiu      $v0, $zero, 0x1
    /* 14F0C 8019DE84 10006210 */  beq        $v1, $v0, .L8019DEC8
    /* 14F10 8019DE88 02006228 */   slti      $v0, $v1, 0x2
    /* 14F14 8019DE8C 05004010 */  beqz       $v0, .L8019DEA4
    /* 14F18 8019DE90 00000000 */   nop
    /* 14F1C 8019DE94 07006010 */  beqz       $v1, .L8019DEB4
    /* 14F20 8019DE98 03000524 */   addiu     $a1, $zero, 0x3
    /* 14F24 8019DE9C D7770608 */  j          .L8019DF5C
    /* 14F28 8019DEA0 00000000 */   nop
  .L8019DEA4:
    /* 14F2C 8019DEA4 26006510 */  beq        $v1, $a1, .L8019DF40
    /* 14F30 8019DEA8 21280000 */   addu      $a1, $zero, $zero
    /* 14F34 8019DEAC D7770608 */  j          .L8019DF5C
    /* 14F38 8019DEB0 00000000 */   nop
  .L8019DEB4:
    /* 14F3C 8019DEB4 1E80103C */  lui        $s0, %hi(D_801D8DF7)
    /* 14F40 8019DEB8 F78D1026 */  addiu      $s0, $s0, %lo(D_801D8DF7)
    /* 14F44 8019DEBC 00000492 */  lbu        $a0, 0x0($s0)
    /* 14F48 8019DEC0 D4770608 */  j          .L8019DF50
    /* 14F4C 8019DEC4 10000624 */   addiu     $a2, $zero, 0x10
  .L8019DEC8:
    /* 14F50 8019DEC8 21280000 */  addu       $a1, $zero, $zero
    /* 14F54 8019DECC 1E80103C */  lui        $s0, %hi(D_801D8DF8)
    /* 14F58 8019DED0 F88D1026 */  addiu      $s0, $s0, %lo(D_801D8DF8)
    /* 14F5C 8019DED4 00000492 */  lbu        $a0, 0x0($s0)
    /* 14F60 8019DED8 9039060C */  jal        func_8018E640
    /* 14F64 8019DEDC 01000624 */   addiu     $a2, $zero, 0x1
    /* 14F68 8019DEE0 000002A2 */  sb         $v0, 0x0($s0)
    /* 14F6C 8019DEE4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 14F70 8019DEE8 0B004014 */  bnez       $v0, .L8019DF18
    /* 14F74 8019DEEC 2A000424 */   addiu     $a0, $zero, 0x2A
    /* 14F78 8019DEF0 13BE010C */  jal        func_8006F84C
    /* 14F7C 8019DEF4 30000524 */   addiu     $a1, $zero, 0x30
    /* 14F80 8019DEF8 2D000424 */  addiu      $a0, $zero, 0x2D
    /* 14F84 8019DEFC 13BE010C */  jal        func_8006F84C
    /* 14F88 8019DF00 30000524 */   addiu     $a1, $zero, 0x30
    /* 14F8C 8019DF04 30000424 */  addiu      $a0, $zero, 0x30
    /* 14F90 8019DF08 13BE010C */  jal        func_8006F84C
    /* 14F94 8019DF0C 30000524 */   addiu     $a1, $zero, 0x30
    /* 14F98 8019DF10 D7770608 */  j          .L8019DF5C
    /* 14F9C 8019DF14 00000000 */   nop
  .L8019DF18:
    /* 14FA0 8019DF18 13BE010C */  jal        func_8006F84C
    /* 14FA4 8019DF1C 80000524 */   addiu     $a1, $zero, 0x80
    /* 14FA8 8019DF20 2D000424 */  addiu      $a0, $zero, 0x2D
    /* 14FAC 8019DF24 13BE010C */  jal        func_8006F84C
    /* 14FB0 8019DF28 80000524 */   addiu     $a1, $zero, 0x80
    /* 14FB4 8019DF2C 30000424 */  addiu      $a0, $zero, 0x30
    /* 14FB8 8019DF30 13BE010C */  jal        func_8006F84C
    /* 14FBC 8019DF34 80000524 */   addiu     $a1, $zero, 0x80
    /* 14FC0 8019DF38 D7770608 */  j          .L8019DF5C
    /* 14FC4 8019DF3C 00000000 */   nop
  .L8019DF40:
    /* 14FC8 8019DF40 1E80103C */  lui        $s0, %hi(D_801D8DF9)
    /* 14FCC 8019DF44 F98D1026 */  addiu      $s0, $s0, %lo(D_801D8DF9)
    /* 14FD0 8019DF48 00000492 */  lbu        $a0, 0x0($s0)
    /* 14FD4 8019DF4C 01000624 */  addiu      $a2, $zero, 0x1
  .L8019DF50:
    /* 14FD8 8019DF50 9039060C */  jal        func_8018E640
    /* 14FDC 8019DF54 00000000 */   nop
    /* 14FE0 8019DF58 000002A2 */  sb         $v0, 0x0($s0)
  .L8019DF5C:
    /* 14FE4 8019DF5C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 14FE8 8019DF60 1000B08F */  lw         $s0, 0x10($sp)
    /* 14FEC 8019DF64 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 14FF0 8019DF68 0800E003 */  jr         $ra
    /* 14FF4 8019DF6C 00000000 */   nop
endlabel func_8019DDA8
