nonmatching func_800C2B18, 0x2BC

glabel func_800C2B18
    /* B3318 800C2B18 21488000 */  addu       $t1, $a0, $zero
    /* B331C 800C2B1C 0D80023C */  lui        $v0, %hi(D_800D5578)
    /* B3320 800C2B20 7855428C */  lw         $v0, %lo(D_800D5578)($v0)
    /* B3324 800C2B24 00000000 */  nop
    /* B3328 800C2B28 01004230 */  andi       $v0, $v0, 0x1
    /* B332C 800C2B2C 0F80043C */  lui        $a0, %hi(D_800F0D20)
    /* B3330 800C2B30 200D8424 */  addiu      $a0, $a0, %lo(D_800F0D20)
    /* B3334 800C2B34 03004014 */  bnez       $v0, .L800C2B44
    /* B3338 800C2B38 2140A000 */   addu      $t0, $a1, $zero
    /* B333C 800C2B3C 0D80043C */  lui        $a0, %hi(D_800D558C)
    /* B3340 800C2B40 8C55848C */  lw         $a0, %lo(D_800D558C)($a0)
  .L800C2B44:
    /* B3344 800C2B44 40100700 */  sll        $v0, $a3, 1
    /* B3348 800C2B48 21104400 */  addu       $v0, $v0, $a0
    /* B334C 800C2B4C 00004394 */  lhu        $v1, 0x0($v0)
    /* B3350 800C2B50 40100600 */  sll        $v0, $a2, 1
    /* B3354 800C2B54 21104400 */  addu       $v0, $v0, $a0
    /* B3358 800C2B58 00004294 */  lhu        $v0, 0x0($v0)
    /* B335C 800C2B5C FF006330 */  andi       $v1, $v1, 0xFF
    /* B3360 800C2B60 001C0300 */  sll        $v1, $v1, 16
    /* B3364 800C2B64 01000B24 */  addiu      $t3, $zero, 0x1
    /* B3368 800C2B68 0C002B11 */  beq        $t1, $t3, .L800C2B9C
    /* B336C 800C2B6C 25504300 */   or        $t2, $v0, $v1
    /* B3370 800C2B70 02002229 */  slti       $v0, $t1, 0x2
    /* B3374 800C2B74 05004010 */  beqz       $v0, .L800C2B8C
    /* B3378 800C2B78 08000224 */   addiu     $v0, $zero, 0x8
    /* B337C 800C2B7C 36002011 */  beqz       $t1, .L800C2C58
    /* B3380 800C2B80 FF00023C */   lui       $v0, (0xFFFFFF >> 16)
    /* B3384 800C2B84 730B0308 */  j          .L800C2DCC
    /* B3388 800C2B88 FFFF4234 */   ori       $v0, $v0, (0xFFFFFF & 0xFFFF)
  .L800C2B8C:
    /* B338C 800C2B8C 67002211 */  beq        $t1, $v0, .L800C2D2C
    /* B3390 800C2B90 FF00023C */   lui       $v0, (0xFFFFFF >> 16)
    /* B3394 800C2B94 730B0308 */  j          .L800C2DCC
    /* B3398 800C2B98 FFFF4234 */   ori       $v0, $v0, (0xFFFFFF & 0xFFFF)
  .L800C2B9C:
    /* B339C 800C2B9C 0D80023C */  lui        $v0, %hi(D_800D5578)
    /* B33A0 800C2BA0 7855428C */  lw         $v0, %lo(D_800D5578)($v0)
    /* B33A4 800C2BA4 00000000 */  nop
    /* B33A8 800C2BA8 01004230 */  andi       $v0, $v0, 0x1
    /* B33AC 800C2BAC 18004010 */  beqz       $v0, .L800C2C10
    /* B33B0 800C2BB0 40180600 */   sll       $v1, $a2, 1
    /* B33B4 800C2BB4 0F80053C */  lui        $a1, %hi(D_800F0D20)
    /* B33B8 800C2BB8 200DA524 */  addiu      $a1, $a1, %lo(D_800F0D20)
    /* B33BC 800C2BBC 21186500 */  addu       $v1, $v1, $a1
    /* B33C0 800C2BC0 40200700 */  sll        $a0, $a3, 1
    /* B33C4 800C2BC4 00006294 */  lhu        $v0, 0x0($v1)
    /* B33C8 800C2BC8 21208500 */  addu       $a0, $a0, $a1
    /* B33CC 800C2BCC 25104800 */  or         $v0, $v0, $t0
    /* B33D0 800C2BD0 000062A4 */  sh         $v0, 0x0($v1)
    /* B33D4 800C2BD4 02140800 */  srl        $v0, $t0, 16
    /* B33D8 800C2BD8 00008394 */  lhu        $v1, 0x0($a0)
    /* B33DC 800C2BDC FF004230 */  andi       $v0, $v0, 0xFF
    /* B33E0 800C2BE0 25186200 */  or         $v1, $v1, $v0
    /* B33E4 800C2BE4 3AFFC224 */  addiu      $v0, $a2, -0xC6
    /* B33E8 800C2BE8 43100200 */  sra        $v0, $v0, 1
    /* B33EC 800C2BEC 000083A4 */  sh         $v1, 0x0($a0)
    /* B33F0 800C2BF0 0D80033C */  lui        $v1, %hi(D_800D5144)
    /* B33F4 800C2BF4 4451638C */  lw         $v1, %lo(D_800D5144)($v1)
    /* B33F8 800C2BF8 04104B00 */  sllv       $v0, $t3, $v0
    /* B33FC 800C2BFC 25186200 */  or         $v1, $v1, $v0
    /* B3400 800C2C00 0D80013C */  lui        $at, %hi(D_800D5144)
    /* B3404 800C2C04 445123AC */  sw         $v1, %lo(D_800D5144)($at)
    /* B3408 800C2C08 120B0308 */  j          .L800C2C48
    /* B340C 800C2C0C FF00023C */   lui       $v0, (0xFFFFFF >> 16)
  .L800C2C10:
    /* B3410 800C2C10 0D80053C */  lui        $a1, %hi(D_800D558C)
    /* B3414 800C2C14 8C55A58C */  lw         $a1, %lo(D_800D558C)($a1)
    /* B3418 800C2C18 40200700 */  sll        $a0, $a3, 1
    /* B341C 800C2C1C 21186500 */  addu       $v1, $v1, $a1
    /* B3420 800C2C20 00006294 */  lhu        $v0, 0x0($v1)
    /* B3424 800C2C24 21208500 */  addu       $a0, $a0, $a1
    /* B3428 800C2C28 25104800 */  or         $v0, $v0, $t0
    /* B342C 800C2C2C 000062A4 */  sh         $v0, 0x0($v1)
    /* B3430 800C2C30 02140800 */  srl        $v0, $t0, 16
    /* B3434 800C2C34 00008394 */  lhu        $v1, 0x0($a0)
    /* B3438 800C2C38 FF004230 */  andi       $v0, $v0, 0xFF
    /* B343C 800C2C3C 25186200 */  or         $v1, $v1, $v0
    /* B3440 800C2C40 000083A4 */  sh         $v1, 0x0($a0)
    /* B3444 800C2C44 FF00023C */  lui        $v0, (0xFFFFFF >> 16)
  .L800C2C48:
    /* B3448 800C2C48 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* B344C 800C2C4C 24100201 */  and        $v0, $t0, $v0
    /* B3450 800C2C50 710B0308 */  j          .L800C2DC4
    /* B3454 800C2C54 25504201 */   or        $t2, $t2, $v0
  .L800C2C58:
    /* B3458 800C2C58 0D80023C */  lui        $v0, %hi(D_800D5578)
    /* B345C 800C2C5C 7855428C */  lw         $v0, %lo(D_800D5578)($v0)
    /* B3460 800C2C60 00000000 */  nop
    /* B3464 800C2C64 01004230 */  andi       $v0, $v0, 0x1
    /* B3468 800C2C68 1A004010 */  beqz       $v0, .L800C2CD4
    /* B346C 800C2C6C 40180600 */   sll       $v1, $a2, 1
    /* B3470 800C2C70 0F80053C */  lui        $a1, %hi(D_800F0D20)
    /* B3474 800C2C74 200DA524 */  addiu      $a1, $a1, %lo(D_800F0D20)
    /* B3478 800C2C78 21186500 */  addu       $v1, $v1, $a1
    /* B347C 800C2C7C 00006294 */  lhu        $v0, 0x0($v1)
    /* B3480 800C2C80 27200800 */  nor        $a0, $zero, $t0
    /* B3484 800C2C84 24104400 */  and        $v0, $v0, $a0
    /* B3488 800C2C88 40200700 */  sll        $a0, $a3, 1
    /* B348C 800C2C8C 21208500 */  addu       $a0, $a0, $a1
    /* B3490 800C2C90 000062A4 */  sh         $v0, 0x0($v1)
    /* B3494 800C2C94 02140800 */  srl        $v0, $t0, 16
    /* B3498 800C2C98 FF004230 */  andi       $v0, $v0, 0xFF
    /* B349C 800C2C9C 00008394 */  lhu        $v1, 0x0($a0)
    /* B34A0 800C2CA0 27100200 */  nor        $v0, $zero, $v0
    /* B34A4 800C2CA4 24186200 */  and        $v1, $v1, $v0
    /* B34A8 800C2CA8 3AFFC224 */  addiu      $v0, $a2, -0xC6
    /* B34AC 800C2CAC 43100200 */  sra        $v0, $v0, 1
    /* B34B0 800C2CB0 000083A4 */  sh         $v1, 0x0($a0)
    /* B34B4 800C2CB4 0D80033C */  lui        $v1, %hi(D_800D5144)
    /* B34B8 800C2CB8 4451638C */  lw         $v1, %lo(D_800D5144)($v1)
    /* B34BC 800C2CBC 04104B00 */  sllv       $v0, $t3, $v0
    /* B34C0 800C2CC0 25186200 */  or         $v1, $v1, $v0
    /* B34C4 800C2CC4 0D80013C */  lui        $at, %hi(D_800D5144)
    /* B34C8 800C2CC8 445123AC */  sw         $v1, %lo(D_800D5144)($at)
    /* B34CC 800C2CCC 460B0308 */  j          .L800C2D18
    /* B34D0 800C2CD0 FF00023C */   lui       $v0, (0xFFFFFF >> 16)
  .L800C2CD4:
    /* B34D4 800C2CD4 0D80053C */  lui        $a1, %hi(D_800D558C)
    /* B34D8 800C2CD8 8C55A58C */  lw         $a1, %lo(D_800D558C)($a1)
    /* B34DC 800C2CDC 00000000 */  nop
    /* B34E0 800C2CE0 21186500 */  addu       $v1, $v1, $a1
    /* B34E4 800C2CE4 00006294 */  lhu        $v0, 0x0($v1)
    /* B34E8 800C2CE8 27200800 */  nor        $a0, $zero, $t0
    /* B34EC 800C2CEC 24104400 */  and        $v0, $v0, $a0
    /* B34F0 800C2CF0 40200700 */  sll        $a0, $a3, 1
    /* B34F4 800C2CF4 21208500 */  addu       $a0, $a0, $a1
    /* B34F8 800C2CF8 000062A4 */  sh         $v0, 0x0($v1)
    /* B34FC 800C2CFC 02140800 */  srl        $v0, $t0, 16
    /* B3500 800C2D00 FF004230 */  andi       $v0, $v0, 0xFF
    /* B3504 800C2D04 00008394 */  lhu        $v1, 0x0($a0)
    /* B3508 800C2D08 27100200 */  nor        $v0, $zero, $v0
    /* B350C 800C2D0C 24186200 */  and        $v1, $v1, $v0
    /* B3510 800C2D10 000083A4 */  sh         $v1, 0x0($a0)
    /* B3514 800C2D14 FF00023C */  lui        $v0, (0xFFFFFF >> 16)
  .L800C2D18:
    /* B3518 800C2D18 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* B351C 800C2D1C 24100201 */  and        $v0, $t0, $v0
    /* B3520 800C2D20 27100200 */  nor        $v0, $zero, $v0
    /* B3524 800C2D24 710B0308 */  j          .L800C2DC4
    /* B3528 800C2D28 24504201 */   and       $t2, $t2, $v0
  .L800C2D2C:
    /* B352C 800C2D2C 0D80023C */  lui        $v0, %hi(D_800D5578)
    /* B3530 800C2D30 7855428C */  lw         $v0, %lo(D_800D5578)($v0)
    /* B3534 800C2D34 00000000 */  nop
    /* B3538 800C2D38 01004230 */  andi       $v0, $v0, 0x1
    /* B353C 800C2D3C 14004010 */  beqz       $v0, .L800C2D90
    /* B3540 800C2D40 40180700 */   sll       $v1, $a3, 1
    /* B3544 800C2D44 0F80043C */  lui        $a0, %hi(D_800F0D20)
    /* B3548 800C2D48 200D8424 */  addiu      $a0, $a0, %lo(D_800F0D20)
    /* B354C 800C2D4C 40100600 */  sll        $v0, $a2, 1
    /* B3550 800C2D50 21104400 */  addu       $v0, $v0, $a0
    /* B3554 800C2D54 21186400 */  addu       $v1, $v1, $a0
    /* B3558 800C2D58 000048A4 */  sh         $t0, 0x0($v0)
    /* B355C 800C2D5C 02140800 */  srl        $v0, $t0, 16
    /* B3560 800C2D60 FF004230 */  andi       $v0, $v0, 0xFF
    /* B3564 800C2D64 000062A4 */  sh         $v0, 0x0($v1)
    /* B3568 800C2D68 3AFFC224 */  addiu      $v0, $a2, -0xC6
    /* B356C 800C2D6C 43100200 */  sra        $v0, $v0, 1
    /* B3570 800C2D70 0D80033C */  lui        $v1, %hi(D_800D5144)
    /* B3574 800C2D74 4451638C */  lw         $v1, %lo(D_800D5144)($v1)
    /* B3578 800C2D78 04104B00 */  sllv       $v0, $t3, $v0
    /* B357C 800C2D7C 25186200 */  or         $v1, $v1, $v0
    /* B3580 800C2D80 0D80013C */  lui        $at, %hi(D_800D5144)
    /* B3584 800C2D84 445123AC */  sw         $v1, %lo(D_800D5144)($at)
    /* B3588 800C2D88 6F0B0308 */  j          .L800C2DBC
    /* B358C 800C2D8C FF00023C */   lui       $v0, (0xFFFFFF >> 16)
  .L800C2D90:
    /* B3590 800C2D90 40100600 */  sll        $v0, $a2, 1
    /* B3594 800C2D94 0D80043C */  lui        $a0, %hi(D_800D558C)
    /* B3598 800C2D98 8C55848C */  lw         $a0, %lo(D_800D558C)($a0)
    /* B359C 800C2D9C 00000000 */  nop
    /* B35A0 800C2DA0 21104400 */  addu       $v0, $v0, $a0
    /* B35A4 800C2DA4 21186400 */  addu       $v1, $v1, $a0
    /* B35A8 800C2DA8 000048A4 */  sh         $t0, 0x0($v0)
    /* B35AC 800C2DAC 02140800 */  srl        $v0, $t0, 16
    /* B35B0 800C2DB0 FF004230 */  andi       $v0, $v0, 0xFF
    /* B35B4 800C2DB4 000062A4 */  sh         $v0, 0x0($v1)
    /* B35B8 800C2DB8 FF00023C */  lui        $v0, (0xFFFFFF >> 16)
  .L800C2DBC:
    /* B35BC 800C2DBC FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* B35C0 800C2DC0 24500201 */  and        $t2, $t0, $v0
  .L800C2DC4:
    /* B35C4 800C2DC4 FF00023C */  lui        $v0, (0xFFFFFF >> 16)
    /* B35C8 800C2DC8 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
  .L800C2DCC:
    /* B35CC 800C2DCC 0800E003 */  jr         $ra
    /* B35D0 800C2DD0 24104201 */   and       $v0, $t2, $v0
endlabel func_800C2B18
    /* B35D4 800C2DD4 00000000 */  nop
