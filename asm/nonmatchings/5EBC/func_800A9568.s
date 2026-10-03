nonmatching func_800A9568, 0x58

glabel func_800A9568
    /* 99D68 800A9568 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 99D6C 800A956C 0E000434 */  ori        $a0, $zero, 0xE
    /* 99D70 800A9570 1000A527 */  addiu      $a1, $sp, 0x10
    /* 99D74 800A9574 CB000234 */  ori        $v0, $zero, 0xCB
    /* 99D78 800A9578 1800BFAF */  sw         $ra, 0x18($sp)
    /* 99D7C 800A957C 0E80013C */  lui        $at, %hi(D_800E6BD9)
    /* 99D80 800A9580 D96B20A0 */  sb         $zero, %lo(D_800E6BD9)($at)
    /* 99D84 800A9584 5CDC020C */  jal        func_800B7170
    /* 99D88 800A9588 1000A2A3 */   sb        $v0, 0x10($sp)
    /* 99D8C 800A958C 0D000434 */  ori        $a0, $zero, 0xD
    /* 99D90 800A9590 0E80023C */  lui        $v0, %hi(D_800E6AE8)
    /* 99D94 800A9594 E86A4290 */  lbu        $v0, %lo(D_800E6AE8)($v0)
    /* 99D98 800A9598 0E80033C */  lui        $v1, %hi(D_800E6BD4)
    /* 99D9C 800A959C D46B6390 */  lbu        $v1, %lo(D_800E6BD4)($v1)
    /* 99DA0 800A95A0 1000A527 */  addiu      $a1, $sp, 0x10
    /* 99DA4 800A95A4 1000A2A3 */  sb         $v0, 0x10($sp)
    /* 99DA8 800A95A8 5CDC020C */  jal        func_800B7170
    /* 99DAC 800A95AC 1100A3A3 */   sb        $v1, 0x11($sp)
    /* 99DB0 800A95B0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 99DB4 800A95B4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 99DB8 800A95B8 0800E003 */  jr         $ra
    /* 99DBC 800A95BC 00000000 */   nop
endlabel func_800A9568
