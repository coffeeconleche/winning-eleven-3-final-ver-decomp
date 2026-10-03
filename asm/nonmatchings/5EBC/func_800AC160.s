nonmatching func_800AC160, 0x11C

glabel func_800AC160
    /* 9C960 800AC160 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 9C964 800AC164 00FD8424 */  addiu      $a0, $a0, -0x300
    /* 9C968 800AC168 0F000334 */  ori        $v1, $zero, 0xF
    /* 9C96C 800AC16C 1180023C */  lui        $v0, %hi(D_8010CD7E)
    /* 9C970 800AC170 7ECD4224 */  addiu      $v0, $v0, %lo(D_8010CD7E)
    /* 9C974 800AC174 4000BFAF */  sw         $ra, 0x40($sp)
    /* 9C978 800AC178 620084A7 */  sh         $a0, %gp_rel(D_800E6AEE)($gp)
  .L800AC17C:
    /* 9C97C 800AC17C 000040A4 */  sh         $zero, 0x0($v0)
    /* 9C980 800AC180 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 9C984 800AC184 FDFF6104 */  bgez       $v1, .L800AC17C
    /* 9C988 800AC188 FEFF4224 */   addiu     $v0, $v0, -0x2
    /* 9C98C 800AC18C 62008387 */  lh         $v1, %gp_rel(D_800E6AEE)($gp)
    /* 9C990 800AC190 00000000 */  nop
    /* 9C994 800AC194 40100300 */  sll        $v0, $v1, 1
    /* 9C998 800AC198 21104300 */  addu       $v0, $v0, $v1
    /* 9C99C 800AC19C 80100200 */  sll        $v0, $v0, 2
    /* 9C9A0 800AC1A0 0D80013C */  lui        $at, %hi(D_800CE9D2)
    /* 9C9A4 800AC1A4 D2E92124 */  addiu      $at, $at, %lo(D_800CE9D2)
    /* 9C9A8 800AC1A8 21082200 */  addu       $at, $at, $v0
    /* 9C9AC 800AC1AC 00002390 */  lbu        $v1, 0x0($at)
    /* 9C9B0 800AC1B0 0D80013C */  lui        $at, %hi(D_800CE9C8)
    /* 9C9B4 800AC1B4 C8E92124 */  addiu      $at, $at, %lo(D_800CE9C8)
    /* 9C9B8 800AC1B8 21082200 */  addu       $at, $at, $v0
    /* 9C9BC 800AC1BC 0000248C */  lw         $a0, 0x0($at)
    /* 9C9C0 800AC1C0 4A0083A7 */  sh         $v1, %gp_rel(D_800E6AD6)($gp)
    /* 9C9C4 800AC1C4 0D80013C */  lui        $at, %hi(D_800CE9D2 + 0x1)
    /* 9C9C8 800AC1C8 D3E92124 */  addiu      $at, $at, %lo(D_800CE9D2 + 0x1)
    /* 9C9CC 800AC1CC 21082200 */  addu       $at, $at, $v0
    /* 9C9D0 800AC1D0 00002390 */  lbu        $v1, 0x0($at)
    /* 9C9D4 800AC1D4 00000000 */  nop
    /* 9C9D8 800AC1D8 500083A7 */  sh         $v1, %gp_rel(D_800E6ADC)($gp)
    /* 9C9DC 800AC1DC 0D80013C */  lui        $at, %hi(D_800CE9CF)
    /* 9C9E0 800AC1E0 CFE92124 */  addiu      $at, $at, %lo(D_800CE9CF)
    /* 9C9E4 800AC1E4 21082200 */  addu       $at, $at, $v0
    /* 9C9E8 800AC1E8 00002390 */  lbu        $v1, 0x0($at)
    /* 9C9EC 800AC1EC 00000000 */  nop
    /* 9C9F0 800AC1F0 5C0083A7 */  sh         $v1, %gp_rel(D_800E6AE8)($gp)
    /* 9C9F4 800AC1F4 0D80013C */  lui        $at, %hi(D_800CE9D0)
    /* 9C9F8 800AC1F8 D0E92124 */  addiu      $at, $at, %lo(D_800CE9D0)
    /* 9C9FC 800AC1FC 21082200 */  addu       $at, $at, $v0
    /* 9CA00 800AC200 00002390 */  lbu        $v1, 0x0($at)
    /* 9CA04 800AC204 740080A3 */  sb         $zero, %gp_rel(D_800E6B00)($gp)
    /* 9CA08 800AC208 480183A7 */  sh         $v1, %gp_rel(D_800E6BD4)($gp)
    /* 9CA0C 800AC20C 0D80013C */  lui        $at, %hi(D_800CE9D0)
    /* 9CA10 800AC210 D0E92124 */  addiu      $at, $at, %lo(D_800CE9D0)
    /* 9CA14 800AC214 21082200 */  addu       $at, $at, $v0
    /* 9CA18 800AC218 00002390 */  lbu        $v1, 0x0($at)
    /* 9CA1C 800AC21C 0E80053C */  lui        $a1, %hi(D_800E6AE0)
    /* 9CA20 800AC220 E06AA524 */  addiu      $a1, $a1, %lo(D_800E6AE0)
    /* 9CA24 800AC224 25DD020C */  jal        func_800B7494
    /* 9CA28 800AC228 21206400 */   addu      $a0, $v1, $a0
    /* 9CA2C 800AC22C 62008387 */  lh         $v1, %gp_rel(D_800E6AEE)($gp)
    /* 9CA30 800AC230 01000234 */  ori        $v0, $zero, 0x1
    /* 9CA34 800AC234 200080AF */  sw         $zero, %gp_rel(D_800E6AAC)($gp)
    /* 9CA38 800AC238 240082AF */  sw         $v0, %gp_rel(D_800E6AB0)($gp)
    /* 9CA3C 800AC23C 740080A3 */  sb         $zero, %gp_rel(D_800E6B00)($gp)
    /* 9CA40 800AC240 40100300 */  sll        $v0, $v1, 1
    /* 9CA44 800AC244 21104300 */  addu       $v0, $v0, $v1
    /* 9CA48 800AC248 80100200 */  sll        $v0, $v0, 2
    /* 9CA4C 800AC24C 0D80013C */  lui        $at, %hi(D_800CE9CC)
    /* 9CA50 800AC250 CCE92124 */  addiu      $at, $at, %lo(D_800CE9CC)
    /* 9CA54 800AC254 21082200 */  addu       $at, $at, $v0
    /* 9CA58 800AC258 00002294 */  lhu        $v0, 0x0($at)
    /* 9CA5C 800AC25C 1E000334 */  ori        $v1, $zero, 0x1E
    /* 9CA60 800AC260 C00083A7 */  sh         $v1, %gp_rel(D_800E6B4C)($gp)
    /* 9CA64 800AC264 40110200 */  sll        $v0, $v0, 5
    /* 9CA68 800AC268 280082AF */  sw         $v0, %gp_rel(D_800E6AB4)($gp)
    /* 9CA6C 800AC26C 4000BF8F */  lw         $ra, 0x40($sp)
    /* 9CA70 800AC270 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 9CA74 800AC274 0800E003 */  jr         $ra
    /* 9CA78 800AC278 00000000 */   nop
endlabel func_800AC160
