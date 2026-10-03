nonmatching func_801CD224, 0xDEC

glabel func_801CD224
    /* 442AC 801CD224 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 442B0 801CD228 3400B1AF */  sw         $s1, 0x34($sp)
    /* 442B4 801CD22C 2188A000 */  addu       $s1, $a1, $zero
    /* 442B8 801CD230 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 442BC 801CD234 21988000 */  addu       $s3, $a0, $zero
    /* 442C0 801CD238 4400B5AF */  sw         $s5, 0x44($sp)
    /* 442C4 801CD23C 21A80000 */  addu       $s5, $zero, $zero
    /* 442C8 801CD240 21200000 */  addu       $a0, $zero, $zero
    /* 442CC 801CD244 5400BFAF */  sw         $ra, 0x54($sp)
    /* 442D0 801CD248 5000BEAF */  sw         $fp, 0x50($sp)
    /* 442D4 801CD24C 4C00B7AF */  sw         $s7, 0x4C($sp)
    /* 442D8 801CD250 4800B6AF */  sw         $s6, 0x48($sp)
    /* 442DC 801CD254 4000B4AF */  sw         $s4, 0x40($sp)
    /* 442E0 801CD258 3800B2AF */  sw         $s2, 0x38($sp)
    /* 442E4 801CD25C 20BB010C */  jal        func_8006EC80
    /* 442E8 801CD260 3000B0AF */   sw        $s0, 0x30($sp)
    /* 442EC 801CD264 21204000 */  addu       $a0, $v0, $zero
    /* 442F0 801CD268 21902002 */  addu       $s2, $s1, $zero
    /* 442F4 801CD26C 1180173C */  lui        $s7, %hi(D_8010A5A8)
    /* 442F8 801CD270 A8A5F726 */  addiu      $s7, $s7, %lo(D_8010A5A8)
    /* 442FC 801CD274 10801E3C */  lui        $fp, %hi(D_800FF748)
    /* 44300 801CD278 48F7DE27 */  addiu      $fp, $fp, %lo(D_800FF748)
    /* 44304 801CD27C 1E80053C */  lui        $a1, %hi(D_801D94D0)
    /* 44308 801CD280 D094A590 */  lbu        $a1, %lo(D_801D94D0)($a1)
    /* 4430C 801CD284 30000224 */  addiu      $v0, $zero, 0x30
    /* 44310 801CD288 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 44314 801CD28C A4A524A4 */  sh         $a0, %lo(D_8010A5A4)($at)
    /* 44318 801CD290 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 4431C 801CD294 F8016210 */  beq        $v1, $v0, .L801CDA78
    /* 44320 801CD298 801F163C */   lui       $s6, (0x1F800294 >> 16)
    /* 44324 801CD29C 31006228 */  slti       $v0, $v1, 0x31
    /* 44328 801CD2A0 10004010 */  beqz       $v0, .L801CD2E4
    /* 4432C 801CD2A4 01001424 */   addiu     $s4, $zero, 0x1
    /* 44330 801CD2A8 24007410 */  beq        $v1, $s4, .L801CD33C
    /* 44334 801CD2AC 02006228 */   slti      $v0, $v1, 0x2
    /* 44338 801CD2B0 05004010 */  beqz       $v0, .L801CD2C8
    /* 4433C 801CD2B4 00000000 */   nop
    /* 44340 801CD2B8 1C006010 */  beqz       $v1, .L801CD32C
    /* 44344 801CD2BC 01000224 */   addiu     $v0, $zero, 0x1
    /* 44348 801CD2C0 E3370708 */  j          .L801CDF8C
    /* 4434C 801CD2C4 00000000 */   nop
  .L801CD2C8:
    /* 44350 801CD2C8 10000224 */  addiu      $v0, $zero, 0x10
    /* 44354 801CD2CC 15016210 */  beq        $v1, $v0, .L801CD724
    /* 44358 801CD2D0 20000224 */   addiu     $v0, $zero, 0x20
    /* 4435C 801CD2D4 99016210 */  beq        $v1, $v0, .L801CD93C
    /* 44360 801CD2D8 02000424 */   addiu     $a0, $zero, 0x2
    /* 44364 801CD2DC E3370708 */  j          .L801CDF8C
    /* 44368 801CD2E0 00000000 */   nop
  .L801CD2E4:
    /* 4436C 801CD2E4 51000224 */  addiu      $v0, $zero, 0x51
    /* 44370 801CD2E8 4C026210 */  beq        $v1, $v0, .L801CDC1C
    /* 44374 801CD2EC 52006228 */   slti      $v0, $v1, 0x52
    /* 44378 801CD2F0 07004010 */  beqz       $v0, .L801CD310
    /* 4437C 801CD2F4 40000224 */   addiu     $v0, $zero, 0x40
    /* 44380 801CD2F8 F5016210 */  beq        $v1, $v0, .L801CDAD0
    /* 44384 801CD2FC 50000224 */   addiu     $v0, $zero, 0x50
    /* 44388 801CD300 3B026210 */  beq        $v1, $v0, .L801CDBF0
    /* 4438C 801CD304 00000000 */   nop
    /* 44390 801CD308 E3370708 */  j          .L801CDF8C
    /* 44394 801CD30C 00000000 */   nop
  .L801CD310:
    /* 44398 801CD310 E8000224 */  addiu      $v0, $zero, 0xE8
    /* 4439C 801CD314 4F026210 */  beq        $v1, $v0, .L801CDC54
    /* 443A0 801CD318 F0000224 */   addiu     $v0, $zero, 0xF0
    /* 443A4 801CD31C 95026210 */  beq        $v1, $v0, .L801CDD74
    /* 443A8 801CD320 00000000 */   nop
    /* 443AC 801CD324 E3370708 */  j          .L801CDF8C
    /* 443B0 801CD328 00000000 */   nop
  .L801CD32C:
    /* 443B4 801CD32C 1D80013C */  lui        $at, %hi(D_801D5A48)
    /* 443B8 801CD330 485A20AC */  sw         $zero, %lo(D_801D5A48)($at)
    /* 443BC 801CD334 1E80013C */  lui        $at, %hi(D_801D94D0)
    /* 443C0 801CD338 D09422A0 */  sb         $v0, %lo(D_801D94D0)($at)
  .L801CD33C:
    /* 443C4 801CD33C 124A060C */  jal        func_80192848
    /* 443C8 801CD340 21200000 */   addu      $a0, $zero, $zero
    /* 443CC 801CD344 1E80013C */  lui        $at, %hi(D_801D8C68)
    /* 443D0 801CD348 688C22AC */  sw         $v0, %lo(D_801D8C68)($at)
    /* 443D4 801CD34C AA3D070C */  jal        func_801CF6A8
    /* 443D8 801CD350 21204000 */   addu      $a0, $v0, $zero
    /* 443DC 801CD354 21184000 */  addu       $v1, $v0, $zero
    /* 443E0 801CD358 FEFF0224 */  addiu      $v0, $zero, -0x2
    /* 443E4 801CD35C B8006210 */  beq        $v1, $v0, .L801CD640
    /* 443E8 801CD360 FFFF6228 */   slti      $v0, $v1, -0x1
    /* 443EC 801CD364 05004010 */  beqz       $v0, .L801CD37C
    /* 443F0 801CD368 FDFF0224 */   addiu     $v0, $zero, -0x3
    /* 443F4 801CD36C 78006210 */  beq        $v1, $v0, .L801CD550
    /* 443F8 801CD370 01006232 */   andi      $v0, $s3, 0x1
    /* 443FC 801CD374 B0360708 */  j          .L801CDAC0
    /* 44400 801CD378 00000000 */   nop
  .L801CD37C:
    /* 44404 801CD37C 01001024 */  addiu      $s0, $zero, 0x1
    /* 44408 801CD380 2B007010 */  beq        $v1, $s0, .L801CD430
    /* 4440C 801CD384 11000224 */   addiu     $v0, $zero, 0x11
    /* 44410 801CD388 CD016214 */  bne        $v1, $v0, .L801CDAC0
    /* 44414 801CD38C 01004232 */   andi      $v0, $s2, 0x1
    /* 44418 801CD390 10004010 */  beqz       $v0, .L801CD3D4
    /* 4441C 801CD394 21200000 */   addu      $a0, $zero, $zero
    /* 44420 801CD398 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 44424 801CD39C 3E000724 */  addiu      $a3, $zero, 0x3E
    /* 44428 801CD3A0 1D80053C */  lui        $a1, %hi(D_801D58C4)
    /* 4442C 801CD3A4 C458A58C */  lw         $a1, %lo(D_801D58C4)($a1)
    /* 44430 801CD3A8 38010224 */  addiu      $v0, $zero, 0x138
    /* 44434 801CD3AC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 44438 801CD3B0 03000224 */  addiu      $v0, $zero, 0x3
    /* 4443C 801CD3B4 1400A0AF */  sw         $zero, 0x14($sp)
    /* 44440 801CD3B8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 44444 801CD3BC 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 44448 801CD3C0 2000A0AF */  sw         $zero, 0x20($sp)
    /* 4444C 801CD3C4 2400A2AF */  sw         $v0, 0x24($sp)
    /* 44450 801CD3C8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 44454 801CD3CC B850060C */  jal        func_801942E0
    /* 44458 801CD3D0 2C00B0AF */   sw        $s0, 0x2C($sp)
  .L801CD3D4:
    /* 4445C 801CD3D4 02004232 */  andi       $v0, $s2, 0x2
    /* 44460 801CD3D8 11004010 */  beqz       $v0, .L801CD420
    /* 44464 801CD3DC 01000424 */   addiu     $a0, $zero, 0x1
    /* 44468 801CD3E0 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 4446C 801CD3E4 F8FF0724 */  addiu      $a3, $zero, -0x8
    /* 44470 801CD3E8 1D80053C */  lui        $a1, %hi(D_801D58C4)
    /* 44474 801CD3EC C458A58C */  lw         $a1, %lo(D_801D58C4)($a1)
    /* 44478 801CD3F0 38010224 */  addiu      $v0, $zero, 0x138
    /* 4447C 801CD3F4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 44480 801CD3F8 03000224 */  addiu      $v0, $zero, 0x3
    /* 44484 801CD3FC 1400A2AF */  sw         $v0, 0x14($sp)
    /* 44488 801CD400 0C000224 */  addiu      $v0, $zero, 0xC
    /* 4448C 801CD404 1800A0AF */  sw         $zero, 0x18($sp)
    /* 44490 801CD408 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 44494 801CD40C 2000A0AF */  sw         $zero, 0x20($sp)
    /* 44498 801CD410 2400A2AF */  sw         $v0, 0x24($sp)
    /* 4449C 801CD414 2800A0AF */  sw         $zero, 0x28($sp)
    /* 444A0 801CD418 B850060C */  jal        func_801942E0
    /* 444A4 801CD41C 2C00B0AF */   sw        $s0, 0x2C($sp)
  .L801CD420:
    /* 444A8 801CD420 6D4A060C */  jal        func_801929B4
    /* 444AC 801CD424 21200000 */   addu      $a0, $zero, $zero
    /* 444B0 801CD428 E1370708 */  j          .L801CDF84
    /* 444B4 801CD42C 10000224 */   addiu     $v0, $zero, 0x10
  .L801CD430:
    /* 444B8 801CD430 1E80023C */  lui        $v0, %hi(D_801D8C68)
    /* 444BC 801CD434 688C428C */  lw         $v0, %lo(D_801D8C68)($v0)
    /* 444C0 801CD438 00000000 */  nop
    /* 444C4 801CD43C 0E004228 */  slti       $v0, $v0, 0xE
    /* 444C8 801CD440 43004014 */  bnez       $v0, .L801CD550
    /* 444CC 801CD444 01006232 */   andi      $v0, $s3, 0x1
    /* 444D0 801CD448 9A02C292 */  lbu        $v0, (0x1F80029A & 0xFFFF)($s6)
    /* 444D4 801CD44C 00000000 */  nop
    /* 444D8 801CD450 D0FF4224 */  addiu      $v0, $v0, -0x30
    /* 444DC 801CD454 0200422C */  sltiu      $v0, $v0, 0x2
    /* 444E0 801CD458 05004010 */  beqz       $v0, .L801CD470
    /* 444E4 801CD45C E8000224 */   addiu     $v0, $zero, 0xE8
    /* 444E8 801CD460 1E80013C */  lui        $at, %hi(D_801D94D0)
    /* 444EC 801CD464 D09422A0 */  sb         $v0, %lo(D_801D94D0)($at)
    /* 444F0 801CD468 20350708 */  j          .L801CD480
    /* 444F4 801CD46C 20001024 */   addiu     $s0, $zero, 0x20
  .L801CD470:
    /* 444F8 801CD470 09001024 */  addiu      $s0, $zero, 0x9
    /* 444FC 801CD474 B0000224 */  addiu      $v0, $zero, 0xB0
    /* 44500 801CD478 1E80013C */  lui        $at, %hi(D_801DA055)
    /* 44504 801CD47C 55A022A0 */  sb         $v0, %lo(D_801DA055)($at)
  .L801CD480:
    /* 44508 801CD480 01004232 */  andi       $v0, $s2, 0x1
    /* 4450C 801CD484 13004010 */  beqz       $v0, .L801CD4D4
    /* 44510 801CD488 21200000 */   addu      $a0, $zero, $zero
    /* 44514 801CD48C 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 44518 801CD490 38010224 */  addiu      $v0, $zero, 0x138
    /* 4451C 801CD494 1000A2AF */  sw         $v0, 0x10($sp)
    /* 44520 801CD498 03000224 */  addiu      $v0, $zero, 0x3
    /* 44524 801CD49C 2400A2AF */  sw         $v0, 0x24($sp)
    /* 44528 801CD4A0 01000224 */  addiu      $v0, $zero, 0x1
    /* 4452C 801CD4A4 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 44530 801CD4A8 80101000 */  sll        $v0, $s0, 2
    /* 44534 801CD4AC 1400A0AF */  sw         $zero, 0x14($sp)
    /* 44538 801CD4B0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 4453C 801CD4B4 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 44540 801CD4B8 2000A0AF */  sw         $zero, 0x20($sp)
    /* 44544 801CD4BC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 44548 801CD4C0 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 4454C 801CD4C4 21082200 */  addu       $at, $at, $v0
    /* 44550 801CD4C8 C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 44554 801CD4CC B850060C */  jal        func_801942E0
    /* 44558 801CD4D0 3E000724 */   addiu     $a3, $zero, 0x3E
  .L801CD4D4:
    /* 4455C 801CD4D4 02004232 */  andi       $v0, $s2, 0x2
    /* 44560 801CD4D8 14004010 */  beqz       $v0, .L801CD52C
    /* 44564 801CD4DC 01000424 */   addiu     $a0, $zero, 0x1
    /* 44568 801CD4E0 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 4456C 801CD4E4 38010224 */  addiu      $v0, $zero, 0x138
    /* 44570 801CD4E8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 44574 801CD4EC 03000224 */  addiu      $v0, $zero, 0x3
    /* 44578 801CD4F0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 4457C 801CD4F4 0C000224 */  addiu      $v0, $zero, 0xC
    /* 44580 801CD4F8 2400A2AF */  sw         $v0, 0x24($sp)
    /* 44584 801CD4FC 01000224 */  addiu      $v0, $zero, 0x1
    /* 44588 801CD500 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 4458C 801CD504 80101000 */  sll        $v0, $s0, 2
    /* 44590 801CD508 1800A0AF */  sw         $zero, 0x18($sp)
    /* 44594 801CD50C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 44598 801CD510 2000A0AF */  sw         $zero, 0x20($sp)
    /* 4459C 801CD514 2800A0AF */  sw         $zero, 0x28($sp)
    /* 445A0 801CD518 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 445A4 801CD51C 21082200 */  addu       $at, $at, $v0
    /* 445A8 801CD520 C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 445AC 801CD524 B850060C */  jal        func_801942E0
    /* 445B0 801CD528 F8FF0724 */   addiu     $a3, $zero, -0x8
  .L801CD52C:
    /* 445B4 801CD52C 9402C0A6 */  sh         $zero, (0x1F800294 & 0xFFFF)($s6)
    /* 445B8 801CD530 6D4A060C */  jal        func_801929B4
    /* 445BC 801CD534 21200000 */   addu      $a0, $zero, $zero
  .L801CD538:
    /* 445C0 801CD538 C849060C */  jal        func_80192720
    /* 445C4 801CD53C 21200000 */   addu      $a0, $zero, $zero
    /* 445C8 801CD540 FDFF4010 */  beqz       $v0, .L801CD538
    /* 445CC 801CD544 00000000 */   nop
    /* 445D0 801CD548 E3370708 */  j          .L801CDF8C
    /* 445D4 801CD54C 00000000 */   nop
  .L801CD550:
    /* 445D8 801CD550 5B014014 */  bnez       $v0, .L801CDAC0
    /* 445DC 801CD554 00000000 */   nop
    /* 445E0 801CD558 0100013C */  lui        $at, (0x10000 >> 16)
    /* 445E4 801CD55C 2108C103 */  addu       $at, $fp, $at
    /* 445E8 801CD560 148F2290 */  lbu        $v0, -0x70EC($at)
    /* 445EC 801CD564 00000000 */  nop
    /* 445F0 801CD568 08004234 */  ori        $v0, $v0, 0x8
    /* 445F4 801CD56C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 445F8 801CD570 2108C103 */  addu       $at, $fp, $at
    /* 445FC 801CD574 148F22A0 */  sb         $v0, -0x70EC($at)
    /* 44600 801CD578 0C00E386 */  lh         $v1, 0xC($s7)
    /* 44604 801CD57C 02000224 */  addiu      $v0, $zero, 0x2
    /* 44608 801CD580 02006214 */  bne        $v1, $v0, .L801CD58C
    /* 4460C 801CD584 0E001024 */   addiu     $s0, $zero, 0xE
    /* 44610 801CD588 04001024 */  addiu      $s0, $zero, 0x4
  .L801CD58C:
    /* 44614 801CD58C 01004232 */  andi       $v0, $s2, 0x1
    /* 44618 801CD590 13004010 */  beqz       $v0, .L801CD5E0
    /* 4461C 801CD594 21200000 */   addu      $a0, $zero, $zero
    /* 44620 801CD598 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 44624 801CD59C 38010224 */  addiu      $v0, $zero, 0x138
    /* 44628 801CD5A0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 4462C 801CD5A4 03000224 */  addiu      $v0, $zero, 0x3
    /* 44630 801CD5A8 2400A2AF */  sw         $v0, 0x24($sp)
    /* 44634 801CD5AC 01000224 */  addiu      $v0, $zero, 0x1
    /* 44638 801CD5B0 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 4463C 801CD5B4 80101000 */  sll        $v0, $s0, 2
    /* 44640 801CD5B8 1400A0AF */  sw         $zero, 0x14($sp)
    /* 44644 801CD5BC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 44648 801CD5C0 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 4464C 801CD5C4 2000A0AF */  sw         $zero, 0x20($sp)
    /* 44650 801CD5C8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 44654 801CD5CC 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 44658 801CD5D0 21082200 */  addu       $at, $at, $v0
    /* 4465C 801CD5D4 C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 44660 801CD5D8 B850060C */  jal        func_801942E0
    /* 44664 801CD5DC 3E000724 */   addiu     $a3, $zero, 0x3E
  .L801CD5E0:
    /* 44668 801CD5E0 02004232 */  andi       $v0, $s2, 0x2
    /* 4466C 801CD5E4 14004010 */  beqz       $v0, .L801CD638
    /* 44670 801CD5E8 01000424 */   addiu     $a0, $zero, 0x1
    /* 44674 801CD5EC 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 44678 801CD5F0 38010224 */  addiu      $v0, $zero, 0x138
    /* 4467C 801CD5F4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 44680 801CD5F8 03000224 */  addiu      $v0, $zero, 0x3
    /* 44684 801CD5FC 1400A2AF */  sw         $v0, 0x14($sp)
    /* 44688 801CD600 0C000224 */  addiu      $v0, $zero, 0xC
    /* 4468C 801CD604 2400A2AF */  sw         $v0, 0x24($sp)
    /* 44690 801CD608 01000224 */  addiu      $v0, $zero, 0x1
    /* 44694 801CD60C 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 44698 801CD610 80101000 */  sll        $v0, $s0, 2
    /* 4469C 801CD614 1800A0AF */  sw         $zero, 0x18($sp)
    /* 446A0 801CD618 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 446A4 801CD61C 2000A0AF */  sw         $zero, 0x20($sp)
    /* 446A8 801CD620 2800A0AF */  sw         $zero, 0x28($sp)
    /* 446AC 801CD624 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 446B0 801CD628 21082200 */  addu       $at, $at, $v0
    /* 446B4 801CD62C C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 446B8 801CD630 B850060C */  jal        func_801942E0
    /* 446BC 801CD634 F8FF0724 */   addiu     $a3, $zero, -0x8
  .L801CD638:
    /* 446C0 801CD638 E1370708 */  j          .L801CDF84
    /* 446C4 801CD63C F0000224 */   addiu     $v0, $zero, 0xF0
  .L801CD640:
    /* 446C8 801CD640 0100013C */  lui        $at, (0x10000 >> 16)
    /* 446CC 801CD644 2108C103 */  addu       $at, $fp, $at
    /* 446D0 801CD648 1E8F20A0 */  sb         $zero, -0x70E2($at)
    /* 446D4 801CD64C 01006232 */  andi       $v0, $s3, 0x1
    /* 446D8 801CD650 1B014014 */  bnez       $v0, .L801CDAC0
    /* 446DC 801CD654 02000224 */   addiu     $v0, $zero, 0x2
    /* 446E0 801CD658 0C00E386 */  lh         $v1, 0xC($s7)
    /* 446E4 801CD65C 00000000 */  nop
    /* 446E8 801CD660 02006214 */  bne        $v1, $v0, .L801CD66C
    /* 446EC 801CD664 0D001024 */   addiu     $s0, $zero, 0xD
    /* 446F0 801CD668 18001024 */  addiu      $s0, $zero, 0x18
  .L801CD66C:
    /* 446F4 801CD66C 01004232 */  andi       $v0, $s2, 0x1
    /* 446F8 801CD670 13004010 */  beqz       $v0, .L801CD6C0
    /* 446FC 801CD674 21200000 */   addu      $a0, $zero, $zero
    /* 44700 801CD678 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 44704 801CD67C 38010224 */  addiu      $v0, $zero, 0x138
    /* 44708 801CD680 1000A2AF */  sw         $v0, 0x10($sp)
    /* 4470C 801CD684 03000224 */  addiu      $v0, $zero, 0x3
    /* 44710 801CD688 2400A2AF */  sw         $v0, 0x24($sp)
    /* 44714 801CD68C 01000224 */  addiu      $v0, $zero, 0x1
    /* 44718 801CD690 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 4471C 801CD694 80101000 */  sll        $v0, $s0, 2
    /* 44720 801CD698 1400A0AF */  sw         $zero, 0x14($sp)
    /* 44724 801CD69C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 44728 801CD6A0 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 4472C 801CD6A4 2000A0AF */  sw         $zero, 0x20($sp)
    /* 44730 801CD6A8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 44734 801CD6AC 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 44738 801CD6B0 21082200 */  addu       $at, $at, $v0
    /* 4473C 801CD6B4 C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 44740 801CD6B8 B850060C */  jal        func_801942E0
    /* 44744 801CD6BC 3E000724 */   addiu     $a3, $zero, 0x3E
  .L801CD6C0:
    /* 44748 801CD6C0 02004232 */  andi       $v0, $s2, 0x2
    /* 4474C 801CD6C4 14004010 */  beqz       $v0, .L801CD718
    /* 44750 801CD6C8 01000424 */   addiu     $a0, $zero, 0x1
    /* 44754 801CD6CC 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 44758 801CD6D0 38010224 */  addiu      $v0, $zero, 0x138
    /* 4475C 801CD6D4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 44760 801CD6D8 03000224 */  addiu      $v0, $zero, 0x3
    /* 44764 801CD6DC 1400A2AF */  sw         $v0, 0x14($sp)
    /* 44768 801CD6E0 0C000224 */  addiu      $v0, $zero, 0xC
    /* 4476C 801CD6E4 2400A2AF */  sw         $v0, 0x24($sp)
    /* 44770 801CD6E8 01000224 */  addiu      $v0, $zero, 0x1
    /* 44774 801CD6EC 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 44778 801CD6F0 80101000 */  sll        $v0, $s0, 2
    /* 4477C 801CD6F4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 44780 801CD6F8 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 44784 801CD6FC 2000A0AF */  sw         $zero, 0x20($sp)
    /* 44788 801CD700 2800A0AF */  sw         $zero, 0x28($sp)
    /* 4478C 801CD704 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 44790 801CD708 21082200 */  addu       $at, $at, $v0
    /* 44794 801CD70C C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 44798 801CD710 B850060C */  jal        func_801942E0
    /* 4479C 801CD714 F8FF0724 */   addiu     $a3, $zero, -0x8
  .L801CD718:
    /* 447A0 801CD718 30000224 */  addiu      $v0, $zero, 0x30
    /* 447A4 801CD71C E1370708 */  j          .L801CDF84
    /* 447A8 801CD720 9402C0A6 */   sh        $zero, (0x1F800294 & 0xFFFF)($s6)
  .L801CD724:
    /* 447AC 801CD724 1D80023C */  lui        $v0, %hi(D_801D5A48)
    /* 447B0 801CD728 485A428C */  lw         $v0, %lo(D_801D5A48)($v0)
    /* 447B4 801CD72C 00000000 */  nop
    /* 447B8 801CD730 01004224 */  addiu      $v0, $v0, 0x1
    /* 447BC 801CD734 1D80013C */  lui        $at, %hi(D_801D5A48)
    /* 447C0 801CD738 485A22AC */  sw         $v0, %lo(D_801D5A48)($at)
    /* 447C4 801CD73C D83D070C */  jal        func_801CF760
    /* 447C8 801CD740 21200000 */   addu      $a0, $zero, $zero
    /* 447CC 801CD744 21804000 */  addu       $s0, $v0, $zero
    /* 447D0 801CD748 04000326 */  addiu      $v1, $s0, 0x4
    /* 447D4 801CD74C 0600622C */  sltiu      $v0, $v1, 0x6
    /* 447D8 801CD750 37004010 */  beqz       $v0, .L801CD830
    /* 447DC 801CD754 80100300 */   sll       $v0, $v1, 2
    /* 447E0 801CD758 1980013C */  lui        $at, %hi(jtbl_8018DA98)
    /* 447E4 801CD75C 21082200 */  addu       $at, $at, $v0
    /* 447E8 801CD760 98DA228C */  lw         $v0, %lo(jtbl_8018DA98)($at)
    /* 447EC 801CD764 00000000 */  nop
    /* 447F0 801CD768 08004000 */  jr         $v0
    /* 447F4 801CD76C 00000000 */   nop
  jlabel .L801CD770
    /* 447F8 801CD770 1E80013C */  lui        $at, %hi(D_801D94D0)
    /* 447FC 801CD774 D09420A0 */  sb         $zero, %lo(D_801D94D0)($at)
    /* 44800 801CD778 46360708 */  j          .L801CD918
    /* 44804 801CD77C 01001524 */   addiu     $s5, $zero, 0x1
  jlabel .L801CD780
    /* 44808 801CD780 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4480C 801CD784 2108C103 */  addu       $at, $fp, $at
    /* 44810 801CD788 1E8F20A0 */  sb         $zero, -0x70E2($at)
    /* 44814 801CD78C 01004232 */  andi       $v0, $s2, 0x1
    /* 44818 801CD790 11004010 */  beqz       $v0, .L801CD7D8
    /* 4481C 801CD794 21200000 */   addu      $a0, $zero, $zero
    /* 44820 801CD798 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 44824 801CD79C 3E000724 */  addiu      $a3, $zero, 0x3E
    /* 44828 801CD7A0 1D80053C */  lui        $a1, %hi(D_801D58E4)
    /* 4482C 801CD7A4 E458A58C */  lw         $a1, %lo(D_801D58E4)($a1)
    /* 44830 801CD7A8 38010224 */  addiu      $v0, $zero, 0x138
    /* 44834 801CD7AC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 44838 801CD7B0 03000224 */  addiu      $v0, $zero, 0x3
    /* 4483C 801CD7B4 2400A2AF */  sw         $v0, 0x24($sp)
    /* 44840 801CD7B8 01000224 */  addiu      $v0, $zero, 0x1
    /* 44844 801CD7BC 1400A0AF */  sw         $zero, 0x14($sp)
    /* 44848 801CD7C0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 4484C 801CD7C4 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 44850 801CD7C8 2000A0AF */  sw         $zero, 0x20($sp)
    /* 44854 801CD7CC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 44858 801CD7D0 B850060C */  jal        func_801942E0
    /* 4485C 801CD7D4 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CD7D8:
    /* 44860 801CD7D8 02004232 */  andi       $v0, $s2, 0x2
    /* 44864 801CD7DC 12004010 */  beqz       $v0, .L801CD828
    /* 44868 801CD7E0 01000424 */   addiu     $a0, $zero, 0x1
    /* 4486C 801CD7E4 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 44870 801CD7E8 F8FF0724 */  addiu      $a3, $zero, -0x8
    /* 44874 801CD7EC 1D80053C */  lui        $a1, %hi(D_801D58E4)
    /* 44878 801CD7F0 E458A58C */  lw         $a1, %lo(D_801D58E4)($a1)
    /* 4487C 801CD7F4 38010224 */  addiu      $v0, $zero, 0x138
    /* 44880 801CD7F8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 44884 801CD7FC 03000224 */  addiu      $v0, $zero, 0x3
    /* 44888 801CD800 1400A2AF */  sw         $v0, 0x14($sp)
    /* 4488C 801CD804 0C000224 */  addiu      $v0, $zero, 0xC
    /* 44890 801CD808 2400A2AF */  sw         $v0, 0x24($sp)
    /* 44894 801CD80C 01000224 */  addiu      $v0, $zero, 0x1
    /* 44898 801CD810 1800A0AF */  sw         $zero, 0x18($sp)
    /* 4489C 801CD814 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 448A0 801CD818 2000A0AF */  sw         $zero, 0x20($sp)
    /* 448A4 801CD81C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 448A8 801CD820 B850060C */  jal        func_801942E0
    /* 448AC 801CD824 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CD828:
    /* 448B0 801CD828 44360708 */  j          .L801CD910
    /* 448B4 801CD82C 40000224 */   addiu     $v0, $zero, 0x40
  jlabel .L801CD830
    /* 448B8 801CD830 88AD020C */  jal        func_800AB620
    /* 448BC 801CD834 12050424 */   addiu     $a0, $zero, 0x512
    /* 448C0 801CD838 01006232 */  andi       $v0, $s3, 0x1
    /* 448C4 801CD83C 05004010 */  beqz       $v0, .L801CD854
    /* 448C8 801CD840 FCFF0224 */   addiu     $v0, $zero, -0x4
    /* 448CC 801CD844 1E80013C */  lui        $at, %hi(D_801D94D0)
    /* 448D0 801CD848 D09420A0 */  sb         $zero, %lo(D_801D94D0)($at)
    /* 448D4 801CD84C 46360708 */  j          .L801CD918
    /* 448D8 801CD850 02001524 */   addiu     $s5, $zero, 0x2
  .L801CD854:
    /* 448DC 801CD854 02000216 */  bne        $s0, $v0, .L801CD860
    /* 448E0 801CD858 0A001024 */   addiu     $s0, $zero, 0xA
    /* 448E4 801CD85C 24001024 */  addiu      $s0, $zero, 0x24
  .L801CD860:
    /* 448E8 801CD860 01004232 */  andi       $v0, $s2, 0x1
    /* 448EC 801CD864 13004010 */  beqz       $v0, .L801CD8B4
    /* 448F0 801CD868 21200000 */   addu      $a0, $zero, $zero
    /* 448F4 801CD86C 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 448F8 801CD870 38010224 */  addiu      $v0, $zero, 0x138
    /* 448FC 801CD874 1000A2AF */  sw         $v0, 0x10($sp)
    /* 44900 801CD878 03000224 */  addiu      $v0, $zero, 0x3
    /* 44904 801CD87C 2400A2AF */  sw         $v0, 0x24($sp)
    /* 44908 801CD880 01000224 */  addiu      $v0, $zero, 0x1
    /* 4490C 801CD884 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 44910 801CD888 80101000 */  sll        $v0, $s0, 2
    /* 44914 801CD88C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 44918 801CD890 1800A0AF */  sw         $zero, 0x18($sp)
    /* 4491C 801CD894 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 44920 801CD898 2000A0AF */  sw         $zero, 0x20($sp)
    /* 44924 801CD89C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 44928 801CD8A0 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 4492C 801CD8A4 21082200 */  addu       $at, $at, $v0
    /* 44930 801CD8A8 C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 44934 801CD8AC B850060C */  jal        func_801942E0
    /* 44938 801CD8B0 3E000724 */   addiu     $a3, $zero, 0x3E
  .L801CD8B4:
    /* 4493C 801CD8B4 02004232 */  andi       $v0, $s2, 0x2
    /* 44940 801CD8B8 14004010 */  beqz       $v0, .L801CD90C
    /* 44944 801CD8BC 01000424 */   addiu     $a0, $zero, 0x1
    /* 44948 801CD8C0 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 4494C 801CD8C4 38010224 */  addiu      $v0, $zero, 0x138
    /* 44950 801CD8C8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 44954 801CD8CC 03000224 */  addiu      $v0, $zero, 0x3
    /* 44958 801CD8D0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 4495C 801CD8D4 0C000224 */  addiu      $v0, $zero, 0xC
    /* 44960 801CD8D8 2400A2AF */  sw         $v0, 0x24($sp)
    /* 44964 801CD8DC 01000224 */  addiu      $v0, $zero, 0x1
    /* 44968 801CD8E0 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 4496C 801CD8E4 80101000 */  sll        $v0, $s0, 2
    /* 44970 801CD8E8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 44974 801CD8EC 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 44978 801CD8F0 2000A0AF */  sw         $zero, 0x20($sp)
    /* 4497C 801CD8F4 2800A0AF */  sw         $zero, 0x28($sp)
    /* 44980 801CD8F8 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 44984 801CD8FC 21082200 */  addu       $at, $at, $v0
    /* 44988 801CD900 C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 4498C 801CD904 B850060C */  jal        func_801942E0
    /* 44990 801CD908 F8FF0724 */   addiu     $a3, $zero, -0x8
  .L801CD90C:
    /* 44994 801CD90C F0000224 */  addiu      $v0, $zero, 0xF0
  .L801CD910:
    /* 44998 801CD910 1E80013C */  lui        $at, %hi(D_801D94D0)
    /* 4499C 801CD914 D09422A0 */  sb         $v0, %lo(D_801D94D0)($at)
  jlabel .L801CD918
    /* 449A0 801CD918 1E80033C */  lui        $v1, %hi(D_801D94D0)
    /* 449A4 801CD91C D0946390 */  lbu        $v1, %lo(D_801D94D0)($v1)
    /* 449A8 801CD920 10000224 */  addiu      $v0, $zero, 0x10
    /* 449AC 801CD924 99016210 */  beq        $v1, $v0, .L801CDF8C
    /* 449B0 801CD928 00000000 */   nop
    /* 449B4 801CD92C 1D80013C */  lui        $at, %hi(D_801D5A48)
    /* 449B8 801CD930 485A20AC */  sw         $zero, %lo(D_801D5A48)($at)
    /* 449BC 801CD934 E3370708 */  j          .L801CDF8C
    /* 449C0 801CD938 00000000 */   nop
  .L801CD93C:
    /* 449C4 801CD93C 0438070C */  jal        func_801CE010
    /* 449C8 801CD940 FF000524 */   addiu     $a1, $zero, 0xFF
    /* 449CC 801CD944 FF004330 */  andi       $v1, $v0, 0xFF
    /* 449D0 801CD948 02000224 */  addiu      $v0, $zero, 0x2
    /* 449D4 801CD94C 12006210 */  beq        $v1, $v0, .L801CD998
    /* 449D8 801CD950 03006228 */   slti      $v0, $v1, 0x3
    /* 449DC 801CD954 05004010 */  beqz       $v0, .L801CD96C
    /* 449E0 801CD958 00000000 */   nop
    /* 449E4 801CD95C 08007410 */  beq        $v1, $s4, .L801CD980
    /* 449E8 801CD960 02000224 */   addiu     $v0, $zero, 0x2
    /* 449EC 801CD964 E3370708 */  j          .L801CDF8C
    /* 449F0 801CD968 00000000 */   nop
  .L801CD96C:
    /* 449F4 801CD96C 08000224 */  addiu      $v0, $zero, 0x8
    /* 449F8 801CD970 3D006210 */  beq        $v1, $v0, .L801CDA68
    /* 449FC 801CD974 3C000224 */   addiu     $v0, $zero, 0x3C
    /* 44A00 801CD978 E3370708 */  j          .L801CDF8C
    /* 44A04 801CD97C 00000000 */   nop
  .L801CD980:
    /* 44A08 801CD980 1E80013C */  lui        $at, %hi(D_801D94D0)
    /* 44A0C 801CD984 D09420A0 */  sb         $zero, %lo(D_801D94D0)($at)
    /* 44A10 801CD988 1D80013C */  lui        $at, %hi(D_801D5D68)
    /* 44A14 801CD98C 685D22A0 */  sb         $v0, %lo(D_801D5D68)($at)
    /* 44A18 801CD990 E3370708 */  j          .L801CDF8C
    /* 44A1C 801CD994 01001524 */   addiu     $s5, $zero, 0x1
  .L801CD998:
    /* 44A20 801CD998 1180023C */  lui        $v0, %hi(D_8010A5B4)
    /* 44A24 801CD99C B4A54284 */  lh         $v0, %lo(D_8010A5B4)($v0)
    /* 44A28 801CD9A0 1D80013C */  lui        $at, %hi(D_801D5D68)
    /* 44A2C 801CD9A4 685D20A0 */  sb         $zero, %lo(D_801D5D68)($at)
    /* 44A30 801CD9A8 02004314 */  bne        $v0, $v1, .L801CD9B4
    /* 44A34 801CD9AC 0D001024 */   addiu     $s0, $zero, 0xD
    /* 44A38 801CD9B0 03001024 */  addiu      $s0, $zero, 0x3
  .L801CD9B4:
    /* 44A3C 801CD9B4 01002232 */  andi       $v0, $s1, 0x1
    /* 44A40 801CD9B8 12004010 */  beqz       $v0, .L801CDA04
    /* 44A44 801CD9BC 21200000 */   addu      $a0, $zero, $zero
    /* 44A48 801CD9C0 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 44A4C 801CD9C4 38010224 */  addiu      $v0, $zero, 0x138
    /* 44A50 801CD9C8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 44A54 801CD9CC 03000224 */  addiu      $v0, $zero, 0x3
    /* 44A58 801CD9D0 2400A2AF */  sw         $v0, 0x24($sp)
    /* 44A5C 801CD9D4 80101000 */  sll        $v0, $s0, 2
    /* 44A60 801CD9D8 1400A0AF */  sw         $zero, 0x14($sp)
    /* 44A64 801CD9DC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 44A68 801CD9E0 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 44A6C 801CD9E4 2000A0AF */  sw         $zero, 0x20($sp)
    /* 44A70 801CD9E8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 44A74 801CD9EC 2C00B4AF */  sw         $s4, 0x2C($sp)
    /* 44A78 801CD9F0 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 44A7C 801CD9F4 21082200 */  addu       $at, $at, $v0
    /* 44A80 801CD9F8 C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 44A84 801CD9FC B850060C */  jal        func_801942E0
    /* 44A88 801CDA00 3E000724 */   addiu     $a3, $zero, 0x3E
  .L801CDA04:
    /* 44A8C 801CDA04 02002232 */  andi       $v0, $s1, 0x2
    /* 44A90 801CDA08 13004010 */  beqz       $v0, .L801CDA58
    /* 44A94 801CDA0C 01000424 */   addiu     $a0, $zero, 0x1
    /* 44A98 801CDA10 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 44A9C 801CDA14 38010224 */  addiu      $v0, $zero, 0x138
    /* 44AA0 801CDA18 1000A2AF */  sw         $v0, 0x10($sp)
    /* 44AA4 801CDA1C 03000224 */  addiu      $v0, $zero, 0x3
    /* 44AA8 801CDA20 1400A2AF */  sw         $v0, 0x14($sp)
    /* 44AAC 801CDA24 0C000224 */  addiu      $v0, $zero, 0xC
    /* 44AB0 801CDA28 2400A2AF */  sw         $v0, 0x24($sp)
    /* 44AB4 801CDA2C 80101000 */  sll        $v0, $s0, 2
    /* 44AB8 801CDA30 1800A0AF */  sw         $zero, 0x18($sp)
    /* 44ABC 801CDA34 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 44AC0 801CDA38 2000A0AF */  sw         $zero, 0x20($sp)
    /* 44AC4 801CDA3C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 44AC8 801CDA40 2C00B4AF */  sw         $s4, 0x2C($sp)
    /* 44ACC 801CDA44 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 44AD0 801CDA48 21082200 */  addu       $at, $at, $v0
    /* 44AD4 801CDA4C C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 44AD8 801CDA50 B850060C */  jal        func_801942E0
    /* 44ADC 801CDA54 F8FF0724 */   addiu     $a3, $zero, -0x8
  .L801CDA58:
    /* 44AE0 801CDA58 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 44AE4 801CDA5C 940220A4 */  sh         $zero, (0x1F800294 & 0xFFFF)($at)
    /* 44AE8 801CDA60 E1370708 */  j          .L801CDF84
    /* 44AEC 801CDA64 30000224 */   addiu     $v0, $zero, 0x30
  .L801CDA68:
    /* 44AF0 801CDA68 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 44AF4 801CDA6C 940222A4 */  sh         $v0, (0x1F800294 & 0xFFFF)($at)
    /* 44AF8 801CDA70 E1370708 */  j          .L801CDF84
    /* 44AFC 801CDA74 50000224 */   addiu     $v0, $zero, 0x50
  .L801CDA78:
    /* 44B00 801CDA78 FF0F8230 */  andi       $v0, $a0, 0xFFF
    /* 44B04 801CDA7C 06004010 */  beqz       $v0, .L801CDA98
    /* 44B08 801CDA80 00000000 */   nop
    /* 44B0C 801CDA84 88AD020C */  jal        func_800AB620
    /* 44B10 801CDA88 28050424 */   addiu     $a0, $zero, 0x528
    /* 44B14 801CDA8C 78000224 */  addiu      $v0, $zero, 0x78
    /* 44B18 801CDA90 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 44B1C 801CDA94 940222A4 */  sh         $v0, (0x1F800294 & 0xFFFF)($at)
  .L801CDA98:
    /* 44B20 801CDA98 801F023C */  lui        $v0, (0x1F800294 >> 16)
    /* 44B24 801CDA9C 94024294 */  lhu        $v0, (0x1F800294 & 0xFFFF)($v0)
    /* 44B28 801CDAA0 00000000 */  nop
    /* 44B2C 801CDAA4 01004224 */  addiu      $v0, $v0, 0x1
    /* 44B30 801CDAA8 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 44B34 801CDAAC 940222A4 */  sh         $v0, (0x1F800294 & 0xFFFF)($at)
    /* 44B38 801CDAB0 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 44B3C 801CDAB4 7900422C */  sltiu      $v0, $v0, 0x79
    /* 44B40 801CDAB8 34014014 */  bnez       $v0, .L801CDF8C
    /* 44B44 801CDABC 00000000 */   nop
  .L801CDAC0:
    /* 44B48 801CDAC0 1E80013C */  lui        $at, %hi(D_801D94D0)
    /* 44B4C 801CDAC4 D09420A0 */  sb         $zero, %lo(D_801D94D0)($at)
    /* 44B50 801CDAC8 E3370708 */  j          .L801CDF8C
    /* 44B54 801CDACC 02001524 */   addiu     $s5, $zero, 0x2
  .L801CDAD0:
    /* 44B58 801CDAD0 801F033C */  lui        $v1, (0x1F800234 >> 16)
    /* 44B5C 801CDAD4 34026394 */  lhu        $v1, (0x1F800234 & 0xFFFF)($v1)
    /* 44B60 801CDAD8 00000000 */  nop
    /* 44B64 801CDADC 20006230 */  andi       $v0, $v1, 0x20
    /* 44B68 801CDAE0 08004010 */  beqz       $v0, .L801CDB04
    /* 44B6C 801CDAE4 00000000 */   nop
    /* 44B70 801CDAE8 88AD020C */  jal        func_800AB620
    /* 44B74 801CDAEC 28050424 */   addiu     $a0, $zero, 0x528
    /* 44B78 801CDAF0 30000224 */  addiu      $v0, $zero, 0x30
    /* 44B7C 801CDAF4 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 44B80 801CDAF8 940222A4 */  sh         $v0, (0x1F800294 & 0xFFFF)($at)
    /* 44B84 801CDAFC E1370708 */  j          .L801CDF84
    /* 44B88 801CDB00 50000224 */   addiu     $v0, $zero, 0x50
  .L801CDB04:
    /* 44B8C 801CDB04 40006230 */  andi       $v0, $v1, 0x40
    /* 44B90 801CDB08 20014010 */  beqz       $v0, .L801CDF8C
    /* 44B94 801CDB0C 00000000 */   nop
    /* 44B98 801CDB10 88AD020C */  jal        func_800AB620
    /* 44B9C 801CDB14 29050424 */   addiu     $a0, $zero, 0x529
    /* 44BA0 801CDB18 1180033C */  lui        $v1, %hi(D_8010A5B4)
    /* 44BA4 801CDB1C B4A56384 */  lh         $v1, %lo(D_8010A5B4)($v1)
    /* 44BA8 801CDB20 02000224 */  addiu      $v0, $zero, 0x2
    /* 44BAC 801CDB24 02006214 */  bne        $v1, $v0, .L801CDB30
    /* 44BB0 801CDB28 0D001024 */   addiu     $s0, $zero, 0xD
    /* 44BB4 801CDB2C 03001024 */  addiu      $s0, $zero, 0x3
  .L801CDB30:
    /* 44BB8 801CDB30 01002232 */  andi       $v0, $s1, 0x1
    /* 44BBC 801CDB34 13004010 */  beqz       $v0, .L801CDB84
    /* 44BC0 801CDB38 21200000 */   addu      $a0, $zero, $zero
    /* 44BC4 801CDB3C 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 44BC8 801CDB40 38010224 */  addiu      $v0, $zero, 0x138
    /* 44BCC 801CDB44 1000A2AF */  sw         $v0, 0x10($sp)
    /* 44BD0 801CDB48 03000224 */  addiu      $v0, $zero, 0x3
    /* 44BD4 801CDB4C 2400A2AF */  sw         $v0, 0x24($sp)
    /* 44BD8 801CDB50 01000224 */  addiu      $v0, $zero, 0x1
    /* 44BDC 801CDB54 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 44BE0 801CDB58 80101000 */  sll        $v0, $s0, 2
    /* 44BE4 801CDB5C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 44BE8 801CDB60 1800A0AF */  sw         $zero, 0x18($sp)
    /* 44BEC 801CDB64 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 44BF0 801CDB68 2000A0AF */  sw         $zero, 0x20($sp)
    /* 44BF4 801CDB6C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 44BF8 801CDB70 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 44BFC 801CDB74 21082200 */  addu       $at, $at, $v0
    /* 44C00 801CDB78 C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 44C04 801CDB7C B850060C */  jal        func_801942E0
    /* 44C08 801CDB80 3E000724 */   addiu     $a3, $zero, 0x3E
  .L801CDB84:
    /* 44C0C 801CDB84 02002232 */  andi       $v0, $s1, 0x2
    /* 44C10 801CDB88 14004010 */  beqz       $v0, .L801CDBDC
    /* 44C14 801CDB8C 01000424 */   addiu     $a0, $zero, 0x1
    /* 44C18 801CDB90 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 44C1C 801CDB94 38010224 */  addiu      $v0, $zero, 0x138
    /* 44C20 801CDB98 1000A2AF */  sw         $v0, 0x10($sp)
    /* 44C24 801CDB9C 03000224 */  addiu      $v0, $zero, 0x3
    /* 44C28 801CDBA0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 44C2C 801CDBA4 0C000224 */  addiu      $v0, $zero, 0xC
    /* 44C30 801CDBA8 2400A2AF */  sw         $v0, 0x24($sp)
    /* 44C34 801CDBAC 01000224 */  addiu      $v0, $zero, 0x1
    /* 44C38 801CDBB0 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 44C3C 801CDBB4 80101000 */  sll        $v0, $s0, 2
    /* 44C40 801CDBB8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 44C44 801CDBBC 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 44C48 801CDBC0 2000A0AF */  sw         $zero, 0x20($sp)
    /* 44C4C 801CDBC4 2800A0AF */  sw         $zero, 0x28($sp)
    /* 44C50 801CDBC8 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 44C54 801CDBCC 21082200 */  addu       $at, $at, $v0
    /* 44C58 801CDBD0 C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 44C5C 801CDBD4 B850060C */  jal        func_801942E0
    /* 44C60 801CDBD8 F8FF0724 */   addiu     $a3, $zero, -0x8
  .L801CDBDC:
    /* 44C64 801CDBDC 14000224 */  addiu      $v0, $zero, 0x14
    /* 44C68 801CDBE0 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 44C6C 801CDBE4 940222A4 */  sh         $v0, (0x1F800294 & 0xFFFF)($at)
    /* 44C70 801CDBE8 E1370708 */  j          .L801CDF84
    /* 44C74 801CDBEC 30000224 */   addiu     $v0, $zero, 0x30
  .L801CDBF0:
    /* 44C78 801CDBF0 801F023C */  lui        $v0, (0x1F800294 >> 16)
    /* 44C7C 801CDBF4 94024294 */  lhu        $v0, (0x1F800294 & 0xFFFF)($v0)
    /* 44C80 801CDBF8 00000000 */  nop
    /* 44C84 801CDBFC 05004010 */  beqz       $v0, .L801CDC14
    /* 44C88 801CDC00 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 44C8C 801CDC04 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 44C90 801CDC08 940222A4 */  sh         $v0, (0x1F800294 & 0xFFFF)($at)
    /* 44C94 801CDC0C E3370708 */  j          .L801CDF8C
    /* 44C98 801CDC10 00000000 */   nop
  .L801CDC14:
    /* 44C9C 801CDC14 E1370708 */  j          .L801CDF84
    /* 44CA0 801CDC18 0100A224 */   addiu     $v0, $a1, 0x1
  .L801CDC1C:
    /* 44CA4 801CDC1C 01000424 */  addiu      $a0, $zero, 0x1
    /* 44CA8 801CDC20 D0000524 */  addiu      $a1, $zero, 0xD0
    /* 44CAC 801CDC24 34000624 */  addiu      $a2, $zero, 0x34
    /* 44CB0 801CDC28 1D80073C */  lui        $a3, %hi(D_801D5844)
    /* 44CB4 801CDC2C 4458E78C */  lw         $a3, %lo(D_801D5844)($a3)
    /* 44CB8 801CDC30 F8FF0224 */  addiu      $v0, $zero, -0x8
    /* 44CBC 801CDC34 1000A2AF */  sw         $v0, 0x10($sp)
    /* 44CC0 801CDC38 B914070C */  jal        func_801C52E4
    /* 44CC4 801CDC3C 1400A0AF */   sw        $zero, 0x14($sp)
    /* 44CC8 801CDC40 FF004230 */  andi       $v0, $v0, 0xFF
    /* 44CCC 801CDC44 D1004010 */  beqz       $v0, .L801CDF8C
    /* 44CD0 801CDC48 01000224 */   addiu     $v0, $zero, 0x1
    /* 44CD4 801CDC4C E1370708 */  j          .L801CDF84
    /* 44CD8 801CDC50 00000000 */   nop
  .L801CDC54:
    /* 44CDC 801CDC54 FF0F8230 */  andi       $v0, $a0, 0xFFF
    /* 44CE0 801CDC58 06004010 */  beqz       $v0, .L801CDC74
    /* 44CE4 801CDC5C 00000000 */   nop
    /* 44CE8 801CDC60 88AD020C */  jal        func_800AB620
    /* 44CEC 801CDC64 28050424 */   addiu     $a0, $zero, 0x528
    /* 44CF0 801CDC68 78000224 */  addiu      $v0, $zero, 0x78
    /* 44CF4 801CDC6C 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 44CF8 801CDC70 940222A4 */  sh         $v0, (0x1F800294 & 0xFFFF)($at)
  .L801CDC74:
    /* 44CFC 801CDC74 801F023C */  lui        $v0, (0x1F800294 >> 16)
    /* 44D00 801CDC78 94024294 */  lhu        $v0, (0x1F800294 & 0xFFFF)($v0)
    /* 44D04 801CDC7C 00000000 */  nop
    /* 44D08 801CDC80 01004224 */  addiu      $v0, $v0, 0x1
    /* 44D0C 801CDC84 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 44D10 801CDC88 940222A4 */  sh         $v0, (0x1F800294 & 0xFFFF)($at)
    /* 44D14 801CDC8C FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 44D18 801CDC90 7900422C */  sltiu      $v0, $v0, 0x79
    /* 44D1C 801CDC94 BD004014 */  bnez       $v0, .L801CDF8C
    /* 44D20 801CDC98 02000224 */   addiu     $v0, $zero, 0x2
    /* 44D24 801CDC9C 1180033C */  lui        $v1, %hi(D_8010A5B4)
    /* 44D28 801CDCA0 B4A56384 */  lh         $v1, %lo(D_8010A5B4)($v1)
    /* 44D2C 801CDCA4 00000000 */  nop
    /* 44D30 801CDCA8 02006214 */  bne        $v1, $v0, .L801CDCB4
    /* 44D34 801CDCAC 0D001024 */   addiu     $s0, $zero, 0xD
    /* 44D38 801CDCB0 03001024 */  addiu      $s0, $zero, 0x3
  .L801CDCB4:
    /* 44D3C 801CDCB4 01002232 */  andi       $v0, $s1, 0x1
    /* 44D40 801CDCB8 13004010 */  beqz       $v0, .L801CDD08
    /* 44D44 801CDCBC 21200000 */   addu      $a0, $zero, $zero
    /* 44D48 801CDCC0 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 44D4C 801CDCC4 38010224 */  addiu      $v0, $zero, 0x138
    /* 44D50 801CDCC8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 44D54 801CDCCC 03000224 */  addiu      $v0, $zero, 0x3
    /* 44D58 801CDCD0 2400A2AF */  sw         $v0, 0x24($sp)
    /* 44D5C 801CDCD4 01000224 */  addiu      $v0, $zero, 0x1
    /* 44D60 801CDCD8 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 44D64 801CDCDC 80101000 */  sll        $v0, $s0, 2
    /* 44D68 801CDCE0 1400A0AF */  sw         $zero, 0x14($sp)
    /* 44D6C 801CDCE4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 44D70 801CDCE8 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 44D74 801CDCEC 2000A0AF */  sw         $zero, 0x20($sp)
    /* 44D78 801CDCF0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 44D7C 801CDCF4 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 44D80 801CDCF8 21082200 */  addu       $at, $at, $v0
    /* 44D84 801CDCFC C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 44D88 801CDD00 B850060C */  jal        func_801942E0
    /* 44D8C 801CDD04 3E000724 */   addiu     $a3, $zero, 0x3E
  .L801CDD08:
    /* 44D90 801CDD08 02002232 */  andi       $v0, $s1, 0x2
    /* 44D94 801CDD0C 14004010 */  beqz       $v0, .L801CDD60
    /* 44D98 801CDD10 01000424 */   addiu     $a0, $zero, 0x1
    /* 44D9C 801CDD14 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 44DA0 801CDD18 38010224 */  addiu      $v0, $zero, 0x138
    /* 44DA4 801CDD1C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 44DA8 801CDD20 03000224 */  addiu      $v0, $zero, 0x3
    /* 44DAC 801CDD24 1400A2AF */  sw         $v0, 0x14($sp)
    /* 44DB0 801CDD28 0C000224 */  addiu      $v0, $zero, 0xC
    /* 44DB4 801CDD2C 2400A2AF */  sw         $v0, 0x24($sp)
    /* 44DB8 801CDD30 01000224 */  addiu      $v0, $zero, 0x1
    /* 44DBC 801CDD34 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 44DC0 801CDD38 80101000 */  sll        $v0, $s0, 2
    /* 44DC4 801CDD3C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 44DC8 801CDD40 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 44DCC 801CDD44 2000A0AF */  sw         $zero, 0x20($sp)
    /* 44DD0 801CDD48 2800A0AF */  sw         $zero, 0x28($sp)
    /* 44DD4 801CDD4C 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 44DD8 801CDD50 21082200 */  addu       $at, $at, $v0
    /* 44DDC 801CDD54 C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 44DE0 801CDD58 B850060C */  jal        func_801942E0
    /* 44DE4 801CDD5C F8FF0724 */   addiu     $a3, $zero, -0x8
  .L801CDD60:
    /* 44DE8 801CDD60 14000224 */  addiu      $v0, $zero, 0x14
    /* 44DEC 801CDD64 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 44DF0 801CDD68 940222A4 */  sh         $v0, (0x1F800294 & 0xFFFF)($at)
    /* 44DF4 801CDD6C E1370708 */  j          .L801CDF84
    /* 44DF8 801CDD70 30000224 */   addiu     $v0, $zero, 0x30
  .L801CDD74:
    /* 44DFC 801CDD74 214E060C */  jal        func_80193884
    /* 44E00 801CDD78 00000000 */   nop
    /* 44E04 801CDD7C 29004010 */  beqz       $v0, .L801CDE24
    /* 44E08 801CDD80 01002232 */   andi      $v0, $s1, 0x1
    /* 44E0C 801CDD84 11004010 */  beqz       $v0, .L801CDDCC
    /* 44E10 801CDD88 21200000 */   addu      $a0, $zero, $zero
    /* 44E14 801CDD8C 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 44E18 801CDD90 3E000724 */  addiu      $a3, $zero, 0x3E
    /* 44E1C 801CDD94 1D80053C */  lui        $a1, %hi(D_801D58E4)
    /* 44E20 801CDD98 E458A58C */  lw         $a1, %lo(D_801D58E4)($a1)
    /* 44E24 801CDD9C 38010224 */  addiu      $v0, $zero, 0x138
    /* 44E28 801CDDA0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 44E2C 801CDDA4 03000224 */  addiu      $v0, $zero, 0x3
    /* 44E30 801CDDA8 2400A2AF */  sw         $v0, 0x24($sp)
    /* 44E34 801CDDAC 01000224 */  addiu      $v0, $zero, 0x1
    /* 44E38 801CDDB0 1400A0AF */  sw         $zero, 0x14($sp)
    /* 44E3C 801CDDB4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 44E40 801CDDB8 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 44E44 801CDDBC 2000A0AF */  sw         $zero, 0x20($sp)
    /* 44E48 801CDDC0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 44E4C 801CDDC4 B850060C */  jal        func_801942E0
    /* 44E50 801CDDC8 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CDDCC:
    /* 44E54 801CDDCC 02002232 */  andi       $v0, $s1, 0x2
    /* 44E58 801CDDD0 12004010 */  beqz       $v0, .L801CDE1C
    /* 44E5C 801CDDD4 01000424 */   addiu     $a0, $zero, 0x1
    /* 44E60 801CDDD8 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 44E64 801CDDDC F8FF0724 */  addiu      $a3, $zero, -0x8
    /* 44E68 801CDDE0 1D80053C */  lui        $a1, %hi(D_801D58E4)
    /* 44E6C 801CDDE4 E458A58C */  lw         $a1, %lo(D_801D58E4)($a1)
    /* 44E70 801CDDE8 38010224 */  addiu      $v0, $zero, 0x138
    /* 44E74 801CDDEC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 44E78 801CDDF0 03000224 */  addiu      $v0, $zero, 0x3
    /* 44E7C 801CDDF4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 44E80 801CDDF8 0C000224 */  addiu      $v0, $zero, 0xC
    /* 44E84 801CDDFC 2400A2AF */  sw         $v0, 0x24($sp)
    /* 44E88 801CDE00 01000224 */  addiu      $v0, $zero, 0x1
    /* 44E8C 801CDE04 1800A0AF */  sw         $zero, 0x18($sp)
    /* 44E90 801CDE08 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 44E94 801CDE0C 2000A0AF */  sw         $zero, 0x20($sp)
    /* 44E98 801CDE10 2800A0AF */  sw         $zero, 0x28($sp)
    /* 44E9C 801CDE14 B850060C */  jal        func_801942E0
    /* 44EA0 801CDE18 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L801CDE1C:
    /* 44EA4 801CDE1C E1370708 */  j          .L801CDF84
    /* 44EA8 801CDE20 40000224 */   addiu     $v0, $zero, 0x40
  .L801CDE24:
    /* 44EAC 801CDE24 801F033C */  lui        $v1, (0x1F800234 >> 16)
    /* 44EB0 801CDE28 34026394 */  lhu        $v1, (0x1F800234 & 0xFFFF)($v1)
    /* 44EB4 801CDE2C 00000000 */  nop
    /* 44EB8 801CDE30 20006230 */  andi       $v0, $v1, 0x20
    /* 44EBC 801CDE34 08004010 */  beqz       $v0, .L801CDE58
    /* 44EC0 801CDE38 00000000 */   nop
    /* 44EC4 801CDE3C 88AD020C */  jal        func_800AB620
    /* 44EC8 801CDE40 28050424 */   addiu     $a0, $zero, 0x528
    /* 44ECC 801CDE44 30000224 */  addiu      $v0, $zero, 0x30
    /* 44ED0 801CDE48 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 44ED4 801CDE4C 940222A4 */  sh         $v0, (0x1F800294 & 0xFFFF)($at)
    /* 44ED8 801CDE50 E1370708 */  j          .L801CDF84
    /* 44EDC 801CDE54 50000224 */   addiu     $v0, $zero, 0x50
  .L801CDE58:
    /* 44EE0 801CDE58 40006230 */  andi       $v0, $v1, 0x40
    /* 44EE4 801CDE5C 37004010 */  beqz       $v0, .L801CDF3C
    /* 44EE8 801CDE60 00086230 */   andi      $v0, $v1, 0x800
    /* 44EEC 801CDE64 88AD020C */  jal        func_800AB620
    /* 44EF0 801CDE68 29050424 */   addiu     $a0, $zero, 0x529
    /* 44EF4 801CDE6C 1180033C */  lui        $v1, %hi(D_8010A5B4)
    /* 44EF8 801CDE70 B4A56384 */  lh         $v1, %lo(D_8010A5B4)($v1)
    /* 44EFC 801CDE74 02000224 */  addiu      $v0, $zero, 0x2
    /* 44F00 801CDE78 02006214 */  bne        $v1, $v0, .L801CDE84
    /* 44F04 801CDE7C 0D001024 */   addiu     $s0, $zero, 0xD
    /* 44F08 801CDE80 03001024 */  addiu      $s0, $zero, 0x3
  .L801CDE84:
    /* 44F0C 801CDE84 01004232 */  andi       $v0, $s2, 0x1
    /* 44F10 801CDE88 13004010 */  beqz       $v0, .L801CDED8
    /* 44F14 801CDE8C 21200000 */   addu      $a0, $zero, $zero
    /* 44F18 801CDE90 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 44F1C 801CDE94 38010224 */  addiu      $v0, $zero, 0x138
    /* 44F20 801CDE98 1000A2AF */  sw         $v0, 0x10($sp)
    /* 44F24 801CDE9C 03000224 */  addiu      $v0, $zero, 0x3
    /* 44F28 801CDEA0 2400A2AF */  sw         $v0, 0x24($sp)
    /* 44F2C 801CDEA4 01000224 */  addiu      $v0, $zero, 0x1
    /* 44F30 801CDEA8 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 44F34 801CDEAC 80101000 */  sll        $v0, $s0, 2
    /* 44F38 801CDEB0 1400A0AF */  sw         $zero, 0x14($sp)
    /* 44F3C 801CDEB4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 44F40 801CDEB8 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 44F44 801CDEBC 2000A0AF */  sw         $zero, 0x20($sp)
    /* 44F48 801CDEC0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 44F4C 801CDEC4 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 44F50 801CDEC8 21082200 */  addu       $at, $at, $v0
    /* 44F54 801CDECC C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 44F58 801CDED0 B850060C */  jal        func_801942E0
    /* 44F5C 801CDED4 3E000724 */   addiu     $a3, $zero, 0x3E
  .L801CDED8:
    /* 44F60 801CDED8 02004232 */  andi       $v0, $s2, 0x2
    /* 44F64 801CDEDC 14004010 */  beqz       $v0, .L801CDF30
    /* 44F68 801CDEE0 01000424 */   addiu     $a0, $zero, 0x1
    /* 44F6C 801CDEE4 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 44F70 801CDEE8 38010224 */  addiu      $v0, $zero, 0x138
    /* 44F74 801CDEEC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 44F78 801CDEF0 03000224 */  addiu      $v0, $zero, 0x3
    /* 44F7C 801CDEF4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 44F80 801CDEF8 0C000224 */  addiu      $v0, $zero, 0xC
    /* 44F84 801CDEFC 2400A2AF */  sw         $v0, 0x24($sp)
    /* 44F88 801CDF00 01000224 */  addiu      $v0, $zero, 0x1
    /* 44F8C 801CDF04 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 44F90 801CDF08 80101000 */  sll        $v0, $s0, 2
    /* 44F94 801CDF0C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 44F98 801CDF10 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 44F9C 801CDF14 2000A0AF */  sw         $zero, 0x20($sp)
    /* 44FA0 801CDF18 2800A0AF */  sw         $zero, 0x28($sp)
    /* 44FA4 801CDF1C 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 44FA8 801CDF20 21082200 */  addu       $at, $at, $v0
    /* 44FAC 801CDF24 C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 44FB0 801CDF28 B850060C */  jal        func_801942E0
    /* 44FB4 801CDF2C F8FF0724 */   addiu     $a3, $zero, -0x8
  .L801CDF30:
    /* 44FB8 801CDF30 30000224 */  addiu      $v0, $zero, 0x30
    /* 44FBC 801CDF34 E1370708 */  j          .L801CDF84
    /* 44FC0 801CDF38 9402C0A6 */   sh        $zero, (0x1F800294 & 0xFFFF)($s6)
  .L801CDF3C:
    /* 44FC4 801CDF3C 13004010 */  beqz       $v0, .L801CDF8C
    /* 44FC8 801CDF40 00000000 */   nop
    /* 44FCC 801CDF44 88AD020C */  jal        func_800AB620
    /* 44FD0 801CDF48 28050424 */   addiu     $a0, $zero, 0x528
    /* 44FD4 801CDF4C 1180023C */  lui        $v0, %hi(D_8010865C)
    /* 44FD8 801CDF50 5C864290 */  lbu        $v0, %lo(D_8010865C)($v0)
    /* 44FDC 801CDF54 01000324 */  addiu      $v1, $zero, 0x1
    /* 44FE0 801CDF58 1D80013C */  lui        $at, %hi(D_801D5D68)
    /* 44FE4 801CDF5C 685D23A0 */  sb         $v1, %lo(D_801D5D68)($at)
    /* 44FE8 801CDF60 08004234 */  ori        $v0, $v0, 0x8
    /* 44FEC 801CDF64 1180013C */  lui        $at, %hi(D_8010865C)
    /* 44FF0 801CDF68 5C8622A0 */  sb         $v0, %lo(D_8010865C)($at)
    /* 44FF4 801CDF6C 6D4A060C */  jal        func_801929B4
    /* 44FF8 801CDF70 21200000 */   addu      $a0, $zero, $zero
    /* 44FFC 801CDF74 10000224 */  addiu      $v0, $zero, 0x10
    /* 45000 801CDF78 1E80013C */  lui        $at, %hi(D_801DA055)
    /* 45004 801CDF7C 55A022A0 */  sb         $v0, %lo(D_801DA055)($at)
    /* 45008 801CDF80 20000224 */  addiu      $v0, $zero, 0x20
  .L801CDF84:
    /* 4500C 801CDF84 1E80013C */  lui        $at, %hi(D_801D94D0)
    /* 45010 801CDF88 D09422A0 */  sb         $v0, %lo(D_801D94D0)($at)
  .L801CDF8C:
    /* 45014 801CDF8C 0C00E286 */  lh         $v0, 0xC($s7)
    /* 45018 801CDF90 02001024 */  addiu      $s0, $zero, 0x2
    /* 4501C 801CDF94 04005014 */  bne        $v0, $s0, .L801CDFA8
    /* 45020 801CDF98 01000224 */   addiu     $v0, $zero, 0x1
    /* 45024 801CDF9C 593E070C */  jal        func_801CF964
    /* 45028 801CDFA0 00000000 */   nop
    /* 4502C 801CDFA4 01000224 */  addiu      $v0, $zero, 0x1
  .L801CDFA8:
    /* 45030 801CDFA8 0700A216 */  bne        $s5, $v0, .L801CDFC8
    /* 45034 801CDFAC 2110A002 */   addu      $v0, $s5, $zero
    /* 45038 801CDFB0 0C00E0A6 */  sh         $zero, 0xC($s7)
    /* 4503C 801CDFB4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 45040 801CDFB8 2108C103 */  addu       $at, $fp, $at
    /* 45044 801CDFBC 148F20A0 */  sb         $zero, -0x70EC($at)
    /* 45048 801CDFC0 F7370708 */  j          .L801CDFDC
    /* 4504C 801CDFC4 00000000 */   nop
  .L801CDFC8:
    /* 45050 801CDFC8 0400B016 */  bne        $s5, $s0, .L801CDFDC
    /* 45054 801CDFCC 00000000 */   nop
    /* 45058 801CDFD0 01000224 */  addiu      $v0, $zero, 0x1
    /* 4505C 801CDFD4 0C00E2A6 */  sh         $v0, 0xC($s7)
    /* 45060 801CDFD8 2110A002 */  addu       $v0, $s5, $zero
  .L801CDFDC:
    /* 45064 801CDFDC 5400BF8F */  lw         $ra, 0x54($sp)
    /* 45068 801CDFE0 5000BE8F */  lw         $fp, 0x50($sp)
    /* 4506C 801CDFE4 4C00B78F */  lw         $s7, 0x4C($sp)
    /* 45070 801CDFE8 4800B68F */  lw         $s6, 0x48($sp)
    /* 45074 801CDFEC 4400B58F */  lw         $s5, 0x44($sp)
    /* 45078 801CDFF0 4000B48F */  lw         $s4, 0x40($sp)
    /* 4507C 801CDFF4 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 45080 801CDFF8 3800B28F */  lw         $s2, 0x38($sp)
    /* 45084 801CDFFC 3400B18F */  lw         $s1, 0x34($sp)
    /* 45088 801CE000 3000B08F */  lw         $s0, 0x30($sp)
    /* 4508C 801CE004 5800BD27 */  addiu      $sp, $sp, 0x58
    /* 45090 801CE008 0800E003 */  jr         $ra
    /* 45094 801CE00C 00000000 */   nop
endlabel func_801CD224
