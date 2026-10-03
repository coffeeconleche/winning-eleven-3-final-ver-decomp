nonmatching func_801C4BF4, 0x1F4

glabel func_801C4BF4
    /* 3BC7C 801C4BF4 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 3BC80 801C4BF8 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3BC84 801C4BFC 21800000 */  addu       $s0, $zero, $zero
    /* 3BC88 801C4C00 01000A24 */  addiu      $t2, $zero, 0x1
    /* 3BC8C 801C4C04 40000924 */  addiu      $t1, $zero, 0x40
    /* 3BC90 801C4C08 FF000824 */  addiu      $t0, $zero, 0xFF
    /* 3BC94 801C4C0C 5555073C */  lui        $a3, (0x55555556 >> 16)
    /* 3BC98 801C4C10 5655E734 */  ori        $a3, $a3, (0x55555556 & 0xFFFF)
    /* 3BC9C 801C4C14 3800BFAF */  sw         $ra, 0x38($sp)
    /* 3BCA0 801C4C18 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3BCA4 801C4C1C FF000632 */  andi       $a2, $s0, 0xFF
  .L801C4C20:
    /* 3BCA8 801C4C20 1D80013C */  lui        $at, %hi(D_801D42A0)
    /* 3BCAC 801C4C24 21082600 */  addu       $at, $at, $a2
    /* 3BCB0 801C4C28 A0422290 */  lbu        $v0, %lo(D_801D42A0)($at)
    /* 3BCB4 801C4C2C 1D80013C */  lui        $at, %hi(D_801D42A4)
    /* 3BCB8 801C4C30 21082600 */  addu       $at, $at, $a2
    /* 3BCBC 801C4C34 A4422390 */  lbu        $v1, %lo(D_801D42A4)($at)
    /* 3BCC0 801C4C38 00000000 */  nop
    /* 3BCC4 801C4C3C 21104300 */  addu       $v0, $v0, $v1
    /* 3BCC8 801C4C40 1D80013C */  lui        $at, %hi(D_801D42A0)
    /* 3BCCC 801C4C44 21082600 */  addu       $at, $at, $a2
    /* 3BCD0 801C4C48 A04222A0 */  sb         $v0, %lo(D_801D42A0)($at)
    /* 3BCD4 801C4C4C FF004230 */  andi       $v0, $v0, 0xFF
    /* 3BCD8 801C4C50 04004014 */  bnez       $v0, .L801C4C64
    /* 3BCDC 801C4C54 00000000 */   nop
    /* 3BCE0 801C4C58 1D80013C */  lui        $at, %hi(D_801D42A4)
    /* 3BCE4 801C4C5C 21082600 */  addu       $at, $at, $a2
    /* 3BCE8 801C4C60 A4422AA0 */  sb         $t2, %lo(D_801D42A4)($at)
  .L801C4C64:
    /* 3BCEC 801C4C64 1D80013C */  lui        $at, %hi(D_801D42A0)
    /* 3BCF0 801C4C68 21082600 */  addu       $at, $at, $a2
    /* 3BCF4 801C4C6C A0422290 */  lbu        $v0, %lo(D_801D42A0)($at)
    /* 3BCF8 801C4C70 00000000 */  nop
    /* 3BCFC 801C4C74 04004914 */  bne        $v0, $t1, .L801C4C88
    /* 3BD00 801C4C78 0100C524 */   addiu     $a1, $a2, 0x1
    /* 3BD04 801C4C7C 1D80013C */  lui        $at, %hi(D_801D42A4)
    /* 3BD08 801C4C80 21082600 */  addu       $at, $at, $a2
    /* 3BD0C 801C4C84 A44228A0 */  sb         $t0, %lo(D_801D42A4)($at)
  .L801C4C88:
    /* 3BD10 801C4C88 1800A700 */  mult       $a1, $a3
    /* 3BD14 801C4C8C 01001026 */  addiu      $s0, $s0, 0x1
    /* 3BD18 801C4C90 1D80013C */  lui        $at, %hi(D_801D42A0)
    /* 3BD1C 801C4C94 21082600 */  addu       $at, $at, $a2
    /* 3BD20 801C4C98 A0422490 */  lbu        $a0, %lo(D_801D42A0)($at)
    /* 3BD24 801C4C9C C31F0500 */  sra        $v1, $a1, 31
    /* 3BD28 801C4CA0 43200400 */  sra        $a0, $a0, 1
    /* 3BD2C 801C4CA4 30008424 */  addiu      $a0, $a0, 0x30
    /* 3BD30 801C4CA8 1E80013C */  lui        $at, %hi(D_801D89E0)
    /* 3BD34 801C4CAC 21082600 */  addu       $at, $at, $a2
    /* 3BD38 801C4CB0 E08924A0 */  sb         $a0, %lo(D_801D89E0)($at)
    /* 3BD3C 801C4CB4 10680000 */  mfhi       $t5
    /* 3BD40 801C4CB8 2318A301 */  subu       $v1, $t5, $v1
    /* 3BD44 801C4CBC 40100300 */  sll        $v0, $v1, 1
    /* 3BD48 801C4CC0 21104300 */  addu       $v0, $v0, $v1
    /* 3BD4C 801C4CC4 2328A200 */  subu       $a1, $a1, $v0
    /* 3BD50 801C4CC8 FF000232 */  andi       $v0, $s0, 0xFF
    /* 3BD54 801C4CCC 0300422C */  sltiu      $v0, $v0, 0x3
    /* 3BD58 801C4CD0 1E80013C */  lui        $at, %hi(D_801D89E3)
    /* 3BD5C 801C4CD4 21082500 */  addu       $at, $at, $a1
    /* 3BD60 801C4CD8 E38924A0 */  sb         $a0, %lo(D_801D89E3)($at)
    /* 3BD64 801C4CDC D0FF4014 */  bnez       $v0, .L801C4C20
    /* 3BD68 801C4CE0 FF000632 */   andi      $a2, $s0, 0xFF
    /* 3BD6C 801C4CE4 0050043C */  lui        $a0, (0x50000000 >> 16)
    /* 3BD70 801C4CE8 40FF0524 */  addiu      $a1, $zero, -0xC0
    /* 3BD74 801C4CEC BBFF0624 */  addiu      $a2, $zero, -0x45
    /* 3BD78 801C4CF0 B5FF0724 */  addiu      $a3, $zero, -0x4B
    /* 3BD7C 801C4CF4 21800000 */  addu       $s0, $zero, $zero
    /* 3BD80 801C4CF8 1E80023C */  lui        $v0, %hi(D_801D89E0)
    /* 3BD84 801C4CFC E0894224 */  addiu      $v0, $v0, %lo(D_801D89E0)
    /* 3BD88 801C4D00 21884000 */  addu       $s1, $v0, $zero
    /* 3BD8C 801C4D04 BBFF0224 */  addiu      $v0, $zero, -0x45
    /* 3BD90 801C4D08 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3BD94 801C4D0C 00002392 */  lbu        $v1, 0x0($s1)
    /* 3BD98 801C4D10 1E80083C */  lui        $t0, %hi(D_801D89E1)
    /* 3BD9C 801C4D14 E1890891 */  lbu        $t0, %lo(D_801D89E1)($t0)
    /* 3BDA0 801C4D18 1E80093C */  lui        $t1, %hi(D_801D89E2)
    /* 3BDA4 801C4D1C E2892991 */  lbu        $t1, %lo(D_801D89E2)($t1)
    /* 3BDA8 801C4D20 1E800A3C */  lui        $t2, %hi(D_801D89E3)
    /* 3BDAC 801C4D24 E3894A91 */  lbu        $t2, %lo(D_801D89E3)($t2)
    /* 3BDB0 801C4D28 1E800B3C */  lui        $t3, %hi(D_801D89E4)
    /* 3BDB4 801C4D2C E4896B91 */  lbu        $t3, %lo(D_801D89E4)($t3)
    /* 3BDB8 801C4D30 1E800C3C */  lui        $t4, %hi(D_801D89E5)
    /* 3BDBC 801C4D34 E5898C91 */  lbu        $t4, %lo(D_801D89E5)($t4)
    /* 3BDC0 801C4D38 03000224 */  addiu      $v0, $zero, 0x3
    /* 3BDC4 801C4D3C 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 3BDC8 801C4D40 1400A3AF */  sw         $v1, 0x14($sp)
    /* 3BDCC 801C4D44 1800A8AF */  sw         $t0, 0x18($sp)
    /* 3BDD0 801C4D48 1C00A9AF */  sw         $t1, 0x1C($sp)
    /* 3BDD4 801C4D4C 2000AAAF */  sw         $t2, 0x20($sp)
    /* 3BDD8 801C4D50 2400ABAF */  sw         $t3, 0x24($sp)
    /* 3BDDC 801C4D54 9418070C */  jal        func_801C6250
    /* 3BDE0 801C4D58 2800ACAF */   sw        $t4, 0x28($sp)
    /* 3BDE4 801C4D5C 0050043C */  lui        $a0, (0x50000000 >> 16)
  .L801C4D60:
    /* 3BDE8 801C4D60 40FF0524 */  addiu      $a1, $zero, -0xC0
    /* 3BDEC 801C4D64 FF000232 */  andi       $v0, $s0, 0xFF
    /* 3BDF0 801C4D68 C0300200 */  sll        $a2, $v0, 3
    /* 3BDF4 801C4D6C 2330C200 */  subu       $a2, $a2, $v0
    /* 3BDF8 801C4D70 40300600 */  sll        $a2, $a2, 1
    /* 3BDFC 801C4D74 CEFFC624 */  addiu      $a2, $a2, -0x32
    /* 3BE00 801C4D78 C0000724 */  addiu      $a3, $zero, 0xC0
    /* 3BE04 801C4D7C 01001026 */  addiu      $s0, $s0, 0x1
    /* 3BE08 801C4D80 1000A6AF */  sw         $a2, 0x10($sp)
    /* 3BE0C 801C4D84 00002392 */  lbu        $v1, 0x0($s1)
    /* 3BE10 801C4D88 01002892 */  lbu        $t0, 0x1($s1)
    /* 3BE14 801C4D8C 02002992 */  lbu        $t1, 0x2($s1)
    /* 3BE18 801C4D90 03002A92 */  lbu        $t2, 0x3($s1)
    /* 3BE1C 801C4D94 04002B92 */  lbu        $t3, 0x4($s1)
    /* 3BE20 801C4D98 05002C92 */  lbu        $t4, 0x5($s1)
    /* 3BE24 801C4D9C 03000224 */  addiu      $v0, $zero, 0x3
    /* 3BE28 801C4DA0 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 3BE2C 801C4DA4 1400A3AF */  sw         $v1, 0x14($sp)
    /* 3BE30 801C4DA8 1800A8AF */  sw         $t0, 0x18($sp)
    /* 3BE34 801C4DAC 1C00A9AF */  sw         $t1, 0x1C($sp)
    /* 3BE38 801C4DB0 2000AAAF */  sw         $t2, 0x20($sp)
    /* 3BE3C 801C4DB4 2400ABAF */  sw         $t3, 0x24($sp)
    /* 3BE40 801C4DB8 9418070C */  jal        func_801C6250
    /* 3BE44 801C4DBC 2800ACAF */   sw        $t4, 0x28($sp)
    /* 3BE48 801C4DC0 FF000232 */  andi       $v0, $s0, 0xFF
    /* 3BE4C 801C4DC4 0800422C */  sltiu      $v0, $v0, 0x8
    /* 3BE50 801C4DC8 E5FF4014 */  bnez       $v0, .L801C4D60
    /* 3BE54 801C4DCC 0050043C */   lui       $a0, (0x50000000 >> 16)
    /* 3BE58 801C4DD0 3800BF8F */  lw         $ra, 0x38($sp)
    /* 3BE5C 801C4DD4 3400B18F */  lw         $s1, 0x34($sp)
    /* 3BE60 801C4DD8 3000B08F */  lw         $s0, 0x30($sp)
    /* 3BE64 801C4DDC 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 3BE68 801C4DE0 0800E003 */  jr         $ra
    /* 3BE6C 801C4DE4 00000000 */   nop
endlabel func_801C4BF4
