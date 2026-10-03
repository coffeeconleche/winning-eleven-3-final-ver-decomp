nonmatching func_8004E2A0, 0x170

glabel func_8004E2A0
    /* 3EAA0 8004E2A0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3EAA4 8004E2A4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3EAA8 8004E2A8 21908000 */  addu       $s2, $a0, $zero
    /* 3EAAC 8004E2AC 01000524 */  addiu      $a1, $zero, 0x1
    /* 3EAB0 8004E2B0 2000BFAF */  sw         $ra, 0x20($sp)
    /* 3EAB4 8004E2B4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3EAB8 8004E2B8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3EABC 8004E2BC AE44010C */  jal        func_800512B8
    /* 3EAC0 8004E2C0 1000B0AF */   sw        $s0, 0x10($sp)
    /* 3EAC4 8004E2C4 0439010C */  jal        func_8004E410
    /* 3EAC8 8004E2C8 21204002 */   addu      $a0, $s2, $zero
    /* 3EACC 8004E2CC 21804000 */  addu       $s0, $v0, $zero
    /* 3EAD0 8004E2D0 801F033C */  lui        $v1, (0x1F8002B0 >> 16)
    /* 3EAD4 8004E2D4 B002638C */  lw         $v1, (0x1F8002B0 & 0xFFFF)($v1)
    /* 3EAD8 8004E2D8 0B000224 */  addiu      $v0, $zero, 0xB
    /* 3EADC 8004E2DC 14006214 */  bne        $v1, $v0, .L8004E330
    /* 3EAE0 8004E2E0 801F133C */   lui       $s3, (0x1F8002F4 >> 16)
    /* 3EAE4 8004E2E4 0C000224 */  addiu      $v0, $zero, 0xC
    /* 3EAE8 8004E2E8 801F013C */  lui        $at, (0x1F80031C >> 16)
    /* 3EAEC 8004E2EC 1C0322A4 */  sh         $v0, (0x1F80031C & 0xFFFF)($at)
    /* 3EAF0 8004E2F0 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 3EAF4 8004E2F4 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 3EAF8 8004E2F8 A4034692 */  lbu        $a2, 0x3A4($s2)
    /* 3EAFC 8004E2FC A4034590 */  lbu        $a1, 0x3A4($v0)
    /* 3EB00 8004E300 A003448E */  lw         $a0, 0x3A0($s2)
    /* 3EB04 8004E304 2310C500 */  subu       $v0, $a2, $a1
    /* 3EB08 8004E308 FF004330 */  andi       $v1, $v0, 0xFF
    /* 3EB0C 8004E30C 8100622C */  sltiu      $v0, $v1, 0x81
    /* 3EB10 8004E310 04004014 */  bnez       $v0, .L8004E324
    /* 3EB14 8004E314 18008300 */   mult      $a0, $v1
    /* 3EB18 8004E318 2310A600 */  subu       $v0, $a1, $a2
    /* 3EB1C 8004E31C FF004230 */  andi       $v0, $v0, 0xFF
    /* 3EB20 8004E320 18008200 */  mult       $a0, $v0
  .L8004E324:
    /* 3EB24 8004E324 12400000 */  mflo       $t0
    /* 3EB28 8004E328 DC380108 */  j          .L8004E370
    /* 3EB2C 8004E32C 428A0800 */   srl       $s1, $t0, 9
  .L8004E330:
    /* 3EB30 8004E330 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 3EB34 8004E334 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 3EB38 8004E338 A4034692 */  lbu        $a2, 0x3A4($s2)
    /* 3EB3C 8004E33C A4034590 */  lbu        $a1, 0x3A4($v0)
    /* 3EB40 8004E340 A003448E */  lw         $a0, 0x3A0($s2)
    /* 3EB44 8004E344 2310C500 */  subu       $v0, $a2, $a1
    /* 3EB48 8004E348 FF004330 */  andi       $v1, $v0, 0xFF
    /* 3EB4C 8004E34C 8100622C */  sltiu      $v0, $v1, 0x81
    /* 3EB50 8004E350 04004014 */  bnez       $v0, .L8004E364
    /* 3EB54 8004E354 18008300 */   mult      $a0, $v1
    /* 3EB58 8004E358 2310A600 */  subu       $v0, $a1, $a2
    /* 3EB5C 8004E35C FF004230 */  andi       $v0, $v0, 0xFF
    /* 3EB60 8004E360 18008200 */  mult       $a0, $v0
  .L8004E364:
    /* 3EB64 8004E364 12400000 */  mflo       $t0
    /* 3EB68 8004E368 028A0800 */  srl        $s1, $t0, 8
    /* 3EB6C 8004E36C 1C0360A6 */  sh         $zero, (0x1F80031C & 0xFFFF)($s3)
  .L8004E370:
    /* 3EB70 8004E370 FF001032 */  andi       $s0, $s0, 0xFF
    /* 3EB74 8004E374 6A39010C */  jal        func_8004E5A8
    /* 3EB78 8004E378 21200002 */   addu      $a0, $s0, $zero
    /* 3EB7C 8004E37C 21204002 */  addu       $a0, $s2, $zero
    /* 3EB80 8004E380 21280002 */  addu       $a1, $s0, $zero
    /* 3EB84 8004E384 21304000 */  addu       $a2, $v0, $zero
    /* 3EB88 8004E388 7154020C */  jal        func_800951C4
    /* 3EB8C 8004E38C 21382002 */   addu      $a3, $s1, $zero
    /* 3EB90 8004E390 0B000224 */  addiu      $v0, $zero, 0xB
    /* 3EB94 8004E394 B00262AE */  sw         $v0, (0x1F8002B0 & 0xFFFF)($s3)
    /* 3EB98 8004E398 98034292 */  lbu        $v0, 0x398($s2)
    /* 3EB9C 8004E39C 01000324 */  addiu      $v1, $zero, 0x1
    /* 3EBA0 8004E3A0 21106202 */  addu       $v0, $s3, $v0
    /* 3EBA4 8004E3A4 CF0243A0 */  sb         $v1, (0x1F8002CF & 0xFFFF)($v0)
    /* 3EBA8 8004E3A8 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3EBAC 8004E3AC 02000324 */  addiu      $v1, $zero, 0x2
    /* 3EBB0 8004E3B0 B00343A0 */  sb         $v1, 0x3B0($v0)
    /* 3EBB4 8004E3B4 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3EBB8 8004E3B8 21204002 */  addu       $a0, $s2, $zero
    /* 3EBBC 8004E3BC 1B4B010C */  jal        func_80052C6C
    /* 3EBC0 8004E3C0 B20343A0 */   sb        $v1, 0x3B2($v0)
    /* 3EBC4 8004E3C4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3EBC8 8004E3C8 09004014 */  bnez       $v0, .L8004E3F0
    /* 3EBCC 8004E3CC 00000000 */   nop
    /* 3EBD0 8004E3D0 AE79000C */  jal        func_8001E6B8
    /* 3EBD4 8004E3D4 04000424 */   addiu     $a0, $zero, 0x4
    /* 3EBD8 8004E3D8 04004224 */  addiu      $v0, $v0, 0x4
    /* 3EBDC 8004E3DC D00342A2 */  sb         $v0, 0x3D0($s2)
    /* 3EBE0 8004E3E0 0E000224 */  addiu      $v0, $zero, 0xE
    /* 3EBE4 8004E3E4 960342A2 */  sb         $v0, 0x396($s2)
    /* 3EBE8 8004E3E8 40000224 */  addiu      $v0, $zero, 0x40
    /* 3EBEC 8004E3EC 970342A2 */  sb         $v0, 0x397($s2)
  .L8004E3F0:
    /* 3EBF0 8004E3F0 2000BF8F */  lw         $ra, 0x20($sp)
    /* 3EBF4 8004E3F4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3EBF8 8004E3F8 1800B28F */  lw         $s2, 0x18($sp)
    /* 3EBFC 8004E3FC 1400B18F */  lw         $s1, 0x14($sp)
    /* 3EC00 8004E400 1000B08F */  lw         $s0, 0x10($sp)
    /* 3EC04 8004E404 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3EC08 8004E408 0800E003 */  jr         $ra
    /* 3EC0C 8004E40C 00000000 */   nop
endlabel func_8004E2A0
