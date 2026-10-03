nonmatching func_800BE2B8, 0x1E0

glabel func_800BE2B8
    /* AEAB8 800BE2B8 21400000 */  addu       $t0, $zero, $zero
    /* AEABC 800BE2BC 1180053C */  lui        $a1, %hi(D_8010A3E4)
    /* AEAC0 800BE2C0 E4A3A524 */  addiu      $a1, $a1, %lo(D_8010A3E4)
    /* AEAC4 800BE2C4 FEFFAA24 */  addiu      $t2, $a1, -0x2
    /* AEAC8 800BE2C8 01000924 */  addiu      $t1, $zero, 0x1
    /* AEACC 800BE2CC 1180073C */  lui        $a3, %hi(D_8010CE28)
    /* AEAD0 800BE2D0 28CEE724 */  addiu      $a3, $a3, %lo(D_8010CE28)
    /* AEAD4 800BE2D4 F0FFA390 */  lbu        $v1, -0x10($a1)
    /* AEAD8 800BE2D8 FEFFA684 */  lh         $a2, -0x2($a1)
    /* AEADC 800BE2DC EBFFA480 */  lb         $a0, -0x15($a1)
    /* AEAE0 800BE2E0 001E0300 */  sll        $v1, $v1, 24
    /* AEAE4 800BE2E4 031E0300 */  sra        $v1, $v1, 24
    /* AEAE8 800BE2E8 C0100600 */  sll        $v0, $a2, 3
    /* AEAEC 800BE2EC 00210400 */  sll        $a0, $a0, 4
    /* AEAF0 800BE2F0 21186400 */  addu       $v1, $v1, $a0
    /* AEAF4 800BE2F4 0000A2A4 */  sh         $v0, 0x0($a1)
    /* AEAF8 800BE2F8 23104600 */  subu       $v0, $v0, $a2
    /* AEAFC 800BE2FC 80100200 */  sll        $v0, $v0, 2
    /* AEB00 800BE300 23104600 */  subu       $v0, $v0, $a2
    /* AEB04 800BE304 40100200 */  sll        $v0, $v0, 1
    /* AEB08 800BE308 0200A3A4 */  sh         $v1, 0x2($a1)
    /* AEB0C 800BE30C FF7F0324 */  addiu      $v1, $zero, 0x7FFF
    /* AEB10 800BE310 0E80013C */  lui        $at, %hi(D_800E78DE)
    /* AEB14 800BE314 21082200 */  addu       $at, $at, $v0
    /* AEB18 800BE318 DE7823A4 */  sh         $v1, %lo(D_800E78DE)($at)
  .L800BE31C:
    /* AEB1C 800BE31C 01000825 */  addiu      $t0, $t0, 0x1
    /* AEB20 800BE320 00004285 */  lh         $v0, 0x0($t2)
    /* AEB24 800BE324 0000E38C */  lw         $v1, 0x0($a3)
    /* AEB28 800BE328 04104900 */  sllv       $v0, $t1, $v0
    /* AEB2C 800BE32C 27100200 */  nor        $v0, $zero, $v0
    /* AEB30 800BE330 24186200 */  and        $v1, $v1, $v0
    /* AEB34 800BE334 0000E3AC */  sw         $v1, 0x0($a3)
    /* AEB38 800BE338 10000229 */  slti       $v0, $t0, 0x10
    /* AEB3C 800BE33C F7FF4014 */  bnez       $v0, .L800BE31C
    /* AEB40 800BE340 0400E724 */   addiu     $a3, $a3, 0x4
    /* AEB44 800BE344 1180043C */  lui        $a0, %hi(D_8010A3E0)
    /* AEB48 800BE348 E0A38424 */  addiu      $a0, $a0, %lo(D_8010A3E0)
    /* AEB4C 800BE34C 00008394 */  lhu        $v1, 0x0($a0)
    /* AEB50 800BE350 00000000 */  nop
    /* AEB54 800BE354 01006230 */  andi       $v0, $v1, 0x1
    /* AEB58 800BE358 0E004018 */  blez       $v0, .L800BE394
    /* AEB5C 800BE35C 00140300 */   sll       $v0, $v1, 16
    /* AEB60 800BE360 03140200 */  sra        $v0, $v0, 16
    /* AEB64 800BE364 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* AEB68 800BE368 C21F0200 */  srl        $v1, $v0, 31
    /* AEB6C 800BE36C 21104300 */  addu       $v0, $v0, $v1
    /* AEB70 800BE370 43100200 */  sra        $v0, $v0, 1
    /* AEB74 800BE374 0F80033C */  lui        $v1, %hi(D_800F1098)
    /* AEB78 800BE378 9810638C */  lw         $v1, %lo(D_800F1098)($v1)
    /* AEB7C 800BE37C 00110200 */  sll        $v0, $v0, 4
    /* AEB80 800BE380 21104300 */  addu       $v0, $v0, $v1
    /* AEB84 800BE384 04008384 */  lh         $v1, 0x4($a0)
    /* AEB88 800BE388 0C004294 */  lhu        $v0, 0xC($v0)
    /* AEB8C 800BE38C F1F80208 */  j          .L800BE3C4
    /* AEB90 800BE390 40180300 */   sll       $v1, $v1, 1
  .L800BE394:
    /* AEB94 800BE394 03140200 */  sra        $v0, $v0, 16
    /* AEB98 800BE398 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* AEB9C 800BE39C C21F0200 */  srl        $v1, $v0, 31
    /* AEBA0 800BE3A0 21104300 */  addu       $v0, $v0, $v1
    /* AEBA4 800BE3A4 43100200 */  sra        $v0, $v0, 1
    /* AEBA8 800BE3A8 0F80033C */  lui        $v1, %hi(D_800F1098)
    /* AEBAC 800BE3AC 9810638C */  lw         $v1, %lo(D_800F1098)($v1)
    /* AEBB0 800BE3B0 00110200 */  sll        $v0, $v0, 4
    /* AEBB4 800BE3B4 21104300 */  addu       $v0, $v0, $v1
    /* AEBB8 800BE3B8 04008384 */  lh         $v1, 0x4($a0)
    /* AEBBC 800BE3BC 0E004294 */  lhu        $v0, 0xE($v0)
    /* AEBC0 800BE3C0 40180300 */  sll        $v1, $v1, 1
  .L800BE3C4:
    /* AEBC4 800BE3C4 1180013C */  lui        $at, %hi(D_8010A41E)
    /* AEBC8 800BE3C8 21082300 */  addu       $at, $at, $v1
    /* AEBCC 800BE3CC 1EA422A4 */  sh         $v0, %lo(D_8010A41E)($at)
    /* AEBD0 800BE3D0 02008384 */  lh         $v1, 0x2($a0)
    /* AEBD4 800BE3D4 0F80023C */  lui        $v0, %hi(D_800E81E0)
    /* AEBD8 800BE3D8 21104300 */  addu       $v0, $v0, $v1
    /* AEBDC 800BE3DC E0814290 */  lbu        $v0, %lo(D_800E81E0)($v0)
    /* AEBE0 800BE3E0 00000000 */  nop
    /* AEBE4 800BE3E4 08004234 */  ori        $v0, $v0, 0x8
    /* AEBE8 800BE3E8 0F80013C */  lui        $at, %hi(D_800E81E0)
    /* AEBEC 800BE3EC 21082300 */  addu       $at, $at, $v1
    /* AEBF0 800BE3F0 E08122A0 */  sb         $v0, %lo(D_800E81E0)($at)
    /* AEBF4 800BE3F4 1180043C */  lui        $a0, %hi(D_8010A3E4)
    /* AEBF8 800BE3F8 E4A38424 */  addiu      $a0, $a0, %lo(D_8010A3E4)
    /* AEBFC 800BE3FC EBFF8280 */  lb         $v0, -0x15($a0)
    /* AEC00 800BE400 F0FF8380 */  lb         $v1, -0x10($a0)
    /* AEC04 800BE404 0F80053C */  lui        $a1, %hi(D_800F20B0)
    /* AEC08 800BE408 B020A58C */  lw         $a1, %lo(D_800F20B0)($a1)
    /* AEC0C 800BE40C 00110200 */  sll        $v0, $v0, 4
    /* AEC10 800BE410 21104300 */  addu       $v0, $v0, $v1
    /* AEC14 800BE414 40110200 */  sll        $v0, $v0, 5
    /* AEC18 800BE418 21104500 */  addu       $v0, $v0, $a1
    /* AEC1C 800BE41C 00008384 */  lh         $v1, 0x0($a0)
    /* AEC20 800BE420 10004294 */  lhu        $v0, 0x10($v0)
    /* AEC24 800BE424 40180300 */  sll        $v1, $v1, 1
    /* AEC28 800BE428 1180013C */  lui        $at, %hi(D_8010A420)
    /* AEC2C 800BE42C 21082300 */  addu       $at, $at, $v1
    /* AEC30 800BE430 20A422A4 */  sh         $v0, %lo(D_8010A420)($at)
    /* AEC34 800BE434 EBFF8280 */  lb         $v0, -0x15($a0)
    /* AEC38 800BE438 F0FF8380 */  lb         $v1, -0x10($a0)
    /* AEC3C 800BE43C 00110200 */  sll        $v0, $v0, 4
    /* AEC40 800BE440 21104300 */  addu       $v0, $v0, $v1
    /* AEC44 800BE444 40110200 */  sll        $v0, $v0, 5
    /* AEC48 800BE448 21104500 */  addu       $v0, $v0, $a1
    /* AEC4C 800BE44C 00008384 */  lh         $v1, 0x0($a0)
    /* AEC50 800BE450 12004294 */  lhu        $v0, 0x12($v0)
    /* AEC54 800BE454 0F80053C */  lui        $a1, %hi(D_800EF980)
    /* AEC58 800BE458 80F9A594 */  lhu        $a1, %lo(D_800EF980)($a1)
    /* AEC5C 800BE45C 40180300 */  sll        $v1, $v1, 1
    /* AEC60 800BE460 21104500 */  addu       $v0, $v0, $a1
    /* AEC64 800BE464 1180013C */  lui        $at, %hi(D_8010A422)
    /* AEC68 800BE468 21082300 */  addu       $at, $at, $v1
    /* AEC6C 800BE46C 22A422A4 */  sh         $v0, %lo(D_8010A422)($at)
    /* AEC70 800BE470 FEFF8384 */  lh         $v1, -0x2($a0)
    /* AEC74 800BE474 0F80023C */  lui        $v0, %hi(D_800E81E0)
    /* AEC78 800BE478 21104300 */  addu       $v0, $v0, $v1
    /* AEC7C 800BE47C E0814290 */  lbu        $v0, %lo(D_800E81E0)($v0)
    /* AEC80 800BE480 00000000 */  nop
    /* AEC84 800BE484 30004234 */  ori        $v0, $v0, 0x30
    /* AEC88 800BE488 0F80013C */  lui        $at, %hi(D_800E81E0)
    /* AEC8C 800BE48C 21082300 */  addu       $at, $at, $v1
    /* AEC90 800BE490 0800E003 */  jr         $ra
    /* AEC94 800BE494 E08122A0 */   sb        $v0, %lo(D_800E81E0)($at)
endlabel func_800BE2B8
