nonmatching func_800C3D58, 0x5C

glabel func_800C3D58
    /* B4558 800C3D58 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B455C 800C3D5C 1000B0AF */  sw         $s0, 0x10($sp)
    /* B4560 800C3D60 2180A000 */  addu       $s0, $a1, $zero
    /* B4564 800C3D64 0700023C */  lui        $v0, (0x7EFF0 >> 16)
    /* B4568 800C3D68 F0EF4234 */  ori        $v0, $v0, (0x7EFF0 & 0xFFFF)
    /* B456C 800C3D6C 2B105000 */  sltu       $v0, $v0, $s0
    /* B4570 800C3D70 03004010 */  beqz       $v0, .L800C3D80
    /* B4574 800C3D74 1400BFAF */   sw        $ra, 0x14($sp)
    /* B4578 800C3D78 0700103C */  lui        $s0, (0x7EFF0 >> 16)
    /* B457C 800C3D7C F0EF1036 */  ori        $s0, $s0, (0x7EFF0 & 0xFFFF)
  .L800C3D80:
    /* B4580 800C3D80 D706030C */  jal        func_800C1B5C
    /* B4584 800C3D84 21280002 */   addu      $a1, $s0, $zero
    /* B4588 800C3D88 0D80023C */  lui        $v0, %hi(D_800D55C4)
    /* B458C 800C3D8C C455428C */  lw         $v0, %lo(D_800D55C4)($v0)
    /* B4590 800C3D90 00000000 */  nop
    /* B4594 800C3D94 03004014 */  bnez       $v0, .L800C3DA4
    /* B4598 800C3D98 21100002 */   addu      $v0, $s0, $zero
    /* B459C 800C3D9C 0D80013C */  lui        $at, %hi(D_800D55C0)
    /* B45A0 800C3DA0 C05520AC */  sw         $zero, %lo(D_800D55C0)($at)
  .L800C3DA4:
    /* B45A4 800C3DA4 1400BF8F */  lw         $ra, 0x14($sp)
    /* B45A8 800C3DA8 1000B08F */  lw         $s0, 0x10($sp)
    /* B45AC 800C3DAC 0800E003 */  jr         $ra
    /* B45B0 800C3DB0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800C3D58
    /* B45B4 800C3DB4 00000000 */  nop
