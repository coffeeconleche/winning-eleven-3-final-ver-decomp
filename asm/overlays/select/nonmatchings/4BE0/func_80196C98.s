nonmatching func_80196C98, 0x184

glabel func_80196C98
    /* DD20 80196C98 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* DD24 80196C9C 1800B2AF */  sw         $s2, 0x18($sp)
    /* DD28 80196CA0 21908000 */  addu       $s2, $a0, $zero
    /* DD2C 80196CA4 1000B0AF */  sw         $s0, 0x10($sp)
    /* DD30 80196CA8 2180A000 */  addu       $s0, $a1, $zero
    /* DD34 80196CAC 1400B1AF */  sw         $s1, 0x14($sp)
    /* DD38 80196CB0 1D80113C */  lui        $s1, %hi(D_801D7FF8)
    /* DD3C 80196CB4 F87F3126 */  addiu      $s1, $s1, %lo(D_801D7FF8)
    /* DD40 80196CB8 21202002 */  addu       $a0, $s1, $zero
    /* DD44 80196CBC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* DD48 80196CC0 2000BFAF */  sw         $ra, 0x20($sp)
    /* DD4C 80196CC4 42B7020C */  jal        func_800ADD08
    /* DD50 80196CC8 2198C000 */   addu      $s3, $a2, $zero
    /* DD54 80196CCC 03004012 */  beqz       $s2, .L80196CDC
    /* DD58 80196CD0 21202002 */   addu      $a0, $s1, $zero
    /* DD5C 80196CD4 385B0608 */  j          .L80196CE0
    /* DD60 80196CD8 01000524 */   addiu     $a1, $zero, 0x1
  .L80196CDC:
    /* DD64 80196CDC 21280000 */  addu       $a1, $zero, $zero
  .L80196CE0:
    /* DD68 80196CE0 2EB7020C */  jal        func_800ADCB8
    /* DD6C 80196CE4 00000000 */   nop
    /* DD70 80196CE8 00000296 */  lhu        $v0, 0x0($s0)
    /* DD74 80196CEC 1E80043C */  lui        $a0, %hi(D_801D8000)
    /* DD78 80196CF0 00808424 */  addiu      $a0, $a0, %lo(D_801D8000)
    /* DD7C 80196CF4 000082A4 */  sh         $v0, 0x0($a0)
    /* DD80 80196CF8 02000296 */  lhu        $v0, 0x2($s0)
    /* DD84 80196CFC 1E80013C */  lui        $at, %hi(D_801D8002)
    /* DD88 80196D00 028022A4 */  sh         $v0, %lo(D_801D8002)($at)
    /* DD8C 80196D04 04000296 */  lhu        $v0, 0x4($s0)
    /* DD90 80196D08 1E80013C */  lui        $at, %hi(D_801D8004)
    /* DD94 80196D0C 048022A4 */  sh         $v0, %lo(D_801D8004)($at)
    /* DD98 80196D10 06000296 */  lhu        $v0, 0x6($s0)
    /* DD9C 80196D14 1E80013C */  lui        $at, %hi(D_801D8006)
    /* DDA0 80196D18 068022A4 */  sh         $v0, %lo(D_801D8006)($at)
    /* DDA4 80196D1C 08000296 */  lhu        $v0, 0x8($s0)
    /* DDA8 80196D20 FFFF6632 */  andi       $a2, $s3, 0xFFFF
    /* DDAC 80196D24 1E80013C */  lui        $at, %hi(D_801D8008)
    /* DDB0 80196D28 088022A4 */  sh         $v0, %lo(D_801D8008)($at)
    /* DDB4 80196D2C 0A000296 */  lhu        $v0, 0xA($s0)
    /* DDB8 80196D30 0F80113C */  lui        $s1, %hi(D_800F1018)
    /* DDBC 80196D34 18103126 */  addiu      $s1, $s1, %lo(D_800F1018)
    /* DDC0 80196D38 1E80013C */  lui        $at, %hi(D_801D800A)
    /* DDC4 80196D3C 0A8022A4 */  sh         $v0, %lo(D_801D800A)($at)
    /* DDC8 80196D40 0C000292 */  lbu        $v0, 0xC($s0)
    /* DDCC 80196D44 F8FF8424 */  addiu      $a0, $a0, -0x8
    /* DDD0 80196D48 1D80013C */  lui        $at, %hi(D_801D7FFC)
    /* DDD4 80196D4C FC7F22A0 */  sb         $v0, %lo(D_801D7FFC)($at)
    /* DDD8 80196D50 801F023C */  lui        $v0, (0x1F80029D >> 16)
    /* DDDC 80196D54 9D024290 */  lbu        $v0, (0x1F80029D & 0xFFFF)($v0)
    /* DDE0 80196D58 0D000392 */  lbu        $v1, 0xD($s0)
    /* DDE4 80196D5C 80280200 */  sll        $a1, $v0, 2
    /* DDE8 80196D60 2128A200 */  addu       $a1, $a1, $v0
    /* DDEC 80196D64 80280500 */  sll        $a1, $a1, 2
    /* DDF0 80196D68 1D80013C */  lui        $at, %hi(D_801D7FFD)
    /* DDF4 80196D6C FD7F23A0 */  sb         $v1, %lo(D_801D7FFD)($at)
    /* DDF8 80196D70 0E000292 */  lbu        $v0, 0xE($s0)
    /* DDFC 80196D74 1D80013C */  lui        $at, %hi(D_801D7FFE)
    /* DE00 80196D78 FE7F22A0 */  sb         $v0, %lo(D_801D7FFE)($at)
    /* DE04 80196D7C 02CE020C */  jal        func_800B3808
    /* DE08 80196D80 2128B100 */   addu      $a1, $a1, $s1
    /* DE0C 80196D84 1D004012 */  beqz       $s2, .L80196DFC
    /* DE10 80196D88 801F043C */   lui       $a0, (0x1F800180 >> 16)
    /* DE14 80196D8C 80018434 */  ori        $a0, $a0, (0x1F800180 & 0xFFFF)
    /* DE18 80196D90 FF006632 */  andi       $a2, $s3, 0xFF
    /* DE1C 80196D94 80FE0224 */  addiu      $v0, $zero, -0x180
    /* DE20 80196D98 801F073C */  lui        $a3, (0x1F80029D >> 16)
    /* DE24 80196D9C 9D02E790 */  lbu        $a3, (0x1F80029D & 0xFFFF)($a3)
    /* DE28 80196DA0 88FF0324 */  addiu      $v1, $zero, -0x78
    /* DE2C 80196DA4 801F013C */  lui        $at, (0x1F800184 >> 16)
    /* DE30 80196DA8 840122A4 */  sh         $v0, (0x1F800184 & 0xFFFF)($at)
    /* DE34 80196DAC 81FE0224 */  addiu      $v0, $zero, -0x17F
    /* DE38 80196DB0 801F013C */  lui        $at, (0x1F800186 >> 16)
    /* DE3C 80196DB4 860123A4 */  sh         $v1, (0x1F800186 & 0xFFFF)($at)
    /* DE40 80196DB8 801F013C */  lui        $at, (0x1F800188 >> 16)
    /* DE44 80196DBC 880122A4 */  sh         $v0, (0x1F800188 & 0xFFFF)($at)
    /* DE48 80196DC0 801F013C */  lui        $at, (0x1F80018A >> 16)
    /* DE4C 80196DC4 8A0123A4 */  sh         $v1, (0x1F80018A & 0xFFFF)($at)
    /* DE50 80196DC8 801F013C */  lui        $at, (0x1F800180 >> 16)
    /* DE54 80196DCC 800132AC */  sw         $s2, (0x1F800180 & 0xFFFF)($at)
    /* DE58 80196DD0 801F013C */  lui        $at, (0x1F80018C >> 16)
    /* DE5C 80196DD4 8C0120A0 */  sb         $zero, (0x1F80018C & 0xFFFF)($at)
    /* DE60 80196DD8 801F013C */  lui        $at, (0x1F80018D >> 16)
    /* DE64 80196DDC 8D0120A0 */  sb         $zero, (0x1F80018D & 0xFFFF)($at)
    /* DE68 80196DE0 801F013C */  lui        $at, (0x1F80018E >> 16)
    /* DE6C 80196DE4 8E0120A0 */  sb         $zero, (0x1F80018E & 0xFFFF)($at)
    /* DE70 80196DE8 80280700 */  sll        $a1, $a3, 2
    /* DE74 80196DEC 2128A700 */  addu       $a1, $a1, $a3
    /* DE78 80196DF0 80280500 */  sll        $a1, $a1, 2
    /* DE7C 80196DF4 26CD020C */  jal        func_800B3498
    /* DE80 80196DF8 2128B100 */   addu      $a1, $a1, $s1
  .L80196DFC:
    /* DE84 80196DFC 2000BF8F */  lw         $ra, 0x20($sp)
    /* DE88 80196E00 1C00B38F */  lw         $s3, 0x1C($sp)
    /* DE8C 80196E04 1800B28F */  lw         $s2, 0x18($sp)
    /* DE90 80196E08 1400B18F */  lw         $s1, 0x14($sp)
    /* DE94 80196E0C 1000B08F */  lw         $s0, 0x10($sp)
    /* DE98 80196E10 2800BD27 */  addiu      $sp, $sp, 0x28
    /* DE9C 80196E14 0800E003 */  jr         $ra
    /* DEA0 80196E18 00000000 */   nop
endlabel func_80196C98
