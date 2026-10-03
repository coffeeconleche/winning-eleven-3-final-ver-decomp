nonmatching func_8006DA9C, 0xAC

glabel func_8006DA9C
    /* 5E29C 8006DA9C 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 5E2A0 8006DAA0 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 5E2A4 8006DAA4 9903A390 */  lbu        $v1, 0x399($a1)
    /* 5E2A8 8006DAA8 A4034790 */  lbu        $a3, 0x3A4($v0)
    /* 5E2AC 8006DAAC C0190300 */  sll        $v1, $v1, 7
    /* 5E2B0 8006DAB0 23106700 */  subu       $v0, $v1, $a3
    /* 5E2B4 8006DAB4 FF004530 */  andi       $a1, $v0, 0xFF
    /* 5E2B8 8006DAB8 8100A22C */  sltiu      $v0, $a1, 0x81
    /* 5E2BC 8006DABC 08004014 */  bnez       $v0, .L8006DAE0
    /* 5E2C0 8006DAC0 801F083C */   lui       $t0, (0x1F800314 >> 16)
    /* 5E2C4 8006DAC4 2310E300 */  subu       $v0, $a3, $v1
    /* 5E2C8 8006DAC8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 5E2CC 8006DACC 19004228 */  slti       $v0, $v0, 0x19
    /* 5E2D0 8006DAD0 06004014 */  bnez       $v0, .L8006DAEC
    /* 5E2D4 8006DAD4 00000000 */   nop
    /* 5E2D8 8006DAD8 D0B60108 */  j          .L8006DB40
    /* 5E2DC 8006DADC 21100000 */   addu      $v0, $zero, $zero
  .L8006DAE0:
    /* 5E2E0 8006DAE0 1900A228 */  slti       $v0, $a1, 0x19
    /* 5E2E4 8006DAE4 15004010 */  beqz       $v0, .L8006DB3C
    /* 5E2E8 8006DAE8 00000000 */   nop
  .L8006DAEC:
    /* 5E2EC 8006DAEC 99038390 */  lbu        $v1, 0x399($a0)
    /* 5E2F0 8006DAF0 00000000 */  nop
    /* 5E2F4 8006DAF4 80100300 */  sll        $v0, $v1, 2
    /* 5E2F8 8006DAF8 21104800 */  addu       $v0, $v0, $t0
    /* 5E2FC 8006DAFC 1403428C */  lw         $v0, (0x1F800314 & 0xFFFF)($v0)
    /* 5E300 8006DB00 00000000 */  nop
    /* 5E304 8006DB04 00FC4424 */  addiu      $a0, $v0, -0x400
    /* 5E308 8006DB08 00140600 */  sll        $v0, $a2, 16
    /* 5E30C 8006DB0C 08006010 */  beqz       $v1, .L8006DB30
    /* 5E310 8006DB10 03140200 */   sra       $v0, $v0, 16
    /* 5E314 8006DB14 23200400 */  negu       $a0, $a0
    /* 5E318 8006DB18 23100200 */  negu       $v0, $v0
    /* 5E31C 8006DB1C 2A104400 */  slt        $v0, $v0, $a0
    /* 5E320 8006DB20 07004014 */  bnez       $v0, .L8006DB40
    /* 5E324 8006DB24 01000224 */   addiu     $v0, $zero, 0x1
    /* 5E328 8006DB28 D0B60108 */  j          .L8006DB40
    /* 5E32C 8006DB2C 21100000 */   addu      $v0, $zero, $zero
  .L8006DB30:
    /* 5E330 8006DB30 2A104400 */  slt        $v0, $v0, $a0
    /* 5E334 8006DB34 02004014 */  bnez       $v0, .L8006DB40
    /* 5E338 8006DB38 01000224 */   addiu     $v0, $zero, 0x1
  .L8006DB3C:
    /* 5E33C 8006DB3C 21100000 */  addu       $v0, $zero, $zero
  .L8006DB40:
    /* 5E340 8006DB40 0800E003 */  jr         $ra
    /* 5E344 8006DB44 00000000 */   nop
endlabel func_8006DA9C
