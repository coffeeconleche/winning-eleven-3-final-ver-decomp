nonmatching func_801BF35C, 0x11C

glabel func_801BF35C
    /* 363E4 801BF35C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 363E8 801BF360 03000424 */  addiu      $a0, $zero, 0x3
    /* 363EC 801BF364 2400BFAF */  sw         $ra, 0x24($sp)
    /* 363F0 801BF368 2000B4AF */  sw         $s4, 0x20($sp)
    /* 363F4 801BF36C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 363F8 801BF370 1800B2AF */  sw         $s2, 0x18($sp)
    /* 363FC 801BF374 1400B1AF */  sw         $s1, 0x14($sp)
    /* 36400 801BF378 97F7060C */  jal        func_801BDE5C
    /* 36404 801BF37C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 36408 801BF380 01000224 */  addiu      $v0, $zero, 0x1
    /* 3640C 801BF384 1080013C */  lui        $at, %hi(D_80105804)
    /* 36410 801BF388 045822A0 */  sb         $v0, %lo(D_80105804)($at)
    /* 36414 801BF38C 1080013C */  lui        $at, %hi(D_8010587C)
    /* 36418 801BF390 7C5822A0 */  sb         $v0, %lo(D_8010587C)($at)
    /* 3641C 801BF394 1080013C */  lui        $at, %hi(D_801058A4)
    /* 36420 801BF398 A45822A0 */  sb         $v0, %lo(D_801058A4)($at)
    /* 36424 801BF39C 1080013C */  lui        $at, %hi(D_801058CC)
    /* 36428 801BF3A0 CC5822A0 */  sb         $v0, %lo(D_801058CC)($at)
    /* 3642C 801BF3A4 02000224 */  addiu      $v0, $zero, 0x2
    /* 36430 801BF3A8 1080013C */  lui        $at, %hi(D_80105D00)
    /* 36434 801BF3AC 005D22AC */  sw         $v0, %lo(D_80105D00)($at)
    /* 36438 801BF3B0 EFFF0224 */  addiu      $v0, $zero, -0x11
    /* 3643C 801BF3B4 1080013C */  lui        $at, %hi(D_80105798)
    /* 36440 801BF3B8 985722A4 */  sh         $v0, %lo(D_80105798)($at)
    /* 36444 801BF3BC 1080013C */  lui        $at, %hi(D_801057C0)
    /* 36448 801BF3C0 C05722A4 */  sh         $v0, %lo(D_801057C0)($at)
    /* 3644C 801BF3C4 1080013C */  lui        $at, %hi(D_801057E8)
    /* 36450 801BF3C8 E85722A4 */  sh         $v0, %lo(D_801057E8)($at)
    /* 36454 801BF3CC 25000224 */  addiu      $v0, $zero, 0x25
    /* 36458 801BF3D0 801F013C */  lui        $at, (0x1F8002A2 >> 16)
    /* 3645C 801BF3D4 A20222A0 */  sb         $v0, (0x1F8002A2 & 0xFFFF)($at)
    /* 36460 801BF3D8 C9FE060C */  jal        func_801BFB24
    /* 36464 801BF3DC 00000000 */   nop
    /* 36468 801BF3E0 1180023C */  lui        $v0, %hi(D_80108667)
    /* 3646C 801BF3E4 67864290 */  lbu        $v0, %lo(D_80108667)($v0)
    /* 36470 801BF3E8 00000000 */  nop
    /* 36474 801BF3EC 82110200 */  srl        $v0, $v0, 6
    /* 36478 801BF3F0 01004230 */  andi       $v0, $v0, 0x1
    /* 3647C 801BF3F4 17004010 */  beqz       $v0, .L801BF454
    /* 36480 801BF3F8 21980000 */   addu      $s3, $zero, $zero
    /* 36484 801BF3FC 1E80143C */  lui        $s4, %hi(D_801D8C70)
    /* 36488 801BF400 708C9426 */  addiu      $s4, $s4, %lo(D_801D8C70)
  .L801BF404:
    /* 3648C 801BF404 21880000 */  addu       $s1, $zero, $zero
    /* 36490 801BF408 21908002 */  addu       $s2, $s4, $zero
  .L801BF40C:
    /* 36494 801BF40C 21206002 */  addu       $a0, $s3, $zero
    /* 36498 801BF410 DEA9060C */  jal        func_801AA778
    /* 3649C 801BF414 21282002 */   addu      $a1, $s1, $zero
    /* 364A0 801BF418 10006426 */  addiu      $a0, $s3, 0x10
    /* 364A4 801BF41C 21282002 */  addu       $a1, $s1, $zero
    /* 364A8 801BF420 DEA9060C */  jal        func_801AA778
    /* 364AC 801BF424 21804000 */   addu      $s0, $v0, $zero
    /* 364B0 801BF428 00811000 */  sll        $s0, $s0, 4
    /* 364B4 801BF42C 25800202 */  or         $s0, $s0, $v0
    /* 364B8 801BF430 000050A2 */  sb         $s0, 0x0($s2)
    /* 364BC 801BF434 01003126 */  addiu      $s1, $s1, 0x1
    /* 364C0 801BF438 1000222A */  slti       $v0, $s1, 0x10
    /* 364C4 801BF43C F3FF4014 */  bnez       $v0, .L801BF40C
    /* 364C8 801BF440 01005226 */   addiu     $s2, $s2, 0x1
    /* 364CC 801BF444 01007326 */  addiu      $s3, $s3, 0x1
    /* 364D0 801BF448 1000622A */  slti       $v0, $s3, 0x10
    /* 364D4 801BF44C EDFF4014 */  bnez       $v0, .L801BF404
    /* 364D8 801BF450 10009426 */   addiu     $s4, $s4, 0x10
  .L801BF454:
    /* 364DC 801BF454 2400BF8F */  lw         $ra, 0x24($sp)
    /* 364E0 801BF458 2000B48F */  lw         $s4, 0x20($sp)
    /* 364E4 801BF45C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 364E8 801BF460 1800B28F */  lw         $s2, 0x18($sp)
    /* 364EC 801BF464 1400B18F */  lw         $s1, 0x14($sp)
    /* 364F0 801BF468 1000B08F */  lw         $s0, 0x10($sp)
    /* 364F4 801BF46C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 364F8 801BF470 0800E003 */  jr         $ra
    /* 364FC 801BF474 00000000 */   nop
endlabel func_801BF35C
