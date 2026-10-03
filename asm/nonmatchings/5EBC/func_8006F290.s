nonmatching func_8006F290, 0x80

glabel func_8006F290
    /* 5FA90 8006F290 0F80023C */  lui        $v0, %hi(D_800EF864)
    /* 5FA94 8006F294 64F84284 */  lh         $v0, %lo(D_800EF864)($v0)
    /* 5FA98 8006F298 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5FA9C 8006F29C 21184000 */  addu       $v1, $v0, $zero
    /* 5FAA0 8006F2A0 80004228 */  slti       $v0, $v0, 0x80
    /* 5FAA4 8006F2A4 10004010 */  beqz       $v0, .L8006F2E8
    /* 5FAA8 8006F2A8 1800BFAF */   sw        $ra, 0x18($sp)
    /* 5FAAC 8006F2AC FF008230 */  andi       $v0, $a0, 0xFF
    /* 5FAB0 8006F2B0 21106200 */  addu       $v0, $v1, $v0
    /* 5FAB4 8006F2B4 0F80013C */  lui        $at, %hi(D_800EF864)
    /* 5FAB8 8006F2B8 64F822A4 */  sh         $v0, %lo(D_800EF864)($at)
    /* 5FABC 8006F2BC 00140200 */  sll        $v0, $v0, 16
    /* 5FAC0 8006F2C0 03140200 */  sra        $v0, $v0, 16
    /* 5FAC4 8006F2C4 81004228 */  slti       $v0, $v0, 0x81
    /* 5FAC8 8006F2C8 03004014 */  bnez       $v0, .L8006F2D8
    /* 5FACC 8006F2CC 80000224 */   addiu     $v0, $zero, 0x80
    /* 5FAD0 8006F2D0 0F80013C */  lui        $at, %hi(D_800EF864)
    /* 5FAD4 8006F2D4 64F822A4 */  sh         $v0, %lo(D_800EF864)($at)
  .L8006F2D8:
    /* 5FAD8 8006F2D8 C4BC010C */  jal        func_8006F310
    /* 5FADC 8006F2DC 00000000 */   nop
    /* 5FAE0 8006F2E0 C0BC0108 */  j          .L8006F300
    /* 5FAE4 8006F2E4 21100000 */   addu      $v0, $zero, $zero
  .L8006F2E8:
    /* 5FAE8 8006F2E8 80000224 */  addiu      $v0, $zero, 0x80
    /* 5FAEC 8006F2EC 0F80013C */  lui        $at, %hi(D_800EF864)
    /* 5FAF0 8006F2F0 64F822A4 */  sh         $v0, %lo(D_800EF864)($at)
    /* 5FAF4 8006F2F4 C4BC010C */  jal        func_8006F310
    /* 5FAF8 8006F2F8 00000000 */   nop
    /* 5FAFC 8006F2FC 01000224 */  addiu      $v0, $zero, 0x1
  .L8006F300:
    /* 5FB00 8006F300 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5FB04 8006F304 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 5FB08 8006F308 0800E003 */  jr         $ra
    /* 5FB0C 8006F30C 00000000 */   nop
endlabel func_8006F290
