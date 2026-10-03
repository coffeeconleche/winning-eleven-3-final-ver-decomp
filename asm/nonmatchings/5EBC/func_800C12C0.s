nonmatching func_800C12C0, 0x70

glabel func_800C12C0
    /* B1AC0 800C12C0 0D80023C */  lui        $v0, %hi(D_800D557C)
    /* B1AC4 800C12C4 7C55428C */  lw         $v0, %lo(D_800D557C)($v0)
    /* B1AC8 800C12C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B1ACC 800C12CC 14004014 */  bnez       $v0, .L800C1320
    /* B1AD0 800C12D0 1000BFAF */   sw        $ra, 0x10($sp)
    /* B1AD4 800C12D4 01000224 */  addiu      $v0, $zero, 0x1
    /* B1AD8 800C12D8 0D80013C */  lui        $at, %hi(D_800D557C)
    /* B1ADC 800C12DC F6B4020C */  jal        func_800AD3D8
    /* B1AE0 800C12E0 7C5522AC */   sw        $v0, %lo(D_800D557C)($at)
    /* B1AE4 800C12E4 0C80043C */  lui        $a0, %hi(D_800C1778)
    /* B1AE8 800C12E8 9E07030C */  jal        func_800C1E78
    /* B1AEC 800C12EC 78178424 */   addiu     $a0, $a0, %lo(D_800C1778)
    /* B1AF0 800C12F0 00F0043C */  lui        $a0, (0xF0000009 >> 16)
    /* B1AF4 800C12F4 09008434 */  ori        $a0, $a0, (0xF0000009 & 0xFFFF)
    /* B1AF8 800C12F8 20000524 */  addiu      $a1, $zero, 0x20
    /* B1AFC 800C12FC 00200624 */  addiu      $a2, $zero, 0x2000
    /* B1B00 800C1300 8EB3020C */  jal        func_800ACE38
    /* B1B04 800C1304 21380000 */   addu      $a3, $zero, $zero
    /* B1B08 800C1308 21204000 */  addu       $a0, $v0, $zero
    /* B1B0C 800C130C 0D80013C */  lui        $at, %hi(D_800D5114)
    /* B1B10 800C1310 96B3020C */  jal        func_800ACE58
    /* B1B14 800C1314 145124AC */   sw        $a0, %lo(D_800D5114)($at)
    /* B1B18 800C1318 9AB3020C */  jal        func_800ACE68
    /* B1B1C 800C131C 00000000 */   nop
  .L800C1320:
    /* B1B20 800C1320 1000BF8F */  lw         $ra, 0x10($sp)
    /* B1B24 800C1324 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B1B28 800C1328 0800E003 */  jr         $ra
    /* B1B2C 800C132C 00000000 */   nop
endlabel func_800C12C0
    /* B1B30 800C1330 00000000 */  nop
    /* B1B34 800C1334 00000000 */  nop
