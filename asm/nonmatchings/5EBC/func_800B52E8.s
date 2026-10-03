nonmatching func_800B52E8, 0x74

glabel func_800B52E8
    /* A5AE8 800B52E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A5AEC 800B52EC 1080023C */  lui        $v0, %hi(D_800FB57C)
    /* A5AF0 800B52F0 7CB5428C */  lw         $v0, %lo(D_800FB57C)($v0)
    /* A5AF4 800B52F4 0F80043C */  lui        $a0, %hi(D_800EF868)
    /* A5AF8 800B52F8 68F88424 */  addiu      $a0, $a0, %lo(D_800EF868)
    /* A5AFC 800B52FC 1000BFAF */  sw         $ra, 0x10($sp)
    /* A5B00 800B5300 C21F0200 */  srl        $v1, $v0, 31
    /* A5B04 800B5304 21104300 */  addu       $v0, $v0, $v1
    /* A5B08 800B5308 1080033C */  lui        $v1, %hi(D_800FB5AC)
    /* A5B0C 800B530C ACB5638C */  lw         $v1, %lo(D_800FB5AC)($v1)
    /* A5B10 800B5310 43100200 */  sra        $v0, $v0, 1
    /* A5B14 800B5314 000082A4 */  sh         $v0, 0x0($a0)
    /* A5B18 800B5318 C2170300 */  srl        $v0, $v1, 31
    /* A5B1C 800B531C 21186200 */  addu       $v1, $v1, $v0
    /* A5B20 800B5320 43180300 */  sra        $v1, $v1, 1
    /* A5B24 800B5324 A6D1020C */  jal        func_800B4698
    /* A5B28 800B5328 020083A4 */   sh        $v1, 0x2($a0)
    /* A5B2C 800B532C 0A000224 */  addiu      $v0, $zero, 0xA
    /* A5B30 800B5330 1180013C */  lui        $at, %hi(D_8010C29C)
    /* A5B34 800B5334 9CC222AC */  sw         $v0, %lo(D_8010C29C)($at)
    /* A5B38 800B5338 FF3F0224 */  addiu      $v0, $zero, 0x3FFF
    /* A5B3C 800B533C 1180013C */  lui        $at, %hi(D_8010C298)
    /* A5B40 800B5340 98C220AC */  sw         $zero, %lo(D_8010C298)($at)
    /* A5B44 800B5344 1080013C */  lui        $at, %hi(D_800FF704)
    /* A5B48 800B5348 04F722AC */  sw         $v0, %lo(D_800FF704)($at)
    /* A5B4C 800B534C 1000BF8F */  lw         $ra, 0x10($sp)
    /* A5B50 800B5350 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A5B54 800B5354 0800E003 */  jr         $ra
    /* A5B58 800B5358 00000000 */   nop
endlabel func_800B52E8
    /* A5B5C 800B535C 00000000 */  nop
    /* A5B60 800B5360 00000000 */  nop
    /* A5B64 800B5364 00000000 */  nop
