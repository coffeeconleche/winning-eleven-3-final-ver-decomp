nonmatching func_8005E104, 0x40C

glabel func_8005E104
    /* 4E904 8005E104 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4E908 8005E108 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4E90C 8005E10C 21808000 */  addu       $s0, $a0, $zero
    /* 4E910 8005E110 2400BFAF */  sw         $ra, 0x24($sp)
    /* 4E914 8005E114 2000B4AF */  sw         $s4, 0x20($sp)
    /* 4E918 8005E118 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 4E91C 8005E11C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4E920 8005E120 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4E924 8005E124 96030392 */  lbu        $v1, 0x396($s0)
    /* 4E928 8005E128 00000000 */  nop
    /* 4E92C 8005E12C 1C00622C */  sltiu      $v0, $v1, 0x1C
    /* 4E930 8005E130 EE004010 */  beqz       $v0, .L8005E4EC
    /* 4E934 8005E134 801F113C */   lui       $s1, (0x1F8000FC >> 16)
    /* 4E938 8005E138 80100300 */  sll        $v0, $v1, 2
    /* 4E93C 8005E13C 0180013C */  lui        $at, %hi(jtbl_80012268)
    /* 4E940 8005E140 21082200 */  addu       $at, $at, $v0
    /* 4E944 8005E144 6822228C */  lw         $v0, %lo(jtbl_80012268)($at)
    /* 4E948 8005E148 00000000 */  nop
    /* 4E94C 8005E14C 08004000 */  jr         $v0
    /* 4E950 8005E150 00000000 */   nop
  jlabel .L8005E154
    /* 4E954 8005E154 1B000224 */  addiu      $v0, $zero, 0x1B
    /* 4E958 8005E158 960302A2 */  sb         $v0, 0x396($s0)
    /* 4E95C 8005E15C 10000224 */  addiu      $v0, $zero, 0x10
    /* 4E960 8005E160 970300A2 */  sb         $zero, 0x397($s0)
    /* 4E964 8005E164 C20302A6 */  sh         $v0, 0x3C2($s0)
  jlabel .L8005E168
    /* 4E968 8005E168 1C032296 */  lhu        $v0, (0x1F80031C & 0xFFFF)($s1)
    /* 4E96C 8005E16C 00000000 */  nop
    /* 4E970 8005E170 00140200 */  sll        $v0, $v0, 16
    /* 4E974 8005E174 03140200 */  sra        $v0, $v0, 16
    /* 4E978 8005E178 11004228 */  slti       $v0, $v0, 0x11
    /* 4E97C 8005E17C DB004014 */  bnez       $v0, .L8005E4EC
    /* 4E980 8005E180 00000000 */   nop
    /* 4E984 8005E184 97030392 */  lbu        $v1, 0x397($s0)
    /* 4E988 8005E188 00000000 */  nop
    /* 4E98C 8005E18C D7006010 */  beqz       $v1, .L8005E4EC
    /* 4E990 8005E190 18000224 */   addiu     $v0, $zero, 0x18
    /* 4E994 8005E194 D5006210 */  beq        $v1, $v0, .L8005E4EC
    /* 4E998 8005E198 00000000 */   nop
    /* 4E99C 8005E19C C4030296 */  lhu        $v0, 0x3C4($s0)
    /* 4E9A0 8005E1A0 00000000 */  nop
    /* 4E9A4 8005E1A4 23100200 */  negu       $v0, $v0
    /* 4E9A8 8005E1A8 6A22010C */  jal        func_800489A8
    /* 4E9AC 8005E1AC F20022A6 */   sh        $v0, (0x1F8000F2 & 0xFFFF)($s1)
    /* 4E9B0 8005E1B0 F8002496 */  lhu        $a0, (0x1F8000F8 & 0xFFFF)($s1)
    /* 4E9B4 8005E1B4 02000386 */  lh         $v1, 0x2($s0)
    /* 4E9B8 8005E1B8 00240400 */  sll        $a0, $a0, 16
    /* 4E9BC 8005E1BC 03340400 */  sra        $a2, $a0, 16
    /* 4E9C0 8005E1C0 23186600 */  subu       $v1, $v1, $a2
    /* 4E9C4 8005E1C4 18006300 */  mult       $v1, $v1
    /* 4E9C8 8005E1C8 FC002496 */  lhu        $a0, (0x1F8000FC & 0xFFFF)($s1)
    /* 4E9CC 8005E1CC 06000386 */  lh         $v1, 0x6($s0)
    /* 4E9D0 8005E1D0 00240400 */  sll        $a0, $a0, 16
    /* 4E9D4 8005E1D4 12280000 */  mflo       $a1
    /* 4E9D8 8005E1D8 03240400 */  sra        $a0, $a0, 16
    /* 4E9DC 8005E1DC 23186400 */  subu       $v1, $v1, $a0
    /* 4E9E0 8005E1E0 18006300 */  mult       $v1, $v1
    /* 4E9E4 8005E1E4 FF005430 */  andi       $s4, $v0, 0xFF
    /* 4E9E8 8005E1E8 4000023C */  lui        $v0, (0x400000 >> 16)
    /* 4E9EC 8005E1EC 12180000 */  mflo       $v1
    /* 4E9F0 8005E1F0 2118A300 */  addu       $v1, $a1, $v1
    /* 4E9F4 8005E1F4 2A104300 */  slt        $v0, $v0, $v1
    /* 4E9F8 8005E1F8 BC004014 */  bnez       $v0, .L8005E4EC
    /* 4E9FC 8005E1FC 00000000 */   nop
    /* 4EA00 8005E200 99030292 */  lbu        $v0, 0x399($s0)
    /* 4EA04 8005E204 00000000 */  nop
    /* 4EA08 8005E208 03004014 */  bnez       $v0, .L8005E218
    /* 4EA0C 8005E20C 2120C000 */   addu      $a0, $a2, $zero
    /* 4EA10 8005E210 87780108 */  j          .L8005E21C
    /* 4EA14 8005E214 E0CC8524 */   addiu     $a1, $a0, -0x3320
  .L8005E218:
    /* 4EA18 8005E218 20338524 */  addiu      $a1, $a0, 0x3320
  .L8005E21C:
    /* 4EA1C 8005E21C FC002296 */  lhu        $v0, (0x1F8000FC & 0xFFFF)($s1)
    /* 4EA20 8005E220 00000000 */  nop
    /* 4EA24 8005E224 00140200 */  sll        $v0, $v0, 16
    /* 4EA28 8005E228 03140200 */  sra        $v0, $v0, 16
    /* 4EA2C 8005E22C 18004200 */  mult       $v0, $v0
    /* 4EA30 8005E230 99030392 */  lbu        $v1, 0x399($s0)
    /* 4EA34 8005E234 12300000 */  mflo       $a2
    /* 4EA38 8005E238 02006014 */  bnez       $v1, .L8005E244
    /* 4EA3C 8005E23C 20338224 */   addiu     $v0, $a0, 0x3320
    /* 4EA40 8005E240 E0CC8224 */  addiu      $v0, $a0, -0x3320
  .L8005E244:
    /* 4EA44 8005E244 1800A200 */  mult       $a1, $v0
    /* 4EA48 8005E248 12400000 */  mflo       $t0
    /* 4EA4C 8005E24C 21980601 */  addu       $s3, $t0, $a2
    /* 4EA50 8005E250 E0CC0624 */  addiu      $a2, $zero, -0x3320
    /* 4EA54 8005E254 F8002296 */  lhu        $v0, (0x1F8000F8 & 0xFFFF)($s1)
    /* 4EA58 8005E258 FC002396 */  lhu        $v1, (0x1F8000FC & 0xFFFF)($s1)
    /* 4EA5C 8005E25C 00140200 */  sll        $v0, $v0, 16
    /* 4EA60 8005E260 03240200 */  sra        $a0, $v0, 16
    /* 4EA64 8005E264 001C0300 */  sll        $v1, $v1, 16
    /* 4EA68 8005E268 99030292 */  lbu        $v0, 0x399($s0)
    /* 4EA6C 8005E26C 00000000 */  nop
    /* 4EA70 8005E270 02004014 */  bnez       $v0, .L8005E27C
    /* 4EA74 8005E274 032C0300 */   sra       $a1, $v1, 16
    /* 4EA78 8005E278 20330624 */  addiu      $a2, $zero, 0x3320
  .L8005E27C:
    /* 4EA7C 8005E27C DB6C010C */  jal        func_8005B36C
    /* 4EA80 8005E280 21380000 */   addu      $a3, $zero, $zero
    /* 4EA84 8005E284 99030492 */  lbu        $a0, 0x399($s0)
    /* 4EA88 8005E288 00000000 */  nop
    /* 4EA8C 8005E28C C0190400 */  sll        $v1, $a0, 7
    /* 4EA90 8005E290 23104300 */  subu       $v0, $v0, $v1
    /* 4EA94 8005E294 FF004230 */  andi       $v0, $v0, 0xFF
    /* 4EA98 8005E298 8100422C */  sltiu      $v0, $v0, 0x81
    /* 4EA9C 8005E29C 11004014 */  bnez       $v0, .L8005E2E4
    /* 4EAA0 8005E2A0 E0CC0624 */   addiu     $a2, $zero, -0x3320
    /* 4EAA4 8005E2A4 F8002396 */  lhu        $v1, (0x1F8000F8 & 0xFFFF)($s1)
    /* 4EAA8 8005E2A8 FC002296 */  lhu        $v0, (0x1F8000FC & 0xFFFF)($s1)
    /* 4EAAC 8005E2AC 001C0300 */  sll        $v1, $v1, 16
    /* 4EAB0 8005E2B0 031C0300 */  sra        $v1, $v1, 16
    /* 4EAB4 8005E2B4 00140200 */  sll        $v0, $v0, 16
    /* 4EAB8 8005E2B8 02008014 */  bnez       $a0, .L8005E2C4
    /* 4EABC 8005E2BC 032C0200 */   sra       $a1, $v0, 16
    /* 4EAC0 8005E2C0 20330624 */  addiu      $a2, $zero, 0x3320
  .L8005E2C4:
    /* 4EAC4 8005E2C4 21206000 */  addu       $a0, $v1, $zero
    /* 4EAC8 8005E2C8 DB6C010C */  jal        func_8005B36C
    /* 4EACC 8005E2CC 21380000 */   addu      $a3, $zero, $zero
    /* 4EAD0 8005E2D0 99030392 */  lbu        $v1, 0x399($s0)
    /* 4EAD4 8005E2D4 00000000 */  nop
    /* 4EAD8 8005E2D8 C0190300 */  sll        $v1, $v1, 7
    /* 4EADC 8005E2DC C8780108 */  j          .L8005E320
    /* 4EAE0 8005E2E0 23186200 */   subu      $v1, $v1, $v0
  .L8005E2E4:
    /* 4EAE4 8005E2E4 F8002396 */  lhu        $v1, (0x1F8000F8 & 0xFFFF)($s1)
    /* 4EAE8 8005E2E8 FC002296 */  lhu        $v0, (0x1F8000FC & 0xFFFF)($s1)
    /* 4EAEC 8005E2EC 001C0300 */  sll        $v1, $v1, 16
    /* 4EAF0 8005E2F0 031C0300 */  sra        $v1, $v1, 16
    /* 4EAF4 8005E2F4 00140200 */  sll        $v0, $v0, 16
    /* 4EAF8 8005E2F8 02008014 */  bnez       $a0, .L8005E304
    /* 4EAFC 8005E2FC 032C0200 */   sra       $a1, $v0, 16
    /* 4EB00 8005E300 20330624 */  addiu      $a2, $zero, 0x3320
  .L8005E304:
    /* 4EB04 8005E304 21206000 */  addu       $a0, $v1, $zero
    /* 4EB08 8005E308 DB6C010C */  jal        func_8005B36C
    /* 4EB0C 8005E30C 21380000 */   addu      $a3, $zero, $zero
    /* 4EB10 8005E310 99030392 */  lbu        $v1, 0x399($s0)
    /* 4EB14 8005E314 00000000 */  nop
    /* 4EB18 8005E318 C0190300 */  sll        $v1, $v1, 7
    /* 4EB1C 8005E31C 23184300 */  subu       $v1, $v0, $v1
  .L8005E320:
    /* 4EB20 8005E320 98030292 */  lbu        $v0, 0x398($s0)
    /* 4EB24 8005E324 00000000 */  nop
    /* 4EB28 8005E328 21102202 */  addu       $v0, $s1, $v0
    /* 4EB2C 8005E32C CF024590 */  lbu        $a1, (0x1F8002CF & 0xFFFF)($v0)
    /* 4EB30 8005E330 00000000 */  nop
    /* 4EB34 8005E334 0200A014 */  bnez       $a1, .L8005E340
    /* 4EB38 8005E338 4002043C */   lui       $a0, (0x2400000 >> 16)
    /* 4EB3C 8005E33C 0001043C */  lui        $a0, (0x1000000 >> 16)
  .L8005E340:
    /* 4EB40 8005E340 FF007230 */  andi       $s2, $v1, 0xFF
    /* 4EB44 8005E344 3100422E */  sltiu      $v0, $s2, 0x31
    /* 4EB48 8005E348 20004010 */  beqz       $v0, .L8005E3CC
    /* 4EB4C 8005E34C 2B106402 */   sltu      $v0, $s3, $a0
    /* 4EB50 8005E350 1E004010 */  beqz       $v0, .L8005E3CC
    /* 4EB54 8005E354 01000224 */   addiu     $v0, $zero, 0x1
    /* 4EB58 8005E358 0C00A210 */  beq        $a1, $v0, .L8005E38C
    /* 4EB5C 8005E35C 03000424 */   addiu     $a0, $zero, 0x3
    /* 4EB60 8005E360 AE79000C */  jal        func_8001E6B8
    /* 4EB64 8005E364 03000424 */   addiu     $a0, $zero, 0x3
    /* 4EB68 8005E368 07004014 */  bnez       $v0, .L8005E388
    /* 4EB6C 8005E36C 8F00023C */   lui       $v0, (0x8FFFFF >> 16)
    /* 4EB70 8005E370 FFFF4234 */  ori        $v0, $v0, (0x8FFFFF & 0xFFFF)
    /* 4EB74 8005E374 2B105300 */  sltu       $v0, $v0, $s3
    /* 4EB78 8005E378 14004014 */  bnez       $v0, .L8005E3CC
    /* 4EB7C 8005E37C 1900422E */   sltiu     $v0, $s2, 0x19
    /* 4EB80 8005E380 12004010 */  beqz       $v0, .L8005E3CC
    /* 4EB84 8005E384 00000000 */   nop
  .L8005E388:
    /* 4EB88 8005E388 03000424 */  addiu      $a0, $zero, 0x3
  .L8005E38C:
    /* 4EB8C 8005E38C 19000224 */  addiu      $v0, $zero, 0x19
    /* 4EB90 8005E390 960302A2 */  sb         $v0, 0x396($s0)
    /* 4EB94 8005E394 AE79000C */  jal        func_8001E6B8
    /* 4EB98 8005E398 970300A2 */   sb        $zero, 0x397($s0)
    /* 4EB9C 8005E39C 09004014 */  bnez       $v0, .L8005E3C4
    /* 4EBA0 8005E3A0 00000000 */   nop
    /* 4EBA4 8005E3A4 3025010C */  jal        func_800494C0
    /* 4EBA8 8005E3A8 21200002 */   addu      $a0, $s0, $zero
    /* 4EBAC 8005E3AC C400033C */  lui        $v1, (0xC40000 >> 16)
    /* 4EBB0 8005E3B0 2B186200 */  sltu       $v1, $v1, $v0
    /* 4EBB4 8005E3B4 03006010 */  beqz       $v1, .L8005E3C4
    /* 4EBB8 8005E3B8 01000224 */   addiu     $v0, $zero, 0x1
    /* 4EBBC 8005E3BC 3B790108 */  j          .L8005E4EC
    /* 4EBC0 8005E3C0 C20302A6 */   sh        $v0, 0x3C2($s0)
  .L8005E3C4:
    /* 4EBC4 8005E3C4 3B790108 */  j          .L8005E4EC
    /* 4EBC8 8005E3C8 C20300A6 */   sh        $zero, 0x3C2($s0)
  .L8005E3CC:
    /* 4EBCC 8005E3CC 28032292 */  lbu        $v0, (0x1F800328 & 0xFFFF)($s1)
    /* 4EBD0 8005E3D0 00000000 */  nop
    /* 4EBD4 8005E3D4 45004010 */  beqz       $v0, .L8005E4EC
    /* 4EBD8 8005E3D8 00000000 */   nop
    /* 4EBDC 8005E3DC 97030292 */  lbu        $v0, 0x397($s0)
    /* 4EBE0 8005E3E0 00000000 */  nop
    /* 4EBE4 8005E3E4 E0FF4224 */  addiu      $v0, $v0, -0x20
    /* 4EBE8 8005E3E8 0200422C */  sltiu      $v0, $v0, 0x2
    /* 4EBEC 8005E3EC 3F004014 */  bnez       $v0, .L8005E4EC
    /* 4EBF0 8005E3F0 00000000 */   nop
    /* 4EBF4 8005E3F4 F8002296 */  lhu        $v0, (0x1F8000F8 & 0xFFFF)($s1)
    /* 4EBF8 8005E3F8 99030392 */  lbu        $v1, 0x399($s0)
    /* 4EBFC 8005E3FC 00140200 */  sll        $v0, $v0, 16
    /* 4EC00 8005E400 07006010 */  beqz       $v1, .L8005E420
    /* 4EC04 8005E404 03140200 */   sra       $v0, $v0, 16
    /* 4EC08 8005E408 23100200 */  negu       $v0, $v0
    /* 4EC0C 8005E40C 1FDC4228 */  slti       $v0, $v0, -0x23E1
    /* 4EC10 8005E410 06004014 */  bnez       $v0, .L8005E42C
    /* 4EC14 8005E414 21200002 */   addu      $a0, $s0, $zero
    /* 4EC18 8005E418 21790108 */  j          .L8005E484
    /* 4EC1C 8005E41C 00000000 */   nop
  .L8005E420:
    /* 4EC20 8005E420 1FDC4228 */  slti       $v0, $v0, -0x23E1
    /* 4EC24 8005E424 17004010 */  beqz       $v0, .L8005E484
    /* 4EC28 8005E428 21200002 */   addu      $a0, $s0, $zero
  .L8005E42C:
    /* 4EC2C 8005E42C FC002296 */  lhu        $v0, (0x1F8000FC & 0xFFFF)($s1)
    /* 4EC30 8005E430 00000000 */  nop
    /* 4EC34 8005E434 00140200 */  sll        $v0, $v0, 16
    /* 4EC38 8005E438 03340200 */  sra        $a2, $v0, 16
    /* 4EC3C 8005E43C 0200C104 */  bgez       $a2, .L8005E448
    /* 4EC40 8005E440 2110C000 */   addu      $v0, $a2, $zero
    /* 4EC44 8005E444 23100200 */  negu       $v0, $v0
  .L8005E448:
    /* 4EC48 8005E448 F4124228 */  slti       $v0, $v0, 0x12F4
    /* 4EC4C 8005E44C 0D004010 */  beqz       $v0, .L8005E484
    /* 4EC50 8005E450 21200002 */   addu      $a0, $s0, $zero
    /* 4EC54 8005E454 F8002596 */  lhu        $a1, (0x1F8000F8 & 0xFFFF)($s1)
    /* 4EC58 8005E458 00000000 */  nop
    /* 4EC5C 8005E45C 002C0500 */  sll        $a1, $a1, 16
    /* 4EC60 8005E460 A325010C */  jal        func_8004968C
    /* 4EC64 8005E464 032C0500 */   sra       $a1, $a1, 16
    /* 4EC68 8005E468 8F00033C */  lui        $v1, (0x8FFFFF >> 16)
    /* 4EC6C 8005E46C FFFF6334 */  ori        $v1, $v1, (0x8FFFFF & 0xFFFF)
    /* 4EC70 8005E470 2B186200 */  sltu       $v1, $v1, $v0
    /* 4EC74 8005E474 16006010 */  beqz       $v1, .L8005E4D0
    /* 4EC78 8005E478 00000000 */   nop
    /* 4EC7C 8005E47C 3B790108 */  j          .L8005E4EC
    /* 4EC80 8005E480 00000000 */   nop
  .L8005E484:
    /* 4EC84 8005E484 F8002596 */  lhu        $a1, (0x1F8000F8 & 0xFFFF)($s1)
    /* 4EC88 8005E488 FC002696 */  lhu        $a2, (0x1F8000FC & 0xFFFF)($s1)
    /* 4EC8C 8005E48C 002C0500 */  sll        $a1, $a1, 16
    /* 4EC90 8005E490 032C0500 */  sra        $a1, $a1, 16
    /* 4EC94 8005E494 00340600 */  sll        $a2, $a2, 16
    /* 4EC98 8005E498 A325010C */  jal        func_8004968C
    /* 4EC9C 8005E49C 03340600 */   sra       $a2, $a2, 16
    /* 4ECA0 8005E4A0 4AC4020C */  jal        func_800B1128
    /* 4ECA4 8005E4A4 21204000 */   addu      $a0, $v0, $zero
    /* 4ECA8 8005E4A8 0F3E033C */  lui        $v1, (0x3E0F83E1 >> 16)
    /* 4ECAC 8005E4AC E1836334 */  ori        $v1, $v1, (0x3E0F83E1 & 0xFFFF)
    /* 4ECB0 8005E4B0 19004300 */  multu      $v0, $v1
    /* 4ECB4 8005E4B4 04008326 */  addiu      $v1, $s4, 0x4
    /* 4ECB8 8005E4B8 10400000 */  mfhi       $t0
    /* 4ECBC 8005E4BC 02110800 */  srl        $v0, $t0, 4
    /* 4ECC0 8005E4C0 0A004224 */  addiu      $v0, $v0, 0xA
    /* 4ECC4 8005E4C4 2B104300 */  sltu       $v0, $v0, $v1
    /* 4ECC8 8005E4C8 08004010 */  beqz       $v0, .L8005E4EC
    /* 4ECCC 8005E4CC 00000000 */   nop
  .L8005E4D0:
    /* 4ECD0 8005E4D0 98030292 */  lbu        $v0, 0x398($s0)
    /* 4ECD4 8005E4D4 00000000 */  nop
    /* 4ECD8 8005E4D8 40100200 */  sll        $v0, $v0, 1
    /* 4ECDC 8005E4DC 21105100 */  addu       $v0, $v0, $s1
    /* 4ECE0 8005E4E0 16004294 */  lhu        $v0, (0x1F800016 & 0xFFFF)($v0)
    /* 4ECE4 8005E4E4 00000000 */  nop
    /* 4ECE8 8005E4E8 D60302A6 */  sh         $v0, 0x3D6($s0)
  jlabel .L8005E4EC
    /* 4ECEC 8005E4EC 2400BF8F */  lw         $ra, 0x24($sp)
    /* 4ECF0 8005E4F0 2000B48F */  lw         $s4, 0x20($sp)
    /* 4ECF4 8005E4F4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 4ECF8 8005E4F8 1800B28F */  lw         $s2, 0x18($sp)
    /* 4ECFC 8005E4FC 1400B18F */  lw         $s1, 0x14($sp)
    /* 4ED00 8005E500 1000B08F */  lw         $s0, 0x10($sp)
    /* 4ED04 8005E504 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 4ED08 8005E508 0800E003 */  jr         $ra
    /* 4ED0C 8005E50C 00000000 */   nop
endlabel func_8005E104
