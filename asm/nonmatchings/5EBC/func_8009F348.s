nonmatching func_8009F348, 0x1B8

glabel func_8009F348
    /* 8FB48 8009F348 801F023C */  lui        $v0, (0x1F8001F0 >> 16)
    /* 8FB4C 8009F34C F001428C */  lw         $v0, (0x1F8001F0 & 0xFFFF)($v0)
    /* 8FB50 8009F350 801F033C */  lui        $v1, (0x1F8001FC >> 16)
    /* 8FB54 8009F354 FC01638C */  lw         $v1, (0x1F8001FC & 0xFFFF)($v1)
    /* 8FB58 8009F358 00000000 */  nop
    /* 8FB5C 8009F35C 23104300 */  subu       $v0, $v0, $v1
    /* 8FB60 8009F360 18004200 */  mult       $v0, $v0
    /* 8FB64 8009F364 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 8FB68 8009F368 801F023C */  lui        $v0, (0x1F8001F8 >> 16)
    /* 8FB6C 8009F36C F801428C */  lw         $v0, (0x1F8001F8 & 0xFFFF)($v0)
    /* 8FB70 8009F370 801F033C */  lui        $v1, (0x1F800204 >> 16)
    /* 8FB74 8009F374 0402638C */  lw         $v1, (0x1F800204 & 0xFFFF)($v1)
    /* 8FB78 8009F378 12200000 */  mflo       $a0
    /* 8FB7C 8009F37C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8FB80 8009F380 23104300 */  subu       $v0, $v0, $v1
    /* 8FB84 8009F384 18004200 */  mult       $v0, $v0
    /* 8FB88 8009F388 801F133C */  lui        $s3, (0x1F8001F8 >> 16)
    /* 8FB8C 8009F38C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 8FB90 8009F390 FFFF1424 */  addiu      $s4, $zero, -0x1
    /* 8FB94 8009F394 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8FB98 8009F398 21880000 */  addu       $s1, $zero, $zero
    /* 8FB9C 8009F39C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8FBA0 8009F3A0 21900000 */  addu       $s2, $zero, $zero
    /* 8FBA4 8009F3A4 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 8FBA8 8009F3A8 2800B6AF */  sw         $s6, 0x28($sp)
    /* 8FBAC 8009F3AC 2400B5AF */  sw         $s5, 0x24($sp)
    /* 8FBB0 8009F3B0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8FBB4 8009F3B4 12180000 */  mflo       $v1
    /* 8FBB8 8009F3B8 4AC4020C */  jal        func_800B1128
    /* 8FBBC 8009F3BC 21208300 */   addu      $a0, $a0, $v1
    /* 8FBC0 8009F3C0 21A84000 */  addu       $s5, $v0, $zero
  .L8009F3C4:
    /* 8FBC4 8009F3C4 FF003032 */  andi       $s0, $s1, 0xFF
    /* 8FBC8 8009F3C8 21200002 */  addu       $a0, $s0, $zero
    /* 8FBCC 8009F3CC A579000C */  jal        func_8001E694
    /* 8FBD0 8009F3D0 2128A002 */   addu      $a1, $s5, $zero
    /* 8FBD4 8009F3D4 21200002 */  addu       $a0, $s0, $zero
    /* 8FBD8 8009F3D8 FC01638E */  lw         $v1, (0x1F8001FC & 0xFFFF)($s3)
    /* 8FBDC 8009F3DC F001668E */  lw         $a2, (0x1F8001F0 & 0xFFFF)($s3)
    /* 8FBE0 8009F3E0 21186200 */  addu       $v1, $v1, $v0
    /* 8FBE4 8009F3E4 2330C300 */  subu       $a2, $a2, $v1
    /* 8FBE8 8009F3E8 0200C104 */  bgez       $a2, .L8009F3F4
    /* 8FBEC 8009F3EC 2180C000 */   addu      $s0, $a2, $zero
    /* 8FBF0 8009F3F0 23801000 */  negu       $s0, $s0
  .L8009F3F4:
    /* 8FBF4 8009F3F4 6979000C */  jal        func_8001E5A4
    /* 8FBF8 8009F3F8 2128A002 */   addu      $a1, $s5, $zero
    /* 8FBFC 8009F3FC 0402648E */  lw         $a0, (0x1F800204 & 0xFFFF)($s3)
    /* 8FC00 8009F400 F801638E */  lw         $v1, (0x1F8001F8 & 0xFFFF)($s3)
    /* 8FC04 8009F404 21208200 */  addu       $a0, $a0, $v0
    /* 8FC08 8009F408 23186400 */  subu       $v1, $v1, $a0
    /* 8FC0C 8009F40C 02006104 */  bgez       $v1, .L8009F418
    /* 8FC10 8009F410 00000000 */   nop
    /* 8FC14 8009F414 23180300 */  negu       $v1, $v1
  .L8009F418:
    /* 8FC18 8009F418 21800302 */  addu       $s0, $s0, $v1
    /* 8FC1C 8009F41C 2B101402 */  sltu       $v0, $s0, $s4
    /* 8FC20 8009F420 03004010 */  beqz       $v0, .L8009F430
    /* 8FC24 8009F424 00000000 */   nop
    /* 8FC28 8009F428 21B02002 */  addu       $s6, $s1, $zero
    /* 8FC2C 8009F42C 21A00002 */  addu       $s4, $s0, $zero
  .L8009F430:
    /* 8FC30 8009F430 01005226 */  addiu      $s2, $s2, 0x1
    /* 8FC34 8009F434 FF004232 */  andi       $v0, $s2, 0xFF
    /* 8FC38 8009F438 1000422C */  sltiu      $v0, $v0, 0x10
    /* 8FC3C 8009F43C E1FF4014 */  bnez       $v0, .L8009F3C4
    /* 8FC40 8009F440 10003126 */   addiu     $s1, $s1, 0x10
    /* 8FC44 8009F444 FFFF1424 */  addiu      $s4, $zero, -0x1
    /* 8FC48 8009F448 F8FFD126 */  addiu      $s1, $s6, -0x8
    /* 8FC4C 8009F44C 21900000 */  addu       $s2, $zero, $zero
  .L8009F450:
    /* 8FC50 8009F450 FF003032 */  andi       $s0, $s1, 0xFF
    /* 8FC54 8009F454 21200002 */  addu       $a0, $s0, $zero
    /* 8FC58 8009F458 A579000C */  jal        func_8001E694
    /* 8FC5C 8009F45C 2128A002 */   addu      $a1, $s5, $zero
    /* 8FC60 8009F460 21200002 */  addu       $a0, $s0, $zero
    /* 8FC64 8009F464 FC01638E */  lw         $v1, (0x1F8001FC & 0xFFFF)($s3)
    /* 8FC68 8009F468 F001668E */  lw         $a2, (0x1F8001F0 & 0xFFFF)($s3)
    /* 8FC6C 8009F46C 21186200 */  addu       $v1, $v1, $v0
    /* 8FC70 8009F470 2330C300 */  subu       $a2, $a2, $v1
    /* 8FC74 8009F474 0200C104 */  bgez       $a2, .L8009F480
    /* 8FC78 8009F478 2180C000 */   addu      $s0, $a2, $zero
    /* 8FC7C 8009F47C 23801000 */  negu       $s0, $s0
  .L8009F480:
    /* 8FC80 8009F480 6979000C */  jal        func_8001E5A4
    /* 8FC84 8009F484 2128A002 */   addu      $a1, $s5, $zero
    /* 8FC88 8009F488 0402648E */  lw         $a0, (0x1F800204 & 0xFFFF)($s3)
    /* 8FC8C 8009F48C F801638E */  lw         $v1, (0x1F8001F8 & 0xFFFF)($s3)
    /* 8FC90 8009F490 21208200 */  addu       $a0, $a0, $v0
    /* 8FC94 8009F494 23186400 */  subu       $v1, $v1, $a0
    /* 8FC98 8009F498 02006104 */  bgez       $v1, .L8009F4A4
    /* 8FC9C 8009F49C 00000000 */   nop
    /* 8FCA0 8009F4A0 23180300 */  negu       $v1, $v1
  .L8009F4A4:
    /* 8FCA4 8009F4A4 21800302 */  addu       $s0, $s0, $v1
    /* 8FCA8 8009F4A8 2B101402 */  sltu       $v0, $s0, $s4
    /* 8FCAC 8009F4AC 03004010 */  beqz       $v0, .L8009F4BC
    /* 8FCB0 8009F4B0 00000000 */   nop
    /* 8FCB4 8009F4B4 21B02002 */  addu       $s6, $s1, $zero
    /* 8FCB8 8009F4B8 21A00002 */  addu       $s4, $s0, $zero
  .L8009F4BC:
    /* 8FCBC 8009F4BC 01005226 */  addiu      $s2, $s2, 0x1
    /* 8FCC0 8009F4C0 FF004232 */  andi       $v0, $s2, 0xFF
    /* 8FCC4 8009F4C4 1000422C */  sltiu      $v0, $v0, 0x10
    /* 8FCC8 8009F4C8 E1FF4014 */  bnez       $v0, .L8009F450
    /* 8FCCC 8009F4CC 01003126 */   addiu     $s1, $s1, 0x1
    /* 8FCD0 8009F4D0 FF00C232 */  andi       $v0, $s6, 0xFF
    /* 8FCD4 8009F4D4 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 8FCD8 8009F4D8 2800B68F */  lw         $s6, 0x28($sp)
    /* 8FCDC 8009F4DC 2400B58F */  lw         $s5, 0x24($sp)
    /* 8FCE0 8009F4E0 2000B48F */  lw         $s4, 0x20($sp)
    /* 8FCE4 8009F4E4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8FCE8 8009F4E8 1800B28F */  lw         $s2, 0x18($sp)
    /* 8FCEC 8009F4EC 1400B18F */  lw         $s1, 0x14($sp)
    /* 8FCF0 8009F4F0 1000B08F */  lw         $s0, 0x10($sp)
    /* 8FCF4 8009F4F4 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 8FCF8 8009F4F8 0800E003 */  jr         $ra
    /* 8FCFC 8009F4FC 00000000 */   nop
endlabel func_8009F348
