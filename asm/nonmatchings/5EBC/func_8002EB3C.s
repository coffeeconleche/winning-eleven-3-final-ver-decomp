nonmatching func_8002EB3C, 0x174

glabel func_8002EB3C
    /* 1F33C 8002EB3C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1F340 8002EB40 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1F344 8002EB44 21908000 */  addu       $s2, $a0, $zero
    /* 1F348 8002EB48 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1F34C 8002EB4C 2198A000 */  addu       $s3, $a1, $zero
    /* 1F350 8002EB50 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1F354 8002EB54 00017126 */  addiu      $s1, $s3, 0x100
    /* 1F358 8002EB58 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1F35C 8002EB5C 801F103C */  lui        $s0, (0x1F8000B4 >> 16)
    /* 1F360 8002EB60 FFFE0234 */  ori        $v0, $zero, 0xFEFF
    /* 1F364 8002EB64 2A105100 */  slt        $v0, $v0, $s1
    /* 1F368 8002EB68 48004014 */  bnez       $v0, .L8002EC8C
    /* 1F36C 8002EB6C 2000BFAF */   sw        $ra, 0x20($sp)
    /* 1F370 8002EB70 21204002 */  addu       $a0, $s2, $zero
  .L8002EB74:
    /* 1F374 8002EB74 E0FF0224 */  addiu      $v0, $zero, -0x20
    /* 1F378 8002EB78 F80000A6 */  sh         $zero, (0x1F8000F8 & 0xFFFF)($s0)
    /* 1F37C 8002EB7C FA0002A6 */  sh         $v0, (0x1F8000FA & 0xFFFF)($s0)
    /* 1F380 8002EB80 FC0000A6 */  sh         $zero, (0x1F8000FC & 0xFFFF)($s0)
    /* 1F384 8002EB84 B10000A2 */  sb         $zero, (0x1F8000B1 & 0xFFFF)($s0)
    /* 1F388 8002EB88 B20000A2 */  sb         $zero, (0x1F8000B2 & 0xFFFF)($s0)
    /* 1F38C 8002EB8C B2BD000C */  jal        func_8002F6C8
    /* 1F390 8002EB90 B40011AE */   sw        $s1, (0x1F8000B4 & 0xFFFF)($s0)
    /* 1F394 8002EB94 40180200 */  sll        $v1, $v0, 1
    /* 1F398 8002EB98 21186200 */  addu       $v1, $v1, $v0
    /* 1F39C 8002EB9C C0180300 */  sll        $v1, $v1, 3
    /* 1F3A0 8002EBA0 23186200 */  subu       $v1, $v1, $v0
    /* 1F3A4 8002EBA4 40190300 */  sll        $v1, $v1, 5
    /* 1F3A8 8002EBA8 23180300 */  negu       $v1, $v1
    /* 1F3AC 8002EBAC B80003AE */  sw         $v1, (0x1F8000B8 & 0xFFFF)($s0)
    /* 1F3B0 8002EBB0 F402038E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s0)
    /* 1F3B4 8002EBB4 04000224 */  addiu      $v0, $zero, 0x4
    /* 1F3B8 8002EBB8 B00002A2 */  sb         $v0, (0x1F8000B0 & 0xFFFF)($s0)
    /* 1F3BC 8002EBBC 01000224 */  addiu      $v0, $zero, 0x1
    /* 1F3C0 8002EBC0 CC0362A4 */  sh         $v0, 0x3CC($v1)
    /* 1F3C4 8002EBC4 F8000296 */  lhu        $v0, (0x1F8000F8 & 0xFFFF)($s0)
    /* 1F3C8 8002EBC8 00000000 */  nop
    /* 1F3CC 8002EBCC 00140200 */  sll        $v0, $v0, 16
    /* 1F3D0 8002EBD0 03140200 */  sra        $v0, $v0, 16
    /* 1F3D4 8002EBD4 2B105200 */  sltu       $v0, $v0, $s2
    /* 1F3D8 8002EBD8 1C004010 */  beqz       $v0, .L8002EC4C
    /* 1F3DC 8002EBDC 00000000 */   nop
  .L8002EBE0:
    /* 1F3E0 8002EBE0 B400028E */  lw         $v0, (0x1F8000B4 & 0xFFFF)($s0)
    /* 1F3E4 8002EBE4 00000000 */  nop
    /* 1F3E8 8002EBE8 2B106202 */  sltu       $v0, $s3, $v0
    /* 1F3EC 8002EBEC 10004010 */  beqz       $v0, .L8002EC30
    /* 1F3F0 8002EBF0 00000000 */   nop
    /* 1F3F4 8002EBF4 A92E010C */  jal        func_8004BAA4
    /* 1F3F8 8002EBF8 21200000 */   addu      $a0, $zero, $zero
    /* 1F3FC 8002EBFC F402038E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s0)
    /* 1F400 8002EC00 00000000 */  nop
    /* 1F404 8002EC04 CC036294 */  lhu        $v0, 0x3CC($v1)
    /* 1F408 8002EC08 00000000 */  nop
    /* 1F40C 8002EC0C 01004224 */  addiu      $v0, $v0, 0x1
    /* 1F410 8002EC10 CC0362A4 */  sh         $v0, 0x3CC($v1)
    /* 1F414 8002EC14 F8000296 */  lhu        $v0, (0x1F8000F8 & 0xFFFF)($s0)
    /* 1F418 8002EC18 00000000 */  nop
    /* 1F41C 8002EC1C 00140200 */  sll        $v0, $v0, 16
    /* 1F420 8002EC20 03140200 */  sra        $v0, $v0, 16
    /* 1F424 8002EC24 2B105200 */  sltu       $v0, $v0, $s2
    /* 1F428 8002EC28 EDFF4014 */  bnez       $v0, .L8002EBE0
    /* 1F42C 8002EC2C 00000000 */   nop
  .L8002EC30:
    /* 1F430 8002EC30 F8000296 */  lhu        $v0, (0x1F8000F8 & 0xFFFF)($s0)
    /* 1F434 8002EC34 00000000 */  nop
    /* 1F438 8002EC38 00140200 */  sll        $v0, $v0, 16
    /* 1F43C 8002EC3C 03140200 */  sra        $v0, $v0, 16
    /* 1F440 8002EC40 2B105200 */  sltu       $v0, $v0, $s2
    /* 1F444 8002EC44 0C004014 */  bnez       $v0, .L8002EC78
    /* 1F448 8002EC48 00000000 */   nop
  .L8002EC4C:
    /* 1F44C 8002EC4C B400028E */  lw         $v0, (0x1F8000B4 & 0xFFFF)($s0)
    /* 1F450 8002EC50 00000000 */  nop
    /* 1F454 8002EC54 2B105300 */  sltu       $v0, $v0, $s3
    /* 1F458 8002EC58 07004014 */  bnez       $v0, .L8002EC78
    /* 1F45C 8002EC5C 00000000 */   nop
    /* 1F460 8002EC60 02002106 */  bgez       $s1, .L8002EC6C
    /* 1F464 8002EC64 21102002 */   addu      $v0, $s1, $zero
    /* 1F468 8002EC68 FF002226 */  addiu      $v0, $s1, 0xFF
  .L8002EC6C:
    /* 1F46C 8002EC6C 03120200 */  sra        $v0, $v0, 8
    /* 1F470 8002EC70 24BB0008 */  j          .L8002EC90
    /* 1F474 8002EC74 FF004230 */   andi      $v0, $v0, 0xFF
  .L8002EC78:
    /* 1F478 8002EC78 00023126 */  addiu      $s1, $s1, 0x200
    /* 1F47C 8002EC7C FFFE0234 */  ori        $v0, $zero, 0xFEFF
    /* 1F480 8002EC80 2A105100 */  slt        $v0, $v0, $s1
    /* 1F484 8002EC84 BBFF4010 */  beqz       $v0, .L8002EB74
    /* 1F488 8002EC88 21204002 */   addu      $a0, $s2, $zero
  .L8002EC8C:
    /* 1F48C 8002EC8C FF000224 */  addiu      $v0, $zero, 0xFF
  .L8002EC90:
    /* 1F490 8002EC90 2000BF8F */  lw         $ra, 0x20($sp)
    /* 1F494 8002EC94 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1F498 8002EC98 1800B28F */  lw         $s2, 0x18($sp)
    /* 1F49C 8002EC9C 1400B18F */  lw         $s1, 0x14($sp)
    /* 1F4A0 8002ECA0 1000B08F */  lw         $s0, 0x10($sp)
    /* 1F4A4 8002ECA4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1F4A8 8002ECA8 0800E003 */  jr         $ra
    /* 1F4AC 8002ECAC 00000000 */   nop
endlabel func_8002EB3C
