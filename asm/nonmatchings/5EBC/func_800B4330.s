nonmatching func_800B4330, 0x220

glabel func_800B4330
    /* A4B30 800B4330 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* A4B34 800B4334 FFFFA530 */  andi       $a1, $a1, 0xFFFF
    /* A4B38 800B4338 1080013C */  lui        $at, %hi(D_800FB57C)
    /* A4B3C 800B433C 7CB524AC */  sw         $a0, %lo(D_800FB57C)($at)
    /* A4B40 800B4340 1080013C */  lui        $at, %hi(D_800FB5AC)
    /* A4B44 800B4344 ACB525AC */  sw         $a1, %lo(D_800FB5AC)($at)
    /* A4B48 800B4348 1080043C */  lui        $a0, %hi(D_800FB5AC)
    /* A4B4C 800B434C ACB5848C */  lw         $a0, %lo(D_800FB5AC)($a0)
    /* A4B50 800B4350 1080023C */  lui        $v0, %hi(D_800FB57C)
    /* A4B54 800B4354 7CB5428C */  lw         $v0, %lo(D_800FB57C)($v0)
    /* A4B58 800B4358 80230400 */  sll        $a0, $a0, 14
    /* A4B5C 800B435C 1A008200 */  div        $zero, $a0, $v0
    /* A4B60 800B4360 02004014 */  bnez       $v0, .L800B436C
    /* A4B64 800B4364 00000000 */   nop
    /* A4B68 800B4368 0D000700 */  break      7
  .L800B436C:
    /* A4B6C 800B436C FFFF0124 */  addiu      $at, $zero, -0x1
    /* A4B70 800B4370 04004114 */  bne        $v0, $at, .L800B4384
    /* A4B74 800B4374 0080013C */   lui       $at, (0x80000000 >> 16)
    /* A4B78 800B4378 02008114 */  bne        $a0, $at, .L800B4384
    /* A4B7C 800B437C 00000000 */   nop
    /* A4B80 800B4380 0D000600 */  break      6
  .L800B4384:
    /* A4B84 800B4384 12200000 */  mflo       $a0
    /* A4B88 800B4388 1080033C */  lui        $v1, %hi(D_800FB5C0)
    /* A4B8C 800B438C C0B56324 */  addiu      $v1, $v1, %lo(D_800FB5C0)
    /* A4B90 800B4390 1080063C */  lui        $a2, %hi(D_800FF708)
    /* A4B94 800B4394 08F7C624 */  addiu      $a2, $a2, %lo(D_800FF708)
    /* A4B98 800B4398 F4FF60A4 */  sh         $zero, -0xC($v1)
    /* A4B9C 800B439C F2FF60A4 */  sh         $zero, -0xE($v1)
    /* A4BA0 800B43A0 FAFF60A4 */  sh         $zero, -0x6($v1)
    /* A4BA4 800B43A4 F6FF60A4 */  sh         $zero, -0xA($v1)
    /* A4BA8 800B43A8 FEFF60A4 */  sh         $zero, -0x2($v1)
    /* A4BAC 800B43AC FCFF60A4 */  sh         $zero, -0x4($v1)
    /* A4BB0 800B43B0 0C0060AC */  sw         $zero, 0xC($v1)
    /* A4BB4 800B43B4 080060AC */  sw         $zero, 0x8($v1)
    /* A4BB8 800B43B8 040060AC */  sw         $zero, 0x4($v1)
    /* A4BBC 800B43BC 00100224 */  addiu      $v0, $zero, 0x1000
    /* A4BC0 800B43C0 F0FF62A4 */  sh         $v0, -0x10($v1)
    /* A4BC4 800B43C4 F8FF62A4 */  sh         $v0, -0x8($v1)
    /* A4BC8 800B43C8 000062A4 */  sh         $v0, 0x0($v1)
    /* A4BCC 800B43CC F0FF628C */  lw         $v0, -0x10($v1)
    /* A4BD0 800B43D0 F4FF658C */  lw         $a1, -0xC($v1)
    /* A4BD4 800B43D4 F8FF678C */  lw         $a3, -0x8($v1)
    /* A4BD8 800B43D8 FCFF688C */  lw         $t0, -0x4($v1)
    /* A4BDC 800B43DC 0000C2AC */  sw         $v0, 0x0($a2)
    /* A4BE0 800B43E0 0400C5AC */  sw         $a1, 0x4($a2)
    /* A4BE4 800B43E4 0800C7AC */  sw         $a3, 0x8($a2)
    /* A4BE8 800B43E8 0C00C8AC */  sw         $t0, 0xC($a2)
    /* A4BEC 800B43EC 0000628C */  lw         $v0, 0x0($v1)
    /* A4BF0 800B43F0 0400658C */  lw         $a1, 0x4($v1)
    /* A4BF4 800B43F4 0800678C */  lw         $a3, 0x8($v1)
    /* A4BF8 800B43F8 0C00688C */  lw         $t0, 0xC($v1)
    /* A4BFC 800B43FC 1000C2AC */  sw         $v0, 0x10($a2)
    /* A4C00 800B4400 1400C5AC */  sw         $a1, 0x14($a2)
    /* A4C04 800B4404 1800C7AC */  sw         $a3, 0x18($a2)
    /* A4C08 800B4408 1C00C8AC */  sw         $t0, 0x1C($a2)
    /* A4C0C 800B440C 0F80023C */  lui        $v0, %hi(D_800F0EC0)
    /* A4C10 800B4410 C00E4224 */  addiu      $v0, $v0, %lo(D_800F0EC0)
    /* A4C14 800B4414 F0FF658C */  lw         $a1, -0x10($v1)
    /* A4C18 800B4418 F4FF678C */  lw         $a3, -0xC($v1)
    /* A4C1C 800B441C F8FF688C */  lw         $t0, -0x8($v1)
    /* A4C20 800B4420 FCFF698C */  lw         $t1, -0x4($v1)
    /* A4C24 800B4424 000045AC */  sw         $a1, 0x0($v0)
    /* A4C28 800B4428 040047AC */  sw         $a3, 0x4($v0)
    /* A4C2C 800B442C 080048AC */  sw         $t0, 0x8($v0)
    /* A4C30 800B4430 0C0049AC */  sw         $t1, 0xC($v0)
    /* A4C34 800B4434 0000658C */  lw         $a1, 0x0($v1)
    /* A4C38 800B4438 0400678C */  lw         $a3, 0x4($v1)
    /* A4C3C 800B443C 0800688C */  lw         $t0, 0x8($v1)
    /* A4C40 800B4440 0C00698C */  lw         $t1, 0xC($v1)
    /* A4C44 800B4444 100045AC */  sw         $a1, 0x10($v0)
    /* A4C48 800B4448 140047AC */  sw         $a3, 0x14($v0)
    /* A4C4C 800B444C 180048AC */  sw         $t0, 0x18($v0)
    /* A4C50 800B4450 1C0049AC */  sw         $t1, 0x1C($v0)
    /* A4C54 800B4454 100040A4 */  sh         $zero, 0x10($v0)
    /* A4C58 800B4458 080040A4 */  sh         $zero, 0x8($v0)
    /* A4C5C 800B445C 000040A4 */  sh         $zero, 0x0($v0)
    /* A4C60 800B4460 0F80083C */  lui        $t0, %hi(D_800F1078)
    /* A4C64 800B4464 78100825 */  addiu      $t0, $t0, %lo(D_800F1078)
    /* A4C68 800B4468 0000438C */  lw         $v1, 0x0($v0)
    /* A4C6C 800B446C 0400458C */  lw         $a1, 0x4($v0)
    /* A4C70 800B4470 0800478C */  lw         $a3, 0x8($v0)
    /* A4C74 800B4474 000003AD */  sw         $v1, 0x0($t0)
    /* A4C78 800B4478 040005AD */  sw         $a1, 0x4($t0)
    /* A4C7C 800B447C 080007AD */  sw         $a3, 0x8($t0)
    /* A4C80 800B4480 0C00438C */  lw         $v1, 0xC($v0)
    /* A4C84 800B4484 1000458C */  lw         $a1, 0x10($v0)
    /* A4C88 800B4488 1400478C */  lw         $a3, 0x14($v0)
    /* A4C8C 800B448C 0C0003AD */  sw         $v1, 0xC($t0)
    /* A4C90 800B4490 100005AD */  sw         $a1, 0x10($t0)
    /* A4C94 800B4494 140007AD */  sw         $a3, 0x14($t0)
    /* A4C98 800B4498 1800438C */  lw         $v1, 0x18($v0)
    /* A4C9C 800B449C 1C00458C */  lw         $a1, 0x1C($v0)
    /* A4CA0 800B44A0 180003AD */  sw         $v1, 0x18($t0)
    /* A4CA4 800B44A4 1C0005AD */  sw         $a1, 0x1C($t0)
    /* A4CA8 800B44A8 5555033C */  lui        $v1, (0x55555556 >> 16)
    /* A4CAC 800B44AC 56556334 */  ori        $v1, $v1, (0x55555556 & 0xFFFF)
    /* A4CB0 800B44B0 0F80023C */  lui        $v0, %hi(D_800E81F8)
    /* A4CB4 800B44B4 F8814224 */  addiu      $v0, $v0, %lo(D_800E81F8)
    /* A4CB8 800B44B8 000040A4 */  sh         $zero, 0x0($v0)
    /* A4CBC 800B44BC 020040A4 */  sh         $zero, 0x2($v0)
    /* A4CC0 800B44C0 18008300 */  mult       $a0, $v1
    /* A4CC4 800B44C4 0F80023C */  lui        $v0, %hi(D_800E8200)
    /* A4CC8 800B44C8 00824224 */  addiu      $v0, $v0, %lo(D_800E8200)
    /* A4CCC 800B44CC 000040A4 */  sh         $zero, 0x0($v0)
    /* A4CD0 800B44D0 020040A4 */  sh         $zero, 0x2($v0)
    /* A4CD4 800B44D4 0F80023C */  lui        $v0, %hi(D_800EF868)
    /* A4CD8 800B44D8 68F84224 */  addiu      $v0, $v0, %lo(D_800EF868)
    /* A4CDC 800B44DC 1080053C */  lui        $a1, %hi(D_800FF738)
    /* A4CE0 800B44E0 38F7A524 */  addiu      $a1, $a1, %lo(D_800FF738)
    /* A4CE4 800B44E4 020040A4 */  sh         $zero, 0x2($v0)
    /* A4CE8 800B44E8 000040A4 */  sh         $zero, 0x0($v0)
    /* A4CEC 800B44EC 0E80023C */  lui        $v0, %hi(D_800E7198)
    /* A4CF0 800B44F0 98714224 */  addiu      $v0, $v0, %lo(D_800E7198)
    /* A4CF4 800B44F4 0200A0A4 */  sh         $zero, 0x2($a1)
    /* A4CF8 800B44F8 C3270400 */  sra        $a0, $a0, 31
    /* A4CFC 800B44FC 02000324 */  addiu      $v1, $zero, 0x2
    /* A4D00 800B4500 10380000 */  mfhi       $a3
    /* A4D04 800B4504 2320E400 */  subu       $a0, $a3, $a0
    /* A4D08 800B4508 0800C4A4 */  sh         $a0, 0x8($a2)
    /* A4D0C 800B450C 03000424 */  addiu      $a0, $zero, 0x3
    /* A4D10 800B4510 0000A0A4 */  sh         $zero, 0x0($a1)
    /* A4D14 800B4514 030044A0 */  sb         $a0, 0x3($v0)
    /* A4D18 800B4518 070043A0 */  sb         $v1, 0x7($v0)
    /* A4D1C 800B451C 10004224 */  addiu      $v0, $v0, 0x10
    /* A4D20 800B4520 030044A0 */  sb         $a0, 0x3($v0)
    /* A4D24 800B4524 070043A0 */  sb         $v1, 0x7($v0)
    /* A4D28 800B4528 1080033C */  lui        $v1, %hi(D_800FB57C)
    /* A4D2C 800B452C 7CB56394 */  lhu        $v1, %lo(D_800FB57C)($v1)
    /* A4D30 800B4530 1080043C */  lui        $a0, %hi(D_800FB5AC)
    /* A4D34 800B4534 ACB58494 */  lhu        $a0, %lo(D_800FB5AC)($a0)
    /* A4D38 800B4538 01000224 */  addiu      $v0, $zero, 0x1
    /* A4D3C 800B453C 1180013C */  lui        $at, %hi(D_8010CD50)
    /* A4D40 800B4540 50CD22AC */  sw         $v0, %lo(D_8010CD50)($at)
    /* A4D44 800B4544 0400A3A4 */  sh         $v1, 0x4($a1)
    /* A4D48 800B4548 0800E003 */  jr         $ra
    /* A4D4C 800B454C 0600A4A4 */   sh        $a0, 0x6($a1)
endlabel func_800B4330
