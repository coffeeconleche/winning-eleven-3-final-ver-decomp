nonmatching func_800B7B74, 0x280

glabel func_800B7B74
    /* A8374 800B7B74 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* A8378 800B7B78 3000B6AF */  sw         $s6, 0x30($sp)
    /* A837C 800B7B7C 21B08000 */  addu       $s6, $a0, $zero
    /* A8380 800B7B80 3400B7AF */  sw         $s7, 0x34($sp)
    /* A8384 800B7B84 21B8A000 */  addu       $s7, $a1, $zero
    /* A8388 800B7B88 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* A838C 800B7B8C 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* A8390 800B7B90 3800BEAF */  sw         $fp, 0x38($sp)
    /* A8394 800B7B94 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* A8398 800B7B98 2800B4AF */  sw         $s4, 0x28($sp)
    /* A839C 800B7B9C 2400B3AF */  sw         $s3, 0x24($sp)
    /* A83A0 800B7BA0 2000B2AF */  sw         $s2, 0x20($sp)
    /* A83A4 800B7BA4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* A83A8 800B7BA8 46E9020C */  jal        func_800BA518
    /* A83AC 800B7BAC 1800B0AF */   sw        $s0, 0x18($sp)
    /* A83B0 800B7BB0 0D801E3C */  lui        $fp, %hi(D_800D3974)
    /* A83B4 800B7BB4 7439DE27 */  addiu      $fp, $fp, %lo(D_800D3974)
    /* A83B8 800B7BB8 0D80143C */  lui        $s4, %hi(D_800D39F4)
    /* A83BC 800B7BBC F4399426 */  addiu      $s4, $s4, %lo(D_800D39F4)
    /* A83C0 800B7BC0 0D80123C */  lui        $s2, %hi(D_800D3C2C)
    /* A83C4 800B7BC4 2C3C5226 */  addiu      $s2, $s2, %lo(D_800D3C2C)
    /* A83C8 800B7BC8 01005526 */  addiu      $s5, $s2, 0x1
    /* A83CC 800B7BCC 02001324 */  addiu      $s3, $zero, 0x2
    /* A83D0 800B7BD0 C0034224 */  addiu      $v0, $v0, 0x3C0
    /* A83D4 800B7BD4 0E80013C */  lui        $at, %hi(D_800E71E0)
    /* A83D8 800B7BD8 E07122AC */  sw         $v0, %lo(D_800E71E0)($at)
    /* A83DC 800B7BDC 0180023C */  lui        $v0, %hi(D_80015350)
    /* A83E0 800B7BE0 50534224 */  addiu      $v0, $v0, %lo(D_80015350)
    /* A83E4 800B7BE4 0E80013C */  lui        $at, %hi(D_800E71E4)
    /* A83E8 800B7BE8 E47120AC */  sw         $zero, %lo(D_800E71E4)($at)
    /* A83EC 800B7BEC 0E80013C */  lui        $at, %hi(D_800E71E8)
    /* A83F0 800B7BF0 E87122AC */  sw         $v0, %lo(D_800E71E8)($at)
  .L800B7BF4:
    /* A83F4 800B7BF4 46E9020C */  jal        func_800BA518
    /* A83F8 800B7BF8 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* A83FC 800B7BFC 0E80033C */  lui        $v1, %hi(D_800E71E0)
    /* A8400 800B7C00 E071638C */  lw         $v1, %lo(D_800E71E0)($v1)
    /* A8404 800B7C04 00000000 */  nop
    /* A8408 800B7C08 2A186200 */  slt        $v1, $v1, $v0
    /* A840C 800B7C0C 0C006014 */  bnez       $v1, .L800B7C40
    /* A8410 800B7C10 00000000 */   nop
    /* A8414 800B7C14 0E80023C */  lui        $v0, %hi(D_800E71E4)
    /* A8418 800B7C18 E471428C */  lw         $v0, %lo(D_800E71E4)($v0)
    /* A841C 800B7C1C 00000000 */  nop
    /* A8420 800B7C20 21184000 */  addu       $v1, $v0, $zero
    /* A8424 800B7C24 01004224 */  addiu      $v0, $v0, 0x1
    /* A8428 800B7C28 0E80013C */  lui        $at, %hi(D_800E71E4)
    /* A842C 800B7C2C E47122AC */  sw         $v0, %lo(D_800E71E4)($at)
    /* A8430 800B7C30 3C00023C */  lui        $v0, (0x3C0000 >> 16)
    /* A8434 800B7C34 2A104300 */  slt        $v0, $v0, $v1
    /* A8438 800B7C38 1B004010 */  beqz       $v0, .L800B7CA8
    /* A843C 800B7C3C 00000000 */   nop
  .L800B7C40:
    /* A8440 800B7C40 0180043C */  lui        $a0, %hi(D_800152C8)
    /* A8444 800B7C44 60E3020C */  jal        func_800B8D80
    /* A8448 800B7C48 C8528424 */   addiu     $a0, $a0, %lo(D_800152C8)
    /* A844C 800B7C4C 00004492 */  lbu        $a0, 0x0($s2)
    /* A8450 800B7C50 01004292 */  lbu        $v0, 0x1($s2)
    /* A8454 800B7C54 0E80053C */  lui        $a1, %hi(D_800E71E8)
    /* A8458 800B7C58 E871A58C */  lw         $a1, %lo(D_800E71E8)($a1)
    /* A845C 800B7C5C 80100200 */  sll        $v0, $v0, 2
    /* A8460 800B7C60 21105400 */  addu       $v0, $v0, $s4
    /* A8464 800B7C64 80200400 */  sll        $a0, $a0, 2
    /* A8468 800B7C68 0000438C */  lw         $v1, 0x0($v0)
    /* A846C 800B7C6C 0D80023C */  lui        $v0, %hi(D_800D396D)
    /* A8470 800B7C70 6D394290 */  lbu        $v0, %lo(D_800D396D)($v0)
    /* A8474 800B7C74 21209400 */  addu       $a0, $a0, $s4
    /* A8478 800B7C78 80100200 */  sll        $v0, $v0, 2
    /* A847C 800B7C7C 21105E00 */  addu       $v0, $v0, $fp
    /* A8480 800B7C80 1000A3AF */  sw         $v1, 0x10($sp)
    /* A8484 800B7C84 0000468C */  lw         $a2, 0x0($v0)
    /* A8488 800B7C88 0000878C */  lw         $a3, 0x0($a0)
    /* A848C 800B7C8C 0180043C */  lui        $a0, %hi(D_800152D8)
    /* A8490 800B7C90 A6B5020C */  jal        func_800AD698
    /* A8494 800B7C94 D8528424 */   addiu     $a0, $a0, %lo(D_800152D8)
    /* A8498 800B7C98 54E1020C */  jal        func_800B8550
    /* A849C 800B7C9C 00000000 */   nop
    /* A84A0 800B7CA0 2BDF0208 */  j          .L800B7CAC
    /* A84A4 800B7CA4 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800B7CA8:
    /* A84A8 800B7CA8 21100000 */  addu       $v0, $zero, $zero
  .L800B7CAC:
    /* A84AC 800B7CAC 45004014 */  bnez       $v0, .L800B7DC4
    /* A84B0 800B7CB0 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A84B4 800B7CB4 23EA020C */  jal        func_800BA88C
    /* A84B8 800B7CB8 00000000 */   nop
    /* A84BC 800B7CBC 29004010 */  beqz       $v0, .L800B7D64
    /* A84C0 800B7CC0 00000000 */   nop
    /* A84C4 800B7CC4 0D80023C */  lui        $v0, %hi(D_800D3C14)
    /* A84C8 800B7CC8 143C428C */  lw         $v0, %lo(D_800D3C14)($v0)
    /* A84CC 800B7CCC 00000000 */  nop
    /* A84D0 800B7CD0 00004290 */  lbu        $v0, 0x0($v0)
    /* A84D4 800B7CD4 00000000 */  nop
    /* A84D8 800B7CD8 03005130 */  andi       $s1, $v0, 0x3
  .L800B7CDC:
    /* A84DC 800B7CDC 86DD020C */  jal        func_800B7618
    /* A84E0 800B7CE0 00000000 */   nop
    /* A84E4 800B7CE4 21804000 */  addu       $s0, $v0, $zero
    /* A84E8 800B7CE8 1A000012 */  beqz       $s0, .L800B7D54
    /* A84EC 800B7CEC 04000232 */   andi      $v0, $s0, 0x4
    /* A84F0 800B7CF0 0B004010 */  beqz       $v0, .L800B7D20
    /* A84F4 800B7CF4 02000232 */   andi      $v0, $s0, 0x2
    /* A84F8 800B7CF8 0D80023C */  lui        $v0, %hi(D_800D3950)
    /* A84FC 800B7CFC 5039428C */  lw         $v0, %lo(D_800D3950)($v0)
    /* A8500 800B7D00 00000000 */  nop
    /* A8504 800B7D04 05004010 */  beqz       $v0, .L800B7D1C
    /* A8508 800B7D08 00000000 */   nop
    /* A850C 800B7D0C 0000A492 */  lbu        $a0, 0x0($s5)
    /* A8510 800B7D10 0E80053C */  lui        $a1, %hi(D_800E71D0)
    /* A8514 800B7D14 09F84000 */  jalr       $v0
    /* A8518 800B7D18 D071A524 */   addiu     $a1, $a1, %lo(D_800E71D0)
  .L800B7D1C:
    /* A851C 800B7D1C 02000232 */  andi       $v0, $s0, 0x2
  .L800B7D20:
    /* A8520 800B7D20 EEFF4010 */  beqz       $v0, .L800B7CDC
    /* A8524 800B7D24 00000000 */   nop
    /* A8528 800B7D28 0D80023C */  lui        $v0, %hi(D_800D394C)
    /* A852C 800B7D2C 4C39428C */  lw         $v0, %lo(D_800D394C)($v0)
    /* A8530 800B7D30 00000000 */  nop
    /* A8534 800B7D34 E9FF4010 */  beqz       $v0, .L800B7CDC
    /* A8538 800B7D38 00000000 */   nop
    /* A853C 800B7D3C 00004492 */  lbu        $a0, 0x0($s2)
    /* A8540 800B7D40 0E80053C */  lui        $a1, %hi(D_800E71C8)
    /* A8544 800B7D44 09F84000 */  jalr       $v0
    /* A8548 800B7D48 C871A524 */   addiu     $a1, $a1, %lo(D_800E71C8)
    /* A854C 800B7D4C 37DF0208 */  j          .L800B7CDC
    /* A8550 800B7D50 00000000 */   nop
  .L800B7D54:
    /* A8554 800B7D54 0D80023C */  lui        $v0, %hi(D_800D3C14)
    /* A8558 800B7D58 143C428C */  lw         $v0, %lo(D_800D3C14)($v0)
    /* A855C 800B7D5C 00000000 */  nop
    /* A8560 800B7D60 000051A0 */  sb         $s1, 0x0($v0)
  .L800B7D64:
    /* A8564 800B7D64 00004292 */  lbu        $v0, 0x0($s2)
    /* A8568 800B7D68 00000000 */  nop
    /* A856C 800B7D6C FF004630 */  andi       $a2, $v0, 0xFF
    /* A8570 800B7D70 0300D310 */  beq        $a2, $s3, .L800B7D80
    /* A8574 800B7D74 05000224 */   addiu     $v0, $zero, 0x5
    /* A8578 800B7D78 1000C214 */  bne        $a2, $v0, .L800B7DBC
    /* A857C 800B7D7C 00000000 */   nop
  .L800B7D80:
    /* A8580 800B7D80 000053A2 */  sb         $s3, 0x0($s2)
    /* A8584 800B7D84 2128E002 */  addu       $a1, $s7, $zero
    /* A8588 800B7D88 0E80043C */  lui        $a0, %hi(D_800E71C8)
    /* A858C 800B7D8C C8718424 */  addiu      $a0, $a0, %lo(D_800E71C8)
    /* A8590 800B7D90 0800A010 */  beqz       $a1, .L800B7DB4
    /* A8594 800B7D94 07000324 */   addiu     $v1, $zero, 0x7
    /* A8598 800B7D98 FFFF0724 */  addiu      $a3, $zero, -0x1
  .L800B7D9C:
    /* A859C 800B7D9C 00008290 */  lbu        $v0, 0x0($a0)
    /* A85A0 800B7DA0 01008424 */  addiu      $a0, $a0, 0x1
    /* A85A4 800B7DA4 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* A85A8 800B7DA8 0000A2A0 */  sb         $v0, 0x0($a1)
    /* A85AC 800B7DAC FBFF6714 */  bne        $v1, $a3, .L800B7D9C
    /* A85B0 800B7DB0 0100A524 */   addiu     $a1, $a1, 0x1
  .L800B7DB4:
    /* A85B4 800B7DB4 71DF0208 */  j          .L800B7DC4
    /* A85B8 800B7DB8 2110C000 */   addu      $v0, $a2, $zero
  .L800B7DBC:
    /* A85BC 800B7DBC 8DFFC012 */  beqz       $s6, .L800B7BF4
    /* A85C0 800B7DC0 21100000 */   addu      $v0, $zero, $zero
  .L800B7DC4:
    /* A85C4 800B7DC4 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* A85C8 800B7DC8 3800BE8F */  lw         $fp, 0x38($sp)
    /* A85CC 800B7DCC 3400B78F */  lw         $s7, 0x34($sp)
    /* A85D0 800B7DD0 3000B68F */  lw         $s6, 0x30($sp)
    /* A85D4 800B7DD4 2C00B58F */  lw         $s5, 0x2C($sp)
    /* A85D8 800B7DD8 2800B48F */  lw         $s4, 0x28($sp)
    /* A85DC 800B7DDC 2400B38F */  lw         $s3, 0x24($sp)
    /* A85E0 800B7DE0 2000B28F */  lw         $s2, 0x20($sp)
    /* A85E4 800B7DE4 1C00B18F */  lw         $s1, 0x1C($sp)
    /* A85E8 800B7DE8 1800B08F */  lw         $s0, 0x18($sp)
    /* A85EC 800B7DEC 0800E003 */  jr         $ra
    /* A85F0 800B7DF0 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_800B7B74
