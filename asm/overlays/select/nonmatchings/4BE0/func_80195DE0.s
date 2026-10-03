nonmatching func_80195DE0, 0x300

glabel func_80195DE0
    /* CE68 80195DE0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* CE6C 80195DE4 2400B1AF */  sw         $s1, 0x24($sp)
    /* CE70 80195DE8 1E80113C */  lui        $s1, %hi(D_801D8A82)
    /* CE74 80195DEC 828A3196 */  lhu        $s1, %lo(D_801D8A82)($s1)
    /* CE78 80195DF0 01000524 */  addiu      $a1, $zero, 0x1
    /* CE7C 80195DF4 2800B2AF */  sw         $s2, 0x28($sp)
    /* CE80 80195DF8 1E80123C */  lui        $s2, %hi(D_801D8A84)
    /* CE84 80195DFC 848A5296 */  lhu        $s2, %lo(D_801D8A84)($s2)
    /* CE88 80195E00 1E80033C */  lui        $v1, %hi(D_801D8A8E)
    /* CE8C 80195E04 8E8A6390 */  lbu        $v1, %lo(D_801D8A8E)($v1)
    /* CE90 80195E08 1E80043C */  lui        $a0, %hi(D_801D8A86)
    /* CE94 80195E0C 868A8494 */  lhu        $a0, %lo(D_801D8A86)($a0)
    /* CE98 80195E10 1E80073C */  lui        $a3, %hi(D_801D8A88)
    /* CE9C 80195E14 888AE794 */  lhu        $a3, %lo(D_801D8A88)($a3)
    /* CEA0 80195E18 1080083C */  lui        $t0, %hi(D_800FF748)
    /* CEA4 80195E1C 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* CEA8 80195E20 2000B0AF */  sw         $s0, 0x20($sp)
    /* CEAC 80195E24 801F103C */  lui        $s0, (0x1F80015C >> 16)
    /* CEB0 80195E28 02110300 */  srl        $v0, $v1, 4
    /* CEB4 80195E2C 01004230 */  andi       $v0, $v0, 0x1
    /* CEB8 80195E30 03004010 */  beqz       $v0, .L80195E40
    /* CEBC 80195E34 2C00BFAF */   sw        $ra, 0x2C($sp)
    /* CEC0 80195E38 B4570608 */  j          .L80195ED0
    /* CEC4 80195E3C 80006234 */   ori       $v0, $v1, 0x80
  .L80195E40:
    /* CEC8 80195E40 23182402 */  subu       $v1, $s1, $a0
    /* CECC 80195E44 01006224 */  addiu      $v0, $v1, 0x1
    /* CED0 80195E48 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* CED4 80195E4C 0300422C */  sltiu      $v0, $v0, 0x3
    /* CED8 80195E50 03004010 */  beqz       $v0, .L80195E60
    /* CEDC 80195E54 23304702 */   subu      $a2, $s2, $a3
    /* CEE0 80195E58 9C570608 */  j          .L80195E70
    /* CEE4 80195E5C 21888000 */   addu      $s1, $a0, $zero
  .L80195E60:
    /* CEE8 80195E60 00140300 */  sll        $v0, $v1, 16
    /* CEEC 80195E64 43140200 */  sra        $v0, $v0, 17
    /* CEF0 80195E68 23882202 */  subu       $s1, $s1, $v0
    /* CEF4 80195E6C 21280000 */  addu       $a1, $zero, $zero
  .L80195E70:
    /* CEF8 80195E70 0100C224 */  addiu      $v0, $a2, 0x1
    /* CEFC 80195E74 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* CF00 80195E78 0300422C */  sltiu      $v0, $v0, 0x3
    /* CF04 80195E7C 03004010 */  beqz       $v0, .L80195E8C
    /* CF08 80195E80 00140600 */   sll       $v0, $a2, 16
    /* CF0C 80195E84 A6570608 */  j          .L80195E98
    /* CF10 80195E88 2190E000 */   addu      $s2, $a3, $zero
  .L80195E8C:
    /* CF14 80195E8C 43140200 */  sra        $v0, $v0, 17
    /* CF18 80195E90 23904202 */  subu       $s2, $s2, $v0
    /* CF1C 80195E94 21280000 */  addu       $a1, $zero, $zero
  .L80195E98:
    /* CF20 80195E98 1E80013C */  lui        $at, %hi(D_801D8A82)
    /* CF24 80195E9C 828A31A4 */  sh         $s1, %lo(D_801D8A82)($at)
    /* CF28 80195EA0 1E80013C */  lui        $at, %hi(D_801D8A84)
    /* CF2C 80195EA4 848A32A4 */  sh         $s2, %lo(D_801D8A84)($at)
    /* CF30 80195EA8 0500A010 */  beqz       $a1, .L80195EC0
    /* CF34 80195EAC 00000000 */   nop
    /* CF38 80195EB0 1E80023C */  lui        $v0, %hi(D_801D8A8E)
    /* CF3C 80195EB4 8E8A4290 */  lbu        $v0, %lo(D_801D8A8E)($v0)
    /* CF40 80195EB8 B4570608 */  j          .L80195ED0
    /* CF44 80195EBC 80004234 */   ori       $v0, $v0, 0x80
  .L80195EC0:
    /* CF48 80195EC0 1E80023C */  lui        $v0, %hi(D_801D8A8E)
    /* CF4C 80195EC4 8E8A4290 */  lbu        $v0, %lo(D_801D8A8E)($v0)
    /* CF50 80195EC8 00000000 */  nop
    /* CF54 80195ECC 7F004230 */  andi       $v0, $v0, 0x7F
  .L80195ED0:
    /* CF58 80195ED0 1E80013C */  lui        $at, %hi(D_801D8A8E)
    /* CF5C 80195ED4 8E8A22A0 */  sb         $v0, %lo(D_801D8A8E)($at)
    /* CF60 80195ED8 1E80023C */  lui        $v0, %hi(D_801D8A8F)
    /* CF64 80195EDC 8F8A4290 */  lbu        $v0, %lo(D_801D8A8F)($v0)
    /* CF68 80195EE0 00000000 */  nop
    /* CF6C 80195EE4 77004010 */  beqz       $v0, .L801960C4
    /* CF70 80195EE8 00000000 */   nop
    /* CF74 80195EEC 1E80023C */  lui        $v0, %hi(D_801D8A8E)
    /* CF78 80195EF0 8E8A4290 */  lbu        $v0, %lo(D_801D8A8E)($v0)
    /* CF7C 80195EF4 00000000 */  nop
    /* CF80 80195EF8 0F004330 */  andi       $v1, $v0, 0xF
    /* CF84 80195EFC 01000224 */  addiu      $v0, $zero, 0x1
    /* CF88 80195F00 0C006210 */  beq        $v1, $v0, .L80195F34
    /* CF8C 80195F04 02006228 */   slti      $v0, $v1, 0x2
    /* CF90 80195F08 05004010 */  beqz       $v0, .L80195F20
    /* CF94 80195F0C 00000000 */   nop
    /* CF98 80195F10 37006010 */  beqz       $v1, .L80195FF0
    /* CF9C 80195F14 5C010436 */   ori       $a0, $s0, (0x1F80015C & 0xFFFF)
    /* CFA0 80195F18 31580608 */  j          .L801960C4
    /* CFA4 80195F1C 00000000 */   nop
  .L80195F20:
    /* CFA8 80195F20 02000224 */  addiu      $v0, $zero, 0x2
    /* CFAC 80195F24 32006210 */  beq        $v1, $v0, .L80195FF0
    /* CFB0 80195F28 5C010436 */   ori       $a0, $s0, (0x1F80015C & 0xFFFF)
    /* CFB4 80195F2C 31580608 */  j          .L801960C4
    /* CFB8 80195F30 00000000 */   nop
  .L80195F34:
    /* CFBC 80195F34 80000424 */  addiu      $a0, $zero, 0x80
    /* CFC0 80195F38 04000524 */  addiu      $a1, $zero, 0x4
    /* CFC4 80195F3C 18000224 */  addiu      $v0, $zero, 0x18
    /* CFC8 80195F40 640102A6 */  sh         $v0, (0x1F800164 & 0xFFFF)($s0)
    /* CFCC 80195F44 660102A6 */  sh         $v0, (0x1F800166 & 0xFFFF)($s0)
    /* CFD0 80195F48 68000224 */  addiu      $v0, $zero, 0x68
    /* CFD4 80195F4C 6A0102A2 */  sb         $v0, (0x1F80016A & 0xFFFF)($s0)
    /* CFD8 80195F50 80000224 */  addiu      $v0, $zero, 0x80
    /* CFDC 80195F54 5C0100AE */  sw         $zero, (0x1F80015C & 0xFFFF)($s0)
    /* CFE0 80195F58 600111A6 */  sh         $s1, (0x1F800160 & 0xFFFF)($s0)
    /* CFE4 80195F5C 620112A6 */  sh         $s2, (0x1F800162 & 0xFFFF)($s0)
    /* CFE8 80195F60 6B0102A2 */  sb         $v0, (0x1F80016B & 0xFFFF)($s0)
    /* CFEC 80195F64 0100013C */  lui        $at, (0x10000 >> 16)
    /* CFF0 80195F68 21080101 */  addu       $at, $t0, $at
    /* CFF4 80195F6C D2812394 */  lhu        $v1, -0x7E2E($at)
    /* CFF8 80195F70 0100013C */  lui        $at, (0x10000 >> 16)
    /* CFFC 80195F74 21080101 */  addu       $at, $t0, $at
    /* D000 80195F78 D0812694 */  lhu        $a2, -0x7E30($at)
    /* D004 80195F7C 1A000224 */  addiu      $v0, $zero, 0x1A
    /* D008 80195F80 680102A6 */  sh         $v0, (0x1F800168 & 0xFFFF)($s0)
    /* D00C 80195F84 6C0103A6 */  sh         $v1, (0x1F80016C & 0xFFFF)($s0)
    /* D010 80195F88 6E39060C */  jal        func_8018E5B8
    /* D014 80195F8C 6E0106A6 */   sh        $a2, (0x1F80016E & 0xFFFF)($s0)
    /* D018 80195F90 5C010436 */  ori        $a0, $s0, (0x1F80015C & 0xFFFF)
    /* D01C 80195F94 9D020392 */  lbu        $v1, (0x1F80029D & 0xFFFF)($s0)
    /* D020 80195F98 1E80063C */  lui        $a2, %hi(D_801D8A80)
    /* D024 80195F9C 808AC694 */  lhu        $a2, %lo(D_801D8A80)($a2)
    /* D028 80195FA0 1E80083C */  lui        $t0, %hi(D_801D8A8B)
    /* D02C 80195FA4 8B8A0891 */  lbu        $t0, %lo(D_801D8A8B)($t0)
    /* D030 80195FA8 1E80073C */  lui        $a3, %hi(D_801D8A8C)
    /* D034 80195FAC 8C8AE790 */  lbu        $a3, %lo(D_801D8A8C)($a3)
    /* D038 80195FB0 80280300 */  sll        $a1, $v1, 2
    /* D03C 80195FB4 2128A300 */  addu       $a1, $a1, $v1
    /* D040 80195FB8 80280500 */  sll        $a1, $a1, 2
    /* D044 80195FBC 0F80033C */  lui        $v1, %hi(D_800F1018)
    /* D048 80195FC0 18106324 */  addiu      $v1, $v1, %lo(D_800F1018)
    /* D04C 80195FC4 2128A300 */  addu       $a1, $a1, $v1
    /* D050 80195FC8 1E80033C */  lui        $v1, %hi(D_801D8A8A)
    /* D054 80195FCC 8A8A6390 */  lbu        $v1, %lo(D_801D8A8A)($v1)
    /* D058 80195FD0 2138E200 */  addu       $a3, $a3, $v0
    /* D05C 80195FD4 710108A2 */  sb         $t0, (0x1F800171 & 0xFFFF)($s0)
    /* D060 80195FD8 720107A2 */  sb         $a3, (0x1F800172 & 0xFFFF)($s0)
    /* D064 80195FDC 21186200 */  addu       $v1, $v1, $v0
    /* D068 80195FE0 EECF020C */  jal        func_800B3FB8
    /* D06C 80195FE4 700103A2 */   sb        $v1, (0x1F800170 & 0xFFFF)($s0)
    /* D070 80195FE8 31580608 */  j          .L801960C4
    /* D074 80195FEC 00000000 */   nop
  .L80195FF0:
    /* D078 80195FF0 1E80053C */  lui        $a1, %hi(D_801D8A80)
    /* D07C 80195FF4 808AA584 */  lh         $a1, %lo(D_801D8A80)($a1)
    /* D080 80195FF8 F2FF2226 */  addiu      $v0, $s1, -0xE
    /* D084 80195FFC 600102A6 */  sh         $v0, (0x1F800160 & 0xFFFF)($s0)
    /* D088 80196000 EEFF4226 */  addiu      $v0, $s2, -0x12
    /* D08C 80196004 620102A6 */  sh         $v0, (0x1F800162 & 0xFFFF)($s0)
    /* D090 80196008 18000224 */  addiu      $v0, $zero, 0x18
    /* D094 8019600C 640102A6 */  sh         $v0, (0x1F800164 & 0xFFFF)($s0)
    /* D098 80196010 660102A6 */  sh         $v0, (0x1F800166 & 0xFFFF)($s0)
    /* D09C 80196014 50000224 */  addiu      $v0, $zero, 0x50
    /* D0A0 80196018 6A0102A2 */  sb         $v0, (0x1F80016A & 0xFFFF)($s0)
    /* D0A4 8019601C 80000224 */  addiu      $v0, $zero, 0x80
    /* D0A8 80196020 5C0100AE */  sw         $zero, (0x1F80015C & 0xFFFF)($s0)
    /* D0AC 80196024 6B0102A2 */  sb         $v0, (0x1F80016B & 0xFFFF)($s0)
    /* D0B0 80196028 0100013C */  lui        $at, (0x10000 >> 16)
    /* D0B4 8019602C 21080101 */  addu       $at, $t0, $at
    /* D0B8 80196030 D2812394 */  lhu        $v1, -0x7E2E($at)
    /* D0BC 80196034 0100013C */  lui        $at, (0x10000 >> 16)
    /* D0C0 80196038 21080101 */  addu       $at, $t0, $at
    /* D0C4 8019603C D0812694 */  lhu        $a2, -0x7E30($at)
    /* D0C8 80196040 1E80073C */  lui        $a3, %hi(D_801D8A8A)
    /* D0CC 80196044 8A8AE790 */  lbu        $a3, %lo(D_801D8A8A)($a3)
    /* D0D0 80196048 1E80083C */  lui        $t0, %hi(D_801D8A8B)
    /* D0D4 8019604C 8B8A0891 */  lbu        $t0, %lo(D_801D8A8B)($t0)
    /* D0D8 80196050 1E80093C */  lui        $t1, %hi(D_801D8A8C)
    /* D0DC 80196054 8C8A2991 */  lbu        $t1, %lo(D_801D8A8C)($t1)
    /* D0E0 80196058 1A000224 */  addiu      $v0, $zero, 0x1A
    /* D0E4 8019605C 680102A6 */  sh         $v0, (0x1F800168 & 0xFFFF)($s0)
    /* D0E8 80196060 6C0103A6 */  sh         $v1, (0x1F80016C & 0xFFFF)($s0)
    /* D0EC 80196064 6E0106A6 */  sh         $a2, (0x1F80016E & 0xFFFF)($s0)
    /* D0F0 80196068 700107A2 */  sb         $a3, (0x1F800170 & 0xFFFF)($s0)
    /* D0F4 8019606C 710108A2 */  sb         $t0, (0x1F800171 & 0xFFFF)($s0)
    /* D0F8 80196070 B958060C */  jal        func_801962E4
    /* D0FC 80196074 720109A2 */   sb        $t1, (0x1F800172 & 0xFFFF)($s0)
    /* D100 80196078 1E80023C */  lui        $v0, %hi(D_801D8A8E)
    /* D104 8019607C 8E8A4290 */  lbu        $v0, %lo(D_801D8A8E)($v0)
    /* D108 80196080 02000324 */  addiu      $v1, $zero, 0x2
    /* D10C 80196084 0F004230 */  andi       $v0, $v0, 0xF
    /* D110 80196088 0E004314 */  bne        $v0, $v1, .L801960C4
    /* D114 8019608C 0040053C */   lui       $a1, (0x40000000 >> 16)
    /* D118 80196090 00341100 */  sll        $a2, $s1, 16
    /* D11C 80196094 03340600 */  sra        $a2, $a2, 16
    /* D120 80196098 01000224 */  addiu      $v0, $zero, 0x1
    /* D124 8019609C 003C1200 */  sll        $a3, $s2, 16
    /* D128 801960A0 033C0700 */  sra        $a3, $a3, 16
    /* D12C 801960A4 1000A0AF */  sw         $zero, 0x10($sp)
    /* D130 801960A8 1400A0AF */  sw         $zero, 0x14($sp)
    /* D134 801960AC 1800A2AF */  sw         $v0, 0x18($sp)
    /* D138 801960B0 DE020492 */  lbu        $a0, (0x1F8002DE & 0xFFFF)($s0)
    /* D13C 801960B4 1E80023C */  lui        $v0, %hi(D_801D8A80)
    /* D140 801960B8 808A4284 */  lh         $v0, %lo(D_801D8A80)($v0)
    /* D144 801960BC FA5B060C */  jal        func_80196FE8
    /* D148 801960C0 1C00A2AF */   sw        $v0, 0x1C($sp)
  .L801960C4:
    /* D14C 801960C4 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* D150 801960C8 2800B28F */  lw         $s2, 0x28($sp)
    /* D154 801960CC 2400B18F */  lw         $s1, 0x24($sp)
    /* D158 801960D0 2000B08F */  lw         $s0, 0x20($sp)
    /* D15C 801960D4 3000BD27 */  addiu      $sp, $sp, 0x30
    /* D160 801960D8 0800E003 */  jr         $ra
    /* D164 801960DC 00000000 */   nop
endlabel func_80195DE0
