nonmatching func_8006F0DC, 0x110

glabel func_8006F0DC
    /* 5F8DC 8006F0DC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5F8E0 8006F0E0 1180033C */  lui        $v1, %hi(D_8010A31E)
    /* 5F8E4 8006F0E4 1EA36384 */  lh         $v1, %lo(D_8010A31E)($v1)
    /* 5F8E8 8006F0E8 01000224 */  addiu      $v0, $zero, 0x1
    /* 5F8EC 8006F0EC 801F013C */  lui        $at, (0x1F800330 >> 16)
    /* 5F8F0 8006F0F0 300322A0 */  sb         $v0, (0x1F800330 & 0xFFFF)($at)
    /* 5F8F4 8006F0F4 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 5F8F8 8006F0F8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5F8FC 8006F0FC 2C006214 */  bne        $v1, $v0, .L8006F1B0
    /* 5F900 8006F100 21306000 */   addu      $a2, $v1, $zero
    /* 5F904 8006F104 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 5F908 8006F108 02000224 */  addiu      $v0, $zero, 0x2
    /* 5F90C 8006F10C 2400A210 */  beq        $a1, $v0, .L8006F1A0
    /* 5F910 8006F110 0300A228 */   slti      $v0, $a1, 0x3
    /* 5F914 8006F114 05004010 */  beqz       $v0, .L8006F12C
    /* 5F918 8006F118 01000224 */   addiu     $v0, $zero, 0x1
    /* 5F91C 8006F11C 0800A210 */  beq        $a1, $v0, .L8006F140
    /* 5F920 8006F120 00000000 */   nop
    /* 5F924 8006F124 77BC0108 */  j          .L8006F1DC
    /* 5F928 8006F128 00000000 */   nop
  .L8006F12C:
    /* 5F92C 8006F12C 03000224 */  addiu      $v0, $zero, 0x3
    /* 5F930 8006F130 1000A210 */  beq        $a1, $v0, .L8006F174
    /* 5F934 8006F134 01000224 */   addiu     $v0, $zero, 0x1
    /* 5F938 8006F138 77BC0108 */  j          .L8006F1DC
    /* 5F93C 8006F13C 00000000 */   nop
  .L8006F140:
    /* 5F940 8006F140 153F010C */  jal        func_8004FC54
    /* 5F944 8006F144 21200000 */   addu      $a0, $zero, $zero
    /* 5F948 8006F148 801F033C */  lui        $v1, (0x1F800298 >> 16)
    /* 5F94C 8006F14C 98026390 */  lbu        $v1, (0x1F800298 & 0xFFFF)($v1)
    /* 5F950 8006F150 04000224 */  addiu      $v0, $zero, 0x4
    /* 5F954 8006F154 21006214 */  bne        $v1, $v0, .L8006F1DC
    /* 5F958 8006F158 01000224 */   addiu     $v0, $zero, 0x1
    /* 5F95C 8006F15C 4E39060C */  jal        func_8018E538
    /* 5F960 8006F160 21200000 */   addu      $a0, $zero, $zero
    /* 5F964 8006F164 801F013C */  lui        $at, (0x1F8002A2 >> 16)
    /* 5F968 8006F168 A20220A0 */  sb         $zero, (0x1F8002A2 & 0xFFFF)($at)
    /* 5F96C 8006F16C 77BC0108 */  j          .L8006F1DC
    /* 5F970 8006F170 01000224 */   addiu     $v0, $zero, 0x1
  .L8006F174:
    /* 5F974 8006F174 153F010C */  jal        func_8004FC54
    /* 5F978 8006F178 21200000 */   addu      $a0, $zero, $zero
    /* 5F97C 8006F17C 801F033C */  lui        $v1, (0x1F800298 >> 16)
    /* 5F980 8006F180 98026390 */  lbu        $v1, (0x1F800298 & 0xFFFF)($v1)
    /* 5F984 8006F184 04000224 */  addiu      $v0, $zero, 0x4
    /* 5F988 8006F188 05006214 */  bne        $v1, $v0, .L8006F1A0
    /* 5F98C 8006F18C 00000000 */   nop
    /* 5F990 8006F190 4E39060C */  jal        func_8018E538
    /* 5F994 8006F194 21200000 */   addu      $a0, $zero, $zero
    /* 5F998 8006F198 801F013C */  lui        $at, (0x1F8002A2 >> 16)
    /* 5F99C 8006F19C A20220A0 */  sb         $zero, (0x1F8002A2 & 0xFFFF)($at)
  .L8006F1A0:
    /* 5F9A0 8006F1A0 801F013C */  lui        $at, (0x1F800330 >> 16)
    /* 5F9A4 8006F1A4 300320A0 */  sb         $zero, (0x1F800330 & 0xFFFF)($at)
    /* 5F9A8 8006F1A8 77BC0108 */  j          .L8006F1DC
    /* 5F9AC 8006F1AC 01000224 */   addiu     $v0, $zero, 0x1
  .L8006F1B0:
    /* 5F9B0 8006F1B0 FF008230 */  andi       $v0, $a0, 0xFF
    /* 5F9B4 8006F1B4 21106200 */  addu       $v0, $v1, $v0
    /* 5F9B8 8006F1B8 FF004228 */  slti       $v0, $v0, 0xFF
    /* 5F9BC 8006F1BC 03004010 */  beqz       $v0, .L8006F1CC
    /* 5F9C0 8006F1C0 FF008230 */   andi      $v0, $a0, 0xFF
    /* 5F9C4 8006F1C4 74BC0108 */  j          .L8006F1D0
    /* 5F9C8 8006F1C8 2110C200 */   addu      $v0, $a2, $v0
  .L8006F1CC:
    /* 5F9CC 8006F1CC FF000224 */  addiu      $v0, $zero, 0xFF
  .L8006F1D0:
    /* 5F9D0 8006F1D0 1180013C */  lui        $at, %hi(D_8010A31E)
    /* 5F9D4 8006F1D4 1EA322A4 */  sh         $v0, %lo(D_8010A31E)($at)
    /* 5F9D8 8006F1D8 21100000 */  addu       $v0, $zero, $zero
  .L8006F1DC:
    /* 5F9DC 8006F1DC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5F9E0 8006F1E0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 5F9E4 8006F1E4 0800E003 */  jr         $ra
    /* 5F9E8 8006F1E8 00000000 */   nop
endlabel func_8006F0DC
