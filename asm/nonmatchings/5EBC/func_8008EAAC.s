nonmatching func_8008EAAC, 0x214

glabel func_8008EAAC
    /* 7F2AC 8008EAAC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 7F2B0 8008EAB0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7F2B4 8008EAB4 21808000 */  addu       $s0, $a0, $zero
    /* 7F2B8 8008EAB8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 7F2BC 8008EABC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 7F2C0 8008EAC0 97030392 */  lbu        $v1, 0x397($s0)
    /* 7F2C4 8008EAC4 00000000 */  nop
    /* 7F2C8 8008EAC8 06006010 */  beqz       $v1, .L8008EAE4
    /* 7F2CC 8008EACC 801F113C */   lui       $s1, (0x1F8002CF >> 16)
    /* 7F2D0 8008EAD0 01000224 */  addiu      $v0, $zero, 0x1
    /* 7F2D4 8008EAD4 25006210 */  beq        $v1, $v0, .L8008EB6C
    /* 7F2D8 8008EAD8 00000000 */   nop
    /* 7F2DC 8008EADC 1B3B0208 */  j          .L8008EC6C
    /* 7F2E0 8008EAE0 00000000 */   nop
  .L8008EAE4:
    /* 7F2E4 8008EAE4 21200002 */  addu       $a0, $s0, $zero
    /* 7F2E8 8008EAE8 5F000524 */  addiu      $a1, $zero, 0x5F
    /* 7F2EC 8008EAEC 8C6E010C */  jal        func_8005BA30
    /* 7F2F0 8008EAF0 21300000 */   addu      $a2, $zero, $zero
    /* 7F2F4 8008EAF4 AB030492 */  lbu        $a0, 0x3AB($s0)
    /* 7F2F8 8008EAF8 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 7F2FC 8008EAFC F36D010C */  jal        func_8005B7CC
    /* 7F300 8008EB00 40000624 */   addiu     $a2, $zero, 0x40
    /* 7F304 8008EB04 FF004430 */  andi       $a0, $v0, 0xFF
    /* 7F308 8008EB08 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 7F30C 8008EB0C 23186400 */  subu       $v1, $v1, $a0
    /* 7F310 8008EB10 21206000 */  addu       $a0, $v1, $zero
    /* 7F314 8008EB14 02006104 */  bgez       $v1, .L8008EB20
    /* 7F318 8008EB18 AA0302A2 */   sb        $v0, 0x3AA($s0)
    /* 7F31C 8008EB1C FF006424 */  addiu      $a0, $v1, 0xFF
  .L8008EB20:
    /* 7F320 8008EB20 03120400 */  sra        $v0, $a0, 8
    /* 7F324 8008EB24 00120200 */  sll        $v0, $v0, 8
    /* 7F328 8008EB28 23106200 */  subu       $v0, $v1, $v0
    /* 7F32C 8008EB2C 97030492 */  lbu        $a0, 0x397($s0)
    /* 7F330 8008EB30 0800058E */  lw         $a1, 0x8($s0)
    /* 7F334 8008EB34 00110200 */  sll        $v0, $v0, 4
    /* 7F338 8008EB38 260002A6 */  sh         $v0, 0x26($s0)
    /* 7F33C 8008EB3C 02000296 */  lhu        $v0, 0x2($s0)
    /* 7F340 8008EB40 1000068E */  lw         $a2, 0x10($s0)
    /* 7F344 8008EB44 06000396 */  lhu        $v1, 0x6($s0)
    /* 7F348 8008EB48 D10300A2 */  sb         $zero, 0x3D1($s0)
    /* 7F34C 8008EB4C AC0300A2 */  sb         $zero, 0x3AC($s0)
    /* 7F350 8008EB50 01008424 */  addiu      $a0, $a0, 0x1
    /* 7F354 8008EB54 21104500 */  addu       $v0, $v0, $a1
    /* 7F358 8008EB58 21186600 */  addu       $v1, $v1, $a2
    /* 7F35C 8008EB5C 020002A6 */  sh         $v0, 0x2($s0)
    /* 7F360 8008EB60 060003A6 */  sh         $v1, 0x6($s0)
    /* 7F364 8008EB64 1B3B0208 */  j          .L8008EC6C
    /* 7F368 8008EB68 970304A2 */   sb        $a0, 0x397($s0)
  .L8008EB6C:
    /* 7F36C 8008EB6C 476F010C */  jal        func_8005BD1C
    /* 7F370 8008EB70 21200002 */   addu      $a0, $s0, $zero
    /* 7F374 8008EB74 90030392 */  lbu        $v1, 0x390($s0)
    /* 7F378 8008EB78 06000224 */  addiu      $v0, $zero, 0x6
    /* 7F37C 8008EB7C 0C006210 */  beq        $v1, $v0, .L8008EBB0
    /* 7F380 8008EB80 07006228 */   slti      $v0, $v1, 0x7
    /* 7F384 8008EB84 05004010 */  beqz       $v0, .L8008EB9C
    /* 7F388 8008EB88 00000000 */   nop
    /* 7F38C 8008EB8C 37006010 */  beqz       $v1, .L8008EC6C
    /* 7F390 8008EB90 00000000 */   nop
    /* 7F394 8008EB94 F93A0208 */  j          .L8008EBE4
    /* 7F398 8008EB98 00000000 */   nop
  .L8008EB9C:
    /* 7F39C 8008EB9C 13000224 */  addiu      $v0, $zero, 0x13
    /* 7F3A0 8008EBA0 29006210 */  beq        $v1, $v0, .L8008EC48
    /* 7F3A4 8008EBA4 00000000 */   nop
    /* 7F3A8 8008EBA8 1B3B0208 */  j          .L8008EC6C
    /* 7F3AC 8008EBAC 00000000 */   nop
  .L8008EBB0:
    /* 7F3B0 8008EBB0 21200002 */  addu       $a0, $s0, $zero
    /* 7F3B4 8008EBB4 BB53020C */  jal        func_80094EEC
    /* 7F3B8 8008EBB8 00010524 */   addiu     $a1, $zero, 0x100
    /* 7F3BC 8008EBBC 09004010 */  beqz       $v0, .L8008EBE4
    /* 7F3C0 8008EBC0 00000000 */   nop
    /* 7F3C4 8008EBC4 FD53020C */  jal        func_80094FF4
    /* 7F3C8 8008EBC8 21200002 */   addu      $a0, $s0, $zero
    /* 7F3CC 8008EBCC 21200002 */  addu       $a0, $s0, $zero
    /* 7F3D0 8008EBD0 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 7F3D4 8008EBD4 F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 7F3D8 8008EBD8 03000224 */  addiu      $v0, $zero, 0x3
    /* 7F3DC 8008EBDC E35D010C */  jal        func_8005778C
    /* 7F3E0 8008EBE0 B10362A0 */   sb        $v0, 0x3B1($v1)
  .L8008EBE4:
    /* 7F3E4 8008EBE4 AB030492 */  lbu        $a0, 0x3AB($s0)
    /* 7F3E8 8008EBE8 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 7F3EC 8008EBEC F36D010C */  jal        func_8005B7CC
    /* 7F3F0 8008EBF0 0C000624 */   addiu     $a2, $zero, 0xC
    /* 7F3F4 8008EBF4 FF004430 */  andi       $a0, $v0, 0xFF
    /* 7F3F8 8008EBF8 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 7F3FC 8008EBFC 23186400 */  subu       $v1, $v1, $a0
    /* 7F400 8008EC00 21206000 */  addu       $a0, $v1, $zero
    /* 7F404 8008EC04 02006104 */  bgez       $v1, .L8008EC10
    /* 7F408 8008EC08 AA0302A2 */   sb        $v0, 0x3AA($s0)
    /* 7F40C 8008EC0C FF006424 */  addiu      $a0, $v1, 0xFF
  .L8008EC10:
    /* 7F410 8008EC10 03120400 */  sra        $v0, $a0, 8
    /* 7F414 8008EC14 00120200 */  sll        $v0, $v0, 8
    /* 7F418 8008EC18 23106200 */  subu       $v0, $v1, $v0
    /* 7F41C 8008EC1C 0800048E */  lw         $a0, 0x8($s0)
    /* 7F420 8008EC20 00110200 */  sll        $v0, $v0, 4
    /* 7F424 8008EC24 260002A6 */  sh         $v0, 0x26($s0)
    /* 7F428 8008EC28 02000296 */  lhu        $v0, 0x2($s0)
    /* 7F42C 8008EC2C 1000058E */  lw         $a1, 0x10($s0)
    /* 7F430 8008EC30 06000396 */  lhu        $v1, 0x6($s0)
    /* 7F434 8008EC34 21104400 */  addu       $v0, $v0, $a0
    /* 7F438 8008EC38 21186500 */  addu       $v1, $v1, $a1
    /* 7F43C 8008EC3C 020002A6 */  sh         $v0, 0x2($s0)
    /* 7F440 8008EC40 1B3B0208 */  j          .L8008EC6C
    /* 7F444 8008EC44 060003A6 */   sh        $v1, 0x6($s0)
  .L8008EC48:
    /* 7F448 8008EC48 8D030392 */  lbu        $v1, 0x38D($s0)
    /* 7F44C 8008EC4C 801F023C */  lui        $v0, (0x1F8002A8 >> 16)
    /* 7F450 8008EC50 A8024290 */  lbu        $v0, (0x1F8002A8 & 0xFFFF)($v0)
    /* 7F454 8008EC54 00000000 */  nop
    /* 7F458 8008EC58 02006214 */  bne        $v1, $v0, .L8008EC64
    /* 7F45C 8008EC5C 82000224 */   addiu     $v0, $zero, 0x82
    /* 7F460 8008EC60 81000224 */  addiu      $v0, $zero, 0x81
  .L8008EC64:
    /* 7F464 8008EC64 960302A2 */  sb         $v0, 0x396($s0)
    /* 7F468 8008EC68 970300A2 */  sb         $zero, 0x397($s0)
  .L8008EC6C:
    /* 7F46C 8008EC6C A9022292 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($s1)
    /* 7F470 8008EC70 00000000 */  nop
    /* 7F474 8008EC74 0A004010 */  beqz       $v0, .L8008ECA0
    /* 7F478 8008EC78 00000000 */   nop
    /* 7F47C 8008EC7C 98030292 */  lbu        $v0, 0x398($s0)
    /* 7F480 8008EC80 00000000 */  nop
    /* 7F484 8008EC84 21102202 */  addu       $v0, $s1, $v0
    /* 7F488 8008EC88 CF024390 */  lbu        $v1, (0x1F8002CF & 0xFFFF)($v0)
    /* 7F48C 8008EC8C 01000224 */  addiu      $v0, $zero, 0x1
    /* 7F490 8008EC90 03006214 */  bne        $v1, $v0, .L8008ECA0
    /* 7F494 8008EC94 82000224 */   addiu     $v0, $zero, 0x82
    /* 7F498 8008EC98 960302A2 */  sb         $v0, 0x396($s0)
    /* 7F49C 8008EC9C 970300A2 */  sb         $zero, 0x397($s0)
  .L8008ECA0:
    /* 7F4A0 8008ECA0 3A55020C */  jal        func_800954E8
    /* 7F4A4 8008ECA4 21200002 */   addu      $a0, $s0, $zero
    /* 7F4A8 8008ECA8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 7F4AC 8008ECAC 1400B18F */  lw         $s1, 0x14($sp)
    /* 7F4B0 8008ECB0 1000B08F */  lw         $s0, 0x10($sp)
    /* 7F4B4 8008ECB4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 7F4B8 8008ECB8 0800E003 */  jr         $ra
    /* 7F4BC 8008ECBC 00000000 */   nop
endlabel func_8008EAAC
