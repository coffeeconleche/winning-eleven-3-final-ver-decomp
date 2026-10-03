nonmatching func_8003EA64, 0x530

glabel func_8003EA64
    /* 2F264 8003EA64 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2F268 8003EA68 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2F26C 8003EA6C 21808000 */  addu       $s0, $a0, $zero
    /* 2F270 8003EA70 AA2A033C */  lui        $v1, (0x2AAAAAAB >> 16)
    /* 2F274 8003EA74 2400BFAF */  sw         $ra, 0x24($sp)
    /* 2F278 8003EA78 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2F27C 8003EA7C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2F280 8003EA80 C2030296 */  lhu        $v0, 0x3C2($s0)
    /* 2F284 8003EA84 ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
    /* 2F288 8003EA88 00140200 */  sll        $v0, $v0, 16
    /* 2F28C 8003EA8C 03240200 */  sra        $a0, $v0, 16
    /* 2F290 8003EA90 18008300 */  mult       $a0, $v1
    /* 2F294 8003EA94 2130A000 */  addu       $a2, $a1, $zero
    /* 2F298 8003EA98 1080053C */  lui        $a1, %hi(D_800FF748)
    /* 2F29C 8003EA9C 48F7A524 */  addiu      $a1, $a1, %lo(D_800FF748)
    /* 2F2A0 8003EAA0 801F123C */  lui        $s2, (0x1F8000F4 >> 16)
    /* 2F2A4 8003EAA4 C3170200 */  sra        $v0, $v0, 31
    /* 2F2A8 8003EAA8 10400000 */  mfhi       $t0
    /* 2F2AC 8003EAAC 83180800 */  sra        $v1, $t0, 2
    /* 2F2B0 8003EAB0 23186200 */  subu       $v1, $v1, $v0
    /* 2F2B4 8003EAB4 40100300 */  sll        $v0, $v1, 1
    /* 2F2B8 8003EAB8 21104300 */  addu       $v0, $v0, $v1
    /* 2F2BC 8003EABC C0100200 */  sll        $v0, $v0, 3
    /* 2F2C0 8003EAC0 23208200 */  subu       $a0, $a0, $v0
    /* 2F2C4 8003EAC4 00240400 */  sll        $a0, $a0, 16
    /* 2F2C8 8003EAC8 03240400 */  sra        $a0, $a0, 16
    /* 2F2CC 8003EACC 40110400 */  sll        $v0, $a0, 5
    /* 2F2D0 8003EAD0 23104400 */  subu       $v0, $v0, $a0
    /* 2F2D4 8003EAD4 80100200 */  sll        $v0, $v0, 2
    /* 2F2D8 8003EAD8 21104400 */  addu       $v0, $v0, $a0
    /* 2F2DC 8003EADC C0100200 */  sll        $v0, $v0, 3
    /* 2F2E0 8003EAE0 C4030386 */  lh         $v1, 0x3C4($s0)
    /* 2F2E4 8003EAE4 00000000 */  nop
    /* 2F2E8 8003EAE8 23016010 */  beqz       $v1, .L8003EF78
    /* 2F2EC 8003EAEC 21884500 */   addu      $s1, $v0, $a1
    /* 2F2F0 8003EAF0 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* 2F2F4 8003EAF4 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* 2F2F8 8003EAF8 01000224 */  addiu      $v0, $zero, 0x1
    /* 2F2FC 8003EAFC 1E016214 */  bne        $v1, $v0, .L8003EF78
    /* 2F300 8003EB00 00000000 */   nop
    /* 2F304 8003EB04 801F023C */  lui        $v0, (0x1F8002FC >> 16)
    /* 2F308 8003EB08 FC024290 */  lbu        $v0, (0x1F8002FC & 0xFFFF)($v0)
    /* 2F30C 8003EB0C 00000000 */  nop
    /* 2F310 8003EB10 19014014 */  bnez       $v0, .L8003EF78
    /* 2F314 8003EB14 FF00C530 */   andi      $a1, $a2, 0xFF
    /* 2F318 8003EB18 0500A310 */  beq        $a1, $v1, .L8003EB30
    /* 2F31C 8003EB1C 02000224 */   addiu     $v0, $zero, 0x2
    /* 2F320 8003EB20 8300A210 */  beq        $a1, $v0, .L8003ED30
    /* 2F324 8003EB24 00000000 */   nop
    /* 2F328 8003EB28 DEFB0008 */  j          .L8003EF78
    /* 2F32C 8003EB2C 00000000 */   nop
  .L8003EB30:
    /* 2F330 8003EB30 C8030286 */  lh         $v0, 0x3C8($s0)
    /* 2F334 8003EB34 00000000 */  nop
    /* 2F338 8003EB38 4B004010 */  beqz       $v0, .L8003EC68
    /* 2F33C 8003EB3C 21200002 */   addu      $a0, $s0, $zero
    /* 2F340 8003EB40 BA032392 */  lbu        $v1, 0x3BA($s1)
    /* 2F344 8003EB44 BA030292 */  lbu        $v0, 0x3BA($s0)
    /* 2F348 8003EB48 00000000 */  nop
    /* 2F34C 8003EB4C 23106200 */  subu       $v0, $v1, $v0
    /* 2F350 8003EB50 17004010 */  beqz       $v0, .L8003EBB0
    /* 2F354 8003EB54 00000000 */   nop
    /* 2F358 8003EB58 05004018 */  blez       $v0, .L8003EB70
    /* 2F35C 8003EB5C 00000000 */   nop
    /* 2F360 8003EB60 27004510 */  beq        $v0, $a1, .L8003EC00
    /* 2F364 8003EB64 00000000 */   nop
    /* 2F368 8003EB68 07FB0008 */  j          .L8003EC1C
    /* 2F36C 8003EB6C 00000000 */   nop
  .L8003EB70:
    /* 2F370 8003EB70 F7FF4228 */  slti       $v0, $v0, -0x9
    /* 2F374 8003EB74 29004014 */  bnez       $v0, .L8003EC1C
    /* 2F378 8003EB78 03000224 */   addiu     $v0, $zero, 0x3
    /* 2F37C 8003EB7C 90030392 */  lbu        $v1, 0x390($s0)
    /* 2F380 8003EB80 00000000 */  nop
    /* 2F384 8003EB84 31006214 */  bne        $v1, $v0, .L8003EC4C
    /* 2F388 8003EB88 00000000 */   nop
    /* 2F38C 8003EB8C A003228E */  lw         $v0, 0x3A0($s1)
    /* 2F390 8003EB90 CCCC033C */  lui        $v1, (0xCCCCCCCD >> 16)
    /* 2F394 8003EB94 CDCC6334 */  ori        $v1, $v1, (0xCCCCCCCD & 0xFFFF)
    /* 2F398 8003EB98 C0100200 */  sll        $v0, $v0, 3
    /* 2F39C 8003EB9C 19004300 */  multu      $v0, $v1
    /* 2F3A0 8003EBA0 10400000 */  mfhi       $t0
    /* 2F3A4 8003EBA4 C2100800 */  srl        $v0, $t0, 3
    /* 2F3A8 8003EBA8 13FB0008 */  j          .L8003EC4C
    /* 2F3AC 8003EBAC A00322AE */   sw        $v0, 0x3A0($s1)
  .L8003EBB0:
    /* 2F3B0 8003EBB0 90030392 */  lbu        $v1, 0x390($s0)
    /* 2F3B4 8003EBB4 03000224 */  addiu      $v0, $zero, 0x3
    /* 2F3B8 8003EBB8 0B006214 */  bne        $v1, $v0, .L8003EBE8
    /* 2F3BC 8003EBBC 00000000 */   nop
    /* 2F3C0 8003EBC0 A003238E */  lw         $v1, 0x3A0($s1)
    /* 2F3C4 8003EBC4 00000000 */  nop
    /* 2F3C8 8003EBC8 C0100300 */  sll        $v0, $v1, 3
    /* 2F3CC 8003EBCC 21104300 */  addu       $v0, $v0, $v1
    /* 2F3D0 8003EBD0 CCCC033C */  lui        $v1, (0xCCCCCCCD >> 16)
    /* 2F3D4 8003EBD4 CDCC6334 */  ori        $v1, $v1, (0xCCCCCCCD & 0xFFFF)
    /* 2F3D8 8003EBD8 19004300 */  multu      $v0, $v1
    /* 2F3DC 8003EBDC 10400000 */  mfhi       $t0
    /* 2F3E0 8003EBE0 C2100800 */  srl        $v0, $t0, 3
    /* 2F3E4 8003EBE4 A00322AE */  sw         $v0, 0x3A0($s1)
  .L8003EBE8:
    /* 2F3E8 8003EBE8 AE79000C */  jal        func_8001E6B8
    /* 2F3EC 8003EBEC 20000424 */   addiu     $a0, $zero, 0x20
    /* 2F3F0 8003EBF0 16004014 */  bnez       $v0, .L8003EC4C
    /* 2F3F4 8003EBF4 10000224 */   addiu     $v0, $zero, 0x10
    /* 2F3F8 8003EBF8 0CFB0008 */  j          .L8003EC30
    /* 2F3FC 8003EBFC 00000000 */   nop
  .L8003EC00:
    /* 2F400 8003EC00 AE79000C */  jal        func_8001E6B8
    /* 2F404 8003EC04 18000424 */   addiu     $a0, $zero, 0x18
    /* 2F408 8003EC08 08004010 */  beqz       $v0, .L8003EC2C
    /* 2F40C 8003EC0C 00000000 */   nop
    /* 2F410 8003EC10 C6030296 */  lhu        $v0, 0x3C6($s0)
    /* 2F414 8003EC14 12FB0008 */  j          .L8003EC48
    /* 2F418 8003EC18 FFFF4224 */   addiu     $v0, $v0, -0x1
  .L8003EC1C:
    /* 2F41C 8003EC1C AE79000C */  jal        func_8001E6B8
    /* 2F420 8003EC20 0C000424 */   addiu     $a0, $zero, 0xC
    /* 2F424 8003EC24 05004014 */  bnez       $v0, .L8003EC3C
    /* 2F428 8003EC28 00000000 */   nop
  .L8003EC2C:
    /* 2F42C 8003EC2C 10000224 */  addiu      $v0, $zero, 0x10
  .L8003EC30:
    /* 2F430 8003EC30 960302A2 */  sb         $v0, 0x396($s0)
    /* 2F434 8003EC34 DEFB0008 */  j          .L8003EF78
    /* 2F438 8003EC38 970300A2 */   sb        $zero, 0x397($s0)
  .L8003EC3C:
    /* 2F43C 8003EC3C C6030296 */  lhu        $v0, 0x3C6($s0)
    /* 2F440 8003EC40 00000000 */  nop
    /* 2F444 8003EC44 FEFF4224 */  addiu      $v0, $v0, -0x2
  .L8003EC48:
    /* 2F448 8003EC48 C60302A6 */  sh         $v0, 0x3C6($s0)
  .L8003EC4C:
    /* 2F44C 8003EC4C C6030286 */  lh         $v0, 0x3C6($s0)
    /* 2F450 8003EC50 00000000 */  nop
    /* 2F454 8003EC54 27004228 */  slti       $v0, $v0, 0x27
    /* 2F458 8003EC58 1F004010 */  beqz       $v0, .L8003ECD8
    /* 2F45C 8003EC5C 26000224 */   addiu     $v0, $zero, 0x26
    /* 2F460 8003EC60 36FB0008 */  j          .L8003ECD8
    /* 2F464 8003EC64 C60302A6 */   sh        $v0, 0x3C6($s0)
  .L8003EC68:
    /* 2F468 8003EC68 8E030592 */  lbu        $a1, 0x38E($s0)
    /* 2F46C 8003EC6C 90030692 */  lbu        $a2, 0x390($s0)
    /* 2F470 8003EC70 AA030792 */  lbu        $a3, 0x3AA($s0)
    /* 2F474 8003EC74 AC030292 */  lbu        $v0, 0x3AC($s0)
    /* 2F478 8003EC78 AB70010C */  jal        func_8005C2AC
    /* 2F47C 8003EC7C 1000A2AF */   sw        $v0, 0x10($sp)
    /* 2F480 8003EC80 02002286 */  lh         $v0, 0x2($s1)
    /* 2F484 8003EC84 801F033C */  lui        $v1, (0x1F8000F0 >> 16)
    /* 2F488 8003EC88 F0006384 */  lh         $v1, (0x1F8000F0 & 0xFFFF)($v1)
    /* 2F48C 8003EC8C 00000000 */  nop
    /* 2F490 8003EC90 23104300 */  subu       $v0, $v0, $v1
    /* 2F494 8003EC94 18004200 */  mult       $v0, $v0
    /* 2F498 8003EC98 06002286 */  lh         $v0, 0x6($s1)
    /* 2F49C 8003EC9C 801F033C */  lui        $v1, (0x1F8000F4 >> 16)
    /* 2F4A0 8003ECA0 F4006384 */  lh         $v1, (0x1F8000F4 & 0xFFFF)($v1)
    /* 2F4A4 8003ECA4 12200000 */  mflo       $a0
    /* 2F4A8 8003ECA8 23104300 */  subu       $v0, $v0, $v1
    /* 2F4AC 8003ECAC 00000000 */  nop
    /* 2F4B0 8003ECB0 18004200 */  mult       $v0, $v0
    /* 2F4B4 8003ECB4 12180000 */  mflo       $v1
    /* 2F4B8 8003ECB8 21108300 */  addu       $v0, $a0, $v1
    /* 2F4BC 8003ECBC 00244228 */  slti       $v0, $v0, 0x2400
    /* 2F4C0 8003ECC0 05004010 */  beqz       $v0, .L8003ECD8
    /* 2F4C4 8003ECC4 21200002 */   addu      $a0, $s0, $zero
    /* 2F4C8 8003ECC8 E5FB000C */  jal        func_8003EF94
    /* 2F4CC 8003ECCC 21282002 */   addu      $a1, $s1, $zero
    /* 2F4D0 8003ECD0 A9004014 */  bnez       $v0, .L8003EF78
    /* 2F4D4 8003ECD4 00000000 */   nop
  .L8003ECD8:
    /* 2F4D8 8003ECD8 36004396 */  lhu        $v1, (0x1F800036 & 0xFFFF)($s2)
    /* 2F4DC 8003ECDC 02000286 */  lh         $v0, 0x2($s0)
    /* 2F4E0 8003ECE0 001C0300 */  sll        $v1, $v1, 16
    /* 2F4E4 8003ECE4 031C0300 */  sra        $v1, $v1, 16
    /* 2F4E8 8003ECE8 23104300 */  subu       $v0, $v0, $v1
    /* 2F4EC 8003ECEC 18004200 */  mult       $v0, $v0
    /* 2F4F0 8003ECF0 66004396 */  lhu        $v1, (0x1F800066 & 0xFFFF)($s2)
    /* 2F4F4 8003ECF4 06000286 */  lh         $v0, 0x6($s0)
    /* 2F4F8 8003ECF8 001C0300 */  sll        $v1, $v1, 16
    /* 2F4FC 8003ECFC 12200000 */  mflo       $a0
    /* 2F500 8003ED00 031C0300 */  sra        $v1, $v1, 16
    /* 2F504 8003ED04 23104300 */  subu       $v0, $v0, $v1
    /* 2F508 8003ED08 18004200 */  mult       $v0, $v0
    /* 2F50C 8003ED0C 12180000 */  mflo       $v1
    /* 2F510 8003ED10 21208300 */  addu       $a0, $a0, $v1
    /* 2F514 8003ED14 0079822C */  sltiu      $v0, $a0, 0x7900
    /* 2F518 8003ED18 97004010 */  beqz       $v0, .L8003EF78
    /* 2F51C 8003ED1C 21200002 */   addu      $a0, $s0, $zero
    /* 2F520 8003ED20 34FC000C */  jal        func_8003F0D0
    /* 2F524 8003ED24 21282002 */   addu      $a1, $s1, $zero
    /* 2F528 8003ED28 DEFB0008 */  j          .L8003EF78
    /* 2F52C 8003ED2C C40300A6 */   sh        $zero, 0x3C4($s0)
  .L8003ED30:
    /* 2F530 8003ED30 90030292 */  lbu        $v0, 0x390($s0)
    /* 2F534 8003ED34 00000000 */  nop
    /* 2F538 8003ED38 0800422C */  sltiu      $v0, $v0, 0x8
    /* 2F53C 8003ED3C 12004014 */  bnez       $v0, .L8003ED88
    /* 2F540 8003ED40 00000000 */   nop
    /* 2F544 8003ED44 8D030392 */  lbu        $v1, 0x38D($s0)
    /* 2F548 8003ED48 801F023C */  lui        $v0, (0x1F8002AA >> 16)
    /* 2F54C 8003ED4C AA024290 */  lbu        $v0, (0x1F8002AA & 0xFFFF)($v0)
    /* 2F550 8003ED50 00000000 */  nop
    /* 2F554 8003ED54 0C006210 */  beq        $v1, $v0, .L8003ED88
    /* 2F558 8003ED58 00000000 */   nop
    /* 2F55C 8003ED5C 02000486 */  lh         $a0, 0x2($s0)
    /* 2F560 8003ED60 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 2F564 8003ED64 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 2F568 8003ED68 06000586 */  lh         $a1, 0x6($s0)
    /* 2F56C 8003ED6C 02004684 */  lh         $a2, 0x2($v0)
    /* 2F570 8003ED70 06004784 */  lh         $a3, 0x6($v0)
    /* 2F574 8003ED74 DB6C010C */  jal        func_8005B36C
    /* 2F578 8003ED78 00000000 */   nop
    /* 2F57C 8003ED7C AB0302A2 */  sb         $v0, 0x3AB($s0)
    /* 2F580 8003ED80 04000224 */  addiu      $v0, $zero, 0x4
    /* 2F584 8003ED84 CA0302A6 */  sh         $v0, 0x3CA($s0)
  .L8003ED88:
    /* 2F588 8003ED88 AB030492 */  lbu        $a0, 0x3AB($s0)
    /* 2F58C 8003ED8C AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 2F590 8003ED90 CA030692 */  lbu        $a2, 0x3CA($s0)
    /* 2F594 8003ED94 F36D010C */  jal        func_8005B7CC
    /* 2F598 8003ED98 00000000 */   nop
    /* 2F59C 8003ED9C 21384000 */  addu       $a3, $v0, $zero
    /* 2F5A0 8003EDA0 AA0307A2 */  sb         $a3, 0x3AA($s0)
    /* 2F5A4 8003EDA4 A9024292 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($s2)
    /* 2F5A8 8003EDA8 00000000 */  nop
    /* 2F5AC 8003EDAC 72004010 */  beqz       $v0, .L8003EF78
    /* 2F5B0 8003EDB0 00000000 */   nop
    /* 2F5B4 8003EDB4 4E004296 */  lhu        $v0, (0x1F80004E & 0xFFFF)($s2)
    /* 2F5B8 8003EDB8 00000000 */  nop
    /* 2F5BC 8003EDBC 00140200 */  sll        $v0, $v0, 16
    /* 2F5C0 8003EDC0 03140200 */  sra        $v0, $v0, 16
    /* 2F5C4 8003EDC4 A1FF4228 */  slti       $v0, $v0, -0x5F
    /* 2F5C8 8003EDC8 6B004014 */  bnez       $v0, .L8003EF78
    /* 2F5CC 8003EDCC 21200002 */   addu      $a0, $s0, $zero
    /* 2F5D0 8003EDD0 8E030592 */  lbu        $a1, 0x38E($s0)
    /* 2F5D4 8003EDD4 90030692 */  lbu        $a2, 0x390($s0)
    /* 2F5D8 8003EDD8 AC030292 */  lbu        $v0, 0x3AC($s0)
    /* 2F5DC 8003EDDC FF00E730 */  andi       $a3, $a3, 0xFF
    /* 2F5E0 8003EDE0 AB70010C */  jal        func_8005C2AC
    /* 2F5E4 8003EDE4 1000A2AF */   sw        $v0, 0x10($sp)
    /* 2F5E8 8003EDE8 C8030286 */  lh         $v0, 0x3C8($s0)
    /* 2F5EC 8003EDEC 00000000 */  nop
    /* 2F5F0 8003EDF0 17004014 */  bnez       $v0, .L8003EE50
    /* 2F5F4 8003EDF4 00000000 */   nop
    /* 2F5F8 8003EDF8 F0004396 */  lhu        $v1, (0x1F8000F0 & 0xFFFF)($s2)
    /* 2F5FC 8003EDFC 02002286 */  lh         $v0, 0x2($s1)
    /* 2F600 8003EE00 001C0300 */  sll        $v1, $v1, 16
    /* 2F604 8003EE04 031C0300 */  sra        $v1, $v1, 16
    /* 2F608 8003EE08 23104300 */  subu       $v0, $v0, $v1
    /* 2F60C 8003EE0C 18004200 */  mult       $v0, $v0
    /* 2F610 8003EE10 F4004396 */  lhu        $v1, (0x1F8000F4 & 0xFFFF)($s2)
    /* 2F614 8003EE14 06002286 */  lh         $v0, 0x6($s1)
    /* 2F618 8003EE18 001C0300 */  sll        $v1, $v1, 16
    /* 2F61C 8003EE1C 12200000 */  mflo       $a0
    /* 2F620 8003EE20 031C0300 */  sra        $v1, $v1, 16
    /* 2F624 8003EE24 23104300 */  subu       $v0, $v0, $v1
    /* 2F628 8003EE28 18004200 */  mult       $v0, $v0
    /* 2F62C 8003EE2C 12180000 */  mflo       $v1
    /* 2F630 8003EE30 21108300 */  addu       $v0, $a0, $v1
    /* 2F634 8003EE34 00104228 */  slti       $v0, $v0, 0x1000
    /* 2F638 8003EE38 05004010 */  beqz       $v0, .L8003EE50
    /* 2F63C 8003EE3C 21200002 */   addu      $a0, $s0, $zero
    /* 2F640 8003EE40 E5FB000C */  jal        func_8003EF94
    /* 2F644 8003EE44 21282002 */   addu      $a1, $s1, $zero
    /* 2F648 8003EE48 4B004014 */  bnez       $v0, .L8003EF78
    /* 2F64C 8003EE4C 00000000 */   nop
  .L8003EE50:
    /* 2F650 8003EE50 8E032396 */  lhu        $v1, 0x38E($s1)
    /* 2F654 8003EE54 15000224 */  addiu      $v0, $zero, 0x15
    /* 2F658 8003EE58 05006210 */  beq        $v1, $v0, .L8003EE70
    /* 2F65C 8003EE5C 17000224 */   addiu     $v0, $zero, 0x17
    /* 2F660 8003EE60 03006210 */  beq        $v1, $v0, .L8003EE70
    /* 2F664 8003EE64 58000224 */   addiu     $v0, $zero, 0x58
    /* 2F668 8003EE68 03006214 */  bne        $v1, $v0, .L8003EE78
    /* 2F66C 8003EE6C 55000224 */   addiu     $v0, $zero, 0x55
  .L8003EE70:
    /* 2F670 8003EE70 A6FB0008 */  j          .L8003EE98
    /* 2F674 8003EE74 00040424 */   addiu     $a0, $zero, 0x400
  .L8003EE78:
    /* 2F678 8003EE78 07006214 */  bne        $v1, $v0, .L8003EE98
    /* 2F67C 8003EE7C 00090424 */   addiu     $a0, $zero, 0x900
    /* 2F680 8003EE80 90032292 */  lbu        $v0, 0x390($s1)
    /* 2F684 8003EE84 00000000 */  nop
    /* 2F688 8003EE88 0800422C */  sltiu      $v0, $v0, 0x8
    /* 2F68C 8003EE8C 02004014 */  bnez       $v0, .L8003EE98
    /* 2F690 8003EE90 00000000 */   nop
    /* 2F694 8003EE94 00510424 */  addiu      $a0, $zero, 0x5100
  .L8003EE98:
    /* 2F698 8003EE98 F0004296 */  lhu        $v0, (0x1F8000F0 & 0xFFFF)($s2)
    /* 2F69C 8003EE9C 36004396 */  lhu        $v1, (0x1F800036 & 0xFFFF)($s2)
    /* 2F6A0 8003EEA0 00140200 */  sll        $v0, $v0, 16
    /* 2F6A4 8003EEA4 03140200 */  sra        $v0, $v0, 16
    /* 2F6A8 8003EEA8 001C0300 */  sll        $v1, $v1, 16
    /* 2F6AC 8003EEAC 03340300 */  sra        $a2, $v1, 16
    /* 2F6B0 8003EEB0 23104600 */  subu       $v0, $v0, $a2
    /* 2F6B4 8003EEB4 18004200 */  mult       $v0, $v0
    /* 2F6B8 8003EEB8 F4004296 */  lhu        $v0, (0x1F8000F4 & 0xFFFF)($s2)
    /* 2F6BC 8003EEBC 66004396 */  lhu        $v1, (0x1F800066 & 0xFFFF)($s2)
    /* 2F6C0 8003EEC0 00140200 */  sll        $v0, $v0, 16
    /* 2F6C4 8003EEC4 03140200 */  sra        $v0, $v0, 16
    /* 2F6C8 8003EEC8 001C0300 */  sll        $v1, $v1, 16
    /* 2F6CC 8003EECC 12280000 */  mflo       $a1
    /* 2F6D0 8003EED0 031C0300 */  sra        $v1, $v1, 16
    /* 2F6D4 8003EED4 23104300 */  subu       $v0, $v0, $v1
    /* 2F6D8 8003EED8 18004200 */  mult       $v0, $v0
    /* 2F6DC 8003EEDC 12480000 */  mflo       $t1
    /* 2F6E0 8003EEE0 2110A900 */  addu       $v0, $a1, $t1
    /* 2F6E4 8003EEE4 2B104400 */  sltu       $v0, $v0, $a0
    /* 2F6E8 8003EEE8 0F004014 */  bnez       $v0, .L8003EF28
    /* 2F6EC 8003EEEC 00000000 */   nop
    /* 2F6F0 8003EEF0 02000286 */  lh         $v0, 0x2($s0)
    /* 2F6F4 8003EEF4 00000000 */  nop
    /* 2F6F8 8003EEF8 23104600 */  subu       $v0, $v0, $a2
    /* 2F6FC 8003EEFC 18004200 */  mult       $v0, $v0
    /* 2F700 8003EF00 06000286 */  lh         $v0, 0x6($s0)
    /* 2F704 8003EF04 12200000 */  mflo       $a0
    /* 2F708 8003EF08 23104300 */  subu       $v0, $v0, $v1
    /* 2F70C 8003EF0C 00000000 */  nop
    /* 2F710 8003EF10 18004200 */  mult       $v0, $v0
    /* 2F714 8003EF14 12180000 */  mflo       $v1
    /* 2F718 8003EF18 21108300 */  addu       $v0, $a0, $v1
    /* 2F71C 8003EF1C 00314228 */  slti       $v0, $v0, 0x3100
    /* 2F720 8003EF20 15004010 */  beqz       $v0, .L8003EF78
    /* 2F724 8003EF24 00000000 */   nop
  .L8003EF28:
    /* 2F728 8003EF28 C40300A6 */  sh         $zero, 0x3C4($s0)
    /* 2F72C 8003EF2C B8032292 */  lbu        $v0, 0x3B8($s1)
    /* 2F730 8003EF30 00000000 */  nop
    /* 2F734 8003EF34 0D004010 */  beqz       $v0, .L8003EF6C
    /* 2F738 8003EF38 FFFF033C */   lui       $v1, (0xFFFF0000 >> 16)
    /* 2F73C 8003EF3C 9403228E */  lw         $v0, 0x394($s1)
    /* 2F740 8003EF40 00000000 */  nop
    /* 2F744 8003EF44 24104300 */  and        $v0, $v0, $v1
    /* 2F748 8003EF48 0004033C */  lui        $v1, (0x4000000 >> 16)
    /* 2F74C 8003EF4C 08004314 */  bne        $v0, $v1, .L8003EF70
    /* 2F750 8003EF50 21200002 */   addu      $a0, $s0, $zero
    /* 2F754 8003EF54 D0032292 */  lbu        $v0, 0x3D0($s1)
    /* 2F758 8003EF58 00000000 */  nop
    /* 2F75C 8003EF5C 04004010 */  beqz       $v0, .L8003EF70
    /* 2F760 8003EF60 00000000 */   nop
    /* 2F764 8003EF64 DEFB0008 */  j          .L8003EF78
    /* 2F768 8003EF68 B80320A2 */   sb        $zero, 0x3B8($s1)
  .L8003EF6C:
    /* 2F76C 8003EF6C 21200002 */  addu       $a0, $s0, $zero
  .L8003EF70:
    /* 2F770 8003EF70 34FC000C */  jal        func_8003F0D0
    /* 2F774 8003EF74 21282002 */   addu      $a1, $s1, $zero
  .L8003EF78:
    /* 2F778 8003EF78 2400BF8F */  lw         $ra, 0x24($sp)
    /* 2F77C 8003EF7C 2000B28F */  lw         $s2, 0x20($sp)
    /* 2F780 8003EF80 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2F784 8003EF84 1800B08F */  lw         $s0, 0x18($sp)
    /* 2F788 8003EF88 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2F78C 8003EF8C 0800E003 */  jr         $ra
    /* 2F790 8003EF90 00000000 */   nop
endlabel func_8003EA64
