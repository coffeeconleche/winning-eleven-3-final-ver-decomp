nonmatching func_801BB38C, 0x15DC

glabel func_801BB38C
    /* 32414 801BB38C C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 32418 801BB390 21200000 */  addu       $a0, $zero, $zero
    /* 3241C 801BB394 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 32420 801BB398 3800B4AF */  sw         $s4, 0x38($sp)
    /* 32424 801BB39C 3400B3AF */  sw         $s3, 0x34($sp)
    /* 32428 801BB3A0 3000B2AF */  sw         $s2, 0x30($sp)
    /* 3242C 801BB3A4 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 32430 801BB3A8 20BB010C */  jal        func_8006EC80
    /* 32434 801BB3AC 2800B0AF */   sw        $s0, 0x28($sp)
    /* 32438 801BB3B0 1080143C */  lui        $s4, %hi(D_800FF748)
    /* 3243C 801BB3B4 48F79426 */  addiu      $s4, $s4, %lo(D_800FF748)
    /* 32440 801BB3B8 1180033C */  lui        $v1, %hi(D_8010A322)
    /* 32444 801BB3BC 22A36390 */  lbu        $v1, %lo(D_8010A322)($v1)
    /* 32448 801BB3C0 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 3244C 801BB3C4 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 32450 801BB3C8 9100622C */  sltiu      $v0, $v1, 0x91
    /* 32454 801BB3CC 5D054010 */  beqz       $v0, .L801BC944
    /* 32458 801BB3D0 801F103C */   lui       $s0, (0x1F8002A2 >> 16)
    /* 3245C 801BB3D4 80100300 */  sll        $v0, $v1, 2
    /* 32460 801BB3D8 1980013C */  lui        $at, %hi(jtbl_8018B630)
    /* 32464 801BB3DC 21082200 */  addu       $at, $at, $v0
    /* 32468 801BB3E0 30B6228C */  lw         $v0, %lo(jtbl_8018B630)($at)
    /* 3246C 801BB3E4 00000000 */  nop
    /* 32470 801BB3E8 08004000 */  jr         $v0
    /* 32474 801BB3EC 00000000 */   nop
  jlabel .L801BB3F0
    /* 32478 801BB3F0 5AF2060C */  jal        func_801BC968
    /* 3247C 801BB3F4 00000000 */   nop
    /* 32480 801BB3F8 EAF2060C */  jal        func_801BCBA8
    /* 32484 801BB3FC 00000000 */   nop
    /* 32488 801BB400 4E39060C */  jal        func_8018E538
    /* 3248C 801BB404 21200000 */   addu      $a0, $zero, $zero
    /* 32490 801BB408 21200000 */  addu       $a0, $zero, $zero
    /* 32494 801BB40C 20000224 */  addiu      $v0, $zero, 0x20
    /* 32498 801BB410 BBF5060C */  jal        func_801BD6EC
    /* 3249C 801BB414 A20202A2 */   sb        $v0, (0x1F8002A2 & 0xFFFF)($s0)
    /* 324A0 801BB418 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 324A4 801BB41C 38D620A4 */  sh         $zero, %lo(D_800AD638)($at)
    /* 324A8 801BB420 1E80013C */  lui        $at, %hi(D_801DA2F8)
    /* 324AC 801BB424 F8A220A0 */  sb         $zero, %lo(D_801DA2F8)($at)
    /* 324B0 801BB428 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 324B4 801BB42C F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 324B8 801BB430 1E80013C */  lui        $at, %hi(D_801DAD85)
    /* 324BC 801BB434 85AD20A0 */  sb         $zero, %lo(D_801DAD85)($at)
    /* 324C0 801BB438 0100013C */  lui        $at, (0x10000 >> 16)
    /* 324C4 801BB43C 21088102 */  addu       $at, $s4, $at
    /* 324C8 801BB440 DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 324CC 801BB444 3C000224 */  addiu      $v0, $zero, 0x3C
    /* 324D0 801BB448 1E80013C */  lui        $at, %hi(D_801DA342)
    /* 324D4 801BB44C 42A322A0 */  sb         $v0, %lo(D_801DA342)($at)
    /* 324D8 801BB450 1E80013C */  lui        $at, %hi(D_801DA332)
    /* 324DC 801BB454 32A320A0 */  sb         $zero, %lo(D_801DA332)($at)
    /* 324E0 801BB458 B9F10608 */  j          .L801BC6E4
    /* 324E4 801BB45C 01006324 */   addiu     $v1, $v1, 0x1
  jlabel .L801BB460
    /* 324E8 801BB460 10000424 */  addiu      $a0, $zero, 0x10
  .L801BB464:
    /* 324EC 801BB464 1FBC010C */  jal        func_8006F07C
    /* 324F0 801BB468 00000000 */   nop
    /* 324F4 801BB46C 35054010 */  beqz       $v0, .L801BC944
    /* 324F8 801BB470 00000000 */   nop
    /* 324FC 801BB474 36F20608 */  j          .L801BC8D8
    /* 32500 801BB478 00000000 */   nop
  jlabel .L801BB47C
    /* 32504 801BB47C 3AF6060C */  jal        func_801BD8E8
    /* 32508 801BB480 00000000 */   nop
    /* 3250C 801BB484 2F054010 */  beqz       $v0, .L801BC944
    /* 32510 801BB488 00000000 */   nop
    /* 32514 801BB48C 36F20608 */  j          .L801BC8D8
    /* 32518 801BB490 00000000 */   nop
  jlabel .L801BB494
    /* 3251C 801BB494 1E80023C */  lui        $v0, %hi(D_801DA342)
    /* 32520 801BB498 42A34290 */  lbu        $v0, %lo(D_801DA342)($v0)
    /* 32524 801BB49C 00000000 */  nop
    /* 32528 801BB4A0 07004010 */  beqz       $v0, .L801BB4C0
    /* 3252C 801BB4A4 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 32530 801BB4A8 1E80013C */  lui        $at, %hi(D_801DA342)
    /* 32534 801BB4AC 42A322A0 */  sb         $v0, %lo(D_801DA342)($at)
    /* 32538 801BB4B0 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 3253C 801BB4B4 F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 32540 801BB4B8 39ED0608 */  j          .L801BB4E4
    /* 32544 801BB4BC 01000424 */   addiu     $a0, $zero, 0x1
  .L801BB4C0:
    /* 32548 801BB4C0 1E80023C */  lui        $v0, %hi(D_801DA332)
    /* 3254C 801BB4C4 32A34290 */  lbu        $v0, %lo(D_801DA332)($v0)
    /* 32550 801BB4C8 01000324 */  addiu      $v1, $zero, 0x1
    /* 32554 801BB4CC 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 32558 801BB4D0 F0A223A0 */  sb         $v1, %lo(D_801DA2F0)($at)
    /* 3255C 801BB4D4 01004224 */  addiu      $v0, $v0, 0x1
    /* 32560 801BB4D8 1E80013C */  lui        $at, %hi(D_801DA332)
    /* 32564 801BB4DC 32A322A0 */  sb         $v0, %lo(D_801DA332)($at)
    /* 32568 801BB4E0 01000424 */  addiu      $a0, $zero, 0x1
  .L801BB4E4:
    /* 3256C 801BB4E4 A33A060C */  jal        func_8018EA8C
    /* 32570 801BB4E8 21280000 */   addu      $a1, $zero, $zero
    /* 32574 801BB4EC 78EF0608 */  j          .L801BBDE0
    /* 32578 801BB4F0 00000000 */   nop
  jlabel .L801BB4F4
    /* 3257C 801BB4F4 10000424 */  addiu      $a0, $zero, 0x10
    /* 32580 801BB4F8 37BC010C */  jal        func_8006F0DC
    /* 32584 801BB4FC 01000524 */   addiu     $a1, $zero, 0x1
    /* 32588 801BB500 10054010 */  beqz       $v0, .L801BC944
    /* 3258C 801BB504 00000000 */   nop
    /* 32590 801BB508 36F20608 */  j          .L801BC8D8
    /* 32594 801BB50C 00000000 */   nop
  jlabel .L801BB510
    /* 32598 801BB510 E0F3060C */  jal        func_801BCF80
    /* 3259C 801BB514 00000000 */   nop
    /* 325A0 801BB518 21284000 */  addu       $a1, $v0, $zero
    /* 325A4 801BB51C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 325A8 801BB520 21088102 */  addu       $at, $s4, $at
    /* 325AC 801BB524 A8AB20A0 */  sb         $zero, -0x5458($at)
    /* 325B0 801BB528 0000A290 */  lbu        $v0, 0x0($a1)
    /* 325B4 801BB52C 0200A490 */  lbu        $a0, 0x2($a1)
    /* 325B8 801BB530 C0180200 */  sll        $v1, $v0, 3
    /* 325BC 801BB534 21186200 */  addu       $v1, $v1, $v0
    /* 325C0 801BB538 80180300 */  sll        $v1, $v1, 2
    /* 325C4 801BB53C 21188302 */  addu       $v1, $s4, $v1
    /* 325C8 801BB540 C0100400 */  sll        $v0, $a0, 3
    /* 325CC 801BB544 21104400 */  addu       $v0, $v0, $a0
    /* 325D0 801BB548 80100200 */  sll        $v0, $v0, 2
    /* 325D4 801BB54C 21108202 */  addu       $v0, $s4, $v0
    /* 325D8 801BB550 0100013C */  lui        $at, (0x10000 >> 16)
    /* 325DC 801BB554 21088102 */  addu       $at, $s4, $at
    /* 325E0 801BB558 1F8F2490 */  lbu        $a0, -0x70E1($at)
    /* 325E4 801BB55C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 325E8 801BB560 21086100 */  addu       $at, $v1, $at
    /* 325EC 801BB564 288F2790 */  lbu        $a3, -0x70D8($at)
    /* 325F0 801BB568 0100013C */  lui        $at, (0x10000 >> 16)
    /* 325F4 801BB56C 21084100 */  addu       $at, $v0, $at
    /* 325F8 801BB570 288F2690 */  lbu        $a2, -0x70D8($at)
    /* 325FC 801BB574 0100013C */  lui        $at, (0x10000 >> 16)
    /* 32600 801BB578 21088102 */  addu       $at, $s4, $at
    /* 32604 801BB57C 228F2390 */  lbu        $v1, -0x70DE($at)
    /* 32608 801BB580 40008430 */  andi       $a0, $a0, 0x40
    /* 3260C 801BB584 05008010 */  beqz       $a0, .L801BB59C
    /* 32610 801BB588 1D000224 */   addiu     $v0, $zero, 0x1D
    /* 32614 801BB58C 06006210 */  beq        $v1, $v0, .L801BB5A8
    /* 32618 801BB590 2310E600 */   subu      $v0, $a3, $a2
    /* 3261C 801BB594 78ED0608 */  j          .L801BB5E0
    /* 32620 801BB598 00000000 */   nop
  .L801BB59C:
    /* 32624 801BB59C 0E000224 */  addiu      $v0, $zero, 0xE
    /* 32628 801BB5A0 0F006214 */  bne        $v1, $v0, .L801BB5E0
    /* 3262C 801BB5A4 2310E600 */   subu      $v0, $a3, $a2
  .L801BB5A8:
    /* 32630 801BB5A8 04004228 */  slti       $v0, $v0, 0x4
    /* 32634 801BB5AC 0C004014 */  bnez       $v0, .L801BB5E0
    /* 32638 801BB5B0 00000000 */   nop
    /* 3263C 801BB5B4 0000A390 */  lbu        $v1, 0x0($a1)
    /* 32640 801BB5B8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 32644 801BB5BC 21088102 */  addu       $at, $s4, $at
    /* 32648 801BB5C0 218F2290 */  lbu        $v0, -0x70DF($at)
    /* 3264C 801BB5C4 00000000 */  nop
    /* 32650 801BB5C8 02006214 */  bne        $v1, $v0, .L801BB5D4
    /* 32654 801BB5CC 01000224 */   addiu     $v0, $zero, 0x1
    /* 32658 801BB5D0 02000224 */  addiu      $v0, $zero, 0x2
  .L801BB5D4:
    /* 3265C 801BB5D4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 32660 801BB5D8 21088102 */  addu       $at, $s4, $at
    /* 32664 801BB5DC A8AB22A0 */  sb         $v0, -0x5458($at)
  .L801BB5E0:
    /* 32668 801BB5E0 A4AC060C */  jal        func_801AB290
    /* 3266C 801BB5E4 21200000 */   addu      $a0, $zero, $zero
    /* 32670 801BB5E8 51F20608 */  j          .L801BC944
    /* 32674 801BB5EC 00000000 */   nop
  jlabel .L801BB5F0
    /* 32678 801BB5F0 10000424 */  addiu      $a0, $zero, 0x10
    /* 3267C 801BB5F4 37BC010C */  jal        func_8006F0DC
    /* 32680 801BB5F8 01000524 */   addiu     $a1, $zero, 0x1
    /* 32684 801BB5FC D1044010 */  beqz       $v0, .L801BC944
    /* 32688 801BB600 00000000 */   nop
    /* 3268C 801BB604 1E80013C */  lui        $at, %hi(D_801D8B18)
    /* 32690 801BB608 188B20A0 */  sb         $zero, %lo(D_801D8B18)($at)
    /* 32694 801BB60C 5AF2060C */  jal        func_801BC968
    /* 32698 801BB610 00000000 */   nop
    /* 3269C 801BB614 15A7060C */  jal        func_801A9C54
    /* 326A0 801BB618 00000000 */   nop
    /* 326A4 801BB61C EAF2060C */  jal        func_801BCBA8
    /* 326A8 801BB620 00000000 */   nop
    /* 326AC 801BB624 FF004230 */  andi       $v0, $v0, 0xFF
    /* 326B0 801BB628 1E80033C */  lui        $v1, %hi(D_801D94D8)
    /* 326B4 801BB62C D8946324 */  addiu      $v1, $v1, %lo(D_801D94D8)
    /* 326B8 801BB630 40200200 */  sll        $a0, $v0, 1
    /* 326BC 801BB634 21208300 */  addu       $a0, $a0, $v1
    /* 326C0 801BB638 80100200 */  sll        $v0, $v0, 2
    /* 326C4 801BB63C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 326C8 801BB640 21088102 */  addu       $at, $s4, $at
    /* 326CC 801BB644 158F2390 */  lbu        $v1, -0x70EB($at)
    /* 326D0 801BB648 D1020592 */  lbu        $a1, 0x2D1($s0)
    /* 326D4 801BB64C 21188300 */  addu       $v1, $a0, $v1
    /* 326D8 801BB650 000065A0 */  sb         $a1, 0x0($v1)
    /* 326DC 801BB654 0100013C */  lui        $at, (0x10000 >> 16)
    /* 326E0 801BB658 21088102 */  addu       $at, $s4, $at
    /* 326E4 801BB65C 158F2390 */  lbu        $v1, -0x70EB($at)
    /* 326E8 801BB660 D2020592 */  lbu        $a1, 0x2D2($s0)
    /* 326EC 801BB664 01006338 */  xori       $v1, $v1, 0x1
    /* 326F0 801BB668 21208300 */  addu       $a0, $a0, $v1
    /* 326F4 801BB66C 000085A0 */  sb         $a1, 0x0($a0)
    /* 326F8 801BB670 0100013C */  lui        $at, (0x10000 >> 16)
    /* 326FC 801BB674 21088102 */  addu       $at, $s4, $at
    /* 32700 801BB678 158F2390 */  lbu        $v1, -0x70EB($at)
    /* 32704 801BB67C D3020492 */  lbu        $a0, 0x2D3($s0)
    /* 32708 801BB680 40180300 */  sll        $v1, $v1, 1
    /* 3270C 801BB684 21186200 */  addu       $v1, $v1, $v0
    /* 32710 801BB688 1E80013C */  lui        $at, %hi(D_801DA310)
    /* 32714 801BB68C 21082300 */  addu       $at, $at, $v1
    /* 32718 801BB690 10A324A0 */  sb         $a0, %lo(D_801DA310)($at)
    /* 3271C 801BB694 0100013C */  lui        $at, (0x10000 >> 16)
    /* 32720 801BB698 21088102 */  addu       $at, $s4, $at
    /* 32724 801BB69C 158F2390 */  lbu        $v1, -0x70EB($at)
    /* 32728 801BB6A0 D7020492 */  lbu        $a0, 0x2D7($s0)
    /* 3272C 801BB6A4 01006338 */  xori       $v1, $v1, 0x1
    /* 32730 801BB6A8 40180300 */  sll        $v1, $v1, 1
    /* 32734 801BB6AC 21186200 */  addu       $v1, $v1, $v0
    /* 32738 801BB6B0 1E80013C */  lui        $at, %hi(D_801DA310)
    /* 3273C 801BB6B4 21082300 */  addu       $at, $at, $v1
    /* 32740 801BB6B8 10A324A0 */  sb         $a0, %lo(D_801DA310)($at)
    /* 32744 801BB6BC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 32748 801BB6C0 21088102 */  addu       $at, $s4, $at
    /* 3274C 801BB6C4 158F2390 */  lbu        $v1, -0x70EB($at)
    /* 32750 801BB6C8 D4020492 */  lbu        $a0, 0x2D4($s0)
    /* 32754 801BB6CC 40180300 */  sll        $v1, $v1, 1
    /* 32758 801BB6D0 21186200 */  addu       $v1, $v1, $v0
    /* 3275C 801BB6D4 1E80013C */  lui        $at, %hi(D_801DA311)
    /* 32760 801BB6D8 21082300 */  addu       $at, $at, $v1
    /* 32764 801BB6DC 11A324A0 */  sb         $a0, %lo(D_801DA311)($at)
    /* 32768 801BB6E0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3276C 801BB6E4 21088102 */  addu       $at, $s4, $at
    /* 32770 801BB6E8 158F2390 */  lbu        $v1, -0x70EB($at)
    /* 32774 801BB6EC D8020492 */  lbu        $a0, 0x2D8($s0)
    /* 32778 801BB6F0 01006338 */  xori       $v1, $v1, 0x1
    /* 3277C 801BB6F4 40180300 */  sll        $v1, $v1, 1
    /* 32780 801BB6F8 21186200 */  addu       $v1, $v1, $v0
    /* 32784 801BB6FC 1E80013C */  lui        $at, %hi(D_801DA311)
    /* 32788 801BB700 21082300 */  addu       $at, $at, $v1
    /* 3278C 801BB704 11A324A0 */  sb         $a0, %lo(D_801DA311)($at)
    /* 32790 801BB708 0100013C */  lui        $at, (0x10000 >> 16)
    /* 32794 801BB70C 21088102 */  addu       $at, $s4, $at
    /* 32798 801BB710 A0AB2390 */  lbu        $v1, -0x5460($at)
    /* 3279C 801BB714 00000000 */  nop
    /* 327A0 801BB718 C0100300 */  sll        $v0, $v1, 3
    /* 327A4 801BB71C 21104300 */  addu       $v0, $v0, $v1
    /* 327A8 801BB720 80100200 */  sll        $v0, $v0, 2
    /* 327AC 801BB724 21108202 */  addu       $v0, $s4, $v0
    /* 327B0 801BB728 0100013C */  lui        $at, (0x10000 >> 16)
    /* 327B4 801BB72C 21084100 */  addu       $at, $v0, $at
    /* 327B8 801BB730 268F2390 */  lbu        $v1, -0x70DA($at)
    /* 327BC 801BB734 00000000 */  nop
    /* 327C0 801BB738 01006324 */  addiu      $v1, $v1, 0x1
    /* 327C4 801BB73C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 327C8 801BB740 21084100 */  addu       $at, $v0, $at
    /* 327CC 801BB744 268F23A0 */  sb         $v1, -0x70DA($at)
    /* 327D0 801BB748 0100013C */  lui        $at, (0x10000 >> 16)
    /* 327D4 801BB74C 21088102 */  addu       $at, $s4, $at
    /* 327D8 801BB750 A1AB2390 */  lbu        $v1, -0x545F($at)
    /* 327DC 801BB754 00000000 */  nop
    /* 327E0 801BB758 C0100300 */  sll        $v0, $v1, 3
    /* 327E4 801BB75C 21104300 */  addu       $v0, $v0, $v1
    /* 327E8 801BB760 80100200 */  sll        $v0, $v0, 2
    /* 327EC 801BB764 21108202 */  addu       $v0, $s4, $v0
    /* 327F0 801BB768 0100013C */  lui        $at, (0x10000 >> 16)
    /* 327F4 801BB76C 21084100 */  addu       $at, $v0, $at
    /* 327F8 801BB770 268F2390 */  lbu        $v1, -0x70DA($at)
    /* 327FC 801BB774 00000000 */  nop
    /* 32800 801BB778 01006324 */  addiu      $v1, $v1, 0x1
    /* 32804 801BB77C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 32808 801BB780 21084100 */  addu       $at, $v0, $at
    /* 3280C 801BB784 268F23A0 */  sb         $v1, -0x70DA($at)
    /* 32810 801BB788 36F3060C */  jal        func_801BCCD8
    /* 32814 801BB78C 00000000 */   nop
    /* 32818 801BB790 0C000224 */  addiu      $v0, $zero, 0xC
    /* 3281C 801BB794 1E80013C */  lui        $at, %hi(D_801DA5D4)
    /* 32820 801BB798 D4A522A4 */  sh         $v0, %lo(D_801DA5D4)($at)
    /* 32824 801BB79C 10000224 */  addiu      $v0, $zero, 0x10
    /* 32828 801BB7A0 1E80013C */  lui        $at, %hi(D_801DA06B)
    /* 3282C 801BB7A4 6BA020A0 */  sb         $zero, %lo(D_801DA06B)($at)
    /* 32830 801BB7A8 1E80013C */  lui        $at, %hi(D_801DA069)
    /* 32834 801BB7AC 69A020A0 */  sb         $zero, %lo(D_801DA069)($at)
    /* 32838 801BB7B0 1E80013C */  lui        $at, %hi(D_801DA06A)
    /* 3283C 801BB7B4 6AA020A0 */  sb         $zero, %lo(D_801DA06A)($at)
    /* 32840 801BB7B8 1E80013C */  lui        $at, %hi(D_801DA068)
    /* 32844 801BB7BC 68A020A0 */  sb         $zero, %lo(D_801DA068)($at)
    /* 32848 801BB7C0 1E80013C */  lui        $at, %hi(D_801DA5D0)
    /* 3284C 801BB7C4 D0A520A4 */  sh         $zero, %lo(D_801DA5D0)($at)
    /* 32850 801BB7C8 1E80013C */  lui        $at, %hi(D_801DA5D2)
    /* 32854 801BB7CC D2A520A4 */  sh         $zero, %lo(D_801DA5D2)($at)
    /* 32858 801BB7D0 1E80013C */  lui        $at, %hi(D_801DA5D6)
    /* 3285C 801BB7D4 D6A522A4 */  sh         $v0, %lo(D_801DA5D6)($at)
    /* 32860 801BB7D8 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 32864 801BB7DC 38D620A4 */  sh         $zero, %lo(D_800AD638)($at)
    /* 32868 801BB7E0 1E80013C */  lui        $at, %hi(D_801DA2F8)
    /* 3286C 801BB7E4 F8A220A0 */  sb         $zero, %lo(D_801DA2F8)($at)
    /* 32870 801BB7E8 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 32874 801BB7EC F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 32878 801BB7F0 E0F3060C */  jal        func_801BCF80
    /* 3287C 801BB7F4 00000000 */   nop
    /* 32880 801BB7F8 36F20608 */  j          .L801BC8D8
    /* 32884 801BB7FC 00000000 */   nop
  jlabel .L801BB800
    /* 32888 801BB800 5AF2060C */  jal        func_801BC968
    /* 3288C 801BB804 00000000 */   nop
    /* 32890 801BB808 4E39060C */  jal        func_8018E538
    /* 32894 801BB80C 21200000 */   addu      $a0, $zero, $zero
    /* 32898 801BB810 01000424 */  addiu      $a0, $zero, 0x1
    /* 3289C 801BB814 21000224 */  addiu      $v0, $zero, 0x21
    /* 328A0 801BB818 BBF5060C */  jal        func_801BD6EC
    /* 328A4 801BB81C A20202A2 */   sb        $v0, 0x2A2($s0)
    /* 328A8 801BB820 0100013C */  lui        $at, (0x10000 >> 16)
    /* 328AC 801BB824 21088102 */  addu       $at, $s4, $at
    /* 328B0 801BB828 DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 328B4 801BB82C 3C000224 */  addiu      $v0, $zero, 0x3C
    /* 328B8 801BB830 1E80013C */  lui        $at, %hi(D_801DA342)
    /* 328BC 801BB834 42A322A0 */  sb         $v0, %lo(D_801DA342)($at)
    /* 328C0 801BB838 1E80013C */  lui        $at, %hi(D_801DA332)
    /* 328C4 801BB83C 32A320A0 */  sb         $zero, %lo(D_801DA332)($at)
    /* 328C8 801BB840 B9F10608 */  j          .L801BC6E4
    /* 328CC 801BB844 01006324 */   addiu     $v1, $v1, 0x1
  jlabel .L801BB848
    /* 328D0 801BB848 19ED0608 */  j          .L801BB464
    /* 328D4 801BB84C 40000424 */   addiu     $a0, $zero, 0x40
  jlabel .L801BB850
    /* 328D8 801BB850 1E80023C */  lui        $v0, %hi(D_801DA342)
    /* 328DC 801BB854 42A34290 */  lbu        $v0, %lo(D_801DA342)($v0)
    /* 328E0 801BB858 00000000 */  nop
    /* 328E4 801BB85C 07004010 */  beqz       $v0, .L801BB87C
    /* 328E8 801BB860 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 328EC 801BB864 1E80013C */  lui        $at, %hi(D_801DA342)
    /* 328F0 801BB868 42A322A0 */  sb         $v0, %lo(D_801DA342)($at)
    /* 328F4 801BB86C 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 328F8 801BB870 F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 328FC 801BB874 28EE0608 */  j          .L801BB8A0
    /* 32900 801BB878 01000424 */   addiu     $a0, $zero, 0x1
  .L801BB87C:
    /* 32904 801BB87C 1E80023C */  lui        $v0, %hi(D_801DA332)
    /* 32908 801BB880 32A34290 */  lbu        $v0, %lo(D_801DA332)($v0)
    /* 3290C 801BB884 01000324 */  addiu      $v1, $zero, 0x1
    /* 32910 801BB888 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 32914 801BB88C F0A223A0 */  sb         $v1, %lo(D_801DA2F0)($at)
    /* 32918 801BB890 01004224 */  addiu      $v0, $v0, 0x1
    /* 3291C 801BB894 1E80013C */  lui        $at, %hi(D_801DA332)
    /* 32920 801BB898 32A322A0 */  sb         $v0, %lo(D_801DA332)($at)
    /* 32924 801BB89C 01000424 */  addiu      $a0, $zero, 0x1
  .L801BB8A0:
    /* 32928 801BB8A0 A33A060C */  jal        func_8018EA8C
    /* 3292C 801BB8A4 21280000 */   addu      $a1, $zero, $zero
    /* 32930 801BB8A8 78EF0608 */  j          .L801BBDE0
    /* 32934 801BB8AC 00000000 */   nop
  jlabel .L801BB8B0
    /* 32938 801BB8B0 40000424 */  addiu      $a0, $zero, 0x40
    /* 3293C 801BB8B4 37BC010C */  jal        func_8006F0DC
    /* 32940 801BB8B8 01000524 */   addiu     $a1, $zero, 0x1
    /* 32944 801BB8BC 21044010 */  beqz       $v0, .L801BC944
    /* 32948 801BB8C0 00000000 */   nop
    /* 3294C 801BB8C4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 32950 801BB8C8 21088102 */  addu       $at, $s4, $at
    /* 32954 801BB8CC DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 32958 801BB8D0 A20200A2 */  sb         $zero, 0x2A2($s0)
    /* 3295C 801BB8D4 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 32960 801BB8D8 5CA020AC */  sw         $zero, %lo(D_801DA05C)($at)
    /* 32964 801BB8DC 3BF20608 */  j          .L801BC8EC
    /* 32968 801BB8E0 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801BB8E4
    /* 3296C 801BB8E4 80010424 */  addiu      $a0, $zero, 0x180
    /* 32970 801BB8E8 DD77000C */  jal        func_8001DF74
    /* 32974 801BB8EC E0010524 */   addiu     $a1, $zero, 0x1E0
    /* 32978 801BB8F0 1E000224 */  addiu      $v0, $zero, 0x1E
    /* 3297C 801BB8F4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 32980 801BB8F8 21088102 */  addu       $at, $s4, $at
    /* 32984 801BB8FC DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 32988 801BB900 51F20608 */  j          .L801BC944
    /* 3298C 801BB904 00000000 */   nop
  jlabel .L801BB908
    /* 32990 801BB908 0100013C */  lui        $at, (0x10000 >> 16)
    /* 32994 801BB90C 21088102 */  addu       $at, $s4, $at
    /* 32998 801BB910 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 3299C 801BB914 01000324 */  addiu      $v1, $zero, 0x1
    /* 329A0 801BB918 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 329A4 801BB91C F0A223A0 */  sb         $v1, %lo(D_801DA2F0)($at)
    /* 329A8 801BB920 3BF20608 */  j          .L801BC8EC
    /* 329AC 801BB924 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801BB928
    /* 329B0 801BB928 D1F9060C */  jal        func_801BE744
    /* 329B4 801BB92C 00000000 */   nop
    /* 329B8 801BB930 36F20608 */  j          .L801BC8D8
    /* 329BC 801BB934 00000000 */   nop
  jlabel .L801BB938
    /* 329C0 801BB938 20BB010C */  jal        func_8006EC80
    /* 329C4 801BB93C 21200000 */   addu      $a0, $zero, $zero
    /* 329C8 801BB940 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 329CC 801BB944 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 329D0 801BB948 FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 329D4 801BB94C 00100224 */  addiu      $v0, $zero, 0x1000
    /* 329D8 801BB950 03006210 */  beq        $v1, $v0, .L801BB960
    /* 329DC 801BB954 00400224 */   addiu     $v0, $zero, 0x4000
    /* 329E0 801BB958 0A006214 */  bne        $v1, $v0, .L801BB984
    /* 329E4 801BB95C 00000000 */   nop
  .L801BB960:
    /* 329E8 801BB960 88AD020C */  jal        func_800AB620
    /* 329EC 801BB964 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 329F0 801BB968 21280000 */  addu       $a1, $zero, $zero
    /* 329F4 801BB96C 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 329F8 801BB970 38D68494 */  lhu        $a0, %lo(D_800AD638)($a0)
    /* 329FC 801BB974 7B39060C */  jal        func_8018E5EC
    /* 32A00 801BB978 0F000624 */   addiu     $a2, $zero, 0xF
    /* 32A04 801BB97C 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 32A08 801BB980 38D622A4 */  sh         $v0, %lo(D_800AD638)($at)
  .L801BB984:
    /* 32A0C 801BB984 1E80023C */  lui        $v0, %hi(D_801D8DFB)
    /* 32A10 801BB988 FB8D4290 */  lbu        $v0, %lo(D_801D8DFB)($v0)
    /* 32A14 801BB98C 01000324 */  addiu      $v1, $zero, 0x1
    /* 32A18 801BB990 07004310 */  beq        $v0, $v1, .L801BB9B0
    /* 32A1C 801BB994 01000424 */   addiu     $a0, $zero, 0x1
    /* 32A20 801BB998 1E80023C */  lui        $v0, %hi(D_801D8B18)
    /* 32A24 801BB99C 188B4290 */  lbu        $v0, %lo(D_801D8B18)($v0)
    /* 32A28 801BB9A0 00000000 */  nop
    /* 32A2C 801BB9A4 0C014314 */  bne        $v0, $v1, .L801BBDD8
    /* 32A30 801BB9A8 02000524 */   addiu     $a1, $zero, 0x2
    /* 32A34 801BB9AC 01000424 */  addiu      $a0, $zero, 0x1
  .L801BB9B0:
    /* 32A38 801BB9B0 A33A060C */  jal        func_8018EA8C
    /* 32A3C 801BB9B4 21280000 */   addu      $a1, $zero, $zero
    /* 32A40 801BB9B8 78EF0608 */  j          .L801BBDE0
    /* 32A44 801BB9BC 00000000 */   nop
  jlabel .L801BB9C0
    /* 32A48 801BB9C0 28000224 */  addiu      $v0, $zero, 0x28
    /* 32A4C 801BB9C4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 32A50 801BB9C8 21088102 */  addu       $at, $s4, $at
    /* 32A54 801BB9CC DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 32A58 801BB9D0 51F20608 */  j          .L801BC944
    /* 32A5C 801BB9D4 00000000 */   nop
  jlabel .L801BB9D8
    /* 32A60 801BB9D8 10000424 */  addiu      $a0, $zero, 0x10
    /* 32A64 801BB9DC 37BC010C */  jal        func_8006F0DC
    /* 32A68 801BB9E0 01000524 */   addiu     $a1, $zero, 0x1
    /* 32A6C 801BB9E4 D7034010 */  beqz       $v0, .L801BC944
    /* 32A70 801BB9E8 00000000 */   nop
    /* 32A74 801BB9EC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 32A78 801BB9F0 21088102 */  addu       $at, $s4, $at
    /* 32A7C 801BB9F4 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 32A80 801BB9F8 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 32A84 801BB9FC 5CA020AC */  sw         $zero, %lo(D_801DA05C)($at)
    /* 32A88 801BBA00 1E80013C */  lui        $at, %hi(D_801DA332)
    /* 32A8C 801BBA04 32A320A0 */  sb         $zero, %lo(D_801DA332)($at)
    /* 32A90 801BBA08 3BF20608 */  j          .L801BC8EC
    /* 32A94 801BBA0C 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801BBA10
    /* 32A98 801BBA10 4E39060C */  jal        func_8018E538
    /* 32A9C 801BBA14 21200000 */   addu      $a0, $zero, $zero
    /* 32AA0 801BBA18 80010424 */  addiu      $a0, $zero, 0x180
    /* 32AA4 801BBA1C DD77000C */  jal        func_8001DF74
    /* 32AA8 801BBA20 F0000524 */   addiu     $a1, $zero, 0xF0
    /* 32AAC 801BBA24 15000224 */  addiu      $v0, $zero, 0x15
    /* 32AB0 801BBA28 1E80013C */  lui        $at, %hi(D_801DA2F8)
    /* 32AB4 801BBA2C F8A220A0 */  sb         $zero, %lo(D_801DA2F8)($at)
    /* 32AB8 801BBA30 0100013C */  lui        $at, (0x10000 >> 16)
    /* 32ABC 801BBA34 21088102 */  addu       $at, $s4, $at
    /* 32AC0 801BBA38 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 32AC4 801BBA3C 51F20608 */  j          .L801BC944
    /* 32AC8 801BBA40 00000000 */   nop
  jlabel .L801BBA44
    /* 32ACC 801BBA44 21200000 */  addu       $a0, $zero, $zero
    /* 32AD0 801BBA48 21280000 */  addu       $a1, $zero, $zero
    /* 32AD4 801BBA4C 1E80063C */  lui        $a2, %hi(D_801D8D78)
    /* 32AD8 801BBA50 788DC624 */  addiu      $a2, $a2, %lo(D_801D8D78)
    /* 32ADC 801BBA54 01000724 */  addiu      $a3, $zero, 0x1
    /* 32AE0 801BBA58 01000224 */  addiu      $v0, $zero, 0x1
    /* 32AE4 801BBA5C 01000324 */  addiu      $v1, $zero, 0x1
    /* 32AE8 801BBA60 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 32AEC 801BBA64 F0A222A0 */  sb         $v0, %lo(D_801DA2F0)($at)
  .L801BBA68:
    /* 32AF0 801BBA68 90000224 */  addiu      $v0, $zero, 0x90
    /* 32AF4 801BBA6C 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 32AF8 801BBA70 5FFF0224 */  addiu      $v0, $zero, -0xA1
    /* 32AFC 801BBA74 1E80013C */  lui        $at, %hi(D_801D8D7A)
    /* 32B00 801BBA78 7A8D22A4 */  sh         $v0, %lo(D_801D8D7A)($at)
    /* 32B04 801BBA7C 1C000224 */  addiu      $v0, $zero, 0x1C
    /* 32B08 801BBA80 1E80013C */  lui        $at, %hi(D_801D8D7C)
    /* 32B0C 801BBA84 7C8D22A4 */  sh         $v0, %lo(D_801D8D7C)($at)
    /* 32B10 801BBA88 60010224 */  addiu      $v0, $zero, 0x160
    /* 32B14 801BBA8C 1E80013C */  lui        $at, %hi(D_801D8D7E)
    /* 32B18 801BBA90 7E8D22A4 */  sh         $v0, %lo(D_801D8D7E)($at)
    /* 32B1C 801BBA94 60000224 */  addiu      $v0, $zero, 0x60
    /* 32B20 801BBA98 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 32B24 801BBA9C 58A023AC */  sw         $v1, %lo(D_801DA058)($at)
    /* 32B28 801BBAA0 1E80013C */  lui        $at, %hi(D_801D8D80)
    /* 32B2C 801BBAA4 808D20A0 */  sb         $zero, %lo(D_801D8D80)($at)
    /* 32B30 801BBAA8 1E80013C */  lui        $at, %hi(D_801D8D81)
    /* 32B34 801BBAAC 818D20A0 */  sb         $zero, %lo(D_801D8D81)($at)
    /* 32B38 801BBAB0 1E80013C */  lui        $at, %hi(D_801D8D82)
    /* 32B3C 801BBAB4 828D22A0 */  sb         $v0, %lo(D_801D8D82)($at)
    /* 32B40 801BBAB8 1E80013C */  lui        $at, %hi(D_801D8D83)
    /* 32B44 801BBABC 838D20A0 */  sb         $zero, %lo(D_801D8D83)($at)
    /* 32B48 801BBAC0 1E80013C */  lui        $at, %hi(D_801D8D84)
    /* 32B4C 801BBAC4 848D20A0 */  sb         $zero, %lo(D_801D8D84)($at)
    /* 32B50 801BBAC8 1E80013C */  lui        $at, %hi(D_801D8D85)
    /* 32B54 801BBACC 858D20A0 */  sb         $zero, %lo(D_801D8D85)($at)
    /* 32B58 801BBAD0 1000A3AF */  sw         $v1, 0x10($sp)
    /* 32B5C 801BBAD4 3B50060C */  jal        func_801940EC
    /* 32B60 801BBAD8 1400A3AF */   sw        $v1, 0x14($sp)
    /* 32B64 801BBADC 36F20608 */  j          .L801BC8D8
    /* 32B68 801BBAE0 00000000 */   nop
  jlabel .L801BBAE4
    /* 32B6C 801BBAE4 1E80043C */  lui        $a0, %hi(D_801DA058)
    /* 32B70 801BBAE8 58A0848C */  lw         $a0, %lo(D_801DA058)($a0)
    /* 32B74 801BBAEC 07000324 */  addiu      $v1, $zero, 0x7
    /* 32B78 801BBAF0 23186400 */  subu       $v1, $v1, $a0
    /* 32B7C 801BBAF4 C0100300 */  sll        $v0, $v1, 3
    /* 32B80 801BBAF8 23104300 */  subu       $v0, $v0, $v1
    /* 32B84 801BBAFC 80100200 */  sll        $v0, $v0, 2
    /* 32B88 801BBB00 CCFF4224 */  addiu      $v0, $v0, -0x34
    /* 32B8C 801BBB04 1E80013C */  lui        $at, %hi(D_801D92A8)
    /* 32B90 801BBB08 A89222A4 */  sh         $v0, %lo(D_801D92A8)($at)
    /* 32B94 801BBB0C C0100400 */  sll        $v0, $a0, 3
    /* 32B98 801BBB10 23104400 */  subu       $v0, $v0, $a0
    /* 32B9C 801BBB14 80100200 */  sll        $v0, $v0, 2
    /* 32BA0 801BBB18 1C004224 */  addiu      $v0, $v0, 0x1C
    /* 32BA4 801BBB1C 1E80013C */  lui        $at, %hi(D_801D92AC)
    /* 32BA8 801BBB20 AC9222A4 */  sh         $v0, %lo(D_801D92AC)($at)
    /* 32BAC 801BBB24 01008224 */  addiu      $v0, $a0, 0x1
    /* 32BB0 801BBB28 07008428 */  slti       $a0, $a0, 0x7
    /* 32BB4 801BBB2C 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 32BB8 801BBB30 58A022AC */  sw         $v0, %lo(D_801DA058)($at)
    /* 32BBC 801BBB34 68038010 */  beqz       $a0, .L801BC8D8
    /* 32BC0 801BBB38 00000000 */   nop
    /* 32BC4 801BBB3C 51F20608 */  j          .L801BC944
    /* 32BC8 801BBB40 00000000 */   nop
  jlabel .L801BBB44
    /* 32BCC 801BBB44 14000424 */  addiu      $a0, $zero, 0x14
    /* 32BD0 801BBB48 21280000 */  addu       $a1, $zero, $zero
    /* 32BD4 801BBB4C 23000224 */  addiu      $v0, $zero, 0x23
    /* 32BD8 801BBB50 A1BE010C */  jal        func_8006FA84
    /* 32BDC 801BBB54 A20202A2 */   sb        $v0, 0x2A2($s0)
    /* 32BE0 801BBB58 15000424 */  addiu      $a0, $zero, 0x15
    /* 32BE4 801BBB5C A1BE010C */  jal        func_8006FA84
    /* 32BE8 801BBB60 01000524 */   addiu     $a1, $zero, 0x1
    /* 32BEC 801BBB64 21200000 */  addu       $a0, $zero, $zero
  .L801BBB68:
    /* 32BF0 801BBB68 21280000 */  addu       $a1, $zero, $zero
    /* 32BF4 801BBB6C 1E80063C */  lui        $a2, %hi(D_801D8D78)
    /* 32BF8 801BBB70 788DC624 */  addiu      $a2, $a2, %lo(D_801D8D78)
    /* 32BFC 801BBB74 01000724 */  addiu      $a3, $zero, 0x1
    /* 32C00 801BBB78 CCFF0224 */  addiu      $v0, $zero, -0x34
    /* 32C04 801BBB7C 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 32C08 801BBB80 5FFF0224 */  addiu      $v0, $zero, -0xA1
    /* 32C0C 801BBB84 1E80013C */  lui        $at, %hi(D_801D8D7A)
    /* 32C10 801BBB88 7A8D22A4 */  sh         $v0, %lo(D_801D8D7A)($at)
    /* 32C14 801BBB8C E0000224 */  addiu      $v0, $zero, 0xE0
    /* 32C18 801BBB90 1E80013C */  lui        $at, %hi(D_801D8D7C)
    /* 32C1C 801BBB94 7C8D22A4 */  sh         $v0, %lo(D_801D8D7C)($at)
    /* 32C20 801BBB98 60010224 */  addiu      $v0, $zero, 0x160
    /* 32C24 801BBB9C 1E80013C */  lui        $at, %hi(D_801D8D7E)
    /* 32C28 801BBBA0 7E8D22A4 */  sh         $v0, %lo(D_801D8D7E)($at)
    /* 32C2C 801BBBA4 05000224 */  addiu      $v0, $zero, 0x5
    /* 32C30 801BBBA8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 32C34 801BBBAC 01000224 */  addiu      $v0, $zero, 0x1
  .L801BBBB0:
    /* 32C38 801BBBB0 3B50060C */  jal        func_801940EC
    /* 32C3C 801BBBB4 1400A2AF */   sw        $v0, 0x14($sp)
    /* 32C40 801BBBB8 36F20608 */  j          .L801BC8D8
    /* 32C44 801BBBBC 00000000 */   nop
  jlabel .L801BBBC0
    /* 32C48 801BBBC0 32000224 */  addiu      $v0, $zero, 0x32
    /* 32C4C 801BBBC4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 32C50 801BBBC8 21088102 */  addu       $at, $s4, $at
    /* 32C54 801BBBCC DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 32C58 801BBBD0 51F20608 */  j          .L801BC944
    /* 32C5C 801BBBD4 00000000 */   nop
  jlabel .L801BBBD8
    /* 32C60 801BBBD8 21200000 */  addu       $a0, $zero, $zero
    /* 32C64 801BBBDC 21280000 */  addu       $a1, $zero, $zero
    /* 32C68 801BBBE0 1E80063C */  lui        $a2, %hi(D_801D8D78)
    /* 32C6C 801BBBE4 788DC624 */  addiu      $a2, $a2, %lo(D_801D8D78)
    /* 32C70 801BBBE8 01000724 */  addiu      $a3, $zero, 0x1
    /* 32C74 801BBBEC 07000224 */  addiu      $v0, $zero, 0x7
    /* 32C78 801BBBF0 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 32C7C 801BBBF4 58A022AC */  sw         $v0, %lo(D_801DA058)($at)
    /* 32C80 801BBBF8 22000224 */  addiu      $v0, $zero, 0x22
    /* 32C84 801BBBFC A20202A2 */  sb         $v0, 0x2A2($s0)
    /* 32C88 801BBC00 01000224 */  addiu      $v0, $zero, 0x1
    /* 32C8C 801BBC04 E46082A2 */  sb         $v0, 0x60E4($s4)
    /* 32C90 801BBC08 CCFF0224 */  addiu      $v0, $zero, -0x34
    /* 32C94 801BBC0C 0C6180A2 */  sb         $zero, 0x610C($s4)
    /* 32C98 801BBC10 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 32C9C 801BBC14 5FFF0224 */  addiu      $v0, $zero, -0xA1
    /* 32CA0 801BBC18 1E80013C */  lui        $at, %hi(D_801D8D7A)
    /* 32CA4 801BBC1C 7A8D22A4 */  sh         $v0, %lo(D_801D8D7A)($at)
    /* 32CA8 801BBC20 E0000224 */  addiu      $v0, $zero, 0xE0
    /* 32CAC 801BBC24 1E80013C */  lui        $at, %hi(D_801D8D7C)
    /* 32CB0 801BBC28 7C8D22A4 */  sh         $v0, %lo(D_801D8D7C)($at)
    /* 32CB4 801BBC2C 60010224 */  addiu      $v0, $zero, 0x160
    /* 32CB8 801BBC30 1E80013C */  lui        $at, %hi(D_801D8D7E)
    /* 32CBC 801BBC34 7E8D22A4 */  sh         $v0, %lo(D_801D8D7E)($at)
    /* 32CC0 801BBC38 01000224 */  addiu      $v0, $zero, 0x1
    /* 32CC4 801BBC3C ECEE0608 */  j          .L801BBBB0
    /* 32CC8 801BBC40 1000A2AF */   sw        $v0, 0x10($sp)
  jlabel .L801BBC44
    /* 32CCC 801BBC44 1E80043C */  lui        $a0, %hi(D_801DA058)
    /* 32CD0 801BBC48 58A0848C */  lw         $a0, %lo(D_801DA058)($a0)
    /* 32CD4 801BBC4C 07000324 */  addiu      $v1, $zero, 0x7
    /* 32CD8 801BBC50 23186400 */  subu       $v1, $v1, $a0
    /* 32CDC 801BBC54 C0100300 */  sll        $v0, $v1, 3
    /* 32CE0 801BBC58 23104300 */  subu       $v0, $v0, $v1
    /* 32CE4 801BBC5C 80100200 */  sll        $v0, $v0, 2
    /* 32CE8 801BBC60 CCFF4224 */  addiu      $v0, $v0, -0x34
    /* 32CEC 801BBC64 1E80013C */  lui        $at, %hi(D_801D92A8)
    /* 32CF0 801BBC68 A89222A4 */  sh         $v0, %lo(D_801D92A8)($at)
    /* 32CF4 801BBC6C C0100400 */  sll        $v0, $a0, 3
    /* 32CF8 801BBC70 23104400 */  subu       $v0, $v0, $a0
    /* 32CFC 801BBC74 80100200 */  sll        $v0, $v0, 2
    /* 32D00 801BBC78 1C004224 */  addiu      $v0, $v0, 0x1C
    /* 32D04 801BBC7C FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 32D08 801BBC80 1E80013C */  lui        $at, %hi(D_801D92AC)
    /* 32D0C 801BBC84 AC9222A4 */  sh         $v0, %lo(D_801D92AC)($at)
    /* 32D10 801BBC88 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 32D14 801BBC8C 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 32D18 801BBC90 58A024AC */  sw         $a0, %lo(D_801DA058)($at)
    /* 32D1C 801BBC94 2B038214 */  bne        $a0, $v0, .L801BC944
    /* 32D20 801BBC98 21000224 */   addiu     $v0, $zero, 0x21
    /* 32D24 801BBC9C 1E80013C */  lui        $at, %hi(D_801D92A3)
    /* 32D28 801BBCA0 A39220A0 */  sb         $zero, %lo(D_801D92A3)($at)
    /* 32D2C 801BBCA4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 32D30 801BBCA8 21088102 */  addu       $at, $s4, $at
    /* 32D34 801BBCAC DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 32D38 801BBCB0 51F20608 */  j          .L801BC944
    /* 32D3C 801BBCB4 00000000 */   nop
  jlabel .L801BBCB8
    /* 32D40 801BBCB8 01000224 */  addiu      $v0, $zero, 0x1
    /* 32D44 801BBCBC 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 32D48 801BBCC0 F0A222A0 */  sb         $v0, %lo(D_801DA2F0)($at)
    /* 32D4C 801BBCC4 FCF4060C */  jal        func_801BD3F0
    /* 32D50 801BBCC8 00000000 */   nop
    /* 32D54 801BBCCC 01000424 */  addiu      $a0, $zero, 0x1
    /* 32D58 801BBCD0 21280000 */  addu       $a1, $zero, $zero
    /* 32D5C 801BBCD4 1E80063C */  lui        $a2, %hi(D_801D8D78)
    /* 32D60 801BBCD8 788DC624 */  addiu      $a2, $a2, %lo(D_801D8D78)
    /* 32D64 801BBCDC 01000724 */  addiu      $a3, $zero, 0x1
    /* 32D68 801BBCE0 9AEE0608 */  j          .L801BBA68
    /* 32D6C 801BBCE4 01000324 */   addiu     $v1, $zero, 0x1
  jlabel .L801BBCE8
    /* 32D70 801BBCE8 1E80033C */  lui        $v1, %hi(D_801DA058)
    /* 32D74 801BBCEC 58A0638C */  lw         $v1, %lo(D_801DA058)($v1)
    /* 32D78 801BBCF0 07000524 */  addiu      $a1, $zero, 0x7
    /* 32D7C 801BBCF4 2320A300 */  subu       $a0, $a1, $v1
    /* 32D80 801BBCF8 C0100400 */  sll        $v0, $a0, 3
    /* 32D84 801BBCFC 23104400 */  subu       $v0, $v0, $a0
    /* 32D88 801BBD00 80100200 */  sll        $v0, $v0, 2
    /* 32D8C 801BBD04 CCFF4224 */  addiu      $v0, $v0, -0x34
    /* 32D90 801BBD08 1E80013C */  lui        $at, %hi(D_801D92C4)
    /* 32D94 801BBD0C C49222A4 */  sh         $v0, %lo(D_801D92C4)($at)
    /* 32D98 801BBD10 C0100300 */  sll        $v0, $v1, 3
    /* 32D9C 801BBD14 23104300 */  subu       $v0, $v0, $v1
    /* 32DA0 801BBD18 80100200 */  sll        $v0, $v0, 2
    /* 32DA4 801BBD1C 1C004224 */  addiu      $v0, $v0, 0x1C
    /* 32DA8 801BBD20 1E80013C */  lui        $at, %hi(D_801D92C8)
    /* 32DAC 801BBD24 C89222A4 */  sh         $v0, %lo(D_801D92C8)($at)
    /* 32DB0 801BBD28 01006224 */  addiu      $v0, $v1, 0x1
    /* 32DB4 801BBD2C 07006328 */  slti       $v1, $v1, 0x7
    /* 32DB8 801BBD30 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 32DBC 801BBD34 58A022AC */  sw         $v0, %lo(D_801DA058)($at)
    /* 32DC0 801BBD38 02036014 */  bnez       $v1, .L801BC944
    /* 32DC4 801BBD3C 00000000 */   nop
    /* 32DC8 801BBD40 0100013C */  lui        $at, (0x10000 >> 16)
    /* 32DCC 801BBD44 21088102 */  addu       $at, $s4, $at
    /* 32DD0 801BBD48 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 32DD4 801BBD4C 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 32DD8 801BBD50 58A025AC */  sw         $a1, %lo(D_801DA058)($at)
    /* 32DDC 801BBD54 3BF20608 */  j          .L801BC8EC
    /* 32DE0 801BBD58 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801BBD5C
    /* 32DE4 801BBD5C 14000424 */  addiu      $a0, $zero, 0x14
    /* 32DE8 801BBD60 21280000 */  addu       $a1, $zero, $zero
    /* 32DEC 801BBD64 24000224 */  addiu      $v0, $zero, 0x24
    /* 32DF0 801BBD68 A1BE010C */  jal        func_8006FA84
    /* 32DF4 801BBD6C A20202A2 */   sb        $v0, 0x2A2($s0)
    /* 32DF8 801BBD70 15000424 */  addiu      $a0, $zero, 0x15
    /* 32DFC 801BBD74 A1BE010C */  jal        func_8006FA84
    /* 32E00 801BBD78 01000524 */   addiu     $a1, $zero, 0x1
    /* 32E04 801BBD7C DAEE0608 */  j          .L801BBB68
    /* 32E08 801BBD80 01000424 */   addiu     $a0, $zero, 0x1
  jlabel .L801BBD84
    /* 32E0C 801BBD84 20BB010C */  jal        func_8006EC80
    /* 32E10 801BBD88 21200000 */   addu      $a0, $zero, $zero
    /* 32E14 801BBD8C 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 32E18 801BBD90 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 32E1C 801BBD94 FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 32E20 801BBD98 00100224 */  addiu      $v0, $zero, 0x1000
    /* 32E24 801BBD9C 03006210 */  beq        $v1, $v0, .L801BBDAC
    /* 32E28 801BBDA0 00400224 */   addiu     $v0, $zero, 0x4000
    /* 32E2C 801BBDA4 0B006214 */  bne        $v1, $v0, .L801BBDD4
    /* 32E30 801BBDA8 01000424 */   addiu     $a0, $zero, 0x1
  .L801BBDAC:
    /* 32E34 801BBDAC 88AD020C */  jal        func_800AB620
    /* 32E38 801BBDB0 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 32E3C 801BBDB4 21280000 */  addu       $a1, $zero, $zero
    /* 32E40 801BBDB8 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 32E44 801BBDBC 38D68494 */  lhu        $a0, %lo(D_800AD638)($a0)
    /* 32E48 801BBDC0 7B39060C */  jal        func_8018E5EC
    /* 32E4C 801BBDC4 0F000624 */   addiu     $a2, $zero, 0xF
    /* 32E50 801BBDC8 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 32E54 801BBDCC 38D622A4 */  sh         $v0, %lo(D_800AD638)($at)
    /* 32E58 801BBDD0 01000424 */  addiu      $a0, $zero, 0x1
  .L801BBDD4:
    /* 32E5C 801BBDD4 02000524 */  addiu      $a1, $zero, 0x2
  .L801BBDD8:
    /* 32E60 801BBDD8 BD3A060C */  jal        func_8018EAF4
    /* 32E64 801BBDDC 21300000 */   addu      $a2, $zero, $zero
  .L801BBDE0:
    /* 32E68 801BBDE0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 32E6C 801BBDE4 21088102 */  addu       $at, $s4, $at
    /* 32E70 801BBDE8 DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 32E74 801BBDEC 00000000 */  nop
    /* 32E78 801BBDF0 21186200 */  addu       $v1, $v1, $v0
    /* 32E7C 801BBDF4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 32E80 801BBDF8 21088102 */  addu       $at, $s4, $at
    /* 32E84 801BBDFC DAAB23A0 */  sb         $v1, -0x5426($at)
    /* 32E88 801BBE00 51F20608 */  j          .L801BC944
    /* 32E8C 801BBE04 00000000 */   nop
  jlabel .L801BBE08
    /* 32E90 801BBE08 40000424 */  addiu      $a0, $zero, 0x40
    /* 32E94 801BBE0C 37BC010C */  jal        func_8006F0DC
    /* 32E98 801BBE10 01000524 */   addiu     $a1, $zero, 0x1
    /* 32E9C 801BBE14 CB024010 */  beqz       $v0, .L801BC944
    /* 32EA0 801BBE18 3C000224 */   addiu     $v0, $zero, 0x3C
    /* 32EA4 801BBE1C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 32EA8 801BBE20 21088102 */  addu       $at, $s4, $at
    /* 32EAC 801BBE24 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 32EB0 801BBE28 51F20608 */  j          .L801BC944
    /* 32EB4 801BBE2C 00000000 */   nop
  jlabel .L801BBE30
    /* 32EB8 801BBE30 01000424 */  addiu      $a0, $zero, 0x1
    /* 32EBC 801BBE34 21280000 */  addu       $a1, $zero, $zero
    /* 32EC0 801BBE38 1E80063C */  lui        $a2, %hi(D_801D8D78)
    /* 32EC4 801BBE3C 788DC624 */  addiu      $a2, $a2, %lo(D_801D8D78)
    /* 32EC8 801BBE40 01000724 */  addiu      $a3, $zero, 0x1
    /* 32ECC 801BBE44 23000224 */  addiu      $v0, $zero, 0x23
    /* 32ED0 801BBE48 A20202A2 */  sb         $v0, 0x2A2($s0)
    /* 32ED4 801BBE4C CCFF0224 */  addiu      $v0, $zero, -0x34
    /* 32ED8 801BBE50 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 32EDC 801BBE54 5FFF0224 */  addiu      $v0, $zero, -0xA1
    /* 32EE0 801BBE58 1E80013C */  lui        $at, %hi(D_801D8D7A)
    /* 32EE4 801BBE5C 7A8D22A4 */  sh         $v0, %lo(D_801D8D7A)($at)
    /* 32EE8 801BBE60 E0000224 */  addiu      $v0, $zero, 0xE0
    /* 32EEC 801BBE64 1E80013C */  lui        $at, %hi(D_801D8D7C)
    /* 32EF0 801BBE68 7C8D22A4 */  sh         $v0, %lo(D_801D8D7C)($at)
    /* 32EF4 801BBE6C 60010224 */  addiu      $v0, $zero, 0x160
    /* 32EF8 801BBE70 1E80013C */  lui        $at, %hi(D_801D8D7E)
    /* 32EFC 801BBE74 7E8D22A4 */  sh         $v0, %lo(D_801D8D7E)($at)
    /* 32F00 801BBE78 01000224 */  addiu      $v0, $zero, 0x1
    /* 32F04 801BBE7C ECEE0608 */  j          .L801BBBB0
    /* 32F08 801BBE80 1000A2AF */   sw        $v0, 0x10($sp)
  jlabel .L801BBE84
    /* 32F0C 801BBE84 1E80043C */  lui        $a0, %hi(D_801DA058)
    /* 32F10 801BBE88 58A0848C */  lw         $a0, %lo(D_801DA058)($a0)
    /* 32F14 801BBE8C 07000324 */  addiu      $v1, $zero, 0x7
    /* 32F18 801BBE90 23186400 */  subu       $v1, $v1, $a0
    /* 32F1C 801BBE94 C0100300 */  sll        $v0, $v1, 3
    /* 32F20 801BBE98 23104300 */  subu       $v0, $v0, $v1
    /* 32F24 801BBE9C 80100200 */  sll        $v0, $v0, 2
    /* 32F28 801BBEA0 CCFF4224 */  addiu      $v0, $v0, -0x34
    /* 32F2C 801BBEA4 1E80013C */  lui        $at, %hi(D_801D92C4)
    /* 32F30 801BBEA8 C49222A4 */  sh         $v0, %lo(D_801D92C4)($at)
    /* 32F34 801BBEAC C0100400 */  sll        $v0, $a0, 3
    /* 32F38 801BBEB0 23104400 */  subu       $v0, $v0, $a0
    /* 32F3C 801BBEB4 80100200 */  sll        $v0, $v0, 2
    /* 32F40 801BBEB8 1C004224 */  addiu      $v0, $v0, 0x1C
    /* 32F44 801BBEBC FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 32F48 801BBEC0 1E80013C */  lui        $at, %hi(D_801D92C8)
    /* 32F4C 801BBEC4 C89222A4 */  sh         $v0, %lo(D_801D92C8)($at)
    /* 32F50 801BBEC8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 32F54 801BBECC 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 32F58 801BBED0 58A024AC */  sw         $a0, %lo(D_801DA058)($at)
    /* 32F5C 801BBED4 9B028214 */  bne        $a0, $v0, .L801BC944
    /* 32F60 801BBED8 2A000224 */   addiu     $v0, $zero, 0x2A
    /* 32F64 801BBEDC 1E80013C */  lui        $at, %hi(D_801D92BF)
    /* 32F68 801BBEE0 BF9220A0 */  sb         $zero, %lo(D_801D92BF)($at)
    /* 32F6C 801BBEE4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 32F70 801BBEE8 21088102 */  addu       $at, $s4, $at
    /* 32F74 801BBEEC DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 32F78 801BBEF0 51F20608 */  j          .L801BC944
    /* 32F7C 801BBEF4 00000000 */   nop
  jlabel .L801BBEF8
    /* 32F80 801BBEF8 01000224 */  addiu      $v0, $zero, 0x1
    /* 32F84 801BBEFC 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 32F88 801BBF00 F0A222A0 */  sb         $v0, %lo(D_801DA2F0)($at)
    /* 32F8C 801BBF04 4E39060C */  jal        func_8018E538
    /* 32F90 801BBF08 21200000 */   addu      $a0, $zero, $zero
    /* 32F94 801BBF0C D7FC060C */  jal        func_801BF35C
    /* 32F98 801BBF10 00000000 */   nop
    /* 32F9C 801BBF14 36F20608 */  j          .L801BC8D8
    /* 32FA0 801BBF18 00000000 */   nop
  jlabel .L801BBF1C
    /* 32FA4 801BBF1C 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 32FA8 801BBF20 A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 32FAC 801BBF24 00100224 */  addiu      $v0, $zero, 0x1000
    /* 32FB0 801BBF28 17006210 */  beq        $v1, $v0, .L801BBF88
    /* 32FB4 801BBF2C 01106228 */   slti      $v0, $v1, 0x1001
    /* 32FB8 801BBF30 07004010 */  beqz       $v0, .L801BBF50
    /* 32FBC 801BBF34 20000224 */   addiu     $v0, $zero, 0x20
    /* 32FC0 801BBF38 1F006210 */  beq        $v1, $v0, .L801BBFB8
    /* 32FC4 801BBF3C 40000224 */   addiu     $v0, $zero, 0x40
    /* 32FC8 801BBF40 20006210 */  beq        $v1, $v0, .L801BBFC4
    /* 32FCC 801BBF44 29050424 */   addiu     $a0, $zero, 0x529
    /* 32FD0 801BBF48 16F00608 */  j          .L801BC058
    /* 32FD4 801BBF4C 00000000 */   nop
  .L801BBF50:
    /* 32FD8 801BBF50 00400224 */  addiu      $v0, $zero, 0x4000
    /* 32FDC 801BBF54 0C006210 */  beq        $v1, $v0, .L801BBF88
    /* 32FE0 801BBF58 01406228 */   slti      $v0, $v1, 0x4001
    /* 32FE4 801BBF5C 05004010 */  beqz       $v0, .L801BBF74
    /* 32FE8 801BBF60 00200224 */   addiu     $v0, $zero, 0x2000
    /* 32FEC 801BBF64 2F006210 */  beq        $v1, $v0, .L801BC024
    /* 32FF0 801BBF68 10000324 */   addiu     $v1, $zero, 0x10
    /* 32FF4 801BBF6C 16F00608 */  j          .L801BC058
    /* 32FF8 801BBF70 00000000 */   nop
  .L801BBF74:
    /* 32FFC 801BBF74 00800234 */  ori        $v0, $zero, 0x8000
    /* 33000 801BBF78 21006210 */  beq        $v1, $v0, .L801BC000
    /* 33004 801BBF7C 00000000 */   nop
    /* 33008 801BBF80 16F00608 */  j          .L801BC058
    /* 3300C 801BBF84 00000000 */   nop
  .L801BBF88:
    /* 33010 801BBF88 88AD020C */  jal        func_800AB620
    /* 33014 801BBF8C 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 33018 801BBF90 21280000 */  addu       $a1, $zero, $zero
    /* 3301C 801BBF94 1E80103C */  lui        $s0, %hi(D_801DA5D2)
    /* 33020 801BBF98 D2A51026 */  addiu      $s0, $s0, %lo(D_801DA5D2)
    /* 33024 801BBF9C 1E80063C */  lui        $a2, %hi(D_801DA5D6)
    /* 33028 801BBFA0 D6A5C684 */  lh         $a2, %lo(D_801DA5D6)($a2)
    /* 3302C 801BBFA4 00000486 */  lh         $a0, 0x0($s0)
    /* 33030 801BBFA8 7B39060C */  jal        func_8018E5EC
    /* 33034 801BBFAC FFFFC624 */   addiu     $a2, $a2, -0x1
    /* 33038 801BBFB0 16F00608 */  j          .L801BC058
    /* 3303C 801BBFB4 000002A6 */   sh        $v0, 0x0($s0)
  .L801BBFB8:
    /* 33040 801BBFB8 28050424 */  addiu      $a0, $zero, 0x528
    /* 33044 801BBFBC F2EF0608 */  j          .L801BBFC8
    /* 33048 801BBFC0 02000224 */   addiu     $v0, $zero, 0x2
  .L801BBFC4:
    /* 3304C 801BBFC4 01000224 */  addiu      $v0, $zero, 0x1
  .L801BBFC8:
    /* 33050 801BBFC8 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 33054 801BBFCC 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
    /* 33058 801BBFD0 88AD020C */  jal        func_800AB620
    /* 3305C 801BBFD4 00000000 */   nop
    /* 33060 801BBFD8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33064 801BBFDC 21088102 */  addu       $at, $s4, $at
    /* 33068 801BBFE0 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 3306C 801BBFE4 00000000 */  nop
    /* 33070 801BBFE8 01004224 */  addiu      $v0, $v0, 0x1
    /* 33074 801BBFEC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33078 801BBFF0 21088102 */  addu       $at, $s4, $at
    /* 3307C 801BBFF4 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 33080 801BBFF8 16F00608 */  j          .L801BC058
    /* 33084 801BBFFC 00000000 */   nop
  .L801BC000:
    /* 33088 801BC000 1E80043C */  lui        $a0, %hi(D_801DA5D0)
    /* 3308C 801BC004 D0A58424 */  addiu      $a0, $a0, %lo(D_801DA5D0)
    /* 33090 801BC008 00008284 */  lh         $v0, 0x0($a0)
    /* 33094 801BC00C 00000000 */  nop
    /* 33098 801BC010 11004010 */  beqz       $v0, .L801BC058
    /* 3309C 801BC014 21184000 */   addu      $v1, $v0, $zero
    /* 330A0 801BC018 FFFF6224 */  addiu      $v0, $v1, -0x1
    /* 330A4 801BC01C 14F00608 */  j          .L801BC050
    /* 330A8 801BC020 000082A4 */   sh        $v0, 0x0($a0)
  .L801BC024:
    /* 330AC 801BC024 1E80063C */  lui        $a2, %hi(D_801DA5D0)
    /* 330B0 801BC028 D0A5C624 */  addiu      $a2, $a2, %lo(D_801DA5D0)
    /* 330B4 801BC02C 0000C284 */  lh         $v0, 0x0($a2)
    /* 330B8 801BC030 1E80043C */  lui        $a0, %hi(D_801DA5D4)
    /* 330BC 801BC034 D4A58484 */  lh         $a0, %lo(D_801DA5D4)($a0)
    /* 330C0 801BC038 21284000 */  addu       $a1, $v0, $zero
    /* 330C4 801BC03C 23186400 */  subu       $v1, $v1, $a0
    /* 330C8 801BC040 2A104300 */  slt        $v0, $v0, $v1
    /* 330CC 801BC044 04004010 */  beqz       $v0, .L801BC058
    /* 330D0 801BC048 0100A224 */   addiu     $v0, $a1, 0x1
    /* 330D4 801BC04C 0000C2A4 */  sh         $v0, 0x0($a2)
  .L801BC050:
    /* 330D8 801BC050 88AD020C */  jal        func_800AB620
    /* 330DC 801BC054 0D050424 */   addiu     $a0, $zero, 0x50D
  .L801BC058:
    /* 330E0 801BC058 C9FE060C */  jal        func_801BFB24
    /* 330E4 801BC05C 00000000 */   nop
    /* 330E8 801BC060 51F20608 */  j          .L801BC944
    /* 330EC 801BC064 00000000 */   nop
  jlabel .L801BC068
    /* 330F0 801BC068 10000424 */  addiu      $a0, $zero, 0x10
    /* 330F4 801BC06C 37BC010C */  jal        func_8006F0DC
    /* 330F8 801BC070 01000524 */   addiu     $a1, $zero, 0x1
    /* 330FC 801BC074 33024010 */  beqz       $v0, .L801BC944
    /* 33100 801BC078 01000224 */   addiu     $v0, $zero, 0x1
    /* 33104 801BC07C 1E80033C */  lui        $v1, %hi(D_801DAE50)
    /* 33108 801BC080 50AE6390 */  lbu        $v1, %lo(D_801DAE50)($v1)
    /* 3310C 801BC084 00000000 */  nop
    /* 33110 801BC088 13026210 */  beq        $v1, $v0, .L801BC8D8
    /* 33114 801BC08C 80010424 */   addiu     $a0, $zero, 0x180
    /* 33118 801BC090 DD77000C */  jal        func_8001DF74
    /* 3311C 801BC094 F0000524 */   addiu     $a1, $zero, 0xF0
    /* 33120 801BC098 96F00608 */  j          .L801BC258
    /* 33124 801BC09C 46000224 */   addiu     $v0, $zero, 0x46
  jlabel .L801BC0A0
    /* 33128 801BC0A0 D1F9060C */  jal        func_801BE744
    /* 3312C 801BC0A4 01001324 */   addiu     $s3, $zero, 0x1
    /* 33130 801BC0A8 21200000 */  addu       $a0, $zero, $zero
    /* 33134 801BC0AC 21280000 */  addu       $a1, $zero, $zero
    /* 33138 801BC0B0 1E80123C */  lui        $s2, %hi(D_801D8D78)
    /* 3313C 801BC0B4 788D5226 */  addiu      $s2, $s2, %lo(D_801D8D78)
    /* 33140 801BC0B8 21304002 */  addu       $a2, $s2, $zero
    /* 33144 801BC0BC 01000724 */  addiu      $a3, $zero, 0x1
    /* 33148 801BC0C0 24000224 */  addiu      $v0, $zero, 0x24
    /* 3314C 801BC0C4 A20202A2 */  sb         $v0, 0x2A2($s0)
    /* 33150 801BC0C8 CCFF0224 */  addiu      $v0, $zero, -0x34
    /* 33154 801BC0CC E46080A2 */  sb         $zero, 0x60E4($s4)
    /* 33158 801BC0D0 0C6193A2 */  sb         $s3, 0x610C($s4)
    /* 3315C 801BC0D4 000042A6 */  sh         $v0, 0x0($s2)
    /* 33160 801BC0D8 5FFF0224 */  addiu      $v0, $zero, -0xA1
    /* 33164 801BC0DC 1E80013C */  lui        $at, %hi(D_801D8D7A)
    /* 33168 801BC0E0 7A8D22A4 */  sh         $v0, %lo(D_801D8D7A)($at)
    /* 3316C 801BC0E4 E0000224 */  addiu      $v0, $zero, 0xE0
    /* 33170 801BC0E8 1E80013C */  lui        $at, %hi(D_801D8D7C)
    /* 33174 801BC0EC 7C8D22A4 */  sh         $v0, %lo(D_801D8D7C)($at)
    /* 33178 801BC0F0 60010224 */  addiu      $v0, $zero, 0x160
    /* 3317C 801BC0F4 1E80013C */  lui        $at, %hi(D_801D8D7E)
    /* 33180 801BC0F8 7E8D22A4 */  sh         $v0, %lo(D_801D8D7E)($at)
    /* 33184 801BC0FC 60000224 */  addiu      $v0, $zero, 0x60
    /* 33188 801BC100 05001124 */  addiu      $s1, $zero, 0x5
    /* 3318C 801BC104 01001024 */  addiu      $s0, $zero, 0x1
    /* 33190 801BC108 1E80013C */  lui        $at, %hi(D_801D8D80)
    /* 33194 801BC10C 808D20A0 */  sb         $zero, %lo(D_801D8D80)($at)
    /* 33198 801BC110 1E80013C */  lui        $at, %hi(D_801D8D81)
    /* 3319C 801BC114 818D20A0 */  sb         $zero, %lo(D_801D8D81)($at)
    /* 331A0 801BC118 1E80013C */  lui        $at, %hi(D_801D8D82)
    /* 331A4 801BC11C 828D22A0 */  sb         $v0, %lo(D_801D8D82)($at)
    /* 331A8 801BC120 1E80013C */  lui        $at, %hi(D_801D8D83)
    /* 331AC 801BC124 838D20A0 */  sb         $zero, %lo(D_801D8D83)($at)
    /* 331B0 801BC128 1E80013C */  lui        $at, %hi(D_801D8D84)
    /* 331B4 801BC12C 848D20A0 */  sb         $zero, %lo(D_801D8D84)($at)
    /* 331B8 801BC130 1E80013C */  lui        $at, %hi(D_801D8D85)
    /* 331BC 801BC134 858D20A0 */  sb         $zero, %lo(D_801D8D85)($at)
    /* 331C0 801BC138 1000B1AF */  sw         $s1, 0x10($sp)
    /* 331C4 801BC13C 3B50060C */  jal        func_801940EC
    /* 331C8 801BC140 1400B0AF */   sw        $s0, 0x14($sp)
    /* 331CC 801BC144 01000424 */  addiu      $a0, $zero, 0x1
    /* 331D0 801BC148 21280000 */  addu       $a1, $zero, $zero
    /* 331D4 801BC14C 21304002 */  addu       $a2, $s2, $zero
    /* 331D8 801BC150 01000724 */  addiu      $a3, $zero, 0x1
    /* 331DC 801BC154 1000B1AF */  sw         $s1, 0x10($sp)
    /* 331E0 801BC158 3B50060C */  jal        func_801940EC
    /* 331E4 801BC15C 1400B0AF */   sw        $s0, 0x14($sp)
    /* 331E8 801BC160 0100013C */  lui        $at, (0x10000 >> 16)
    /* 331EC 801BC164 21088102 */  addu       $at, $s4, $at
    /* 331F0 801BC168 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 331F4 801BC16C 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 331F8 801BC170 F0A233A0 */  sb         $s3, %lo(D_801DA2F0)($at)
    /* 331FC 801BC174 3BF20608 */  j          .L801BC8EC
    /* 33200 801BC178 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801BC17C
    /* 33204 801BC17C 1FBC010C */  jal        func_8006F07C
    /* 33208 801BC180 10000424 */   addiu     $a0, $zero, 0x10
    /* 3320C 801BC184 EF014010 */  beqz       $v0, .L801BC944
    /* 33210 801BC188 35000224 */   addiu     $v0, $zero, 0x35
    /* 33214 801BC18C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33218 801BC190 21088102 */  addu       $at, $s4, $at
    /* 3321C 801BC194 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 33220 801BC198 51F20608 */  j          .L801BC944
    /* 33224 801BC19C 00000000 */   nop
  jlabel .L801BC1A0
    /* 33228 801BC1A0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3322C 801BC1A4 21088102 */  addu       $at, $s4, $at
    /* 33230 801BC1A8 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 33234 801BC1AC 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 33238 801BC1B0 F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 3323C 801BC1B4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33240 801BC1B8 21088102 */  addu       $at, $s4, $at
    /* 33244 801BC1BC D8AB20A0 */  sb         $zero, -0x5428($at)
    /* 33248 801BC1C0 3BF20608 */  j          .L801BC8EC
    /* 3324C 801BC1C4 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801BC1C8
    /* 33250 801BC1C8 A5B8060C */  jal        func_801AE294
    /* 33254 801BC1CC 21200000 */   addu      $a0, $zero, $zero
    /* 33258 801BC1D0 21184000 */  addu       $v1, $v0, $zero
    /* 3325C 801BC1D4 01000224 */  addiu      $v0, $zero, 0x1
    /* 33260 801BC1D8 05006210 */  beq        $v1, $v0, .L801BC1F0
    /* 33264 801BC1DC 02000224 */   addiu     $v0, $zero, 0x2
    /* 33268 801BC1E0 BD016210 */  beq        $v1, $v0, .L801BC8D8
    /* 3326C 801BC1E4 00000000 */   nop
    /* 33270 801BC1E8 51F20608 */  j          .L801BC944
    /* 33274 801BC1EC 00000000 */   nop
  .L801BC1F0:
    /* 33278 801BC1F0 80010424 */  addiu      $a0, $zero, 0x180
    /* 3327C 801BC1F4 DD77000C */  jal        func_8001DF74
    /* 33280 801BC1F8 E0010524 */   addiu     $a1, $zero, 0x1E0
    /* 33284 801BC1FC 29F10608 */  j          .L801BC4A4
    /* 33288 801BC200 3C000224 */   addiu     $v0, $zero, 0x3C
  jlabel .L801BC204
    /* 3328C 801BC204 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33290 801BC208 21088102 */  addu       $at, $s4, $at
    /* 33294 801BC20C DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 33298 801BC210 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 3329C 801BC214 F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 332A0 801BC218 0100013C */  lui        $at, (0x10000 >> 16)
    /* 332A4 801BC21C 21088102 */  addu       $at, $s4, $at
    /* 332A8 801BC220 D8AB20A0 */  sb         $zero, -0x5428($at)
    /* 332AC 801BC224 3BF20608 */  j          .L801BC8EC
    /* 332B0 801BC228 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801BC22C
    /* 332B4 801BC22C A5B8060C */  jal        func_801AE294
    /* 332B8 801BC230 01000424 */   addiu     $a0, $zero, 0x1
    /* 332BC 801BC234 21184000 */  addu       $v1, $v0, $zero
    /* 332C0 801BC238 01000224 */  addiu      $v0, $zero, 0x1
    /* 332C4 801BC23C 05006210 */  beq        $v1, $v0, .L801BC254
    /* 332C8 801BC240 02000224 */   addiu     $v0, $zero, 0x2
    /* 332CC 801BC244 BF016214 */  bne        $v1, $v0, .L801BC944
    /* 332D0 801BC248 50000224 */   addiu     $v0, $zero, 0x50
    /* 332D4 801BC24C 31F10608 */  j          .L801BC4C4
    /* 332D8 801BC250 00000000 */   nop
  .L801BC254:
    /* 332DC 801BC254 46000224 */  addiu      $v0, $zero, 0x46
  .L801BC258:
    /* 332E0 801BC258 0100013C */  lui        $at, (0x10000 >> 16)
    /* 332E4 801BC25C 21088102 */  addu       $at, $s4, $at
    /* 332E8 801BC260 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 332EC 801BC264 51F20608 */  j          .L801BC944
    /* 332F0 801BC268 00000000 */   nop
  jlabel .L801BC26C
    /* 332F4 801BC26C 1E80033C */  lui        $v1, %hi(D_801D8B18)
    /* 332F8 801BC270 188B6390 */  lbu        $v1, %lo(D_801D8B18)($v1)
    /* 332FC 801BC274 01000224 */  addiu      $v0, $zero, 0x1
    /* 33300 801BC278 15006210 */  beq        $v1, $v0, .L801BC2D0
    /* 33304 801BC27C 78000224 */   addiu     $v0, $zero, 0x78
    /* 33308 801BC280 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3330C 801BC284 21088102 */  addu       $at, $s4, $at
    /* 33310 801BC288 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 33314 801BC28C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33318 801BC290 21088102 */  addu       $at, $s4, $at
    /* 3331C 801BC294 228F2390 */  lbu        $v1, -0x70DE($at)
    /* 33320 801BC298 82110200 */  srl        $v0, $v0, 6
    /* 33324 801BC29C 01004230 */  andi       $v0, $v0, 0x1
    /* 33328 801BC2A0 05004010 */  beqz       $v0, .L801BC2B8
    /* 3332C 801BC2A4 1D000224 */   addiu     $v0, $zero, 0x1D
    /* 33330 801BC2A8 06006210 */  beq        $v1, $v0, .L801BC2C4
    /* 33334 801BC2AC 01000224 */   addiu     $v0, $zero, 0x1
    /* 33338 801BC2B0 36F20608 */  j          .L801BC8D8
    /* 3333C 801BC2B4 00000000 */   nop
  .L801BC2B8:
    /* 33340 801BC2B8 0E000224 */  addiu      $v0, $zero, 0xE
    /* 33344 801BC2BC 86016214 */  bne        $v1, $v0, .L801BC8D8
    /* 33348 801BC2C0 01000224 */   addiu     $v0, $zero, 0x1
  .L801BC2C4:
    /* 3334C 801BC2C4 1E80013C */  lui        $at, %hi(D_801DAD85)
    /* 33350 801BC2C8 85AD22A0 */  sb         $v0, %lo(D_801DAD85)($at)
    /* 33354 801BC2CC 78000224 */  addiu      $v0, $zero, 0x78
  .L801BC2D0:
    /* 33358 801BC2D0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3335C 801BC2D4 21088102 */  addu       $at, $s4, $at
    /* 33360 801BC2D8 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 33364 801BC2DC 51F20608 */  j          .L801BC944
    /* 33368 801BC2E0 00000000 */   nop
  jlabel .L801BC2E4
    /* 3336C 801BC2E4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33370 801BC2E8 21088102 */  addu       $at, $s4, $at
    /* 33374 801BC2EC DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 33378 801BC2F0 01000224 */  addiu      $v0, $zero, 0x1
    /* 3337C 801BC2F4 1E80013C */  lui        $at, %hi(D_801D8DFC)
    /* 33380 801BC2F8 FC8D22A0 */  sb         $v0, %lo(D_801D8DFC)($at)
    /* 33384 801BC2FC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33388 801BC300 21088102 */  addu       $at, $s4, $at
    /* 3338C 801BC304 D8AB20A0 */  sb         $zero, -0x5428($at)
    /* 33390 801BC308 B9F10608 */  j          .L801BC6E4
    /* 33394 801BC30C 01006324 */   addiu     $v1, $v1, 0x1
  jlabel .L801BC310
    /* 33398 801BC310 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3339C 801BC314 21088102 */  addu       $at, $s4, $at
    /* 333A0 801BC318 218F2290 */  lbu        $v0, -0x70DF($at)
    /* 333A4 801BC31C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 333A8 801BC320 21088102 */  addu       $at, $s4, $at
    /* 333AC 801BC324 A0AB22A0 */  sb         $v0, -0x5460($at)
    /* 333B0 801BC328 21105400 */  addu       $v0, $v0, $s4
    /* 333B4 801BC32C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 333B8 801BC330 21084100 */  addu       $at, $v0, $at
    /* 333BC 801BC334 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 333C0 801BC338 00000000 */  nop
    /* 333C4 801BC33C C0100300 */  sll        $v0, $v1, 3
    /* 333C8 801BC340 21104300 */  addu       $v0, $v0, $v1
    /* 333CC 801BC344 80100200 */  sll        $v0, $v0, 2
    /* 333D0 801BC348 21108202 */  addu       $v0, $s4, $v0
    /* 333D4 801BC34C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 333D8 801BC350 21088102 */  addu       $at, $s4, $at
    /* 333DC 801BC354 DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 333E0 801BC358 0100013C */  lui        $at, (0x10000 >> 16)
    /* 333E4 801BC35C 21084100 */  addu       $at, $v0, $at
    /* 333E8 801BC360 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 333EC 801BC364 01006324 */  addiu      $v1, $v1, 0x1
    /* 333F0 801BC368 0100013C */  lui        $at, (0x10000 >> 16)
    /* 333F4 801BC36C 21088102 */  addu       $at, $s4, $at
    /* 333F8 801BC370 DAAB23A0 */  sb         $v1, -0x5426($at)
    /* 333FC 801BC374 51F20608 */  j          .L801BC944
    /* 33400 801BC378 DD0202A2 */   sb        $v0, 0x2DD($s0)
  jlabel .L801BC37C
    /* 33404 801BC37C 1E80043C */  lui        $a0, %hi(D_801D8DFB)
    /* 33408 801BC380 FB8D8490 */  lbu        $a0, %lo(D_801D8DFB)($a0)
    /* 3340C 801BC384 00000000 */  nop
    /* 33410 801BC388 2B200400 */  sltu       $a0, $zero, $a0
    /* 33414 801BC38C 8BB3060C */  jal        func_801ACE2C
    /* 33418 801BC390 40200400 */   sll       $a0, $a0, 1
    /* 3341C 801BC394 21184000 */  addu       $v1, $v0, $zero
    /* 33420 801BC398 02000224 */  addiu      $v0, $zero, 0x2
    /* 33424 801BC39C 0C006210 */  beq        $v1, $v0, .L801BC3D0
    /* 33428 801BC3A0 03006228 */   slti      $v0, $v1, 0x3
    /* 3342C 801BC3A4 05004010 */  beqz       $v0, .L801BC3BC
    /* 33430 801BC3A8 01000224 */   addiu     $v0, $zero, 0x1
    /* 33434 801BC3AC 0E006210 */  beq        $v1, $v0, .L801BC3E8
    /* 33438 801BC3B0 21200000 */   addu      $a0, $zero, $zero
    /* 3343C 801BC3B4 51F20608 */  j          .L801BC944
    /* 33440 801BC3B8 00000000 */   nop
  .L801BC3BC:
    /* 33444 801BC3BC 03000224 */  addiu      $v0, $zero, 0x3
    /* 33448 801BC3C0 0F006210 */  beq        $v1, $v0, .L801BC400
    /* 3344C 801BC3C4 00000000 */   nop
    /* 33450 801BC3C8 51F20608 */  j          .L801BC944
    /* 33454 801BC3CC 00000000 */   nop
  .L801BC3D0:
    /* 33458 801BC3D0 55000224 */  addiu      $v0, $zero, 0x55
    /* 3345C 801BC3D4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33460 801BC3D8 21088102 */  addu       $at, $s4, $at
    /* 33464 801BC3DC DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 33468 801BC3E0 51F20608 */  j          .L801BC944
    /* 3346C 801BC3E4 00000000 */   nop
  .L801BC3E8:
    /* 33470 801BC3E8 1E80013C */  lui        $at, %hi(D_801D92DB)
    /* 33474 801BC3EC DB9220A0 */  sb         $zero, %lo(D_801D92DB)($at)
    /* 33478 801BC3F0 0F3B060C */  jal        func_8018EC3C
    /* 3347C 801BC3F4 21280000 */   addu      $a1, $zero, $zero
    /* 33480 801BC3F8 18F20608 */  j          .L801BC860
    /* 33484 801BC3FC 48000224 */   addiu     $v0, $zero, 0x48
  .L801BC400:
    /* 33488 801BC400 9F0200A2 */  sb         $zero, 0x29F($s0)
    /* 3348C 801BC404 715C000C */  jal        func_800171C4
    /* 33490 801BC408 FF000424 */   addiu     $a0, $zero, 0xFF
    /* 33494 801BC40C 51F20608 */  j          .L801BC944
    /* 33498 801BC410 00000000 */   nop
  jlabel .L801BC414
    /* 3349C 801BC414 0100013C */  lui        $at, (0x10000 >> 16)
    /* 334A0 801BC418 21088102 */  addu       $at, $s4, $at
    /* 334A4 801BC41C DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 334A8 801BC420 39F20608 */  j          .L801BC8E4
    /* 334AC 801BC424 A20200A2 */   sb        $zero, 0x2A2($s0)
  jlabel .L801BC428
    /* 334B0 801BC428 0100013C */  lui        $at, (0x10000 >> 16)
    /* 334B4 801BC42C 21088102 */  addu       $at, $s4, $at
    /* 334B8 801BC430 DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 334BC 801BC434 01000224 */  addiu      $v0, $zero, 0x1
    /* 334C0 801BC438 1E80013C */  lui        $at, %hi(D_801D8DFC)
    /* 334C4 801BC43C FC8D22A0 */  sb         $v0, %lo(D_801D8DFC)($at)
    /* 334C8 801BC440 1E80013C */  lui        $at, %hi(D_801D8DFB)
    /* 334CC 801BC444 FB8D20A0 */  sb         $zero, %lo(D_801D8DFB)($at)
    /* 334D0 801BC448 B9F10608 */  j          .L801BC6E4
    /* 334D4 801BC44C 01006324 */   addiu     $v1, $v1, 0x1
  jlabel .L801BC450
    /* 334D8 801BC450 0100013C */  lui        $at, (0x10000 >> 16)
    /* 334DC 801BC454 21088102 */  addu       $at, $s4, $at
    /* 334E0 801BC458 228F2290 */  lbu        $v0, -0x70DE($at)
    /* 334E4 801BC45C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 334E8 801BC460 21088102 */  addu       $at, $s4, $at
    /* 334EC 801BC464 DAAB20A0 */  sb         $zero, -0x5426($at)
    /* 334F0 801BC468 01004224 */  addiu      $v0, $v0, 0x1
    /* 334F4 801BC46C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 334F8 801BC470 21088102 */  addu       $at, $s4, $at
    /* 334FC 801BC474 228F22A0 */  sb         $v0, -0x70DE($at)
    /* 33500 801BC478 51F20608 */  j          .L801BC944
    /* 33504 801BC47C 00000000 */   nop
  jlabel .L801BC480
    /* 33508 801BC480 1E80023C */  lui        $v0, %hi(D_801D8DFB)
    /* 3350C 801BC484 FB8D4290 */  lbu        $v0, %lo(D_801D8DFB)($v0)
    /* 33510 801BC488 00000000 */  nop
    /* 33514 801BC48C 0C004010 */  beqz       $v0, .L801BC4C0
    /* 33518 801BC490 01000224 */   addiu     $v0, $zero, 0x1
    /* 3351C 801BC494 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 33520 801BC498 F0A222A0 */  sb         $v0, %lo(D_801DA2F0)($at)
    /* 33524 801BC49C 1A000224 */  addiu      $v0, $zero, 0x1A
    /* 33528 801BC4A0 A20200A2 */  sb         $zero, 0x2A2($s0)
  .L801BC4A4:
    /* 3352C 801BC4A4 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 33530 801BC4A8 5CA020AC */  sw         $zero, %lo(D_801DA05C)($at)
    /* 33534 801BC4AC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33538 801BC4B0 21088102 */  addu       $at, $s4, $at
    /* 3353C 801BC4B4 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 33540 801BC4B8 51F20608 */  j          .L801BC944
    /* 33544 801BC4BC 00000000 */   nop
  .L801BC4C0:
    /* 33548 801BC4C0 50000224 */  addiu      $v0, $zero, 0x50
  .L801BC4C4:
    /* 3354C 801BC4C4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33550 801BC4C8 21088102 */  addu       $at, $s4, $at
    /* 33554 801BC4CC DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 33558 801BC4D0 51F20608 */  j          .L801BC944
    /* 3355C 801BC4D4 00000000 */   nop
  jlabel .L801BC4D8
    /* 33560 801BC4D8 1FBC010C */  jal        func_8006F07C
    /* 33564 801BC4DC 10000424 */   addiu     $a0, $zero, 0x10
    /* 33568 801BC4E0 18014010 */  beqz       $v0, .L801BC944
    /* 3356C 801BC4E4 50000224 */   addiu     $v0, $zero, 0x50
    /* 33570 801BC4E8 1E80013C */  lui        $at, %hi(D_801D8DFB)
    /* 33574 801BC4EC FB8D20A0 */  sb         $zero, %lo(D_801D8DFB)($at)
    /* 33578 801BC4F0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3357C 801BC4F4 21088102 */  addu       $at, $s4, $at
    /* 33580 801BC4F8 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 33584 801BC4FC 51F20608 */  j          .L801BC944
    /* 33588 801BC500 00000000 */   nop
  jlabel .L801BC504
    /* 3358C 801BC504 1FBC010C */  jal        func_8006F07C
    /* 33590 801BC508 40000424 */   addiu     $a0, $zero, 0x40
    /* 33594 801BC50C 51F20608 */  j          .L801BC944
    /* 33598 801BC510 00000000 */   nop
  jlabel .L801BC514
    /* 3359C 801BC514 0100013C */  lui        $at, (0x10000 >> 16)
    /* 335A0 801BC518 21088102 */  addu       $at, $s4, $at
    /* 335A4 801BC51C DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 335A8 801BC520 39F20608 */  j          .L801BC8E4
    /* 335AC 801BC524 A20200A2 */   sb        $zero, 0x2A2($s0)
  jlabel .L801BC528
    /* 335B0 801BC528 0100013C */  lui        $at, (0x10000 >> 16)
    /* 335B4 801BC52C 21088102 */  addu       $at, $s4, $at
    /* 335B8 801BC530 50AB2390 */  lbu        $v1, -0x54B0($at)
    /* 335BC 801BC534 0100013C */  lui        $at, (0x10000 >> 16)
    /* 335C0 801BC538 21088102 */  addu       $at, $s4, $at
    /* 335C4 801BC53C 218F2290 */  lbu        $v0, -0x70DF($at)
    /* 335C8 801BC540 00000000 */  nop
    /* 335CC 801BC544 0A006214 */  bne        $v1, $v0, .L801BC570
    /* 335D0 801BC548 01000224 */   addiu     $v0, $zero, 0x1
    /* 335D4 801BC54C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 335D8 801BC550 21088102 */  addu       $at, $s4, $at
    /* 335DC 801BC554 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 335E0 801BC558 01000324 */  addiu      $v1, $zero, 0x1
    /* 335E4 801BC55C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 335E8 801BC560 21088102 */  addu       $at, $s4, $at
    /* 335EC 801BC564 A8AB23A0 */  sb         $v1, -0x5458($at)
    /* 335F0 801BC568 3BF20608 */  j          .L801BC8EC
    /* 335F4 801BC56C 01004224 */   addiu     $v0, $v0, 0x1
  .L801BC570:
    /* 335F8 801BC570 0100013C */  lui        $at, (0x10000 >> 16)
    /* 335FC 801BC574 21088102 */  addu       $at, $s4, $at
    /* 33600 801BC578 A8AB20A0 */  sb         $zero, -0x5458($at)
    /* 33604 801BC57C 1E80013C */  lui        $at, %hi(D_801DAD85)
    /* 33608 801BC580 85AD22A0 */  sb         $v0, %lo(D_801DAD85)($at)
    /* 3360C 801BC584 8C000224 */  addiu      $v0, $zero, 0x8C
    /* 33610 801BC588 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33614 801BC58C 21088102 */  addu       $at, $s4, $at
    /* 33618 801BC590 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 3361C 801BC594 51F20608 */  j          .L801BC944
    /* 33620 801BC598 00000000 */   nop
  jlabel .L801BC59C
    /* 33624 801BC59C 10000424 */  addiu      $a0, $zero, 0x10
    /* 33628 801BC5A0 37BC010C */  jal        func_8006F0DC
    /* 3362C 801BC5A4 01000524 */   addiu     $a1, $zero, 0x1
    /* 33630 801BC5A8 E6004010 */  beqz       $v0, .L801BC944
    /* 33634 801BC5AC 00000000 */   nop
    /* 33638 801BC5B0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3363C 801BC5B4 21088102 */  addu       $at, $s4, $at
    /* 33640 801BC5B8 218F2290 */  lbu        $v0, -0x70DF($at)
    /* 33644 801BC5BC 00000000 */  nop
    /* 33648 801BC5C0 21108202 */  addu       $v0, $s4, $v0
    /* 3364C 801BC5C4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33650 801BC5C8 21084100 */  addu       $at, $v0, $at
    /* 33654 801BC5CC 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 33658 801BC5D0 00000000 */  nop
    /* 3365C 801BC5D4 C0100300 */  sll        $v0, $v1, 3
    /* 33660 801BC5D8 21104300 */  addu       $v0, $v0, $v1
    /* 33664 801BC5DC 80100200 */  sll        $v0, $v0, 2
    /* 33668 801BC5E0 21108202 */  addu       $v0, $s4, $v0
    /* 3366C 801BC5E4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33670 801BC5E8 21084100 */  addu       $at, $v0, $at
    /* 33674 801BC5EC 258F2390 */  lbu        $v1, -0x70DB($at)
    /* 33678 801BC5F0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 3367C 801BC5F4 21088102 */  addu       $at, $s4, $at
    /* 33680 801BC5F8 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 33684 801BC5FC 00000000 */  nop
    /* 33688 801BC600 40004230 */  andi       $v0, $v0, 0x40
    /* 3368C 801BC604 09004010 */  beqz       $v0, .L801BC62C
    /* 33690 801BC608 DD0203A2 */   sb        $v1, 0x2DD($s0)
    /* 33694 801BC60C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33698 801BC610 21088102 */  addu       $at, $s4, $at
    /* 3369C 801BC614 E2AB2290 */  lbu        $v0, -0x541E($at)
    /* 336A0 801BC618 00000000 */  nop
    /* 336A4 801BC61C 04004234 */  ori        $v0, $v0, 0x4
    /* 336A8 801BC620 0100013C */  lui        $at, (0x10000 >> 16)
    /* 336AC 801BC624 21088102 */  addu       $at, $s4, $at
    /* 336B0 801BC628 E2AB22A0 */  sb         $v0, -0x541E($at)
  .L801BC62C:
    /* 336B4 801BC62C 07000424 */  addiu      $a0, $zero, 0x7
    /* 336B8 801BC630 01000224 */  addiu      $v0, $zero, 0x1
    /* 336BC 801BC634 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 336C0 801BC638 F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 336C4 801BC63C 1E80013C */  lui        $at, %hi(D_801DAD85)
    /* 336C8 801BC640 85AD22A0 */  sb         $v0, %lo(D_801DAD85)($at)
    /* 336CC 801BC644 A20200A2 */  sb         $zero, 0x2A2($s0)
    /* 336D0 801BC648 88AD020C */  jal        func_800AB620
    /* 336D4 801BC64C 300300A2 */   sb        $zero, 0x330($s0)
    /* 336D8 801BC650 0100013C */  lui        $at, (0x10000 >> 16)
    /* 336DC 801BC654 21088102 */  addu       $at, $s4, $at
    /* 336E0 801BC658 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 336E4 801BC65C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 336E8 801BC660 21088102 */  addu       $at, $s4, $at
    /* 336EC 801BC664 D8AB20A0 */  sb         $zero, -0x5428($at)
    /* 336F0 801BC668 3BF20608 */  j          .L801BC8EC
    /* 336F4 801BC66C 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801BC670
    /* 336F8 801BC670 FBB5060C */  jal        func_801AD7EC
    /* 336FC 801BC674 00000000 */   nop
    /* 33700 801BC678 51F20608 */  j          .L801BC944
    /* 33704 801BC67C 00000000 */   nop
  jlabel .L801BC680
    /* 33708 801BC680 01000224 */  addiu      $v0, $zero, 0x1
    /* 3370C 801BC684 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 33710 801BC688 F0A222A0 */  sb         $v0, %lo(D_801DA2F0)($at)
    /* 33714 801BC68C 0C000224 */  addiu      $v0, $zero, 0xC
    /* 33718 801BC690 A20200A2 */  sb         $zero, 0x2A2($s0)
    /* 3371C 801BC694 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 33720 801BC698 5CA020AC */  sw         $zero, %lo(D_801DA05C)($at)
    /* 33724 801BC69C 1E80013C */  lui        $at, %hi(D_801DA5D0)
    /* 33728 801BC6A0 D0A520A4 */  sh         $zero, %lo(D_801DA5D0)($at)
    /* 3372C 801BC6A4 1E80013C */  lui        $at, %hi(D_801DA5D2)
    /* 33730 801BC6A8 D2A520A4 */  sh         $zero, %lo(D_801DA5D2)($at)
    /* 33734 801BC6AC 1E80013C */  lui        $at, %hi(D_801DA5D4)
    /* 33738 801BC6B0 D4A522A4 */  sh         $v0, %lo(D_801DA5D4)($at)
    /* 3373C 801BC6B4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33740 801BC6B8 21088102 */  addu       $at, $s4, $at
    /* 33744 801BC6BC DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 33748 801BC6C0 10000224 */  addiu      $v0, $zero, 0x10
    /* 3374C 801BC6C4 1E80013C */  lui        $at, %hi(D_801DA5D6)
    /* 33750 801BC6C8 D6A522A4 */  sh         $v0, %lo(D_801DA5D6)($at)
    /* 33754 801BC6CC 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 33758 801BC6D0 38D620A4 */  sh         $zero, %lo(D_800AD638)($at)
    /* 3375C 801BC6D4 1E80013C */  lui        $at, %hi(D_801DA2F8)
    /* 33760 801BC6D8 F8A220A0 */  sb         $zero, %lo(D_801DA2F8)($at)
    /* 33764 801BC6DC 9F0200A2 */  sb         $zero, 0x29F($s0)
    /* 33768 801BC6E0 01006324 */  addiu      $v1, $v1, 0x1
  .L801BC6E4:
    /* 3376C 801BC6E4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33770 801BC6E8 21088102 */  addu       $at, $s4, $at
    /* 33774 801BC6EC DAAB23A0 */  sb         $v1, -0x5426($at)
    /* 33778 801BC6F0 51F20608 */  j          .L801BC944
    /* 3377C 801BC6F4 00000000 */   nop
  jlabel .L801BC6F8
    /* 33780 801BC6F8 D966000C */  jal        func_80019B64
    /* 33784 801BC6FC CA000424 */   addiu     $a0, $zero, 0xCA
    /* 33788 801BC700 90004010 */  beqz       $v0, .L801BC944
    /* 3378C 801BC704 00000000 */   nop
    /* 33790 801BC708 36F20608 */  j          .L801BC8D8
    /* 33794 801BC70C 00000000 */   nop
  jlabel .L801BC710
    /* 33798 801BC710 88AD020C */  jal        func_800AB620
    /* 3379C 801BC714 05020424 */   addiu     $a0, $zero, 0x205
    /* 337A0 801BC718 1A000224 */  addiu      $v0, $zero, 0x1A
    /* 337A4 801BC71C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 337A8 801BC720 21088102 */  addu       $at, $s4, $at
    /* 337AC 801BC724 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 337B0 801BC728 51F20608 */  j          .L801BC944
    /* 337B4 801BC72C 00000000 */   nop
  jlabel .L801BC730
    /* 337B8 801BC730 0100013C */  lui        $at, (0x10000 >> 16)
    /* 337BC 801BC734 21088102 */  addu       $at, $s4, $at
    /* 337C0 801BC738 50AB2290 */  lbu        $v0, -0x54B0($at)
    /* 337C4 801BC73C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 337C8 801BC740 21088102 */  addu       $at, $s4, $at
    /* 337CC 801BC744 218F2390 */  lbu        $v1, -0x70DF($at)
    /* 337D0 801BC748 1E80013C */  lui        $at, %hi(D_801D88F0)
    /* 337D4 801BC74C F08820A0 */  sb         $zero, %lo(D_801D88F0)($at)
    /* 337D8 801BC750 0E004310 */  beq        $v0, $v1, .L801BC78C
    /* 337DC 801BC754 01000524 */   addiu     $a1, $zero, 0x1
    /* 337E0 801BC758 50AB0434 */  ori        $a0, $zero, 0xAB50
  .L801BC75C:
    /* 337E4 801BC75C 1E80023C */  lui        $v0, %hi(D_801D88F0)
    /* 337E8 801BC760 F0884290 */  lbu        $v0, %lo(D_801D88F0)($v0)
    /* 337EC 801BC764 00000000 */  nop
    /* 337F0 801BC768 01004224 */  addiu      $v0, $v0, 0x1
    /* 337F4 801BC76C 1E80013C */  lui        $at, %hi(D_801D88F0)
    /* 337F8 801BC770 F08822A0 */  sb         $v0, %lo(D_801D88F0)($at)
    /* 337FC 801BC774 21108502 */  addu       $v0, $s4, $a1
    /* 33800 801BC778 21104400 */  addu       $v0, $v0, $a0
    /* 33804 801BC77C 00004290 */  lbu        $v0, 0x0($v0)
    /* 33808 801BC780 00000000 */  nop
    /* 3380C 801BC784 F5FF4314 */  bne        $v0, $v1, .L801BC75C
    /* 33810 801BC788 0100A524 */   addiu     $a1, $a1, 0x1
  .L801BC78C:
    /* 33814 801BC78C 1E80043C */  lui        $a0, %hi(D_801D88F0)
    /* 33818 801BC790 F0888490 */  lbu        $a0, %lo(D_801D88F0)($a0)
    /* 3381C 801BC794 01000224 */  addiu      $v0, $zero, 0x1
    /* 33820 801BC798 FF008330 */  andi       $v1, $a0, 0xFF
    /* 33824 801BC79C 03006214 */  bne        $v1, $v0, .L801BC7AC
    /* 33828 801BC7A0 FEFF8224 */   addiu     $v0, $a0, -0x2
    /* 3382C 801BC7A4 EFF10608 */  j          .L801BC7BC
    /* 33830 801BC7A8 55000224 */   addiu     $v0, $zero, 0x55
  .L801BC7AC:
    /* 33834 801BC7AC 0600422C */  sltiu      $v0, $v0, 0x6
    /* 33838 801BC7B0 02004014 */  bnez       $v0, .L801BC7BC
    /* 3383C 801BC7B4 56000224 */   addiu     $v0, $zero, 0x56
    /* 33840 801BC7B8 57000224 */  addiu      $v0, $zero, 0x57
  .L801BC7BC:
    /* 33844 801BC7BC 1E80013C */  lui        $at, %hi(D_801D88F0)
    /* 33848 801BC7C0 F08822A0 */  sb         $v0, %lo(D_801D88F0)($at)
    /* 3384C 801BC7C4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33850 801BC7C8 21088102 */  addu       $at, $s4, $at
    /* 33854 801BC7CC DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 33858 801BC7D0 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 3385C 801BC7D4 58A020AC */  sw         $zero, %lo(D_801DA058)($at)
    /* 33860 801BC7D8 3BF20608 */  j          .L801BC8EC
    /* 33864 801BC7DC 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801BC7E0
    /* 33868 801BC7E0 1E80033C */  lui        $v1, %hi(D_801DA058)
    /* 3386C 801BC7E4 58A0638C */  lw         $v1, %lo(D_801DA058)($v1)
    /* 33870 801BC7E8 00000000 */  nop
    /* 33874 801BC7EC 10006228 */  slti       $v0, $v1, 0x10
    /* 33878 801BC7F0 05004010 */  beqz       $v0, .L801BC808
    /* 3387C 801BC7F4 01006224 */   addiu     $v0, $v1, 0x1
    /* 33880 801BC7F8 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 33884 801BC7FC 58A022AC */  sw         $v0, %lo(D_801DA058)($at)
    /* 33888 801BC800 51F20608 */  j          .L801BC944
    /* 3388C 801BC804 00000000 */   nop
  .L801BC808:
    /* 33890 801BC808 1E80043C */  lui        $a0, %hi(D_801D88F0)
    /* 33894 801BC80C F0888490 */  lbu        $a0, %lo(D_801D88F0)($a0)
    /* 33898 801BC810 BAAD060C */  jal        func_801AB6E8
    /* 3389C 801BC814 00000000 */   nop
    /* 338A0 801BC818 21184000 */  addu       $v1, $v0, $zero
    /* 338A4 801BC81C 01000224 */  addiu      $v0, $zero, 0x1
    /* 338A8 801BC820 0C006210 */  beq        $v1, $v0, .L801BC854
    /* 338AC 801BC824 02000224 */   addiu     $v0, $zero, 0x2
    /* 338B0 801BC828 46006214 */  bne        $v1, $v0, .L801BC944
    /* 338B4 801BC82C 00000000 */   nop
    /* 338B8 801BC830 BAAD060C */  jal        func_801AB6E8
    /* 338BC 801BC834 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 338C0 801BC838 0100013C */  lui        $at, (0x10000 >> 16)
    /* 338C4 801BC83C 21088102 */  addu       $at, $s4, $at
    /* 338C8 801BC840 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 338CC 801BC844 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 338D0 801BC848 58A020AC */  sw         $zero, %lo(D_801DA058)($at)
    /* 338D4 801BC84C 3BF20608 */  j          .L801BC8EC
    /* 338D8 801BC850 01004224 */   addiu     $v0, $v0, 0x1
  .L801BC854:
    /* 338DC 801BC854 BAAD060C */  jal        func_801AB6E8
    /* 338E0 801BC858 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 338E4 801BC85C 48000224 */  addiu      $v0, $zero, 0x48
  .L801BC860:
    /* 338E8 801BC860 0100013C */  lui        $at, (0x10000 >> 16)
    /* 338EC 801BC864 21088102 */  addu       $at, $s4, $at
    /* 338F0 801BC868 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 338F4 801BC86C 51F20608 */  j          .L801BC944
    /* 338F8 801BC870 00000000 */   nop
  jlabel .L801BC874
    /* 338FC 801BC874 1E80023C */  lui        $v0, %hi(D_801DA058)
    /* 33900 801BC878 58A0428C */  lw         $v0, %lo(D_801DA058)($v0)
    /* 33904 801BC87C 00000000 */  nop
    /* 33908 801BC880 01004324 */  addiu      $v1, $v0, 0x1
    /* 3390C 801BC884 40004228 */  slti       $v0, $v0, 0x40
    /* 33910 801BC888 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 33914 801BC88C 58A023AC */  sw         $v1, %lo(D_801DA058)($at)
    /* 33918 801BC890 11004010 */  beqz       $v0, .L801BC8D8
    /* 3391C 801BC894 37000524 */   addiu     $a1, $zero, 0x37
    /* 33920 801BC898 98088426 */  addiu      $a0, $s4, 0x898
  .L801BC89C:
    /* 33924 801BC89C 0100A524 */  addiu      $a1, $a1, 0x1
    /* 33928 801BC8A0 D65D8290 */  lbu        $v0, 0x5DD6($a0)
    /* 3392C 801BC8A4 D85D8390 */  lbu        $v1, 0x5DD8($a0)
    /* 33930 801BC8A8 FEFF4224 */  addiu      $v0, $v0, -0x2
    /* 33934 801BC8AC D65D82A0 */  sb         $v0, 0x5DD6($a0)
    /* 33938 801BC8B0 D75D8290 */  lbu        $v0, 0x5DD7($a0)
    /* 3393C 801BC8B4 FEFF6324 */  addiu      $v1, $v1, -0x2
    /* 33940 801BC8B8 D85D83A0 */  sb         $v1, 0x5DD8($a0)
    /* 33944 801BC8BC FEFF4224 */  addiu      $v0, $v0, -0x2
    /* 33948 801BC8C0 D75D82A0 */  sb         $v0, 0x5DD7($a0)
    /* 3394C 801BC8C4 3A00A228 */  slti       $v0, $a1, 0x3A
    /* 33950 801BC8C8 F4FF4014 */  bnez       $v0, .L801BC89C
    /* 33954 801BC8CC 28008424 */   addiu     $a0, $a0, 0x28
    /* 33958 801BC8D0 51F20608 */  j          .L801BC944
    /* 3395C 801BC8D4 00000000 */   nop
  jlabel .L801BC8D8
    /* 33960 801BC8D8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33964 801BC8DC 21088102 */  addu       $at, $s4, $at
    /* 33968 801BC8E0 DAAB2290 */  lbu        $v0, -0x5426($at)
  .L801BC8E4:
    /* 3396C 801BC8E4 00000000 */  nop
    /* 33970 801BC8E8 01004224 */  addiu      $v0, $v0, 0x1
  .L801BC8EC:
    /* 33974 801BC8EC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 33978 801BC8F0 21088102 */  addu       $at, $s4, $at
    /* 3397C 801BC8F4 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 33980 801BC8F8 51F20608 */  j          .L801BC944
    /* 33984 801BC8FC 00000000 */   nop
  jlabel .L801BC900
    /* 33988 801BC900 5E5C000C */  jal        func_80017178
    /* 3398C 801BC904 06000424 */   addiu     $a0, $zero, 0x6
    /* 33990 801BC908 715C000C */  jal        func_800171C4
    /* 33994 801BC90C 21200000 */   addu      $a0, $zero, $zero
    /* 33998 801BC910 7F5C000C */  jal        func_800171FC
    /* 3399C 801BC914 21200000 */   addu      $a0, $zero, $zero
    /* 339A0 801BC918 21200000 */  addu       $a0, $zero, $zero
    /* 339A4 801BC91C 153F010C */  jal        func_8004FC54
    /* 339A8 801BC920 A20200A2 */   sb        $zero, 0x2A2($s0)
    /* 339AC 801BC924 4E39060C */  jal        func_8018E538
    /* 339B0 801BC928 21200000 */   addu      $a0, $zero, $zero
    /* 339B4 801BC92C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 339B8 801BC930 21088102 */  addu       $at, $s4, $at
    /* 339BC 801BC934 DAAB20A0 */  sb         $zero, -0x5426($at)
    /* 339C0 801BC938 0100013C */  lui        $at, (0x10000 >> 16)
    /* 339C4 801BC93C 21088102 */  addu       $at, $s4, $at
    /* 339C8 801BC940 D8AB20A0 */  sb         $zero, -0x5428($at)
  jlabel .L801BC944
    /* 339CC 801BC944 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 339D0 801BC948 3800B48F */  lw         $s4, 0x38($sp)
    /* 339D4 801BC94C 3400B38F */  lw         $s3, 0x34($sp)
    /* 339D8 801BC950 3000B28F */  lw         $s2, 0x30($sp)
    /* 339DC 801BC954 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 339E0 801BC958 2800B08F */  lw         $s0, 0x28($sp)
    /* 339E4 801BC95C 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 339E8 801BC960 0800E003 */  jr         $ra
    /* 339EC 801BC964 00000000 */   nop
endlabel func_801BB38C
