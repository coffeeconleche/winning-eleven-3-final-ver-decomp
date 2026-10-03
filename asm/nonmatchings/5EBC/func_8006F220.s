nonmatching func_8006F220, 0x70

glabel func_8006F220
    /* 5FA20 8006F220 0F80023C */  lui        $v0, %hi(D_800EF864)
    /* 5FA24 8006F224 64F84284 */  lh         $v0, %lo(D_800EF864)($v0)
    /* 5FA28 8006F228 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5FA2C 8006F22C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5FA30 8006F230 0E004018 */  blez       $v0, .L8006F26C
    /* 5FA34 8006F234 21184000 */   addu      $v1, $v0, $zero
    /* 5FA38 8006F238 FF008230 */  andi       $v0, $a0, 0xFF
    /* 5FA3C 8006F23C 23106200 */  subu       $v0, $v1, $v0
    /* 5FA40 8006F240 0F80013C */  lui        $at, %hi(D_800EF864)
    /* 5FA44 8006F244 64F822A4 */  sh         $v0, %lo(D_800EF864)($at)
    /* 5FA48 8006F248 00140200 */  sll        $v0, $v0, 16
    /* 5FA4C 8006F24C 03004104 */  bgez       $v0, .L8006F25C
    /* 5FA50 8006F250 00000000 */   nop
    /* 5FA54 8006F254 0F80013C */  lui        $at, %hi(D_800EF864)
    /* 5FA58 8006F258 64F820A4 */  sh         $zero, %lo(D_800EF864)($at)
  .L8006F25C:
    /* 5FA5C 8006F25C C4BC010C */  jal        func_8006F310
    /* 5FA60 8006F260 00000000 */   nop
    /* 5FA64 8006F264 A0BC0108 */  j          .L8006F280
    /* 5FA68 8006F268 21100000 */   addu      $v0, $zero, $zero
  .L8006F26C:
    /* 5FA6C 8006F26C 0F80013C */  lui        $at, %hi(D_800EF864)
    /* 5FA70 8006F270 64F820A4 */  sh         $zero, %lo(D_800EF864)($at)
    /* 5FA74 8006F274 C4BC010C */  jal        func_8006F310
    /* 5FA78 8006F278 00000000 */   nop
    /* 5FA7C 8006F27C 01000224 */  addiu      $v0, $zero, 0x1
  .L8006F280:
    /* 5FA80 8006F280 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5FA84 8006F284 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 5FA88 8006F288 0800E003 */  jr         $ra
    /* 5FA8C 8006F28C 00000000 */   nop
endlabel func_8006F220
