nonmatching func_800B5368, 0x70

glabel func_800B5368
    /* A5B68 800B5368 0000838C */  lw         $v1, 0x0($a0)
    /* A5B6C 800B536C 00000000 */  nop
    /* A5B70 800B5370 01006230 */  andi       $v0, $v1, 0x1
    /* A5B74 800B5374 16004014 */  bnez       $v0, .L800B53D0
    /* A5B78 800B5378 01006234 */   ori       $v0, $v1, 0x1
    /* A5B7C 800B537C 000082AC */  sw         $v0, 0x0($a0)
    /* A5B80 800B5380 04008424 */  addiu      $a0, $a0, 0x4
    /* A5B84 800B5384 21300000 */  addu       $a2, $zero, $zero
    /* A5B88 800B5388 0000878C */  lw         $a3, 0x0($a0)
    /* A5B8C 800B538C 00000000 */  nop
    /* A5B90 800B5390 0F00E018 */  blez       $a3, .L800B53D0
    /* A5B94 800B5394 04008424 */   addiu     $a0, $a0, 0x4
    /* A5B98 800B5398 21288000 */  addu       $a1, $a0, $zero
  .L800B539C:
    /* A5B9C 800B539C 0100C624 */  addiu      $a2, $a2, 0x1
    /* A5BA0 800B53A0 0000A28C */  lw         $v0, 0x0($a1)
    /* A5BA4 800B53A4 1000A38C */  lw         $v1, 0x10($a1)
    /* A5BA8 800B53A8 21104400 */  addu       $v0, $v0, $a0
    /* A5BAC 800B53AC 0000A2AC */  sw         $v0, 0x0($a1)
    /* A5BB0 800B53B0 0800A28C */  lw         $v0, 0x8($a1)
    /* A5BB4 800B53B4 21186400 */  addu       $v1, $v1, $a0
    /* A5BB8 800B53B8 1000A3AC */  sw         $v1, 0x10($a1)
    /* A5BBC 800B53BC 21104400 */  addu       $v0, $v0, $a0
    /* A5BC0 800B53C0 0800A2AC */  sw         $v0, 0x8($a1)
    /* A5BC4 800B53C4 2A10C700 */  slt        $v0, $a2, $a3
    /* A5BC8 800B53C8 F4FF4014 */  bnez       $v0, .L800B539C
    /* A5BCC 800B53CC 1C00A524 */   addiu     $a1, $a1, 0x1C
  .L800B53D0:
    /* A5BD0 800B53D0 0800E003 */  jr         $ra
    /* A5BD4 800B53D4 00000000 */   nop
endlabel func_800B5368
