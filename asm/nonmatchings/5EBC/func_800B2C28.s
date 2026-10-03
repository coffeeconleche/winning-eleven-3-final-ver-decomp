nonmatching func_800B2C28, 0x27C

glabel func_800B2C28
    /* A3428 800B2C28 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* A342C 800B2C2C 6000B6AF */  sw         $s6, 0x60($sp)
    /* A3430 800B2C30 21B0A000 */  addu       $s6, $a1, $zero
    /* A3434 800B2C34 6800BEAF */  sw         $fp, 0x68($sp)
    /* A3438 800B2C38 21F0E000 */  addu       $fp, $a3, $zero
    /* A343C 800B2C3C 802C083C */  lui        $t0, (0x2C808080 >> 16)
    /* A3440 800B2C40 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* A3444 800B2C44 8C00B18F */  lw         $s1, 0x8C($sp)
    /* A3448 800B2C48 80800835 */  ori        $t0, $t0, (0x2C808080 & 0xFFFF)
    /* A344C 800B2C4C 6C00BFAF */  sw         $ra, 0x6C($sp)
    /* A3450 800B2C50 6400B7AF */  sw         $s7, 0x64($sp)
    /* A3454 800B2C54 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* A3458 800B2C58 5800B4AF */  sw         $s4, 0x58($sp)
    /* A345C 800B2C5C 5400B3AF */  sw         $s3, 0x54($sp)
    /* A3460 800B2C60 5000B2AF */  sw         $s2, 0x50($sp)
    /* A3464 800B2C64 4800B0AF */  sw         $s0, 0x48($sp)
    /* A3468 800B2C68 3C00A8AF */  sw         $t0, 0x3C($sp)
    /* A346C 800B2C6C 18003526 */  addiu      $s5, $s1, 0x18
    /* A3470 800B2C70 30003426 */  addiu      $s4, $s1, 0x30
    /* A3474 800B2C74 48003326 */  addiu      $s3, $s1, 0x48
    /* A3478 800B2C78 60003226 */  addiu      $s2, $s1, 0x60
    /* A347C 800B2C7C 78002826 */  addiu      $t0, $s1, 0x78
    /* A3480 800B2C80 F00035AE */  sw         $s5, 0xF0($s1)
    /* A3484 800B2C84 F40034AE */  sw         $s4, 0xF4($s1)
    /* A3488 800B2C88 F80033AE */  sw         $s3, 0xF8($s1)
    /* A348C 800B2C8C FC0032AE */  sw         $s2, 0xFC($s1)
    /* A3490 800B2C90 4000A8AF */  sw         $t0, 0x40($sp)
    /* A3494 800B2C94 8000A88F */  lw         $t0, 0x80($sp)
    /* A3498 800B2C98 00000000 */  nop
    /* A349C 800B2C9C 74000011 */  beqz       $t0, .L800B2E70
    /* A34A0 800B2CA0 21B80000 */   addu      $s7, $zero, $zero
    /* A34A4 800B2CA4 10009024 */  addiu      $s0, $a0, 0x10
  .L800B2CA8:
    /* A34A8 800B2CA8 06000296 */  lhu        $v0, 0x6($s0)
    /* A34AC 800B2CAC 2120A002 */  addu       $a0, $s5, $zero
    /* A34B0 800B2CB0 C0100200 */  sll        $v0, $v0, 3
    /* A34B4 800B2CB4 21105600 */  addu       $v0, $v0, $s6
    /* A34B8 800B2CB8 03004388 */  lwl        $v1, 0x3($v0)
    /* A34BC 800B2CBC 00004398 */  lwr        $v1, 0x0($v0)
    /* A34C0 800B2CC0 07004588 */  lwl        $a1, 0x7($v0)
    /* A34C4 800B2CC4 04004598 */  lwr        $a1, 0x4($v0)
    /* A34C8 800B2CC8 0300A3AA */  swl        $v1, 0x3($s5)
    /* A34CC 800B2CCC 0000A3BA */  swr        $v1, 0x0($s5)
    /* A34D0 800B2CD0 0700A5AA */  swl        $a1, 0x7($s5)
    /* A34D4 800B2CD4 0400A5BA */  swr        $a1, 0x4($s5)
    /* A34D8 800B2CD8 08000296 */  lhu        $v0, 0x8($s0)
    /* A34DC 800B2CDC 21288002 */  addu       $a1, $s4, $zero
    /* A34E0 800B2CE0 C0100200 */  sll        $v0, $v0, 3
    /* A34E4 800B2CE4 21105600 */  addu       $v0, $v0, $s6
    /* A34E8 800B2CE8 03004388 */  lwl        $v1, 0x3($v0)
    /* A34EC 800B2CEC 00004398 */  lwr        $v1, 0x0($v0)
    /* A34F0 800B2CF0 07004688 */  lwl        $a2, 0x7($v0)
    /* A34F4 800B2CF4 04004698 */  lwr        $a2, 0x4($v0)
    /* A34F8 800B2CF8 030083AA */  swl        $v1, 0x3($s4)
    /* A34FC 800B2CFC 000083BA */  swr        $v1, 0x0($s4)
    /* A3500 800B2D00 070086AA */  swl        $a2, 0x7($s4)
    /* A3504 800B2D04 040086BA */  swr        $a2, 0x4($s4)
    /* A3508 800B2D08 0A000296 */  lhu        $v0, 0xA($s0)
    /* A350C 800B2D0C 21306002 */  addu       $a2, $s3, $zero
    /* A3510 800B2D10 C0100200 */  sll        $v0, $v0, 3
    /* A3514 800B2D14 21105600 */  addu       $v0, $v0, $s6
    /* A3518 800B2D18 03004388 */  lwl        $v1, 0x3($v0)
    /* A351C 800B2D1C 00004398 */  lwr        $v1, 0x0($v0)
    /* A3520 800B2D20 07004788 */  lwl        $a3, 0x7($v0)
    /* A3524 800B2D24 04004798 */  lwr        $a3, 0x4($v0)
    /* A3528 800B2D28 030063AA */  swl        $v1, 0x3($s3)
    /* A352C 800B2D2C 000063BA */  swr        $v1, 0x0($s3)
    /* A3530 800B2D30 070067AA */  swl        $a3, 0x7($s3)
    /* A3534 800B2D34 040067BA */  swr        $a3, 0x4($s3)
    /* A3538 800B2D38 0C000296 */  lhu        $v0, 0xC($s0)
    /* A353C 800B2D3C 21384002 */  addu       $a3, $s2, $zero
    /* A3540 800B2D40 C0100200 */  sll        $v0, $v0, 3
    /* A3544 800B2D44 21105600 */  addu       $v0, $v0, $s6
    /* A3548 800B2D48 03004388 */  lwl        $v1, 0x3($v0)
    /* A354C 800B2D4C 00004398 */  lwr        $v1, 0x0($v0)
    /* A3550 800B2D50 07004888 */  lwl        $t0, 0x7($v0)
    /* A3554 800B2D54 04004898 */  lwr        $t0, 0x4($v0)
    /* A3558 800B2D58 030043AA */  swl        $v1, 0x3($s2)
    /* A355C 800B2D5C 000043BA */  swr        $v1, 0x0($s2)
    /* A3560 800B2D60 070048AA */  swl        $t0, 0x7($s2)
    /* A3564 800B2D64 040048BA */  swr        $t0, 0x4($s2)
    /* A3568 800B2D68 1000A226 */  addiu      $v0, $s5, 0x10
    /* A356C 800B2D6C 1000A2AF */  sw         $v0, 0x10($sp)
    /* A3570 800B2D70 10008226 */  addiu      $v0, $s4, 0x10
    /* A3574 800B2D74 1400A2AF */  sw         $v0, 0x14($sp)
    /* A3578 800B2D78 10006226 */  addiu      $v0, $s3, 0x10
    /* A357C 800B2D7C 1800A2AF */  sw         $v0, 0x18($sp)
    /* A3580 800B2D80 10004226 */  addiu      $v0, $s2, 0x10
    /* A3584 800B2D84 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* A3588 800B2D88 3000A227 */  addiu      $v0, $sp, 0x30
    /* A358C 800B2D8C 2000A2AF */  sw         $v0, 0x20($sp)
    /* A3590 800B2D90 3400A227 */  addiu      $v0, $sp, 0x34
    /* A3594 800B2D94 2400A2AF */  sw         $v0, 0x24($sp)
    /* A3598 800B2D98 3800A227 */  addiu      $v0, $sp, 0x38
    /* A359C 800B2D9C B2CB020C */  jal        func_800B2EC8
    /* A35A0 800B2DA0 2800A2AF */   sw        $v0, 0x28($sp)
    /* A35A4 800B2DA4 2D004018 */  blez       $v0, .L800B2E5C
    /* A35A8 800B2DA8 1400A426 */   addiu     $a0, $s5, 0x14
    /* A35AC 800B2DAC 14008526 */  addiu      $a1, $s4, 0x14
    /* A35B0 800B2DB0 14006626 */  addiu      $a2, $s3, 0x14
    /* A35B4 800B2DB4 AACB020C */  jal        func_800B2EA8
    /* A35B8 800B2DB8 14004726 */   addiu     $a3, $s2, 0x14
    /* A35BC 800B2DBC 8800A88F */  lw         $t0, 0x88($sp)
    /* A35C0 800B2DC0 3400A297 */  lhu        $v0, 0x34($sp)
    /* A35C4 800B2DC4 0800048D */  lw         $a0, 0x8($t0)
    /* A35C8 800B2DC8 0400038D */  lw         $v1, 0x4($t0)
    /* A35CC 800B2DCC 3C00A88F */  lw         $t0, 0x3C($sp)
    /* A35D0 800B2DD0 00000000 */  nop
    /* A35D4 800B2DD4 100028AE */  sw         $t0, 0x10($s1)
    /* A35D8 800B2DD8 8400A88F */  lw         $t0, 0x84($sp)
    /* A35DC 800B2DDC 23104400 */  subu       $v0, $v0, $a0
    /* A35E0 800B2DE0 06100201 */  srlv       $v0, $v0, $t0
    /* A35E4 800B2DE4 80100200 */  sll        $v0, $v0, 2
    /* A35E8 800B2DE8 21186200 */  addu       $v1, $v1, $v0
    /* A35EC 800B2DEC 1180023C */  lui        $v0, %hi(D_8010C1B8)
    /* A35F0 800B2DF0 B8C14290 */  lbu        $v0, %lo(D_8010C1B8)($v0)
    /* A35F4 800B2DF4 140023AE */  sw         $v1, 0x14($s1)
    /* A35F8 800B2DF8 F3FF0392 */  lbu        $v1, -0xD($s0)
    /* A35FC 800B2DFC 40100200 */  sll        $v0, $v0, 1
    /* A3600 800B2E00 25186200 */  or         $v1, $v1, $v0
    /* A3604 800B2E04 130023A2 */  sb         $v1, 0x13($s1)
    /* A3608 800B2E08 F6FF0296 */  lhu        $v0, -0xA($s0)
    /* A360C 800B2E0C 00000000 */  nop
    /* A3610 800B2E10 0C0022A6 */  sh         $v0, 0xC($s1)
    /* A3614 800B2E14 FAFF0296 */  lhu        $v0, -0x6($s0)
    /* A3618 800B2E18 00000000 */  nop
    /* A361C 800B2E1C 0E0022A6 */  sh         $v0, 0xE($s1)
    /* A3620 800B2E20 F4FF028E */  lw         $v0, -0xC($s0)
    /* A3624 800B2E24 00000000 */  nop
    /* A3628 800B2E28 0800A2AE */  sw         $v0, 0x8($s5)
    /* A362C 800B2E2C F8FF028E */  lw         $v0, -0x8($s0)
    /* A3630 800B2E30 21282002 */  addu       $a1, $s1, $zero
    /* A3634 800B2E34 080082AE */  sw         $v0, 0x8($s4)
    /* A3638 800B2E38 FCFF028E */  lw         $v0, -0x4($s0)
    /* A363C 800B2E3C 21300000 */  addu       $a2, $zero, $zero
    /* A3640 800B2E40 080062AE */  sw         $v0, 0x8($s3)
    /* A3644 800B2E44 0000028E */  lw         $v0, 0x0($s0)
    /* A3648 800B2E48 4000A78F */  lw         $a3, 0x40($sp)
    /* A364C 800B2E4C 2120C003 */  addu       $a0, $fp, $zero
    /* A3650 800B2E50 E0CB020C */  jal        func_800B2F80
    /* A3654 800B2E54 080042AE */   sw        $v0, 0x8($s2)
    /* A3658 800B2E58 21F04000 */  addu       $fp, $v0, $zero
  .L800B2E5C:
    /* A365C 800B2E5C 8000A88F */  lw         $t0, 0x80($sp)
    /* A3660 800B2E60 0100F726 */  addiu      $s7, $s7, 0x1
    /* A3664 800B2E64 2B10E802 */  sltu       $v0, $s7, $t0
    /* A3668 800B2E68 8FFF4014 */  bnez       $v0, .L800B2CA8
    /* A366C 800B2E6C 20001026 */   addiu     $s0, $s0, 0x20
  .L800B2E70:
    /* A3670 800B2E70 2110C003 */  addu       $v0, $fp, $zero
    /* A3674 800B2E74 6C00BF8F */  lw         $ra, 0x6C($sp)
    /* A3678 800B2E78 6800BE8F */  lw         $fp, 0x68($sp)
    /* A367C 800B2E7C 6400B78F */  lw         $s7, 0x64($sp)
    /* A3680 800B2E80 6000B68F */  lw         $s6, 0x60($sp)
    /* A3684 800B2E84 5C00B58F */  lw         $s5, 0x5C($sp)
    /* A3688 800B2E88 5800B48F */  lw         $s4, 0x58($sp)
    /* A368C 800B2E8C 5400B38F */  lw         $s3, 0x54($sp)
    /* A3690 800B2E90 5000B28F */  lw         $s2, 0x50($sp)
    /* A3694 800B2E94 4C00B18F */  lw         $s1, 0x4C($sp)
    /* A3698 800B2E98 4800B08F */  lw         $s0, 0x48($sp)
    /* A369C 800B2E9C 0800E003 */  jr         $ra
    /* A36A0 800B2EA0 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_800B2C28
    /* A36A4 800B2EA4 00000000 */  nop
