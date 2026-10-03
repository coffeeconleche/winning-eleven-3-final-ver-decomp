nonmatching func_80196A60, 0x238

glabel func_80196A60
    /* DAE8 80196A60 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* DAEC 80196A64 1800B2AF */  sw         $s2, 0x18($sp)
    /* DAF0 80196A68 21908000 */  addu       $s2, $a0, $zero
    /* DAF4 80196A6C 1000B0AF */  sw         $s0, 0x10($sp)
    /* DAF8 80196A70 2180A000 */  addu       $s0, $a1, $zero
    /* DAFC 80196A74 1400B1AF */  sw         $s1, 0x14($sp)
    /* DB00 80196A78 1D80113C */  lui        $s1, %hi(D_801D7FC8)
    /* DB04 80196A7C C87F3126 */  addiu      $s1, $s1, %lo(D_801D7FC8)
    /* DB08 80196A80 21202002 */  addu       $a0, $s1, $zero
    /* DB0C 80196A84 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* DB10 80196A88 2000BFAF */  sw         $ra, 0x20($sp)
    /* DB14 80196A8C 60B7020C */  jal        func_800ADD80
    /* DB18 80196A90 2198C000 */   addu      $s3, $a2, $zero
    /* DB1C 80196A94 03004012 */  beqz       $s2, .L80196AA4
    /* DB20 80196A98 21202002 */   addu      $a0, $s1, $zero
    /* DB24 80196A9C AA5A0608 */  j          .L80196AA8
    /* DB28 80196AA0 01000524 */   addiu     $a1, $zero, 0x1
  .L80196AA4:
    /* DB2C 80196AA4 21280000 */  addu       $a1, $zero, $zero
  .L80196AA8:
    /* DB30 80196AA8 2EB7020C */  jal        func_800ADCB8
    /* DB34 80196AAC 00000000 */   nop
    /* DB38 80196AB0 00000296 */  lhu        $v0, 0x0($s0)
    /* DB3C 80196AB4 1D80043C */  lui        $a0, %hi(D_801D7FD0)
    /* DB40 80196AB8 D07F8424 */  addiu      $a0, $a0, %lo(D_801D7FD0)
    /* DB44 80196ABC 000082A4 */  sh         $v0, 0x0($a0)
    /* DB48 80196AC0 02000296 */  lhu        $v0, 0x2($s0)
    /* DB4C 80196AC4 1D80013C */  lui        $at, %hi(D_801D7FD2)
    /* DB50 80196AC8 D27F22A4 */  sh         $v0, %lo(D_801D7FD2)($at)
    /* DB54 80196ACC 00000296 */  lhu        $v0, 0x0($s0)
    /* DB58 80196AD0 04000396 */  lhu        $v1, 0x4($s0)
    /* DB5C 80196AD4 00000000 */  nop
    /* DB60 80196AD8 21104300 */  addu       $v0, $v0, $v1
    /* DB64 80196ADC 1D80013C */  lui        $at, %hi(D_801D7FD8)
    /* DB68 80196AE0 D87F22A4 */  sh         $v0, %lo(D_801D7FD8)($at)
    /* DB6C 80196AE4 02000296 */  lhu        $v0, 0x2($s0)
    /* DB70 80196AE8 1D80013C */  lui        $at, %hi(D_801D7FDA)
    /* DB74 80196AEC DA7F22A4 */  sh         $v0, %lo(D_801D7FDA)($at)
    /* DB78 80196AF0 00000296 */  lhu        $v0, 0x0($s0)
    /* DB7C 80196AF4 1D80013C */  lui        $at, %hi(D_801D7FE0)
    /* DB80 80196AF8 E07F22A4 */  sh         $v0, %lo(D_801D7FE0)($at)
    /* DB84 80196AFC 02000296 */  lhu        $v0, 0x2($s0)
    /* DB88 80196B00 06000396 */  lhu        $v1, 0x6($s0)
    /* DB8C 80196B04 00000000 */  nop
    /* DB90 80196B08 21104300 */  addu       $v0, $v0, $v1
    /* DB94 80196B0C 1D80013C */  lui        $at, %hi(D_801D7FE2)
    /* DB98 80196B10 E27F22A4 */  sh         $v0, %lo(D_801D7FE2)($at)
    /* DB9C 80196B14 00000296 */  lhu        $v0, 0x0($s0)
    /* DBA0 80196B18 04000396 */  lhu        $v1, 0x4($s0)
    /* DBA4 80196B1C 00000000 */  nop
    /* DBA8 80196B20 21104300 */  addu       $v0, $v0, $v1
    /* DBAC 80196B24 1D80013C */  lui        $at, %hi(D_801D7FE8)
    /* DBB0 80196B28 E87F22A4 */  sh         $v0, %lo(D_801D7FE8)($at)
    /* DBB4 80196B2C 02000296 */  lhu        $v0, 0x2($s0)
    /* DBB8 80196B30 06000396 */  lhu        $v1, 0x6($s0)
    /* DBBC 80196B34 00000000 */  nop
    /* DBC0 80196B38 21104300 */  addu       $v0, $v0, $v1
    /* DBC4 80196B3C 1D80013C */  lui        $at, %hi(D_801D7FEA)
    /* DBC8 80196B40 EA7F22A4 */  sh         $v0, %lo(D_801D7FEA)($at)
    /* DBCC 80196B44 08000292 */  lbu        $v0, 0x8($s0)
    /* DBD0 80196B48 1D80013C */  lui        $at, %hi(D_801D7FCC)
    /* DBD4 80196B4C CC7F22A0 */  sb         $v0, %lo(D_801D7FCC)($at)
    /* DBD8 80196B50 09000292 */  lbu        $v0, 0x9($s0)
    /* DBDC 80196B54 1D80013C */  lui        $at, %hi(D_801D7FCD)
    /* DBE0 80196B58 CD7F22A0 */  sb         $v0, %lo(D_801D7FCD)($at)
    /* DBE4 80196B5C 0A000292 */  lbu        $v0, 0xA($s0)
    /* DBE8 80196B60 1D80013C */  lui        $at, %hi(D_801D7FCE)
    /* DBEC 80196B64 CE7F22A0 */  sb         $v0, %lo(D_801D7FCE)($at)
    /* DBF0 80196B68 0B000292 */  lbu        $v0, 0xB($s0)
    /* DBF4 80196B6C 1D80013C */  lui        $at, %hi(D_801D7FD4)
    /* DBF8 80196B70 D47F22A0 */  sb         $v0, %lo(D_801D7FD4)($at)
    /* DBFC 80196B74 0C000292 */  lbu        $v0, 0xC($s0)
    /* DC00 80196B78 1D80013C */  lui        $at, %hi(D_801D7FD5)
    /* DC04 80196B7C D57F22A0 */  sb         $v0, %lo(D_801D7FD5)($at)
    /* DC08 80196B80 0D000292 */  lbu        $v0, 0xD($s0)
    /* DC0C 80196B84 1D80013C */  lui        $at, %hi(D_801D7FD6)
    /* DC10 80196B88 D67F22A0 */  sb         $v0, %lo(D_801D7FD6)($at)
    /* DC14 80196B8C 0E000292 */  lbu        $v0, 0xE($s0)
    /* DC18 80196B90 1D80013C */  lui        $at, %hi(D_801D7FDC)
    /* DC1C 80196B94 DC7F22A0 */  sb         $v0, %lo(D_801D7FDC)($at)
    /* DC20 80196B98 0F000292 */  lbu        $v0, 0xF($s0)
    /* DC24 80196B9C FFFF6632 */  andi       $a2, $s3, 0xFFFF
    /* DC28 80196BA0 1D80013C */  lui        $at, %hi(D_801D7FDD)
    /* DC2C 80196BA4 DD7F22A0 */  sb         $v0, %lo(D_801D7FDD)($at)
    /* DC30 80196BA8 10000292 */  lbu        $v0, 0x10($s0)
    /* DC34 80196BAC 0F80113C */  lui        $s1, %hi(D_800F1018)
    /* DC38 80196BB0 18103126 */  addiu      $s1, $s1, %lo(D_800F1018)
    /* DC3C 80196BB4 1D80013C */  lui        $at, %hi(D_801D7FDE)
    /* DC40 80196BB8 DE7F22A0 */  sb         $v0, %lo(D_801D7FDE)($at)
    /* DC44 80196BBC 11000292 */  lbu        $v0, 0x11($s0)
    /* DC48 80196BC0 F8FF8424 */  addiu      $a0, $a0, -0x8
    /* DC4C 80196BC4 1D80013C */  lui        $at, %hi(D_801D7FE4)
    /* DC50 80196BC8 E47F22A0 */  sb         $v0, %lo(D_801D7FE4)($at)
    /* DC54 80196BCC 801F023C */  lui        $v0, (0x1F80029D >> 16)
    /* DC58 80196BD0 9D024290 */  lbu        $v0, (0x1F80029D & 0xFFFF)($v0)
    /* DC5C 80196BD4 12000392 */  lbu        $v1, 0x12($s0)
    /* DC60 80196BD8 80280200 */  sll        $a1, $v0, 2
    /* DC64 80196BDC 2128A200 */  addu       $a1, $a1, $v0
    /* DC68 80196BE0 80280500 */  sll        $a1, $a1, 2
    /* DC6C 80196BE4 1D80013C */  lui        $at, %hi(D_801D7FE5)
    /* DC70 80196BE8 E57F23A0 */  sb         $v1, %lo(D_801D7FE5)($at)
    /* DC74 80196BEC 13000292 */  lbu        $v0, 0x13($s0)
    /* DC78 80196BF0 1D80013C */  lui        $at, %hi(D_801D7FE6)
    /* DC7C 80196BF4 E67F22A0 */  sb         $v0, %lo(D_801D7FE6)($at)
    /* DC80 80196BF8 02CE020C */  jal        func_800B3808
    /* DC84 80196BFC 2128B100 */   addu      $a1, $a1, $s1
    /* DC88 80196C00 1D004012 */  beqz       $s2, .L80196C78
    /* DC8C 80196C04 801F043C */   lui       $a0, (0x1F800180 >> 16)
    /* DC90 80196C08 80018434 */  ori        $a0, $a0, (0x1F800180 & 0xFFFF)
    /* DC94 80196C0C FF006632 */  andi       $a2, $s3, 0xFF
    /* DC98 80196C10 80FE0224 */  addiu      $v0, $zero, -0x180
    /* DC9C 80196C14 801F073C */  lui        $a3, (0x1F80029D >> 16)
    /* DCA0 80196C18 9D02E790 */  lbu        $a3, (0x1F80029D & 0xFFFF)($a3)
    /* DCA4 80196C1C 88FF0324 */  addiu      $v1, $zero, -0x78
    /* DCA8 80196C20 801F013C */  lui        $at, (0x1F800184 >> 16)
    /* DCAC 80196C24 840122A4 */  sh         $v0, (0x1F800184 & 0xFFFF)($at)
    /* DCB0 80196C28 81FE0224 */  addiu      $v0, $zero, -0x17F
    /* DCB4 80196C2C 801F013C */  lui        $at, (0x1F800186 >> 16)
    /* DCB8 80196C30 860123A4 */  sh         $v1, (0x1F800186 & 0xFFFF)($at)
    /* DCBC 80196C34 801F013C */  lui        $at, (0x1F800188 >> 16)
    /* DCC0 80196C38 880122A4 */  sh         $v0, (0x1F800188 & 0xFFFF)($at)
    /* DCC4 80196C3C 801F013C */  lui        $at, (0x1F80018A >> 16)
    /* DCC8 80196C40 8A0123A4 */  sh         $v1, (0x1F80018A & 0xFFFF)($at)
    /* DCCC 80196C44 801F013C */  lui        $at, (0x1F800180 >> 16)
    /* DCD0 80196C48 800132AC */  sw         $s2, (0x1F800180 & 0xFFFF)($at)
    /* DCD4 80196C4C 801F013C */  lui        $at, (0x1F80018C >> 16)
    /* DCD8 80196C50 8C0120A0 */  sb         $zero, (0x1F80018C & 0xFFFF)($at)
    /* DCDC 80196C54 801F013C */  lui        $at, (0x1F80018D >> 16)
    /* DCE0 80196C58 8D0120A0 */  sb         $zero, (0x1F80018D & 0xFFFF)($at)
    /* DCE4 80196C5C 801F013C */  lui        $at, (0x1F80018E >> 16)
    /* DCE8 80196C60 8E0120A0 */  sb         $zero, (0x1F80018E & 0xFFFF)($at)
    /* DCEC 80196C64 80280700 */  sll        $a1, $a3, 2
    /* DCF0 80196C68 2128A700 */  addu       $a1, $a1, $a3
    /* DCF4 80196C6C 80280500 */  sll        $a1, $a1, 2
    /* DCF8 80196C70 26CD020C */  jal        func_800B3498
    /* DCFC 80196C74 2128B100 */   addu      $a1, $a1, $s1
  .L80196C78:
    /* DD00 80196C78 2000BF8F */  lw         $ra, 0x20($sp)
    /* DD04 80196C7C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* DD08 80196C80 1800B28F */  lw         $s2, 0x18($sp)
    /* DD0C 80196C84 1400B18F */  lw         $s1, 0x14($sp)
    /* DD10 80196C88 1000B08F */  lw         $s0, 0x10($sp)
    /* DD14 80196C8C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* DD18 80196C90 0800E003 */  jr         $ra
    /* DD1C 80196C94 00000000 */   nop
endlabel func_80196A60
