nonmatching func_8004F58C, 0xE0

glabel func_8004F58C
    /* 3FD8C 8004F58C B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 3FD90 8004F590 4000B0AF */  sw         $s0, 0x40($sp)
    /* 3FD94 8004F594 21808000 */  addu       $s0, $a0, $zero
    /* 3FD98 8004F598 1A000424 */  addiu      $a0, $zero, 0x1A
    /* 3FD9C 8004F59C 1080033C */  lui        $v1, %hi(D_800FFB58)
    /* 3FDA0 8004F5A0 58FB6324 */  addiu      $v1, $v1, %lo(D_800FFB58)
    /* 3FDA4 8004F5A4 4400BFAF */  sw         $ra, 0x44($sp)
  .L8004F5A8:
    /* 3FDA8 8004F5A8 C45D60A0 */  sb         $zero, 0x5DC4($v1)
    /* 3FDAC 8004F5AC 01008424 */  addiu      $a0, $a0, 0x1
    /* 3FDB0 8004F5B0 24008228 */  slti       $v0, $a0, 0x24
    /* 3FDB4 8004F5B4 FCFF4014 */  bnez       $v0, .L8004F5A8
    /* 3FDB8 8004F5B8 28006324 */   addiu     $v1, $v1, 0x28
    /* 3FDBC 8004F5BC FF000432 */  andi       $a0, $s0, 0xFF
    /* 3FDC0 8004F5C0 22008004 */  bltz       $a0, .L8004F64C
    /* 3FDC4 8004F5C4 04008228 */   slti      $v0, $a0, 0x4
    /* 3FDC8 8004F5C8 05004014 */  bnez       $v0, .L8004F5E0
    /* 3FDCC 8004F5CC 09000224 */   addiu     $v0, $zero, 0x9
    /* 3FDD0 8004F5D0 07008210 */  beq        $a0, $v0, .L8004F5F0
    /* 3FDD4 8004F5D4 1A000424 */   addiu     $a0, $zero, 0x1A
    /* 3FDD8 8004F5D8 943D0108 */  j          .L8004F650
    /* 3FDDC 8004F5DC FF000232 */   andi      $v0, $s0, 0xFF
  .L8004F5E0:
    /* 3FDE0 8004F5E0 9B3D010C */  jal        func_8004F66C
    /* 3FDE4 8004F5E4 00000000 */   nop
    /* 3FDE8 8004F5E8 943D0108 */  j          .L8004F650
    /* 3FDEC 8004F5EC FF000232 */   andi      $v0, $s0, 0xFF
  .L8004F5F0:
    /* 3FDF0 8004F5F0 06000224 */  addiu      $v0, $zero, 0x6
    /* 3FDF4 8004F5F4 01000324 */  addiu      $v1, $zero, 0x1
    /* 3FDF8 8004F5F8 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3FDFC 8004F5FC 80000224 */  addiu      $v0, $zero, 0x80
    /* 3FE00 8004F600 23000524 */  addiu      $a1, $zero, 0x23
    /* 3FE04 8004F604 21300000 */  addu       $a2, $zero, $zero
    /* 3FE08 8004F608 21380000 */  addu       $a3, $zero, $zero
    /* 3FE0C 8004F60C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3FE10 8004F610 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3FE14 8004F614 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* 3FE18 8004F618 2000A3AF */  sw         $v1, 0x20($sp)
    /* 3FE1C 8004F61C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3FE20 8004F620 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3FE24 8004F624 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 3FE28 8004F628 3000A2AF */  sw         $v0, 0x30($sp)
    /* 3FE2C 8004F62C 3400A2AF */  sw         $v0, 0x34($sp)
    /* 3FE30 8004F630 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3FE34 8004F634 6B73000C */  jal        func_8001CDAC
    /* 3FE38 8004F638 3C00A3AF */   sw        $v1, 0x3C($sp)
    /* 3FE3C 8004F63C 801F013C */  lui        $at, (0x1F8002A1 >> 16)
    /* 3FE40 8004F640 A10220A0 */  sb         $zero, (0x1F8002A1 & 0xFFFF)($at)
    /* 3FE44 8004F644 0E80013C */  lui        $at, %hi(D_800E6C28)
    /* 3FE48 8004F648 286C20A4 */  sh         $zero, %lo(D_800E6C28)($at)
  .L8004F64C:
    /* 3FE4C 8004F64C FF000232 */  andi       $v0, $s0, 0xFF
  .L8004F650:
    /* 3FE50 8004F650 0E80013C */  lui        $at, %hi(D_800E6C18)
    /* 3FE54 8004F654 186C22A4 */  sh         $v0, %lo(D_800E6C18)($at)
    /* 3FE58 8004F658 4400BF8F */  lw         $ra, 0x44($sp)
    /* 3FE5C 8004F65C 4000B08F */  lw         $s0, 0x40($sp)
    /* 3FE60 8004F660 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 3FE64 8004F664 0800E003 */  jr         $ra
    /* 3FE68 8004F668 00000000 */   nop
endlabel func_8004F58C
