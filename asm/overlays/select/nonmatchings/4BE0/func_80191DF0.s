nonmatching func_80191DF0, 0x54

glabel func_80191DF0
    /* 8E78 80191DF0 1D80023C */  lui        $v0, %hi(D_801D1B19)
    /* 8E7C 80191DF4 191B4290 */  lbu        $v0, %lo(D_801D1B19)($v0)
    /* 8E80 80191DF8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 8E84 80191DFC 0D004010 */  beqz       $v0, .L80191E34
    /* 8E88 80191E00 2800BFAF */   sw        $ra, 0x28($sp)
    /* 8E8C 80191E04 FD000224 */  addiu      $v0, $zero, 0xFD
    /* 8E90 80191E08 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8E94 80191E0C 02000224 */  addiu      $v0, $zero, 0x2
    /* 8E98 80191E10 21200000 */  addu       $a0, $zero, $zero
    /* 8E9C 80191E14 38FF0524 */  addiu      $a1, $zero, -0xC8
    /* 8EA0 80191E18 82FF0624 */  addiu      $a2, $zero, -0x7E
    /* 8EA4 80191E1C 90010724 */  addiu      $a3, $zero, 0x190
    /* 8EA8 80191E20 1400A0AF */  sw         $zero, 0x14($sp)
    /* 8EAC 80191E24 1800A0AF */  sw         $zero, 0x18($sp)
    /* 8EB0 80191E28 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 8EB4 80191E2C 005A060C */  jal        func_80196800
    /* 8EB8 80191E30 2000A2AF */   sw        $v0, 0x20($sp)
  .L80191E34:
    /* 8EBC 80191E34 2800BF8F */  lw         $ra, 0x28($sp)
    /* 8EC0 80191E38 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 8EC4 80191E3C 0800E003 */  jr         $ra
    /* 8EC8 80191E40 00000000 */   nop
endlabel func_80191DF0
