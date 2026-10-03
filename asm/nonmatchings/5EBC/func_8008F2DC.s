nonmatching func_8008F2DC, 0x458

glabel func_8008F2DC
    /* 7FADC 8008F2DC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 7FAE0 8008F2E0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 7FAE4 8008F2E4 21808000 */  addu       $s0, $a0, $zero
    /* 7FAE8 8008F2E8 2400BFAF */  sw         $ra, 0x24($sp)
    /* 7FAEC 8008F2EC 2000B2AF */  sw         $s2, 0x20($sp)
    /* 7FAF0 8008F2F0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 7FAF4 8008F2F4 97030392 */  lbu        $v1, 0x397($s0)
    /* 7FAF8 8008F2F8 00000000 */  nop
    /* 7FAFC 8008F2FC 06006010 */  beqz       $v1, .L8008F318
    /* 7FB00 8008F300 801F113C */   lui       $s1, (0x1F800000 >> 16)
    /* 7FB04 8008F304 01000224 */  addiu      $v0, $zero, 0x1
    /* 7FB08 8008F308 66006210 */  beq        $v1, $v0, .L8008F4A4
    /* 7FB0C 8008F30C 00000000 */   nop
    /* 7FB10 8008F310 C43D0208 */  j          .L8008F710
    /* 7FB14 8008F314 00000000 */   nop
  .L8008F318:
    /* 7FB18 8008F318 21200002 */  addu       $a0, $s0, $zero
    /* 7FB1C 8008F31C B055020C */  jal        func_800956C0
    /* 7FB20 8008F320 06000524 */   addiu     $a1, $zero, 0x6
    /* 7FB24 8008F324 02000486 */  lh         $a0, 0x2($s0)
    /* 7FB28 8008F328 06000586 */  lh         $a1, 0x6($s0)
    /* 7FB2C 8008F32C 801F063C */  lui        $a2, (0x1F800042 >> 16)
    /* 7FB30 8008F330 4200C684 */  lh         $a2, (0x1F800042 & 0xFFFF)($a2)
    /* 7FB34 8008F334 801F073C */  lui        $a3, (0x1F800072 >> 16)
    /* 7FB38 8008F338 7200E784 */  lh         $a3, (0x1F800072 & 0xFFFF)($a3)
    /* 7FB3C 8008F33C DB6C010C */  jal        func_8005B36C
    /* 7FB40 8008F340 00000000 */   nop
    /* 7FB44 8008F344 02000486 */  lh         $a0, 0x2($s0)
    /* 7FB48 8008F348 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 7FB4C 8008F34C F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 7FB50 8008F350 06000586 */  lh         $a1, 0x6($s0)
    /* 7FB54 8008F354 02006684 */  lh         $a2, 0x2($v1)
    /* 7FB58 8008F358 06006784 */  lh         $a3, 0x6($v1)
    /* 7FB5C 8008F35C DB6C010C */  jal        func_8005B36C
    /* 7FB60 8008F360 21884000 */   addu      $s1, $v0, $zero
    /* 7FB64 8008F364 21200002 */  addu       $a0, $s0, $zero
    /* 7FB68 8008F368 6D000524 */  addiu      $a1, $zero, 0x6D
    /* 7FB6C 8008F36C 07000624 */  addiu      $a2, $zero, 0x7
    /* 7FB70 8008F370 23102202 */  subu       $v0, $s1, $v0
    /* 7FB74 8008F374 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7FB78 8008F378 8100422C */  sltiu      $v0, $v0, 0x81
    /* 7FB7C 8008F37C AB030792 */  lbu        $a3, 0x3AB($s0)
    /* 7FB80 8008F380 AC0302A2 */  sb         $v0, 0x3AC($s0)
    /* 7FB84 8008F384 AB70010C */  jal        func_8005C2AC
    /* 7FB88 8008F388 1000A2AF */   sw        $v0, 0x10($sp)
    /* 7FB8C 8008F38C 21200002 */  addu       $a0, $s0, $zero
    /* 7FB90 8008F390 6D000524 */  addiu      $a1, $zero, 0x6D
    /* 7FB94 8008F394 8C6E010C */  jal        func_8005BA30
    /* 7FB98 8008F398 01000624 */   addiu     $a2, $zero, 0x1
    /* 7FB9C 8008F39C 4992043C */  lui        $a0, (0x92492493 >> 16)
    /* 7FBA0 8008F3A0 801F023C */  lui        $v0, (0x1F800042 >> 16)
    /* 7FBA4 8008F3A4 42004284 */  lh         $v0, (0x1F800042 & 0xFFFF)($v0)
    /* 7FBA8 8008F3A8 801F033C */  lui        $v1, (0x1F8000F0 >> 16)
    /* 7FBAC 8008F3AC F0006384 */  lh         $v1, (0x1F8000F0 & 0xFFFF)($v1)
    /* 7FBB0 8008F3B0 93248434 */  ori        $a0, $a0, (0x92492493 & 0xFFFF)
    /* 7FBB4 8008F3B4 23104300 */  subu       $v0, $v0, $v1
    /* 7FBB8 8008F3B8 18004400 */  mult       $v0, $a0
    /* 7FBBC 8008F3BC 10480000 */  mfhi       $t1
    /* 7FBC0 8008F3C0 21182201 */  addu       $v1, $t1, $v0
    /* 7FBC4 8008F3C4 83180300 */  sra        $v1, $v1, 2
    /* 7FBC8 8008F3C8 C3170200 */  sra        $v0, $v0, 31
    /* 7FBCC 8008F3CC 23186200 */  subu       $v1, $v1, $v0
    /* 7FBD0 8008F3D0 080003AE */  sw         $v1, 0x8($s0)
    /* 7FBD4 8008F3D4 801F023C */  lui        $v0, (0x1F80005A >> 16)
    /* 7FBD8 8008F3D8 5A004284 */  lh         $v0, (0x1F80005A & 0xFFFF)($v0)
    /* 7FBDC 8008F3DC 801F033C */  lui        $v1, (0x1F8000F2 >> 16)
    /* 7FBE0 8008F3E0 F2006384 */  lh         $v1, (0x1F8000F2 & 0xFFFF)($v1)
    /* 7FBE4 8008F3E4 00000000 */  nop
    /* 7FBE8 8008F3E8 23104300 */  subu       $v0, $v0, $v1
    /* 7FBEC 8008F3EC 83100200 */  sra        $v0, $v0, 2
    /* 7FBF0 8008F3F0 0C0002AE */  sw         $v0, 0xC($s0)
    /* 7FBF4 8008F3F4 801F033C */  lui        $v1, (0x1F800072 >> 16)
    /* 7FBF8 8008F3F8 72006384 */  lh         $v1, (0x1F800072 & 0xFFFF)($v1)
    /* 7FBFC 8008F3FC 801F023C */  lui        $v0, (0x1F8000F4 >> 16)
    /* 7FC00 8008F400 F4004284 */  lh         $v0, (0x1F8000F4 & 0xFFFF)($v0)
    /* 7FC04 8008F404 00000000 */  nop
    /* 7FC08 8008F408 23186200 */  subu       $v1, $v1, $v0
    /* 7FC0C 8008F40C 18006400 */  mult       $v1, $a0
    /* 7FC10 8008F410 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 7FC14 8008F414 40000624 */  addiu      $a2, $zero, 0x40
    /* 7FC18 8008F418 040000A6 */  sh         $zero, 0x4($s0)
    /* 7FC1C 8008F41C D10300A2 */  sb         $zero, 0x3D1($s0)
    /* 7FC20 8008F420 A00300AE */  sw         $zero, 0x3A0($s0)
    /* 7FC24 8008F424 AB030492 */  lbu        $a0, 0x3AB($s0)
    /* 7FC28 8008F428 10480000 */  mfhi       $t1
    /* 7FC2C 8008F42C 21102301 */  addu       $v0, $t1, $v1
    /* 7FC30 8008F430 83100200 */  sra        $v0, $v0, 2
    /* 7FC34 8008F434 C31F0300 */  sra        $v1, $v1, 31
    /* 7FC38 8008F438 23104300 */  subu       $v0, $v0, $v1
    /* 7FC3C 8008F43C F36D010C */  jal        func_8005B7CC
    /* 7FC40 8008F440 100002AE */   sw        $v0, 0x10($s0)
    /* 7FC44 8008F444 FF004430 */  andi       $a0, $v0, 0xFF
    /* 7FC48 8008F448 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 7FC4C 8008F44C 23186400 */  subu       $v1, $v1, $a0
    /* 7FC50 8008F450 21206000 */  addu       $a0, $v1, $zero
    /* 7FC54 8008F454 02006104 */  bgez       $v1, .L8008F460
    /* 7FC58 8008F458 AA0302A2 */   sb        $v0, 0x3AA($s0)
    /* 7FC5C 8008F45C FF006424 */  addiu      $a0, $v1, 0xFF
  .L8008F460:
    /* 7FC60 8008F460 03120400 */  sra        $v0, $a0, 8
    /* 7FC64 8008F464 00120200 */  sll        $v0, $v0, 8
    /* 7FC68 8008F468 23106200 */  subu       $v0, $v1, $v0
    /* 7FC6C 8008F46C 97030492 */  lbu        $a0, 0x397($s0)
    /* 7FC70 8008F470 0800058E */  lw         $a1, 0x8($s0)
    /* 7FC74 8008F474 00110200 */  sll        $v0, $v0, 4
    /* 7FC78 8008F478 260002A6 */  sh         $v0, 0x26($s0)
    /* 7FC7C 8008F47C 02000296 */  lhu        $v0, 0x2($s0)
    /* 7FC80 8008F480 1000068E */  lw         $a2, 0x10($s0)
    /* 7FC84 8008F484 06000396 */  lhu        $v1, 0x6($s0)
    /* 7FC88 8008F488 01008424 */  addiu      $a0, $a0, 0x1
    /* 7FC8C 8008F48C 21104500 */  addu       $v0, $v0, $a1
    /* 7FC90 8008F490 21186600 */  addu       $v1, $v1, $a2
    /* 7FC94 8008F494 020002A6 */  sh         $v0, 0x2($s0)
    /* 7FC98 8008F498 060003A6 */  sh         $v1, 0x6($s0)
    /* 7FC9C 8008F49C C43D0208 */  j          .L8008F710
    /* 7FCA0 8008F4A0 970304A2 */   sb        $a0, 0x397($s0)
  .L8008F4A4:
    /* 7FCA4 8008F4A4 476F010C */  jal        func_8005BD1C
    /* 7FCA8 8008F4A8 21200002 */   addu      $a0, $s0, $zero
    /* 7FCAC 8008F4AC 90030292 */  lbu        $v0, 0x390($s0)
    /* 7FCB0 8008F4B0 00000000 */  nop
    /* 7FCB4 8008F4B4 FEFF4324 */  addiu      $v1, $v0, -0x2
    /* 7FCB8 8008F4B8 1100622C */  sltiu      $v0, $v1, 0x11
    /* 7FCBC 8008F4BC 94004010 */  beqz       $v0, .L8008F710
    /* 7FCC0 8008F4C0 80100300 */   sll       $v0, $v1, 2
    /* 7FCC4 8008F4C4 0180013C */  lui        $at, %hi(jtbl_80013EA4)
    /* 7FCC8 8008F4C8 21082200 */  addu       $at, $at, $v0
    /* 7FCCC 8008F4CC A43E228C */  lw         $v0, %lo(jtbl_80013EA4)($at)
    /* 7FCD0 8008F4D0 00000000 */  nop
    /* 7FCD4 8008F4D4 08004000 */  jr         $v0
    /* 7FCD8 8008F4D8 00000000 */   nop
  jlabel .L8008F4DC
    /* 7FCDC 8008F4DC 0C00038E */  lw         $v1, 0xC($s0)
    /* 7FCE0 8008F4E0 04000296 */  lhu        $v0, 0x4($s0)
    /* 7FCE4 8008F4E4 00000000 */  nop
    /* 7FCE8 8008F4E8 21104300 */  addu       $v0, $v0, $v1
    /* 7FCEC 8008F4EC 040002A6 */  sh         $v0, 0x4($s0)
  jlabel .L8008F4F0
    /* 7FCF0 8008F4F0 0C000624 */  addiu      $a2, $zero, 0xC
    /* 7FCF4 8008F4F4 AB030492 */  lbu        $a0, 0x3AB($s0)
    /* 7FCF8 8008F4F8 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 7FCFC 8008F4FC 0800078E */  lw         $a3, 0x8($s0)
    /* 7FD00 8008F500 02000296 */  lhu        $v0, 0x2($s0)
    /* 7FD04 8008F504 1000088E */  lw         $t0, 0x10($s0)
    /* 7FD08 8008F508 06000396 */  lhu        $v1, 0x6($s0)
    /* 7FD0C 8008F50C 21104700 */  addu       $v0, $v0, $a3
    /* 7FD10 8008F510 21186800 */  addu       $v1, $v1, $t0
    /* 7FD14 8008F514 020002A6 */  sh         $v0, 0x2($s0)
    /* 7FD18 8008F518 F36D010C */  jal        func_8005B7CC
    /* 7FD1C 8008F51C 060003A6 */   sh        $v1, 0x6($s0)
    /* 7FD20 8008F520 FF004430 */  andi       $a0, $v0, 0xFF
    /* 7FD24 8008F524 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 7FD28 8008F528 23186400 */  subu       $v1, $v1, $a0
    /* 7FD2C 8008F52C 21206000 */  addu       $a0, $v1, $zero
    /* 7FD30 8008F530 02006104 */  bgez       $v1, .L8008F53C
    /* 7FD34 8008F534 AA0302A2 */   sb        $v0, 0x3AA($s0)
    /* 7FD38 8008F538 FF006424 */  addiu      $a0, $v1, 0xFF
  .L8008F53C:
    /* 7FD3C 8008F53C 03120400 */  sra        $v0, $a0, 8
    /* 7FD40 8008F540 00120200 */  sll        $v0, $v0, 8
    /* 7FD44 8008F544 23106200 */  subu       $v0, $v1, $v0
    /* 7FD48 8008F548 00110200 */  sll        $v0, $v0, 4
    /* 7FD4C 8008F54C C43D0208 */  j          .L8008F710
    /* 7FD50 8008F550 260002A6 */   sh        $v0, 0x26($s0)
  jlabel .L8008F554
    /* 7FD54 8008F554 21200002 */  addu       $a0, $s0, $zero
    /* 7FD58 8008F558 80000524 */  addiu      $a1, $zero, 0x80
    /* 7FD5C 8008F55C 0800038E */  lw         $v1, 0x8($s0)
    /* 7FD60 8008F560 02000296 */  lhu        $v0, 0x2($s0)
    /* 7FD64 8008F564 0C00068E */  lw         $a2, 0xC($s0)
    /* 7FD68 8008F568 1000078E */  lw         $a3, 0x10($s0)
    /* 7FD6C 8008F56C 21104300 */  addu       $v0, $v0, $v1
    /* 7FD70 8008F570 020002A6 */  sh         $v0, 0x2($s0)
    /* 7FD74 8008F574 04000296 */  lhu        $v0, 0x4($s0)
    /* 7FD78 8008F578 06000396 */  lhu        $v1, 0x6($s0)
    /* 7FD7C 8008F57C 21104600 */  addu       $v0, $v0, $a2
    /* 7FD80 8008F580 21186700 */  addu       $v1, $v1, $a3
    /* 7FD84 8008F584 040002A6 */  sh         $v0, 0x4($s0)
    /* 7FD88 8008F588 BB53020C */  jal        func_80094EEC
    /* 7FD8C 8008F58C 060003A6 */   sh        $v1, 0x6($s0)
    /* 7FD90 8008F590 5F004010 */  beqz       $v0, .L8008F710
    /* 7FD94 8008F594 00000000 */   nop
    /* 7FD98 8008F598 92030292 */  lbu        $v0, 0x392($s0)
    /* 7FD9C 8008F59C 98030492 */  lbu        $a0, 0x398($s0)
    /* 7FDA0 8008F5A0 40180200 */  sll        $v1, $v0, 1
    /* 7FDA4 8008F5A4 21186200 */  addu       $v1, $v1, $v0
    /* 7FDA8 8008F5A8 80180300 */  sll        $v1, $v1, 2
    /* 7FDAC 8008F5AC 40110400 */  sll        $v0, $a0, 5
    /* 7FDB0 8008F5B0 21104400 */  addu       $v0, $v0, $a0
    /* 7FDB4 8008F5B4 C0100200 */  sll        $v0, $v0, 3
    /* 7FDB8 8008F5B8 21186200 */  addu       $v1, $v1, $v0
    /* 7FDBC 8008F5BC 1180013C */  lui        $at, %hi(D_8010C328)
    /* 7FDC0 8008F5C0 21082300 */  addu       $at, $at, $v1
    /* 7FDC4 8008F5C4 28C3248C */  lw         $a0, %lo(D_8010C328)($at)
    /* 7FDC8 8008F5C8 1C032296 */  lhu        $v0, 0x31C($s1)
    /* 7FDCC 8008F5CC 02270400 */  srl        $a0, $a0, 28
    /* 7FDD0 8008F5D0 00140200 */  sll        $v0, $v0, 16
    /* 7FDD4 8008F5D4 AE79000C */  jal        func_8001E6B8
    /* 7FDD8 8008F5D8 03940200 */   sra       $s2, $v0, 16
    /* 7FDDC 8008F5DC 1C032396 */  lhu        $v1, 0x31C($s1)
    /* 7FDE0 8008F5E0 21200002 */  addu       $a0, $s0, $zero
    /* 7FDE4 8008F5E4 21186200 */  addu       $v1, $v1, $v0
    /* 7FDE8 8008F5E8 7153020C */  jal        func_80094DC4
    /* 7FDEC 8008F5EC 1C0323A6 */   sh        $v1, 0x31C($s1)
    /* 7FDF0 8008F5F0 2A004010 */  beqz       $v0, .L8008F69C
    /* 7FDF4 8008F5F4 00000000 */   nop
    /* 7FDF8 8008F5F8 E871010C */  jal        func_8005C7A0
    /* 7FDFC 8008F5FC 10000424 */   addiu     $a0, $zero, 0x10
    /* 7FE00 8008F600 F402238E */  lw         $v1, 0x2F4($s1)
    /* 7FE04 8008F604 00000000 */  nop
    /* 7FE08 8008F608 A4036390 */  lbu        $v1, 0x3A4($v1)
    /* 7FE0C 8008F60C 08000424 */  addiu      $a0, $zero, 0x8
    /* 7FE10 8008F610 AE79000C */  jal        func_8001E6B8
    /* 7FE14 8008F614 21886200 */   addu      $s1, $v1, $v0
    /* 7FE18 8008F618 21200002 */  addu       $a0, $s0, $zero
    /* 7FE1C 8008F61C FF002532 */  andi       $a1, $s1, 0xFF
    /* 7FE20 8008F620 10004624 */  addiu      $a2, $v0, 0x10
    /* 7FE24 8008F624 7154020C */  jal        func_800951C4
    /* 7FE28 8008F628 10000724 */   addiu     $a3, $zero, 0x10
    /* 7FE2C 8008F62C 2454020C */  jal        func_80095090
    /* 7FE30 8008F630 21200002 */   addu      $a0, $s0, $zero
    /* 7FE34 8008F634 5A5E010C */  jal        func_80057968
    /* 7FE38 8008F638 21200002 */   addu      $a0, $s0, $zero
    /* 7FE3C 8008F63C 1500422A */  slti       $v0, $s2, 0x15
    /* 7FE40 8008F640 33004010 */  beqz       $v0, .L8008F710
    /* 7FE44 8008F644 21200002 */   addu      $a0, $s0, $zero
    /* 7FE48 8008F648 74000524 */  addiu      $a1, $zero, 0x74
    /* 7FE4C 8008F64C 8C6E010C */  jal        func_8005BA30
    /* 7FE50 8008F650 04000624 */   addiu     $a2, $zero, 0x4
    /* 7FE54 8008F654 AA030492 */  lbu        $a0, 0x3AA($s0)
    /* 7FE58 8008F658 28000524 */  addiu      $a1, $zero, 0x28
    /* 7FE5C 8008F65C 80008424 */  addiu      $a0, $a0, 0x80
    /* 7FE60 8008F660 A579000C */  jal        func_8001E694
    /* 7FE64 8008F664 FF008430 */   andi      $a0, $a0, 0xFF
    /* 7FE68 8008F668 AA030492 */  lbu        $a0, 0x3AA($s0)
    /* 7FE6C 8008F66C 28000524 */  addiu      $a1, $zero, 0x28
    /* 7FE70 8008F670 080002AE */  sw         $v0, 0x8($s0)
    /* 7FE74 8008F674 80008424 */  addiu      $a0, $a0, 0x80
    /* 7FE78 8008F678 6979000C */  jal        func_8001E5A4
    /* 7FE7C 8008F67C FF008430 */   andi      $a0, $a0, 0xFF
    /* 7FE80 8008F680 100002AE */  sw         $v0, 0x10($s0)
    /* 7FE84 8008F684 9B000224 */  addiu      $v0, $zero, 0x9B
    /* 7FE88 8008F688 960302A2 */  sb         $v0, 0x396($s0)
    /* 7FE8C 8008F68C 01000224 */  addiu      $v0, $zero, 0x1
    /* 7FE90 8008F690 040000A6 */  sh         $zero, 0x4($s0)
    /* 7FE94 8008F694 C43D0208 */  j          .L8008F710
    /* 7FE98 8008F698 970302A2 */   sb        $v0, 0x397($s0)
  .L8008F69C:
    /* 7FE9C 8008F69C FD53020C */  jal        func_80094FF4
    /* 7FEA0 8008F6A0 21200002 */   addu      $a0, $s0, $zero
    /* 7FEA4 8008F6A4 E35D010C */  jal        func_8005778C
    /* 7FEA8 8008F6A8 21200002 */   addu      $a0, $s0, $zero
    /* 7FEAC 8008F6AC C43D0208 */  j          .L8008F710
    /* 7FEB0 8008F6B0 00000000 */   nop
  jlabel .L8008F6B4
    /* 7FEB4 8008F6B4 0800038E */  lw         $v1, 0x8($s0)
    /* 7FEB8 8008F6B8 02000296 */  lhu        $v0, 0x2($s0)
    /* 7FEBC 8008F6BC 0C00048E */  lw         $a0, 0xC($s0)
    /* 7FEC0 8008F6C0 1000058E */  lw         $a1, 0x10($s0)
    /* 7FEC4 8008F6C4 21104300 */  addu       $v0, $v0, $v1
    /* 7FEC8 8008F6C8 020002A6 */  sh         $v0, 0x2($s0)
    /* 7FECC 8008F6CC 04000296 */  lhu        $v0, 0x4($s0)
    /* 7FED0 8008F6D0 06000396 */  lhu        $v1, 0x6($s0)
    /* 7FED4 8008F6D4 23104400 */  subu       $v0, $v0, $a0
    /* 7FED8 8008F6D8 21186500 */  addu       $v1, $v1, $a1
    /* 7FEDC 8008F6DC 040002A6 */  sh         $v0, 0x4($s0)
    /* 7FEE0 8008F6E0 C43D0208 */  j          .L8008F710
    /* 7FEE4 8008F6E4 060003A6 */   sh        $v1, 0x6($s0)
  jlabel .L8008F6E8
    /* 7FEE8 8008F6E8 C43D0208 */  j          .L8008F710
    /* 7FEEC 8008F6EC 040000A6 */   sh        $zero, 0x4($s0)
  jlabel .L8008F6F0
    /* 7FEF0 8008F6F0 A8022392 */  lbu        $v1, 0x2A8($s1)
    /* 7FEF4 8008F6F4 8D030292 */  lbu        $v0, 0x38D($s0)
    /* 7FEF8 8008F6F8 00000000 */  nop
    /* 7FEFC 8008F6FC 02004314 */  bne        $v0, $v1, .L8008F708
    /* 7FF00 8008F700 82000224 */   addiu     $v0, $zero, 0x82
    /* 7FF04 8008F704 81000224 */  addiu      $v0, $zero, 0x81
  .L8008F708:
    /* 7FF08 8008F708 960302A2 */  sb         $v0, 0x396($s0)
    /* 7FF0C 8008F70C 970300A2 */  sb         $zero, 0x397($s0)
  jlabel .L8008F710
    /* 7FF10 8008F710 3A55020C */  jal        func_800954E8
    /* 7FF14 8008F714 21200002 */   addu      $a0, $s0, $zero
    /* 7FF18 8008F718 2400BF8F */  lw         $ra, 0x24($sp)
    /* 7FF1C 8008F71C 2000B28F */  lw         $s2, 0x20($sp)
    /* 7FF20 8008F720 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 7FF24 8008F724 1800B08F */  lw         $s0, 0x18($sp)
    /* 7FF28 8008F728 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 7FF2C 8008F72C 0800E003 */  jr         $ra
    /* 7FF30 8008F730 00000000 */   nop
endlabel func_8008F2DC
