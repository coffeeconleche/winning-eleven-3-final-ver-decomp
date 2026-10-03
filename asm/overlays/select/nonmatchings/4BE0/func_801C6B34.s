nonmatching func_801C6B34, 0xF50

glabel func_801C6B34
    /* 3DBBC 801C6B34 1180033C */  lui        $v1, %hi(D_8010A322)
    /* 3DBC0 801C6B38 22A36390 */  lbu        $v1, %lo(D_8010A322)($v1)
    /* 3DBC4 801C6B3C B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 3DBC8 801C6B40 4400B3AF */  sw         $s3, 0x44($sp)
    /* 3DBCC 801C6B44 1080133C */  lui        $s3, %hi(D_800FF748)
    /* 3DBD0 801C6B48 48F77326 */  addiu      $s3, $s3, %lo(D_800FF748)
    /* 3DBD4 801C6B4C 3800B0AF */  sw         $s0, 0x38($sp)
    /* 3DBD8 801C6B50 801F103C */  lui        $s0, (0x1F800000 >> 16)
    /* 3DBDC 801C6B54 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* 3DBE0 801C6B58 4800B4AF */  sw         $s4, 0x48($sp)
    /* 3DBE4 801C6B5C 4000B2AF */  sw         $s2, 0x40($sp)
    /* 3DBE8 801C6B60 0800622C */  sltiu      $v0, $v1, 0x8
    /* 3DBEC 801C6B64 BD034010 */  beqz       $v0, .L801C7A5C
    /* 3DBF0 801C6B68 3C00B1AF */   sw        $s1, 0x3C($sp)
    /* 3DBF4 801C6B6C 80100300 */  sll        $v0, $v1, 2
    /* 3DBF8 801C6B70 1980013C */  lui        $at, %hi(jtbl_8018D914)
    /* 3DBFC 801C6B74 21082200 */  addu       $at, $at, $v0
    /* 3DC00 801C6B78 14D9228C */  lw         $v0, %lo(jtbl_8018D914)($at)
    /* 3DC04 801C6B7C 00000000 */  nop
    /* 3DC08 801C6B80 08004000 */  jr         $v0
    /* 3DC0C 801C6B84 00000000 */   nop
  jlabel .L801C6B88
    /* 3DC10 801C6B88 09000624 */  addiu      $a2, $zero, 0x9
    /* 3DC14 801C6B8C 1E80033C */  lui        $v1, %hi(D_801DA309)
    /* 3DC18 801C6B90 09A36324 */  addiu      $v1, $v1, %lo(D_801DA309)
    /* 3DC1C 801C6B94 01000224 */  addiu      $v0, $zero, 0x1
    /* 3DC20 801C6B98 1E80013C */  lui        $at, %hi(D_801D8B17)
    /* 3DC24 801C6B9C 178B22A0 */  sb         $v0, %lo(D_801D8B17)($at)
    /* 3DC28 801C6BA0 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 3DC2C 801C6BA4 58A020AC */  sw         $zero, %lo(D_801DA058)($at)
    /* 3DC30 801C6BA8 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 3DC34 801C6BAC 5CA020AC */  sw         $zero, %lo(D_801DA05C)($at)
  .L801C6BB0:
    /* 3DC38 801C6BB0 000060A0 */  sb         $zero, 0x0($v1)
    /* 3DC3C 801C6BB4 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 3DC40 801C6BB8 FDFFC104 */  bgez       $a2, .L801C6BB0
    /* 3DC44 801C6BBC FFFF6324 */   addiu     $v1, $v1, -0x1
    /* 3DC48 801C6BC0 01000224 */  addiu      $v0, $zero, 0x1
    /* 3DC4C 801C6BC4 1E80013C */  lui        $at, %hi(D_801DADCA)
    /* 3DC50 801C6BC8 CAAD20A0 */  sb         $zero, %lo(D_801DADCA)($at)
    /* 3DC54 801C6BCC 1E80013C */  lui        $at, %hi(D_801DADBA)
    /* 3DC58 801C6BD0 BAAD20A0 */  sb         $zero, %lo(D_801DADBA)($at)
    /* 3DC5C 801C6BD4 1E80013C */  lui        $at, %hi(D_801D8DFD)
    /* 3DC60 801C6BD8 FD8D20A0 */  sb         $zero, %lo(D_801D8DFD)($at)
    /* 3DC64 801C6BDC 1E80013C */  lui        $at, %hi(D_801D8DFE)
    /* 3DC68 801C6BE0 FE8D22A0 */  sb         $v0, %lo(D_801D8DFE)($at)
    /* 3DC6C 801C6BE4 4023070C */  jal        func_801C8D00
    /* 3DC70 801C6BE8 00000000 */   nop
    /* 3DC74 801C6BEC 21300000 */  addu       $a2, $zero, $zero
    /* 3DC78 801C6BF0 0D80073C */  lui        $a3, %hi(D_800C8568)
    /* 3DC7C 801C6BF4 6885E724 */  addiu      $a3, $a3, %lo(D_800C8568)
  .L801C6BF8:
    /* 3DC80 801C6BF8 1E80033C */  lui        $v1, %hi(D_801DA330)
    /* 3DC84 801C6BFC 30A36390 */  lbu        $v1, %lo(D_801DA330)($v1)
    /* 3DC88 801C6C00 1E80043C */  lui        $a0, %hi(D_801D8B15)
    /* 3DC8C 801C6C04 158B8490 */  lbu        $a0, %lo(D_801D8B15)($a0)
    /* 3DC90 801C6C08 40100300 */  sll        $v0, $v1, 1
    /* 3DC94 801C6C0C 21104300 */  addu       $v0, $v0, $v1
    /* 3DC98 801C6C10 80100200 */  sll        $v0, $v0, 2
    /* 3DC9C 801C6C14 23104300 */  subu       $v0, $v0, $v1
    /* 3DCA0 801C6C18 00290200 */  sll        $a1, $v0, 4
    /* 3DCA4 801C6C1C 40100200 */  sll        $v0, $v0, 1
    /* 3DCA8 801C6C20 21105300 */  addu       $v0, $v0, $s3
    /* 3DCAC 801C6C24 EA8A0334 */  ori        $v1, $zero, 0x8AEA
    /* 3DCB0 801C6C28 21104300 */  addu       $v0, $v0, $v1
    /* 3DCB4 801C6C2C 21104400 */  addu       $v0, $v0, $a0
    /* 3DCB8 801C6C30 00004290 */  lbu        $v0, 0x0($v0)
    /* 3DCBC 801C6C34 2128A700 */  addu       $a1, $a1, $a3
    /* 3DCC0 801C6C38 C0100200 */  sll        $v0, $v0, 3
    /* 3DCC4 801C6C3C 21104500 */  addu       $v0, $v0, $a1
    /* 3DCC8 801C6C40 21104600 */  addu       $v0, $v0, $a2
    /* 3DCCC 801C6C44 00005090 */  lbu        $s0, 0x0($v0)
    /* 3DCD0 801C6C48 00000000 */  nop
    /* 3DCD4 801C6C4C FF000332 */  andi       $v1, $s0, 0xFF
    /* 3DCD8 801C6C50 1E80013C */  lui        $at, %hi(D_801DA300)
    /* 3DCDC 801C6C54 21082600 */  addu       $at, $at, $a2
    /* 3DCE0 801C6C58 00A330A0 */  sb         $s0, %lo(D_801DA300)($at)
    /* 3DCE4 801C6C5C 31006010 */  beqz       $v1, .L801C6D24
    /* 3DCE8 801C6C60 7A000226 */   addiu     $v0, $s0, 0x7A
    /* 3DCEC 801C6C64 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3DCF0 801C6C68 1A00422C */  sltiu      $v0, $v0, 0x1A
    /* 3DCF4 801C6C6C 09004010 */  beqz       $v0, .L801C6C94
    /* 3DCF8 801C6C70 60000226 */   addiu     $v0, $s0, 0x60
    /* 3DCFC 801C6C74 1E80023C */  lui        $v0, %hi(D_801DADCA)
    /* 3DD00 801C6C78 CAAD4290 */  lbu        $v0, %lo(D_801DADCA)($v0)
    /* 3DD04 801C6C7C 00000000 */  nop
    /* 3DD08 801C6C80 0A004224 */  addiu      $v0, $v0, 0xA
    /* 3DD0C 801C6C84 1E80013C */  lui        $at, %hi(D_801DADCA)
    /* 3DD10 801C6C88 CAAD22A0 */  sb         $v0, %lo(D_801DADCA)($at)
    /* 3DD14 801C6C8C 3C1B0708 */  j          .L801C6CF0
    /* 3DD18 801C6C90 0100C624 */   addiu     $a2, $a2, 0x1
  .L801C6C94:
    /* 3DD1C 801C6C94 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3DD20 801C6C98 4000422C */  sltiu      $v0, $v0, 0x40
    /* 3DD24 801C6C9C 09004010 */  beqz       $v0, .L801C6CC4
    /* 3DD28 801C6CA0 E0FF6224 */   addiu     $v0, $v1, -0x20
    /* 3DD2C 801C6CA4 1E80023C */  lui        $v0, %hi(D_801DADCA)
    /* 3DD30 801C6CA8 CAAD4290 */  lbu        $v0, %lo(D_801DADCA)($v0)
    /* 3DD34 801C6CAC 00000000 */  nop
    /* 3DD38 801C6CB0 08004224 */  addiu      $v0, $v0, 0x8
    /* 3DD3C 801C6CB4 1E80013C */  lui        $at, %hi(D_801DADCA)
    /* 3DD40 801C6CB8 CAAD22A0 */  sb         $v0, %lo(D_801DADCA)($at)
    /* 3DD44 801C6CBC 3C1B0708 */  j          .L801C6CF0
    /* 3DD48 801C6CC0 0100C624 */   addiu     $a2, $a2, 0x1
  .L801C6CC4:
    /* 3DD4C 801C6CC4 40100200 */  sll        $v0, $v0, 1
    /* 3DD50 801C6CC8 1E80033C */  lui        $v1, %hi(D_801DADCA)
    /* 3DD54 801C6CCC CAAD6390 */  lbu        $v1, %lo(D_801DADCA)($v1)
    /* 3DD58 801C6CD0 1D80013C */  lui        $at, %hi(D_801D1BF9)
    /* 3DD5C 801C6CD4 21082200 */  addu       $at, $at, $v0
    /* 3DD60 801C6CD8 F91B2290 */  lbu        $v0, %lo(D_801D1BF9)($at)
    /* 3DD64 801C6CDC 00000000 */  nop
    /* 3DD68 801C6CE0 21186200 */  addu       $v1, $v1, $v0
    /* 3DD6C 801C6CE4 1E80013C */  lui        $at, %hi(D_801DADCA)
    /* 3DD70 801C6CE8 CAAD23A0 */  sb         $v1, %lo(D_801DADCA)($at)
    /* 3DD74 801C6CEC 0100C624 */  addiu      $a2, $a2, 0x1
  .L801C6CF0:
    /* 3DD78 801C6CF0 1E80023C */  lui        $v0, %hi(D_801DADBA)
    /* 3DD7C 801C6CF4 BAAD4290 */  lbu        $v0, %lo(D_801DADBA)($v0)
    /* 3DD80 801C6CF8 1E80033C */  lui        $v1, %hi(D_801DA05C)
    /* 3DD84 801C6CFC 5CA0638C */  lw         $v1, %lo(D_801DA05C)($v1)
    /* 3DD88 801C6D00 01004224 */  addiu      $v0, $v0, 0x1
    /* 3DD8C 801C6D04 01006324 */  addiu      $v1, $v1, 0x1
    /* 3DD90 801C6D08 1E80013C */  lui        $at, %hi(D_801DADBA)
    /* 3DD94 801C6D0C BAAD22A0 */  sb         $v0, %lo(D_801DADBA)($at)
    /* 3DD98 801C6D10 0800C228 */  slti       $v0, $a2, 0x8
    /* 3DD9C 801C6D14 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 3DDA0 801C6D18 5CA023AC */  sw         $v1, %lo(D_801DA05C)($at)
    /* 3DDA4 801C6D1C B6FF4014 */  bnez       $v0, .L801C6BF8
    /* 3DDA8 801C6D20 00000000 */   nop
  .L801C6D24:
    /* 3DDAC 801C6D24 1E80013C */  lui        $at, %hi(D_801DA300)
    /* 3DDB0 801C6D28 21082600 */  addu       $at, $at, $a2
    /* 3DDB4 801C6D2C 00A320A0 */  sb         $zero, %lo(D_801DA300)($at)
    /* 3DDB8 801C6D30 851E0708 */  j          .L801C7A14
    /* 3DDBC 801C6D34 00000000 */   nop
  jlabel .L801C6D38
    /* 3DDC0 801C6D38 09000624 */  addiu      $a2, $zero, 0x9
    /* 3DDC4 801C6D3C 9002028E */  lw         $v0, 0x290($s0)
    /* 3DDC8 801C6D40 1E80033C */  lui        $v1, %hi(D_801DA341)
    /* 3DDCC 801C6D44 41A36324 */  addiu      $v1, $v1, %lo(D_801DA341)
    /* 3DDD0 801C6D48 02110200 */  srl        $v0, $v0, 4
    /* 3DDD4 801C6D4C 01004230 */  andi       $v0, $v0, 0x1
    /* 3DDD8 801C6D50 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 3DDDC 801C6D54 58A022AC */  sw         $v0, %lo(D_801DA058)($at)
  .L801C6D58:
    /* 3DDE0 801C6D58 000060A0 */  sb         $zero, 0x0($v1)
    /* 3DDE4 801C6D5C FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 3DDE8 801C6D60 FDFFC104 */  bgez       $a2, .L801C6D58
    /* 3DDEC 801C6D64 FFFF6324 */   addiu     $v1, $v1, -0x1
    /* 3DDF0 801C6D68 1E80023C */  lui        $v0, %hi(D_801DA058)
    /* 3DDF4 801C6D6C 58A0428C */  lw         $v0, %lo(D_801DA058)($v0)
    /* 3DDF8 801C6D70 00000000 */  nop
    /* 3DDFC 801C6D74 06004010 */  beqz       $v0, .L801C6D90
    /* 3DE00 801C6D78 7C000224 */   addiu     $v0, $zero, 0x7C
    /* 3DE04 801C6D7C 1E80033C */  lui        $v1, %hi(D_801DA05C)
    /* 3DE08 801C6D80 5CA0638C */  lw         $v1, %lo(D_801DA05C)($v1)
    /* 3DE0C 801C6D84 1E80013C */  lui        $at, %hi(D_801DA338)
    /* 3DE10 801C6D88 21082300 */  addu       $at, $at, $v1
    /* 3DE14 801C6D8C 38A322A0 */  sb         $v0, %lo(D_801DA338)($at)
  .L801C6D90:
    /* 3DE18 801C6D90 21900000 */  addu       $s2, $zero, $zero
    /* 3DE1C 801C6D94 21300000 */  addu       $a2, $zero, $zero
    /* 3DE20 801C6D98 7C000524 */  addiu      $a1, $zero, 0x7C
    /* 3DE24 801C6D9C 1E80043C */  lui        $a0, %hi(D_801DA300)
    /* 3DE28 801C6DA0 00A38424 */  addiu      $a0, $a0, %lo(D_801DA300)
    /* 3DE2C 801C6DA4 1E80033C */  lui        $v1, %hi(D_801DA338)
    /* 3DE30 801C6DA8 38A36324 */  addiu      $v1, $v1, %lo(D_801DA338)
  .L801C6DAC:
    /* 3DE34 801C6DAC 1E80013C */  lui        $at, %hi(D_801DA338)
    /* 3DE38 801C6DB0 21083200 */  addu       $at, $at, $s2
    /* 3DE3C 801C6DB4 38A32290 */  lbu        $v0, %lo(D_801DA338)($at)
    /* 3DE40 801C6DB8 00000000 */  nop
    /* 3DE44 801C6DBC 04004514 */  bne        $v0, $a1, .L801C6DD0
    /* 3DE48 801C6DC0 00000000 */   nop
    /* 3DE4C 801C6DC4 01006324 */  addiu      $v1, $v1, 0x1
    /* 3DE50 801C6DC8 7A1B0708 */  j          .L801C6DE8
    /* 3DE54 801C6DCC 01005226 */   addiu     $s2, $s2, 0x1
  .L801C6DD0:
    /* 3DE58 801C6DD0 00008290 */  lbu        $v0, 0x0($a0)
    /* 3DE5C 801C6DD4 01008424 */  addiu      $a0, $a0, 0x1
    /* 3DE60 801C6DD8 0100C624 */  addiu      $a2, $a2, 0x1
    /* 3DE64 801C6DDC 01005226 */  addiu      $s2, $s2, 0x1
    /* 3DE68 801C6DE0 000062A0 */  sb         $v0, 0x0($v1)
    /* 3DE6C 801C6DE4 01006324 */  addiu      $v1, $v1, 0x1
  .L801C6DE8:
    /* 3DE70 801C6DE8 0900C228 */  slti       $v0, $a2, 0x9
    /* 3DE74 801C6DEC EFFF4014 */  bnez       $v0, .L801C6DAC
    /* 3DE78 801C6DF0 00000000 */   nop
    /* 3DE7C 801C6DF4 1E80023C */  lui        $v0, %hi(D_801DA058)
    /* 3DE80 801C6DF8 58A0428C */  lw         $v0, %lo(D_801DA058)($v0)
    /* 3DE84 801C6DFC 00000000 */  nop
    /* 3DE88 801C6E00 02004010 */  beqz       $v0, .L801C6E0C
    /* 3DE8C 801C6E04 5CFF0624 */   addiu     $a2, $zero, -0xA4
    /* 3DE90 801C6E08 5DFF0624 */  addiu      $a2, $zero, -0xA3
  .L801C6E0C:
    /* 3DE94 801C6E0C 1F000424 */  addiu      $a0, $zero, 0x1F
    /* 3DE98 801C6E10 1E80053C */  lui        $a1, %hi(D_801DA338)
    /* 3DE9C 801C6E14 38A3A524 */  addiu      $a1, $a1, %lo(D_801DA338)
    /* 3DEA0 801C6E18 0B80073C */  lui        $a3, %hi(D_800AD638)
    /* 3DEA4 801C6E1C 38D6E794 */  lhu        $a3, %lo(D_800AD638)($a3)
    /* 3DEA8 801C6E20 42000224 */  addiu      $v0, $zero, 0x42
    /* 3DEAC 801C6E24 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3DEB0 801C6E28 03000224 */  addiu      $v0, $zero, 0x3
    /* 3DEB4 801C6E2C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3DEB8 801C6E30 02000224 */  addiu      $v0, $zero, 0x2
    /* 3DEBC 801C6E34 2400A2AF */  sw         $v0, 0x24($sp)
    /* 3DEC0 801C6E38 05000224 */  addiu      $v0, $zero, 0x5
    /* 3DEC4 801C6E3C 2800A2AF */  sw         $v0, 0x28($sp)
    /* 3DEC8 801C6E40 01000224 */  addiu      $v0, $zero, 0x1
    /* 3DECC 801C6E44 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3DED0 801C6E48 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 3DED4 801C6E4C 2000A0AF */  sw         $zero, 0x20($sp)
    /* 3DED8 801C6E50 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 3DEDC 801C6E54 00390700 */  sll        $a3, $a3, 4
    /* 3DEE0 801C6E58 B850060C */  jal        func_801942E0
    /* 3DEE4 801C6E5C B7FFE724 */   addiu     $a3, $a3, -0x49
    /* 3DEE8 801C6E60 3A21070C */  jal        func_801C84E8
    /* 3DEEC 801C6E64 00000000 */   nop
    /* 3DEF0 801C6E68 98BB010C */  jal        func_8006EE60
    /* 3DEF4 801C6E6C 21200000 */   addu      $a0, $zero, $zero
    /* 3DEF8 801C6E70 30020396 */  lhu        $v1, 0x230($s0)
    /* 3DEFC 801C6E74 21280000 */  addu       $a1, $zero, $zero
    /* 3DF00 801C6E78 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 3DF04 801C6E7C 50AE20A0 */  sb         $zero, %lo(D_801DAE50)($at)
    /* 3DF08 801C6E80 0C006330 */  andi       $v1, $v1, 0xC
    /* 3DF0C 801C6E84 25104300 */  or         $v0, $v0, $v1
    /* 3DF10 801C6E88 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 3DF14 801C6E8C A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 3DF18 801C6E90 4424070C */  jal        func_801C9110
    /* 3DF1C 801C6E94 FFFF4430 */   andi      $a0, $v0, 0xFFFF
    /* 3DF20 801C6E98 4023070C */  jal        func_801C8D00
    /* 3DF24 801C6E9C 21804000 */   addu      $s0, $v0, $zero
    /* 3DF28 801C6EA0 21A04000 */  addu       $s4, $v0, $zero
    /* 3DF2C 801C6EA4 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 3DF30 801C6EA8 A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 3DF34 801C6EAC 00080224 */  addiu      $v0, $zero, 0x800
    /* 3DF38 801C6EB0 09006214 */  bne        $v1, $v0, .L801C6ED8
    /* 3DF3C 801C6EB4 00010224 */   addiu     $v0, $zero, 0x100
    /* 3DF40 801C6EB8 02001024 */  addiu      $s0, $zero, 0x2
    /* 3DF44 801C6EBC 0C000224 */  addiu      $v0, $zero, 0xC
    /* 3DF48 801C6EC0 1E80013C */  lui        $at, %hi(D_801D8DFD)
    /* 3DF4C 801C6EC4 FD8D22A0 */  sb         $v0, %lo(D_801D8DFD)($at)
    /* 3DF50 801C6EC8 1E80013C */  lui        $at, %hi(D_801D8DFE)
    /* 3DF54 801C6ECC FE8D20A0 */  sb         $zero, %lo(D_801D8DFE)($at)
    /* 3DF58 801C6ED0 BA1B0708 */  j          .L801C6EE8
    /* 3DF5C 801C6ED4 14001424 */   addiu     $s4, $zero, 0x14
  .L801C6ED8:
    /* 3DF60 801C6ED8 03006214 */  bne        $v1, $v0, .L801C6EE8
    /* 3DF64 801C6EDC 00000000 */   nop
    /* 3DF68 801C6EE0 02001024 */  addiu      $s0, $zero, 0x2
    /* 3DF6C 801C6EE4 DE001424 */  addiu      $s4, $zero, 0xDE
  .L801C6EE8:
    /* 3DF70 801C6EE8 2D23070C */  jal        func_801C8CB4
    /* 3DF74 801C6EEC 00000000 */   nop
    /* 3DF78 801C6EF0 21200000 */  addu       $a0, $zero, $zero
    /* 3DF7C 801C6EF4 2F22070C */  jal        func_801C88BC
    /* 3DF80 801C6EF8 FF004530 */   andi      $a1, $v0, 0xFF
    /* 3DF84 801C6EFC F0FF8226 */  addiu      $v0, $s4, -0x10
    /* 3DF88 801C6F00 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3DF8C 801C6F04 0500422C */  sltiu      $v0, $v0, 0x5
    /* 3DF90 801C6F08 07004010 */  beqz       $v0, .L801C6F28
    /* 3DF94 801C6F0C FF000332 */   andi      $v1, $s0, 0xFF
    /* 3DF98 801C6F10 2D23070C */  jal        func_801C8CB4
    /* 3DF9C 801C6F14 00000000 */   nop
    /* 3DFA0 801C6F18 01000424 */  addiu      $a0, $zero, 0x1
    /* 3DFA4 801C6F1C 2F22070C */  jal        func_801C88BC
    /* 3DFA8 801C6F20 FF004530 */   andi      $a1, $v0, 0xFF
    /* 3DFAC 801C6F24 FF000332 */  andi       $v1, $s0, 0xFF
  .L801C6F28:
    /* 3DFB0 801C6F28 03000224 */  addiu      $v0, $zero, 0x3
    /* 3DFB4 801C6F2C 17006210 */  beq        $v1, $v0, .L801C6F8C
    /* 3DFB8 801C6F30 04006228 */   slti      $v0, $v1, 0x4
    /* 3DFBC 801C6F34 05004010 */  beqz       $v0, .L801C6F4C
    /* 3DFC0 801C6F38 02000224 */   addiu     $v0, $zero, 0x2
    /* 3DFC4 801C6F3C 08006210 */  beq        $v1, $v0, .L801C6F60
    /* 3DFC8 801C6F40 EEFF8226 */   addiu     $v0, $s4, -0x12
    /* 3DFCC 801C6F44 EF1B0708 */  j          .L801C6FBC
    /* 3DFD0 801C6F48 21880002 */   addu      $s1, $s0, $zero
  .L801C6F4C:
    /* 3DFD4 801C6F4C 04000224 */  addiu      $v0, $zero, 0x4
    /* 3DFD8 801C6F50 11006210 */  beq        $v1, $v0, .L801C6F98
    /* 3DFDC 801C6F54 21880000 */   addu      $s1, $zero, $zero
    /* 3DFE0 801C6F58 EF1B0708 */  j          .L801C6FBC
    /* 3DFE4 801C6F5C 21880002 */   addu      $s1, $s0, $zero
  .L801C6F60:
    /* 3DFE8 801C6F60 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3DFEC 801C6F64 0300422C */  sltiu      $v0, $v0, 0x3
    /* 3DFF0 801C6F68 14004010 */  beqz       $v0, .L801C6FBC
    /* 3DFF4 801C6F6C 21888002 */   addu      $s1, $s4, $zero
    /* 3DFF8 801C6F70 2D23070C */  jal        func_801C8CB4
    /* 3DFFC 801C6F74 00000000 */   nop
    /* 3E000 801C6F78 02000424 */  addiu      $a0, $zero, 0x2
    /* 3E004 801C6F7C 2F22070C */  jal        func_801C88BC
    /* 3E008 801C6F80 FF004530 */   andi      $a1, $v0, 0xFF
    /* 3E00C 801C6F84 F01B0708 */  j          .L801C6FC0
    /* 3E010 801C6F88 FF002232 */   andi      $v0, $s1, 0xFF
  .L801C6F8C:
    /* 3E014 801C6F8C 21880000 */  addu       $s1, $zero, $zero
    /* 3E018 801C6F90 E71B0708 */  j          .L801C6F9C
    /* 3E01C 801C6F94 08000224 */   addiu     $v0, $zero, 0x8
  .L801C6F98:
    /* 3E020 801C6F98 04000224 */  addiu      $v0, $zero, 0x4
  .L801C6F9C:
    /* 3E024 801C6F9C 1E80013C */  lui        $at, %hi(D_801D8DFD)
    /* 3E028 801C6FA0 FD8D22A0 */  sb         $v0, %lo(D_801D8DFD)($at)
    /* 3E02C 801C6FA4 1E80013C */  lui        $at, %hi(D_801D8DFE)
    /* 3E030 801C6FA8 FE8D20A0 */  sb         $zero, %lo(D_801D8DFE)($at)
    /* 3E034 801C6FAC 4023070C */  jal        func_801C8D00
    /* 3E038 801C6FB0 00000000 */   nop
    /* 3E03C 801C6FB4 F01B0708 */  j          .L801C6FC0
    /* 3E040 801C6FB8 FF002232 */   andi      $v0, $s1, 0xFF
  .L801C6FBC:
    /* 3E044 801C6FBC FF002232 */  andi       $v0, $s1, 0xFF
  .L801C6FC0:
    /* 3E048 801C6FC0 FFFF4324 */  addiu      $v1, $v0, -0x1
    /* 3E04C 801C6FC4 1600622C */  sltiu      $v0, $v1, 0x16
    /* 3E050 801C6FC8 50014010 */  beqz       $v0, .L801C750C
    /* 3E054 801C6FCC 80100300 */   sll       $v0, $v1, 2
    /* 3E058 801C6FD0 1980013C */  lui        $at, %hi(jtbl_8018D934)
    /* 3E05C 801C6FD4 21082200 */  addu       $at, $at, $v0
    /* 3E060 801C6FD8 34D9228C */  lw         $v0, %lo(jtbl_8018D934)($at)
    /* 3E064 801C6FDC 00000000 */  nop
    /* 3E068 801C6FE0 08004000 */  jr         $v0
    /* 3E06C 801C6FE4 00000000 */   nop
  jlabel .L801C6FE8
    /* 3E070 801C6FE8 02000424 */  addiu      $a0, $zero, 0x2
    /* 3E074 801C6FEC 2F22070C */  jal        func_801C88BC
    /* 3E078 801C6FF0 21280000 */   addu      $a1, $zero, $zero
    /* 3E07C 801C6FF4 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 3E080 801C6FF8 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 3E084 801C6FFC 00000000 */  nop
    /* 3E088 801C7000 20004018 */  blez       $v0, .L801C7084
    /* 3E08C 801C7004 00000000 */   nop
    /* 3E090 801C7008 88AD020C */  jal        func_800AB620
    /* 3E094 801C700C 28050424 */   addiu     $a0, $zero, 0x528
    /* 3E098 801C7010 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 3E09C 801C7014 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 3E0A0 801C7018 00000000 */  nop
    /* 3E0A4 801C701C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 3E0A8 801C7020 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 3E0AC 801C7024 5CA022AC */  sw         $v0, %lo(D_801DA05C)($at)
    /* 3E0B0 801C7028 851E0708 */  j          .L801C7A14
    /* 3E0B4 801C702C 00000000 */   nop
  jlabel .L801C7030
    /* 3E0B8 801C7030 02000424 */  addiu      $a0, $zero, 0x2
    /* 3E0BC 801C7034 2F22070C */  jal        func_801C88BC
    /* 3E0C0 801C7038 01000524 */   addiu     $a1, $zero, 0x1
    /* 3E0C4 801C703C 1E80033C */  lui        $v1, %hi(D_801DADBA)
    /* 3E0C8 801C7040 BAAD6390 */  lbu        $v1, %lo(D_801DADBA)($v1)
    /* 3E0CC 801C7044 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 3E0D0 801C7048 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 3E0D4 801C704C 00000000 */  nop
    /* 3E0D8 801C7050 2A104300 */  slt        $v0, $v0, $v1
    /* 3E0DC 801C7054 0B004010 */  beqz       $v0, .L801C7084
    /* 3E0E0 801C7058 00000000 */   nop
    /* 3E0E4 801C705C 88AD020C */  jal        func_800AB620
    /* 3E0E8 801C7060 28050424 */   addiu     $a0, $zero, 0x528
    /* 3E0EC 801C7064 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 3E0F0 801C7068 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 3E0F4 801C706C 00000000 */  nop
    /* 3E0F8 801C7070 01004224 */  addiu      $v0, $v0, 0x1
    /* 3E0FC 801C7074 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 3E100 801C7078 5CA022AC */  sw         $v0, %lo(D_801DA05C)($at)
    /* 3E104 801C707C 851E0708 */  j          .L801C7A14
    /* 3E108 801C7080 00000000 */   nop
  .L801C7084:
    /* 3E10C 801C7084 88AD020C */  jal        func_800AB620
    /* 3E110 801C7088 12050424 */   addiu     $a0, $zero, 0x512
    /* 3E114 801C708C 851E0708 */  j          .L801C7A14
    /* 3E118 801C7090 00000000 */   nop
  jlabel .L801C7094
    /* 3E11C 801C7094 88AD020C */  jal        func_800AB620
    /* 3E120 801C7098 28050424 */   addiu     $a0, $zero, 0x528
    /* 3E124 801C709C 08000624 */  addiu      $a2, $zero, 0x8
    /* 3E128 801C70A0 1E80023C */  lui        $v0, %hi(D_801DA308)
    /* 3E12C 801C70A4 08A34224 */  addiu      $v0, $v0, %lo(D_801DA308)
  .L801C70A8:
    /* 3E130 801C70A8 000040A0 */  sb         $zero, 0x0($v0)
    /* 3E134 801C70AC FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 3E138 801C70B0 FDFFC104 */  bgez       $a2, .L801C70A8
    /* 3E13C 801C70B4 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 3E140 801C70B8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3E144 801C70BC 21086102 */  addu       $at, $s3, $at
    /* 3E148 801C70C0 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 3E14C 801C70C4 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 3E150 801C70C8 5CA020AC */  sw         $zero, %lo(D_801DA05C)($at)
    /* 3E154 801C70CC 1E80013C */  lui        $at, %hi(D_801DADCA)
    /* 3E158 801C70D0 CAAD20A0 */  sb         $zero, %lo(D_801DADCA)($at)
    /* 3E15C 801C70D4 1E80013C */  lui        $at, %hi(D_801DADBA)
    /* 3E160 801C70D8 BAAD20A0 */  sb         $zero, %lo(D_801DADBA)($at)
    /* 3E164 801C70DC 8A1E0708 */  j          .L801C7A28
    /* 3E168 801C70E0 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801C70E4
    /* 3E16C 801C70E4 88AD020C */  jal        func_800AB620
    /* 3E170 801C70E8 29050424 */   addiu     $a0, $zero, 0x529
    /* 3E174 801C70EC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3E178 801C70F0 21086102 */  addu       $at, $s3, $at
    /* 3E17C 801C70F4 DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 3E180 801C70F8 01000224 */  addiu      $v0, $zero, 0x1
    /* 3E184 801C70FC 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 3E188 801C7100 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
    /* 3E18C 801C7104 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 3E190 801C7108 58A020AC */  sw         $zero, %lo(D_801DA058)($at)
    /* 3E194 801C710C 01006324 */  addiu      $v1, $v1, 0x1
    /* 3E198 801C7110 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3E19C 801C7114 21086102 */  addu       $at, $s3, $at
    /* 3E1A0 801C7118 DAAB23A0 */  sb         $v1, -0x5426($at)
    /* 3E1A4 801C711C 981E0708 */  j          .L801C7A60
    /* 3E1A8 801C7120 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801C7124
    /* 3E1AC 801C7124 1E80023C */  lui        $v0, %hi(D_801DADBA)
    /* 3E1B0 801C7128 BAAD4290 */  lbu        $v0, %lo(D_801DADBA)($v0)
    /* 3E1B4 801C712C 00000000 */  nop
    /* 3E1B8 801C7130 47014010 */  beqz       $v0, .L801C7650
    /* 3E1BC 801C7134 00000000 */   nop
    /* 3E1C0 801C7138 88AD020C */  jal        func_800AB620
    /* 3E1C4 801C713C 28050424 */   addiu     $a0, $zero, 0x528
    /* 3E1C8 801C7140 07000624 */  addiu      $a2, $zero, 0x7
    /* 3E1CC 801C7144 EA8A0434 */  ori        $a0, $zero, 0x8AEA
    /* 3E1D0 801C7148 1E80023C */  lui        $v0, %hi(D_801DA330)
    /* 3E1D4 801C714C 30A34290 */  lbu        $v0, %lo(D_801DA330)($v0)
    /* 3E1D8 801C7150 1E80053C */  lui        $a1, %hi(D_801D8B15)
    /* 3E1DC 801C7154 158BA590 */  lbu        $a1, %lo(D_801D8B15)($a1)
    /* 3E1E0 801C7158 40180200 */  sll        $v1, $v0, 1
    /* 3E1E4 801C715C 21186200 */  addu       $v1, $v1, $v0
    /* 3E1E8 801C7160 80180300 */  sll        $v1, $v1, 2
    /* 3E1EC 801C7164 23186200 */  subu       $v1, $v1, $v0
    /* 3E1F0 801C7168 40100300 */  sll        $v0, $v1, 1
    /* 3E1F4 801C716C 21105300 */  addu       $v0, $v0, $s3
    /* 3E1F8 801C7170 21104400 */  addu       $v0, $v0, $a0
    /* 3E1FC 801C7174 21104500 */  addu       $v0, $v0, $a1
    /* 3E200 801C7178 00190300 */  sll        $v1, $v1, 4
    /* 3E204 801C717C 00004290 */  lbu        $v0, 0x0($v0)
    /* 3E208 801C7180 0D80043C */  lui        $a0, %hi(D_800C8568)
    /* 3E20C 801C7184 68858424 */  addiu      $a0, $a0, %lo(D_800C8568)
    /* 3E210 801C7188 C0100200 */  sll        $v0, $v0, 3
    /* 3E214 801C718C 21104400 */  addu       $v0, $v0, $a0
    /* 3E218 801C7190 21186200 */  addu       $v1, $v1, $v0
    /* 3E21C 801C7194 07006224 */  addiu      $v0, $v1, 0x7
  .L801C7198:
    /* 3E220 801C7198 000040A0 */  sb         $zero, 0x0($v0)
    /* 3E224 801C719C FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 3E228 801C71A0 FDFFC104 */  bgez       $a2, .L801C7198
    /* 3E22C 801C71A4 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 3E230 801C71A8 1E80023C */  lui        $v0, %hi(D_801DA300)
    /* 3E234 801C71AC 00A34290 */  lbu        $v0, %lo(D_801DA300)($v0)
    /* 3E238 801C71B0 00000000 */  nop
    /* 3E23C 801C71B4 0A004010 */  beqz       $v0, .L801C71E0
    /* 3E240 801C71B8 00000000 */   nop
    /* 3E244 801C71BC 1E80043C */  lui        $a0, %hi(D_801DA300)
    /* 3E248 801C71C0 00A38424 */  addiu      $a0, $a0, %lo(D_801DA300)
  .L801C71C4:
    /* 3E24C 801C71C4 00008290 */  lbu        $v0, 0x0($a0)
    /* 3E250 801C71C8 01008424 */  addiu      $a0, $a0, 0x1
    /* 3E254 801C71CC 000062A0 */  sb         $v0, 0x0($v1)
    /* 3E258 801C71D0 00008290 */  lbu        $v0, 0x0($a0)
    /* 3E25C 801C71D4 00000000 */  nop
    /* 3E260 801C71D8 FAFF4014 */  bnez       $v0, .L801C71C4
    /* 3E264 801C71DC 01006324 */   addiu     $v1, $v1, 0x1
  .L801C71E0:
    /* 3E268 801C71E0 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 3E26C 801C71E4 58A020AC */  sw         $zero, %lo(D_801DA058)($at)
    /* 3E270 801C71E8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3E274 801C71EC 21086102 */  addu       $at, $s3, $at
    /* 3E278 801C71F0 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 3E27C 801C71F4 02000324 */  addiu      $v1, $zero, 0x2
    /* 3E280 801C71F8 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 3E284 801C71FC 50AE23A0 */  sb         $v1, %lo(D_801DAE50)($at)
    /* 3E288 801C7200 8A1E0708 */  j          .L801C7A28
    /* 3E28C 801C7204 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801C7208
    /* 3E290 801C7208 88AD020C */  jal        func_800AB620
    /* 3E294 801C720C 28050424 */   addiu     $a0, $zero, 0x528
    /* 3E298 801C7210 1E80023C */  lui        $v0, %hi(D_801DA5C8)
    /* 3E29C 801C7214 C8A54290 */  lbu        $v0, %lo(D_801DA5C8)($v0)
    /* 3E2A0 801C7218 01000324 */  addiu      $v1, $zero, 0x1
    /* 3E2A4 801C721C 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 3E2A8 801C7220 50AE20A0 */  sb         $zero, %lo(D_801DAE50)($at)
    /* 3E2AC 801C7224 01004238 */  xori       $v0, $v0, 0x1
    /* 3E2B0 801C7228 1E80013C */  lui        $at, %hi(D_801DA5C8)
    /* 3E2B4 801C722C C8A522A0 */  sb         $v0, %lo(D_801DA5C8)($at)
    /* 3E2B8 801C7230 02004314 */  bne        $v0, $v1, .L801C723C
    /* 3E2BC 801C7234 0D000224 */   addiu     $v0, $zero, 0xD
    /* 3E2C0 801C7238 0B000224 */  addiu      $v0, $zero, 0xB
  .L801C723C:
    /* 3E2C4 801C723C 1E80013C */  lui        $at, %hi(D_801D8DFD)
    /* 3E2C8 801C7240 FD8D22A0 */  sb         $v0, %lo(D_801D8DFD)($at)
    /* 3E2CC 801C7244 851E0708 */  j          .L801C7A14
    /* 3E2D0 801C7248 00000000 */   nop
  jlabel .L801C724C
    /* 3E2D4 801C724C 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 3E2D8 801C7250 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 3E2DC 801C7254 00000000 */  nop
    /* 3E2E0 801C7258 49004010 */  beqz       $v0, .L801C7380
    /* 3E2E4 801C725C 00000000 */   nop
    /* 3E2E8 801C7260 88AD020C */  jal        func_800AB620
    /* 3E2EC 801C7264 29050424 */   addiu     $a0, $zero, 0x529
    /* 3E2F0 801C7268 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 3E2F4 801C726C 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 3E2F8 801C7270 1E80013C */  lui        $at, %hi(D_801DA2FF)
    /* 3E2FC 801C7274 21082200 */  addu       $at, $at, $v0
    /* 3E300 801C7278 FFA23490 */  lbu        $s4, %lo(D_801DA2FF)($at)
    /* 3E304 801C727C 00000000 */  nop
    /* 3E308 801C7280 7A008226 */  addiu      $v0, $s4, 0x7A
    /* 3E30C 801C7284 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E310 801C7288 1A00422C */  sltiu      $v0, $v0, 0x1A
    /* 3E314 801C728C 09004010 */  beqz       $v0, .L801C72B4
    /* 3E318 801C7290 5A008226 */   addiu     $v0, $s4, 0x5A
    /* 3E31C 801C7294 1E80023C */  lui        $v0, %hi(D_801DADCA)
    /* 3E320 801C7298 CAAD4290 */  lbu        $v0, %lo(D_801DADCA)($v0)
    /* 3E324 801C729C 00000000 */  nop
    /* 3E328 801C72A0 F6FF4224 */  addiu      $v0, $v0, -0xA
    /* 3E32C 801C72A4 1E80013C */  lui        $at, %hi(D_801DADCA)
    /* 3E330 801C72A8 CAAD22A0 */  sb         $v0, %lo(D_801DADCA)($at)
    /* 3E334 801C72AC C41C0708 */  j          .L801C7310
    /* 3E338 801C72B0 00000000 */   nop
  .L801C72B4:
    /* 3E33C 801C72B4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E340 801C72B8 3800422C */  sltiu      $v0, $v0, 0x38
    /* 3E344 801C72BC 09004010 */  beqz       $v0, .L801C72E4
    /* 3E348 801C72C0 FF008232 */   andi      $v0, $s4, 0xFF
    /* 3E34C 801C72C4 1E80023C */  lui        $v0, %hi(D_801DADCA)
    /* 3E350 801C72C8 CAAD4290 */  lbu        $v0, %lo(D_801DADCA)($v0)
    /* 3E354 801C72CC 00000000 */  nop
    /* 3E358 801C72D0 F8FF4224 */  addiu      $v0, $v0, -0x8
    /* 3E35C 801C72D4 1E80013C */  lui        $at, %hi(D_801DADCA)
    /* 3E360 801C72D8 CAAD22A0 */  sb         $v0, %lo(D_801DADCA)($at)
    /* 3E364 801C72DC C41C0708 */  j          .L801C7310
    /* 3E368 801C72E0 00000000 */   nop
  .L801C72E4:
    /* 3E36C 801C72E4 E0FF4224 */  addiu      $v0, $v0, -0x20
    /* 3E370 801C72E8 40100200 */  sll        $v0, $v0, 1
    /* 3E374 801C72EC 1E80033C */  lui        $v1, %hi(D_801DADCA)
    /* 3E378 801C72F0 CAAD6390 */  lbu        $v1, %lo(D_801DADCA)($v1)
    /* 3E37C 801C72F4 1D80013C */  lui        $at, %hi(D_801D1BF9)
    /* 3E380 801C72F8 21082200 */  addu       $at, $at, $v0
    /* 3E384 801C72FC F91B2290 */  lbu        $v0, %lo(D_801D1BF9)($at)
    /* 3E388 801C7300 00000000 */  nop
    /* 3E38C 801C7304 23186200 */  subu       $v1, $v1, $v0
    /* 3E390 801C7308 1E80013C */  lui        $at, %hi(D_801DADCA)
    /* 3E394 801C730C CAAD23A0 */  sb         $v1, %lo(D_801DADCA)($at)
  .L801C7310:
    /* 3E398 801C7310 1E80023C */  lui        $v0, %hi(D_801DADBA)
    /* 3E39C 801C7314 BAAD4290 */  lbu        $v0, %lo(D_801DADBA)($v0)
    /* 3E3A0 801C7318 1E80063C */  lui        $a2, %hi(D_801DA05C)
    /* 3E3A4 801C731C 5CA0C68C */  lw         $a2, %lo(D_801DA05C)($a2)
    /* 3E3A8 801C7320 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 3E3AC 801C7324 1E80013C */  lui        $at, %hi(D_801DADBA)
    /* 3E3B0 801C7328 BAAD22A0 */  sb         $v0, %lo(D_801DADBA)($at)
    /* 3E3B4 801C732C 0A00C228 */  slti       $v0, $a2, 0xA
    /* 3E3B8 801C7330 0B004010 */  beqz       $v0, .L801C7360
    /* 3E3BC 801C7334 00000000 */   nop
  .L801C7338:
    /* 3E3C0 801C7338 1E80013C */  lui        $at, %hi(D_801DA300)
    /* 3E3C4 801C733C 21082600 */  addu       $at, $at, $a2
    /* 3E3C8 801C7340 00A32290 */  lbu        $v0, %lo(D_801DA300)($at)
    /* 3E3CC 801C7344 1E80013C */  lui        $at, %hi(D_801DA2FF)
    /* 3E3D0 801C7348 21082600 */  addu       $at, $at, $a2
    /* 3E3D4 801C734C FFA222A0 */  sb         $v0, %lo(D_801DA2FF)($at)
    /* 3E3D8 801C7350 0100C624 */  addiu      $a2, $a2, 0x1
    /* 3E3DC 801C7354 0A00C228 */  slti       $v0, $a2, 0xA
    /* 3E3E0 801C7358 F7FF4014 */  bnez       $v0, .L801C7338
    /* 3E3E4 801C735C 00000000 */   nop
  .L801C7360:
    /* 3E3E8 801C7360 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 3E3EC 801C7364 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 3E3F0 801C7368 00000000 */  nop
    /* 3E3F4 801C736C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 3E3F8 801C7370 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 3E3FC 801C7374 5CA022AC */  sw         $v0, %lo(D_801DA05C)($at)
    /* 3E400 801C7378 981E0708 */  j          .L801C7A60
    /* 3E404 801C737C 21100000 */   addu      $v0, $zero, $zero
  .L801C7380:
    /* 3E408 801C7380 1E80033C */  lui        $v1, %hi(D_801DA300)
    /* 3E40C 801C7384 00A36324 */  addiu      $v1, $v1, %lo(D_801DA300)
    /* 3E410 801C7388 00006290 */  lbu        $v0, 0x0($v1)
    /* 3E414 801C738C 1E80013C */  lui        $at, %hi(D_801DADCA)
    /* 3E418 801C7390 CAAD20A0 */  sb         $zero, %lo(D_801DADCA)($at)
    /* 3E41C 801C7394 1E80013C */  lui        $at, %hi(D_801DADBA)
    /* 3E420 801C7398 BAAD20A0 */  sb         $zero, %lo(D_801DADBA)($at)
    /* 3E424 801C739C 08004010 */  beqz       $v0, .L801C73C0
    /* 3E428 801C73A0 07000624 */   addiu     $a2, $zero, 0x7
    /* 3E42C 801C73A4 07006224 */  addiu      $v0, $v1, 0x7
  .L801C73A8:
    /* 3E430 801C73A8 000040A0 */  sb         $zero, 0x0($v0)
    /* 3E434 801C73AC FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 3E438 801C73B0 FDFFC104 */  bgez       $a2, .L801C73A8
    /* 3E43C 801C73B4 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 3E440 801C73B8 981E0708 */  j          .L801C7A60
    /* 3E444 801C73BC 21100000 */   addu      $v0, $zero, $zero
  .L801C73C0:
    /* 3E448 801C73C0 21300000 */  addu       $a2, $zero, $zero
    /* 3E44C 801C73C4 0D80073C */  lui        $a3, %hi(D_800C8568)
    /* 3E450 801C73C8 6885E724 */  addiu      $a3, $a3, %lo(D_800C8568)
  .L801C73CC:
    /* 3E454 801C73CC 1E80033C */  lui        $v1, %hi(D_801DA330)
    /* 3E458 801C73D0 30A36390 */  lbu        $v1, %lo(D_801DA330)($v1)
    /* 3E45C 801C73D4 1E80043C */  lui        $a0, %hi(D_801D8B15)
    /* 3E460 801C73D8 158B8490 */  lbu        $a0, %lo(D_801D8B15)($a0)
    /* 3E464 801C73DC 40100300 */  sll        $v0, $v1, 1
    /* 3E468 801C73E0 21104300 */  addu       $v0, $v0, $v1
    /* 3E46C 801C73E4 80100200 */  sll        $v0, $v0, 2
    /* 3E470 801C73E8 23104300 */  subu       $v0, $v0, $v1
    /* 3E474 801C73EC 00290200 */  sll        $a1, $v0, 4
    /* 3E478 801C73F0 40100200 */  sll        $v0, $v0, 1
    /* 3E47C 801C73F4 21105300 */  addu       $v0, $v0, $s3
    /* 3E480 801C73F8 EA8A0334 */  ori        $v1, $zero, 0x8AEA
    /* 3E484 801C73FC 21104300 */  addu       $v0, $v0, $v1
    /* 3E488 801C7400 21104400 */  addu       $v0, $v0, $a0
    /* 3E48C 801C7404 00004290 */  lbu        $v0, 0x0($v0)
    /* 3E490 801C7408 2128A700 */  addu       $a1, $a1, $a3
    /* 3E494 801C740C C0100200 */  sll        $v0, $v0, 3
    /* 3E498 801C7410 21104500 */  addu       $v0, $v0, $a1
    /* 3E49C 801C7414 21104600 */  addu       $v0, $v0, $a2
    /* 3E4A0 801C7418 00005090 */  lbu        $s0, 0x0($v0)
    /* 3E4A4 801C741C 00000000 */  nop
    /* 3E4A8 801C7420 FF000332 */  andi       $v1, $s0, 0xFF
    /* 3E4AC 801C7424 1E80013C */  lui        $at, %hi(D_801DA300)
    /* 3E4B0 801C7428 21082600 */  addu       $at, $at, $a2
    /* 3E4B4 801C742C 00A330A0 */  sb         $s0, %lo(D_801DA300)($at)
    /* 3E4B8 801C7430 31006010 */  beqz       $v1, .L801C74F8
    /* 3E4BC 801C7434 7A000226 */   addiu     $v0, $s0, 0x7A
    /* 3E4C0 801C7438 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E4C4 801C743C 1A00422C */  sltiu      $v0, $v0, 0x1A
    /* 3E4C8 801C7440 09004010 */  beqz       $v0, .L801C7468
    /* 3E4CC 801C7444 60000226 */   addiu     $v0, $s0, 0x60
    /* 3E4D0 801C7448 1E80023C */  lui        $v0, %hi(D_801DADCA)
    /* 3E4D4 801C744C CAAD4290 */  lbu        $v0, %lo(D_801DADCA)($v0)
    /* 3E4D8 801C7450 00000000 */  nop
    /* 3E4DC 801C7454 0A004224 */  addiu      $v0, $v0, 0xA
    /* 3E4E0 801C7458 1E80013C */  lui        $at, %hi(D_801DADCA)
    /* 3E4E4 801C745C CAAD22A0 */  sb         $v0, %lo(D_801DADCA)($at)
    /* 3E4E8 801C7460 311D0708 */  j          .L801C74C4
    /* 3E4EC 801C7464 0100C624 */   addiu     $a2, $a2, 0x1
  .L801C7468:
    /* 3E4F0 801C7468 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E4F4 801C746C 4000422C */  sltiu      $v0, $v0, 0x40
    /* 3E4F8 801C7470 09004010 */  beqz       $v0, .L801C7498
    /* 3E4FC 801C7474 E0FF6224 */   addiu     $v0, $v1, -0x20
    /* 3E500 801C7478 1E80023C */  lui        $v0, %hi(D_801DADCA)
    /* 3E504 801C747C CAAD4290 */  lbu        $v0, %lo(D_801DADCA)($v0)
    /* 3E508 801C7480 00000000 */  nop
    /* 3E50C 801C7484 08004224 */  addiu      $v0, $v0, 0x8
    /* 3E510 801C7488 1E80013C */  lui        $at, %hi(D_801DADCA)
    /* 3E514 801C748C CAAD22A0 */  sb         $v0, %lo(D_801DADCA)($at)
    /* 3E518 801C7490 311D0708 */  j          .L801C74C4
    /* 3E51C 801C7494 0100C624 */   addiu     $a2, $a2, 0x1
  .L801C7498:
    /* 3E520 801C7498 40100200 */  sll        $v0, $v0, 1
    /* 3E524 801C749C 1E80033C */  lui        $v1, %hi(D_801DADCA)
    /* 3E528 801C74A0 CAAD6390 */  lbu        $v1, %lo(D_801DADCA)($v1)
    /* 3E52C 801C74A4 1D80013C */  lui        $at, %hi(D_801D1BF9)
    /* 3E530 801C74A8 21082200 */  addu       $at, $at, $v0
    /* 3E534 801C74AC F91B2290 */  lbu        $v0, %lo(D_801D1BF9)($at)
    /* 3E538 801C74B0 00000000 */  nop
    /* 3E53C 801C74B4 21186200 */  addu       $v1, $v1, $v0
    /* 3E540 801C74B8 1E80013C */  lui        $at, %hi(D_801DADCA)
    /* 3E544 801C74BC CAAD23A0 */  sb         $v1, %lo(D_801DADCA)($at)
    /* 3E548 801C74C0 0100C624 */  addiu      $a2, $a2, 0x1
  .L801C74C4:
    /* 3E54C 801C74C4 1E80023C */  lui        $v0, %hi(D_801DADBA)
    /* 3E550 801C74C8 BAAD4290 */  lbu        $v0, %lo(D_801DADBA)($v0)
    /* 3E554 801C74CC 1E80033C */  lui        $v1, %hi(D_801DA05C)
    /* 3E558 801C74D0 5CA0638C */  lw         $v1, %lo(D_801DA05C)($v1)
    /* 3E55C 801C74D4 01004224 */  addiu      $v0, $v0, 0x1
    /* 3E560 801C74D8 01006324 */  addiu      $v1, $v1, 0x1
    /* 3E564 801C74DC 1E80013C */  lui        $at, %hi(D_801DADBA)
    /* 3E568 801C74E0 BAAD22A0 */  sb         $v0, %lo(D_801DADBA)($at)
    /* 3E56C 801C74E4 0800C228 */  slti       $v0, $a2, 0x8
    /* 3E570 801C74E8 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 3E574 801C74EC 5CA023AC */  sw         $v1, %lo(D_801DA05C)($at)
    /* 3E578 801C74F0 B6FF4014 */  bnez       $v0, .L801C73CC
    /* 3E57C 801C74F4 00000000 */   nop
  .L801C74F8:
    /* 3E580 801C74F8 1E80013C */  lui        $at, %hi(D_801DA300)
    /* 3E584 801C74FC 21082600 */  addu       $at, $at, $a2
    /* 3E588 801C7500 00A320A0 */  sb         $zero, %lo(D_801DA300)($at)
    /* 3E58C 801C7504 981E0708 */  j          .L801C7A60
    /* 3E590 801C7508 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801C750C
    /* 3E594 801C750C FF000332 */  andi       $v1, $s0, 0xFF
    /* 3E598 801C7510 02000224 */  addiu      $v0, $zero, 0x2
    /* 3E59C 801C7514 52016214 */  bne        $v1, $v0, .L801C7A60
    /* 3E5A0 801C7518 21100000 */   addu      $v0, $zero, $zero
    /* 3E5A4 801C751C 01000424 */  addiu      $a0, $zero, 0x1
    /* 3E5A8 801C7520 7A008226 */  addiu      $v0, $s4, 0x7A
    /* 3E5AC 801C7524 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E5B0 801C7528 1A00422C */  sltiu      $v0, $v0, 0x1A
    /* 3E5B4 801C752C 03004010 */  beqz       $v0, .L801C753C
    /* 3E5B8 801C7530 01000624 */   addiu     $a2, $zero, 0x1
    /* 3E5BC 801C7534 841D0708 */  j          .L801C7610
    /* 3E5C0 801C7538 0A001224 */   addiu     $s2, $zero, 0xA
  .L801C753C:
    /* 3E5C4 801C753C 5A008226 */  addiu      $v0, $s4, 0x5A
    /* 3E5C8 801C7540 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E5CC 801C7544 3800422C */  sltiu      $v0, $v0, 0x38
    /* 3E5D0 801C7548 31004014 */  bnez       $v0, .L801C7610
    /* 3E5D4 801C754C 08001224 */   addiu     $s2, $zero, 0x8
    /* 3E5D8 801C7550 22008226 */  addiu      $v0, $s4, 0x22
    /* 3E5DC 801C7554 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E5E0 801C7558 0200422C */  sltiu      $v0, $v0, 0x2
    /* 3E5E4 801C755C 26004010 */  beqz       $v0, .L801C75F8
    /* 3E5E8 801C7560 00010224 */   addiu     $v0, $zero, 0x100
    /* 3E5EC 801C7564 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 3E5F0 801C7568 A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 3E5F4 801C756C 00000000 */  nop
    /* 3E5F8 801C7570 1F006214 */  bne        $v1, $v0, .L801C75F0
    /* 3E5FC 801C7574 21200000 */   addu      $a0, $zero, $zero
    /* 3E600 801C7578 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 3E604 801C757C 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 3E608 801C7580 1E80013C */  lui        $at, %hi(D_801DA2FF)
    /* 3E60C 801C7584 21082200 */  addu       $at, $at, $v0
    /* 3E610 801C7588 FFA23090 */  lbu        $s0, %lo(D_801DA2FF)($at)
    /* 3E614 801C758C B3000224 */  addiu      $v0, $zero, 0xB3
    /* 3E618 801C7590 FF000332 */  andi       $v1, $s0, 0xFF
    /* 3E61C 801C7594 16006210 */  beq        $v1, $v0, .L801C75F0
    /* 3E620 801C7598 4A000226 */   addiu     $v0, $s0, 0x4A
    /* 3E624 801C759C FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E628 801C75A0 0F00422C */  sltiu      $v0, $v0, 0xF
    /* 3E62C 801C75A4 1A004014 */  bnez       $v0, .L801C7610
    /* 3E630 801C75A8 02001224 */   addiu     $s2, $zero, 0x2
    /* 3E634 801C75AC 36000226 */  addiu      $v0, $s0, 0x36
    /* 3E638 801C75B0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E63C 801C75B4 0500422C */  sltiu      $v0, $v0, 0x5
    /* 3E640 801C75B8 15004014 */  bnez       $v0, .L801C7610
    /* 3E644 801C75BC 6B000226 */   addiu     $v0, $s0, 0x6B
    /* 3E648 801C75C0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E64C 801C75C4 0500422C */  sltiu      $v0, $v0, 0x5
    /* 3E650 801C75C8 11004014 */  bnez       $v0, .L801C7610
    /* 3E654 801C75CC 21900000 */   addu      $s2, $zero, $zero
    /* 3E658 801C75D0 7A000226 */  addiu      $v0, $s0, 0x7A
    /* 3E65C 801C75D4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E660 801C75D8 1A00422C */  sltiu      $v0, $v0, 0x1A
    /* 3E664 801C75DC 0C004014 */  bnez       $v0, .L801C7610
    /* 3E668 801C75E0 FEFF1224 */   addiu     $s2, $zero, -0x2
    /* 3E66C 801C75E4 21900000 */  addu       $s2, $zero, $zero
    /* 3E670 801C75E8 841D0708 */  j          .L801C7610
    /* 3E674 801C75EC 21300000 */   addu      $a2, $zero, $zero
  .L801C75F0:
    /* 3E678 801C75F0 841D0708 */  j          .L801C7610
    /* 3E67C 801C75F4 02001224 */   addiu     $s2, $zero, 0x2
  .L801C75F8:
    /* 3E680 801C75F8 FF008232 */  andi       $v0, $s4, 0xFF
    /* 3E684 801C75FC E0FF4224 */  addiu      $v0, $v0, -0x20
    /* 3E688 801C7600 40100200 */  sll        $v0, $v0, 1
    /* 3E68C 801C7604 1D80013C */  lui        $at, %hi(D_801D1BF9)
    /* 3E690 801C7608 21082200 */  addu       $at, $at, $v0
    /* 3E694 801C760C F91B3290 */  lbu        $s2, %lo(D_801D1BF9)($at)
  .L801C7610:
    /* 3E698 801C7610 0F00C010 */  beqz       $a2, .L801C7650
    /* 3E69C 801C7614 00000000 */   nop
    /* 3E6A0 801C7618 1E80023C */  lui        $v0, %hi(D_801DADCA)
    /* 3E6A4 801C761C CAAD4290 */  lbu        $v0, %lo(D_801DADCA)($v0)
    /* 3E6A8 801C7620 00000000 */  nop
    /* 3E6AC 801C7624 21105200 */  addu       $v0, $v0, $s2
    /* 3E6B0 801C7628 41004228 */  slti       $v0, $v0, 0x41
    /* 3E6B4 801C762C 08004010 */  beqz       $v0, .L801C7650
    /* 3E6B8 801C7630 00000000 */   nop
    /* 3E6BC 801C7634 1E80023C */  lui        $v0, %hi(D_801DADBA)
    /* 3E6C0 801C7638 BAAD4290 */  lbu        $v0, %lo(D_801DADBA)($v0)
    /* 3E6C4 801C763C 00000000 */  nop
    /* 3E6C8 801C7640 21104400 */  addu       $v0, $v0, $a0
    /* 3E6CC 801C7644 09004228 */  slti       $v0, $v0, 0x9
    /* 3E6D0 801C7648 05004014 */  bnez       $v0, .L801C7660
    /* 3E6D4 801C764C 00000000 */   nop
  .L801C7650:
    /* 3E6D8 801C7650 88AD020C */  jal        func_800AB620
    /* 3E6DC 801C7654 12050424 */   addiu     $a0, $zero, 0x512
    /* 3E6E0 801C7658 981E0708 */  j          .L801C7A60
    /* 3E6E4 801C765C 21100000 */   addu      $v0, $zero, $zero
  .L801C7660:
    /* 3E6E8 801C7660 88AD020C */  jal        func_800AB620
    /* 3E6EC 801C7664 28050424 */   addiu     $a0, $zero, 0x528
    /* 3E6F0 801C7668 09000624 */  addiu      $a2, $zero, 0x9
    /* 3E6F4 801C766C 1E80023C */  lui        $v0, %hi(D_801DA341)
    /* 3E6F8 801C7670 41A34224 */  addiu      $v0, $v0, %lo(D_801DA341)
  .L801C7674:
    /* 3E6FC 801C7674 000040A0 */  sb         $zero, 0x0($v0)
    /* 3E700 801C7678 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 3E704 801C767C FDFFC104 */  bgez       $a2, .L801C7674
    /* 3E708 801C7680 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 3E70C 801C7684 1E80063C */  lui        $a2, %hi(D_801DA05C)
    /* 3E710 801C7688 5CA0C68C */  lw         $a2, %lo(D_801DA05C)($a2)
    /* 3E714 801C768C 00000000 */  nop
    /* 3E718 801C7690 A500C010 */  beqz       $a2, .L801C7928
    /* 3E71C 801C7694 22008226 */   addiu     $v0, $s4, 0x22
    /* 3E720 801C7698 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E724 801C769C 0200422C */  sltiu      $v0, $v0, 0x2
    /* 3E728 801C76A0 8A004010 */  beqz       $v0, .L801C78CC
    /* 3E72C 801C76A4 00000000 */   nop
    /* 3E730 801C76A8 1E80133C */  lui        $s3, %hi(D_801DA338)
    /* 3E734 801C76AC 38A37326 */  addiu      $s3, $s3, %lo(D_801DA338)
    /* 3E738 801C76B0 21206002 */  addu       $a0, $s3, $zero
    /* 3E73C 801C76B4 1E80113C */  lui        $s1, %hi(D_801DA2FF)
    /* 3E740 801C76B8 FFA23126 */  addiu      $s1, $s1, %lo(D_801DA2FF)
    /* 3E744 801C76BC 1E80013C */  lui        $at, %hi(D_801DA2FF)
    /* 3E748 801C76C0 21082600 */  addu       $at, $at, $a2
    /* 3E74C 801C76C4 FFA23090 */  lbu        $s0, %lo(D_801DA2FF)($at)
    /* 3E750 801C76C8 86B5020C */  jal        func_800AD618
    /* 3E754 801C76CC 01002526 */   addiu     $a1, $s1, 0x1
    /* 3E758 801C76D0 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 3E75C 801C76D4 A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 3E760 801C76D8 00010224 */  addiu      $v0, $zero, 0x100
    /* 3E764 801C76DC 44006214 */  bne        $v1, $v0, .L801C77F0
    /* 3E768 801C76E0 4A000226 */   addiu     $v0, $s0, 0x4A
    /* 3E76C 801C76E4 1E80043C */  lui        $a0, %hi(D_801DA05C)
    /* 3E770 801C76E8 5CA0848C */  lw         $a0, %lo(D_801DA05C)($a0)
    /* 3E774 801C76EC 00000000 */  nop
    /* 3E778 801C76F0 21109100 */  addu       $v0, $a0, $s1
    /* 3E77C 801C76F4 00005090 */  lbu        $s0, 0x0($v0)
    /* 3E780 801C76F8 00000000 */  nop
    /* 3E784 801C76FC 4A000226 */  addiu      $v0, $s0, 0x4A
    /* 3E788 801C7700 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E78C 801C7704 0F00422C */  sltiu      $v0, $v0, 0xF
    /* 3E790 801C7708 07004010 */  beqz       $v0, .L801C7728
    /* 3E794 801C770C FFFF6326 */   addiu     $v1, $s3, -0x1
    /* 3E798 801C7710 21188300 */  addu       $v1, $a0, $v1
    /* 3E79C 801C7714 00006290 */  lbu        $v0, 0x0($v1)
    /* 3E7A0 801C7718 00000000 */  nop
    /* 3E7A4 801C771C D0FF4224 */  addiu      $v0, $v0, -0x30
    /* 3E7A8 801C7720 5E1E0708 */  j          .L801C7978
    /* 3E7AC 801C7724 000062A0 */   sb        $v0, 0x0($v1)
  .L801C7728:
    /* 3E7B0 801C7728 7A000226 */  addiu      $v0, $s0, 0x7A
    /* 3E7B4 801C772C FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E7B8 801C7730 0F00422C */  sltiu      $v0, $v0, 0xF
    /* 3E7BC 801C7734 1A004014 */  bnez       $v0, .L801C77A0
    /* 3E7C0 801C7738 36000226 */   addiu     $v0, $s0, 0x36
    /* 3E7C4 801C773C FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E7C8 801C7740 0500422C */  sltiu      $v0, $v0, 0x5
    /* 3E7CC 801C7744 06004010 */  beqz       $v0, .L801C7760
    /* 3E7D0 801C7748 21188300 */   addu      $v1, $a0, $v1
    /* 3E7D4 801C774C 00006290 */  lbu        $v0, 0x0($v1)
    /* 3E7D8 801C7750 00000000 */  nop
    /* 3E7DC 801C7754 CBFF4224 */  addiu      $v0, $v0, -0x35
    /* 3E7E0 801C7758 5E1E0708 */  j          .L801C7978
    /* 3E7E4 801C775C 000062A0 */   sb        $v0, 0x0($v1)
  .L801C7760:
    /* 3E7E8 801C7760 6B000226 */  addiu      $v0, $s0, 0x6B
    /* 3E7EC 801C7764 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E7F0 801C7768 0500422C */  sltiu      $v0, $v0, 0x5
    /* 3E7F4 801C776C 07004010 */  beqz       $v0, .L801C778C
    /* 3E7F8 801C7770 FFFF6326 */   addiu     $v1, $s3, -0x1
    /* 3E7FC 801C7774 21188300 */  addu       $v1, $a0, $v1
    /* 3E800 801C7778 00006290 */  lbu        $v0, 0x0($v1)
    /* 3E804 801C777C 00000000 */  nop
    /* 3E808 801C7780 05004224 */  addiu      $v0, $v0, 0x5
    /* 3E80C 801C7784 5E1E0708 */  j          .L801C7978
    /* 3E810 801C7788 000062A0 */   sb        $v0, 0x0($v1)
  .L801C778C:
    /* 3E814 801C778C 66000226 */  addiu      $v0, $s0, 0x66
    /* 3E818 801C7790 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E81C 801C7794 0500422C */  sltiu      $v0, $v0, 0x5
    /* 3E820 801C7798 07004010 */  beqz       $v0, .L801C77B8
    /* 3E824 801C779C 9F000224 */   addiu     $v0, $zero, 0x9F
  .L801C77A0:
    /* 3E828 801C77A0 21188300 */  addu       $v1, $a0, $v1
    /* 3E82C 801C77A4 00006290 */  lbu        $v0, 0x0($v1)
    /* 3E830 801C77A8 00000000 */  nop
    /* 3E834 801C77AC 30004224 */  addiu      $v0, $v0, 0x30
    /* 3E838 801C77B0 5E1E0708 */  j          .L801C7978
    /* 3E83C 801C77B4 000062A0 */   sb        $v0, 0x0($v1)
  .L801C77B8:
    /* 3E840 801C77B8 FF000332 */  andi       $v1, $s0, 0xFF
    /* 3E844 801C77BC 06006214 */  bne        $v1, $v0, .L801C77D8
    /* 3E848 801C77C0 B3000224 */   addiu     $v0, $zero, 0xB3
    /* 3E84C 801C77C4 FFFF6226 */  addiu      $v0, $s3, -0x1
    /* 3E850 801C77C8 21108200 */  addu       $v0, $a0, $v0
    /* 3E854 801C77CC B3000324 */  addiu      $v1, $zero, 0xB3
    /* 3E858 801C77D0 5E1E0708 */  j          .L801C7978
    /* 3E85C 801C77D4 000043A0 */   sb        $v1, 0x0($v0)
  .L801C77D8:
    /* 3E860 801C77D8 67006214 */  bne        $v1, $v0, .L801C7978
    /* 3E864 801C77DC FFFF6226 */   addiu     $v0, $s3, -0x1
    /* 3E868 801C77E0 21108200 */  addu       $v0, $a0, $v0
    /* 3E86C 801C77E4 9F000324 */  addiu      $v1, $zero, 0x9F
    /* 3E870 801C77E8 5E1E0708 */  j          .L801C7978
    /* 3E874 801C77EC 000043A0 */   sb        $v1, 0x0($v0)
  .L801C77F0:
    /* 3E878 801C77F0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E87C 801C77F4 0F00422C */  sltiu      $v0, $v0, 0xF
    /* 3E880 801C77F8 0B004010 */  beqz       $v0, .L801C7828
    /* 3E884 801C77FC FF008332 */   andi      $v1, $s4, 0xFF
    /* 3E888 801C7800 DE000224 */  addiu      $v0, $zero, 0xDE
    /* 3E88C 801C7804 09006214 */  bne        $v1, $v0, .L801C782C
    /* 3E890 801C7808 36000226 */   addiu     $v0, $s0, 0x36
    /* 3E894 801C780C 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 3E898 801C7810 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 3E89C 801C7814 FFFF6326 */  addiu      $v1, $s3, -0x1
    /* 3E8A0 801C7818 21104300 */  addu       $v0, $v0, $v1
    /* 3E8A4 801C781C D0000326 */  addiu      $v1, $s0, 0xD0
    /* 3E8A8 801C7820 5E1E0708 */  j          .L801C7978
    /* 3E8AC 801C7824 000043A0 */   sb        $v1, 0x0($v0)
  .L801C7828:
    /* 3E8B0 801C7828 36000226 */  addiu      $v0, $s0, 0x36
  .L801C782C:
    /* 3E8B4 801C782C FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E8B8 801C7830 0500422C */  sltiu      $v0, $v0, 0x5
    /* 3E8BC 801C7834 13004010 */  beqz       $v0, .L801C7884
    /* 3E8C0 801C7838 FF008332 */   andi      $v1, $s4, 0xFF
    /* 3E8C4 801C783C DE000224 */  addiu      $v0, $zero, 0xDE
    /* 3E8C8 801C7840 09006214 */  bne        $v1, $v0, .L801C7868
    /* 3E8CC 801C7844 D0000226 */   addiu     $v0, $s0, 0xD0
    /* 3E8D0 801C7848 1E80033C */  lui        $v1, %hi(D_801DA05C)
    /* 3E8D4 801C784C 5CA0638C */  lw         $v1, %lo(D_801DA05C)($v1)
    /* 3E8D8 801C7850 CB000226 */  addiu      $v0, $s0, 0xCB
    /* 3E8DC 801C7854 1E80013C */  lui        $at, %hi(D_801DA337)
    /* 3E8E0 801C7858 21082300 */  addu       $at, $at, $v1
    /* 3E8E4 801C785C 37A322A0 */  sb         $v0, %lo(D_801DA337)($at)
    /* 3E8E8 801C7860 5E1E0708 */  j          .L801C7978
    /* 3E8EC 801C7864 00000000 */   nop
  .L801C7868:
    /* 3E8F0 801C7868 1E80033C */  lui        $v1, %hi(D_801DA05C)
    /* 3E8F4 801C786C 5CA0638C */  lw         $v1, %lo(D_801DA05C)($v1)
    /* 3E8F8 801C7870 1E80013C */  lui        $at, %hi(D_801DA337)
    /* 3E8FC 801C7874 21082300 */  addu       $at, $at, $v1
    /* 3E900 801C7878 37A322A0 */  sb         $v0, %lo(D_801DA337)($at)
    /* 3E904 801C787C 5E1E0708 */  j          .L801C7978
    /* 3E908 801C7880 00000000 */   nop
  .L801C7884:
    /* 3E90C 801C7884 FF000332 */  andi       $v1, $s0, 0xFF
    /* 3E910 801C7888 B3000224 */  addiu      $v0, $zero, 0xB3
    /* 3E914 801C788C 0B006214 */  bne        $v1, $v0, .L801C78BC
    /* 3E918 801C7890 FF008332 */   andi      $v1, $s4, 0xFF
    /* 3E91C 801C7894 DE000224 */  addiu      $v0, $zero, 0xDE
    /* 3E920 801C7898 08006214 */  bne        $v1, $v0, .L801C78BC
    /* 3E924 801C789C 9F000224 */   addiu     $v0, $zero, 0x9F
    /* 3E928 801C78A0 1E80033C */  lui        $v1, %hi(D_801DA05C)
    /* 3E92C 801C78A4 5CA0638C */  lw         $v1, %lo(D_801DA05C)($v1)
    /* 3E930 801C78A8 1E80013C */  lui        $at, %hi(D_801DA337)
    /* 3E934 801C78AC 21082300 */  addu       $at, $at, $v1
    /* 3E938 801C78B0 37A322A0 */  sb         $v0, %lo(D_801DA337)($at)
    /* 3E93C 801C78B4 5E1E0708 */  j          .L801C7978
    /* 3E940 801C78B8 00000000 */   nop
  .L801C78BC:
    /* 3E944 801C78BC 88AD020C */  jal        func_800AB620
    /* 3E948 801C78C0 12050424 */   addiu     $a0, $zero, 0x512
    /* 3E94C 801C78C4 5E1E0708 */  j          .L801C7978
    /* 3E950 801C78C8 21900000 */   addu      $s2, $zero, $zero
  .L801C78CC:
    /* 3E954 801C78CC 1E80103C */  lui        $s0, %hi(D_801DA338)
    /* 3E958 801C78D0 38A31026 */  addiu      $s0, $s0, %lo(D_801DA338)
    /* 3E95C 801C78D4 21200002 */  addu       $a0, $s0, $zero
    /* 3E960 801C78D8 1E80113C */  lui        $s1, %hi(D_801DA300)
    /* 3E964 801C78DC 00A33126 */  addiu      $s1, $s1, %lo(D_801DA300)
    /* 3E968 801C78E0 8AB5020C */  jal        func_800AD628
    /* 3E96C 801C78E4 21282002 */   addu      $a1, $s1, $zero
    /* 3E970 801C78E8 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 3E974 801C78EC 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 3E978 801C78F0 00000000 */  nop
    /* 3E97C 801C78F4 21105000 */  addu       $v0, $v0, $s0
    /* 3E980 801C78F8 01001026 */  addiu      $s0, $s0, 0x1
    /* 3E984 801C78FC 000054A0 */  sb         $s4, 0x0($v0)
    /* 3E988 801C7900 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 3E98C 801C7904 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 3E990 801C7908 1E80063C */  lui        $a2, %hi(D_801DADBA)
    /* 3E994 801C790C BAADC690 */  lbu        $a2, %lo(D_801DADBA)($a2)
    /* 3E998 801C7910 21205000 */  addu       $a0, $v0, $s0
    /* 3E99C 801C7914 21285100 */  addu       $a1, $v0, $s1
    /* 3E9A0 801C7918 8AB5020C */  jal        func_800AD628
    /* 3E9A4 801C791C 2330C200 */   subu      $a2, $a2, $v0
    /* 3E9A8 801C7920 5E1E0708 */  j          .L801C7978
    /* 3E9AC 801C7924 00000000 */   nop
  .L801C7928:
    /* 3E9B0 801C7928 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E9B4 801C792C 0200422C */  sltiu      $v0, $v0, 0x2
    /* 3E9B8 801C7930 0B004010 */  beqz       $v0, .L801C7960
    /* 3E9BC 801C7934 00000000 */   nop
    /* 3E9C0 801C7938 1E80043C */  lui        $a0, %hi(D_801DA338)
    /* 3E9C4 801C793C 38A38424 */  addiu      $a0, $a0, %lo(D_801DA338)
    /* 3E9C8 801C7940 1E80053C */  lui        $a1, %hi(D_801DA300)
    /* 3E9CC 801C7944 00A3A524 */  addiu      $a1, $a1, %lo(D_801DA300)
    /* 3E9D0 801C7948 86B5020C */  jal        func_800AD618
    /* 3E9D4 801C794C 00000000 */   nop
    /* 3E9D8 801C7950 88AD020C */  jal        func_800AB620
    /* 3E9DC 801C7954 12050424 */   addiu     $a0, $zero, 0x512
    /* 3E9E0 801C7958 5E1E0708 */  j          .L801C7978
    /* 3E9E4 801C795C 00000000 */   nop
  .L801C7960:
    /* 3E9E8 801C7960 1E80043C */  lui        $a0, %hi(D_801DA338)
    /* 3E9EC 801C7964 38A38424 */  addiu      $a0, $a0, %lo(D_801DA338)
    /* 3E9F0 801C7968 1E80053C */  lui        $a1, %hi(D_801DA300)
    /* 3E9F4 801C796C 00A3A524 */  addiu      $a1, $a1, %lo(D_801DA300)
    /* 3E9F8 801C7970 7EB5020C */  jal        func_800AD5F8
    /* 3E9FC 801C7974 000094A0 */   sb        $s4, 0x0($a0)
  .L801C7978:
    /* 3EA00 801C7978 1E80023C */  lui        $v0, %hi(D_801DA338)
    /* 3EA04 801C797C 38A34290 */  lbu        $v0, %lo(D_801DA338)($v0)
    /* 3EA08 801C7980 1E80013C */  lui        $at, %hi(D_801DA300)
    /* 3EA0C 801C7984 00A322A0 */  sb         $v0, %lo(D_801DA300)($at)
    /* 3EA10 801C7988 0B004010 */  beqz       $v0, .L801C79B8
    /* 3EA14 801C798C 21300000 */   addu      $a2, $zero, $zero
    /* 3EA18 801C7990 0100C624 */  addiu      $a2, $a2, 0x1
  .L801C7994:
    /* 3EA1C 801C7994 1E80013C */  lui        $at, %hi(D_801DA338)
    /* 3EA20 801C7998 21082600 */  addu       $at, $at, $a2
    /* 3EA24 801C799C 38A32290 */  lbu        $v0, %lo(D_801DA338)($at)
    /* 3EA28 801C79A0 1E80013C */  lui        $at, %hi(D_801DA300)
    /* 3EA2C 801C79A4 21082600 */  addu       $at, $at, $a2
    /* 3EA30 801C79A8 00A322A0 */  sb         $v0, %lo(D_801DA300)($at)
    /* 3EA34 801C79AC F9FF4014 */  bnez       $v0, .L801C7994
    /* 3EA38 801C79B0 0100C624 */   addiu     $a2, $a2, 0x1
    /* 3EA3C 801C79B4 FFFFC624 */  addiu      $a2, $a2, -0x1
  .L801C79B8:
    /* 3EA40 801C79B8 1E80023C */  lui        $v0, %hi(D_801DADCA)
    /* 3EA44 801C79BC CAAD4290 */  lbu        $v0, %lo(D_801DADCA)($v0)
    /* 3EA48 801C79C0 00000000 */  nop
    /* 3EA4C 801C79C4 21105200 */  addu       $v0, $v0, $s2
    /* 3EA50 801C79C8 1E80013C */  lui        $at, %hi(D_801DADCA)
    /* 3EA54 801C79CC CAAD22A0 */  sb         $v0, %lo(D_801DADCA)($at)
    /* 3EA58 801C79D0 22008226 */  addiu      $v0, $s4, 0x22
    /* 3EA5C 801C79D4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3EA60 801C79D8 0200422C */  sltiu      $v0, $v0, 0x2
    /* 3EA64 801C79DC 20004014 */  bnez       $v0, .L801C7A60
    /* 3EA68 801C79E0 21100000 */   addu      $v0, $zero, $zero
    /* 3EA6C 801C79E4 1E80023C */  lui        $v0, %hi(D_801DADBA)
    /* 3EA70 801C79E8 BAAD4290 */  lbu        $v0, %lo(D_801DADBA)($v0)
    /* 3EA74 801C79EC 1E80033C */  lui        $v1, %hi(D_801DA05C)
    /* 3EA78 801C79F0 5CA0638C */  lw         $v1, %lo(D_801DA05C)($v1)
    /* 3EA7C 801C79F4 01004224 */  addiu      $v0, $v0, 0x1
    /* 3EA80 801C79F8 01006324 */  addiu      $v1, $v1, 0x1
    /* 3EA84 801C79FC 1E80013C */  lui        $at, %hi(D_801DADBA)
    /* 3EA88 801C7A00 BAAD22A0 */  sb         $v0, %lo(D_801DADBA)($at)
    /* 3EA8C 801C7A04 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 3EA90 801C7A08 5CA023AC */  sw         $v1, %lo(D_801DA05C)($at)
    /* 3EA94 801C7A0C 981E0708 */  j          .L801C7A60
    /* 3EA98 801C7A10 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801C7A14
    /* 3EA9C 801C7A14 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3EAA0 801C7A18 21086102 */  addu       $at, $s3, $at
    /* 3EAA4 801C7A1C DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 3EAA8 801C7A20 00000000 */  nop
    /* 3EAAC 801C7A24 01004224 */  addiu      $v0, $v0, 0x1
  .L801C7A28:
    /* 3EAB0 801C7A28 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3EAB4 801C7A2C 21086102 */  addu       $at, $s3, $at
    /* 3EAB8 801C7A30 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 3EABC 801C7A34 981E0708 */  j          .L801C7A60
    /* 3EAC0 801C7A38 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801C7A3C
    /* 3EAC4 801C7A3C 1E80023C */  lui        $v0, %hi(D_801DAE50)
    /* 3EAC8 801C7A40 50AE4290 */  lbu        $v0, %lo(D_801DAE50)($v0)
    /* 3EACC 801C7A44 01000324 */  addiu      $v1, $zero, 0x1
    /* 3EAD0 801C7A48 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3EAD4 801C7A4C 21086102 */  addu       $at, $s3, $at
    /* 3EAD8 801C7A50 DAAB23A0 */  sb         $v1, -0x5426($at)
    /* 3EADC 801C7A54 981E0708 */  j          .L801C7A60
    /* 3EAE0 801C7A58 00000000 */   nop
  .L801C7A5C:
    /* 3EAE4 801C7A5C 21100000 */  addu       $v0, $zero, $zero
  .L801C7A60:
    /* 3EAE8 801C7A60 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* 3EAEC 801C7A64 4800B48F */  lw         $s4, 0x48($sp)
    /* 3EAF0 801C7A68 4400B38F */  lw         $s3, 0x44($sp)
    /* 3EAF4 801C7A6C 4000B28F */  lw         $s2, 0x40($sp)
    /* 3EAF8 801C7A70 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 3EAFC 801C7A74 3800B08F */  lw         $s0, 0x38($sp)
    /* 3EB00 801C7A78 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 3EB04 801C7A7C 0800E003 */  jr         $ra
    /* 3EB08 801C7A80 00000000 */   nop
endlabel func_801C6B34
