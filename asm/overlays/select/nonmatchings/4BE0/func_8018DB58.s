nonmatching func_8018DB58, 0x324

glabel func_8018DB58
    /* 4BE0 8018DB58 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4BE4 8018DB5C 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* 4BE8 8018DB60 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* 4BEC 8018DB64 13000224 */  addiu      $v0, $zero, 0x13
    /* 4BF0 8018DB68 7F006210 */  beq        $v1, $v0, .L8018DD68
    /* 4BF4 8018DB6C 1000BFAF */   sw        $ra, 0x10($sp)
    /* 4BF8 8018DB70 14006228 */  slti       $v0, $v1, 0x14
    /* 4BFC 8018DB74 2A004010 */  beqz       $v0, .L8018DC20
    /* 4C00 8018DB78 05000224 */   addiu     $v0, $zero, 0x5
    /* 4C04 8018DB7C 5F006210 */  beq        $v1, $v0, .L8018DCFC
    /* 4C08 8018DB80 06006228 */   slti      $v0, $v1, 0x6
    /* 4C0C 8018DB84 12004010 */  beqz       $v0, .L8018DBD0
    /* 4C10 8018DB88 02000224 */   addiu     $v0, $zero, 0x2
    /* 4C14 8018DB8C 5B006210 */  beq        $v1, $v0, .L8018DCFC
    /* 4C18 8018DB90 03006228 */   slti      $v0, $v1, 0x3
    /* 4C1C 8018DB94 07004010 */  beqz       $v0, .L8018DBB4
    /* 4C20 8018DB98 00000000 */   nop
    /* 4C24 8018DB9C 4F006010 */  beqz       $v1, .L8018DCDC
    /* 4C28 8018DBA0 01000224 */   addiu     $v0, $zero, 0x1
    /* 4C2C 8018DBA4 51006210 */  beq        $v1, $v0, .L8018DCEC
    /* 4C30 8018DBA8 00000000 */   nop
    /* 4C34 8018DBAC 9B370608 */  j          .L8018DE6C
    /* 4C38 8018DBB0 00000000 */   nop
  .L8018DBB4:
    /* 4C3C 8018DBB4 03000224 */  addiu      $v0, $zero, 0x3
    /* 4C40 8018DBB8 54006210 */  beq        $v1, $v0, .L8018DD0C
    /* 4C44 8018DBBC 04000224 */   addiu     $v0, $zero, 0x4
    /* 4C48 8018DBC0 56006210 */  beq        $v1, $v0, .L8018DD1C
    /* 4C4C 8018DBC4 00000000 */   nop
    /* 4C50 8018DBC8 9B370608 */  j          .L8018DE6C
    /* 4C54 8018DBCC 00000000 */   nop
  .L8018DBD0:
    /* 4C58 8018DBD0 09000224 */  addiu      $v0, $zero, 0x9
    /* 4C5C 8018DBD4 84006210 */  beq        $v1, $v0, .L8018DDE8
    /* 4C60 8018DBD8 0A006228 */   slti      $v0, $v1, 0xA
    /* 4C64 8018DBDC 07004010 */  beqz       $v0, .L8018DBFC
    /* 4C68 8018DBE0 06000224 */   addiu     $v0, $zero, 0x6
    /* 4C6C 8018DBE4 51006210 */  beq        $v1, $v0, .L8018DD2C
    /* 4C70 8018DBE8 07000224 */   addiu     $v0, $zero, 0x7
    /* 4C74 8018DBEC 7E006210 */  beq        $v1, $v0, .L8018DDE8
    /* 4C78 8018DBF0 00000000 */   nop
    /* 4C7C 8018DBF4 9B370608 */  j          .L8018DE6C
    /* 4C80 8018DBF8 00000000 */   nop
  .L8018DBFC:
    /* 4C84 8018DBFC 11000224 */  addiu      $v0, $zero, 0x11
    /* 4C88 8018DC00 51006210 */  beq        $v1, $v0, .L8018DD48
    /* 4C8C 8018DC04 12006228 */   slti      $v0, $v1, 0x12
    /* 4C90 8018DC08 53004010 */  beqz       $v0, .L8018DD58
    /* 4C94 8018DC0C 10000224 */   addiu     $v0, $zero, 0x10
    /* 4C98 8018DC10 49006210 */  beq        $v1, $v0, .L8018DD38
    /* 4C9C 8018DC14 00000000 */   nop
    /* 4CA0 8018DC18 9B370608 */  j          .L8018DE6C
    /* 4CA4 8018DC1C 00000000 */   nop
  .L8018DC20:
    /* 4CA8 8018DC20 20000224 */  addiu      $v0, $zero, 0x20
    /* 4CAC 8018DC24 80006210 */  beq        $v1, $v0, .L8018DE28
    /* 4CB0 8018DC28 21006228 */   slti      $v0, $v1, 0x21
    /* 4CB4 8018DC2C 12004010 */  beqz       $v0, .L8018DC78
    /* 4CB8 8018DC30 16000224 */   addiu     $v0, $zero, 0x16
    /* 4CBC 8018DC34 58006210 */  beq        $v1, $v0, .L8018DD98
    /* 4CC0 8018DC38 17006228 */   slti      $v0, $v1, 0x17
    /* 4CC4 8018DC3C 07004010 */  beqz       $v0, .L8018DC5C
    /* 4CC8 8018DC40 14000224 */   addiu     $v0, $zero, 0x14
    /* 4CCC 8018DC44 4C006210 */  beq        $v1, $v0, .L8018DD78
    /* 4CD0 8018DC48 15000224 */   addiu     $v0, $zero, 0x15
    /* 4CD4 8018DC4C 4E006210 */  beq        $v1, $v0, .L8018DD88
    /* 4CD8 8018DC50 00000000 */   nop
    /* 4CDC 8018DC54 9B370608 */  j          .L8018DE6C
    /* 4CE0 8018DC58 00000000 */   nop
  .L8018DC5C:
    /* 4CE4 8018DC5C 17000224 */  addiu      $v0, $zero, 0x17
    /* 4CE8 8018DC60 51006210 */  beq        $v1, $v0, .L8018DDA8
    /* 4CEC 8018DC64 18000224 */   addiu     $v0, $zero, 0x18
    /* 4CF0 8018DC68 53006210 */  beq        $v1, $v0, .L8018DDB8
    /* 4CF4 8018DC6C 00000000 */   nop
    /* 4CF8 8018DC70 9B370608 */  j          .L8018DE6C
    /* 4CFC 8018DC74 00000000 */   nop
  .L8018DC78:
    /* 4D00 8018DC78 23000224 */  addiu      $v0, $zero, 0x23
    /* 4D04 8018DC7C 66006210 */  beq        $v1, $v0, .L8018DE18
    /* 4D08 8018DC80 24006228 */   slti      $v0, $v1, 0x24
    /* 4D0C 8018DC84 07004010 */  beqz       $v0, .L8018DCA4
    /* 4D10 8018DC88 21000224 */   addiu     $v0, $zero, 0x21
    /* 4D14 8018DC8C 5A006210 */  beq        $v1, $v0, .L8018DDF8
    /* 4D18 8018DC90 22000224 */   addiu     $v0, $zero, 0x22
    /* 4D1C 8018DC94 5C006210 */  beq        $v1, $v0, .L8018DE08
    /* 4D20 8018DC98 00000000 */   nop
    /* 4D24 8018DC9C 9B370608 */  j          .L8018DE6C
    /* 4D28 8018DCA0 00000000 */   nop
  .L8018DCA4:
    /* 4D2C 8018DCA4 31000224 */  addiu      $v0, $zero, 0x31
    /* 4D30 8018DCA8 4B006210 */  beq        $v1, $v0, .L8018DDD8
    /* 4D34 8018DCAC 32006228 */   slti      $v0, $v1, 0x32
    /* 4D38 8018DCB0 05004010 */  beqz       $v0, .L8018DCC8
    /* 4D3C 8018DCB4 30000224 */   addiu     $v0, $zero, 0x30
    /* 4D40 8018DCB8 43006210 */  beq        $v1, $v0, .L8018DDC8
    /* 4D44 8018DCBC 00000000 */   nop
    /* 4D48 8018DCC0 9B370608 */  j          .L8018DE6C
    /* 4D4C 8018DCC4 00000000 */   nop
  .L8018DCC8:
    /* 4D50 8018DCC8 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 4D54 8018DCCC 5A006210 */  beq        $v1, $v0, .L8018DE38
    /* 4D58 8018DCD0 00000000 */   nop
    /* 4D5C 8018DCD4 9B370608 */  j          .L8018DE6C
    /* 4D60 8018DCD8 00000000 */   nop
  .L8018DCDC:
    /* 4D64 8018DCDC 9F37060C */  jal        func_8018DE7C
    /* 4D68 8018DCE0 00000000 */   nop
    /* 4D6C 8018DCE4 9B370608 */  j          .L8018DE6C
    /* 4D70 8018DCE8 00000000 */   nop
  .L8018DCEC:
    /* 4D74 8018DCEC 0464060C */  jal        func_80199010
    /* 4D78 8018DCF0 00000000 */   nop
    /* 4D7C 8018DCF4 9B370608 */  j          .L8018DE6C
    /* 4D80 8018DCF8 00000000 */   nop
  .L8018DCFC:
    /* 4D84 8018DCFC 8F65060C */  jal        func_8019963C
    /* 4D88 8018DD00 00000000 */   nop
    /* 4D8C 8018DD04 9B370608 */  j          .L8018DE6C
    /* 4D90 8018DD08 00000000 */   nop
  .L8018DD0C:
    /* 4D94 8018DD0C FF68060C */  jal        func_8019A3FC
    /* 4D98 8018DD10 00000000 */   nop
    /* 4D9C 8018DD14 9B370608 */  j          .L8018DE6C
    /* 4DA0 8018DD18 00000000 */   nop
  .L8018DD1C:
    /* 4DA4 8018DD1C 4469060C */  jal        func_8019A510
    /* 4DA8 8018DD20 00000000 */   nop
    /* 4DAC 8018DD24 9B370608 */  j          .L8018DE6C
    /* 4DB0 8018DD28 00000000 */   nop
  .L8018DD2C:
    /* 4DB4 8018DD2C 10000224 */  addiu      $v0, $zero, 0x10
    /* 4DB8 8018DD30 801F013C */  lui        $at, (0x1F80029A >> 16)
    /* 4DBC 8018DD34 9A0222A0 */  sb         $v0, (0x1F80029A & 0xFFFF)($at)
  .L8018DD38:
    /* 4DC0 8018DD38 A50C070C */  jal        func_801C3294
    /* 4DC4 8018DD3C 00000000 */   nop
    /* 4DC8 8018DD40 9B370608 */  j          .L8018DE6C
    /* 4DCC 8018DD44 00000000 */   nop
  .L8018DD48:
    /* 4DD0 8018DD48 B818070C */  jal        func_801C62E0
    /* 4DD4 8018DD4C 00000000 */   nop
    /* 4DD8 8018DD50 9B370608 */  j          .L8018DE6C
    /* 4DDC 8018DD54 00000000 */   nop
  .L8018DD58:
    /* 4DE0 8018DD58 C93C060C */  jal        func_8018F324
    /* 4DE4 8018DD5C 00000000 */   nop
    /* 4DE8 8018DD60 9B370608 */  j          .L8018DE6C
    /* 4DEC 8018DD64 00000000 */   nop
  .L8018DD68:
    /* 4DF0 8018DD68 8032070C */  jal        func_801CCA00
    /* 4DF4 8018DD6C 00000000 */   nop
    /* 4DF8 8018DD70 9B370608 */  j          .L8018DE6C
    /* 4DFC 8018DD74 00000000 */   nop
  .L8018DD78:
    /* 4E00 8018DD78 4F30070C */  jal        func_801CC13C
    /* 4E04 8018DD7C 00000000 */   nop
    /* 4E08 8018DD80 9B370608 */  j          .L8018DE6C
    /* 4E0C 8018DD84 00000000 */   nop
  .L8018DD88:
    /* 4E10 8018DD88 DB27070C */  jal        func_801C9F6C
    /* 4E14 8018DD8C 00000000 */   nop
    /* 4E18 8018DD90 9B370608 */  j          .L8018DE6C
    /* 4E1C 8018DD94 00000000 */   nop
  .L8018DD98:
    /* 4E20 8018DD98 5C2D070C */  jal        func_801CB570
    /* 4E24 8018DD9C 00000000 */   nop
    /* 4E28 8018DDA0 9B370608 */  j          .L8018DE6C
    /* 4E2C 8018DDA4 00000000 */   nop
  .L8018DDA8:
    /* 4E30 8018DDA8 AE2E070C */  jal        func_801CBAB8
    /* 4E34 8018DDAC 00000000 */   nop
    /* 4E38 8018DDB0 9B370608 */  j          .L8018DE6C
    /* 4E3C 8018DDB4 00000000 */   nop
  .L8018DDB8:
    /* 4E40 8018DDB8 06E0040C */  jal        func_80138018
    /* 4E44 8018DDBC 00000000 */   nop
    /* 4E48 8018DDC0 9B370608 */  j          .L8018DE6C
    /* 4E4C 8018DDC4 00000000 */   nop
  .L8018DDC8:
    /* 4E50 8018DDC8 8F44070C */  jal        func_801D123C
    /* 4E54 8018DDCC 21200000 */   addu      $a0, $zero, $zero
    /* 4E58 8018DDD0 9B370608 */  j          .L8018DE6C
    /* 4E5C 8018DDD4 00000000 */   nop
  .L8018DDD8:
    /* 4E60 8018DDD8 8F44070C */  jal        func_801D123C
    /* 4E64 8018DDDC 01000424 */   addiu     $a0, $zero, 0x1
    /* 4E68 8018DDE0 9B370608 */  j          .L8018DE6C
    /* 4E6C 8018DDE4 00000000 */   nop
  .L8018DDE8:
    /* 4E70 8018DDE8 CC37060C */  jal        func_8018DF30
    /* 4E74 8018DDEC 00000000 */   nop
    /* 4E78 8018DDF0 9B370608 */  j          .L8018DE6C
    /* 4E7C 8018DDF4 00000000 */   nop
  .L8018DDF8:
    /* 4E80 8018DDF8 66C1060C */  jal        func_801B0598
    /* 4E84 8018DDFC 00000000 */   nop
    /* 4E88 8018DE00 9B370608 */  j          .L8018DE6C
    /* 4E8C 8018DE04 00000000 */   nop
  .L8018DE08:
    /* 4E90 8018DE08 91D5060C */  jal        func_801B5644
    /* 4E94 8018DE0C 00000000 */   nop
    /* 4E98 8018DE10 9B370608 */  j          .L8018DE6C
    /* 4E9C 8018DE14 00000000 */   nop
  .L8018DE18:
    /* 4EA0 8018DE18 65FF060C */  jal        func_801BFD94
    /* 4EA4 8018DE1C 00000000 */   nop
    /* 4EA8 8018DE20 9B370608 */  j          .L8018DE6C
    /* 4EAC 8018DE24 00000000 */   nop
  .L8018DE28:
    /* 4EB0 8018DE28 50EC060C */  jal        func_801BB140
    /* 4EB4 8018DE2C 00000000 */   nop
    /* 4EB8 8018DE30 9B370608 */  j          .L8018DE6C
    /* 4EBC 8018DE34 00000000 */   nop
  .L8018DE38:
    /* 4EC0 8018DE38 1180043C */  lui        $a0, %hi(D_8010A5B1)
    /* 4EC4 8018DE3C B1A58490 */  lbu        $a0, %lo(D_8010A5B1)($a0)
    /* 4EC8 8018DE40 00000000 */  nop
    /* 4ECC 8018DE44 82200400 */  srl        $a0, $a0, 2
    /* 4ED0 8018DE48 03008430 */  andi       $a0, $a0, 0x3
    /* 4ED4 8018DE4C D966000C */  jal        func_80019B64
    /* 4ED8 8018DE50 C7008424 */   addiu     $a0, $a0, 0xC7
    /* 4EDC 8018DE54 05004010 */  beqz       $v0, .L8018DE6C
    /* 4EE0 8018DE58 00000000 */   nop
    /* 4EE4 8018DE5C 4E39060C */  jal        func_8018E538
    /* 4EE8 8018DE60 21200000 */   addu      $a0, $zero, $zero
    /* 4EEC 8018DE64 715C000C */  jal        func_800171C4
    /* 4EF0 8018DE68 21200000 */   addu      $a0, $zero, $zero
  .L8018DE6C:
    /* 4EF4 8018DE6C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4EF8 8018DE70 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4EFC 8018DE74 0800E003 */  jr         $ra
    /* 4F00 8018DE78 00000000 */   nop
endlabel func_8018DB58
