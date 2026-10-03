nonmatching func_8004FBC4, 0x90

glabel func_8004FBC4
    /* 403C4 8004FBC4 21288000 */  addu       $a1, $a0, $zero
    /* 403C8 8004FBC8 0E80043C */  lui        $a0, %hi(D_800E7658)
    /* 403CC 8004FBCC 5876848C */  lw         $a0, %lo(D_800E7658)($a0)
    /* 403D0 8004FBD0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 403D4 8004FBD4 0D008018 */  blez       $a0, .L8004FC0C
    /* 403D8 8004FBD8 1000BFAF */   sw        $ra, 0x10($sp)
    /* 403DC 8004FBDC B03E010C */  jal        func_8004FAC0
    /* 403E0 8004FBE0 00000000 */   nop
    /* 403E4 8004FBE4 0E80033C */  lui        $v1, %hi(D_800E7658)
    /* 403E8 8004FBE8 5876638C */  lw         $v1, %lo(D_800E7658)($v1)
    /* 403EC 8004FBEC 02000424 */  addiu      $a0, $zero, 0x2
    /* 403F0 8004FBF0 0F80013C */  lui        $at, %hi(D_800E81D0)
    /* 403F4 8004FBF4 D08124AC */  sw         $a0, %lo(D_800E81D0)($at)
    /* 403F8 8004FBF8 FCFF6324 */  addiu      $v1, $v1, -0x4
    /* 403FC 8004FBFC 0E80013C */  lui        $at, %hi(D_800E7658)
    /* 40400 8004FC00 587623AC */  sw         $v1, %lo(D_800E7658)($at)
    /* 40404 8004FC04 113F0108 */  j          .L8004FC44
    /* 40408 8004FC08 21100000 */   addu      $v0, $zero, $zero
  .L8004FC0C:
    /* 4040C 8004FC0C B03E010C */  jal        func_8004FAC0
    /* 40410 8004FC10 21200000 */   addu      $a0, $zero, $zero
    /* 40414 8004FC14 0F80023C */  lui        $v0, %hi(D_800E81D0)
    /* 40418 8004FC18 D081428C */  lw         $v0, %lo(D_800E81D0)($v0)
    /* 4041C 8004FC1C 00000000 */  nop
    /* 40420 8004FC20 0500401C */  bgtz       $v0, .L8004FC38
    /* 40424 8004FC24 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 40428 8004FC28 0E80013C */  lui        $at, %hi(D_800E7658)
    /* 4042C 8004FC2C 587620AC */  sw         $zero, %lo(D_800E7658)($at)
    /* 40430 8004FC30 113F0108 */  j          .L8004FC44
    /* 40434 8004FC34 01000224 */   addiu     $v0, $zero, 0x1
  .L8004FC38:
    /* 40438 8004FC38 0F80013C */  lui        $at, %hi(D_800E81D0)
    /* 4043C 8004FC3C D08122AC */  sw         $v0, %lo(D_800E81D0)($at)
    /* 40440 8004FC40 21100000 */  addu       $v0, $zero, $zero
  .L8004FC44:
    /* 40444 8004FC44 1000BF8F */  lw         $ra, 0x10($sp)
    /* 40448 8004FC48 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4044C 8004FC4C 0800E003 */  jr         $ra
    /* 40450 8004FC50 00000000 */   nop
endlabel func_8004FBC4
