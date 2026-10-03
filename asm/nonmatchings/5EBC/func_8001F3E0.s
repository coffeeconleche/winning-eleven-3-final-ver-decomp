nonmatching func_8001F3E0, 0x15C

glabel func_8001F3E0
    /* FBE0 8001F3E0 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* FBE4 8001F3E4 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* FBE8 8001F3E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* FBEC 8001F3EC 1000B0AF */  sw         $s0, 0x10($sp)
    /* FBF0 8001F3F0 801F103C */  lui        $s0, (0x1F800333 >> 16)
    /* FBF4 8001F3F4 0F00622C */  sltiu      $v0, $v1, 0xF
    /* FBF8 8001F3F8 3E004010 */  beqz       $v0, .L8001F4F4
    /* FBFC 8001F3FC 1400BFAF */   sw        $ra, 0x14($sp)
    /* FC00 8001F400 80100300 */  sll        $v0, $v1, 2
    /* FC04 8001F404 0180013C */  lui        $at, %hi(jtbl_80010634)
    /* FC08 8001F408 21082200 */  addu       $at, $at, $v0
    /* FC0C 8001F40C 3406228C */  lw         $v0, %lo(jtbl_80010634)($at)
    /* FC10 8001F410 00000000 */  nop
    /* FC14 8001F414 08004000 */  jr         $v0
    /* FC18 8001F418 00000000 */   nop
  jlabel .L8001F41C
    /* FC1C 8001F41C 70DA010C */  jal        func_800769C0
    /* FC20 8001F420 00000000 */   nop
    /* FC24 8001F424 3D7D0008 */  j          .L8001F4F4
    /* FC28 8001F428 00000000 */   nop
  jlabel .L8001F42C
    /* FC2C 8001F42C 9FDB010C */  jal        func_80076E7C
    /* FC30 8001F430 00000000 */   nop
    /* FC34 8001F434 3D7D0008 */  j          .L8001F4F4
    /* FC38 8001F438 00000000 */   nop
  jlabel .L8001F43C
    /* FC3C 8001F43C 9CDC010C */  jal        func_80077270
    /* FC40 8001F440 00000000 */   nop
    /* FC44 8001F444 3D7D0008 */  j          .L8001F4F4
    /* FC48 8001F448 00000000 */   nop
  jlabel .L8001F44C
    /* FC4C 8001F44C AAE8010C */  jal        func_8007A2A8
    /* FC50 8001F450 00000000 */   nop
    /* FC54 8001F454 3D7D0008 */  j          .L8001F4F4
    /* FC58 8001F458 00000000 */   nop
  jlabel .L8001F45C
    /* FC5C 8001F45C E7EC010C */  jal        func_8007B39C
    /* FC60 8001F460 00000000 */   nop
    /* FC64 8001F464 3D7D0008 */  j          .L8001F4F4
    /* FC68 8001F468 00000000 */   nop
  jlabel .L8001F46C
    /* FC6C 8001F46C 8EEF010C */  jal        func_8007BE38
    /* FC70 8001F470 00000000 */   nop
    /* FC74 8001F474 3D7D0008 */  j          .L8001F4F4
    /* FC78 8001F478 00000000 */   nop
  jlabel .L8001F47C
    /* FC7C 8001F47C B7F3010C */  jal        func_8007CEDC
    /* FC80 8001F480 00000000 */   nop
    /* FC84 8001F484 3D7D0008 */  j          .L8001F4F4
    /* FC88 8001F488 00000000 */   nop
  jlabel .L8001F48C
    /* FC8C 8001F48C E506020C */  jal        func_80081B94
    /* FC90 8001F490 00000000 */   nop
    /* FC94 8001F494 3D7D0008 */  j          .L8001F4F4
    /* FC98 8001F498 00000000 */   nop
  jlabel .L8001F49C
    /* FC9C 8001F49C BA0F020C */  jal        func_80083EE8
    /* FCA0 8001F4A0 00000000 */   nop
    /* FCA4 8001F4A4 3D7D0008 */  j          .L8001F4F4
    /* FCA8 8001F4A8 00000000 */   nop
  jlabel .L8001F4AC
    /* FCAC 8001F4AC D411020C */  jal        func_80084750
    /* FCB0 8001F4B0 00000000 */   nop
    /* FCB4 8001F4B4 3D7D0008 */  j          .L8001F4F4
    /* FCB8 8001F4B8 00000000 */   nop
  jlabel .L8001F4BC
    /* FCBC 8001F4BC 331F020C */  jal        func_80087CCC
    /* FCC0 8001F4C0 00000000 */   nop
    /* FCC4 8001F4C4 3D7D0008 */  j          .L8001F4F4
    /* FCC8 8001F4C8 00000000 */   nop
  jlabel .L8001F4CC
    /* FCCC 8001F4CC 1C27020C */  jal        func_80089C70
    /* FCD0 8001F4D0 00000000 */   nop
    /* FCD4 8001F4D4 3D7D0008 */  j          .L8001F4F4
    /* FCD8 8001F4D8 00000000 */   nop
  jlabel .L8001F4DC
    /* FCDC 8001F4DC E323060C */  jal        func_80188F8C
    /* FCE0 8001F4E0 00000000 */   nop
    /* FCE4 8001F4E4 3D7D0008 */  j          .L8001F4F4
    /* FCE8 8001F4E8 00000000 */   nop
  jlabel .L8001F4EC
    /* FCEC 8001F4EC EFD6010C */  jal        func_80075BBC
    /* FCF0 8001F4F0 00000000 */   nop
  jlabel .L8001F4F4
    /* FCF4 8001F4F4 F402048E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s0)
    /* FCF8 8001F4F8 7964020C */  jal        func_800991E4
    /* FCFC 8001F4FC 00000000 */   nop
    /* FD00 8001F500 306B020C */  jal        func_8009ACC0
    /* FD04 8001F504 00000000 */   nop
    /* FD08 8001F508 8C83000C */  jal        func_80020E30
    /* FD0C 8001F50C 00000000 */   nop
    /* FD10 8001F510 33030292 */  lbu        $v0, (0x1F800333 & 0xFFFF)($s0)
    /* FD14 8001F514 00000000 */  nop
    /* FD18 8001F518 03004010 */  beqz       $v0, .L8001F528
    /* FD1C 8001F51C 00000000 */   nop
    /* FD20 8001F520 A3CD010C */  jal        func_8007368C
    /* FD24 8001F524 00000000 */   nop
  .L8001F528:
    /* FD28 8001F528 1400BF8F */  lw         $ra, 0x14($sp)
    /* FD2C 8001F52C 1000B08F */  lw         $s0, 0x10($sp)
    /* FD30 8001F530 1800BD27 */  addiu      $sp, $sp, 0x18
    /* FD34 8001F534 0800E003 */  jr         $ra
    /* FD38 8001F538 00000000 */   nop
endlabel func_8001F3E0
