nonmatching func_8003D274, 0x274

glabel func_8003D274
    /* 2DA74 8003D274 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2DA78 8003D278 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2DA7C 8003D27C 21888000 */  addu       $s1, $a0, $zero
    /* 2DA80 8003D280 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2DA84 8003D284 2190A000 */  addu       $s2, $a1, $zero
    /* 2DA88 8003D288 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2DA8C 8003D28C 1080133C */  lui        $s3, %hi(D_800FF748)
    /* 2DA90 8003D290 48F77326 */  addiu      $s3, $s3, %lo(D_800FF748)
    /* 2DA94 8003D294 2800BFAF */  sw         $ra, 0x28($sp)
    /* 2DA98 8003D298 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2DA9C 8003D29C 8D032392 */  lbu        $v1, 0x38D($s1)
    /* 2DAA0 8003D2A0 801F023C */  lui        $v0, (0x1F8002A9 >> 16)
    /* 2DAA4 8003D2A4 A9024290 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($v0)
    /* 2DAA8 8003D2A8 00000000 */  nop
    /* 2DAAC 8003D2AC 0C006210 */  beq        $v1, $v0, .L8003D2E0
    /* 2DAB0 8003D2B0 801F103C */   lui       $s0, (0x1F8000F4 >> 16)
    /* 2DAB4 8003D2B4 801F023C */  lui        $v0, (0x1F8002FC >> 16)
    /* 2DAB8 8003D2B8 FC024290 */  lbu        $v0, (0x1F8002FC & 0xFFFF)($v0)
    /* 2DABC 8003D2BC 00000000 */  nop
    /* 2DAC0 8003D2C0 81004014 */  bnez       $v0, .L8003D4C8
    /* 2DAC4 8003D2C4 21100000 */   addu      $v0, $zero, $zero
    /* 2DAC8 8003D2C8 801F023C */  lui        $v0, (0x1F80031C >> 16)
    /* 2DACC 8003D2CC 1C034284 */  lh         $v0, (0x1F80031C & 0xFFFF)($v0)
    /* 2DAD0 8003D2D0 00000000 */  nop
    /* 2DAD4 8003D2D4 07004228 */  slti       $v0, $v0, 0x7
    /* 2DAD8 8003D2D8 7B004014 */  bnez       $v0, .L8003D4C8
    /* 2DADC 8003D2DC 21100000 */   addu      $v0, $zero, $zero
  .L8003D2E0:
    /* 2DAE0 8003D2E0 AC032292 */  lbu        $v0, 0x3AC($s1)
    /* 2DAE4 8003D2E4 8E032592 */  lbu        $a1, 0x38E($s1)
    /* 2DAE8 8003D2E8 90032692 */  lbu        $a2, 0x390($s1)
    /* 2DAEC 8003D2EC AA032792 */  lbu        $a3, 0x3AA($s1)
    /* 2DAF0 8003D2F0 21202002 */  addu       $a0, $s1, $zero
    /* 2DAF4 8003D2F4 AB70010C */  jal        func_8005C2AC
    /* 2DAF8 8003D2F8 1000A2AF */   sw        $v0, 0x10($sp)
    /* 2DAFC 8003D2FC FF004232 */  andi       $v0, $s2, 0xFF
    /* 2DB00 8003D300 0E004010 */  beqz       $v0, .L8003D33C
    /* 2DB04 8003D304 00000000 */   nop
    /* 2DB08 8003D308 F2000296 */  lhu        $v0, (0x1F8000F2 & 0xFFFF)($s0)
    /* 2DB0C 8003D30C 4E000396 */  lhu        $v1, (0x1F80004E & 0xFFFF)($s0)
    /* 2DB10 8003D310 00140200 */  sll        $v0, $v0, 16
    /* 2DB14 8003D314 03140200 */  sra        $v0, $v0, 16
    /* 2DB18 8003D318 001C0300 */  sll        $v1, $v1, 16
    /* 2DB1C 8003D31C 031C0300 */  sra        $v1, $v1, 16
    /* 2DB20 8003D320 23104300 */  subu       $v0, $v0, $v1
    /* 2DB24 8003D324 02004104 */  bgez       $v0, .L8003D330
    /* 2DB28 8003D328 00000000 */   nop
    /* 2DB2C 8003D32C 23100200 */  negu       $v0, $v0
  .L8003D330:
    /* 2DB30 8003D330 81004228 */  slti       $v0, $v0, 0x81
    /* 2DB34 8003D334 64004010 */  beqz       $v0, .L8003D4C8
    /* 2DB38 8003D338 21100000 */   addu      $v0, $zero, $zero
  .L8003D33C:
    /* 2DB3C 8003D33C F0000996 */  lhu        $t1, (0x1F8000F0 & 0xFFFF)($s0)
    /* 2DB40 8003D340 36000296 */  lhu        $v0, (0x1F800036 & 0xFFFF)($s0)
    /* 2DB44 8003D344 001C0900 */  sll        $v1, $t1, 16
    /* 2DB48 8003D348 031C0300 */  sra        $v1, $v1, 16
    /* 2DB4C 8003D34C 00140200 */  sll        $v0, $v0, 16
    /* 2DB50 8003D350 03140200 */  sra        $v0, $v0, 16
    /* 2DB54 8003D354 23186200 */  subu       $v1, $v1, $v0
    /* 2DB58 8003D358 18006300 */  mult       $v1, $v1
    /* 2DB5C 8003D35C F4000296 */  lhu        $v0, (0x1F8000F4 & 0xFFFF)($s0)
    /* 2DB60 8003D360 66000396 */  lhu        $v1, (0x1F800066 & 0xFFFF)($s0)
    /* 2DB64 8003D364 00140200 */  sll        $v0, $v0, 16
    /* 2DB68 8003D368 03140200 */  sra        $v0, $v0, 16
    /* 2DB6C 8003D36C 001C0300 */  sll        $v1, $v1, 16
    /* 2DB70 8003D370 12200000 */  mflo       $a0
    /* 2DB74 8003D374 031C0300 */  sra        $v1, $v1, 16
    /* 2DB78 8003D378 23104300 */  subu       $v0, $v0, $v1
    /* 2DB7C 8003D37C 18004200 */  mult       $v0, $v0
    /* 2DB80 8003D380 12180000 */  mflo       $v1
    /* 2DB84 8003D384 21108300 */  addu       $v0, $a0, $v1
    /* 2DB88 8003D388 0124422C */  sltiu      $v0, $v0, 0x2401
    /* 2DB8C 8003D38C 4D004010 */  beqz       $v0, .L8003D4C4
    /* 2DB90 8003D390 04000224 */   addiu     $v0, $zero, 0x4
    /* 2DB94 8003D394 F402078E */  lw         $a3, (0x1F8002F4 & 0xFFFF)($s0)
    /* 2DB98 8003D398 00000000 */  nop
    /* 2DB9C 8003D39C 9603E390 */  lbu        $v1, 0x396($a3)
    /* 2DBA0 8003D3A0 00000000 */  nop
    /* 2DBA4 8003D3A4 37006214 */  bne        $v1, $v0, .L8003D484
    /* 2DBA8 8003D3A8 00000000 */   nop
    /* 2DBAC 8003D3AC AA020392 */  lbu        $v1, (0x1F8002AA & 0xFFFF)($s0)
    /* 2DBB0 8003D3B0 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 2DBB4 8003D3B4 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 2DBB8 8003D3B8 FF006330 */  andi       $v1, $v1, 0xFF
    /* 2DBBC 8003D3BC 19006200 */  multu      $v1, $v0
    /* 2DBC0 8003D3C0 10500000 */  mfhi       $t2
    /* 2DBC4 8003D3C4 02210A00 */  srl        $a0, $t2, 4
    /* 2DBC8 8003D3C8 40100400 */  sll        $v0, $a0, 1
    /* 2DBCC 8003D3CC 21104400 */  addu       $v0, $v0, $a0
    /* 2DBD0 8003D3D0 C0100200 */  sll        $v0, $v0, 3
    /* 2DBD4 8003D3D4 23186200 */  subu       $v1, $v1, $v0
    /* 2DBD8 8003D3D8 FF006330 */  andi       $v1, $v1, 0xFF
    /* 2DBDC 8003D3DC 40110300 */  sll        $v0, $v1, 5
    /* 2DBE0 8003D3E0 23104300 */  subu       $v0, $v0, $v1
    /* 2DBE4 8003D3E4 80100200 */  sll        $v0, $v0, 2
    /* 2DBE8 8003D3E8 21104300 */  addu       $v0, $v0, $v1
    /* 2DBEC 8003D3EC C0100200 */  sll        $v0, $v0, 3
    /* 2DBF0 8003D3F0 21286202 */  addu       $a1, $s3, $v0
    /* 2DBF4 8003D3F4 8D03A390 */  lbu        $v1, 0x38D($a1)
    /* 2DBF8 8003D3F8 01000224 */  addiu      $v0, $zero, 0x1
    /* 2DBFC 8003D3FC 31006210 */  beq        $v1, $v0, .L8003D4C4
    /* 2DC00 8003D400 0C000224 */   addiu     $v0, $zero, 0xC
    /* 2DC04 8003D404 30006210 */  beq        $v1, $v0, .L8003D4C8
    /* 2DC08 8003D408 21100000 */   addu      $v0, $zero, $zero
    /* 2DC0C 8003D40C 40000496 */  lhu        $a0, (0x1F800040 & 0xFFFF)($s0)
    /* 2DC10 8003D410 02002286 */  lh         $v0, 0x2($s1)
    /* 2DC14 8003D414 00240400 */  sll        $a0, $a0, 16
    /* 2DC18 8003D418 03240400 */  sra        $a0, $a0, 16
    /* 2DC1C 8003D41C 23104400 */  subu       $v0, $v0, $a0
    /* 2DC20 8003D420 18004200 */  mult       $v0, $v0
    /* 2DC24 8003D424 70000396 */  lhu        $v1, (0x1F800070 & 0xFFFF)($s0)
    /* 2DC28 8003D428 00000000 */  nop
    /* 2DC2C 8003D42C 001C0300 */  sll        $v1, $v1, 16
    /* 2DC30 8003D430 06002286 */  lh         $v0, 0x6($s1)
    /* 2DC34 8003D434 12400000 */  mflo       $t0
    /* 2DC38 8003D438 031C0300 */  sra        $v1, $v1, 16
    /* 2DC3C 8003D43C 23104300 */  subu       $v0, $v0, $v1
    /* 2DC40 8003D440 18004200 */  mult       $v0, $v0
    /* 2DC44 8003D444 0200A284 */  lh         $v0, 0x2($a1)
    /* 2DC48 8003D448 12300000 */  mflo       $a2
    /* 2DC4C 8003D44C 23104400 */  subu       $v0, $v0, $a0
    /* 2DC50 8003D450 00000000 */  nop
    /* 2DC54 8003D454 18004200 */  mult       $v0, $v0
    /* 2DC58 8003D458 0600A284 */  lh         $v0, 0x6($a1)
    /* 2DC5C 8003D45C 12200000 */  mflo       $a0
    /* 2DC60 8003D460 23104300 */  subu       $v0, $v0, $v1
    /* 2DC64 8003D464 00000000 */  nop
    /* 2DC68 8003D468 18004200 */  mult       $v0, $v0
    /* 2DC6C 8003D46C 21180601 */  addu       $v1, $t0, $a2
    /* 2DC70 8003D470 12580000 */  mflo       $t3
    /* 2DC74 8003D474 21108B00 */  addu       $v0, $a0, $t3
    /* 2DC78 8003D478 2A104300 */  slt        $v0, $v0, $v1
    /* 2DC7C 8003D47C 12004010 */  beqz       $v0, .L8003D4C8
    /* 2DC80 8003D480 21100000 */   addu      $v0, $zero, $zero
  .L8003D484:
    /* 2DC84 8003D484 0200E9A4 */  sh         $t1, 0x2($a3)
    /* 2DC88 8003D488 F2000296 */  lhu        $v0, (0x1F8000F2 & 0xFFFF)($s0)
    /* 2DC8C 8003D48C 4E000396 */  lhu        $v1, (0x1F80004E & 0xFFFF)($s0)
    /* 2DC90 8003D490 00140200 */  sll        $v0, $v0, 16
    /* 2DC94 8003D494 03140200 */  sra        $v0, $v0, 16
    /* 2DC98 8003D498 001C0300 */  sll        $v1, $v1, 16
    /* 2DC9C 8003D49C 031C0300 */  sra        $v1, $v1, 16
    /* 2DCA0 8003D4A0 21104300 */  addu       $v0, $v0, $v1
    /* 2DCA4 8003D4A4 F402038E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s0)
    /* 2DCA8 8003D4A8 43100200 */  sra        $v0, $v0, 1
    /* 2DCAC 8003D4AC 040062A4 */  sh         $v0, 0x4($v1)
    /* 2DCB0 8003D4B0 F402048E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s0)
    /* 2DCB4 8003D4B4 F4000396 */  lhu        $v1, (0x1F8000F4 & 0xFFFF)($s0)
    /* 2DCB8 8003D4B8 01000224 */  addiu      $v0, $zero, 0x1
    /* 2DCBC 8003D4BC 32F50008 */  j          .L8003D4C8
    /* 2DCC0 8003D4C0 060083A4 */   sh        $v1, 0x6($a0)
  .L8003D4C4:
    /* 2DCC4 8003D4C4 21100000 */  addu       $v0, $zero, $zero
  .L8003D4C8:
    /* 2DCC8 8003D4C8 2800BF8F */  lw         $ra, 0x28($sp)
    /* 2DCCC 8003D4CC 2400B38F */  lw         $s3, 0x24($sp)
    /* 2DCD0 8003D4D0 2000B28F */  lw         $s2, 0x20($sp)
    /* 2DCD4 8003D4D4 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2DCD8 8003D4D8 1800B08F */  lw         $s0, 0x18($sp)
    /* 2DCDC 8003D4DC 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2DCE0 8003D4E0 0800E003 */  jr         $ra
    /* 2DCE4 8003D4E4 00000000 */   nop
endlabel func_8003D274
