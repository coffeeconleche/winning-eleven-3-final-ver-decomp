nonmatching func_801CB14C, 0x1E8

glabel func_801CB14C
    /* 421D4 801CB14C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 421D8 801CB150 2000B4AF */  sw         $s4, 0x20($sp)
    /* 421DC 801CB154 21A00000 */  addu       $s4, $zero, $zero
    /* 421E0 801CB158 3000BEAF */  sw         $fp, 0x30($sp)
    /* 421E4 801CB15C 02001E24 */  addiu      $fp, $zero, 0x2
    /* 421E8 801CB160 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 421EC 801CB164 03001724 */  addiu      $s7, $zero, 0x3
    /* 421F0 801CB168 2800B6AF */  sw         $s6, 0x28($sp)
    /* 421F4 801CB16C 04001624 */  addiu      $s6, $zero, 0x4
    /* 421F8 801CB170 2400B5AF */  sw         $s5, 0x24($sp)
    /* 421FC 801CB174 05001524 */  addiu      $s5, $zero, 0x5
    /* 42200 801CB178 3400BFAF */  sw         $ra, 0x34($sp)
    /* 42204 801CB17C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 42208 801CB180 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4220C 801CB184 1400B1AF */  sw         $s1, 0x14($sp)
    /* 42210 801CB188 1000B0AF */  sw         $s0, 0x10($sp)
  .L801CB18C:
    /* 42214 801CB18C FF009132 */  andi       $s1, $s4, 0xFF
    /* 42218 801CB190 40981100 */  sll        $s3, $s1, 1
    /* 4221C 801CB194 801F053C */  lui        $a1, (0x1F800022 >> 16)
    /* 42220 801CB198 21906502 */  addu       $s2, $s3, $a1
    /* 42224 801CB19C 1A004496 */  lhu        $a0, (0x1F80001A & 0xFFFF)($s2)
    /* 42228 801CB1A0 CD2C070C */  jal        func_801CB334
    /* 4222C 801CB1A4 21887102 */   addu      $s1, $s3, $s1
    /* 42230 801CB1A8 1E80103C */  lui        $s0, %hi(D_801D89F8)
    /* 42234 801CB1AC F8891026 */  addiu      $s0, $s0, %lo(D_801D89F8)
    /* 42238 801CB1B0 40881100 */  sll        $s1, $s1, 1
    /* 4223C 801CB1B4 21803002 */  addu       $s0, $s1, $s0
    /* 42240 801CB1B8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 42244 801CB1BC 21100202 */  addu       $v0, $s0, $v0
    /* 42248 801CB1C0 000040A0 */  sb         $zero, 0x0($v0)
    /* 4224C 801CB1C4 16004496 */  lhu        $a0, (0x1F800016 & 0xFFFF)($s2)
    /* 42250 801CB1C8 CD2C070C */  jal        func_801CB334
    /* 42254 801CB1CC 01009426 */   addiu     $s4, $s4, 0x1
    /* 42258 801CB1D0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 4225C 801CB1D4 21100202 */  addu       $v0, $s0, $v0
    /* 42260 801CB1D8 01000524 */  addiu      $a1, $zero, 0x1
    /* 42264 801CB1DC 000045A0 */  sb         $a1, 0x0($v0)
    /* 42268 801CB1E0 12004496 */  lhu        $a0, (0x1F800012 & 0xFFFF)($s2)
    /* 4226C 801CB1E4 CD2C070C */  jal        func_801CB334
    /* 42270 801CB1E8 00000000 */   nop
    /* 42274 801CB1EC FF004230 */  andi       $v0, $v0, 0xFF
    /* 42278 801CB1F0 21100202 */  addu       $v0, $s0, $v0
    /* 4227C 801CB1F4 00005EA0 */  sb         $fp, 0x0($v0)
    /* 42280 801CB1F8 1E004496 */  lhu        $a0, (0x1F80001E & 0xFFFF)($s2)
    /* 42284 801CB1FC CD2C070C */  jal        func_801CB334
    /* 42288 801CB200 00000000 */   nop
    /* 4228C 801CB204 FF004230 */  andi       $v0, $v0, 0xFF
    /* 42290 801CB208 21100202 */  addu       $v0, $s0, $v0
    /* 42294 801CB20C 000057A0 */  sb         $s7, 0x0($v0)
    /* 42298 801CB210 2E004496 */  lhu        $a0, (0x1F80002E & 0xFFFF)($s2)
    /* 4229C 801CB214 CD2C070C */  jal        func_801CB334
    /* 422A0 801CB218 00000000 */   nop
    /* 422A4 801CB21C FF004230 */  andi       $v0, $v0, 0xFF
    /* 422A8 801CB220 21100202 */  addu       $v0, $s0, $v0
    /* 422AC 801CB224 000056A0 */  sb         $s6, 0x0($v0)
    /* 422B0 801CB228 22004496 */  lhu        $a0, (0x1F800022 & 0xFFFF)($s2)
    /* 422B4 801CB22C CD2C070C */  jal        func_801CB334
    /* 422B8 801CB230 00000000 */   nop
    /* 422BC 801CB234 FF004230 */  andi       $v0, $v0, 0xFF
    /* 422C0 801CB238 21800202 */  addu       $s0, $s0, $v0
    /* 422C4 801CB23C 000015A2 */  sb         $s5, 0x0($s0)
    /* 422C8 801CB240 2A004496 */  lhu        $a0, (0x1F80002A & 0xFFFF)($s2)
    /* 422CC 801CB244 CD2C070C */  jal        func_801CB334
    /* 422D0 801CB248 00000000 */   nop
    /* 422D4 801CB24C 1E80033C */  lui        $v1, %hi(D_801D8A08)
    /* 422D8 801CB250 088A6324 */  addiu      $v1, $v1, %lo(D_801D8A08)
    /* 422DC 801CB254 21882302 */  addu       $s1, $s1, $v1
    /* 422E0 801CB258 FF004230 */  andi       $v0, $v0, 0xFF
    /* 422E4 801CB25C 21102202 */  addu       $v0, $s1, $v0
    /* 422E8 801CB260 000040A0 */  sb         $zero, 0x0($v0)
    /* 422EC 801CB264 26004496 */  lhu        $a0, (0x1F800026 & 0xFFFF)($s2)
    /* 422F0 801CB268 CD2C070C */  jal        func_801CB334
    /* 422F4 801CB26C 00000000 */   nop
    /* 422F8 801CB270 FF004230 */  andi       $v0, $v0, 0xFF
    /* 422FC 801CB274 21102202 */  addu       $v0, $s1, $v0
    /* 42300 801CB278 01000524 */  addiu      $a1, $zero, 0x1
    /* 42304 801CB27C 000045A0 */  sb         $a1, 0x0($v0)
    /* 42308 801CB280 1080053C */  lui        $a1, %hi(D_800FF748)
    /* 4230C 801CB284 48F7A524 */  addiu      $a1, $a1, %lo(D_800FF748)
    /* 42310 801CB288 21986502 */  addu       $s3, $s3, $a1
    /* 42314 801CB28C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42318 801CB290 21086102 */  addu       $at, $s3, $at
    /* 4231C 801CB294 1A8F2494 */  lhu        $a0, -0x70E6($at)
    /* 42320 801CB298 CD2C070C */  jal        func_801CB334
    /* 42324 801CB29C 00000000 */   nop
    /* 42328 801CB2A0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 4232C 801CB2A4 21102202 */  addu       $v0, $s1, $v0
    /* 42330 801CB2A8 00005EA0 */  sb         $fp, 0x0($v0)
    /* 42334 801CB2AC 32004496 */  lhu        $a0, (0x1F800032 & 0xFFFF)($s2)
    /* 42338 801CB2B0 CD2C070C */  jal        func_801CB334
    /* 4233C 801CB2B4 00000000 */   nop
    /* 42340 801CB2B8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 42344 801CB2BC 21102202 */  addu       $v0, $s1, $v0
    /* 42348 801CB2C0 000057A0 */  sb         $s7, 0x0($v0)
    /* 4234C 801CB2C4 2E004496 */  lhu        $a0, (0x1F80002E & 0xFFFF)($s2)
    /* 42350 801CB2C8 CD2C070C */  jal        func_801CB334
    /* 42354 801CB2CC 00000000 */   nop
    /* 42358 801CB2D0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 4235C 801CB2D4 21102202 */  addu       $v0, $s1, $v0
    /* 42360 801CB2D8 000056A0 */  sb         $s6, 0x0($v0)
    /* 42364 801CB2DC 22004496 */  lhu        $a0, (0x1F800022 & 0xFFFF)($s2)
    /* 42368 801CB2E0 CD2C070C */  jal        func_801CB334
    /* 4236C 801CB2E4 00000000 */   nop
    /* 42370 801CB2E8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 42374 801CB2EC 21882202 */  addu       $s1, $s1, $v0
    /* 42378 801CB2F0 FF008232 */  andi       $v0, $s4, 0xFF
    /* 4237C 801CB2F4 0200422C */  sltiu      $v0, $v0, 0x2
    /* 42380 801CB2F8 A4FF4014 */  bnez       $v0, .L801CB18C
    /* 42384 801CB2FC 000035A2 */   sb        $s5, 0x0($s1)
    /* 42388 801CB300 3400BF8F */  lw         $ra, 0x34($sp)
    /* 4238C 801CB304 3000BE8F */  lw         $fp, 0x30($sp)
    /* 42390 801CB308 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 42394 801CB30C 2800B68F */  lw         $s6, 0x28($sp)
    /* 42398 801CB310 2400B58F */  lw         $s5, 0x24($sp)
    /* 4239C 801CB314 2000B48F */  lw         $s4, 0x20($sp)
    /* 423A0 801CB318 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 423A4 801CB31C 1800B28F */  lw         $s2, 0x18($sp)
    /* 423A8 801CB320 1400B18F */  lw         $s1, 0x14($sp)
    /* 423AC 801CB324 1000B08F */  lw         $s0, 0x10($sp)
    /* 423B0 801CB328 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 423B4 801CB32C 0800E003 */  jr         $ra
    /* 423B8 801CB330 00000000 */   nop
endlabel func_801CB14C
