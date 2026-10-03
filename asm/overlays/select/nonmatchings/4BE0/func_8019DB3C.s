nonmatching func_8019DB3C, 0x26C

glabel func_8019DB3C
    /* 14BC4 8019DB3C A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 14BC8 8019DB40 26000424 */  addiu      $a0, $zero, 0x26
    /* 14BCC 8019DB44 31000524 */  addiu      $a1, $zero, 0x31
    /* 14BD0 8019DB48 21300000 */  addu       $a2, $zero, $zero
    /* 14BD4 8019DB4C 5C00BFAF */  sw         $ra, 0x5C($sp)
    /* 14BD8 8019DB50 5800B4AF */  sw         $s4, 0x58($sp)
    /* 14BDC 8019DB54 5400B3AF */  sw         $s3, 0x54($sp)
    /* 14BE0 8019DB58 5000B2AF */  sw         $s2, 0x50($sp)
    /* 14BE4 8019DB5C 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 14BE8 8019DB60 2B39060C */  jal        func_8018E4AC
    /* 14BEC 8019DB64 4800B0AF */   sw        $s0, 0x48($sp)
    /* 14BF0 8019DB68 1E80043C */  lui        $a0, %hi(D_801DA2F4)
    /* 14BF4 8019DB6C F4A28490 */  lbu        $a0, %lo(D_801DA2F4)($a0)
    /* 14BF8 8019DB70 00000000 */  nop
    /* 14BFC 8019DB74 38308424 */  addiu      $a0, $a0, 0x3038
    /* 14C00 8019DB78 0174000C */  jal        func_8001D004
    /* 14C04 8019DB7C 21808000 */   addu      $s0, $a0, $zero
    /* 14C08 8019DB80 26000424 */  addiu      $a0, $zero, 0x26
    /* 14C0C 8019DB84 21280002 */  addu       $a1, $s0, $zero
    /* 14C10 8019DB88 21300000 */  addu       $a2, $zero, $zero
    /* 14C14 8019DB8C 1B001424 */  addiu      $s4, $zero, 0x1B
    /* 14C18 8019DB90 00101124 */  addiu      $s1, $zero, 0x1000
    /* 14C1C 8019DB94 80001024 */  addiu      $s0, $zero, 0x80
    /* 14C20 8019DB98 02001324 */  addiu      $s3, $zero, 0x2
    /* 14C24 8019DB9C 01001224 */  addiu      $s2, $zero, 0x1
    /* 14C28 8019DBA0 01004290 */  lbu        $v0, 0x1($v0)
    /* 14C2C 8019DBA4 98000724 */  addiu      $a3, $zero, 0x98
    /* 14C30 8019DBA8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 14C34 8019DBAC 1400B4AF */  sw         $s4, 0x14($sp)
    /* 14C38 8019DBB0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 14C3C 8019DBB4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 14C40 8019DBB8 2000B1AF */  sw         $s1, 0x20($sp)
    /* 14C44 8019DBBC 2400A0AF */  sw         $zero, 0x24($sp)
    /* 14C48 8019DBC0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 14C4C 8019DBC4 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 14C50 8019DBC8 3000B0AF */  sw         $s0, 0x30($sp)
    /* 14C54 8019DBCC 3400B0AF */  sw         $s0, 0x34($sp)
    /* 14C58 8019DBD0 3800A0AF */  sw         $zero, 0x38($sp)
    /* 14C5C 8019DBD4 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 14C60 8019DBD8 4000B2AF */  sw         $s2, 0x40($sp)
    /* 14C64 8019DBDC 2338E200 */  subu       $a3, $a3, $v0
    /* 14C68 8019DBE0 C2170700 */  srl        $v0, $a3, 31
    /* 14C6C 8019DBE4 2138E200 */  addu       $a3, $a3, $v0
    /* 14C70 8019DBE8 ED4F060C */  jal        func_80193FB4
    /* 14C74 8019DBEC 43380700 */   sra       $a3, $a3, 1
    /* 14C78 8019DBF0 27000424 */  addiu      $a0, $zero, 0x27
    /* 14C7C 8019DBF4 3F300524 */  addiu      $a1, $zero, 0x303F
    /* 14C80 8019DBF8 21300000 */  addu       $a2, $zero, $zero
    /* 14C84 8019DBFC 21380000 */  addu       $a3, $zero, $zero
    /* 14C88 8019DC00 1000A0AF */  sw         $zero, 0x10($sp)
    /* 14C8C 8019DC04 1400B4AF */  sw         $s4, 0x14($sp)
    /* 14C90 8019DC08 1800A0AF */  sw         $zero, 0x18($sp)
    /* 14C94 8019DC0C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 14C98 8019DC10 2000B1AF */  sw         $s1, 0x20($sp)
    /* 14C9C 8019DC14 2400A0AF */  sw         $zero, 0x24($sp)
    /* 14CA0 8019DC18 2800A0AF */  sw         $zero, 0x28($sp)
    /* 14CA4 8019DC1C 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 14CA8 8019DC20 3000B0AF */  sw         $s0, 0x30($sp)
    /* 14CAC 8019DC24 3400B0AF */  sw         $s0, 0x34($sp)
    /* 14CB0 8019DC28 3800A0AF */  sw         $zero, 0x38($sp)
    /* 14CB4 8019DC2C 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 14CB8 8019DC30 ED4F060C */  jal        func_80193FB4
    /* 14CBC 8019DC34 4000B2AF */   sw        $s2, 0x40($sp)
    /* 14CC0 8019DC38 28000424 */  addiu      $a0, $zero, 0x28
    /* 14CC4 8019DC3C 4D300524 */  addiu      $a1, $zero, 0x304D
    /* 14CC8 8019DC40 21300000 */  addu       $a2, $zero, $zero
    /* 14CCC 8019DC44 21380000 */  addu       $a3, $zero, $zero
    /* 14CD0 8019DC48 19000224 */  addiu      $v0, $zero, 0x19
    /* 14CD4 8019DC4C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 14CD8 8019DC50 1400A2AF */  sw         $v0, 0x14($sp)
    /* 14CDC 8019DC54 1800A0AF */  sw         $zero, 0x18($sp)
    /* 14CE0 8019DC58 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 14CE4 8019DC5C 2000B1AF */  sw         $s1, 0x20($sp)
    /* 14CE8 8019DC60 2400A0AF */  sw         $zero, 0x24($sp)
    /* 14CEC 8019DC64 2800A0AF */  sw         $zero, 0x28($sp)
    /* 14CF0 8019DC68 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 14CF4 8019DC6C 3000B0AF */  sw         $s0, 0x30($sp)
    /* 14CF8 8019DC70 3400B0AF */  sw         $s0, 0x34($sp)
    /* 14CFC 8019DC74 3800A0AF */  sw         $zero, 0x38($sp)
    /* 14D00 8019DC78 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 14D04 8019DC7C ED4F060C */  jal        func_80193FB4
    /* 14D08 8019DC80 4000B2AF */   sw        $s2, 0x40($sp)
    /* 14D0C 8019DC84 2B000424 */  addiu      $a0, $zero, 0x2B
    /* 14D10 8019DC88 4E300524 */  addiu      $a1, $zero, 0x304E
    /* 14D14 8019DC8C 21300000 */  addu       $a2, $zero, $zero
    /* 14D18 8019DC90 21380000 */  addu       $a3, $zero, $zero
    /* 14D1C 8019DC94 0A000224 */  addiu      $v0, $zero, 0xA
    /* 14D20 8019DC98 1000A0AF */  sw         $zero, 0x10($sp)
    /* 14D24 8019DC9C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 14D28 8019DCA0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 14D2C 8019DCA4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 14D30 8019DCA8 2000B1AF */  sw         $s1, 0x20($sp)
    /* 14D34 8019DCAC 2400A0AF */  sw         $zero, 0x24($sp)
    /* 14D38 8019DCB0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 14D3C 8019DCB4 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 14D40 8019DCB8 3000B0AF */  sw         $s0, 0x30($sp)
    /* 14D44 8019DCBC 3400B0AF */  sw         $s0, 0x34($sp)
    /* 14D48 8019DCC0 3800A0AF */  sw         $zero, 0x38($sp)
    /* 14D4C 8019DCC4 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 14D50 8019DCC8 ED4F060C */  jal        func_80193FB4
    /* 14D54 8019DCCC 4000B2AF */   sw        $s2, 0x40($sp)
    /* 14D58 8019DCD0 0174000C */  jal        func_8001D004
    /* 14D5C 8019DCD4 4E300424 */   addiu     $a0, $zero, 0x304E
    /* 14D60 8019DCD8 1E80043C */  lui        $a0, %hi(D_801D8DFA)
    /* 14D64 8019DCDC FA8D8424 */  addiu      $a0, $a0, %lo(D_801D8DFA)
    /* 14D68 8019DCE0 00008390 */  lbu        $v1, 0x0($a0)
    /* 14D6C 8019DCE4 CCCC063C */  lui        $a2, (0xCCCCCCCD >> 16)
    /* 14D70 8019DCE8 CDCCC634 */  ori        $a2, $a2, (0xCCCCCCCD & 0xFFFF)
    /* 14D74 8019DCEC 19006600 */  multu      $v1, $a2
    /* 14D78 8019DCF0 10400000 */  mfhi       $t0
    /* 14D7C 8019DCF4 40180800 */  sll        $v1, $t0, 1
    /* 14D80 8019DCF8 F00F6330 */  andi       $v1, $v1, 0xFF0
    /* 14D84 8019DCFC 030043A0 */  sb         $v1, 0x3($v0)
    /* 14D88 8019DD00 00008490 */  lbu        $a0, 0x0($a0)
    /* 14D8C 8019DD04 00000000 */  nop
    /* 14D90 8019DD08 19008600 */  multu      $a0, $a2
    /* 14D94 8019DD0C 10400000 */  mfhi       $t0
    /* 14D98 8019DD10 C2280800 */  srl        $a1, $t0, 3
    /* 14D9C 8019DD14 80180500 */  sll        $v1, $a1, 2
    /* 14DA0 8019DD18 21186500 */  addu       $v1, $v1, $a1
    /* 14DA4 8019DD1C 40180300 */  sll        $v1, $v1, 1
    /* 14DA8 8019DD20 23208300 */  subu       $a0, $a0, $v1
    /* 14DAC 8019DD24 FF008430 */  andi       $a0, $a0, 0xFF
    /* 14DB0 8019DD28 00210400 */  sll        $a0, $a0, 4
    /* 14DB4 8019DD2C 0F0044A0 */  sb         $a0, 0xF($v0)
    /* 14DB8 8019DD30 1E80033C */  lui        $v1, %hi(D_801D8DF7)
    /* 14DBC 8019DD34 F78D6390 */  lbu        $v1, %lo(D_801D8DF7)($v1)
    /* 14DC0 8019DD38 00000000 */  nop
    /* 14DC4 8019DD3C 19006600 */  multu      $v1, $a2
    /* 14DC8 8019DD40 10400000 */  mfhi       $t0
    /* 14DCC 8019DD44 40180800 */  sll        $v1, $t0, 1
    /* 14DD0 8019DD48 F00F6330 */  andi       $v1, $v1, 0xFF0
    /* 14DD4 8019DD4C 1B0043A0 */  sb         $v1, 0x1B($v0)
    /* 14DD8 8019DD50 1E80043C */  lui        $a0, %hi(D_801D8DF7)
    /* 14DDC 8019DD54 F78D8490 */  lbu        $a0, %lo(D_801D8DF7)($a0)
    /* 14DE0 8019DD58 00000000 */  nop
    /* 14DE4 8019DD5C 19008600 */  multu      $a0, $a2
    /* 14DE8 8019DD60 10400000 */  mfhi       $t0
    /* 14DEC 8019DD64 C2280800 */  srl        $a1, $t0, 3
    /* 14DF0 8019DD68 80180500 */  sll        $v1, $a1, 2
    /* 14DF4 8019DD6C 21186500 */  addu       $v1, $v1, $a1
    /* 14DF8 8019DD70 40180300 */  sll        $v1, $v1, 1
    /* 14DFC 8019DD74 23208300 */  subu       $a0, $a0, $v1
    /* 14E00 8019DD78 FF008430 */  andi       $a0, $a0, 0xFF
    /* 14E04 8019DD7C 00210400 */  sll        $a0, $a0, 4
    /* 14E08 8019DD80 270044A0 */  sb         $a0, 0x27($v0)
    /* 14E0C 8019DD84 5C00BF8F */  lw         $ra, 0x5C($sp)
    /* 14E10 8019DD88 5800B48F */  lw         $s4, 0x58($sp)
    /* 14E14 8019DD8C 5400B38F */  lw         $s3, 0x54($sp)
    /* 14E18 8019DD90 5000B28F */  lw         $s2, 0x50($sp)
    /* 14E1C 8019DD94 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 14E20 8019DD98 4800B08F */  lw         $s0, 0x48($sp)
    /* 14E24 8019DD9C 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 14E28 8019DDA0 0800E003 */  jr         $ra
    /* 14E2C 8019DDA4 00000000 */   nop
endlabel func_8019DB3C
