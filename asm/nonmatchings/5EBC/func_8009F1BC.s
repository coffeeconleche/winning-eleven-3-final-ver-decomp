nonmatching func_8009F1BC, 0x18C

glabel func_8009F1BC
    /* 8F9BC 8009F1BC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8F9C0 8009F1C0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8F9C4 8009F1C4 21808000 */  addu       $s0, $a0, $zero
    /* 8F9C8 8009F1C8 801F053C */  lui        $a1, (0x1F8000F8 >> 16)
    /* 8F9CC 8009F1CC F800A534 */  ori        $a1, $a1, (0x1F8000F8 & 0xFFFF)
    /* 8F9D0 8009F1D0 801F063C */  lui        $a2, (0x1F8000FC >> 16)
    /* 8F9D4 8009F1D4 FC00C634 */  ori        $a2, $a2, (0x1F8000FC & 0xFFFF)
    /* 8F9D8 8009F1D8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8F9DC 8009F1DC 176A010C */  jal        func_8005A85C
    /* 8F9E0 8009F1E0 1400B1AF */   sw        $s1, 0x14($sp)
    /* 8F9E4 8009F1E4 91030292 */  lbu        $v0, 0x391($s0)
    /* 8F9E8 8009F1E8 00000000 */  nop
    /* 8F9EC 8009F1EC FFFF4324 */  addiu      $v1, $v0, -0x1
    /* 8F9F0 8009F1F0 1900622C */  sltiu      $v0, $v1, 0x19
    /* 8F9F4 8009F1F4 22004010 */  beqz       $v0, .L8009F280
    /* 8F9F8 8009F1F8 801F113C */   lui       $s1, (0x1F8000FC >> 16)
    /* 8F9FC 8009F1FC 80100300 */  sll        $v0, $v1, 2
    /* 8FA00 8009F200 0180013C */  lui        $at, %hi(jtbl_8001437C)
    /* 8FA04 8009F204 21082200 */  addu       $at, $at, $v0
    /* 8FA08 8009F208 7C43228C */  lw         $v0, %lo(jtbl_8001437C)($at)
    /* 8FA0C 8009F20C 00000000 */  nop
    /* 8FA10 8009F210 08004000 */  jr         $v0
    /* 8FA14 8009F214 00000000 */   nop
  jlabel .L8009F218
    /* 8FA18 8009F218 98A5010C */  jal        func_80069660
    /* 8FA1C 8009F21C 21200002 */   addu      $a0, $s0, $zero
    /* 8FA20 8009F220 A17C0208 */  j          .L8009F284
    /* 8FA24 8009F224 21200002 */   addu      $a0, $s0, $zero
  jlabel .L8009F228
    /* 8FA28 8009F228 5BA8010C */  jal        func_8006A16C
    /* 8FA2C 8009F22C 21200002 */   addu      $a0, $s0, $zero
    /* 8FA30 8009F230 A17C0208 */  j          .L8009F284
    /* 8FA34 8009F234 21200002 */   addu      $a0, $s0, $zero
  jlabel .L8009F238
    /* 8FA38 8009F238 B9A8010C */  jal        func_8006A2E4
    /* 8FA3C 8009F23C 21200002 */   addu      $a0, $s0, $zero
    /* 8FA40 8009F240 A17C0208 */  j          .L8009F284
    /* 8FA44 8009F244 21200002 */   addu      $a0, $s0, $zero
  jlabel .L8009F248
    /* 8FA48 8009F248 13AB010C */  jal        func_8006AC4C
    /* 8FA4C 8009F24C 21200002 */   addu      $a0, $s0, $zero
    /* 8FA50 8009F250 A17C0208 */  j          .L8009F284
    /* 8FA54 8009F254 21200002 */   addu      $a0, $s0, $zero
  jlabel .L8009F258
    /* 8FA58 8009F258 79AF010C */  jal        func_8006BDE4
    /* 8FA5C 8009F25C 21200002 */   addu      $a0, $s0, $zero
    /* 8FA60 8009F260 A17C0208 */  j          .L8009F284
    /* 8FA64 8009F264 21200002 */   addu      $a0, $s0, $zero
  jlabel .L8009F268
    /* 8FA68 8009F268 41AE010C */  jal        func_8006B904
    /* 8FA6C 8009F26C 21200002 */   addu      $a0, $s0, $zero
    /* 8FA70 8009F270 A17C0208 */  j          .L8009F284
    /* 8FA74 8009F274 21200002 */   addu      $a0, $s0, $zero
  jlabel .L8009F278
    /* 8FA78 8009F278 7BB0010C */  jal        func_8006C1EC
    /* 8FA7C 8009F27C 21200002 */   addu      $a0, $s0, $zero
  .L8009F280:
    /* 8FA80 8009F280 21200002 */  addu       $a0, $s0, $zero
  .L8009F284:
    /* 8FA84 8009F284 F8002536 */  ori        $a1, $s1, (0x1F8000F8 & 0xFFFF)
    /* 8FA88 8009F288 218C020C */  jal        func_800A3084
    /* 8FA8C 8009F28C FC002636 */   ori       $a2, $s1, (0x1F8000FC & 0xFFFF)
    /* 8FA90 8009F290 F8002296 */  lhu        $v0, (0x1F8000F8 & 0xFFFF)($s1)
    /* 8FA94 8009F294 00000000 */  nop
    /* 8FA98 8009F298 00140200 */  sll        $v0, $v0, 16
    /* 8FA9C 8009F29C 03140200 */  sra        $v0, $v0, 16
    /* 8FAA0 8009F2A0 80CD4228 */  slti       $v0, $v0, -0x3280
    /* 8FAA4 8009F2A4 02004010 */  beqz       $v0, .L8009F2B0
    /* 8FAA8 8009F2A8 90CD0224 */   addiu     $v0, $zero, -0x3270
    /* 8FAAC 8009F2AC F80022A6 */  sh         $v0, (0x1F8000F8 & 0xFFFF)($s1)
  .L8009F2B0:
    /* 8FAB0 8009F2B0 F8002296 */  lhu        $v0, (0x1F8000F8 & 0xFFFF)($s1)
    /* 8FAB4 8009F2B4 00000000 */  nop
    /* 8FAB8 8009F2B8 00140200 */  sll        $v0, $v0, 16
    /* 8FABC 8009F2BC 03140200 */  sra        $v0, $v0, 16
    /* 8FAC0 8009F2C0 81324228 */  slti       $v0, $v0, 0x3281
    /* 8FAC4 8009F2C4 02004014 */  bnez       $v0, .L8009F2D0
    /* 8FAC8 8009F2C8 70320224 */   addiu     $v0, $zero, 0x3270
    /* 8FACC 8009F2CC F80022A6 */  sh         $v0, (0x1F8000F8 & 0xFFFF)($s1)
  .L8009F2D0:
    /* 8FAD0 8009F2D0 FC002296 */  lhu        $v0, (0x1F8000FC & 0xFFFF)($s1)
    /* 8FAD4 8009F2D4 00000000 */  nop
    /* 8FAD8 8009F2D8 00140200 */  sll        $v0, $v0, 16
    /* 8FADC 8009F2DC 03140200 */  sra        $v0, $v0, 16
    /* 8FAE0 8009F2E0 A0DF4228 */  slti       $v0, $v0, -0x2060
    /* 8FAE4 8009F2E4 02004010 */  beqz       $v0, .L8009F2F0
    /* 8FAE8 8009F2E8 B0DF0224 */   addiu     $v0, $zero, -0x2050
    /* 8FAEC 8009F2EC FC0022A6 */  sh         $v0, (0x1F8000FC & 0xFFFF)($s1)
  .L8009F2F0:
    /* 8FAF0 8009F2F0 FC002296 */  lhu        $v0, (0x1F8000FC & 0xFFFF)($s1)
    /* 8FAF4 8009F2F4 00000000 */  nop
    /* 8FAF8 8009F2F8 00140200 */  sll        $v0, $v0, 16
    /* 8FAFC 8009F2FC 03140200 */  sra        $v0, $v0, 16
    /* 8FB00 8009F300 61204228 */  slti       $v0, $v0, 0x2061
    /* 8FB04 8009F304 03004014 */  bnez       $v0, .L8009F314
    /* 8FB08 8009F308 21200002 */   addu      $a0, $s0, $zero
    /* 8FB0C 8009F30C 50200224 */  addiu      $v0, $zero, 0x2050
    /* 8FB10 8009F310 FC0022A6 */  sh         $v0, (0x1F8000FC & 0xFFFF)($s1)
  .L8009F314:
    /* 8FB14 8009F314 F8002596 */  lhu        $a1, (0x1F8000F8 & 0xFFFF)($s1)
    /* 8FB18 8009F318 FC002696 */  lhu        $a2, (0x1F8000FC & 0xFFFF)($s1)
    /* 8FB1C 8009F31C 002C0500 */  sll        $a1, $a1, 16
    /* 8FB20 8009F320 032C0500 */  sra        $a1, $a1, 16
    /* 8FB24 8009F324 00340600 */  sll        $a2, $a2, 16
    /* 8FB28 8009F328 F0A3010C */  jal        func_80068FC0
    /* 8FB2C 8009F32C 03340600 */   sra       $a2, $a2, 16
    /* 8FB30 8009F330 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8FB34 8009F334 1400B18F */  lw         $s1, 0x14($sp)
    /* 8FB38 8009F338 1000B08F */  lw         $s0, 0x10($sp)
    /* 8FB3C 8009F33C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8FB40 8009F340 0800E003 */  jr         $ra
    /* 8FB44 8009F344 00000000 */   nop
endlabel func_8009F1BC
