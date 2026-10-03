nonmatching func_8005EB48, 0x44C

glabel func_8005EB48
    /* 4F348 8005EB48 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4F34C 8005EB4C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4F350 8005EB50 21888000 */  addu       $s1, $a0, $zero
    /* 4F354 8005EB54 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4F358 8005EB58 1180103C */  lui        $s0, %hi(D_8010C1D8)
    /* 4F35C 8005EB5C D8C11026 */  addiu      $s0, $s0, %lo(D_8010C1D8)
    /* 4F360 8005EB60 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 4F364 8005EB64 2000BFAF */  sw         $ra, 0x20($sp)
    /* 4F368 8005EB68 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4F36C 8005EB6C 9A032392 */  lbu        $v1, 0x39A($s1)
    /* 4F370 8005EB70 02000224 */  addiu      $v0, $zero, 0x2
    /* 4F374 8005EB74 06006210 */  beq        $v1, $v0, .L8005EB90
    /* 4F378 8005EB78 801F133C */   lui       $s3, (0x1F80001A >> 16)
    /* 4F37C 8005EB7C 801F033C */  lui        $v1, (0x1F800298 >> 16)
    /* 4F380 8005EB80 98026390 */  lbu        $v1, (0x1F800298 & 0xFFFF)($v1)
    /* 4F384 8005EB84 03000224 */  addiu      $v0, $zero, 0x3
    /* 4F388 8005EB88 03006214 */  bne        $v1, $v0, .L8005EB98
    /* 4F38C 8005EB8C 00000000 */   nop
  .L8005EB90:
    /* 4F390 8005EB90 E87A0108 */  j          .L8005EBA0
    /* 4F394 8005EB94 02000224 */   addiu     $v0, $zero, 0x2
  .L8005EB98:
    /* 4F398 8005EB98 801F023C */  lui        $v0, (0x1F800328 >> 16)
    /* 4F39C 8005EB9C 28034290 */  lbu        $v0, (0x1F800328 & 0xFFFF)($v0)
  .L8005EBA0:
    /* 4F3A0 8005EBA0 0E80013C */  lui        $at, %hi(D_800E6CB2)
    /* 4F3A4 8005EBA4 B26C22A0 */  sb         $v0, %lo(D_800E6CB2)($at)
    /* 4F3A8 8005EBA8 2D000292 */  lbu        $v0, 0x2D($s0)
    /* 4F3AC 8005EBAC 00000000 */  nop
    /* 4F3B0 8005EBB0 FFFF4324 */  addiu      $v1, $v0, -0x1
    /* 4F3B4 8005EBB4 0600622C */  sltiu      $v0, $v1, 0x6
    /* 4F3B8 8005EBB8 62004010 */  beqz       $v0, .L8005ED44
    /* 4F3BC 8005EBBC 80100300 */   sll       $v0, $v1, 2
    /* 4F3C0 8005EBC0 0180013C */  lui        $at, %hi(jtbl_800123B0)
    /* 4F3C4 8005EBC4 21082200 */  addu       $at, $at, $v0
    /* 4F3C8 8005EBC8 B023228C */  lw         $v0, %lo(jtbl_800123B0)($at)
    /* 4F3CC 8005EBCC 00000000 */  nop
    /* 4F3D0 8005EBD0 08004000 */  jr         $v0
    /* 4F3D4 8005EBD4 00000000 */   nop
  jlabel .L8005EBD8
    /* 4F3D8 8005EBD8 AE79000C */  jal        func_8001E6B8
    /* 4F3DC 8005EBDC 06000424 */   addiu     $a0, $zero, 0x6
    /* 4F3E0 8005EBE0 21184000 */  addu       $v1, $v0, $zero
    /* 4F3E4 8005EBE4 0600622C */  sltiu      $v0, $v1, 0x6
    /* 4F3E8 8005EBE8 56004010 */  beqz       $v0, .L8005ED44
    /* 4F3EC 8005EBEC 80100300 */   sll       $v0, $v1, 2
    /* 4F3F0 8005EBF0 0180013C */  lui        $at, %hi(jtbl_800123C8)
    /* 4F3F4 8005EBF4 21082200 */  addu       $at, $at, $v0
    /* 4F3F8 8005EBF8 C823228C */  lw         $v0, %lo(jtbl_800123C8)($at)
    /* 4F3FC 8005EBFC 00000000 */  nop
    /* 4F400 8005EC00 08004000 */  jr         $v0
    /* 4F404 8005EC04 00000000 */   nop
  jlabel .L8005EC08
    /* 4F408 8005EC08 AE79000C */  jal        func_8001E6B8
    /* 4F40C 8005EC0C 06000424 */   addiu     $a0, $zero, 0x6
    /* 4F410 8005EC10 21184000 */  addu       $v1, $v0, $zero
    /* 4F414 8005EC14 0600622C */  sltiu      $v0, $v1, 0x6
    /* 4F418 8005EC18 4A004010 */  beqz       $v0, .L8005ED44
    /* 4F41C 8005EC1C 80100300 */   sll       $v0, $v1, 2
    /* 4F420 8005EC20 0180013C */  lui        $at, %hi(jtbl_800123E0)
    /* 4F424 8005EC24 21082200 */  addu       $at, $at, $v0
    /* 4F428 8005EC28 E023228C */  lw         $v0, %lo(jtbl_800123E0)($at)
    /* 4F42C 8005EC2C 00000000 */  nop
    /* 4F430 8005EC30 08004000 */  jr         $v0
    /* 4F434 8005EC34 00000000 */   nop
  jlabel .L8005EC38
    /* 4F438 8005EC38 AE79000C */  jal        func_8001E6B8
    /* 4F43C 8005EC3C 06000424 */   addiu     $a0, $zero, 0x6
    /* 4F440 8005EC40 21184000 */  addu       $v1, $v0, $zero
    /* 4F444 8005EC44 3F006004 */  bltz       $v1, .L8005ED44
    /* 4F448 8005EC48 04006228 */   slti      $v0, $v1, 0x4
    /* 4F44C 8005EC4C 1A004014 */  bnez       $v0, .L8005ECB8
    /* 4F450 8005EC50 01000224 */   addiu     $v0, $zero, 0x1
    /* 4F454 8005EC54 06006228 */  slti       $v0, $v1, 0x6
    /* 4F458 8005EC58 3A004010 */  beqz       $v0, .L8005ED44
    /* 4F45C 8005EC5C 01000224 */   addiu     $v0, $zero, 0x1
    /* 4F460 8005EC60 4F7B0108 */  j          .L8005ED3C
    /* 4F464 8005EC64 00000000 */   nop
  jlabel .L8005EC68
    /* 4F468 8005EC68 AE79000C */  jal        func_8001E6B8
    /* 4F46C 8005EC6C 06000424 */   addiu     $a0, $zero, 0x6
    /* 4F470 8005EC70 21184000 */  addu       $v1, $v0, $zero
    /* 4F474 8005EC74 33006004 */  bltz       $v1, .L8005ED44
    /* 4F478 8005EC78 02006228 */   slti      $v0, $v1, 0x2
    /* 4F47C 8005EC7C 0E004014 */  bnez       $v0, .L8005ECB8
    /* 4F480 8005EC80 01000224 */   addiu     $v0, $zero, 0x1
    /* 4F484 8005EC84 06006228 */  slti       $v0, $v1, 0x6
    /* 4F488 8005EC88 2E004010 */  beqz       $v0, .L8005ED44
    /* 4F48C 8005EC8C 01000224 */   addiu     $v0, $zero, 0x1
    /* 4F490 8005EC90 4F7B0108 */  j          .L8005ED3C
    /* 4F494 8005EC94 00000000 */   nop
  jlabel .L8005EC98
    /* 4F498 8005EC98 AE79000C */  jal        func_8001E6B8
    /* 4F49C 8005EC9C 06000424 */   addiu     $a0, $zero, 0x6
    /* 4F4A0 8005ECA0 21184000 */  addu       $v1, $v0, $zero
    /* 4F4A4 8005ECA4 27006004 */  bltz       $v1, .L8005ED44
    /* 4F4A8 8005ECA8 03006228 */   slti      $v0, $v1, 0x3
    /* 4F4AC 8005ECAC 06004010 */  beqz       $v0, .L8005ECC8
    /* 4F4B0 8005ECB0 06006228 */   slti      $v0, $v1, 0x6
  jlabel .L8005ECB4
    /* 4F4B4 8005ECB4 01000224 */  addiu      $v0, $zero, 0x1
  .L8005ECB8:
    /* 4F4B8 8005ECB8 140002A2 */  sb         $v0, 0x14($s0)
    /* 4F4BC 8005ECBC 06000224 */  addiu      $v0, $zero, 0x6
    /* 4F4C0 8005ECC0 517B0108 */  j          .L8005ED44
    /* 4F4C4 8005ECC4 150002A2 */   sb        $v0, 0x15($s0)
  .L8005ECC8:
    /* 4F4C8 8005ECC8 1E004010 */  beqz       $v0, .L8005ED44
    /* 4F4CC 8005ECCC 00000000 */   nop
  jlabel .L8005ECD0
    /* 4F4D0 8005ECD0 01000224 */  addiu      $v0, $zero, 0x1
    /* 4F4D4 8005ECD4 140002A2 */  sb         $v0, 0x14($s0)
    /* 4F4D8 8005ECD8 02000224 */  addiu      $v0, $zero, 0x2
    /* 4F4DC 8005ECDC 517B0108 */  j          .L8005ED44
    /* 4F4E0 8005ECE0 150002A2 */   sb        $v0, 0x15($s0)
  jlabel .L8005ECE4
    /* 4F4E4 8005ECE4 AE79000C */  jal        func_8001E6B8
    /* 4F4E8 8005ECE8 06000424 */   addiu     $a0, $zero, 0x6
    /* 4F4EC 8005ECEC 21184000 */  addu       $v1, $v0, $zero
    /* 4F4F0 8005ECF0 0C006004 */  bltz       $v1, .L8005ED24
    /* 4F4F4 8005ECF4 04006228 */   slti      $v0, $v1, 0x4
    /* 4F4F8 8005ECF8 04004010 */  beqz       $v0, .L8005ED0C
    /* 4F4FC 8005ECFC 01000224 */   addiu     $v0, $zero, 0x1
    /* 4F500 8005ED00 140002A2 */  sb         $v0, 0x14($s0)
    /* 4F504 8005ED04 487B0108 */  j          .L8005ED20
    /* 4F508 8005ED08 06000224 */   addiu     $v0, $zero, 0x6
  .L8005ED0C:
    /* 4F50C 8005ED0C 06006228 */  slti       $v0, $v1, 0x6
    /* 4F510 8005ED10 04004010 */  beqz       $v0, .L8005ED24
    /* 4F514 8005ED14 01000224 */   addiu     $v0, $zero, 0x1
    /* 4F518 8005ED18 140002A2 */  sb         $v0, 0x14($s0)
    /* 4F51C 8005ED1C 02000224 */  addiu      $v0, $zero, 0x2
  .L8005ED20:
    /* 4F520 8005ED20 150002A2 */  sb         $v0, 0x15($s0)
  .L8005ED24:
    /* 4F524 8005ED24 A29E010C */  jal        func_80067A88
    /* 4F528 8005ED28 21202002 */   addu      $a0, $s1, $zero
    /* 4F52C 8005ED2C 04004228 */  slti       $v0, $v0, 0x4
    /* 4F530 8005ED30 04004010 */  beqz       $v0, .L8005ED44
    /* 4F534 8005ED34 00000000 */   nop
  jlabel .L8005ED38
    /* 4F538 8005ED38 01000224 */  addiu      $v0, $zero, 0x1
  .L8005ED3C:
    /* 4F53C 8005ED3C 140002A2 */  sb         $v0, 0x14($s0)
    /* 4F540 8005ED40 150000A2 */  sb         $zero, 0x15($s0)
  .L8005ED44:
    /* 4F544 8005ED44 99032292 */  lbu        $v0, 0x399($s1)
    /* 4F548 8005ED48 00000000 */  nop
    /* 4F54C 8005ED4C 02004010 */  beqz       $v0, .L8005ED58
    /* 4F550 8005ED50 02000424 */   addiu     $a0, $zero, 0x2
    /* 4F554 8005ED54 03000424 */  addiu      $a0, $zero, 0x3
  .L8005ED58:
    /* 4F558 8005ED58 8D79010C */  jal        func_8005E634
    /* 4F55C 8005ED5C 00000000 */   nop
    /* 4F560 8005ED60 06002286 */  lh         $v0, 0x6($s1)
    /* 4F564 8005ED64 00000000 */  nop
    /* 4F568 8005ED68 02004104 */  bgez       $v0, .L8005ED74
    /* 4F56C 8005ED6C 01000424 */   addiu     $a0, $zero, 0x1
    /* 4F570 8005ED70 21200000 */  addu       $a0, $zero, $zero
  .L8005ED74:
    /* 4F574 8005ED74 8D79010C */  jal        func_8005E634
    /* 4F578 8005ED78 00000000 */   nop
    /* 4F57C 8005ED7C 06002286 */  lh         $v0, 0x6($s1)
    /* 4F580 8005ED80 00000000 */  nop
    /* 4F584 8005ED84 02004104 */  bgez       $v0, .L8005ED90
    /* 4F588 8005ED88 00000000 */   nop
    /* 4F58C 8005ED8C 23100200 */  negu       $v0, $v0
  .L8005ED90:
    /* 4F590 8005ED90 B6084228 */  slti       $v0, $v0, 0x8B6
    /* 4F594 8005ED94 35004010 */  beqz       $v0, .L8005EE6C
    /* 4F598 8005ED98 00000000 */   nop
    /* 4F59C 8005ED9C 99032292 */  lbu        $v0, 0x399($s1)
    /* 4F5A0 8005EDA0 02002386 */  lh         $v1, 0x2($s1)
    /* 4F5A4 8005EDA4 06004010 */  beqz       $v0, .L8005EDC0
    /* 4F5A8 8005EDA8 23100300 */   negu      $v0, $v1
    /* 4F5AC 8005EDAC E3184228 */  slti       $v0, $v0, 0x18E3
    /* 4F5B0 8005EDB0 06004010 */  beqz       $v0, .L8005EDCC
    /* 4F5B4 8005EDB4 00000000 */   nop
    /* 4F5B8 8005EDB8 9B7B0108 */  j          .L8005EE6C
    /* 4F5BC 8005EDBC 00000000 */   nop
  .L8005EDC0:
    /* 4F5C0 8005EDC0 E3186228 */  slti       $v0, $v1, 0x18E3
    /* 4F5C4 8005EDC4 29004014 */  bnez       $v0, .L8005EE6C
    /* 4F5C8 8005EDC8 00000000 */   nop
  .L8005EDCC:
    /* 4F5CC 8005EDCC 92032292 */  lbu        $v0, 0x392($s1)
    /* 4F5D0 8005EDD0 98032492 */  lbu        $a0, 0x398($s1)
    /* 4F5D4 8005EDD4 40180200 */  sll        $v1, $v0, 1
    /* 4F5D8 8005EDD8 21186200 */  addu       $v1, $v1, $v0
    /* 4F5DC 8005EDDC 80180300 */  sll        $v1, $v1, 2
    /* 4F5E0 8005EDE0 40110400 */  sll        $v0, $a0, 5
    /* 4F5E4 8005EDE4 21104400 */  addu       $v0, $v0, $a0
    /* 4F5E8 8005EDE8 C0100200 */  sll        $v0, $v0, 3
    /* 4F5EC 8005EDEC 21186200 */  addu       $v1, $v1, $v0
    /* 4F5F0 8005EDF0 1180013C */  lui        $at, %hi(D_8010C328)
    /* 4F5F4 8005EDF4 21082300 */  addu       $at, $at, $v1
    /* 4F5F8 8005EDF8 28C3228C */  lw         $v0, %lo(D_8010C328)($at)
    /* 4F5FC 8005EDFC 64001224 */  addiu      $s2, $zero, 0x64
    /* 4F600 8005EE00 0F004230 */  andi       $v0, $v0, 0xF
    /* 4F604 8005EE04 80200200 */  sll        $a0, $v0, 2
    /* 4F608 8005EE08 21208200 */  addu       $a0, $a0, $v0
    /* 4F60C 8005EE0C AE79000C */  jal        func_8001E6B8
    /* 4F610 8005EE10 23204402 */   subu      $a0, $s2, $a0
    /* 4F614 8005EE14 2D004010 */  beqz       $v0, .L8005EECC
    /* 4F618 8005EE18 04000224 */   addiu     $v0, $zero, 0x4
    /* 4F61C 8005EE1C 92032292 */  lbu        $v0, 0x392($s1)
    /* 4F620 8005EE20 98032492 */  lbu        $a0, 0x398($s1)
    /* 4F624 8005EE24 40180200 */  sll        $v1, $v0, 1
    /* 4F628 8005EE28 21186200 */  addu       $v1, $v1, $v0
    /* 4F62C 8005EE2C 80180300 */  sll        $v1, $v1, 2
    /* 4F630 8005EE30 40110400 */  sll        $v0, $a0, 5
    /* 4F634 8005EE34 21104400 */  addu       $v0, $v0, $a0
    /* 4F638 8005EE38 C0100200 */  sll        $v0, $v0, 3
    /* 4F63C 8005EE3C 21186200 */  addu       $v1, $v1, $v0
    /* 4F640 8005EE40 1180013C */  lui        $at, %hi(D_8010C32C)
    /* 4F644 8005EE44 21082300 */  addu       $at, $at, $v1
    /* 4F648 8005EE48 2CC3228C */  lw         $v0, %lo(D_8010C32C)($at)
    /* 4F64C 8005EE4C 00000000 */  nop
    /* 4F650 8005EE50 0F004230 */  andi       $v0, $v0, 0xF
    /* 4F654 8005EE54 80200200 */  sll        $a0, $v0, 2
    /* 4F658 8005EE58 21208200 */  addu       $a0, $a0, $v0
    /* 4F65C 8005EE5C AE79000C */  jal        func_8001E6B8
    /* 4F660 8005EE60 23204402 */   subu      $a0, $s2, $a0
    /* 4F664 8005EE64 19004010 */  beqz       $v0, .L8005EECC
    /* 4F668 8005EE68 04000224 */   addiu     $v0, $zero, 0x4
  .L8005EE6C:
    /* 4F66C 8005EE6C AE79000C */  jal        func_8001E6B8
    /* 4F670 8005EE70 0A000424 */   addiu     $a0, $zero, 0xA
    /* 4F674 8005EE74 18004014 */  bnez       $v0, .L8005EED8
    /* 4F678 8005EE78 00000000 */   nop
    /* 4F67C 8005EE7C 06002286 */  lh         $v0, 0x6($s1)
    /* 4F680 8005EE80 00000000 */  nop
    /* 4F684 8005EE84 02004104 */  bgez       $v0, .L8005EE90
    /* 4F688 8005EE88 00000000 */   nop
    /* 4F68C 8005EE8C 23100200 */  negu       $v0, $v0
  .L8005EE90:
    /* 4F690 8005EE90 B6094228 */  slti       $v0, $v0, 0x9B6
    /* 4F694 8005EE94 10004010 */  beqz       $v0, .L8005EED8
    /* 4F698 8005EE98 00000000 */   nop
    /* 4F69C 8005EE9C 99032292 */  lbu        $v0, 0x399($s1)
    /* 4F6A0 8005EEA0 02002386 */  lh         $v1, 0x2($s1)
    /* 4F6A4 8005EEA4 06004010 */  beqz       $v0, .L8005EEC0
    /* 4F6A8 8005EEA8 23100300 */   negu      $v0, $v1
    /* 4F6AC 8005EEAC E3224228 */  slti       $v0, $v0, 0x22E3
    /* 4F6B0 8005EEB0 06004010 */  beqz       $v0, .L8005EECC
    /* 4F6B4 8005EEB4 04000224 */   addiu     $v0, $zero, 0x4
    /* 4F6B8 8005EEB8 B67B0108 */  j          .L8005EED8
    /* 4F6BC 8005EEBC 00000000 */   nop
  .L8005EEC0:
    /* 4F6C0 8005EEC0 E3226228 */  slti       $v0, $v1, 0x22E3
    /* 4F6C4 8005EEC4 04004014 */  bnez       $v0, .L8005EED8
    /* 4F6C8 8005EEC8 04000224 */   addiu     $v0, $zero, 0x4
  .L8005EECC:
    /* 4F6CC 8005EECC 140002A2 */  sb         $v0, 0x14($s0)
    /* 4F6D0 8005EED0 DD7B0108 */  j          .L8005EF74
    /* 4F6D4 8005EED4 150000A2 */   sb        $zero, 0x15($s0)
  .L8005EED8:
    /* 4F6D8 8005EED8 99032392 */  lbu        $v1, 0x399($s1)
    /* 4F6DC 8005EEDC 00000000 */  nop
    /* 4F6E0 8005EEE0 08006014 */  bnez       $v1, .L8005EF04
    /* 4F6E4 8005EEE4 01000224 */   addiu     $v0, $zero, 0x1
    /* 4F6E8 8005EEE8 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 4F6EC 8005EEEC 00000000 */  nop
    /* 4F6F0 8005EEF0 02004284 */  lh         $v0, 0x2($v0)
    /* 4F6F4 8005EEF4 00000000 */  nop
    /* 4F6F8 8005EEF8 81174228 */  slti       $v0, $v0, 0x1781
    /* 4F6FC 8005EEFC 0A004010 */  beqz       $v0, .L8005EF28
    /* 4F700 8005EF00 01000224 */   addiu     $v0, $zero, 0x1
  .L8005EF04:
    /* 4F704 8005EF04 1B006214 */  bne        $v1, $v0, .L8005EF74
    /* 4F708 8005EF08 00000000 */   nop
    /* 4F70C 8005EF0C F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 4F710 8005EF10 00000000 */  nop
    /* 4F714 8005EF14 02004284 */  lh         $v0, 0x2($v0)
    /* 4F718 8005EF18 00000000 */  nop
    /* 4F71C 8005EF1C 80E84228 */  slti       $v0, $v0, -0x1780
    /* 4F720 8005EF20 14004010 */  beqz       $v0, .L8005EF74
    /* 4F724 8005EF24 00000000 */   nop
  .L8005EF28:
    /* 4F728 8005EF28 06002286 */  lh         $v0, 0x6($s1)
    /* 4F72C 8005EF2C 00000000 */  nop
    /* 4F730 8005EF30 02004104 */  bgez       $v0, .L8005EF3C
    /* 4F734 8005EF34 00000000 */   nop
    /* 4F738 8005EF38 23100200 */  negu       $v0, $v0
  .L8005EF3C:
    /* 4F73C 8005EF3C F5124228 */  slti       $v0, $v0, 0x12F5
    /* 4F740 8005EF40 0C004014 */  bnez       $v0, .L8005EF74
    /* 4F744 8005EF44 00000000 */   nop
    /* 4F748 8005EF48 9F9F010C */  jal        func_80067E7C
    /* 4F74C 8005EF4C 21202002 */   addu      $a0, $s1, $zero
    /* 4F750 8005EF50 08004010 */  beqz       $v0, .L8005EF74
    /* 4F754 8005EF54 00000000 */   nop
    /* 4F758 8005EF58 98032292 */  lbu        $v0, 0x398($s1)
    /* 4F75C 8005EF5C C20320A6 */  sh         $zero, 0x3C2($s1)
    /* 4F760 8005EF60 40100200 */  sll        $v0, $v0, 1
    /* 4F764 8005EF64 21105300 */  addu       $v0, $v0, $s3
    /* 4F768 8005EF68 1A004294 */  lhu        $v0, (0x1F80001A & 0xFFFF)($v0)
    /* 4F76C 8005EF6C 00000000 */  nop
    /* 4F770 8005EF70 D60322A6 */  sh         $v0, 0x3D6($s1)
  .L8005EF74:
    /* 4F774 8005EF74 2000BF8F */  lw         $ra, 0x20($sp)
    /* 4F778 8005EF78 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 4F77C 8005EF7C 1800B28F */  lw         $s2, 0x18($sp)
    /* 4F780 8005EF80 1400B18F */  lw         $s1, 0x14($sp)
    /* 4F784 8005EF84 1000B08F */  lw         $s0, 0x10($sp)
    /* 4F788 8005EF88 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 4F78C 8005EF8C 0800E003 */  jr         $ra
    /* 4F790 8005EF90 00000000 */   nop
endlabel func_8005EB48
