nonmatching func_80079BA0, 0xB0

glabel func_80079BA0
    /* 6A3A0 80079BA0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6A3A4 80079BA4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6A3A8 80079BA8 21808000 */  addu       $s0, $a0, $zero
    /* 6A3AC 80079BAC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 6A3B0 80079BB0 90030292 */  lbu        $v0, 0x390($s0)
    /* 6A3B4 80079BB4 00000000 */  nop
    /* 6A3B8 80079BB8 1B00422C */  sltiu      $v0, $v0, 0x1B
    /* 6A3BC 80079BBC 12004010 */  beqz       $v0, .L80079C08
    /* 6A3C0 80079BC0 21200002 */   addu      $a0, $s0, $zero
    /* 6A3C4 80079BC4 02000486 */  lh         $a0, 0x2($s0)
    /* 6A3C8 80079BC8 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 6A3CC 80079BCC F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 6A3D0 80079BD0 06000586 */  lh         $a1, 0x6($s0)
    /* 6A3D4 80079BD4 02004684 */  lh         $a2, 0x2($v0)
    /* 6A3D8 80079BD8 06004784 */  lh         $a3, 0x6($v0)
    /* 6A3DC 80079BDC DB6C010C */  jal        func_8005B36C
    /* 6A3E0 80079BE0 00000000 */   nop
    /* 6A3E4 80079BE4 AC030392 */  lbu        $v1, 0x3AC($s0)
    /* 6A3E8 80079BE8 00000000 */  nop
    /* 6A3EC 80079BEC 03006014 */  bnez       $v1, .L80079BFC
    /* 6A3F0 80079BF0 FF004230 */   andi      $v0, $v0, 0xFF
    /* 6A3F4 80079BF4 00E70108 */  j          .L80079C00
    /* 6A3F8 80079BF8 08004224 */   addiu     $v0, $v0, 0x8
  .L80079BFC:
    /* 6A3FC 80079BFC F8FF4224 */  addiu      $v0, $v0, -0x8
  .L80079C00:
    /* 6A400 80079C00 04E70108 */  j          .L80079C10
    /* 6A404 80079C04 AA0302A2 */   sb        $v0, 0x3AA($s0)
  .L80079C08:
    /* 6A408 80079C08 2C28010C */  jal        func_8004A0B0
    /* 6A40C 80079C0C 04000524 */   addiu     $a1, $zero, 0x4
  .L80079C10:
    /* 6A410 80079C10 AA030292 */  lbu        $v0, 0x3AA($s0)
    /* 6A414 80079C14 C8030386 */  lh         $v1, 0x3C8($s0)
    /* 6A418 80079C18 00000000 */  nop
    /* 6A41C 80079C1C 07006014 */  bnez       $v1, .L80079C3C
    /* 6A420 80079C20 A40302A2 */   sb        $v0, 0x3A4($s0)
    /* 6A424 80079C24 90030292 */  lbu        $v0, 0x390($s0)
    /* 6A428 80079C28 0C80013C */  lui        $at, %hi(D_800C6C04)
    /* 6A42C 80079C2C 21082200 */  addu       $at, $at, $v0
    /* 6A430 80079C30 046C2290 */  lbu        $v0, %lo(D_800C6C04)($at)
    /* 6A434 80079C34 00000000 */  nop
    /* 6A438 80079C38 A00302AE */  sw         $v0, 0x3A0($s0)
  .L80079C3C:
    /* 6A43C 80079C3C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 6A440 80079C40 1000B08F */  lw         $s0, 0x10($sp)
    /* 6A444 80079C44 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6A448 80079C48 0800E003 */  jr         $ra
    /* 6A44C 80079C4C 00000000 */   nop
endlabel func_80079BA0
